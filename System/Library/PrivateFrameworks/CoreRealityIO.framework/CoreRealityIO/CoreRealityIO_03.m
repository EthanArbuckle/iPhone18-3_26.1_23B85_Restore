uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REComponent *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REComponent *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>::_DecrementIfValid(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REComponent *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>::_DecrementIfValid(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v3 = v1;
    __dmb(9u);
    realityio::WrappedRERef<REComponent *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 8));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>,realityio::WrappedRERef<REComponent *> const&>();
  }

  return *a1;
}

const void **realityio::ObjCCustomInputDescriptor::resolvedPrimPaths@<X0>(const void **result@<X0>, void **a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  if (result[6])
  {
    v6 = result;
    values = a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&values);
    v7 = *MEMORY[0x277CBECE8];
    if (RIOPxrUsdStageGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = values;
      values = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      Instance[2] = v9;
    }

    v19 = Instance;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&values);
    v18 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3);
    theSet = (*(v6[6] + 2))();
    if (theSet)
    {
      if (RIOPxrSdfPathGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
      }

      v10 = RIOPxrSdfPathGetTypeID::typeID;
      values = 0;
      v15 = 0;
      v16 = 0;
      Count = CFSetGetCount(theSet);
      std::vector<void const*>::resize(&values, Count);
      CFSetGetValues(theSet, values);
      v12 = values;
      v13 = v15;
      if (values != v15)
      {
        do
        {
          if (CFGetTypeID(*v12) == v10)
          {
            std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a4, *v12 + 4);
          }

          ++v12;
        }

        while (v12 != v13);
        v12 = values;
      }

      if (v12)
      {
        v15 = v12;
        operator delete(v12);
      }
    }

    realityio::WrappedCFRef<__CFSet const*>::~WrappedCFRef(&theSet);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v18);
    return realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&v19);
  }

  return result;
}

void sub_2474B8008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a15)
{
  realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&a14);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a15);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(_DWORD *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), a1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 20), a1 + 1);
  }

  return v4;
}

void std::vector<void const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(a1, a2 - v2);
  }
}

void realityio::ObjCCustomInputDescriptor::~ObjCCustomInputDescriptor(id *this)
{

  realityio::InputDescriptor::~InputDescriptor(this);
}

{

  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

const void **realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFSet const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType::~AcousticMeshBuilderTokens_StaticTokenType(realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType *realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType::AcousticMeshBuilderTokens_StaticTokenType(realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "AcousticMeshComponent", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "AcousticMesh", 0);
  MEMORY[0x24C1A5DF0](this + 16, "Mesh", 0);
  MEMORY[0x24C1A5DF0](this + 24, "includeChildObjects", 0);
  MEMORY[0x24C1A5DF0](this + 32, "info:id", 0);
  MEMORY[0x24C1A5DF0](this + 40, "material:binding", 0);
  MEMORY[0x24C1A5DF0](this + 48, "RealityKit.AcousticMesh", 0);
  MEMORY[0x24C1A5DF0](this + 56, "RealityKit.AcousticAdjustments", 0);
  MEMORY[0x24C1A5DF0](this + 64, "realityKit:acousticMaterialName", 0);
  MEMORY[0x24C1A5DF0](this + 72, "customAcousticMesh", 0);
  MEMORY[0x24C1A5DF0](this + 80, "realityKit:AcousticMaterialOrderedPaths", 0);
  MEMORY[0x24C1A5DF0](this + 88, "realityKit:AcousticMaterialOrderedDescriptors", 0);
  v3 = (this + 96);
  v4 = *this;
  v20 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v21 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v22 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v23 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v24 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v25 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v26 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v27 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v28 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v29 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v30 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v31 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v20, &v32, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v20 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2474B88BC(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t a2@<X0>, realityio *a3@<X1>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v340 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v329, a1);
  v7 = *(a2 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  v268 = MEMORY[0x24C1A4230](ServiceLocator);
  v309 = 0;
  v307 = 0u;
  v308 = 0u;
  v305 = 0;
  v304 = 0;
  v306 = 0;
  v9 = *a4;
  if (a4[1] == *a4)
  {
    v71 = 0;
    v81 = xmmword_247753B60;
    goto LABEL_88;
  }

  v285 = a2;
  v10 = 0;
  v11 = "NSt3__13mapIN32pxrInternal__aapl__pxrReserved__7TfTokenENS1_7VtValueENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE";
  while (1)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v330, (*a5 + 16 * v10));
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v9 + 8 * v10));
    v13 = atomic_load(&realityio::tokens::EcsTokens);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v13 + 352) ^ *NameToken) > 7)
    {
      goto LABEL_73;
    }

    v14 = v330[1];
    if (!v330[1])
    {
      goto LABEL_73;
    }

    if (!strcmp((*(*(v330[1] & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (v11 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_10;
    }

    {
      break;
    }

LABEL_73:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v330);
    ++v10;
    v9 = *a4;
    if (v10 >= (a4[1] - *a4) >> 3)
    {
      v71 = v304;
      a2 = v285;
      if (v305 != v304)
      {
        v72 = 0xEF7BDEF7BDEF7BDFLL * ((v305 - v304) >> 3);
        if (v72 <= 1)
        {
          v72 = 1;
        }

        v73 = xmmword_247753B60;
        v74 = v304 + 208;
        do
        {
          v75.f64[0] = *(v74 - 5);
          v75.f64[1] = *(v74 - 9);
          v76.f64[0] = *(v74 - 10);
          v76.f64[1] = *(v74 - 4);
          v77 = vbslq_s8(vcgtq_f64(v76, v75), *(v74 - 40), *(v74 - 5));
          v78 = *v74;
          v74 = (v74 + 248);
          *&v75.f64[0] = v78.i64[0];
          *&v75.f64[1] = v77.i64[1];
          *&v76.f64[0] = v77.i64[0];
          *&v76.f64[1] = v78.i64[1];
          v79 = vbslq_s8(vcgtq_f64(v76, v75), v78, v77);
          *&v80.f64[0] = v79.i64[0];
          *&v80.f64[1] = v73.i64[1];
          *&v75.f64[0] = v73.i64[0];
          *&v75.f64[1] = v79.i64[1];
          v73 = vbslq_s8(vcgtq_f64(v75, v80), v79, v73);
          --v72;
        }

        while (v72);
        v270 = v73;
        goto LABEL_89;
      }

      v81 = xmmword_247753B60;
LABEL_88:
      v270 = v81;
      LODWORD(v72) = 1;
LABEL_89:
      v82 = *(a2 + 16);
      if (v82 && *(v82 + 200))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v83 = v304;
        if (v305 != v304)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&__p, v304);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&__p + 4, v83 + 1);
        }

        v84 = *(a2 + 16);
        if (v84)
        {
          v85 = *(v84 + 192);
        }

        v310 = 0u;
        v311 = 0u;
        LODWORD(v312) = 1065353216;
        operator new();
      }

      v302 = 0uLL;
      *&v303 = 0;
      v86 = 0;
      if (v72)
      {
        v87 = 0;
        v88 = *&v270;
        v89 = *(&v270 + 1);
        v261 = v89;
        v262 = v88;
        goto LABEL_282;
      }

      v263 = 0;
      v90 = 0;
      v269 = *(&v270 + 1) - *&v270;
      v277 = *(MEMORY[0x277D86650] + 254);
      v91 = *&v270;
      v92 = *(&v270 + 1);
      v261 = v92;
      v262 = v91;
      v264 = *MEMORY[0x277D82818];
      v265 = *(MEMORY[0x277D82818] + 64);
      v266 = *(MEMORY[0x277D82818] + 72);
      while (2)
      {
        v271 = v90;
        v93 = &v71[248 * v90];
        __p = 0;
        v300 = 0;
        v301 = 0;
        v94 = v93 + 1;
        std::vector<char const*>::reserve(&__p, v93[1]);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique((v93 + 1));
        v95 = v93[5];
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique((v93 + 1));
        v96 = v93[1];
        v97 = v93[5] + 8 * v96;
        if (v95 == v97)
        {
          goto LABEL_121;
        }

LABEL_99:
        v98 = *v95 & 0xFFFFFFFFFFFFFFF8;
        if (!v98)
        {
          v99 = "";
          goto LABEL_107;
        }

        if (*(v98 + 39) < 0)
        {
          v99 = *(v98 + 16);
          if (*(v98 + 24) <= 1uLL)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v99 = (v98 + 16);
          if (*(v98 + 39) < 2u)
          {
            goto LABEL_107;
          }
        }

        if (*v99 == 47)
        {
          ++v99;
        }

LABEL_107:
        v100 = v300;
        if (v300 >= v301)
        {
          v102 = (v300 - __p) >> 3;
          if ((v102 + 1) >> 61)
          {
            std::vector<char const*>::__throw_length_error[abi:ne200100]();
          }

          v103 = (v301 - __p) >> 2;
          if (v103 <= v102 + 1)
          {
            v103 = v102 + 1;
          }

          if (v301 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v104 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v104 = v103;
          }

          if (v104)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v104);
          }

          v105 = (8 * v102);
          *v105 = v99;
          v101 = 8 * v102 + 8;
          v106 = v105 - (v300 - __p);
          memcpy(v106, __p, v300 - __p);
          v107 = __p;
          __p = v106;
          v300 = v101;
          v301 = 0;
          if (v107)
          {
            operator delete(v107);
          }
        }

        else
        {
          *v300 = v99;
          v101 = (v100 + 8);
        }

        v300 = v101;
        if (++v95 == v97)
        {
          v96 = *v94;
LABEL_121:
          v283 = v86;
          if (v96)
          {
            if (!(v96 >> 60))
            {
              operator new();
            }

            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v313);
          v108 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v313.__r_.__value_.__r.__words[2], "[", 1);
          v109 = MEMORY[0x24C1A8F30](v108, v271);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "]", 1);
          realityio::entityPath(a3, v333);
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v333);
          if (*(String + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v298, *String, *(String + 8));
          }

          else
          {
            v111 = *String;
            v298.__r_.__value_.__r.__words[2] = *(String + 16);
            *&v298.__r_.__value_.__l.__data_ = v111;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v333);
          std::string::basic_string[abi:ne200100]<0>(v333, "SkeletalPose.SkeletalPoses");
          std::stringbuf::str();
          if ((SBYTE7(v331) & 0x80u) == 0)
          {
            v112 = v330;
          }

          else
          {
            v112 = v330[0];
          }

          if ((SBYTE7(v331) & 0x80u) == 0)
          {
            v113 = BYTE7(v331);
          }

          else
          {
            v113 = v330[1];
          }

          v114 = std::string::append(v333, v112, v113);
          v115 = *&v114->__r_.__value_.__l.__data_;
          v297 = v114->__r_.__value_.__r.__words[2];
          *v296 = v115;
          v114->__r_.__value_.__l.__size_ = 0;
          v114->__r_.__value_.__r.__words[2] = 0;
          v114->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v331) < 0)
          {
            operator delete(v330[0]);
          }

          if ((v333[23] & 0x80000000) != 0)
          {
            operator delete(*v333);
          }

          *v333 = 0;
          v330[0] = 0;
          *&v310 = 0;
          v293 = 0;
          realityio::getAnimInputControlsFromInputs(a4, a5, v333, v330, &v310, &v293);
          if (*(&v270 + 1) >= *&v270)
          {
            v116 = (v269 * *v333 + 1.0 + 0.5);
          }

          else
          {
            v116 = 0;
          }

          std::vector<RESRT>::vector[abi:ne200100](&v293, v116);
          __src = 0;
          v291 = 0;
          v292 = 0;
          std::vector<unsigned long>::reserve(&__src, v116);
          if (v116)
          {
            v117 = 0;
            v118 = v269 / (v116 + -1.0);
            v119 = *&v270;
            v284 = v93 + 1;
            v286 = v93;
            v274 = v116;
            while (1)
            {
              v120 = 0xAAAAAAAAAAAAAAABLL * ((v294 - v293) >> 4);
              v121 = v291;
              v275 = v117;
              if (v291 >= v292)
              {
                v123 = __src;
                v124 = v291 - __src;
                v125 = (v291 - __src) >> 3;
                v126 = v125 + 1;
                if ((v125 + 1) >> 61)
                {
                  std::vector<char const*>::__throw_length_error[abi:ne200100]();
                }

                v127 = v292 - __src;
                if ((v292 - __src) >> 2 > v126)
                {
                  v126 = v127 >> 2;
                }

                v128 = v127 >= 0x7FFFFFFFFFFFFFF8;
                v129 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v128)
                {
                  v129 = v126;
                }

                if (v129)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(&__src, v129);
                }

                *(8 * v125) = v120;
                v122 = 8 * v125 + 8;
                memcpy(0, v123, v124);
                v130 = __src;
                __src = 0;
                v291 = v122;
                v292 = 0;
                if (v130)
                {
                  operator delete(v130);
                }
              }

              else
              {
                *v291 = v120;
                v122 = (v121 + 8);
              }

              v291 = v122;
              if (*v94)
              {
                break;
              }

LABEL_238:
              v117 = v275 + 1;
              v119 = v118 + v119;
              v94 = v284;
              if (v275 + 1 == v274)
              {
                goto LABEL_239;
              }
            }

            v131 = 0;
            while (2)
            {
              DWORD2(v289) = 0;
              *&v289 = 0;
              LODWORD(v287.f64[1]) = 0;
              v287.f64[0] = 0.0;
              v132 = *(16 * v131 + 8);
              if (*(16 * v131) == 1)
              {
                v133 = v277;
                v134 = v277;
                v135 = v277;
                if (!v277)
                {
                  v134 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x3F800000);
                  v133 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x3F800000);
                  v135 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x3F800000);
                }

                v136 = v286[25];
                if ((v136 & 4) != 0)
                {
                  v137 = (*((v136 & 0xFFFFFFFFFFFFFFF8) + 168))(v286 + 24);
                }

                else
                {
                  v137 = v286[24];
                }

                v138 = *v137;
                if (*v137)
                {
                  v139 = *(v286 + 21);
                  if (v139 >= v119)
                  {
                    v152 = v137[4];
                    v143 = *(v152 + 16);
                    *v333 = *v152;
                    *&v333[16] = v143;
                    v144 = *(v152 + 32);
                    goto LABEL_168;
                  }

                  if (*(v286 + 22) > v119 && (v140 = *(v286 + 23), v141 = ((v119 - v139) / v140), v138 - 2 >= v141))
                  {
                    v189 = (v137[4] + 40 * v141);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::VtArray(v333, *v189);
                    if (*v189 == v189[5])
                    {
                      v190 = *v333;
                      if (*v333)
                      {
                        v191 = 0;
                        v192 = (v119 - (v139 + v141 * v140)) / v140;
                        do
                        {
                          v193 = (v189[4] + v191);
                          v194 = v189[9];
                          v195 = *v193;
                          WORD2(v330[0]) = *(v193 + 2);
                          LODWORD(v330[0]) = v195;
                          v196 = pxrInternal__aapl__pxrReserved__::GfVec3h::operator*=(v330, 1.0 - v192);
                          v197 = (v194 + v191);
                          v198 = v196[2];
                          v199 = *v196;
                          v200 = *v197;
                          WORD2(v330[0]) = *(v197 + 2);
                          LODWORD(v330[0]) = v200;
                          v201 = pxrInternal__aapl__pxrReserved__::GfVec3h::operator*=(v330, v192);
                          v202 = *v201;
                          WORD2(v310) = v201[2];
                          LODWORD(v310) = v202;
                          WORD2(v330[0]) = (v199 | (v198 << 32)) >> 32;
                          LODWORD(v330[0]) = v199;
                          v203 = pxrInternal__aapl__pxrReserved__::GfVec3h::operator+=(v330, &v310);
                          v204 = v203[2];
                          v205 = *v203;
                          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v333);
                          v206 = __sz[0] + v191;
                          *v206 = v205;
                          *(v206 + 4) = (v205 | (v204 << 32)) >> 32;
                          v191 += 6;
                          --v190;
                        }

                        while (v190);
                      }
                    }
                  }

                  else
                  {
                    v142 = v137[4] + 40 * v138;
                    v143 = *(v142 - 24);
                    *v333 = *(v142 - 40);
                    *&v333[16] = v143;
                    v144 = *(v142 - 8);
LABEL_168:
                    __sz[0] = v144;
                    if (v144)
                    {
                      v153 = (v144 - 16);
                      if (*&v333[24])
                      {
                        v153 = *&v333[24];
                      }

                      atomic_fetch_add_explicit(v153, 1uLL, memory_order_relaxed);
                    }
                  }
                }

                else
                {
                  __sz[0] = 0;
                  HIDWORD(v143) = 0;
                  memset(v333, 0, sizeof(v333));
                }

                v86 = v283;
                if (*v333 > v132)
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v333);
                  v154 = (__sz[0] + 6 * v132);
                  v134 = *v154;
                  v133 = v154[1];
                  v135 = v154[2];
                }

                LODWORD(v143) = *(MEMORY[0x277D86658] + 4 * v134);
                DWORD1(v143) = *(MEMORY[0x277D86658] + 4 * v133);
                DWORD2(v143) = *(MEMORY[0x277D86658] + 4 * v135);
                v289 = v143;
                v93 = v286;
                v155 = v286[20];
                if ((v155 & 4) != 0)
                {
                  v156 = (*((v155 & 0xFFFFFFFFFFFFFFF8) + 168))(v286 + 19);
                }

                else
                {
                  v156 = v286[19];
                }

                v157 = *v156;
                if (*v156)
                {
                  v158 = *(v286 + 16);
                  if (v158 >= v119)
                  {
                    v164 = v156[4];
                    v165 = *(v164 + 16);
                    *v330 = *v164;
                    v331 = v165;
                    v163 = *(v164 + 32);
                    goto LABEL_183;
                  }

                  if (*(v286 + 17) > v119 && (v159 = *(v286 + 18), v160 = ((v119 - v158) / v159), v157 - 2 >= v160))
                  {
                    v207 = (v156[4] + 40 * v160);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::VtArray(v330, *v207);
                    if (*v207 == v207[5])
                    {
                      v208 = v330[0];
                      if (v330[0])
                      {
                        v209 = 0;
                        v210 = (v119 - (v158 + v160 * v159)) / v159;
                        v211 = 1.0 - v210;
                        v278 = v211;
                        *&v210 = v210;
                        v276 = *&v210;
                        do
                        {
                          v279 = *(v207[9] + 16 * v209);
                          v281 = *(v207[4] + 16 * v209);
                          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v330);
                          *(v332 + 16 * v209) = vaddq_f32(vmulq_n_f32(v281, v278), vmulq_n_f32(v279, v276));
                          v209 = v209 + 1;
                        }

                        while (v208 != v209);
                      }
                    }
                  }

                  else
                  {
                    v161 = v156[4] + 40 * v157;
                    v162 = *(v161 - 24);
                    *v330 = *(v161 - 40);
                    v331 = v162;
                    v163 = *(v161 - 8);
LABEL_183:
                    *&v332 = v163;
                    if (v163)
                    {
                      v166 = (v163 - 16);
                      if (*(&v331 + 1))
                      {
                        v166 = *(&v331 + 1);
                      }

                      atomic_fetch_add_explicit(v166, 1uLL, memory_order_relaxed);
                    }
                  }
                }

                else
                {
                  *&v332 = 0;
                  *v330 = 0u;
                  v331 = 0u;
                }

                v167 = xmmword_247753B70;
                if (v330[0] > v132)
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v330);
                  v167 = *(v332 + 16 * v132);
                }

                v288 = v167;
                v168 = v286[30];
                if ((v168 & 4) != 0)
                {
                  v169 = (*((v168 & 0xFFFFFFFFFFFFFFF8) + 168))(v286 + 29);
                }

                else
                {
                  v169 = v286[29];
                }

                v170 = *v169;
                if (*v169)
                {
                  v171 = *(v286 + 26);
                  if (v171 >= v119)
                  {
                    v177 = v169[4];
                    v175 = v177[1];
                    v310 = *v177;
                    v311 = v175;
                    v176 = *(v177 + 4);
                    goto LABEL_198;
                  }

                  if (*(v286 + 27) > v119 && (v172 = *(v286 + 28), v173 = ((v119 - v171) / v172), v170 - 2 >= v173))
                  {
                    v212 = (v169[4] + 40 * v173);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::VtArray(&v310, *v212);
                    if (*v212 == v212[5])
                    {
                      v213 = v310;
                      if (v310)
                      {
                        v214 = 0;
                        v282 = (v119 - (v171 + v173 * v172)) / v172;
                        v280 = 1.0 - v282;
                        do
                        {
                          v215 = (v212[4] + v214);
                          v216 = (v212[9] + v214);
                          v217 = v215[1].f32[0];
                          v218 = *v215;
                          v219 = *v216;
                          v220 = v216[1].f32[0];
                          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v310);
                          v221 = v280 * v217;
                          v222 = v282 * v220;
                          v223 = (v312 + v214);
                          v175 = vmulq_n_f64(vcvtq_f64_f32(v218), v280);
                          *v223 = vadd_f32(vcvt_f32_f64(v175), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v219), v282)));
                          v223[1].f32[0] = v221 + v222;
                          v214 += 12;
                          --v213;
                        }

                        while (v213);
                      }
                    }
                  }

                  else
                  {
                    v174 = v169[4] + 40 * v170;
                    v175 = *(v174 - 24);
                    v310 = *(v174 - 40);
                    v311 = v175;
                    v176 = *(v174 - 8);
LABEL_198:
                    v312 = v176;
                    if (v176)
                    {
                      v178 = (v176 - 16);
                      if (*&v311.f64[1])
                      {
                        v178 = *&v311.f64[1];
                      }

                      atomic_fetch_add_explicit(v178, 1uLL, memory_order_relaxed);
                    }
                  }
                }

                else
                {
                  v312 = 0;
                  HIDWORD(v175.f64[1]) = 0;
                  v310 = 0u;
                  v311 = 0u;
                }

                if (v310 <= v132)
                {
                  v175.f64[0] = 0.0;
                  v180 = 0;
                }

                else
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v310);
                  v179 = v312 + 12 * v132;
                  v175.f64[0] = *v179;
                  v180 = *(v179 + 8);
                }

                LODWORD(v175.f64[1]) = v180;
                v287 = v175;
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v310);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v330);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v333);
              }

              else
              {
                v145 = (v93[15] + (v132 << 7));
                v146 = *v145;
                v147 = v145[1];
                v148 = v145[2];
                v335 = v145[3];
                *__sz = v148;
                *v333 = v146;
                *&v333[16] = v147;
                v149 = v145[4];
                v150 = v145[5];
                v151 = v145[6];
                v339 = v145[7];
                v338 = v151;
                v337 = v150;
                v336 = v149;
                MEMORY[0x24C1A4BE0](v330, v333);
                REDecomposeMatrix();
                v86 = v283;
                v93 = v286;
              }

              v181 = v294;
              if (v294 >= v295)
              {
                v183 = 0xAAAAAAAAAAAAAAABLL * ((v294 - v293) >> 4);
                v184 = v183 + 1;
                if (v183 + 1 > 0x555555555555555)
                {
                  std::vector<char const*>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v295 - v293) >> 4) > v184)
                {
                  v184 = 0x5555555555555556 * ((v295 - v293) >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v295 - v293) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v185 = 0x555555555555555;
                }

                else
                {
                  v185 = v184;
                }

                if (v185)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<RESRT>>(&v293, v185);
                }

                v186 = (16 * ((v294 - v293) >> 4));
                *v186 = v289;
                v186[1] = v288;
                v186[2] = v287;
                v182 = 48 * v183 + 48;
                v187 = (48 * v183 - (v294 - v293));
                memcpy(v186 - (v294 - v293), v293, v294 - v293);
                v188 = v293;
                v293 = v187;
                v294 = v182;
                v295 = 0;
                if (v188)
                {
                  operator delete(v188);
                }
              }

              else
              {
                *v294 = v289;
                *(v181 + 1) = v288;
                v182 = (v181 + 48);
                *(v181 + 2) = v287;
              }

              v294 = v182;
              if (*v284 <= ++v131)
              {
                goto LABEL_238;
              }

              continue;
            }
          }

LABEL_239:
          v224 = __src;
          if (v300 != __p && v291 != __src)
          {
            memset(v333, 0, 24);
            std::vector<RESRT const*>::reserve(v333, (v291 - __src) >> 3);
            v225 = __src;
            v226 = v291;
            if (__src != v291)
            {
              v227 = *&v333[8];
              do
              {
                v228 = v293 + 48 * *v225;
                if (v227 >= *&v333[16])
                {
                  v229 = (v227 - *v333) >> 3;
                  if ((v229 + 1) >> 61)
                  {
                    std::vector<char const*>::__throw_length_error[abi:ne200100]();
                  }

                  v230 = (*&v333[16] - *v333) >> 2;
                  if (v230 <= v229 + 1)
                  {
                    v230 = v229 + 1;
                  }

                  if (*&v333[16] - *v333 >= 0x7FFFFFFFFFFFFFF8uLL)
                  {
                    v231 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v231 = v230;
                  }

                  if (v231)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(v333, v231);
                  }

                  v232 = (8 * v229);
                  *v232 = v228;
                  v227 = (8 * v229 + 8);
                  v233 = v232 - (*&v333[8] - *v333);
                  memcpy(v233, *v333, *&v333[8] - *v333);
                  v234 = *v333;
                  *v333 = v233;
                  *&v333[8] = v227;
                  if (v234)
                  {
                    operator delete(v234);
                  }
                }

                else
                {
                  *v227++ = v228;
                }

                *&v333[8] = v227;
                v225 += 8;
              }

              while (v225 != v226);
            }

            SampledSkeletalPoseAnimation = RETimelineDefinitionCreateSampledSkeletalPoseAnimation();
            RETimelineDefinitionSetFillMode();
            RETimelineDefinitionSetTargetPath();
            RETimelineDefinitionSetAdditive();
            RETimelineDefinitionSetFrameInterval();
            RETimelineDefinitionSetStartTime();
            RETimelineDefinitionSetEndTime();
            RETimelineDefinitionSetSkeletalPoses();
            v236 = (v263 - v86) >> 3;
            v237 = v236 + 1;
            if ((v236 + 1) >> 61)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            if (-v86 >> 2 > v237)
            {
              v237 = -v86 >> 2;
            }

            if (-v86 >= 0x7FFFFFFFFFFFFFF8)
            {
              v238 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v238 = v237;
            }

            if (v238)
            {
              if (!(v238 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v239 = (8 * v236);
            *v239 = SampledSkeletalPoseAnimation;
            memcpy(0, v86, v263 - v86);
            v86 = 0;
            std::vector<std::string>::push_back[abi:ne200100](&v302, &v298);
            v263 = v239 + 1;
            if (*v333)
            {
              *&v333[8] = *v333;
              operator delete(*v333);
            }

            v224 = __src;
          }

          if (v224)
          {
            v291 = v224;
            operator delete(v224);
          }

          if (v293)
          {
            v294 = v293;
            operator delete(v293);
          }

          if (SHIBYTE(v297) < 0)
          {
            operator delete(v296[0]);
          }

          if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v298.__r_.__value_.__l.__data_);
          }

          v313.__r_.__value_.__r.__words[0] = v264;
          *(v313.__r_.__value_.__r.__words + *(v264 - 24)) = v265;
          v313.__r_.__value_.__r.__words[2] = v266;
          *&v314 = MEMORY[0x277D82878] + 16;
          if (SBYTE7(v320) < 0)
          {
            operator delete(v319);
          }

          *&v314 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v314 + 1);
          std::iostream::~basic_iostream();
          MEMORY[0x24C1A9110](&v322);
          if (__p)
          {
            v300 = __p;
            operator delete(__p);
          }

          v90 = v271 + 1;
          v71 = v304;
          if (0xEF7BDEF7BDEF7BDFLL * ((v305 - v304) >> 3) <= v271 + 1)
          {
            v87 = v263;
LABEL_282:
            realityio::entityPath(a3, v330);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v330);
            std::string::basic_string[abi:ne200100]<0>(v333, Text);
            if ((v333[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v313, *v333, *&v333[8]);
              *&v314 = __PAIR64__(LODWORD(v261), LODWORD(v262));
              DWORD2(v314) = -8388609;
              v315 = 0;
              v316 = 0uLL;
              if ((v333[23] & 0x80000000) != 0)
              {
                operator delete(*v333);
              }
            }

            else
            {
              v313 = *v333;
              *&v314 = __PAIR64__(LODWORD(v261), LODWORD(v262));
              DWORD2(v314) = -8388609;
              v315 = 0;
              v316 = 0uLL;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v330);
            if (v87 != v86)
            {
              v241 = 0;
              if (((v87 - v86) >> 3) <= 1)
              {
                v242 = 1;
              }

              else
              {
                v242 = (v87 - v86) >> 3;
              }

              v243 = v86;
              do
              {
                v244 = *v243;
                RETimelineDefinitionGetStartTime();
                v246 = v245;
                RETimelineDefinitionGetEndTime();
                v248 = v247;
                v249 = v302;
                TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
                v251 = (v249 + v241);
                v252 = (v249 + v241);
                if (*(v249 + v241 + 23) < 0)
                {
                  v252 = *v251;
                }

                v253 = realityio::TimelineGroupFactory::addTimeline(&v313, TimelineAsset, (v249 + v241), v252, v246, v248);
                if ((v253 & 1) == 0)
                {
                  v254 = *(realityio::logObjects(v253) + 24);
                  if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
                  {
                    if (v251[23] < 0)
                    {
                      v251 = *v251;
                    }

                    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v330, a3);
                    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v330);
                    if (*(Name + 23) >= 0)
                    {
                      v256 = Name;
                    }

                    else
                    {
                      v256 = *Name;
                    }

                    realityio::entityPath(a3, &v310);
                    v257 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v310);
                    *v333 = 136315650;
                    *&v333[4] = v251;
                    *&v333[12] = 2080;
                    *&v333[14] = v256;
                    *&v333[22] = 2080;
                    *&v333[24] = v257;
                    _os_log_error_impl(&dword_247485000, v254, OS_LOG_TYPE_ERROR, "ERROR ADDING TIME LINE %s to %s entity %s\n", v333, 0x20u);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v310);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v330);
                  }
                }

                RERelease();
                v241 += 24;
                ++v243;
                --v242;
              }

              while (v242);
            }

            v330[0] = realityio::TimelineGroupFactory::createTimelineAsset(&v313.__r_.__value_.__l.__data_, v268, "default scene animation");
            if (v330[0])
            {
              RERetain();
            }

            RERelease();
            __sz[0] = 0;
            memset(v333, 0, sizeof(v333));
            Copy = pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateCopy(v333, 0, 1uLL, 0);
            v259 = v330[0];
            *Copy = v330[0];
            if (v259)
            {
              RERetain();
            }

            pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(v333);
            __sz[0] = Copy;
            ++*v333;
            *(a6 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>(void)::ti;
            pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
          }

          continue;
        }

        goto LABEL_99;
      }
    }
  }

  v14 = v330[1];
LABEL_10:
  if ((v14 & 4) != 0)
  {
    v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v330);
  }

  else
  {
    v15 = v330[0];
  }

  MEMORY[0x24C1A5DE0](&v310, "anim");
  v16 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, &v310);
  v17 = (v16 + 5);
  v18 = v16[6];
  if (v18)
  {
    if (!strcmp((*(*(v18 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
LABEL_17:
      if ((v18 & 4) == 0)
      {
LABEL_18:
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v313, v17);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v313.__r_.__value_.__r.__words + 1, v17 + 1);
        MEMORY[0x24C1A5DE0](&v302, "joints");
        v19 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, &v302);
        v20 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>((v19 + 5));
        v21 = *v20;
        v314 = *(v20 + 16);
        *&v313.__r_.__value_.__r.__words[1] = v21;
        v22 = *(v20 + 32);
        v315 = v22;
        if (v22)
        {
          v23 = (v22 - 16);
          if (*(&v314 + 1))
          {
            v23 = *(&v314 + 1);
          }

          atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
        }

        MEMORY[0x24C1A5DE0](&__p, "animJoints");
        v24 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, &__p);
        v25 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>((v24 + 5));
        v26 = *(v25 + 16);
        v316 = *v25;
        v317 = v26;
        v27 = *(v25 + 32);
        v318 = v27;
        if (v27)
        {
          v28 = (v27 - 16);
          if (*(&v317 + 1))
          {
            v28 = *(&v317 + 1);
          }

          atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
        }

        MEMORY[0x24C1A5DE0](&v298, "restTransforms");
        v29 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, &v298);
        v30 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>((v29 + 5));
        v31 = *v30;
        v320 = *(v30 + 16);
        v319 = v31;
        v32 = *(v30 + 32);
        v321 = v32;
        if (v32)
        {
          v33 = (v32 - 16);
          if (*(&v320 + 1))
          {
            v33 = *(&v320 + 1);
          }

          atomic_fetch_add_explicit(v33, 1uLL, memory_order_relaxed);
        }

        MEMORY[0x24C1A5DE0](v296, "rotations_samples");
        v34 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, v296);
        v35 = pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>((v34 + 5));
        v36 = *v35;
        v323 = *(v35 + 16);
        v322 = v36;
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v324, (v35 + 24));
        MEMORY[0x24C1A5DE0](&v293, "scales_samples");
        v37 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, &v293);
        v38 = pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>((v37 + 5));
        v39 = *v38;
        v325 = *(v38 + 16);
        v324[1] = v39;
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v326, (v38 + 24));
        MEMORY[0x24C1A5DE0](&__src, "translations_samples");
        v40 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v15, &__src);
        v41 = pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>((v40 + 5));
        v42 = *v41;
        v327 = *(v41 + 16);
        v326[1] = v42;
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v328, (v41 + 24));
        v43 = v305;
        if (v305 >= v306)
        {
          v45 = 0xEF7BDEF7BDEF7BDFLL * ((v305 - v304) >> 3) + 1;
          if (v45 > 0x108421084210842)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          if (0xDEF7BDEF7BDEF7BELL * ((v306 - v304) >> 3) > v45)
          {
            v45 = 0xDEF7BDEF7BDEF7BELL * ((v306 - v304) >> 3);
          }

          if (0xEF7BDEF7BDEF7BDFLL * ((v306 - v304) >> 3) >= 0x84210842108421)
          {
            v46 = 0x108421084210842;
          }

          else
          {
            v46 = v45;
          }

          __sz[0] = &v304;
          if (v46)
          {
            if (v46 <= 0x108421084210842)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v47 = v11;
          *v333 = 0;
          *&v333[8] = 8 * ((v305 - v304) >> 3);
          *&v333[16] = *&v333[8];
          *&v333[24] = 0;
          std::allocator_traits<std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::construct[abi:ne200100]<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,0>(*&v333[8], &v313);
          v48 = v305;
          v49 = v304;
          v50 = (*&v333[8] - (v305 - v304));
          v44 = (*&v333[16] + 248);
          *&v333[16] += 248;
          if (v305 != v304)
          {
            v51 = 0;
            do
            {
              v52 = &v49[v51];
              v53 = &v50[v51];
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v50[v51], &v49[v51]);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v50[v51 + 4], &v49[v51 + 4]);
              v54 = *&v49[v51 + 8];
              *(v53 + 24) = *&v49[v51 + 24];
              *(v53 + 8) = v54;
              v55 = *&v49[v51 + 40];
              *(v53 + 5) = v55;
              if (v55)
              {
                v56 = (v55 - 16);
                if (*(v53 + 4))
                {
                  v56 = *(v53 + 4);
                }

                atomic_fetch_add_explicit(v56, 1uLL, memory_order_relaxed);
              }

              v57 = *(v52 + 4);
              *(v53 + 3) = *(v52 + 3);
              *(v53 + 4) = v57;
              v58 = *(v52 + 10);
              *(v53 + 10) = v58;
              if (v58)
              {
                v59 = (v58 - 16);
                if (*&v50[v51 + 72])
                {
                  v59 = *&v50[v51 + 72];
                }

                atomic_fetch_add_explicit(v59, 1uLL, memory_order_relaxed);
              }

              v60 = &v50[v51];
              v61 = &v49[v51];
              v62 = *&v49[v51 + 88];
              *(v60 + 104) = *&v49[v51 + 104];
              *(v60 + 88) = v62;
              v63 = *&v49[v51 + 120];
              *(v60 + 15) = v63;
              if (v63)
              {
                v64 = (v63 - 16);
                if (*(v60 + 14))
                {
                  v64 = *(v60 + 14);
                }

                atomic_fetch_add_explicit(v64, 1uLL, memory_order_relaxed);
              }

              v65 = *(v61 + 8);
              *(v60 + 18) = *(v61 + 18);
              *(v60 + 8) = v65;
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue((v60 + 152), (v61 + 152));
              v66 = &v50[v51];
              v67 = *&v49[v51 + 168];
              *(v66 + 23) = *&v49[v51 + 184];
              *(v66 + 168) = v67;
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v50[v51 + 192], &v49[v51 + 192]);
              v68 = *&v49[v51 + 208];
              *(v66 + 28) = *&v49[v51 + 224];
              *(v66 + 13) = v68;
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v50[v51 + 232], &v49[v51 + 232]);
              v51 += 248;
            }

            while (&v49[v51] != v48);
            do
            {
              realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(v49);
              v49 += 248;
            }

            while (v49 != v48);
            v49 = v304;
            v44 = *&v333[16];
          }

          v304 = v50;
          v305 = v44;
          v69 = v306;
          v306 = *&v333[24];
          *&v333[16] = v49;
          *&v333[24] = v69;
          *&v333[8] = v49;
          *v333 = v49;
          std::__split_buffer<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo> &>::~__split_buffer(v333);
          v11 = v47;
        }

        else
        {
          std::allocator_traits<std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::construct[abi:ne200100]<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,0>(v305, &v313);
          v44 = v43 + 248;
        }

        v305 = v44;
        realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(&v313);
        if ((__src & 7) != 0)
        {
          atomic_fetch_add_explicit((__src & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v293 & 7) != 0)
        {
          atomic_fetch_add_explicit((v293 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v296[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v296[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v298.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v298.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((__p & 7) != 0)
        {
          atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v302 & 7) != 0)
        {
          atomic_fetch_add_explicit((v302 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v310 & 7) != 0)
        {
          atomic_fetch_add_explicit((v310 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_73;
      }

      v70 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v17);
LABEL_79:
      v17 = v70;
      goto LABEL_18;
    }

    {
      v18 = v16[6];
      goto LABEL_17;
    }
  }

  v70 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  goto LABEL_79;
}

void sub_2474BAC2C(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3B0]);
  std::vector<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::~vector[abi:ne200100](&STACK[0x208]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&STACK[0x220]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::VtValue(pxrInternal__aapl__pxrReserved__::VtValue *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  if (*(a2 + 1))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v8, this);
    v4 = *(a2 + 1);
    v5 = ~*(a2 + 2);
    *(this + 1) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, this);
    }

    else
    {
      *this = *a2;
    }

    if (v9)
    {
      (*(v9 + 32))(v8);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2474BB540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
    {
      goto LABEL_6;
    }

    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
    {
      goto LABEL_6;
    }

    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("16TimeSampledDataT" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_6;
    }

    {
      v2 = *(a1 + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *a1;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(void *a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 29));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 24));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 19));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef((a1 + 11));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1 + 6);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void realityio::entityPath(realityio *this@<X0>, uint64_t *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v10, this);
  std::string::basic_string[abi:ne200100]<0>(__p, "/__root");
  MEMORY[0x24C1A5D70](&v9, __p);
  v6 = v9;
  v5 = v10;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (v5 == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/");
    MEMORY[0x24C1A5D70](a2, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a2, this);
  }
}

void sub_2474BB920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::TimelineGroupFactory::addTimeline(char *a1, std::string::size_type a2, __int128 *a3, char *__s, float a5, float a6)
{
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 < 0)
  {
    v10 = *(a3 + 1);
  }

  v12 = a1[23];
  if (v12 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  if (v12 >= 0)
  {
    v14 = a1[23];
  }

  else
  {
    v14 = *(a1 + 1);
  }

  if (v14)
  {
    if (v10 >= v14)
    {
      v16 = &v10[v11];
      v17 = *v13;
      v18 = v11;
      do
      {
        v19 = &v10[-v14];
        if (v19 == -1)
        {
          break;
        }

        result = memchr(v18, v17, (v19 + 1));
        if (!result)
        {
          return result;
        }

        v20 = result;
        result = memcmp(result, v13, v14);
        if (!result)
        {
          if (v20 == v16 || v20 != v11)
          {
            return result;
          }

          goto LABEL_23;
        }

        v18 = (v20 + 1);
        v10 = &v16[-v20 - 1];
      }

      while (v10 >= v14);
    }

    return 0;
  }

  else
  {
LABEL_23:
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    realityio::TimelineGroupFactory::TimelineData::TimelineData(&v31, __p, a3, a2, a5, a6);
    v21 = *(a1 + 6);
    if (v21 >= *(a1 + 7))
    {
      v22 = std::vector<realityio::TimelineGroupFactory::TimelineData>::__emplace_back_slow_path<realityio::TimelineGroupFactory::TimelineData>((a1 + 40), &v31);
    }

    else
    {
      realityio::TimelineGroupFactory::TimelineData::TimelineData(*(a1 + 6), &v31);
      v22 = v21 + 64;
      *(a1 + 6) = v21 + 64;
    }

    *(a1 + 6) = v22;
    realityio::TimelineGroupFactory::TimelineData::~TimelineData(&v31);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v23.i32[0] = *(a1 + 3);
    v23.f32[1] = a6;
    v24.i32[1] = HIDWORD(*(a1 + 3));
    v24.f32[0] = a5;
    v25 = vcgt_f32(v23, v24);
    v23.f32[0] = a5;
    *(a1 + 3) = vbsl_s8(v25, v23, *(a1 + 24));
    v26 = *(a1 + 8);
    if (v26 < a6)
    {
      v26 = a6;
    }

    *(a1 + 8) = v26;
    return 1;
  }
}

void sub_2474BBB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  realityio::TimelineGroupFactory::TimelineData::~TimelineData(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void realityio::TimelineGroupFactory::~TimelineGroupFactory(void **this)
{
  v2 = this + 5;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

realityio::Inputs **std::unique_ptr<realityio::Inputs>::~unique_ptr[abi:ne200100](realityio::Inputs **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    realityio::Inputs::~Inputs(v2);
    MEMORY[0x24C1A91B0]();
  }

  return a1;
}

uint64_t realityio::TimelineGroupFactory::createTimelineAsset(const void **a1, uint64_t a2, const char *a3)
{
  TimelineGroup = RETimelineDefinitionCreateTimelineGroup();
  v4 = a1[5];
  for (i = a1[6]; v4 != i; v4 += 64)
  {
    memset(&v33, 0, sizeof(v33));
    v6 = v4 + 24;
    v7 = v4[47];
    if (v7 >= 0)
    {
      v8 = v4[47];
    }

    else
    {
      v8 = *(v4 + 4);
    }

    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = a1[1];
    }

    if (v8 != v10 || (v7 >= 0 ? (v11 = v4 + 24) : (v11 = *v6), v9 >= 0 ? (v12 = a1) : (v12 = *a1), memcmp(v11, v12, v8)))
    {
      v13 = v4 + 24;
      if (v7 < 0)
      {
        v13 = *v6;
      }

      if (v13[v10] == 47)
      {
        v14 = v10 + 1;
      }

      else
      {
        v14 = v10;
      }

      std::string::basic_string(&__str, v4 + 1, v14, 0xFFFFFFFFFFFFFFFFLL, &TimelineClip);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      for (; size; --size)
      {
        if (p_str->__r_.__value_.__s.__data_[0] == 47)
        {
          p_str->__r_.__value_.__s.__data_[0] = 46;
        }

        p_str = (p_str + 1);
      }

      std::string::operator=(&v33, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v17 = *(v4 + 7);
    __str.__r_.__value_.__r.__words[0] = RETimelineDefinitionCreateFromTimeline();
    v18 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v33.__r_.__value_.__l.__size_;
    }

    if (!v18 && ((v21 = *(v4 + 12), v22 = *(a1 + 6), v21 == v22) || vabds_f32(v21, v22) < (((fabsf(v21) + fabsf(v22)) + 1.0) * 0.00001)) && ((v23 = *(v4 + 13), v24 = *(a1 + 7), v23 == v24) || vabds_f32(v23, v24) < (((fabsf(v23) + fabsf(v24)) + 1.0) * 0.00001)))
    {
      RETimelineDefinitionAddChildTimeline();
    }

    else
    {
      if (v4[23] < 0)
      {
        v19 = *v4;
      }

      TimelineClip = RETimelineDefinitionCreateTimelineClip();
      v20 = (*(v4 + 12) - *(a1 + 6));
      RETimelineDefinitionSetClipDelay();
      RETimelineDefinitionSetFillMode();
      RETimelineDefinitionSetTargetPath();
      RETimelineDefinitionAddChildTimeline();
      realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
    }

    realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&__str);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  v25 = *(a1 + 7);
  v26 = *(a1 + 8);
  if (v25 == v26 || vabds_f32(v25, v26) < (((fabsf(v25) + fabsf(v26)) + 1.0) * 0.00001))
  {
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v33);
    v29 = strlen(a3);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33.__r_.__value_.__r.__words[2], a3, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "_Fill", 5);
    std::stringbuf::str();
    TimelineClip = RETimelineDefinitionCreateTimelineClip();
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *&__str.__r_.__value_.__l.__data_ = (*(a1 + 7) - *(a1 + 6));
    RETimelineDefinitionSetClipDuration();
    RETimelineDefinitionSetFillMode();
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
    realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
    v33.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
    v31 = *(MEMORY[0x277D82818] + 72);
    *(v33.__r_.__value_.__r.__words + *(v33.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v33.__r_.__value_.__r.__words[2] = v31;
    v34 = MEMORY[0x277D82878] + 16;
    if (v36 < 0)
    {
      operator delete(v35[7].__locale_);
    }

    v34 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v35);
    std::iostream::~basic_iostream();
    MEMORY[0x24C1A9110](&v37);
  }

  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineGroup);
  return TimelineAsset;
}

void sub_2474BC0AC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (*(v21 - 113) < 0)
  {
    operator delete(*(v21 - 136));
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&__p, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](va);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef((v21 - 112));
  _Unwind_Resume(a1);
}

void **std::vector<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo((v3 - 248));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<realityio::TimelineGroupFactory::TimelineData>::__emplace_back_slow_path<realityio::TimelineGroupFactory::TimelineData>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>>(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 6);
  realityio::TimelineGroupFactory::TimelineData::TimelineData(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = *(a1 + 8);
  v9 = ((v2 << 6) + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>,realityio::TimelineGroupFactory::TimelineData*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<realityio::TimelineGroupFactory::TimelineData>::~__split_buffer(&v14);
  return v13;
}

void sub_2474BC2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<realityio::TimelineGroupFactory::TimelineData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::TimelineGroupFactory::TimelineData::TimelineData(uint64_t a1, __int128 *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 56) = 0;
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v6;
  *(a2 + 24) = v5;
  *(a2 + 5) = v4;
  LODWORD(v5) = *(a1 + 48);
  *(a1 + 48) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v5) = *(a1 + 52);
  *(a1 + 52) = *(a2 + 13);
  *(a2 + 13) = v5;
  v7 = *(a1 + 56);
  v10 = v7;
  *(a1 + 56) = 0;
  v8 = *(a2 + 7);
  if (v8)
  {
    *(a1 + 56) = v8;
    *(a2 + 7) = 0;
  }

  if (v7)
  {
    *(a2 + 7) = v7;
    v10 = 0;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v10);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>,realityio::TimelineGroupFactory::TimelineData*>(int a1, realityio::TimelineGroupFactory::TimelineData *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      realityio::TimelineGroupFactory::TimelineData::TimelineData(this, v8);
      v8 += 4;
      this = (this + 64);
      v7 -= 64;
    }

    while (v8 != a3);
    do
    {
      realityio::TimelineGroupFactory::TimelineData::~TimelineData(v6);
      v6 = (v6 + 64);
    }

    while (v6 != a3);
  }
}

void sub_2474BC46C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 64);
    do
    {
      realityio::TimelineGroupFactory::TimelineData::~TimelineData(v4);
      v4 = (v5 - 64);
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *realityio::TimelineGroupFactory::TimelineData::TimelineData(std::string *this, __int128 *a2)
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

  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  v6 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    RERetain();
  }

  return this;
}

void sub_2474BC520(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::TimelineGroupFactory::TimelineData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    realityio::TimelineGroupFactory::TimelineData::~TimelineData((i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *realityio::TimelineGroupFactory::TimelineData::TimelineData(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, float a5, float a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v12;
  }

  *&this[2].__r_.__value_.__l.__data_ = a5;
  *(this[2].__r_.__value_.__r.__words + 1) = a6;
  this[2].__r_.__value_.__l.__size_ = a4;
  if (a4)
  {
    RERetain();
  }

  return this;
}

void sub_2474BC650(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TimelineGroupFactory::TimelineData::~TimelineData(realityio::TimelineGroupFactory::TimelineData *this)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 7);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        realityio::TimelineGroupFactory::TimelineData::~TimelineData((v4 - 64));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(a1, a2, &v7);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    }

    *a1 = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = New + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 4);
                  *v12 = v13;
                  v11 += 6;
                }

                while (6 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 6 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 2) = *(v14 + 2);
              *v16 = v17;
              v15 += 6;
            }

            while (6 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 6 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 2);
          *v27 = v28;
          v27 = (v27 + 6);
          v7 = (v7 + 6);
          v26 -= 6;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 6 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 6;
        }

        while (6 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 6;
      }

      while (6 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

unsigned __int16 *pxrInternal__aapl__pxrReserved__::GfVec3h::operator+=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = MEMORY[0x277D86658];
  v5 = *(MEMORY[0x277D86658] + 4 * *a1) + *(MEMORY[0x277D86658] + 4 * *a2);
  if (v5 == 0.0)
  {
    v6 = HIWORD(LODWORD(v5));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v5) >> 23)))
  {
    v6 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v5) >> 23)) + (((LODWORD(v5) & 0x7FFFFF) + ((LODWORD(v5) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v5));
  }

  *a1 = v6;
  v7 = *(v4 + 4 * a1[1]) + *(v4 + 4 * a2[1]);
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

  a1[1] = v8;
  v9 = *(v4 + 4 * a1[2]) + *(v4 + 4 * a2[2]);
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
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  a1[2] = v10;
  return a1;
}

unsigned __int16 *pxrInternal__aapl__pxrReserved__::GfVec3h::operator*=(unsigned __int16 *a1, double a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D86658];
  v5 = *(MEMORY[0x277D86658] + 4 * *a1) * v3;
  if (v5 == 0.0)
  {
    v6 = HIWORD(LODWORD(v5));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v5) >> 23)))
  {
    v6 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v5) >> 23)) + (((LODWORD(v5) & 0x7FFFFF) + ((LODWORD(v5) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v5));
  }

  *a1 = v6;
  v7 = *(v4 + 4 * a1[1]) * v3;
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

  a1[1] = v8;
  v9 = *(v4 + 4 * a1[2]) * v3;
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
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  a1[2] = v10;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v6 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(a1, a2, &v6);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&New[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22 = v23;
          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(a1, a2, &v7);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = New + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 12 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 2) = *(v14 + 2);
              *v16 = v17;
              v15 += 12;
            }

            while (12 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 12 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 2);
          *v27 = v28;
          v27 = (v27 + 12);
          v7 = (v7 + 12);
          v26 -= 12;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 12 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 12;
        }

        while (12 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x1555555555555556)
    {
      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 12;
      }

      while (12 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(void *result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 16;
  v7 = (a1 + 8);
  do
  {
    v8 = v3[4];
    if (v8)
    {
      v9 = v4 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v4)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        goto LABEL_15;
      }
    }

    else if (v8 != v4)
    {
      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      v12 = *(v11 + 8);
      v13 = *(v5 + 8);
      if (v12 < v13)
      {
        goto LABEL_15;
      }

      if (v12 == v13)
      {
        v14 = *(v5 + 39);
        v17 = *(v11 + 16);
        v15 = v11 + 16;
        v16 = v17;
        v18 = *(v15 + 23);
        if (v18 >= 0)
        {
          v19 = *(v15 + 23);
        }

        else
        {
          v19 = *(v15 + 8);
        }

        if (v18 >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = v16;
        }

        if (v14 >= 0)
        {
          v21 = *(v5 + 39);
        }

        else
        {
          v21 = *(v5 + 24);
        }

        if (v14 >= 0)
        {
          v22 = (v5 + 16);
        }

        else
        {
          v22 = *(v5 + 16);
        }

        if (v21 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v21;
        }

        v24 = memcmp(v20, v22, v23);
        v25 = v19 < v21;
        if (v24)
        {
          v25 = v24 < 0;
        }

        if (v25)
        {
LABEL_15:
          ++v3;
          goto LABEL_36;
        }
      }
    }

    v7 = v3;
LABEL_36:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v26 = v7[4];
  if (!v4 || !v26)
  {
    if (v4 || !v26)
    {
      return v7;
    }

    return v2;
  }

  if (v4 != v26)
  {
    v27 = v26 & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v5 + 8);
    v29 = *(v27 + 8);
    if (v28 < v29)
    {
      return v2;
    }

    if (v28 == v29)
    {
      v32 = *(v27 + 16);
      v30 = v27 + 16;
      v31 = v32;
      v33 = *(v30 + 23);
      v34 = *(v5 + 39);
      v35 = *(v5 + 16);
      v36 = v34 >= 0 ? *(v5 + 39) : *(v5 + 24);
      v37 = (v34 >= 0 ? v6 : v35);
      v38 = v33 >= 0 ? *(v30 + 23) : *(v30 + 8);
      v39 = (v33 >= 0 ? v30 : v31);
      v40 = v38 >= v36 ? v36 : v38;
      v41 = memcmp(v37, v39, v40);
      v42 = v36 < v38;
      if (v41)
      {
        v42 = v41 < 0;
      }

      if (v42)
      {
        return v2;
      }
    }
  }

  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<TimeSampledDataT>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((result + 24));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::construct[abi:ne200100]<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,0>(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  v6 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v6;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  v9 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v9;
  *(a1 + 160) = 0;
  if (*(a2 + 160))
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v19, a1 + 152);
    v10 = *(a2 + 160);
    v11 = ~*(a2 + 160);
    *(a1 + 160) = v10;
    if ((v11 & 3) != 0)
    {
      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 152, a1 + 152);
    }

    else
    {
      *(a1 + 152) = *(a2 + 152);
    }

    *(a2 + 160) = 0;
    if (v20)
    {
      result = (*(v20 + 32))(v19);
    }
  }

  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 200) = 0;
  if (*(a2 + 200))
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v19, a1 + 192);
    v13 = *(a2 + 200);
    v14 = ~*(a2 + 200);
    *(a1 + 200) = v13;
    if ((v14 & 3) != 0)
    {
      result = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 192, a1 + 192);
    }

    else
    {
      *(a1 + 192) = *(a2 + 192);
    }

    *(a2 + 200) = 0;
    if (v20)
    {
      result = (*(v20 + 32))(v19);
    }
  }

  v15 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v15;
  *(a1 + 240) = 0;
  if (*(a2 + 240))
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v19, a1 + 232);
    v16 = *(a2 + 240);
    v17 = ~*(a2 + 240);
    *(a1 + 240) = v16;
    if ((v17 & 3) != 0)
    {
      result = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 232, a1 + 232);
    }

    else
    {
      *(a1 + 232) = *(a2 + 232);
    }

    *(a2 + 240) = 0;
    if (v20)
    {
      result = (*(v20 + 32))(v19);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474BDA78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo((i - 248));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[6];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = v2[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v2[3];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859459A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v7 = *(*v4 + 8);
        if (v7)
        {
          v7();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 8 * *a1;
        do
        {
          v5 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5) + 1;
          v6 -= 8;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void realityio::Inputs::~Inputs(realityio::Inputs *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474BDE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::emplace_back<realityio::WrappedRERef<REAsset *>>(uint64_t a1, void *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(a1 + 24))
      {
        v7 = a1;
      }

      else
      {
        v7 = (v5 - 8);
      }

      v8 = *v7;
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    if (v4 != v8)
    {
      *(v5 + 8 * v4) = *a2;
      *a2 = 0;
LABEL_13:
      ++*a1;
      return;
    }

LABEL_14:
    v9 = 1;
    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v10 < v4 + 1);
    Copy = pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateCopy(a1, *(a1 + 32), v10, *a1);
    Copy[v4] = *a2;
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(a1);
    *(a1 + 32) = Copy;
    goto LABEL_13;
  }

  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void *pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateCopy(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  New = pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateNew(a1, a3);
  if (a4)
  {
    v7 = 0;
    v8 = 8 * a4;
    do
    {
      v9 = *(a2 + v7);
      New[v7 / 8] = v9;
      if (v9)
      {
        RERetain();
      }

      v7 += 8;
    }

    while (v8 != v7);
  }

  return New;
}

void sub_2474BE060(void *a1)
{
  __cxa_begin_catch(a1);
  for (; v2; v2 -= 8)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1++);
  }

  __cxa_rethrow();
}

void *pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_DecrementIfValid(result);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    result = v8 == v10;
    v11 = v8 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    if (*(a1 + 12))
    {
      v7 = *(a1 + 16) ? 4 : 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = (a2 + 8);
  if (*(a2 + 8))
  {
    if (*(a2 + 12))
    {
      v9 = *(a2 + 16) ? 4 : 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (v5)
  {
    if (*(a1 + 12))
    {
      v10 = *(a1 + 16) == 0;
      v11 = 3;
      if (!v10)
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return memcmp(v4, v8, 4 * v11 - 4) == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

void *std::vector<RESRT>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<RESRT>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2474BE6B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RESRT>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RESRT>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

void realityio::anonymous namespace::copyAnimationLibraryEntryAndAssignToEntityHelper(realityio *a1, uint64_t a2, uint64_t *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v4 = *realityio::logObjects(a1);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v5 = "To and from entities must be valid.";
LABEL_13:
    _os_log_impl(&dword_247485000, v4, OS_LOG_TYPE_DEFAULT, v5, &buf, 2u);
    goto LABEL_61;
  }

  {
    v4 = *realityio::logObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v5 = "Could not find animation components to copy to and from.";
    goto LABEL_13;
  }

  if (REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    v28 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (!v28)
    {
LABEL_60:
      realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v28);
      goto LABEL_61;
    }

    if (*(a3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, a3[3], a3[4]);
    }

    else
    {
      buf = *(a3 + 1);
    }

    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v7 = REAnimationLibraryComponentDefaultLocalSubtreeSceneName();
      MEMORY[0x24C1A8D40](&buf, v7);
    }

    EntryAssetByKey = REAnimationLibraryDefinitionGetEntryAssetByKey();
    if (!EntryAssetByKey)
    {
LABEL_58:
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&EntryAssetByKey);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      goto LABEL_60;
    }

    RERetain();
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a3, a3[1]);
    }

    else
    {
      v25 = *a3;
    }

    if (*(a3 + 9) <= 0.0 && *(a3 + 10) <= 0.0 && *(a3 + 88) != 1)
    {
      goto LABEL_41;
    }

    v24 = 0;
    Type = REAssetGetType();
    if (CFStringCompare(Type, @"Timeline", 0))
    {
      *v29 = EntryAssetByKey;
      realityio::WrappedRERef<REAsset *>::operator=(&v24, v29);
      RootTimeline = REAnimationSceneAssetGetRootTimeline();
      if (RootTimeline)
      {
LABEL_28:
        *v29 = 0;
        v10 = RETimelineDefinitionCreateFromTimeline();
        if (*v29)
        {
          RERelease();
        }

        *v29 = v10;
        TimelineClip = 0;
        if (*(a3 + 23) < 0)
        {
          v11 = *a3;
        }

        TimelineClip = RETimelineDefinitionCreateTimelineClip();
        if (*(a3 + 9) > 0.0)
        {
          RETimelineDefinitionSetClipStart();
        }

        if (*(a3 + 10) > 0.0)
        {
          RETimelineDefinitionSetClipEnd();
        }

        if (*(a3 + 88) == 1)
        {
          RETimelineDefinitionSetClipLoopBehavior();
          TimelineAsset = 0x7FF0000000000000;
          RETimelineDefinitionSetClipDuration();
          RETimelineDefinitionSetFillMode();
          std::string::append(&v25, "__auto_generated_looping");
        }

        TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
        if (TimelineAsset)
        {
          v21 = REAnimationSceneAssetCreateWithTimeline();
          realityio::WrappedRERef<REAsset *>::operator=(&EntryAssetByKey, &v21);
          realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v21);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&TimelineAsset);
        realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
        realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(v29);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v24);
LABEL_41:
        REAnimationLibraryDefinitionAddEntryAsset();
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v25;
        }

        else
        {
          v12 = v25.__r_.__value_.__r.__words[0];
        }

        v13 = REAnimationLibraryDefinitionAddKeyedEntryIndex();
        if ((v13 & 1) == 0)
        {
          v14 = *realityio::logObjects(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v29 = 136315138;
            *&v29[4] = v12;
            _os_log_impl(&dword_247485000, v14, OS_LOG_TYPE_DEFAULT, "Could not add key for animation named: %s.", v29, 0xCu);
          }
        }

        *v29 = 0;
        *v29 = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
        REAnimationLibraryComponentAssignAnimationLibraryAsset();
        v15 = v29;
LABEL_56:
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(v15);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (*(a3 + 23) < 0)
      {
        v16 = *a3;
      }

      *v29 = REAnimationSceneEntityDefinitionCreate();
      v17 = EntryAssetByKey;
      v24 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
      RootTimeline = realityio::WrappedRERef<REAnimationSceneEntityDefinition *>::~WrappedRERef(v29);
      if (v17)
      {
        goto LABEL_28;
      }
    }

    v18 = *realityio::logObjects(RootTimeline);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *v29 = 136315138;
      *&v29[4] = p_buf;
      _os_log_impl(&dword_247485000, v18, OS_LOG_TYPE_DEFAULT, "Could not add animation clip for animation named: %s.", v29, 0xCu);
    }

    v15 = &v24;
    goto LABEL_56;
  }

  v4 = *realityio::logObjects(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v5 = "Could not find animation library assets to copy from and into.";
    goto LABEL_13;
  }

LABEL_61:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2474BEC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, __int16 a31, char a32, char a33)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a23);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&a30);
  _Unwind_Resume(a1);
}

void realityio::anonymous namespace::AnimationLibraryEntry::~AnimationLibraryEntry(void **this)
{
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

void realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(realityio::AnimationSceneAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "AnimationSceneAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kAnimationSceneAssetBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE52CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52CC8))
  {
    operator new();
  }

  if (unk_27EE52CC0)
  {
    atomic_fetch_add_explicit((unk_27EE52CC0 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285945C50;
  v7[3] = v7;
  v6[0] = &unk_285945EA0;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2474BF1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  MEMORY[0x24C1A91B0](v38, 0x1060C40E5A1EACFLL);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  v41 = *(v39 - 120);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  MEMORY[0x24C1A91B0](v37, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v36, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE52CC8);
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

void realityio::buildSceneAssetsAndAnimationLibraries(uint64_t a1, int a2, uint64_t a3, unint64_t a4, const void **a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11)
{
  v192[4] = *MEMORY[0x277D85DE8];
  v186 = a4;
  if (!a4 || std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(a11, &v186))
  {
    goto LABEL_277;
  }

  v185 = *(*(*(a3 + 40) + 16) + 16);
  std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(a11, &v186);
  v154 = a2;
  if (a2)
  {
    Name = REEntityGetName();
    std::string::basic_string[abi:ne200100]<0>(&v184, Name);
  }

  else
  {
    if (*(a5 + 23) >= 0)
    {
      v19 = *(a5 + 23);
    }

    else
    {
      v19 = a5[1];
    }

    std::string::basic_string[abi:ne200100](&v189, v19 + 1);
    v20 = a1;
    if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v189;
    }

    else
    {
      v21 = v189.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a5 + 23) >= 0)
      {
        v22 = a5;
      }

      else
      {
        v22 = *a5;
      }

      memmove(v21, v22, v19);
    }

    *(&v21->__r_.__value_.__l.__data_ + v19) = 47;
    v23 = REEntityGetName();
    v24 = std::string::append(&v189, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v184.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v184.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    a1 = v20;
    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }
  }

  if ((SHIBYTE(v184.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v178 = v184;
    v179 = 0xFF7FFFFF7F7FFFFFLL;
    v180 = -8388609;
    v182 = 0;
    v183 = 0;
    v181 = 0;
LABEL_21:
    v172 = v184;
    goto LABEL_22;
  }

  std::string::__init_copy_ctor_external(&v178, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  v179 = 0xFF7FFFFF7F7FFFFFLL;
  v180 = -8388609;
  v182 = 0;
  v183 = 0;
  v181 = 0;
  if ((SHIBYTE(v184.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  std::string::__init_copy_ctor_external(&v172, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
LABEL_22:
  v173 = 0xFF7FFFFF7F7FFFFFLL;
  v174 = -8388609;
  v176 = 0;
  v177 = 0;
  v175 = 0;
  v171[0] = 0;
  v171[1] = 0;
  v169 = 0;
  v170 = v171;
  v167 = &v168;
  v168 = 0;
  ChildCount = REEntityGetChildCount();
  if (ChildCount)
  {
    for (i = 0; i != ChildCount; ++i)
    {
      Child = REEntityGetChild();
      realityio::buildSceneAssetsAndAnimationLibraries(a1, 0, a3, Child, &v184, a6, a7, a8, a9, &v172, a11);
    }
  }

  v29 = a6[1];
  v30 = 0x9DDFEA08EB382D69 * ((8 * (v186 & 0x1FFFFFFF) + 8) ^ HIDWORD(v186));
  v31 = 0x9DDFEA08EB382D69 * (HIDWORD(v186) ^ (v30 >> 47) ^ v30);
  v32 = 0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47));
  if (!*&v29)
  {
    goto LABEL_42;
  }

  v33 = vcnt_s8(v29);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    v34 = v32;
    if (v32 >= *&v29)
    {
      v34 = v32 % *&v29;
    }
  }

  else
  {
    v34 = v32 & (*&v29 - 1);
  }

  v35 = *(*a6 + 8 * v34);
  if (v35)
  {
    v36 = *v35;
    if (*v35)
    {
      do
      {
        v37 = v36[1];
        if (v32 == v37)
        {
          if (v36[2] == v186)
          {
            break;
          }
        }

        else
        {
          if (v33.u32[0] > 1uLL)
          {
            if (v37 >= *&v29)
            {
              v37 %= *&v29;
            }
          }

          else
          {
            v37 &= *&v29 - 1;
          }

          if (v37 != v34)
          {
            goto LABEL_42;
          }
        }

        v36 = *v36;
      }

      while (v36);
    }
  }

  else
  {
LABEL_42:
    v36 = 0;
  }

  v38 = a7[1];
  if (!*&v38)
  {
    goto LABEL_60;
  }

  v39 = vcnt_s8(v38);
  v39.i16[0] = vaddlv_u8(v39);
  if (v39.u32[0] > 1uLL)
  {
    v40 = v32;
    if (v32 >= *&v38)
    {
      v40 = v32 % *&v38;
    }
  }

  else
  {
    v40 = (*&v38 - 1) & v32;
  }

  v41 = *(*a7 + 8 * v40);
  if (v41)
  {
    v42 = *v41;
    if (*v41)
    {
      do
      {
        v43 = v42[1];
        if (v32 == v43)
        {
          if (v42[2] == v186)
          {
            break;
          }
        }

        else
        {
          if (v39.u32[0] > 1uLL)
          {
            if (v43 >= *&v38)
            {
              v43 %= *&v38;
            }
          }

          else
          {
            v43 &= *&v38 - 1;
          }

          if (v43 != v40)
          {
            goto LABEL_60;
          }
        }

        v42 = *v42;
      }

      while (v42);
    }
  }

  else
  {
LABEL_60:
    v42 = 0;
  }

  v44 = a8[1];
  if (!*&v44)
  {
    goto LABEL_78;
  }

  v45 = vcnt_s8(v44);
  v45.i16[0] = vaddlv_u8(v45);
  if (v45.u32[0] > 1uLL)
  {
    v46 = v32;
    if (v32 >= *&v44)
    {
      v46 = v32 % *&v44;
    }
  }

  else
  {
    v46 = (*&v44 - 1) & v32;
  }

  v47 = *(*a8 + 8 * v46);
  if (v47)
  {
    v48 = *v47;
    if (*v47)
    {
      do
      {
        v49 = v48[1];
        if (v32 == v49)
        {
          if (v48[2] == v186)
          {
            break;
          }
        }

        else
        {
          if (v45.u32[0] > 1uLL)
          {
            if (v49 >= *&v44)
            {
              v49 %= *&v44;
            }
          }

          else
          {
            v49 &= *&v44 - 1;
          }

          if (v49 != v46)
          {
            goto LABEL_78;
          }
        }

        v48 = *v48;
      }

      while (v48);
    }
  }

  else
  {
LABEL_78:
    v48 = 0;
  }

  v50 = a9[1];
  if (!*&v50)
  {
    goto LABEL_96;
  }

  v51 = vcnt_s8(v50);
  v51.i16[0] = vaddlv_u8(v51);
  if (v51.u32[0] > 1uLL)
  {
    v52 = v32;
    if (v32 >= *&v50)
    {
      v52 = v32 % *&v50;
    }
  }

  else
  {
    v52 = (*&v50 - 1) & v32;
  }

  v53 = *(*a9 + 8 * v52);
  if (v53)
  {
    v54 = *v53;
    if (*v53)
    {
      do
      {
        v55 = v54[1];
        if (v32 == v55)
        {
          if (v54[2] == v186)
          {
            break;
          }
        }

        else
        {
          if (v51.u32[0] > 1uLL)
          {
            if (v55 >= *&v50)
            {
              v55 %= *&v50;
            }
          }

          else
          {
            v55 &= *&v50 - 1;
          }

          if (v55 != v52)
          {
            goto LABEL_96;
          }
        }

        v54 = *v54;
      }

      while (v54);
    }
  }

  else
  {
LABEL_96:
    v54 = 0;
  }

  v155 = v36;
  v156 = v48;
  v157 = v42;
  if (v36)
  {
    v56 = v36[3];
    v57 = v56[6] - v56[5];
    if (v57)
    {
      v58 = 0;
      v59 = v57 >> 3;
      if (v59 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v59;
      }

      do
      {
        v61 = *(v56[5] + 8 * v58);
        __p.__r_.__value_.__r.__words[0] = *(v56[2] + 8 * v58);
        if (__p.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v62 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v62 = 0;
        }

        v63 = *(v61 + 8);
        v64 = *(v61 + 16);
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v184;
        }

        else
        {
          v65 = v184.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v189, v65);
        v66 = v64;
        v67 = v63;
        realityio::TimelineGroupFactory::addTimeline(&v178, v62, &v189, "entitySceneClip", v67, v66);
        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
        ++v58;
      }

      while (v60 != v58);
    }
  }

  v165 = 0;
  v166 = 0;
  v164 = &v165;
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass() && REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    v188 = 0;
    v69 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (v188)
    {
      RERelease();
    }

    v188 = v69;
    KeyCount = REAnimationLibraryAssetGetKeyCount();
    memset(&__p, 0, sizeof(__p));
    if (KeyCount)
    {
      std::vector<char const*>::__vallocate[abi:ne200100](&__p, KeyCount);
    }

    REAnimationLibraryAssetGetKeys();
    if (v188)
    {
      REAnimationLibraryDefinitionClearEntries();
      v189.__r_.__value_.__r.__words[0] = 0;
      v189.__r_.__value_.__r.__words[0] = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
      if (v189.__r_.__value_.__r.__words[0])
      {
        REAnimationLibraryComponentAssignAnimationLibraryAsset();
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v189);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v188);
  }

  if (v166)
  {
    v71 = v164;
    if (v164 != &v165)
    {
      do
      {
        v72 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v170, v71 + 4);
        if (v171 == v72)
        {
          if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v184;
          }

          v159 = 0xFF7FFFFF7F7FFFFFLL;
          v160 = -8388609;
          v162 = 0;
          v163 = 0;
          v161 = 0;
          std::pair<std::string,realityio::TimelineGroupFactory>::pair[abi:ne200100]<std::string const&,realityio::TimelineGroupFactory,0>(&v189, v71 + 2, &__p);
          std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TimelineGroupFactory>>(&v170, &v189.__r_.__value_.__l.__data_);
          v187 = v192;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v187);
          if (v191 < 0)
          {
            operator delete(v190);
          }

          if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v189.__r_.__value_.__l.__data_);
          }

          v187 = &v161;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v187);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v72 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v170, v71 + 4);
        }

        v73 = v71[7];
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v184;
        }

        else
        {
          v74 = v184.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v189, v74);
        realityio::TimelineGroupFactory::addTimeline((v72 + 56), v73, &v189, "entitySceneClip", 0.0, 0.0);
        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        v75 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v167, v71 + 4);
        if (&v168 == v75)
        {
          if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v184;
          }

          v159 = 0xFF7FFFFF7F7FFFFFLL;
          v160 = -8388609;
          v162 = 0;
          v163 = 0;
          v161 = 0;
          std::pair<std::string,realityio::TimelineGroupFactory>::pair[abi:ne200100]<std::string const&,realityio::TimelineGroupFactory,0>(&v189, v71 + 2, &__p);
          std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TimelineGroupFactory>>(&v167, &v189.__r_.__value_.__l.__data_);
          v187 = v192;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v187);
          if (v191 < 0)
          {
            operator delete(v190);
          }

          if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v189.__r_.__value_.__l.__data_);
          }

          v187 = &v161;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v187);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v75 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v167, v71 + 4);
        }

        v76 = v71[7];
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v184;
        }

        else
        {
          v77 = v184.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v189, v77);
        realityio::TimelineGroupFactory::addTimeline((v75 + 56), v76, &v189, "defaultSceneClip", 0.0, 0.0);
        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        v78 = v71[1];
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = v71[2];
            v80 = *v79 == v71;
            v71 = v79;
          }

          while (!v80);
        }

        v71 = v79;
      }

      while (v79 != &v165);
    }
  }

  if (!v157)
  {
    goto LABEL_171;
  }

  v81 = *(v157[3] + 8);
  v83 = *(v81 + 16);
  v82 = *(v81 + 24);
  v84 = *(v81 + 8);
  v85 = *v81;
  v86 = (v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v184 : v184.__r_.__value_.__r.__words[0];
  std::string::basic_string[abi:ne200100]<0>(&v189, v86);
  v87 = v82 * v83;
  v88 = v84 * v82;
  realityio::TimelineGroupFactory::addTimeline(&v178, v85, &v189, "entitySceneClip", v88, v87);
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
    if (!v156)
    {
      goto LABEL_185;
    }
  }

  else
  {
LABEL_171:
    if (!v156)
    {
      goto LABEL_185;
    }
  }

  v89 = v156[3];
  v90 = *(v89 + 8);
  if (v90)
  {
    v91 = *(v89 + 24);
    v92 = *(v89 + 32);
    v93 = (v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v184 : v184.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(&v189, v93);
    v94 = v92;
    v95 = v91;
    realityio::TimelineGroupFactory::addTimeline(&v178, v90, &v189, "entitySceneClip", v95, v94);
    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }
  }

  v96 = *(v89 + 16);
  if (v96)
  {
    v97 = *(v89 + 24);
    v98 = *(v89 + 32);
    v99 = (v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v184 : v184.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(&v189, v99);
    v100 = v98;
    v101 = v97;
    realityio::TimelineGroupFactory::addTimeline(&v178, v96, &v189, "entitySceneClip", v101, v100);
    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }
  }

LABEL_185:
  if (v54)
  {
    v102 = v54[3];
    v103 = v102[6] - v102[5];
    if (v103)
    {
      v104 = 0;
      v105 = v103 >> 3;
      if (v105 <= 1)
      {
        v106 = 1;
      }

      else
      {
        v106 = v105;
      }

      do
      {
        v107 = *(v102[5] + 8 * v104);
        __p.__r_.__value_.__r.__words[0] = *(v102[2] + 8 * v104);
        if (__p.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v108 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v108 = 0;
        }

        v109 = *(v107 + 16);
        v110 = *(v107 + 24);
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v111 = &v184;
        }

        else
        {
          v111 = v184.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v189, v111);
        v112 = v110;
        v113 = v109;
        realityio::TimelineGroupFactory::addTimeline(&v178, v108, &v189, "entitySceneClip", v113, v112);
        if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v189.__r_.__value_.__l.__data_);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
        ++v104;
      }

      while (v106 != v104);
    }
  }

  v187 = 0;
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass() && REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    v114 = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](v114);
    v115 = v157;
    v116 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (v187)
    {
      RERelease();
    }

    v187 = v116;
    if (v116)
    {
      goto LABEL_209;
    }

    goto LABEL_206;
  }

  v115 = v157;
  if (!v187)
  {
LABEL_206:
    v117 = REAnimationLibraryDefinitionCreate();
    if (v187)
    {
      RERelease();
    }

    v187 = v117;
  }

LABEL_209:
  if (v182 != v181)
  {
    REEntityGetName();
    v188 = REAnimationSceneEntityDefinitionCreate();
    if (v155)
    {
      v118 = v155[3];
      v119 = v118[6] - v118[5];
      if (v119)
      {
        v120 = 0;
        if ((v119 >> 3) <= 1)
        {
          v121 = 1;
        }

        else
        {
          v121 = v119 >> 3;
        }

        do
        {
          v122 = *(*(v155[3] + 16) + 8 * v120);
          REAnimationLibraryDefinitionAddEntryAsset();
          std::to_string(&__p, ++v120);
          v123 = std::string::insert(&__p, 0, "skeletal animation ");
          v124 = *&v123->__r_.__value_.__l.__data_;
          v189.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
          *&v189.__r_.__value_.__l.__data_ = v124;
          v123->__r_.__value_.__l.__size_ = 0;
          v123->__r_.__value_.__r.__words[2] = 0;
          v123->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          REAnimationLibraryDefinitionAddKeyedEntryIndex();
          if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v189.__r_.__value_.__l.__data_);
          }
        }

        while (v121 != v120);
        v118 = v155[3];
      }

      v189.__r_.__value_.__r.__words[0] = v118[1];
      if (v189.__r_.__value_.__r.__words[0])
      {
        RERetain();
      }

      REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset();
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v189);
    }

    if (v115)
    {
      v125 = **(v115[3] + 8);
      REAnimationLibraryDefinitionAddEntryAsset();
      REAnimationLibraryDefinitionAddKeyedEntryIndex();
      REAnimationSceneEntityDefinitionSetHasTransformAnimations();
    }

    if (v156)
    {
      v126 = v156[3];
      if (*(v126 + 8))
      {
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationLibraryDefinitionAddKeyedEntryIndex();
        v126 = v156[3];
      }

      if (*(v126 + 16))
      {
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationLibraryDefinitionAddKeyedEntryIndex();
      }
    }

    if (v54)
    {
      v127 = *(v54[3] + 48) - *(v54[3] + 40);
      if (v127)
      {
        v128 = 0;
        v129 = v127 >> 3;
        if (v129 <= 1)
        {
          v130 = 1;
        }

        else
        {
          v130 = v129;
        }

        do
        {
          v131 = v54[3];
          v132 = *(*(v131 + 16) + 8 * v128);
          REAnimationLibraryDefinitionAddEntryAsset();
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(*(*(v131 + 40) + 8 * v128));
          if (*(String + 23) < 0)
          {
            v134 = *String;
          }

          REAnimationLibraryDefinitionAddKeyedEntryIndex();
          v135 = v54[3];
          v136 = *(v135 + 87);
          if (v136 >= 0)
          {
            v137 = *(v135 + 87);
          }

          else
          {
            v137 = *(v135 + 72);
          }

          v138 = *(String + 23);
          v139 = v138;
          if ((v138 & 0x80u) != 0)
          {
            v138 = String[1];
          }

          if (v137 == v138)
          {
            v142 = *(v135 + 64);
            v140 = (v135 + 64);
            v141 = v142;
            if (v136 >= 0)
            {
              v143 = v140;
            }

            else
            {
              v143 = v141;
            }

            v144 = *String;
            if (v139 < 0)
            {
              String = *String;
            }

            if (!memcmp(v143, String, v137))
            {
              REAnimationLibraryDefinitionSetDefaultEntryKey();
            }
          }

          ++v128;
        }

        while (v130 != v128);
      }
    }

    v145 = *(a3 + 48);
    v190 = 0;
    operator new();
  }

  if (v176 != v175)
  {
    REEntityGetName();
    __p.__r_.__value_.__r.__words[0] = REAnimationSceneEntityDefinitionCreate();
    if (v155)
    {
      v189.__r_.__value_.__r.__words[0] = *(v155[3] + 8);
      if (v189.__r_.__value_.__r.__words[0])
      {
        RERetain();
      }

      REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset();
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v189);
    }

    if (v115)
    {
      REAnimationSceneEntityDefinitionSetHasTransformAnimations();
    }

    v146 = *(a3 + 48);
    v190 = 0;
    operator new();
  }

  if (v182 != v181 || v176 != v175 || v169)
  {
    if (v154 && v176 != v175)
    {
      v147 = REEntityGetName();
      v148 = std::string::basic_string[abi:ne200100]<0>(&v189, v147);
      v149 = std::string::append(v148, "__rootAnimationScene");
      v150 = *&v149->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v150;
      v149->__r_.__value_.__l.__size_ = 0;
      v149->__r_.__value_.__r.__words[2] = 0;
      v149->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v189.__r_.__value_.__l.__data_);
      }

      v188 = REAnimationSceneEntityDefinitionCreate();
      v151 = *(a3 + 48);
      v190 = 0;
      operator new();
    }

    if (REAnimationLibraryDefinitionGetEntryCount())
    {
      v152 = *(a3 + 48);
      operator new();
    }
  }

  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v187);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(&v164, v165);
  std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(v168);
  std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(v171[0]);
  v189.__r_.__value_.__r.__words[0] = &v175;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v189);
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v189.__r_.__value_.__r.__words[0] = &v181;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v189);
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

LABEL_277:
  v153 = *MEMORY[0x277D85DE8];
}

void sub_2474C09EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  realityio::TimelineGroupFactory::~TimelineGroupFactory(&a51);
  if (a64 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,realityio::TimelineGroupFactory>::~pair(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v3);
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

uint64_t realityio::removeAnimationLibraries(uint64_t result, uint64_t a2, void *a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (a2)
  {
    v4 = result;
    result = std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(a3, &v10);
    if (!result)
    {
      std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(a3, &v10);
      v5 = *(v4 + 48);
      v11[0] = &unk_2859461A0;
      v11[1] = &v10;
      v11[3] = v11;
      (*(*v5 + 16))(v5, v11);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
      result = REEntityGetChildCount();
      v6 = result;
      if (result)
      {
        v7 = 0;
        do
        {
          Child = REEntityGetChild();
          result = realityio::removeAnimationLibraries(v4, Child, a3);
          ++v7;
        }

        while (v6 != v7);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474C0EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::AnimationSceneAssetBuilder::run(realityio::AnimationSceneAssetBuilder *this, std::__shared_weak_count **a2)
{
  v327 = *MEMORY[0x277D85DE8];
  v5 = realityio::EntityBuilder::kRootEntityInputName(this);
  v269 = a2;
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v5, v304);
  if (v304[0] == 1 && v305)
  {
    v6 = realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v303, 2032, this);
    v7 = realityio::SkeletalAnimationAggregationBuilder::kOutputName(v6);
    v292[0] = 0;
    v292[1] = 0;
    v8 = a2[3];
    if (v8)
    {
      v292[1] = std::__shared_weak_count::lock(v8);
      if (v292[1])
      {
        v292[0] = a2[2];
      }
    }

    MEMORY[0x24C1A5E00](&v292[2], v7);
    v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], v292);
    v10 = v9;
    v12 = v11;
    v270 = this;
    if (v9 == v11)
    {
      std::operator+<char>();
      v13 = std::string::append(v286, ") at prim path (");
      v14 = *&v13->__r_.__value_.__l.__data_;
      *&v289[16] = *(&v13->__r_.__value_.__l + 2);
      *v289 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
      v16 = *(String + 23);
      if (v16 >= 0)
      {
        v17 = String;
      }

      else
      {
        v17 = *String;
      }

      if (v16 >= 0)
      {
        v18 = *(String + 23);
      }

      else
      {
        v18 = *(String + 8);
      }

      v19 = std::string::append(v289, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      *&v295[16] = *(&v19->__r_.__value_.__l + 2);
      *v295 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(v295, ")");
      v22 = *&v21->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v21->__r_.__value_.__l + 2);
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v322, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      v299 = *&v322.__r_.__value_.__l.__data_;
      v23 = v322.__r_.__value_.__r.__words[2];
      *v301 = v323.__r_.__value_.__r.__words[0];
      *&v301[7] = *(v323.__r_.__value_.__r.__words + 7);
      v24 = v323.__r_.__value_.__s.__data_[15];
      *&v323.__r_.__value_.__l.__data_ = 0uLL;
      v322.__r_.__value_.__r.__words[2] = 0;
      v298[0] = 0;
      v300 = v23;
      v302 = v24;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v295[23] & 0x80000000) != 0)
      {
        operator delete(*v295);
      }

      if ((v289[23] & 0x80000000) != 0)
      {
        operator delete(*v289);
      }

      if ((v286[23] & 0x80000000) != 0)
      {
        operator delete(*v286);
      }
    }

    else
    {
      memset(v289, 0, 24);
      do
      {
        v25 = *(v10 + 5);
        v2 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v10 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
        }

        realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>(v2, EmptyString, &v322);
        if (v322.__r_.__value_.__s.__data_[0])
        {
          v28 = *&v322.__r_.__value_.__r.__words[1];
          if (v322.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v322.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
            __p[0] = 1;
            *&__p[8] = v28;
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
          }

          else
          {
            __p[0] = 1;
            *&__p[8] = v322.__r_.__value_.__l.__size_;
            *&__p[16] = 0;
          }
        }

        else
        {
          *v295 = *&v322.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v295[16], v323.__r_.__value_.__l.__data_, v323.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v295[16] = *&v323.__r_.__value_.__l.__data_;
            *v296 = *(&v323.__r_.__value_.__l + 2);
          }

          __p[0] = 0;
          *&__p[8] = *v295;
          *&__p[24] = *&v295[16];
          *&__p[40] = *v296;
        }

        realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v322);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (__p[0] == 1)
        {
          v29 = *&v289[8];
          if (*&v289[8] >= *&v289[16])
          {
            v31 = (*&v289[8] - *v289) >> 4;
            v32 = v31 + 1;
            if ((v31 + 1) >> 60)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v33 = *&v289[16] - *v289;
            if ((*&v289[16] - *v289) >> 3 > v32)
            {
              v32 = v33 >> 3;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF0)
            {
              v34 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v34);
            }

            v35 = 16 * v31;
            v36 = *&__p[16];
            *(16 * v31) = *&__p[8];
            if (v36)
            {
              atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
            }

            v2 = (v35 + 16);
            v37 = (v35 - (*&v289[8] - *v289));
            memcpy(v37, *v289, *&v289[8] - *v289);
            v38 = *v289;
            *v289 = v37;
            *&v289[8] = v2;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            **&v289[8] = *&__p[8];
            v30 = *&__p[16];
            *(v29 + 8) = *&__p[16];
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            v2 = (v29 + 16);
          }

          *&v289[8] = v2;
        }

        v9 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
        v10 = *v10;
      }

      while (v10 != v12);
      LOBYTE(a2) = v289[8];
      memset(&v322, 0, sizeof(v322));
      *__p = &v322;
      __p[8] = 0;
      v39 = *&v289[8] - *v289;
      if (*&v289[8] != *v289)
      {
        if (!((v39 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v39 >> 4);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v298[0] = 1;
      *&v299 = 0;
      *(&v299 + 1) = *&v289[8] - *v289;
      v300 = 0;
      memset(&v322, 0, sizeof(v322));
      *__p = &v322;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
      v322.__r_.__value_.__r.__words[0] = v289;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v322);
    }

    if ((v292[2] & 7) != 0)
    {
      atomic_fetch_add_explicit((v292[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v40 = v292[1];
    if (v292[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v292[1]);
    }

    v41 = realityio::TransformAnimationAggregationBuilder::kOutputName(v40);
    v292[0] = 0;
    v292[1] = 0;
    v42 = *(v269 + 3);
    if (v42)
    {
      v292[1] = std::__shared_weak_count::lock(v42);
      if (v292[1])
      {
        v292[0] = *(v269 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v292[2], v41);
    v43 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v269 + 1), v292);
    v44 = v43;
    v46 = v45;
    if (v43 == v45)
    {
      std::operator+<char>();
      v47 = std::string::append(&v306, ") at prim path (");
      v48 = *&v47->__r_.__value_.__l.__data_;
      *&v286[16] = *(&v47->__r_.__value_.__l + 2);
      *v286 = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v269 + 32));
      v50 = *(v49 + 23);
      if (v50 >= 0)
      {
        v51 = v49;
      }

      else
      {
        v51 = *v49;
      }

      if (v50 >= 0)
      {
        v52 = *(v49 + 23);
      }

      else
      {
        v52 = *(v49 + 8);
      }

      v53 = std::string::append(v286, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *&v289[16] = *(&v53->__r_.__value_.__l + 2);
      *v289 = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      v55 = std::string::append(v289, ")");
      v56 = *&v55->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v55->__r_.__value_.__l + 2);
      *__p = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v322, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v295[8] = v322;
      *v296 = v323.__r_.__value_.__r.__words[0];
      *&v296[7] = *(v323.__r_.__value_.__r.__words + 7);
      v57 = v323.__r_.__value_.__s.__data_[15];
      *&v323.__r_.__value_.__l.__data_ = 0uLL;
      v322.__r_.__value_.__r.__words[2] = 0;
      v295[0] = 0;
      v297 = v57;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v289[23] & 0x80000000) != 0)
      {
        operator delete(*v289);
      }

      if ((v286[23] & 0x80000000) != 0)
      {
        operator delete(*v286);
      }

      if (v307.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v306);
      }
    }

    else
    {
      do
      {
        v58 = *(v44 + 5);
        v60 = *(v58 + 16);
        v59 = *(v58 + 24);
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v44 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v61 = ((*(v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v61 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v43);
        }

        realityio::Outputs::getRawValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>(v60, v61, &v322);
        v62 = v322.__r_.__value_.__s.__data_[0];
        if ((v322.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          *__p = *&v322.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[16], v323.__r_.__value_.__l.__data_, v323.__r_.__value_.__l.__size_);
            v2 = *&__p[16];
            LOBYTE(a2) = __p[39];
            if ((v322.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v323.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *&__p[16] = v323;
            v2 = v323.__r_.__value_.__r.__words[0];
            LOBYTE(a2) = *(&v323.__r_.__value_.__s + 23);
          }
        }

        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        if (v62)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(1uLL);
        }

        if ((a2 & 0x80) != 0)
        {
          operator delete(v2);
        }

        v44 = *v44;
      }

      while (v44 != v46);
      v295[0] = 1;
      memset(&v295[8], 0, 24);
    }

    if ((v292[2] & 7) != 0)
    {
      atomic_fetch_add_explicit((v292[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v63 = v292[1];
    if (v292[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v292[1]);
    }

    v64 = realityio::SpatialAudioComponentBuilder::kOutputName(v63);
    *v289 = 0uLL;
    v65 = *(v269 + 3);
    if (v65)
    {
      *&v289[8] = std::__shared_weak_count::lock(v65);
      if (*&v289[8])
      {
        *v289 = *(v269 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v289[16], v64);
    v66 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v269 + 1), v289);
    v67 = v66;
    v69 = v68;
    if (v66 == v68)
    {
      std::operator+<char>();
      v70 = std::string::append(v284, ") at prim path (");
      v71 = *&v70->__r_.__value_.__l.__data_;
      v307.__r_.__value_.__r.__words[0] = v70->__r_.__value_.__r.__words[2];
      v306 = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v269 + 32));
      v73 = *(v72 + 23);
      if (v73 >= 0)
      {
        v74 = v72;
      }

      else
      {
        v74 = *v72;
      }

      if (v73 >= 0)
      {
        v75 = *(v72 + 23);
      }

      else
      {
        v75 = *(v72 + 8);
      }

      v76 = std::string::append(&v306, v74, v75);
      v77 = *&v76->__r_.__value_.__l.__data_;
      *&v286[16] = *(&v76->__r_.__value_.__l + 2);
      *v286 = v77;
      v76->__r_.__value_.__l.__size_ = 0;
      v76->__r_.__value_.__r.__words[2] = 0;
      v76->__r_.__value_.__r.__words[0] = 0;
      v78 = std::string::append(v286, ")");
      v79 = *&v78->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v78->__r_.__value_.__l + 2);
      *__p = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v322, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v292[1] = v322;
      *v293 = v323.__r_.__value_.__r.__words[0];
      *&v293[7] = *(v323.__r_.__value_.__r.__words + 7);
      v80 = v323.__r_.__value_.__s.__data_[15];
      *&v323.__r_.__value_.__l.__data_ = 0uLL;
      v322.__r_.__value_.__r.__words[2] = 0;
      LOBYTE(v292[0]) = 0;
      v294 = v80;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v286[23] & 0x80000000) != 0)
      {
        operator delete(*v286);
      }

      if (v307.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v306);
      }

      if ((v284[23] & 0x80000000) != 0)
      {
        operator delete(*v284);
      }
    }

    else
    {
      do
      {
        v81 = *(v67 + 5);
        v83 = *(v81 + 16);
        v82 = *(v81 + 24);
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v67 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v84 = ((*(v67 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v84 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v66);
        }

        realityio::Outputs::getRawValue<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*>(v83, v84, &v322);
        v85 = v322.__r_.__value_.__s.__data_[0];
        if ((v322.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          *__p = *&v322.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[16], v323.__r_.__value_.__l.__data_, v323.__r_.__value_.__l.__size_);
            v2 = *&__p[16];
            LOBYTE(a2) = __p[39];
            if ((v322.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v323.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *&__p[16] = v323;
            v2 = v323.__r_.__value_.__r.__words[0];
            LOBYTE(a2) = *(&v323.__r_.__value_.__s + 23);
          }
        }

        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        if (v85)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(1uLL);
        }

        if ((a2 & 0x80) != 0)
        {
          operator delete(v2);
        }

        v67 = *v67;
      }

      while (v67 != v69);
      LOBYTE(v292[0]) = 1;
      memset(&v292[1], 0, 24);
    }

    if ((v289[16] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v289[16] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v86 = *&v289[8];
    if (*&v289[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v289[8]);
    }

    v87 = realityio::SkeletalAnimationAggregationBuilder::kOutputBlendShapeName(v86);
    v306 = 0uLL;
    v88 = *(v269 + 3);
    if (v88)
    {
      *(&v306 + 1) = std::__shared_weak_count::lock(v88);
      if (*(&v306 + 1))
      {
        *&v306 = *(v269 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v307, v87);
    v89 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v269 + 1), &v306);
    v90 = v89;
    v92 = v91;
    if (v89 == v91)
    {
      std::operator+<char>();
      v93 = std::string::append(&v281, ") at prim path (");
      v94 = *&v93->__r_.__value_.__l.__data_;
      *&v284[16] = *(&v93->__r_.__value_.__l + 2);
      *v284 = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      v95 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v269 + 32));
      v96 = *(v95 + 23);
      if (v96 >= 0)
      {
        v97 = v95;
      }

      else
      {
        v97 = *v95;
      }

      if (v96 >= 0)
      {
        v98 = *(v95 + 23);
      }

      else
      {
        v98 = *(v95 + 8);
      }

      v99 = std::string::append(v284, v97, v98);
      v100 = *&v99->__r_.__value_.__l.__data_;
      *&v286[16] = *(&v99->__r_.__value_.__l + 2);
      *v286 = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      v101 = std::string::append(v286, ")");
      v102 = *&v101->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v101->__r_.__value_.__l + 2);
      *__p = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v322, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v289[8] = v322;
      *v290 = v323.__r_.__value_.__r.__words[0];
      *&v290[7] = *(v323.__r_.__value_.__r.__words + 7);
      v103 = v323.__r_.__value_.__s.__data_[15];
      *&v323.__r_.__value_.__l.__data_ = 0uLL;
      v322.__r_.__value_.__r.__words[2] = 0;
      v289[0] = 0;
      v291 = v103;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v286[23] & 0x80000000) != 0)
      {
        operator delete(*v286);
      }

      if ((v284[23] & 0x80000000) != 0)
      {
        operator delete(*v284);
      }

      if (SBYTE7(v282) < 0)
      {
        operator delete(v281);
      }
    }

    else
    {
      memset(v284, 0, 24);
      do
      {
        v104 = *(v90 + 5);
        v106 = *(v104 + 16);
        v105 = *(v104 + 24);
        if (v105)
        {
          atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v90 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v107 = ((*(v90 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v107 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
        }

        realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>(v106, v107, &v322);
        if (v322.__r_.__value_.__s.__data_[0])
        {
          v108 = *&v322.__r_.__value_.__r.__words[1];
          if (v322.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v322.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((*(&v108 + 1) + 8), 1uLL, memory_order_relaxed);
            __p[0] = 1;
            *&__p[8] = v108;
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v108 + 1));
          }

          else
          {
            __p[0] = 1;
            *&__p[8] = v322.__r_.__value_.__l.__size_;
            *&__p[16] = 0;
          }
        }

        else
        {
          *v286 = *&v322.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v286[16], v323.__r_.__value_.__l.__data_, v323.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v286[16] = *&v323.__r_.__value_.__l.__data_;
            *v287 = *(&v323.__r_.__value_.__l + 2);
          }

          __p[0] = 0;
          *&__p[8] = *v286;
          *&__p[24] = *&v286[16];
          *&__p[40] = *v287;
        }

        realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v322);
        if (v105)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v105);
        }

        if (__p[0] == 1)
        {
          v109 = *&v284[8];
          if (*&v284[8] >= *&v284[16])
          {
            v112 = (*&v284[8] - *v284) >> 4;
            v113 = v112 + 1;
            if ((v112 + 1) >> 60)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v114 = *&v284[16] - *v284;
            if ((*&v284[16] - *v284) >> 3 > v113)
            {
              v113 = v114 >> 3;
            }

            if (v114 >= 0x7FFFFFFFFFFFFFF0)
            {
              v115 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v113;
            }

            if (v115)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v115);
            }

            v116 = 16 * v112;
            v117 = *&__p[16];
            *(16 * v112) = *&__p[8];
            if (v117)
            {
              atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
            }

            v111 = v116 + 16;
            v118 = (v116 - (*&v284[8] - *v284));
            memcpy(v118, *v284, *&v284[8] - *v284);
            v119 = *v284;
            *v284 = v118;
            *&v284[8] = v111;
            if (v119)
            {
              operator delete(v119);
            }
          }

          else
          {
            **&v284[8] = *&__p[8];
            v110 = *&__p[16];
            *(v109 + 8) = *&__p[16];
            if (v110)
            {
              atomic_fetch_add_explicit((v110 + 8), 1uLL, memory_order_relaxed);
            }

            v111 = v109 + 16;
          }

          *&v284[8] = v111;
        }

        v89 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
        v90 = *v90;
      }

      while (v90 != v92);
      memset(&v322, 0, sizeof(v322));
      *__p = &v322;
      __p[8] = 0;
      v120 = *&v284[8] - *v284;
      if (*&v284[8] != *v284)
      {
        if (!((v120 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v120 >> 4);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v289[0] = 1;
      *&v289[8] = 0;
      *&v289[16] = *&v284[8] - *v284;
      *&v289[24] = 0;
      memset(&v322, 0, sizeof(v322));
      *__p = &v322;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
      v322.__r_.__value_.__r.__words[0] = v284;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v322);
    }

    if ((v307.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v307.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(&v306 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v306 + 1));
    }

    std::string::basic_string[abi:ne200100]<0>(&v308, "arbitraryComponentAnimationLibrary");
    v278[0] = 0;
    v278[1] = 0;
    v121 = *(v269 + 3);
    if (v121)
    {
      v278[1] = std::__shared_weak_count::lock(v121);
      if (v278[1])
      {
        v278[0] = *(v269 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v279, &v308);
    v122 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v269 + 1), v278);
    v123 = v122;
    v125 = v124;
    if (v122 == v124)
    {
      std::operator+<char>();
      v126 = std::string::append(&v281, ") at prim path (");
      v127 = *&v126->__r_.__value_.__l.__data_;
      *&v284[16] = *(&v126->__r_.__value_.__l + 2);
      *v284 = v127;
      v126->__r_.__value_.__l.__size_ = 0;
      v126->__r_.__value_.__r.__words[2] = 0;
      v126->__r_.__value_.__r.__words[0] = 0;
      v128 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v269 + 32));
      v129 = *(v128 + 23);
      if (v129 >= 0)
      {
        v130 = v128;
      }

      else
      {
        v130 = *v128;
      }

      if (v129 >= 0)
      {
        v131 = *(v128 + 23);
      }

      else
      {
        v131 = *(v128 + 8);
      }

      v132 = std::string::append(v284, v130, v131);
      v133 = *&v132->__r_.__value_.__l.__data_;
      v307.__r_.__value_.__r.__words[0] = v132->__r_.__value_.__r.__words[2];
      v306 = v133;
      v132->__r_.__value_.__l.__size_ = 0;
      v132->__r_.__value_.__r.__words[2] = 0;
      v132->__r_.__value_.__r.__words[0] = 0;
      v134 = std::string::append(&v306, ")");
      v135 = *&v134->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v134->__r_.__value_.__l + 2);
      *__p = v135;
      v134->__r_.__value_.__l.__size_ = 0;
      v134->__r_.__value_.__r.__words[2] = 0;
      v134->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v322, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v286[8] = v322;
      *v287 = v323.__r_.__value_.__r.__words[0];
      *&v287[7] = *(v323.__r_.__value_.__r.__words + 7);
      v136 = v323.__r_.__value_.__s.__data_[15];
      *&v323.__r_.__value_.__l.__data_ = 0uLL;
      v322.__r_.__value_.__r.__words[2] = 0;
      v286[0] = 0;
      v288 = v136;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v307.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v306);
      }

      if ((v284[23] & 0x80000000) != 0)
      {
        operator delete(*v284);
      }

      if (SBYTE7(v282) < 0)
      {
        operator delete(v281);
      }
    }

    else
    {
      v275[0] = 0;
      v275[1] = 0;
      *&v276 = 0;
      do
      {
        v137 = *(v123 + 5);
        v138 = *(v137 + 16);
        v139 = *(v137 + 24);
        if (v139)
        {
          atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v123 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v140 = ((*(v123 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v140 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v122);
        }

        std::mutex::lock(v138 + 1);
        v141 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v138->__m_.__opaque[32], v140);
        if (&v138->__m_.__opaque[40] == v141)
        {
          std::operator+<char>();
          v145 = std::string::append(&v281, " does not exist in the builder outputs");
          v146 = *&v145->__r_.__value_.__l.__data_;
          *&v284[16] = *(&v145->__r_.__value_.__l + 2);
          *v284 = v146;
          v145->__r_.__value_.__l.__size_ = 0;
          v145->__r_.__value_.__r.__words[2] = 0;
          v145->__r_.__value_.__r.__words[0] = 0;
          realityio::DetailedError::DetailedError(&v306, 207, &realityio::FoundationErrorCategory(void)::instance, v284);
          *&v322.__r_.__value_.__r.__words[1] = v306;
          v323.__r_.__value_.__l.__size_ = v307.__r_.__value_.__l.__size_;
          v147 = v307.__r_.__value_.__r.__words[0];
          *(&v323.__r_.__value_.__r.__words[1] + 7) = *(&v307.__r_.__value_.__r.__words[1] + 7);
          v148 = HIBYTE(v307.__r_.__value_.__r.__words[2]);
          memset(&v307, 0, sizeof(v307));
          v322.__r_.__value_.__s.__data_[0] = 0;
          v323.__r_.__value_.__r.__words[0] = v147;
          *(&v323.__r_.__value_.__s + 23) = v148;
          if ((v284[23] & 0x80000000) != 0)
          {
            operator delete(*v284);
          }

          if (SBYTE7(v282) < 0)
          {
            operator delete(v281);
          }
        }

        else
        {
          v142 = *(v141 + 56);
          v144 = *(v142 + 8);
          v143 = *(v142 + 16);
          if (v143)
          {
            atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
          }

          v322.__r_.__value_.__s.__data_[0] = 1;
          v322.__r_.__value_.__l.__size_ = v144;
          v322.__r_.__value_.__r.__words[2] = v143;
        }

        std::mutex::unlock(v138 + 1);
        if (v322.__r_.__value_.__s.__data_[0])
        {
          v149 = *&v322.__r_.__value_.__r.__words[1];
          if (v322.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v322.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((*(&v149 + 1) + 8), 1uLL, memory_order_relaxed);
            __p[0] = 1;
            *&__p[8] = v149;
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v149 + 1));
          }

          else
          {
            __p[0] = 1;
            *&__p[8] = v322.__r_.__value_.__l.__size_;
            *&__p[16] = 0;
          }
        }

        else
        {
          v306 = *&v322.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v307, v323.__r_.__value_.__l.__data_, v323.__r_.__value_.__l.__size_);
          }

          else
          {
            v307 = v323;
          }

          __p[0] = 0;
          *&__p[8] = v306;
          *&__p[24] = v307;
        }

        realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v322);
        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v139);
        }

        if (__p[0] == 1)
        {
          v150 = v275[1];
          if (v275[1] >= v276)
          {
            v153 = (v275[1] - v275[0]) >> 4;
            v154 = v153 + 1;
            if ((v153 + 1) >> 60)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v155 = v276 - v275[0];
            if ((v276 - v275[0]) >> 3 > v154)
            {
              v154 = v155 >> 3;
            }

            if (v155 >= 0x7FFFFFFFFFFFFFF0)
            {
              v156 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v156 = v154;
            }

            if (v156)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v156);
            }

            v157 = 16 * v153;
            v158 = *&__p[16];
            *(16 * v153) = *&__p[8];
            if (v158)
            {
              atomic_fetch_add_explicit((v158 + 8), 1uLL, memory_order_relaxed);
            }

            v152 = (v157 + 16);
            v159 = (v157 - (v275[1] - v275[0]));
            memcpy(v159, v275[0], v275[1] - v275[0]);
            v160 = v275[0];
            v275[0] = v159;
            v275[1] = v152;
            *&v276 = 0;
            if (v160)
            {
              operator delete(v160);
            }
          }

          else
          {
            *v275[1] = *&__p[8];
            v151 = *&__p[16];
            v150[1] = *&__p[16];
            if (v151)
            {
              atomic_fetch_add_explicit((v151 + 8), 1uLL, memory_order_relaxed);
            }

            v152 = v150 + 2;
          }

          v275[1] = v152;
        }

        v122 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
        v123 = *v123;
      }

      while (v123 != v125);
      memset(&v322, 0, sizeof(v322));
      *__p = &v322;
      __p[8] = 0;
      v161 = v275[1] - v275[0];
      if (v275[1] != v275[0])
      {
        if (!((v161 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v161 >> 4);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v286[0] = 1;
      *&v286[8] = 0;
      *&v286[16] = v275[1] - v275[0];
      *&v286[24] = 0;
      memset(&v322, 0, sizeof(v322));
      *__p = &v322;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
      v322.__r_.__value_.__r.__words[0] = v275;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v322);
    }

    if ((v279 & 7) != 0)
    {
      atomic_fetch_add_explicit((v279 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v278[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v278[1]);
    }

    if (SHIBYTE(v310) < 0)
    {
      operator delete(v308);
    }

    v306 = 0u;
    *&v307.__r_.__value_.__l.__data_ = 0u;
    LODWORD(v307.__r_.__value_.__r.__words[2]) = 1065353216;
    memset(v284, 0, sizeof(v284));
    v285 = 1065353216;
    v281 = 0u;
    v282 = 0u;
    v283 = 1065353216;
    *v278 = 0u;
    v279 = 0u;
    v280 = 1065353216;
    if (v298[0] == 1)
    {
      v163 = *(&v299 + 1);
      for (i = v299; i != v163; i += 2)
      {
        v322.__r_.__value_.__r.__words[0] = **i;
        if (v322.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v164 = v322.__r_.__value_.__r.__words[0];
          v165 = *i;
        }

        else
        {
          v164 = 0;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v322);
        v166 = 0x9DDFEA08EB382D69 * ((8 * (v164 & 0x1FFFFFFF) + 8) ^ HIDWORD(v164));
        v167 = 0x9DDFEA08EB382D69 * (HIDWORD(v164) ^ (v166 >> 47) ^ v166);
        v168 = 0x9DDFEA08EB382D69 * (v167 ^ (v167 >> 47));
        if (!*(&v306 + 1))
        {
          goto LABEL_299;
        }

        v169 = vcnt_s8(*(&v306 + 8));
        v169.i16[0] = vaddlv_u8(v169);
        if (v169.u32[0] > 1uLL)
        {
          v170 = 0x9DDFEA08EB382D69 * (v167 ^ (v167 >> 47));
          if (v168 >= *(&v306 + 1))
          {
            v170 = v168 % *(&v306 + 1);
          }
        }

        else
        {
          v170 = v168 & (*(&v306 + 1) - 1);
        }

        v171 = *(v306 + 8 * v170);
        if (!v171 || (v172 = *v171) == 0)
        {
LABEL_299:
          operator new();
        }

        while (1)
        {
          v173 = v172[1];
          if (v173 == v168)
          {
            break;
          }

          if (v169.u32[0] > 1uLL)
          {
            if (v173 >= *(&v306 + 1))
            {
              v173 %= *(&v306 + 1);
            }
          }

          else
          {
            v173 &= *(&v306 + 1) - 1;
          }

          if (v173 != v170)
          {
            goto LABEL_299;
          }

LABEL_298:
          v172 = *v172;
          if (!v172)
          {
            goto LABEL_299;
          }
        }

        if (v172[2] != v164)
        {
          goto LABEL_298;
        }
      }
    }

    if (v295[0] == 1)
    {
      v174 = *&v295[8];
      if (*&v295[8] != *&v295[16])
      {
LABEL_303:
        v175 = **v174;
        v176 = 0x9DDFEA08EB382D69 * ((8 * (v175 & 0x1FFFFFFF) + 8) ^ HIDWORD(v175));
        v177 = 0x9DDFEA08EB382D69 * (HIDWORD(v175) ^ (v176 >> 47) ^ v176);
        v178 = 0x9DDFEA08EB382D69 * (v177 ^ (v177 >> 47));
        if (!*&v284[8])
        {
          goto LABEL_319;
        }

        v179 = vcnt_s8(*&v284[8]);
        v179.i16[0] = vaddlv_u8(v179);
        if (v179.u32[0] > 1uLL)
        {
          v180 = 0x9DDFEA08EB382D69 * (v177 ^ (v177 >> 47));
          if (v178 >= *&v284[8])
          {
            v180 = v178 % *&v284[8];
          }
        }

        else
        {
          v180 = v178 & (*&v284[8] - 1);
        }

        v181 = *(*v284 + 8 * v180);
        if (!v181 || (v182 = *v181) == 0)
        {
LABEL_319:
          operator new();
        }

        while (1)
        {
          v183 = v182[1];
          if (v183 == v178)
          {
            if (v182[2] == v175)
            {
              if (++v174 == *&v295[16])
              {
                break;
              }

              goto LABEL_303;
            }
          }

          else
          {
            if (v179.u32[0] > 1uLL)
            {
              if (v183 >= *&v284[8])
              {
                v183 %= *&v284[8];
              }
            }

            else
            {
              v183 &= *&v284[8] - 1;
            }

            if (v183 != v180)
            {
              goto LABEL_319;
            }
          }

          v182 = *v182;
          if (!v182)
          {
            goto LABEL_319;
          }
        }
      }
    }

    if (LOBYTE(v292[0]) == 1)
    {
      v184 = v292[1];
      if (v292[1] != v292[2])
      {
LABEL_323:
        v185 = **v184;
        v186 = 0x9DDFEA08EB382D69 * ((8 * (v185 & 0x1FFFFFFF) + 8) ^ HIDWORD(v185));
        v187 = 0x9DDFEA08EB382D69 * (HIDWORD(v185) ^ (v186 >> 47) ^ v186);
        v188 = 0x9DDFEA08EB382D69 * (v187 ^ (v187 >> 47));
        if (!*(&v281 + 1))
        {
          goto LABEL_339;
        }

        v189 = vcnt_s8(*(&v281 + 8));
        v189.i16[0] = vaddlv_u8(v189);
        if (v189.u32[0] > 1uLL)
        {
          v190 = 0x9DDFEA08EB382D69 * (v187 ^ (v187 >> 47));
          if (v188 >= *(&v281 + 1))
          {
            v190 = v188 % *(&v281 + 1);
          }
        }

        else
        {
          v190 = v188 & (*(&v281 + 1) - 1);
        }

        v191 = *(v281 + 8 * v190);
        if (!v191 || (v192 = *v191) == 0)
        {
LABEL_339:
          operator new();
        }

        while (1)
        {
          v193 = v192[1];
          if (v193 == v188)
          {
            if (v192[2] == v185)
            {
              if (++v184 == v292[2])
              {
                break;
              }

              goto LABEL_323;
            }
          }

          else
          {
            if (v189.u32[0] > 1uLL)
            {
              if (v193 >= *(&v281 + 1))
              {
                v193 %= *(&v281 + 1);
              }
            }

            else
            {
              v193 &= *(&v281 + 1) - 1;
            }

            if (v193 != v190)
            {
              goto LABEL_339;
            }
          }

          v192 = *v192;
          if (!v192)
          {
            goto LABEL_339;
          }
        }
      }
    }

    if (v289[0] == 1)
    {
      v195 = *&v289[16];
      v194 = *&v289[8];
      if (*&v289[8] != *&v289[16])
      {
LABEL_343:
        v322.__r_.__value_.__r.__words[0] = **v194;
        if (v322.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v196 = v322.__r_.__value_.__r.__words[0];
          v197 = *v194;
        }

        else
        {
          v196 = 0;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v322);
        v198 = 0x9DDFEA08EB382D69 * ((8 * (v196 & 0x1FFFFFFF) + 8) ^ HIDWORD(v196));
        v199 = 0x9DDFEA08EB382D69 * (HIDWORD(v196) ^ (v198 >> 47) ^ v198);
        v200 = 0x9DDFEA08EB382D69 * (v199 ^ (v199 >> 47));
        if (!v278[1])
        {
          goto LABEL_362;
        }

        v201 = vcnt_s8(v278[1]);
        v201.i16[0] = vaddlv_u8(v201);
        if (v201.u32[0] > 1uLL)
        {
          v202 = 0x9DDFEA08EB382D69 * (v199 ^ (v199 >> 47));
          if (v200 >= v278[1])
          {
            v202 = v200 % v278[1];
          }
        }

        else
        {
          v202 = v200 & (v278[1] - 1);
        }

        v203 = *(v278[0] + v202);
        if (!v203 || (v204 = *v203) == 0)
        {
LABEL_362:
          operator new();
        }

        while (1)
        {
          v205 = v204[1];
          if (v205 == v200)
          {
            if (v204[2] == v196)
            {
              v194 += 2;
              if (v194 == v195)
              {
                break;
              }

              goto LABEL_343;
            }
          }

          else
          {
            if (v201.u32[0] > 1uLL)
            {
              if (v205 >= v278[1])
              {
                v205 %= v278[1];
              }
            }

            else
            {
              v205 &= v278[1] - 1;
            }

            if (v205 != v202)
            {
              goto LABEL_362;
            }
          }

          v204 = *v204;
          if (!v204)
          {
            goto LABEL_362;
          }
        }
      }
    }

    if (!v307.__r_.__value_.__l.__size_ && !*&v284[24] && !*(&v282 + 1) && !*(&v279 + 1))
    {
LABEL_533:
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v278);
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&v281);
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v284);
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&v306);
      realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(v286);
      realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(v289);
      realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v292);
      realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v295);
      realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(v298);
      realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v303);
      goto LABEL_534;
    }

    *v275 = 0u;
    v276 = 0u;
    v277 = 1065353216;
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(v275, 0x64uLL);
    EntityAtPrimPath = v305;
    v274 = v305;
    v207 = v270;
    v208 = *(v269 + 5);
    if (*(*(v208 + 16) + 272) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v322, "/model");
      MEMORY[0x24C1A5D70](&v273, &v322);
      EntityAtPrimPath = realityio::ImportSession::getEntityAtPrimPath(v208, &v273);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v273);
      if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v322.__r_.__value_.__l.__data_);
      }

      if (EntityAtPrimPath)
      {
        v274 = EntityAtPrimPath;
      }

      else
      {
        EntityAtPrimPath = v274;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v322, "");
    realityio::buildSceneAssetsAndAnimationLibraries(v270, 1, v269, EntityAtPrimPath, &v322.__r_.__value_.__l.__data_, &v306, v284, &v281, v278, 0, v275);
    if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v322.__r_.__value_.__l.__data_);
    }

    v209 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v269 + 8));
    if (!v274)
    {
LABEL_410:
      if (v286[0] == 1)
      {
        v310 = 0;
        v309 = 0;
        v308 = &v309;
        v267 = *&v286[16];
        v222 = *&v286[8];
        if (*&v286[8] == *&v286[16])
        {
          goto LABEL_494;
        }

        v268 = *MEMORY[0x277CCA150];
        do
        {
          v271 = *v222;
          if (!*v222)
          {
            goto LABEL_493;
          }

          v223 = [MEMORY[0x277CCAA00] defaultManager];
          ServiceLocator = *(*(*(v269 + 5) + 16) + 16);
          if (ServiceLocator)
          {
            ServiceLocator = REEngineGetServiceLocator();
            if (ServiceLocator)
            {
              ServiceLocator = MEMORY[0x24C1A4230](ServiceLocator, v225, v226);
            }
          }

          v316 = ServiceLocator;
          v228 = v271[4];
          v227 = v271[5];
          v272 = v227;
          while (v228 != v227)
          {
            if (*(v228 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v322, *v228, *(v228 + 8));
            }

            else
            {
              v229 = *v228;
              v322.__r_.__value_.__r.__words[2] = *(v228 + 16);
              *&v322.__r_.__value_.__l.__data_ = v229;
            }

            if (*(v228 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v323, *(v228 + 24), *(v228 + 32));
            }

            else
            {
              v230 = *(v228 + 24);
              v323.__r_.__value_.__r.__words[2] = *(v228 + 40);
              *&v323.__r_.__value_.__l.__data_ = v230;
            }

            if (*(v228 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&v324, *(v228 + 48), *(v228 + 56));
            }

            else
            {
              v231 = *(v228 + 48);
              v324.__r_.__value_.__r.__words[2] = *(v228 + 64);
              *&v324.__r_.__value_.__l.__data_ = v231;
            }

            v232 = *(v228 + 72);
            v326 = *(v228 + 88);
            v325 = v232;
            v314 = 0;
            if ((SHIBYTE(v324.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              __s = &v324;
              v233 = &v324;
LABEL_431:
              v234 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v233, v264, v265, v266}];
              size = HIBYTE(v324.__r_.__value_.__r.__words[2]);
              goto LABEL_432;
            }

            v233 = v324.__r_.__value_.__r.__words[0];
            __s = v324.__r_.__value_.__r.__words[0];
            if (v324.__r_.__value_.__r.__words[0])
            {
              goto LABEL_431;
            }

            v234 = 0;
            size = HIBYTE(v324.__r_.__value_.__r.__words[2]);
LABEL_432:
            if ((size & 0x80u) != 0)
            {
              size = v324.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              if ([v223 fileExistsAtPath:v234])
              {
                [v223 attributesOfItemAtPath:v234 error:0];
                v312 = [objc_claimAutoreleasedReturnValue() valueForKey:v268];
                std::string::basic_string[abi:ne200100]<0>(__p, __s);
                v236 = std::__string_hash<char>::operator()[abi:ne200100](v207 + 280, __p);
                v237 = *(v207 + 288);
                if (!*&v237)
                {
                  v242 = 0;
                  goto LABEL_474;
                }

                v238 = v236;
                v239 = vcnt_s8(v237);
                v239.i16[0] = vaddlv_u8(v239);
                v240 = v239.u32[0];
                if (v239.u32[0] > 1uLL)
                {
                  v241 = v236;
                  if (v236 >= *&v237)
                  {
                    v241 = v236 % *&v237;
                  }
                }

                else
                {
                  v241 = (*&v237 - 1) & v236;
                }

                v243 = *(*(v207 + 35) + 8 * v241);
                if (!v243)
                {
                  v242 = 0;
                  goto LABEL_474;
                }

                v242 = *v243;
                if (!*v243)
                {
                  goto LABEL_474;
                }

                while (1)
                {
                  v244 = v242[1];
                  if (v244 == v238)
                  {
                    if (std::equal_to<std::string>::operator()[abi:ne200100](v270 + 280, v242 + 2, __p))
                    {
                      goto LABEL_474;
                    }
                  }

                  else
                  {
                    if (v240 > 1)
                    {
                      if (v244 >= *&v237)
                      {
                        v244 %= *&v237;
                      }
                    }

                    else
                    {
                      v244 &= *&v237 - 1;
                    }

                    if (v244 != v241)
                    {
                      v242 = 0;
LABEL_474:
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }

                      v311 = 0;
                      std::string::basic_string[abi:ne200100]<0>(__p, __s);
                      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v308, __p);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                        if (!v242)
                        {
                          goto LABEL_482;
                        }
                      }

                      else if (!v242)
                      {
                        goto LABEL_482;
                      }

                      v245 = *(v242 + 6);
                      [v312 timeIntervalSince1970];
                      if (v245 == v246)
                      {
                        realityio::WrappedRERef<REAsset *>::operator=(&v311, v242 + 5);
                      }

LABEL_482:
                      if (!v311)
                      {
                        RIOPxrUsdStageCreateWithFilePathWithErrorReporting(__s);
                      }

                      v247 = *(v269 + 6);
                      *&__p[24] = 0;
                      operator new();
                    }
                  }

                  v242 = *v242;
                  if (!v242)
                  {
                    goto LABEL_474;
                  }
                }
              }
            }

            else
            {
              if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(__p, v322.__r_.__value_.__l.__data_, v322.__r_.__value_.__l.__size_);
              }

              else
              {
                *__p = v322;
              }

              if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__p[24], v323.__r_.__value_.__l.__data_, v323.__r_.__value_.__l.__size_);
              }

              else
              {
                *&__p[24] = v323;
              }

              if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v319, v324.__r_.__value_.__l.__data_, v324.__r_.__value_.__l.__size_);
              }

              else
              {
                v319 = v324;
              }

              v320 = v325;
              v321 = 0;
              if (v326 == 1)
              {
                v321 = 1;
              }

              if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v319.__r_.__value_.__l.__data_);
              }

              if ((__p[47] & 0x80000000) != 0)
              {
                operator delete(*&__p[24]);
              }

              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v324.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v323.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v322.__r_.__value_.__l.__data_);
            }

            v228 += 96;
            v227 = v272;
          }

LABEL_493:
          v222 += 2;
        }

        while (v222 != v267);
LABEL_494:
        v248 = *(v207 + 37);
        if (v248)
        {
          v249 = (v270 + 280);
          while (&v309 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v308, (v248 + 16)))
          {
            v250 = *v248;
LABEL_525:
            v248 = v250;
            if (!v250)
            {
              goto LABEL_526;
            }
          }

          v251 = *(v270 + 288);
          v252 = *(v248 + 8);
          v253 = vcnt_s8(v251);
          v253.i16[0] = vaddlv_u8(v253);
          if (v253.u32[0] > 1uLL)
          {
            if (v252 >= *&v251)
            {
              v252 %= *&v251;
            }
          }

          else
          {
            v252 &= *&v251 - 1;
          }

          v250 = *v248;
          v254 = *(*v249 + 8 * v252);
          do
          {
            v255 = v254;
            v254 = *v254;
          }

          while (v254 != v248);
          if (v255 == (v270 + 296))
          {
            goto LABEL_544;
          }

          v256 = v255[1];
          if (v253.u32[0] > 1uLL)
          {
            if (v256 >= *&v251)
            {
              v256 %= *&v251;
            }
          }

          else
          {
            v256 &= *&v251 - 1;
          }

          v257 = *v248;
          if (v256 != v252)
          {
LABEL_544:
            if (v250)
            {
              v258 = *(v250 + 8);
              if (v253.u32[0] > 1uLL)
              {
                if (v258 >= *&v251)
                {
                  v258 %= *&v251;
                }
              }

              else
              {
                v258 &= *&v251 - 1;
              }

              v257 = *v248;
              if (v258 == v252)
              {
                goto LABEL_518;
              }
            }

            *(*v249 + 8 * v252) = 0;
            v257 = *v248;
          }

          if (!v257)
          {
LABEL_524:
            *v255 = v257;
            *v248 = 0;
            --*(v270 + 38);
            v322.__r_.__value_.__r.__words[0] = v248;
            v322.__r_.__value_.__l.__size_ = v270 + 280;
            v322.__r_.__value_.__s.__data_[16] = 1;
            *(&v322.__r_.__value_.__r.__words[2] + 1) = 0;
            HIDWORD(v322.__r_.__value_.__r.__words[2]) = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>>>>::~unique_ptr[abi:ne200100](&v322);
            goto LABEL_525;
          }

LABEL_518:
          v259 = *(v257 + 8);
          if (v253.u32[0] > 1uLL)
          {
            if (v259 >= *&v251)
            {
              v259 %= *&v251;
            }
          }

          else
          {
            v259 &= *&v251 - 1;
          }

          if (v259 != v252)
          {
            *(*v249 + 8 * v259) = v255;
            v257 = *v248;
          }

          goto LABEL_524;
        }

LABEL_526:
        std::__tree<std::string>::destroy(&v308, v309);
      }

      else if (*(v207 + 38))
      {
        std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::__deallocate_node(*(v207 + 37));
        *(v207 + 37) = 0;
        v260 = *(v207 + 36);
        if (v260)
        {
          for (j = 0; j != v260; ++j)
          {
            *(*(v207 + 35) + 8 * j) = 0;
          }
        }

        *(v207 + 38) = 0;
      }

      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v275);
      goto LABEL_533;
    }

    v210 = v209;
    MEMORY[0x24C1A5DE0](&v322, "autoPlay");
    HasAuthoredMetadata = pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredMetadata(v210, &v322);
    if ((v322.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v322.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x24C1A5DE0](&v314, "autoPlay");
    v317 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(v210, &v314, &v316))
    {
      v213 = v317;
      if (v317)
      {
        if (!*((v317 & 0xFFFFFFFFFFFFFFF8) + 16))
        {
LABEL_385:
          if ((v213 & 4) != 0)
          {
            v214 = (*((v213 & 0xFFFFFFFFFFFFFFF8) + 168))(&v316);
          }

          else
          {
            v214 = &v316;
          }

          v215 = *v214;
          goto LABEL_402;
        }

        if ((v317 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v316, MEMORY[0x277D82798]))
        {
          v213 = v317;
          goto LABEL_385;
        }
      }

      v322.__r_.__value_.__r.__words[0] = "usd/stage.h";
      v322.__r_.__value_.__l.__size_ = "GetMetadata";
      v322.__r_.__value_.__r.__words[2] = 2472;
      v323.__r_.__value_.__r.__words[0] = "BOOL pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(const TfToken &, T *) const [T = BOOL]";
      v323.__r_.__value_.__s.__data_[8] = 0;
      v216 = __p;
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, (*(MEMORY[0x277D82798] + 8) & 0x7FFFFFFFFFFFFFFFLL), v212);
      if (__p[23] < 0)
      {
        v216 = *__p;
      }

      v217 = v314 & 0xFFFFFFFFFFFFFFF8;
      if ((v314 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v218 = (v217 + 16);
        if (*(v217 + 39) < 0)
        {
          v218 = *v218;
        }
      }

      else
      {
        v218 = "";
      }

      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v308, &v316);
      if (v310 >= 0)
      {
        v219 = &v308;
      }

      else
      {
        v219 = v308;
      }

      v265 = v218;
      v266 = v219;
      v264 = v216;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
      v207 = v270;
      if (SHIBYTE(v310) < 0)
      {
        operator delete(v308);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v215 = 0;
LABEL_402:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v316);
    if ((v314 & 7) != 0)
    {
      atomic_fetch_add_explicit((v314 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((HasAuthoredMetadata & v215) == 1)
    {
      REAnimationLibraryComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        *__p = REAnimationLibraryComponentGetAnimationLibraryAsset();
        if (*__p)
        {
          RERetain();
        }

        v220 = *(v269 + 6);
        operator new();
      }
    }

    else
    {
      REAnimationComponentGetComponentType();
      v315[0] = &unk_2859462A0;
      v315[3] = v315;
      v221 = REEntityGetOrAddComponentByClass();
      std::function<void ()(REComponent *)>::operator()(v315, v221);
      RENetworkMarkComponentDirty();
      std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v315);
    }

    goto LABEL_410;
  }

LABEL_534:
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v304);
  v263 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474C4208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v71 - 224);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&STACK[0x300]);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a29);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a35);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a41);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&STACK[0x260]);
  realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(&a47);
  realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(&a53);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&a59);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&a65);
  realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(&a71);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&STACK[0x220]);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::getEntityAtPrimPath(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v6, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, a2 + 1);
  v4 = (*(*v3 + 64))(v3, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  return v4;
}

void sub_2474C4A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::AnimationSceneAssetBuilder::clear(realityio::AnimationSceneAssetBuilder *this, realityio::Inputs *a2)
{
  v3 = realityio::EntityBuilder::kRootEntityInputName(this);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v3, v7);
  if (v7[0] == 1 && a2 && v8)
  {
    memset(v5, 0, sizeof(v5));
    v6 = 1065353216;
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(v5, 0x64uLL);
    realityio::removeAnimationLibraries(a2, v8, v5);
    std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v5);
  }

  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v7);
}

void sub_2474C4AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a9);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a15);
  _Unwind_Resume(a1);
}

void realityio::AnimationSceneAssetBuilder::~AnimationSceneAssetBuilder(realityio::AnimationSceneAssetBuilder *this)
{
  *this = &unk_285945AD8;
  std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::~__hash_table(this + 280);
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
  *this = &unk_285945AD8;
  std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::~__hash_table(this + 280);
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

uint64_t realityio::anonymous namespace::findFirstAnimationLibraryComponentInHierarchy()
{
  REAnimationLibraryComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (!result)
  {
    result = REEntityGetChildCount();
    if (result)
    {
      v1 = result;
      v2 = 0;
      while (1)
      {
        Child = REEntityGetChild();
        if (result)
        {
          break;
        }

        if (v1 == ++v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

std::string *std::pair<std::string,realityio::TimelineGroupFactory>::pair[abi:ne200100]<std::string const&,realityio::TimelineGroupFactory,0>(std::string *this, __int128 *a2, __int128 *a3)
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
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
  *&this[1].__r_.__value_.__l.__data_ = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v7 = *(a3 + 3);
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = *(a3 + 8);
  this[2].__r_.__value_.__r.__words[0] = v7;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  *&this[2].__r_.__value_.__r.__words[2] = *(a3 + 40);
  this[3].__r_.__value_.__l.__size_ = *(a3 + 7);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

const void **realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void *realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void *realityio::WrappedRERef<REAnimationSceneEntityDefinition *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

__n128 std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285945B50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(**(a1 + 8) + 32);
  (*(*v3 + 24))(v3, 1);
  v4 = *(**(a1 + 8) + 32);
  (*(*v4 + 16))(v4);
  if (REEntityGetChildCount() == 1)
  {
    REEntityGetChild();
  }

  {
    AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
    v23 = AnimationLibraryAsset;
    if (AnimationLibraryAsset)
    {
      RERetain();
    }

    v6 = *(a1 + 16);
    v7 = *v6;
    if (*v6 != AnimationLibraryAsset)
    {
      *v6 = AnimationLibraryAsset;
      v23 = v7;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v23);
    if (**(a1 + 16))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, **(a1 + 32));
      v19 = **(a1 + 16);
      if (v19)
      {
        RERetain();
      }

      [**(a1 + 40) timeIntervalSince1970];
      v20 = v8;
      v9 = std::__string_hash<char>::operator()[abi:ne200100](&v2[35], __p);
      v10 = v9;
      v11 = v2[36];
      if (!*&v11)
      {
        goto LABEL_28;
      }

      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      if (v12.u32[0] > 1uLL)
      {
        v14 = v9;
        if (v9 >= *&v11)
        {
          v14 = v9 % *&v11;
        }
      }

      else
      {
        v14 = (*&v11 - 1) & v9;
      }

      v15 = *(*&v2[35] + 8 * v14);
      if (!v15 || (v16 = *v15) == 0)
      {
LABEL_28:
        operator new();
      }

      while (1)
      {
        v17 = v16[1];
        if (v17 == v10)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](&v2[35], v16 + 2, __p))
          {
            v18 = v16[5];
            if (v18 != v19)
            {
              v16[5] = v19;
              v19 = v18;
            }

            v16[6] = v20;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v19);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p[0]);
            }

            return;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v17 >= *&v11)
            {
              v17 %= *&v11;
            }
          }

          else
          {
            v17 &= *&v11 - 1;
          }

          if (v17 != v14)
          {
            goto LABEL_28;
          }
        }

        v16 = *v16;
        if (!v16)
        {
          goto LABEL_28;
        }
      }
    }
  }
}

void sub_2474C56B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285945BD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 8);
  v3 = *(*(a1 + 16) + 24);
  v4 = **(a1 + 24);
  v28 = v4;
  if (v4)
  {
    v4 = RERetain();
  }

  v5 = *(a1 + 32);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v27.__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&v27.__r_.__value_.__l.__data_ = v6;
  }

  if (!v3)
  {
    v12 = *realityio::logObjects(v4);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v13 = "To and from entities must be valid.";
LABEL_21:
    _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, v13, &buf, 2u);
    goto LABEL_37;
  }

  if (!v28 || !FirstAnimationLibraryComponentInHierarchy)
  {
    v12 = *realityio::logObjects(FirstAnimationLibraryComponentInHierarchy);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v13 = "Could not find animation components to copy to and from.";
    goto LABEL_21;
  }

  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (!v28)
  {
    v12 = *realityio::logObjects(AnimationLibraryAsset);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v13 = "Could not find animation library assets to copy from.";
    goto LABEL_21;
  }

  v9 = AnimationLibraryAsset;
  v30 = 0;
  v10 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
  if (v30)
  {
    RERelease();
  }

  v29 = 0;
  v30 = v10;
  if (v9)
  {
    v11 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (v29)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = REAnimationLibraryDefinitionCreate();
    if (v29)
    {
LABEL_23:
      RERelease();
    }
  }

  v29 = v11;
  EntryCount = REAnimationLibraryDefinitionGetEntryCount();
  if (EntryCount)
  {
    for (i = 0; i != EntryCount; ++i)
    {
      EntryAsset = REAnimationLibraryDefinitionGetEntryAsset();
      REAnimationLibraryDefinitionAddEntryAsset();
      if (REAnimationLibraryDefinitionGetDefaultEntry() == EntryAsset)
      {
        v17 = REAnimationLibraryDefinitionAddKeyedEntryIndex();
        if ((v17 & 1) == 0)
        {
          v18 = *realityio::logObjects(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v27;
            }

            else
            {
              v19 = v27.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v19;
            _os_log_impl(&dword_247485000, v18, OS_LOG_TYPE_DEFAULT, "Could not add key for animation named: %s.", &buf, 0xCu);
          }
        }
      }
    }
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  buf.__r_.__value_.__r.__words[0] = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
  if (buf.__r_.__value_.__r.__words[0])
  {
    REAnimationLibraryComponentAssignAnimationLibraryAsset();
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&buf);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v29);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v30);
LABEL_37:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v28);
  v20 = *(a1 + 32);
  if (*(v20 + 88) == 1)
  {
    v21 = **(a1 + 8);
    v22 = *(*(a1 + 16) + 24);
    if (*(v20 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *v20, *(v20 + 1));
      v20 = *(a1 + 32);
    }

    else
    {
      v23 = *v20;
      buf.__r_.__value_.__r.__words[2] = *(v20 + 2);
      *&buf.__r_.__value_.__l.__data_ = v23;
    }

    if (*(v20 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v20 + 3), *(v20 + 4));
      v20 = *(a1 + 32);
    }

    else
    {
      v24 = *(v20 + 24);
      v32.__r_.__value_.__r.__words[2] = *(v20 + 5);
      *&v32.__r_.__value_.__l.__data_ = v24;
    }

    if (*(v20 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v20 + 6), *(v20 + 7));
      v20 = *(a1 + 32);
    }

    else
    {
      v25 = v20[3];
      __p.__r_.__value_.__r.__words[2] = *(v20 + 8);
      *&__p.__r_.__value_.__l.__data_ = v25;
    }

    v34 = *(v20 + 72);
    v35 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2474C5C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&a18);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2474C6284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::anonymous namespace::getAllEntityGeneratingPrimPathsForSubtree@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v34, a1, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v34))
  {
    IsEntityProviding = realityio::calculateIsEntityProviding(&v34, v5);
    if (IsEntityProviding)
    {
      IsEntityProviding = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, a2);
    }

    UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsEntityProviding);
    v9 = *UsdPrimDefaultPredicate;
    v8 = UsdPrimDefaultPredicate[1];
    v10 = UsdPrimDefaultPredicate[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
    {
      v9 |= 0x2000uLL;
      v8 &= ~0x2000uLL;
    }

    v20 = v9;
    v21 = v8;
    *&v22 = v10;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v34, &v20, &v24);
    v20 = v24;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, &v25);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21 + 1, &v26);
    v22 = v27;
    v23 = v28;
    while (1)
    {
      v16 = v29;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, &v30);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17 + 1, &v31);
      v18 = v32;
      v19 = v33;
      if (v20 == v16 && v21 == v17)
      {
        v11 = pxrInternal__aapl__pxrReserved__::operator==(&v22, &v18) ^ 1;
      }

      else
      {
        v11 = 1;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if ((v11 & 1) == 0)
      {
        break;
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v20, &v16);
      v13 = realityio::calculateIsEntityProviding(&v16, v12);
      if ((BYTE8(v18) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
      if (v17)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
      }

      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v20, &v16);
        PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v16);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, PrimPath);
        if ((BYTE8(v18) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
        if (v17)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v20);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
  result = v35;
  if (v35)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
  }

  return result;
}

void sub_2474C66DC(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v2 - 96));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<realityio::StaticPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::InputDescriptor::Optionality,std::allocator<realityio::StaticPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, _DWORD *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285946320;
  std::allocator<realityio::StaticPrimInputDescriptor>::construct[abi:ne200100]<realityio::StaticPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::InputDescriptor::Optionality>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<realityio::StaticPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285946320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::StaticPrimInputDescriptor>::construct[abi:ne200100]<realityio::StaticPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::InputDescriptor::Optionality>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5, int *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, a5);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, a5 + 1);
  realityio::StaticPrimInputDescriptor::StaticPrimInputDescriptor(a2, &v12, a4, &v10, *a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_2474C69AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::StaticPrimInputDescriptor::StaticPrimInputDescriptor(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285946370;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 44), a4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 48), a4 + 1);
  return a1;
}

void sub_2474C6A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::StaticPrimInputDescriptor::~StaticPrimInputDescriptor(realityio::StaticPrimInputDescriptor *this)
{
  *this = &unk_285946370;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 44);

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285946370;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 44);
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::StaticPrimInputDescriptor::resolvedPrimPaths@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a2, (a1 + 44));
}

void *std::__shared_ptr_emplace<realityio::CustomInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (&)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),realityio::InputDescriptor::Optionality,std::allocator<realityio::CustomInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945CC0;
  std::allocator<realityio::CustomInputDescriptor>::construct[abi:ne200100]<realityio::CustomInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (&)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),realityio::InputDescriptor::Optionality>(&v7, a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<realityio::CustomInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945CC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::CustomInputDescriptor>::construct[abi:ne200100]<realityio::CustomInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (&)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v12[0] = &unk_285945D10;
  v12[1] = a5;
  v12[3] = v12;
  realityio::CustomInputDescriptor::CustomInputDescriptor(a2, &__p, a4, v12, *a6);
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),std::allocator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285945D10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),std::allocator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::CustomInputDescriptor::CustomInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285945DC0;
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__value_func[abi:ne200100]((a1 + 6), a4);
  return a1;
}

void realityio::CustomInputDescriptor::~CustomInputDescriptor(realityio::CustomInputDescriptor *this)
{
  *this = &unk_285945DC0;
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](this + 48);

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285945DC0;
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](this + 48);
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::CustomInputDescriptor::resolvedPrimPaths(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::~UsdPrimSubtreeRange(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a1 + 8);
  v6 = v24;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v23, (a1 + 20));
  v21 = v6;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, &v22);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, &v23);
  if (pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(&v24, &v22, 0, a2))
  {
      ;
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::UsdPrimSubtreeIterator(&v14, &v24, &v22, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::UsdPrimSubtreeIterator(&v9, &v21, &v19, a2);
  *a3 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 8), &v15);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 12), &v16);
  *(a3 + 16) = v17;
  v7 = v9;
  *(a3 + 32) = v18;
  *(a3 + 40) = v7;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 48), &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 52), &v11);
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
}

void sub_2474C74A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v6 - 64));
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (*(*a1 + 57))
  {
    v9 = *(pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrototype(*a1) + 32);
    if (v9)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *(*a1 + 4);
  if (!v9)
  {
    return 0;
  }

  if (!v8)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v11 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v12 = *a1 + 16;
  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = (*a1 + 16);
  }

  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v9 + 16));
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v16, v13, NameToken);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, &v16);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, &v16 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  v10 = 1;
LABEL_10:
  *a1 = v9;
  return pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a4, a1, v10) || !pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a1, a2, a3, a4);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v9 = *(*a1 + 5);
  if ((v9 & 7) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v10;
  if (v10)
  {
    v11 = v10 == a3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v8;
    do
    {
      v13 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a4, &v28, v12);
      v10 = v28;
      if (v13)
      {
        break;
      }

      *a1 = v28;
      v14 = *(v10 + 40);
      v10 = (v14 & 7) != 0 ? 0 : v14 & 0xFFFFFFFFFFFFFFF8;
      v28 = v10;
    }

    while (v10 && v10 != a3);
  }

  if (!v10)
  {
    v16 = *(*a1 + 5);
    if ((v16 & 7) != 0)
    {
      v10 = v16 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v10 = 0;
    }
  }

  *a1 = v10;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    if (*a1 == a3)
    {
      v25[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_32:
      v19 = v25;
LABEL_34:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
      goto LABEL_35;
    }

    if (*a1 == v28)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v27, a2);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((*a1 + 16));
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v25, &v27, NameToken);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v19 = &v27;
      goto LABEL_34;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v25, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
    v17 = *a1;
    if (!*a1 || (*(v17 + 57) & 0x10) == 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v17 + 16)))
    {
      goto LABEL_35;
    }

    PrimDataAtPathOrInPrototype = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrimDataAtPathOrInPrototype(*a1, a2);
    *a1 = PrimDataAtPathOrInPrototype;
    if (PrimDataAtPathOrInPrototype)
    {
LABEL_29:
      if (*(PrimDataAtPathOrInPrototype + 2) != *a2)
      {
        goto LABEL_35;
      }

      v25[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      goto LABEL_32;
    }

    v25[0] = "usd/primData.h";
    v25[1] = "Usd_MoveToNextSiblingOrParent";
    v25[2] = 557;
    v25[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent(PrimDataPtr &, SdfPath &, PrimDataPtr, const Usd_PrimFlagsPredicate &) [PrimDataPtr = const pxrInternal__aapl__pxrReserved__::Usd_PrimData *]";
    v26 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No prim at <%s>", v24, Text);
    if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper())
    {
      PrimDataAtPathOrInPrototype = *a1;
      goto LABEL_29;
    }
  }

LABEL_35:
  if (v28)
  {
    v21 = 1;
  }

  else
  {
    v21 = *a1 == 0;
  }

  return !v21;
}

void sub_2474C78DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = *(*a2 + 56) & 0xFFFFFFFFFFFFDFFFLL | v3;
  v5 = *a1;
  v6 = a1[1];
  v9 = *a1 & v4;
  v8 = v6 & v5;
  return *(a1 + 16) != std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>(&v9, 0, &v9, 0xFu, &v8);
}

uint64_t std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::UsdPrimSubtreeIterator(uint64_t a1, void *a2, _DWORD *a3, __int128 *a4)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a3 + 1);
  v7 = *a4;
  *(a1 + 32) = *(a4 + 2);
  *(a1 + 16) = v7;
  if (*a1 && !pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>((a1 + 16), a1) && pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a1, (a1 + 8), 0, (a1 + 16)))
  {
    *a1 = 0;
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 8, &v9);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 12, &v9 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(uint64_t *a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a1, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2)
{
  result = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>(a1, 0, a1, 0xFu, a2);
  if (result)
  {
    result = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>((a1 + 8), 0, a1 + 8, 0xFu, (a2 + 8));
    if (result)
    {
      return *(a1 + 16) == *(a2 + 16);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference@<X0>(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a2, &v6, this + 2);
  result = v6;
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return result;
}

void sub_2474C7C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this)
{
  result = pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(this, (this + 8), 0, this + 2);
  if (!result)
  {
    do
    {
      result = pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(this, (this + 8), 0, this + 2);
    }

    while (result);
  }

  return result;
}

void std::__shared_ptr_emplace<realityio::DescendantPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::DescendantPrimInputDescriptor::DescendantPrimInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &v13, a3, a5);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285945E50;
  v9 = *a4;
  v14[0] = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14[0] = v10;
    }
  }

  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](a1 + 6, v14, 1);
  if ((v14[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v14[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void realityio::DescendantPrimInputDescriptor::~DescendantPrimInputDescriptor(realityio::DescendantPrimInputDescriptor *this)
{
  *this = &unk_285945E50;
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(this + 48, *(this + 7));

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285945E50;
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(this + 48, *(this + 7));
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}