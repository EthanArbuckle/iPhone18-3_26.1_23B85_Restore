void sub_24764A870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A54A0](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EntityBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::EntityBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::EntityBuilder::_clearEntity(realityio::Inputs *)::$_0,std::allocator<realityio::EntityBuilder::_clearEntity(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859571F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::EntityBuilder::_clearEntity(realityio::Inputs *)::$_0,std::allocator<realityio::EntityBuilder::_clearEntity(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Outputs::getRawValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

void sub_24764AB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void realityio::tokens::MeshBuilderTokens_StaticTokenType::~MeshBuilderTokens_StaticTokenType(realityio::tokens::MeshBuilderTokens_StaticTokenType *this)
{
  v17 = (this + 128);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v17);
  v2 = *(this + 15);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 14);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 13);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 12);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 11);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 10);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 8);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 7);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 6);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 5);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 4);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 3);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 2);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 1);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::MeshBuilderTokens_StaticTokenType *realityio::tokens::MeshBuilderTokens_StaticTokenType::MeshBuilderTokens_StaticTokenType(realityio::tokens::MeshBuilderTokens_StaticTokenType *this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "displayColor", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "displayOpacity", 0);
  MEMORY[0x24C1A5DF0](this + 16, "faceVarying", 0);
  MEMORY[0x24C1A5DF0](this + 24, "faceVertexCounts", 0);
  MEMORY[0x24C1A5DF0](this + 32, "faceVertexIndices", 0);
  MEMORY[0x24C1A5DF0](this + 40, "Mesh", 0);
  MEMORY[0x24C1A5DF0](this + 48, "points", 0);
  MEMORY[0x24C1A5DF0](this + 56, "UsdPrimvarReader_float2", 0);
  MEMORY[0x24C1A5DF0](this + 64, "varname", 0);
  MEMORY[0x24C1A5DF0](this + 72, "mtlx", 0);
  MEMORY[0x24C1A5DF0](this + 80, "geomprop", 0);
  MEMORY[0x24C1A5DF0](this + 88, "xformOp", 0);
  MEMORY[0x24C1A5DF0](this + 96, "xformOpOrder", 0);
  MEMORY[0x24C1A5DF0](this + 104, "material:binding", 0);
  MEMORY[0x24C1A5DF0](this + 112, "importAllMeshAttributes", 0);
  MEMORY[0x24C1A5DF0](this + 120, "index", 0);
  v3 = (this + 128);
  v4 = *this;
  v24 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v25 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v26 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v27 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v28 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v29 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v30 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v31 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v32 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v33 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v34 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v35 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v36 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v37 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v38 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v39 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v24, &v40, 0x10uLL);
  for (i = 120; i != -8; i -= 8)
  {
    v21 = *(&v24 + i);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_24764B200(_Unwind_Exception *a1)
{
  v3 = 120;
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
      v5 = v1[15];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[14];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[13];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[12];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[11];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[10];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[9];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[8];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[7];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[6];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[5];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[4];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[3];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[2];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[1];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::materialBindingCallback@<X0>(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdStage *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v48, this, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v46[1] = 0;
  v46[2] = 0;
  v47 = 0;
  v7 = v49;
  if (!v49)
  {
    goto LABEL_20;
  }

  v8 = *(v49 + 40) & 7;
  v9 = *(v49 + 40) & 0xFFFFFFFFFFFFFFF8;
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    goto LABEL_21;
  }

  if (!v8 || v9 == 0)
  {
LABEL_20:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v12 = *(v9 + 40);
      v9 = v12 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 7) == 0 && v9 != 0)
      {
        break;
      }

      if (v9)
      {
        v14 = (v12 & 7) == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v6);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::_Init(v44, v7, v9, &v50, UsdPrimDefaultPredicate);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(v44, v39);
  v16 = MEMORY[0x277D86568];
  while (1)
  {
    v35 = v45;
    v36 = v44;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    LODWORD(v38) = 0;
    WORD2(v38) = 0;
    if (v39[1] == v36 && v39[0] == v35)
    {
      v17 = 1;
      if (v40 == v37 && !v41 && !v42)
      {
        v17 = v43;
      }
    }

    else
    {
      v17 = 1;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
    if ((v17 & 1) == 0)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->(v39, &v35);
    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v35);
    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
    if (v36)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
    }

    if (IsValid)
    {
      v19 = pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->(v39, &v35);
      pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(v19);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
      {
        IsA = 1;
      }

      else
      {
        v21 = pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->(v39, &v31);
        pxrInternal__aapl__pxrReserved__::UsdGeomSubset::_GetStaticTfType(v21);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
        if ((v34 & 7) != 0)
        {
          atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
        if (v32)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
        }
      }

      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
      if (v36)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
      }

      if (IsA)
      {
        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(v39, &v31);
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v38 = 0;
        v35 = MEMORY[0x277D867B8] + 16;
        if ((v34 & 7) != 0)
        {
          atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
        if (v32)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
        }

        v22 = atomic_load(v16);
        if (!v22)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v35, v22, 0);
        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v31, &v29, &v30);
        v23 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v31);
        if ((v34 & 7) != 0)
        {
          atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
        if (v32)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
        }

        if (v23)
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(v28, &v31);
          std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, &v31);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
        }

        MEMORY[0x24C1A5510](v28);
        MEMORY[0x24C1A5AA0](&v35);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(v39, &v35);
      if (v35 == v48 && v36 == v49 && v37 == v50 && (v24 = v38, (v51 ^ v38) < 8))
      {
        IsEntityProviding = 0;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(v39, &v31);
        IsEntityProviding = realityio::calculateIsEntityProviding(&v31, v25);
        if ((v34 & 7) != 0)
        {
          atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
        if (v32)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
        }

        v24 = v38;
      }

      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
      if (v36)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
      }

      if (IsEntityProviding)
      {
        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::PruneChildren(v39);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(v39);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v46);
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
  result = v49;
  if (v49)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
  }

  return result;
}

void sub_24764B908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::~UsdPrimRange(va);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v18 - 120));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v17);
  _Unwind_Resume(a1);
}

void realityio::generateMeshDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53300))
  {
    operator new();
  }

  v3 = *algn_27EE532F8;
  *a1 = _MergedGlobals_39;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24764C04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char *a48)
{
  MEMORY[0x24C1A91B0](v50, 0x10A1C40F82F910ELL);
  a48 = &a37;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a48);
  MEMORY[0x24C1A91B0](v49, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v48, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE53300);
  _Unwind_Resume(a1);
}

void realityio::generateMeshAssetBuilderDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53318))
  {
    operator new();
  }

  v3 = unk_27EE53310;
  *a1 = qword_27EE53308;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24764C788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  v29 = *(v27 - 88);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  a26 = &a13;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v30 = 24;
  while (1)
  {
    v31 = *(v27 - 128 + v30);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    v30 -= 16;
    if (v30 == -8)
    {
      if (a10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a10);
      }

      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      *(v27 - 128) = &a16;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v27 - 128));
      MEMORY[0x24C1A91B0](v26, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53318);
      _Unwind_Resume(a1);
    }
  }
}

realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor(realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *this)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(this, v4, v3);
  v5 = v3;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3[0] = v4;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v3);
  *this = &unk_285957290;
  return this;
}

void sub_24764C9BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 40) = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::~MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor(realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *this)
{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C402FEF67C7);
}

uint64_t realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v49, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v48, a8);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v47, a9);
  LOBYTE(a6) = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, a2, a3, a4, a5, a6, v49, v48, v47);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v47);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v48);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v49);
  if ((a6 & 1) == 0)
  {
    v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a5 + 48, a2);
    if (a5 + 56 == v18 || (v19 = *(a5 + 24)) == 0 || (v20 = v19 + 104 * *(v18 + 40), v21 = *(v20 + 56), v22 = (v20 + 64), v21 == (v20 + 64)))
    {
LABEL_30:
      result = 0;
      goto LABEL_31;
    }

    while (1)
    {
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v37, a4, (v21 + 28));
      v24 = v38;
      if (!v38 || (*(v38 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v38, v23);
      }

      v25 = *(v24 + 3);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v46, a7);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v45, a8);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v44, a9);
      LOBYTE(v25) = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, (v21 + 28), a3, a4, a5, v25, v46, v45, v44);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v44);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v45);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v46);
      if (v25)
      {
        break;
      }

      if (a3)
      {
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v33, a3, (v21 + 28));
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v33))
        {
          v27 = v34;
          if (!v34 || (*(v34 + 57) & 8) != 0)
          {
            pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v34, v26);
          }

          v28 = *(v27 + 3);
          std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v43, a7);
          std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v42, a8);
          std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v41, a9);
          LOBYTE(v28) = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, (v21 + 28), a3, a4, a5, v28, v43, v42, v41);
          std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v41);
          std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v42);
          std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v43);
          if (v28)
          {
            if ((v36 & 7) != 0)
            {
              atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
            if (v34)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
            }

            break;
          }
        }

        if ((v36 & 7) != 0)
        {
          atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
        if (v34)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
        }
      }

      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
      if (v38)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
      }

      v29 = v21[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v21[2];
          v31 = *v30 == v21;
          v21 = v30;
        }

        while (!v31);
      }

      v21 = v30;
      if (v30 == v22)
      {
        goto LABEL_30;
      }
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
    if (v38)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
    }
  }

  result = 1;
LABEL_31:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24764CE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::description@<X0>(CFStringRef *a1@<X8>)
{
  *a1 = 0;
  result = CFStringCreateWithCString(0, "MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor", 0x8000100u);
  *a1 = result;
  return result;
}

void realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor(realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = 0;
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_24764D248(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va1);
  v15 = 56;
  while (1)
  {
    v16 = *(v13 - 112 + v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v15 -= 16;
    if (v15 == -8)
    {
      if (a3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a3);
      }

      if (a5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a5);
      }

      if (a7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a7);
      }

      if (a9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a9);
      }

      *(v13 - 112) = va;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v13 - 112));
      _Unwind_Resume(a1);
    }
  }
}

void realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::~PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor(realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *this)
{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C402FEF67C7);
}

uint64_t realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::validate(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::UsdStage *a3, pxrInternal__aapl__pxrReserved__::UsdStage *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v50, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v49, a8);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v48, a9);
  LOBYTE(a6) = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, a2, a3, a4, a5, a6, v50, v49, v48);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v48);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v49);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v50);
  if ((a6 & 1) == 0)
  {
    v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a5 + 48, a2);
    if (a5 + 56 == v18 || (v19 = *(a5 + 24)) == 0 || (v20 = v19 + 104 * *(v18 + 40), v21 = *(v20 + 80), v33 = (v20 + 88), v21 == (v20 + 88)))
    {
LABEL_29:
      result = 0;
      goto LABEL_30;
    }

    while (1)
    {
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v38, a4, (v21 + 28));
      v23 = v39;
      if (!v39 || (*(v39 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v39, v22);
      }

      v24 = *(v23 + 3);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v47, a7);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v46, a8);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v45, a9);
      LOBYTE(v24) = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, (v21 + 28), a3, a4, a5, v24, v47, v46, v45);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v45);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v46);
      std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v47);
      if (v24)
      {
        break;
      }

      if (a3)
      {
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v34, a3, (v21 + 28));
        v26 = v35;
        if (!v35 || (*(v35 + 57) & 8) != 0)
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v35, v25);
        }

        v27 = *(v26 + 3);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v44, a7);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v43, a8);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v42, a9);
        v28 = realityio::PrimitiveDirtyPrimDescriptor::validate(a1, (v21 + 28), a3, a4, a5, v27, v44, v43, v42);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v42);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v43);
        std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v44);
        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
        if (v35)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
        }

        if (v28)
        {
          break;
        }
      }

      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
      if (v39)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
      }

      v29 = v21[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v21[2];
          v31 = *v30 == v21;
          v21 = v30;
        }

        while (!v31);
      }

      v21 = v30;
      if (v30 == v33)
      {
        goto LABEL_29;
      }
    }

    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
    if (v39)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
    }
  }

  result = 1;
LABEL_30:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24764D7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor::description@<X0>(CFStringRef *a1@<X8>)
{
  *a1 = 0;
  result = CFStringCreateWithCString(0, "PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor", 0x8000100u);
  *a1 = result;
  return result;
}

void sub_24764DA48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *,std::shared_ptr<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor,realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>,std::allocator<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *,std::shared_ptr<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor,realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>,std::allocator<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *,std::shared_ptr<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor,realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>,std::allocator<realityio::MeshPrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_24764DB94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *,std::shared_ptr<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor,realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>,std::allocator<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *,std::shared_ptr<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor,realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>,std::allocator<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor *,std::shared_ptr<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor,realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>,std::allocator<realityio::PrimitivePrimsOnPrimGeneratingEntityOnlyDirtyPrimDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__int128 *RIO_MTLX::GEOM_PATH_SEPARATOR(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(&RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v, "/");
  }

  return &RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v;
}

__int128 *RIO_MTLX::UNIVERSAL_GEOM_NAME(RIO_MTLX *this)
{
  {
    if (v2)
    {
      RIO_MTLX::GEOM_PATH_SEPARATOR(v2);
      if (byte_27EE5223F < 0)
      {
        std::string::__init_copy_ctor_external(&RIO_MTLX::UNIVERSAL_GEOM_NAME(void)::v, RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v, *(&RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v + 1));
      }

      else
      {
        RIO_MTLX::UNIVERSAL_GEOM_NAME(void)::v = RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v;
        qword_27EE52258 = unk_27EE52238;
      }
    }
  }

  return &RIO_MTLX::UNIVERSAL_GEOM_NAME(void)::v;
}

_BYTE *RIO_MTLX::UDIM_TOKEN(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::UDIM_TOKEN(void)::v, "<UDIM>");
  }

  return RIO_MTLX::UDIM_TOKEN(void)::v;
}

_BYTE *RIO_MTLX::UV_TILE_TOKEN(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::UV_TILE_TOKEN(void)::v, "<UVTILE>");
  }

  return RIO_MTLX::UV_TILE_TOKEN(void)::v;
}

_BYTE *RIO_MTLX::UDIM_SET_PROPERTY(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::UDIM_SET_PROPERTY(void)::v, "udimset");
  }

  return RIO_MTLX::UDIM_SET_PROPERTY(void)::v;
}

_BYTE *RIO_MTLX::GeomElement::GEOM_ATTRIBUTE(RIO_MTLX::GeomElement *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::GeomElement::GEOM_ATTRIBUTE(void)::v, "geom");
  }

  return RIO_MTLX::GeomElement::GEOM_ATTRIBUTE(void)::v;
}

void RIO_MTLX::GeomElement::COLLECTION_ATTRIBUTE(RIO_MTLX::GeomElement *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_40))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53340, "collection");

    __cxa_guard_release(&_MergedGlobals_40);
  }
}

void RIO_MTLX::Collection::INCLUDE_GEOM_ATTRIBUTE(RIO_MTLX::Collection *this)
{
  if ((atomic_load_explicit(&qword_27EE53328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53328))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53358, "includegeom");

    __cxa_guard_release(&qword_27EE53328);
  }
}

void RIO_MTLX::Collection::EXCLUDE_GEOM_ATTRIBUTE(RIO_MTLX::Collection *this)
{
  if ((atomic_load_explicit(&qword_27EE53330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53330))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE53370, "excludegeom");

    __cxa_guard_release(&qword_27EE53330);
  }
}

uint64_t RIO_MTLX::geomStringsMatch(RIO_MTLX *a1, std::string *a2, int a3)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v4 = RIO_MTLX::ARRAY_VALID_SEPARATORS(a1);
  RIO_MTLX::splitString(a1, v4, &v48);
  v6 = v48;
  v7 = v49;
  if (v48 != v49)
  {
    v8 = v51;
    do
    {
      if (v8 >= v52)
      {
        v10 = (v8 - v50) >> 5;
        if ((v10 + 1) >> 59)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v11 = (v52 - v50) >> 4;
        if (v11 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        if (v52 - v50 >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        v57 = &v50;
        if (v12)
        {
          if (!(v12 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v53 = 0;
        v54 = 32 * v10;
        v55 = 32 * v10;
        v56 = 0;
        RIO_MTLX::GEOM_PATH_SEPARATOR(0);
        RIO_MTLX::splitString(v6, &RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v, 32 * v10);
        v13 = *(v6 + 23);
        if (v13 < 0)
        {
          v13 = v6[1];
        }

        *(32 * v10 + 0x18) = v13 == 0;
        v8 = v55 + 32;
        v55 += 32;
        v14 = v50;
        v15 = v51;
        v58 = &v50;
        v59 = &v62;
        v60 = &v63;
        v61 = 0;
        v16 = v50 + v54 - v51;
        v62 = v16;
        v63 = v16;
        if (v50 != v51)
        {
          v17 = v50 + v54 - v51;
          v18 = v50;
          do
          {
            *v17 = 0;
            *(v17 + 8) = 0;
            *(v17 + 16) = 0;
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v17, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 3));
            *(v17 + 24) = *(v18 + 24);
            v18 += 4;
            v17 = v63 + 32;
            v63 += 32;
          }

          while (v18 != v15);
          do
          {
            v64 = v14;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v64);
            v14 += 4;
          }

          while (v14 != v15);
          v14 = v50;
          v8 = v55;
        }

        v50 = v16;
        v51 = v8;
        v19 = v52;
        v52 = v56;
        v53 = v14;
        v55 = v14;
        v56 = v19;
        v54 = v14;
        v5 = std::__split_buffer<RIO_MTLX::GeomPath>::~__split_buffer(&v53);
      }

      else
      {
        RIO_MTLX::GEOM_PATH_SEPARATOR(v5);
        RIO_MTLX::splitString(v6, &RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v, v8);
        v9 = *(v6 + 23);
        if (v9 < 0)
        {
          v9 = v6[1];
        }

        *(v8 + 24) = v9 == 0;
        v8 += 32;
      }

      v51 = v8;
      v6 += 3;
    }

    while (v6 != v7);
  }

  v53 = &v48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
  v21 = RIO_MTLX::ARRAY_VALID_SEPARATORS(v20);
  RIO_MTLX::splitString(a2, v21, &v58);
  v24 = v58;
  v23 = v59;
  for (__stra = v59; ; v23 = __stra)
  {
    if (v24 == v23)
    {
      v53 = &v58;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
      v43 = 0;
      goto LABEL_61;
    }

    RIO_MTLX::GEOM_PATH_SEPARATOR(v22);
    RIO_MTLX::splitString(v24, &RIO_MTLX::GEOM_PATH_SEPARATOR(void)::v, &v53);
    v25 = (v24->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v24->__r_.__value_.__r.__words[2]) : v24->__r_.__value_.__l.__size_;
    LOBYTE(v56) = v25 == 0;
    v26 = v50;
    v27 = v51;
    if (v50 != v51)
    {
      break;
    }

LABEL_58:
    v48 = &v53;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
    ++v24;
  }

  v28 = v53;
  v29 = v54 - v53;
  v30 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3);
  while (1)
  {
    if ((v26[3] & 1) == 0)
    {
      if (v25)
      {
        v31 = *v26;
        v32 = v26[1] - *v26;
        if (!a3 || v32 <= v29)
        {
          break;
        }
      }
    }

LABEL_36:
    v26 += 4;
    if (v26 == v27)
    {
      goto LABEL_58;
    }
  }

  v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 3);
  if (v30 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v30;
  }

  if (v34)
  {
    v35 = v28;
    do
    {
      v36 = *(v31 + 23);
      if (v36 >= 0)
      {
        v37 = *(v31 + 23);
      }

      else
      {
        v37 = v31[1];
      }

      v38 = *(v35 + 23);
      v39 = v38;
      if (v38 < 0)
      {
        v38 = v35[1];
      }

      if (v37 != v38)
      {
        goto LABEL_36;
      }

      v40 = v36 >= 0 ? v31 : *v31;
      v41 = *v35;
      v42 = v39 >= 0 ? v35 : *v35;
      if (memcmp(v40, v42, v37))
      {
        goto LABEL_36;
      }

      v35 += 3;
      v31 += 3;
    }

    while (--v34);
  }

  v48 = &v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
  v53 = &v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
  v43 = 1;
LABEL_61:
  v53 = &v50;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100](&v53);
  return v43;
}

void sub_24764E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v15 - 96) = &a15;
  std::vector<RIO_MTLX::FilePath>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));
  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::GeomElement::getCollectionString(RIO_MTLX::GeomElement *this)
{
  RIO_MTLX::GeomElement::COLLECTION_ATTRIBUTE(this);
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, byte_27EE53340);
  if (v2)
  {
    return (v2 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t RIO_MTLX::GeomElement::validate(RIO_MTLX::GeomElement *a1, std::string *a2)
{
  v12 = 1;
  RIO_MTLX::GeomElement::COLLECTION_ATTRIBUTE(a1);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, byte_27EE53340))
  {
    CollectionString = RIO_MTLX::GeomElement::getCollectionString(a1);
    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Collection>(a1, CollectionString, &v10);
    v5 = v10;
    std::string::basic_string[abi:ne200100]<0>(__p, "Invalid collection string");
    RIO_MTLX::Element::validateRequire(a1, v5 != 0, &v12, a2, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v6 = RIO_MTLX::Element::validate(a1, a2);
  return (v6 & v12);
}

void sub_24764E708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Collection::getIncludeCollections(RIO_MTLX::Collection *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if ((atomic_load_explicit(&qword_27EE53338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53338))
  {
    std::string::basic_string[abi:ne200100]<0>(&unk_27EE53388, "includecollection");
    __cxa_guard_release(&qword_27EE53338);
  }

  RIO_MTLX::Element::getTypedAttribute<std::vector<std::string>>(a2, &unk_27EE53388, v7);
  v4 = v7[0];
  v5 = v7[1];
  while (v4 != v5)
  {
    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Collection>(a2, v4, &v6);
    if (v6)
    {
      std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](this, &v6);
    }

    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
    }

    ++v4;
  }

  *&v6 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_24764E820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_guard_abort(&qword_27EE53338);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RIO_MTLX::Collection::matchesGeomString(RIO_MTLX::Collection *a1, std::string *a2)
{
  RIO_MTLX::Collection::EXCLUDE_GEOM_ATTRIBUTE(a1);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, byte_27EE53370);
  if (v4)
  {
    RIO_MTLX::EMPTY_STRING(v4);
    RIO_MTLX::Element::createStringResolver();
  }

  v5 = RIO_MTLX::EMPTY_STRING(0);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    v55.__r_.__value_.__r.__words[2] = v5[2];
    *&v55.__r_.__value_.__l.__data_ = v6;
  }

  v7 = RIO_MTLX::geomStringsMatch(&v55, a2, 1);
  v8 = v7;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
    if (v8)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  RIO_MTLX::Collection::INCLUDE_GEOM_ATTRIBUTE(v7);
  v10 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, byte_27EE53358);
  if (v10)
  {
    RIO_MTLX::EMPTY_STRING(v10);
    RIO_MTLX::Element::createStringResolver();
  }

  v11 = RIO_MTLX::EMPTY_STRING(0);
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v55.__r_.__value_.__r.__words[2] = v11[2];
    *&v55.__r_.__value_.__l.__data_ = v12;
  }

  v13 = RIO_MTLX::geomStringsMatch(&v55, a2, 0);
  v14 = v13;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
    if (v14)
    {
      return 1;
    }
  }

  else if (v13)
  {
    return 1;
  }

  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  RIO_MTLX::Collection::getIncludeCollections(&v50, a1);
  v15 = v50;
  if (v51 != v50)
  {
    v16 = 0;
    do
    {
      v17 = *&v15[16 * v16];
      v47 = *&v15[16 * v16];
      v18 = *&v15[16 * v16 + 8];
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v54[0];
      if (!v54[0])
      {
LABEL_29:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v20 = v19;
          v21 = v19[4];
          if (v21 <= v47)
          {
            break;
          }

          v19 = *v20;
          if (!*v20)
          {
            goto LABEL_29;
          }
        }

        if (v21 >= v47)
        {
          break;
        }

        v19 = v20[1];
        if (!v19)
        {
          goto LABEL_29;
        }
      }

      RIO_MTLX::Collection::getIncludeCollections(&v48, v47);
      v23 = v48;
      v22 = v49;
      v24 = v49 - v48;
      v25 = (v49 - v48) >> 4;
      if (v25 >= 1)
      {
        v26 = v51;
        if (v52 - v51 >= v24)
        {
          if (v48 == v49)
          {
            v29 = v51;
          }

          else
          {
            v29 = v51;
            do
            {
              *v26 = *v23;
              v30 = v23[1];
              *(v26 + 1) = v30;
              if (v30)
              {
                atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
              }

              v23 += 2;
              v26 += 16;
              v29 += 16;
            }

            while (v23 != v22);
          }

          v51 = v29;
        }

        else
        {
          v27 = v25 + ((v51 - v50) >> 4);
          if (v27 >> 60)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          if ((v52 - v50) >> 3 > v27)
          {
            v27 = (v52 - v50) >> 3;
          }

          if ((v52 - v50) >= 0x7FFFFFFFFFFFFFF0)
          {
            v28 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v27;
          }

          v57 = &v50;
          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v50, v28);
          }

          v31 = 16 * ((v51 - v50) >> 4);
          v56 = 0;
          v32 = (v31 + v24);
          v33 = v31;
          do
          {
            *v33 = *v23;
            v34 = v23[1];
            *(v33 + 1) = v34;
            if (v34)
            {
              atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
            }

            v33 += 16;
            v23 += 2;
          }

          while (v33 != v32);
          memcpy(v32, v26, v51 - v26);
          v35 = &v32[v51 - v26];
          v51 = v26;
          v36 = v26 - v50;
          v37 = (v31 - (v26 - v50));
          memcpy(v37, v50, v36);
          v38 = v50;
          v39 = v52;
          v50 = v37;
          v51 = v35;
          v52 = v56;
          v55.__r_.__value_.__r.__words[2] = v38;
          v56 = v39;
          v55.__r_.__value_.__r.__words[0] = v38;
          v55.__r_.__value_.__l.__size_ = v38;
          std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&v55.__r_.__value_.__l.__data_);
        }
      }

      v55.__r_.__value_.__r.__words[0] = &v48;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v55);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      ++v16;
      v15 = v50;
    }

    while (v16 < (v51 - v50) >> 4);
  }

  v40 = v53;
  if (v53 == v54)
  {
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v41 = v40[4];
      v42 = v40[5];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = RIO_MTLX::Collection::matchesGeomString(v41, a2);
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      if (v9)
      {
        break;
      }

      v43 = v40[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v40[2];
          v45 = *v44 == v40;
          v40 = v44;
        }

        while (!v45);
      }

      v40 = v44;
      if (v44 == v54)
      {
        goto LABEL_71;
      }
    }

    v9 = 1;
  }

LABEL_71:
  v55.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v55);
  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(v54[0]);
  return v9;
}

uint64_t RIO_MTLX::Collection::validate(RIO_MTLX *a1, std::string *a2)
{
  v8 = 1;
  RIO_MTLX::UNIVERSAL_GEOM_NAME(a1);
  RIO_MTLX::Collection::matchesGeomString(a1, &RIO_MTLX::UNIVERSAL_GEOM_NAME(void)::v);
  std::string::basic_string[abi:ne200100]<0>(__p, "Cycle in collection include chain");
  RIO_MTLX::Element::validateRequire(a1, 1, &v8, a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = RIO_MTLX::Element::validate(a1, a2);
  return (v4 & v8);
}

void sub_24764EF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::GeomElement::~GeomElement(RIO_MTLX::GeomElement *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

void RIO_MTLX::Collection::~Collection(RIO_MTLX::Collection *this)
{
  RIO_MTLX::Element::~Element(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RIO_MTLX::GeomPath>,RIO_MTLX::GeomPath*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v4 -= 4;
      v5 = v4;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<RIO_MTLX::GeomPath>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(*a1);
    std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void realityio::UsdStageObserver::UsdStageObserver(void *a1, uint64_t *a2, uint64_t a3)
{
  v26[3] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = &unk_285957500;
  a1[2] = *a2;
  v7 = a1 + 2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(a1 + 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v8 = *(a3 + 24);
  if (v8)
  {
    if (v8 == a3)
    {
      a1[9] = a1 + 6;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 6);
LABEL_6:
      a1[11] = 0;
      a1[10] = a1 + 11;
      a1[12] = 0;
      a1[14] = 0;
      a1[13] = a1 + 14;
      a1[15] = 0;
      v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7);
      PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v19, v9);
      v25 = &unk_2859575D8;
      v26[0] = a1;
      v26[2] = &v25;
      UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(PseudoRoot);
      v12 = UsdPrimDefaultPredicate[1].i64[0];
      v13.i64[0] = -8193;
      v13.i64[0] = vandq_s8(*UsdPrimDefaultPredicate, v13).u64[0];
      v13.i64[1] = vorrq_s8(*UsdPrimDefaultPredicate, vdupq_n_s64(0x2000uLL)).i64[1];
      v23 = v13;
      v24 = v12;
      realityio::visitPrimHierarchy(&v19, &v25, &v23);
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::~__value_func[abi:ne200100](&v25);
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

      if (a1[9])
      {
        v18 = *v7;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v18);
        v26[0] = 0;
        v26[1] = 0;
        v25 = v26;
        realityio::UsdStageDelta::UsdStageDelta(&v19, &v18, &v25);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(&v25, v26[0]);
        v14 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v18);
        v15 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v14);
        realityio::UsdStageObserver::_updateStageDeltaWithResyncWithRootPrim(v15, &v19, v16);
        v17 = a1[9];
        if (!v17)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v17 + 48))(v17, &v19);
        realityio::UsdStageDelta::~UsdStageDelta(&v19);
      }

      pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register(v6, &v19);
      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v19, a2);
      operator new();
    }

    v8 = (*(*v8 + 16))(v8);
  }

  a1[9] = v8;
  goto LABEL_6;
}

void sub_24764F560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(v11 - 128, *(v11 - 120));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(v9, *v7);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(v8, *v10);
  std::__function::__value_func<void ()(realityio::UsdStageDelta const&)>::~__value_func[abi:ne200100](a3);
  v13 = *(v3 + 40);
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v6);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v5);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase(v4, v14);
  _Unwind_Resume(a1);
}

void realityio::UsdStageObserver::_updateStageDeltaWithResyncWithRootPrim(realityio::UsdStageObserver *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, realityio::UsdStageDelta *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  realityio::UsdPrimDelta::UsdPrimDelta(v7, this, 1, &v5);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(&v5, v6[0]);
  realityio::UsdStageDelta::setPrimDeltaForPrimPath(a2, v7, this);
  realityio::UsdPrimDelta::~UsdPrimDelta(v7);
}

void sub_24764F778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::UsdPrimDelta::~UsdPrimDelta(va);
  _Unwind_Resume(a1);
}

void realityio::UsdStageObserver::_OnUsdObjectsChanged(uint64_t *a1, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a2, uint64_t *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const(a3);
  if (!(v7 & 1 | v6))
  {
    return;
  }

  if (pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a3))
  {
    if (!a3[1])
    {
      return;
    }

    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(a3 + 1);
    v9 = *a3;
    v10 = *(v8 + 14) != 1 || v9 == 0;
    if (v10 || v9 != a1[2])
    {
      return;
    }
  }

  else if (a1[2])
  {
    return;
  }

  if (a1[9])
  {
    ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(a2);
    ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(a2);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange::iterator,0>(&v36, *ChangedInfoOnlyPaths, (ChangedInfoOnlyPaths + 8));
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange::iterator,0>(&v34, *ResyncedPaths, (ResyncedPaths + 8));
    if (a1[3])
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(&v31, v34, v35, (v35 - v34) >> 3);
      v15 = v34;
      for (i = v35; i != v15; std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](&v34, i))
      {
        i = (i - 8);
      }

      v35 = v15;
      v16 = v31;
      for (j = v32; v16 != j; v16 += 2)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v41, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v41 + 1, v16 + 1);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v18 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 3);
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v42, v18, v41);
        v19 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1 + 2);
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v47, v19, v41);
        if (convertResyncToInfoChange(&v42, &v47, &v38))
        {
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__insert_with_size[abi:ne200100]<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath*>>(&v36, v37, v38, v39, v39 - v38);
        }

        else
        {
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](&v34, v41);
        }

        if ((v50 & 7) != 0)
        {
          atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
        if (v48)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v48);
        }

        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v44);
        if (v43)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v43);
        }

        v42 = &v38;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v42);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v41);
      }

      v42 = &v31;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(a1, v34, v35, 1, v13);
    realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(a1, v36, v37, 0, v20);
    v30 = a1[2];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v30);
    v43 = 0;
    v44 = 0;
    v42 = &v43;
    realityio::UsdStageDelta::UsdStageDelta(&v31, &v30, &v42);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(&v42, v43);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v30);
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    realityio::UsdStageObserver::_updateStageDelta(a1, v34, v35, 1, &v28, &v31, a2);
    realityio::UsdStageObserver::_updateStageDelta(a1, v36, v37, 0, &v28, &v31, a2);
    v46 = a1[2];
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v46);
    v43 = 0;
    v44 = 0;
    v42 = &v43;
    realityio::UsdStageDelta::UsdStageDelta(&v47, &v46, &v42);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(&v42, v43);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v46);
    v21 = v28;
    if (v28 != v29)
    {
      do
      {
        v39 = 0;
        v40 = 0;
        v38 = &v39;
        realityio::UsdPrimDelta::UsdPrimDelta(&v42, v21 + 8, 0, &v38);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(&v38, v39);
        memset(v41, 0, sizeof(v41));
        v22 = v21[5];
        if (v22 != v21 + 6)
        {
          do
          {
            realityio::UsdPropertyDelta::UsdPropertyDelta(&v38, (v22 + 4));
            realityio::UsdPrimDelta::setPropertyDeltaForPropertyName(&v42, &v38, (v22 + 4), 0);
            realityio::UsdPropertyDelta::~UsdPropertyDelta(&v38);
            v23 = v22[1];
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = v22[2];
                v10 = *v24 == v22;
                v22 = v24;
              }

              while (!v10);
            }

            v22 = v24;
          }

          while (v24 != v21 + 6);
        }

        realityio::UsdStageDelta::setPrimDeltaForPrimPath(&v47, &v42, (v21 + 4));
        v38 = v41;
        std::vector<realityio::UsdPropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v38);
        realityio::UsdPrimDelta::~UsdPrimDelta(&v42);
        v25 = v21[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v21[2];
            v10 = *v26 == v21;
            v21 = v26;
          }

          while (!v10);
        }

        v21 = v26;
      }

      while (v26 != v29);
    }

    realityio::UsdStageDelta::updateWithStageDelta(&v31, &v47);
    realityio::UsdStageDelta::~UsdStageDelta(&v47);
    v27 = a1[9];
    if (!v27)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v27 + 48))(v27, &v31);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(&v28, v29[0]);
    realityio::UsdStageDelta::~UsdStageDelta(&v31);
    v42 = &v34;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v42);
    v42 = &v36;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v42);
  }
}

void sub_24764FC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void **a42)
{
  a42 = &a25;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a42);
  a42 = &a28;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a42);
  _Unwind_Resume(a1);
}

void realityio::UsdStageObserver::~UsdStageObserver(realityio::UsdStageObserver *this)
{
  *this = &unk_285957500;
  if (pxrInternal__aapl__pxrReserved__::TfNotice::Key::IsValid((this + 32)))
  {
    pxrInternal__aapl__pxrReserved__::TfNotice::Revoke();
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(this + 80, *(this + 11));
  std::__function::__value_func<void ()(realityio::UsdStageDelta const&)>::~__value_func[abi:ne200100](this + 48);
  v2 = *(this + 5);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 2);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase((this + 8), v3);
}

{
  realityio::UsdStageObserver::~UsdStageObserver(this);

  JUMPOUT(0x24C1A91B0);
}

CFStringRef realityio::UsdStageObserver::description@<X0>(realityio::UsdStageObserver *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  IsValid = pxrInternal__aapl__pxrReserved__::TfNotice::Key::IsValid((this + 32));
  v5 = "false";
  if (IsValid)
  {
    v5 = "true";
  }

  result = CFStringCreateWithFormat(0, 0, @"<UsdStageObserver: %p { stage: %p, observing stage: %s }>", this, this + 16, v5);
  *a2 = result;
  return result;
}

uint64_t convertResyncToInfoChange(pxrInternal__aapl__pxrReserved__::UsdObject *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  v104 = *MEMORY[0x277D85DE8];
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1) || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2))
  {
    goto LABEL_8;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAllChildrenNames(&v80, a1);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAllChildrenNames(&v83, a2);
  v6 = v80.__r_.__value_.__r.__words[0];
  v7 = v83.__r_.__value_.__r.__words[0];
  if (v80.__r_.__value_.__l.__size_ - v80.__r_.__value_.__r.__words[0] != v83.__r_.__value_.__l.__size_ - v83.__r_.__value_.__r.__words[0])
  {
LABEL_7:
    *&v76 = &v83;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v76);
    v83.__r_.__value_.__r.__words[0] = &v80;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v83);
    goto LABEL_8;
  }

  while (v6 != v80.__r_.__value_.__l.__size_)
  {
    if ((*v7 ^ *v6) > 7)
    {
      goto LABEL_7;
    }

    ++v6;
    ++v7;
  }

  *&v76 = &v83;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v76);
  v83.__r_.__value_.__r.__words[0] = &v80;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v83);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v76, a1);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v85, a2);
  v12 = *(&v76 + 1);
  v11 = v76;
  if (v76 == *(&v76 + 1))
  {
    v25 = v76;
  }

  else
  {
    do
    {
      LODWORD(v80.__r_.__value_.__l.__data_) = *v11;
      v13 = *(v11 + 8);
      v80.__r_.__value_.__l.__size_ = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v80.__r_.__value_.__r.__words[2], (v11 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v80.__r_.__value_.__r.__words[2] + 1, (v11 + 20));
      v14 = *(v11 + 24);
      v81 = v14;
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v81 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v80, &v72);
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationshipAtPath(&v83, a2, &v72);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v72);
      if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v83) & 1) == 0)
      {
        if ((v84[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v84[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v83.__r_.__value_.__r.__words[2]);
        if (v83.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v83.__r_.__value_.__l.__size_);
        }

        if ((v81 & 7) != 0)
        {
          atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80.__r_.__value_.__r.__words[2]);
        if (v80.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v80.__r_.__value_.__l.__size_);
        }

LABEL_126:
        v80.__r_.__value_.__r.__words[0] = &v85;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v80);
        v80.__r_.__value_.__r.__words[0] = &v76;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v80);
        goto LABEL_8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(&v72, &v80);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(&v95, &v83);
      if (v74 == v97)
      {
        v15 = v72;
        if (v72 == &v73)
        {
LABEL_33:
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets() && pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets())
          {
            v22 = v92;
            v23 = v89;
            if (v93 - v92 == v90 - v89)
            {
              while (v22 != v93)
              {
                if (*v22 != *v23)
                {
                  goto LABEL_41;
                }

                ++v22;
                ++v23;
              }
            }

            else
            {
LABEL_41:
              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v83, &v102);
              std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](a3, &v102);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
            }
          }

          v102 = &v89;
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v102);
          v89 = &v92;
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v89);
          v24 = 1;
        }

        else
        {
          v16 = v95;
          while ((v16[4] ^ v15[4]) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::operator==((v15 + 5), (v16 + 5)))
          {
            v17 = v15[1];
            v18 = v15;
            if (v17)
            {
              do
              {
                v15 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v15 = v18[2];
                v19 = *v15 == v18;
                v18 = v15;
              }

              while (!v19);
            }

            v20 = v16[1];
            if (v20)
            {
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v21 = v16[2];
                v19 = *v21 == v16;
                v16 = v21;
              }

              while (!v19);
            }

            v16 = v21;
            if (v15 == &v73)
            {
              goto LABEL_33;
            }
          }

          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v95, v96);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v72, v73);
      if ((v84[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v84[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v83.__r_.__value_.__r.__words[2]);
      if (v83.__r_.__value_.__l.__size_)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v83.__r_.__value_.__l.__size_);
      }

      if ((v81 & 7) != 0)
      {
        atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80.__r_.__value_.__r.__words[2]);
      if (v80.__r_.__value_.__l.__size_)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v80.__r_.__value_.__l.__size_);
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_126;
      }

      v11 += 32;
    }

    while (v11 != v12);
    v25 = *(&v76 + 1);
    v11 = v76;
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100](&v83, (v25 - v11) >> 5);
  v27 = *(&v76 + 1);
  v26 = v76;
  v28 = v83.__r_.__value_.__r.__words[0];
  if (v76 != *(&v76 + 1))
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v26, &v80);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v28, &v80);
      v29 = v28 + 4;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v29, v80.__r_.__value_.__r.__words + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
      v26 = (v26 + 32);
      v28 = v29 + 4;
    }

    while (v26 != v27);
    v28 = v83.__r_.__value_.__r.__words[0];
  }

  v30 = 126 - 2 * __clz((v83.__r_.__value_.__l.__size_ - v28) >> 3);
  if (v83.__r_.__value_.__l.__size_ == v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,false>(v28, v83.__r_.__value_.__l.__size_, v31, 1);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100](&v72, (v86 - v85) >> 5);
  v32 = v85;
  v33 = v86;
  v34 = v72;
  if (v85 != v86)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v32, &v80);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v34, &v80);
      v35 = (v34 + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v35, v80.__r_.__value_.__r.__words + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
      v32 = (v32 + 32);
      v34 = (v35 + 4);
    }

    while (v32 != v33);
    v34 = v72;
  }

  v95 = 0;
  v96 = 0;
  v102 = v34;
  v99 = v83.__r_.__value_.__r.__words[0];
  v100 = v73;
  v97 = 0;
  size = v83.__r_.__value_.__l.__size_;
  v92 = &v95;
  v93 = 0;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::insert_iterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>> &>(&v80, &v102, &v100, &v99, &size, &v92);
  v36 = v95;
  v37 = v96;
  if (v95 != v96)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v80, v36);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v80.__r_.__value_.__r.__words + 1, v36 + 1);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](a3, &v80);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
      v36 += 2;
    }

    while (v36 != v37);
  }

  v80.__r_.__value_.__r.__words[0] = &v95;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v72;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v83;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v85;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v76;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](&v80);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(&v72, a1);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(&v95, a2);
  v38 = v72;
  v39 = v73;
  if (v72 == v73)
  {
    v51 = v72;
LABEL_136:
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100](&v83, (v51 - v38) >> 5);
    v52 = v72;
    v53 = v73;
    if (v72 != v73)
    {
      v54 = v83.__r_.__value_.__r.__words[0];
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v52, &v80);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v54, &v80);
        v55 = v54 + 4;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v55, v80.__r_.__value_.__r.__words + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
        v52 = (v52 + 32);
        v54 = v55 + 4;
      }

      while (v52 != v53);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100](&v76, (v96 - v95) >> 5);
    v56 = v95;
    v57 = v96;
    v58 = v76;
    if (v95 != v96)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v56, &v80);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v58, &v80);
        v59 = (v58 + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v59, v80.__r_.__value_.__r.__words + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
        v56 = (v56 + 32);
        v58 = (v59 + 4);
      }

      while (v56 != v57);
      v58 = v76;
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    v102 = v58;
    v99 = v83.__r_.__value_.__r.__words[0];
    v100 = *(&v76 + 1);
    size = v83.__r_.__value_.__l.__size_;
    v92 = &v85;
    v93 = 0;
    std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::insert_iterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>> &>(&v80, &v102, &v100, &v99, &size, &v92);
    v60 = v85;
    for (i = v86; v60 != i; v60 = (v60 + 8))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v80, v60);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v80.__r_.__value_.__r.__words + 1, v60 + 1);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](a3, &v80);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
    }

    v80.__r_.__value_.__r.__words[0] = &v85;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v80);
    v80.__r_.__value_.__r.__words[0] = &v76;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v80);
    v80.__r_.__value_.__r.__words[0] = &v83;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v80);
    v80.__r_.__value_.__r.__words[0] = &v95;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v80);
    v80.__r_.__value_.__r.__words[0] = &v72;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v80);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(&v80, a1);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(&v83, a2);
    if (v80.__r_.__value_.__r.__words[2] == v83.__r_.__value_.__r.__words[2])
    {
      v62 = v80.__r_.__value_.__r.__words[0];
      if (v80.__r_.__value_.__l.__data_ == &v80.__r_.__value_.__r.__words[1])
      {
LABEL_160:
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v83, v83.__r_.__value_.__l.__size_);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v80, v80.__r_.__value_.__l.__size_);
        UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(v68);
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetFilteredChildren(&v80, a1, UsdPrimAllPrimsPredicate);
        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(&v83, &v80);
        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(&v76, &v82);
        while (*&v83.__r_.__value_.__l.__data_ != v76 || (pxrInternal__aapl__pxrReserved__::operator==(&v83.__r_.__value_.__r.__words[2], &v77) & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v83, &v85);
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v85);
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetChild(&v72, a2, Name);
          v71 = convertResyncToInfoChange(&v85, &v72, a3);
          if ((v75 & 7) != 0)
          {
            atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v74);
          if (v73)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v73);
          }

          if ((v88 & 7) != 0)
          {
            atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
          if (v86)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v86);
          }

          if ((v71 & 1) == 0)
          {
            v8 = 0;
            goto LABEL_175;
          }

          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v83);
        }

        v8 = 1;
LABEL_175:
        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(&v76);
        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(&v83);
        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::~UsdPrimSiblingRange(&v80);
        goto LABEL_9;
      }

      v63 = v83.__r_.__value_.__r.__words[0];
      while ((v63[4] ^ v62[1].__r_.__value_.__l.__size_) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::operator==(&v62[1].__r_.__value_.__r.__words[2], (v63 + 5)))
      {
        v64 = v62->__r_.__value_.__l.__size_;
        v65 = v62;
        if (v64)
        {
          do
          {
            v62 = v64;
            v64 = v64->__r_.__value_.__r.__words[0];
          }

          while (v64);
        }

        else
        {
          do
          {
            v62 = v65->__r_.__value_.__r.__words[2];
            v19 = v62->__r_.__value_.__r.__words[0] == v65;
            v65 = v62;
          }

          while (!v19);
        }

        v66 = v63[1];
        if (v66)
        {
          do
          {
            v67 = v66;
            v66 = *v66;
          }

          while (v66);
        }

        else
        {
          do
          {
            v67 = v63[2];
            v19 = *v67 == v63;
            v63 = v67;
          }

          while (!v19);
        }

        v63 = v67;
        if (v62 == &v80.__r_.__value_.__r.__words[1])
        {
          goto LABEL_160;
        }
      }
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v83, v83.__r_.__value_.__l.__size_);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v80, v80.__r_.__value_.__l.__size_);
    goto LABEL_8;
  }

  while (1)
  {
    LODWORD(v76) = *v38;
    v40 = *(v38 + 1);
    *(&v76 + 1) = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(v40 + 6, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v77, v38 + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v78, v38 + 5);
    v41 = *(v38 + 3);
    v79 = v41;
    if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v79 &= 0xFFFFFFFFFFFFFFF8;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v76, &v80);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributeAtPath(&v85, a2, &v80);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v85) & 1) == 0)
    {
      break;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(&v92, &v76);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetAllMetadata(&v89, &v85);
    if (v94 != v91)
    {
      goto LABEL_101;
    }

    v42 = v92;
    if (v92 != &v93)
    {
      v43 = v89;
      while ((v43[4] ^ *(v42 + 32)) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::operator==(v42 + 40, (v43 + 5)))
      {
        v44 = *(v42 + 8);
        v45 = v42;
        if (v44)
        {
          do
          {
            v42 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v42 = *(v45 + 16);
            v19 = *v42 == v45;
            v45 = v42;
          }

          while (!v19);
        }

        v46 = v43[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v43[2];
            v19 = *v47 == v43;
            v43 = v47;
          }

          while (!v19);
        }

        v43 = v47;
        if (v42 == &v93)
        {
          goto LABEL_89;
        }
      }

LABEL_101:
      v50 = 0;
      goto LABEL_104;
    }

LABEL_89:
    v103 = 0;
    v101 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get() && pxrInternal__aapl__pxrReserved__::UsdAttribute::Get() && (pxrInternal__aapl__pxrReserved__::VtValue::operator==(&v102, &v100) & 1) == 0)
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&v102) && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(&v100))
      {
        if ((v103 & 4) != 0)
        {
          v48 = (*((v103 & 0xFFFFFFFFFFFFFFF8) + 168))(&v102);
        }

        else
        {
          v48 = v102;
        }

        pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v80, v48);
        if ((v101 & 4) != 0)
        {
          v49 = (*((v101 & 0xFFFFFFFFFFFFFFF8) + 168))(&v100);
        }

        else
        {
          v49 = v100;
        }

        pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v83, v49);
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v81, v84))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v85, &v99);
          std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](a3, &v99);
          pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v99);
        }

        pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&v83.__r_.__value_.__l.__data_);
        pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&v80.__r_.__value_.__l.__data_);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v85, &v80);
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back[abi:ne200100](a3, &v80);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
      }
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v100);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v102);
    v50 = 1;
LABEL_104:
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v89, v90);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v92, v93);
    if ((v88 & 7) != 0)
    {
      atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
    if (v86)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v86);
    }

    if ((v79 & 7) != 0)
    {
      atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v77);
    if (*(&v76 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v76 + 1));
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_135;
    }

    v38 += 32;
    if (v38 == v39)
    {
      v38 = v72;
      v51 = v73;
      goto LABEL_136;
    }
  }

  if ((v88 & 7) != 0)
  {
    atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
  if (v86)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v86);
  }

  if ((v79 & 7) != 0)
  {
    atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v77);
  if (*(&v76 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v76 + 1));
  }

LABEL_135:
  v80.__r_.__value_.__r.__words[0] = &v95;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v80);
  v80.__r_.__value_.__r.__words[0] = &v72;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v80);
LABEL_8:
  v8 = 0;
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_247650E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v34 - 136));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a28);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a18);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v34 - 128));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v34 - 112));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v34 - 216, *(v34 - 208));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v34 - 192, *(v34 - 184));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a34);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  a28 = (v34 - 168);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t *realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(uint64_t *result, pxrInternal__aapl__pxrReserved__::SdfPath *this, pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4, int8x16_t a5)
{
  v26[4] = *MEMORY[0x277D85DE8];
  if (this != a3)
  {
    v7 = this;
    v8 = result;
    a5.i64[0] = -8193;
    v17 = a5;
    v16 = vdupq_n_s64(0x2000uLL);
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v25, v7);
      v9 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v8 + 2);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v21, v9, &v25);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v21))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(v7))
        {
          NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v7);
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperty(&v18, &v21, NameToken);
          realityio::UsdStageObserver::_clearPreviousPropertyAndPrimMappings(v8, &v18);
          realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromPrimAndProperty(v8, &v21, &v18);
          if ((v20 & 7) != 0)
          {
            atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
          if (*(&v18 + 1))
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v18 + 1));
          }
        }

        else if (a4)
        {
          IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v7);
          if (IsPrimPath)
          {
            v26[0] = &unk_285957658;
            v26[1] = v8;
            v26[3] = v26;
            UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsPrimPath);
            v13 = UsdPrimDefaultPredicate[1].i64[0];
            *&v14 = vandq_s8(*UsdPrimDefaultPredicate, v17).u64[0];
            *(&v14 + 1) = vorrq_s8(*UsdPrimDefaultPredicate, v16).i64[1];
            v18 = v14;
            v19 = v13;
            realityio::visitPrimHierarchy(&v21, v26, &v18);
            std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::~__value_func[abi:ne200100](v26);
          }
        }
      }

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

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
      v7 = (v7 + 8);
    }

    while (v7 != a3);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247651404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::~__value_func[abi:ne200100](va2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::UsdStageObserver::_updateStageDelta(uint64_t result, pxrInternal__aapl__pxrReserved__::SdfPath *this, pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4, uint64_t a5, realityio::UsdStageDelta *a6, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *a7)
{
  if (this != a3)
  {
    v8 = result;
    v9 = result + 112;
    v10 = a5 + 8;
    while (1)
    {
      v48 = this;
      AbsoluteRootOrPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(v73, this);
      v46 = *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(AbsoluteRootOrPrimPath);
      v47 = v73[0];
      v12 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((v8 + 16));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v69, v12, v73);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v69) && pxrInternal__aapl__pxrReserved__::UsdPrim::IsInPrototype(&v69))
      {
        v13 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((v8 + 16));
        pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v50, v13, v73);
        while (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v50) && pxrInternal__aapl__pxrReserved__::UsdPrim::IsInPrototype(v50) && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPrototype(v50, v14) & 1) == 0)
        {
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(v50, &v55);
          *v50 = v55;
          if (*&v50[8])
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v50[8]);
          }

          *&v50[8] = v56;
          v56 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v50[16], &v57);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v50[20], &v58);
          if ((v50[24] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&v50[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *&v50[24] = v59;
          v59 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
          if (v56)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v56);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdPrim::GetInstances(&v67, v50);
        v15 = v68;
        if (v67 != v68)
        {
          v16 = (v67 + 16);
          do
          {
            v17 = v16 - 2;
            LODWORD(v62) = *(v16 - 4);
            v18 = *(v16 - 1);
            v63 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 48), 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v64, v16);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v65, v16 + 1);
            v19 = v16[1];
            v66 = v19;
            if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v66 &= 0xFFFFFFFFFFFFFFF8;
            }

            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v62, &v61);
            v54[0] = 0;
            v54[1] = 0;
            v53 = v54;
            realityio::UsdPrimDelta::UsdPrimDelta(&v55, &v61, 1, &v53);
            std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(&v53, v54[0]);
            realityio::UsdStageDelta::setPrimDeltaForPrimPath(a6, &v55, &v61);
            realityio::UsdPrimDelta::~UsdPrimDelta(&v55);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v61);
            if ((v66 & 7) != 0)
            {
              atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v64);
            if (v63)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63);
            }

            v16 += 4;
          }

          while (v17 + 4 != v15);
        }

        v55 = &v67;
        std::vector<pxrInternal__aapl__pxrReserved__::UsdPrim>::__destroy_vector::operator()[abi:ne200100](&v55);
        if ((v50[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v50[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50[16]);
        if (*&v50[8])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v50[8]);
        }
      }

      *&v50[8] = 0uLL;
      *v50 = &v50[8];
      realityio::UsdPrimDelta::UsdPrimDelta(&v55, v73, 0, v50);
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(v50, *&v50[8]);
      if (v47 == v46)
      {
        break;
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v48))
      {
        pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedFields(v50, a7, v73);
        v23 = *&v50[8];
        for (i = *v50; i != v23; ++i)
        {
          std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v60, i);
        }

        goto LABEL_39;
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath(v48))
      {
        goto LABEL_46;
      }

      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v48);
      v26 = NameToken;
      if ((*NameToken & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*NameToken & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(NameToken);
      }

      std::string::basic_string(v50, EmptyString, 0, 3uLL, &v62);
      if ((v50[23] & 0x80000000) != 0)
      {
        if (*&v50[8] != 3)
        {
          operator delete(*v50);
LABEL_89:
          realityio::UsdPropertyDelta::UsdPropertyDelta(v50, v26);
          pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedFields(&v62, a7, v73);
          v39 = v62;
          v40 = v63;
          while (v39 != v40)
          {
            MEMORY[0x24C1A5DE0](&v67, "default");
            v41 = *v39;
            v42 = v67;
            if ((v67 & 7) != 0)
            {
              atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v42 ^ v41) >= 8)
            {
              std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v50[24], v39);
            }

            ++v39;
          }

          realityio::UsdPrimDelta::setPropertyDeltaForPropertyName(&v55, v50, v26, v52 == 0);
          v67 = &v62;
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v67);
          realityio::UsdPropertyDelta::~UsdPropertyDelta(v50);
LABEL_40:
          if (v47 == v46)
          {
            if (!a4)
            {
LABEL_48:
              realityio::UsdStageDelta::setPrimDeltaForPrimPath(a6, &v55, v73);
              v51 = 0u;
              memset(v50, 0, sizeof(v50));
              std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back(v50, v73);
              while (v51.i64[1])
              {
                v28 = (*(*&v50[8] + ((v51.i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v51.i16[0] & 0x1FF));
                std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](v50, v28);
                v51 = vaddq_s64(v51, xmmword_2477680B0);
                if (v51.i64[0] >= 0x400uLL)
                {
                  operator delete(**&v50[8]);
                  *&v50[8] += 8;
                  v51.i64[0] -= 512;
                }

                v29 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v8 + 104, v28);
                if (v9 != v29)
                {
                  v30 = *(v29 + 40);
                  v31 = (v29 + 48);
                  if (v30 != (v29 + 48))
                  {
                    do
                    {
                      v32 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v30 + 28));
                      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v67, (v30 + 28));
                      if (v10 == std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a5, &v67))
                      {
                        std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back(v50, &v67);
                      }

                      v62 = &v67;
                      v33 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a5, &v67);
                      std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(v33 + 40, v32);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v67);
                      v34 = v30[1];
                      if (v34)
                      {
                        do
                        {
                          v35 = v34;
                          v34 = *v34;
                        }

                        while (v34);
                      }

                      else
                      {
                        do
                        {
                          v35 = v30[2];
                          v36 = *v35 == v30;
                          v30 = v35;
                        }

                        while (!v36);
                      }

                      v30 = v35;
                    }

                    while (v35 != v31);
                  }
                }
              }

              std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::~deque[abi:ne200100](v50);
              goto LABEL_64;
            }
          }

          else
          {
LABEL_46:
            if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(v48) & a4 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          realityio::UsdStageObserver::_updateStageDeltaWithResyncWithRootPrim(v73, a6, v24);
          goto LABEL_48;
        }

        v38 = **v50 != 26997 || *(*v50 + 2) != 58;
        operator delete(*v50);
        if (v38)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v50[23] != 3)
        {
          goto LABEL_89;
        }

        v36 = *v50 == 26997 && v50[2] == 58;
        if (!v36)
        {
          goto LABEL_89;
        }
      }

LABEL_64:
      realityio::UsdPrimDelta::~UsdPrimDelta(&v55);
      if ((v72 & 7) != 0)
      {
        atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v71);
      if (v70)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v70);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v73);
      this = (v48 + 8);
      if ((v48 + 8) == a3)
      {
        return result;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedFields(v50, a7, v73);
    v21 = *&v50[8];
    for (j = *v50; j != v21; ++j)
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(a6 + 6, j);
    }

LABEL_39:
    v62 = v50;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v62);
    goto LABEL_40;
  }

  return result;
}

void sub_247651BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  realityio::UsdPropertyDelta::~UsdPropertyDelta(&a21);
  realityio::UsdPrimDelta::~UsdPrimDelta(&a33);
  v35 = *(v33 - 104);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v33 - 112);
  v36 = *(v33 - 120);
  if (v36)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v36);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v33 - 96);
  _Unwind_Resume(a1);
}

_DWORD *std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::push_back(void *a1, _DWORD *a2)
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
    std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::__add_back_capacity(a1);
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

  v9 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9 + 1, a2 + 1);
  ++a1[5];
  return result;
}

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
    std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::__add_back_capacity(a1);
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

  v9 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9 + 1, a2 + 1);
  ++a1[5];
  return result;
}

uint64_t realityio::UsdStageObserver::_clearPreviousPropertyAndPrimMappings(realityio::UsdStageObserver *this, const pxrInternal__aapl__pxrReserved__::UsdProperty *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v17);
  v18 = &v17;
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(this + 80, &v17);
  v4 = *(v3 + 40);
  v5 = (v3 + 48);
  if (v4 != (v3 + 48))
  {
    do
    {
      v18 = (v4 + 28);
      v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(this + 104, (v4 + 28));
      v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>((v6 + 5), &v17);
      v8 = v7;
      if (v6 + 6 != v7)
      {
        v9 = *(v7 + 8);
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
          v11 = v7;
          do
          {
            v10 = v11[2];
            v12 = *v10 == v11;
            v11 = v10;
          }

          while (!v12);
        }

        if (v6[5] == v7)
        {
          v6[5] = v10;
        }

        v13 = v6[6];
        --v6[7];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v13, v8);
        std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>(v8 + 28);
        operator delete(v8);
        if (!v6[7])
        {
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 13, (v4 + 28));
        }
      }

      v14 = v4[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v4[2];
          v12 = *v15 == v4;
          v4 = v15;
        }

        while (!v12);
      }

      v4 = v15;
    }

    while (v15 != v5);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 10, &v17);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
}

void realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromPrimAndProperty(realityio::UsdStageObserver *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::UsdProperty *a3)
{
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v31, a2, Name);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v31))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    v37 = &v28;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v37);
  }

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
  if (v32)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v31, a2, Name);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v31) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections(&v31))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
    v7 = v28;
    for (i = v29; v7 != i; v7 = (v7 + 8))
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v27, v7);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v35, &v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
    }

    v37 = &v28;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v37);
  }

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
  if (v32)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a3, &v28);
  v9 = v35;
  if (v35 != v36)
  {
    do
    {
      v31 = (v9 + 28);
      v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(this + 104, (v9 + 28));
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v10 + 40, &v28);
      v11 = v9[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      v9 = v12;
    }

    while (v12 != v36);
  }

  v31 = &v28;
  v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(this + 80, &v28);
  v15 = v14;
  v16 = (v14 + 5);
  if (v14 + 5 != &v35)
  {
    v17 = v35;
    if (v14[7])
    {
      v19 = (v14 + 6);
      v18 = v14[6];
      v20 = v14[5];
      v14[5] = v14 + 6;
      *(v18 + 16) = 0;
      v14[6] = 0;
      v14[7] = 0;
      if (*(v20 + 8))
      {
        v21 = *(v20 + 8);
      }

      else
      {
        v21 = v20;
      }

      v31 = (v14 + 5);
      v32 = v21;
      v33 = v21;
      if (!v21 || (v32 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v21), v17 == v36))
      {
        v26 = v17;
      }

      else
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v21 + 28, v17 + 7);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v21 + 4), v17 + 8);
          v22 = *v19;
          v23 = (v15 + 6);
          v24 = (v15 + 6);
          if (*v19)
          {
            do
            {
              while (1)
              {
                v23 = v22;
                if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v21 + 28), (v22 + 28)))
                {
                  break;
                }

                v22 = *v23;
                v24 = v23;
                if (!*v23)
                {
                  goto LABEL_36;
                }
              }

              v22 = v23[1];
            }

            while (v22);
            v24 = v23 + 1;
          }

LABEL_36:
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(v16, v23, v24, v21);
          v21 = v32;
          v33 = v32;
          if (v32)
          {
            v32 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v32);
          }

          v25 = v17[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v17[2];
              v13 = *v26 == v17;
              v17 = v26;
            }

            while (!v13);
          }

          if (!v21)
          {
            break;
          }

          v17 = v26;
        }

        while (v26 != v36);
      }

      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v31);
      v17 = v26;
    }

    if (v17 != v36)
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_node<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v35, v36[0]);
}

void sub_247652424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18)
{
  *(v18 - 72) = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v18 - 72));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdProperty::~UsdProperty(pxrInternal__aapl__pxrReserved__::UsdProperty *this)
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

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::GetFilteredChildren(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v6 & 0x2000) != 0 || (v5 & 0x2000) == 0))
  {
    v6 |= 0x2000uLL;
    v5 &= ~0x2000uLL;
  }

  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v7;
  return pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a2, v9, a1);
}

pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this, const pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *a2)
{
  *this = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 2, a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 3, a2 + 3);
  v4 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 1) = v4;
  return this;
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::PathRange::iterator,0>(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
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

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vallocate[abi:ne200100](result, v4);
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(realityio::UsdStageDelta const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,void,0>(uint64_t a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

__n128 pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::UsdStageObserver::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::_DelivererWithSender(uint64_t a1, void *a2, __n128 *a3, void *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *a1 = &unk_285957560;
  v4 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = a4[1];
  *(a1 + 56) = *a4;
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  result = *a3;
  *(a1 + 72) = *a3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::UsdStageObserver::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::~_DelivererWithSender(pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase *this)
{
  *this = &unk_285957560;
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(this);
}

{
  *this = &unk_285957560;
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::UsdStageObserver::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::_SendToListenerImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a1[6];
  v8 = a1 + 6;
  if (!v9)
  {
    return 0;
  }

  v13 = v8 - 1;
  v14 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v8);
  v15 = *v13;
  v16 = *(v14 + 14) != 1 || v15 == 0;
  if (v16 || a1[8] && *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(a1 + 8) + 14) != 1)
  {
    return 0;
  }

  if (*a7 != a7[1])
  {
    (*(*a1 + 40))(a1);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::UsdStageObserver>::operator->(v13);
    pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_BeginDelivery();
  }

  if (a4)
  {
    v17 = a4 - 16;
  }

  else
  {
    v17 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v23, v17);
  v18 = a1[9];
  v19 = a1[10];
  v20 = (v15 + (v19 >> 1));
  if (v19)
  {
    v18 = *(*v20 + v18);
  }

  v18(v20, a2, &v23);
  v22 = v24;
  if (v24 && atomic_fetch_add_explicit((v24 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v22 + 8))(v22);
  }

  if (*a7 != a7[1])
  {
    pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_EndDelivery();
  }

  return 1;
}

void sub_247652C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::UsdStageObserver::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType(uint64_t a1, const std::type_info *a2)
{
  v2 = MEMORY[0x277D86688];
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D86688], a2);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v14);
  if (v14[0] == v3)
  {
    v14[0] = "tf/notice.h";
    v14[1] = "GetNoticeType";
    v14[2] = 614;
    v14[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (realityio::UsdStageObserver::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (realityio::UsdStageObserver::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>]";
    v15 = 0;
    v16 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(&v10, (*(v2 + 8) & 0x7FFFFFFFFFFFFFFFLL), v4);
    v5 = std::string::insert(&v10, 0, "notice type ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v11, " undefined in the TfType system");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return v3;
}

void sub_247652D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::UsdStageObserver::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::Delivers(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA();
  if (result)
  {
    v8 = a1[8];
    v7 = a1 + 8;
    v6 = v8;
    if (v8)
    {
      v6 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v7) + 14) ^ 1;
    }

    result = 0;
    if (a3)
    {
      if ((v6 & 1) == 0)
      {
        return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7 - 1) + 16 == a3;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::UsdStageObserver>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::UsdStageObserver::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetSenderWeakBase(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const((a1 + 56));
  if (v3 & 1 | v2)
  {
    return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 56)) + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::UsdStageObserver>::operator->(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || ((v4 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14), result = *a1, v4 == 1) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    v7 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v7, 0x2F);
    return pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,false>(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v8;
          v9 = (a2 - v8) >> 3;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(v7, (v7 + 8), a2 - 1);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(v7, (v7 + 8), (v7 + 16), a2 - 1);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(v7, (v7 + 8), (v7 + 16), (v7 + 24), a2 - 1);
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            if (v9 == 2)
            {
              result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2 - 1, v7);
              if (result)
              {
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();

                return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            if (a4)
            {
              if (v7 != a2)
              {
                v22 = (v7 + 8);
                if ((v7 + 8) != a2)
                {
                  v23 = 0;
                  v24 = v7;
                  do
                  {
                    v25 = v22;
                    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v22, v24);
                    if (result)
                    {
                      LODWORD(v57) = *v25;
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
                      HIDWORD(v57) = v24[3];
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
                      v26 = v23;
                      while (1)
                      {
                        v27 = v7 + v26;
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v7 + v26 + 8, (v7 + v26));
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v27 + 12, (v27 + 4));
                        if (!v26)
                        {
                          break;
                        }

                        v26 -= 8;
                        if ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, (v27 - 8)) & 1) == 0)
                        {
                          v28 = v7 + v26 + 8;
                          goto LABEL_80;
                        }
                      }

                      v28 = v7;
LABEL_80:
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v28, &v57);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v27 + 4, &v57 + 1);
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
                    }

                    v22 = v25 + 2;
                    v23 += 8;
                    v24 = v25;
                  }

                  while (v25 + 2 != a2);
                }
              }
            }

            else if (v7 != a2)
            {
              v50 = (v7 + 8);
              if ((v7 + 8) != a2)
              {
                v51 = (v7 + 12);
                do
                {
                  v52 = v50;
                  result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v50, v7);
                  if (result)
                  {
                    LODWORD(v57) = *v52;
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
                    HIDWORD(v57) = *(v7 + 12);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
                    v53 = v51;
                    do
                    {
                      v54 = v53;
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v53 - 1), v53 - 3);
                      v53 -= 2;
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v54, v53);
                    }

                    while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, (v54 - 20)) & 1) != 0);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v53 - 1), &v57);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v53, &v57 + 1);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
                  }

                  v50 = v52 + 2;
                  v51 += 2;
                  v7 = v52;
                }

                while (v52 + 2 != a2);
              }
            }

            return result;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v29 = v10 >> 1;
              v30 = v10 >> 1;
              do
              {
                v31 = v30;
                if (v29 >= v30)
                {
                  v32 = (2 * v30) | 1;
                  v33 = v7 + 8 * v32;
                  if (2 * v30 + 2 < v9 && pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v7 + 8 * v32), (v33 + 8)))
                  {
                    v33 += 8;
                    v32 = 2 * v31 + 2;
                  }

                  v34 = v7 + 8 * v31;
                  result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v33, v34);
                  if ((result & 1) == 0)
                  {
                    LODWORD(v57) = *v34;
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
                    HIDWORD(v57) = *(v34 + 4);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
                    do
                    {
                      v35 = v33;
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v34, v33);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v34 + 4, (v33 + 4));
                      if (v29 < v32)
                      {
                        break;
                      }

                      v36 = (2 * v32) | 1;
                      v33 = v7 + 8 * v36;
                      v32 = 2 * v32 + 2;
                      if (v32 >= v9)
                      {
                        v32 = v36;
                      }

                      else if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v7 + 8 * v36), (v33 + 8)))
                      {
                        v33 += 8;
                      }

                      else
                      {
                        v32 = v36;
                      }

                      v34 = v35;
                    }

                    while (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v33, &v57));
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v35, &v57);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v35 + 4, &v57 + 1);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
                  }
                }

                v30 = v31 - 1;
              }

              while (v31);
              do
              {
                if (v9 >= 2)
                {
                  v55 = *v7;
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
                  v56 = *(v7 + 4);
                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
                  v37 = 0;
                  v38 = v7;
                  do
                  {
                    v39 = v38 + 8 * v37;
                    v40 = (v39 + 8);
                    v41 = (2 * v37) | 1;
                    v42 = 2 * v37 + 2;
                    if (v42 < v9)
                    {
                      v43 = (v39 + 16);
                      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v39 + 8), (v39 + 16)))
                      {
                        v40 = v43;
                        v41 = v42;
                      }
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v38, v40);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v38 + 4, v40 + 1);
                    v38 = v40;
                    v37 = v41;
                  }

                  while (v41 <= ((v9 - 2) >> 1));
                  if (v40 == a2 - 2)
                  {
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v40, &v55);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v40 + 1), &v56);
                  }

                  else
                  {
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v40, a2 - 2);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v40 + 1), a2 - 1);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a2 - 2), &v55);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a2 - 1), &v56);
                    v44 = (v40 - v7 + 8) >> 3;
                    v45 = v44 < 2;
                    v46 = v44 - 2;
                    if (!v45)
                    {
                      v47 = v46 >> 1;
                      v48 = (v7 + 8 * (v46 >> 1));
                      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v48, v40))
                      {
                        LODWORD(v57) = *v40;
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
                        HIDWORD(v57) = v40[1];
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
                        do
                        {
                          v49 = v48;
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v40, v48);
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v40 + 1), v48 + 1);
                          if (!v47)
                          {
                            break;
                          }

                          v47 = (v47 - 1) >> 1;
                          v48 = (v7 + 8 * v47);
                          v40 = v49;
                        }

                        while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v48, &v57) & 1) != 0);
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v49, &v57);
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v49 + 4, &v57 + 1);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
                      }
                    }
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
                }

                a2 -= 2;
                v45 = v9-- > 2;
              }

              while (v45);
            }

            return result;
          }

          v11 = v9 >> 1;
          v12 = v7 + 8 * (v9 >> 1);
          if (v9 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>((v7 + 8 * (v9 >> 1)), v7, a2 - 1);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(v7, (v7 + 8 * (v9 >> 1)), a2 - 1);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>((v7 + 8), (v12 - 8), a2 - 2);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>((v7 + 16), (v7 + 8 + 8 * v11), a2 - 3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>((v12 - 8), (v7 + 8 * (v9 >> 1)), (v7 + 8 + 8 * v11));
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
          }

          --a3;
          if (a4 & 1) != 0 || (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v7 - 8), v7))
          {
            break;
          }

          LODWORD(v57) = *v7;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
          HIDWORD(v57) = *(v7 + 4);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
          if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, a2 - 1))
          {
            v8 = v7;
            do
            {
              v8 += 2;
            }

            while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, v8) & 1) == 0);
          }

          else
          {
            v19 = (v7 + 8);
            do
            {
              v8 = v19;
              if (v19 >= a2)
              {
                break;
              }

              v20 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, v19);
              v19 = v8 + 2;
            }

            while (!v20);
          }

          v21 = a2;
          if (v8 < a2)
          {
            v21 = a2;
            do
            {
              v21 -= 2;
            }

            while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, v21) & 1) != 0);
          }

          while (v8 < v21)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
            do
            {
              v8 += 2;
            }

            while (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, v8));
            do
            {
              v21 -= 2;
            }

            while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v57, v21) & 1) != 0);
          }

          if (v8 - 2 != v7)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v7, v8 - 2);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v7 + 4, v8 - 1);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v8 - 2), &v57);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v8 - 1), &v57 + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
          a4 = 0;
        }

        LODWORD(v57) = *v7;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
        HIDWORD(v57) = *(v7 + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
        v13 = 0;
        do
        {
          v14 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v7 + v13 + 8), &v57);
          v13 += 8;
        }

        while ((v14 & 1) != 0);
        v15 = v7 + v13;
        v16 = a2;
        if (v13 == 8)
        {
          v16 = a2;
          do
          {
            if (v15 >= v16)
            {
              break;
            }

            v16 -= 2;
          }

          while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v16, &v57) & 1) == 0);
        }

        else
        {
          do
          {
            v16 -= 2;
          }

          while (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v16, &v57));
        }

        v8 = (v7 + v13);
        if (v15 < v16)
        {
          v17 = v16;
          do
          {
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
            do
            {
              v8 += 2;
            }

            while ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v8, &v57) & 1) != 0);
            do
            {
              v17 -= 2;
            }

            while (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v17, &v57));
          }

          while (v8 < v17);
        }

        if (v8 - 2 != v7)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v7, v8 - 2);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v7 + 4, v8 - 1);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v8 - 2), &v57);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v8 - 1), &v57 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v57);
        if (v15 >= v16)
        {
          break;
        }

LABEL_36:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v18 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *>(v7, v8 - 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *>(v8, a2);
      if (result)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_36;
      }
    }

    a2 = v8 - 2;
    if (!v18)
    {
      continue;
    }

    return result;
  }
}

void sub_247653A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(void *a1, void *a2, void *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, a1);
  result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, a2);
  if (v6)
  {
    if (!result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
      result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, a2);
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, a1);
    if (!result)
    {
      return result;
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();

  return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(void *a1, void *a2, void *a3, void *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(a1, a2, a3);
  result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a4, a3);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, a2);
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
      result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, a1);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();

        return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(a1, a2, a3, a4);
  result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a5, a4);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a4, a3);
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
      result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a3, a2);
      if (result)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
        result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, a1);
        if (result)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();

          return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *>(void *a1, void *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2 - 1, a1))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::swap();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::swap();
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v5 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::SdfPath *,0>(a1, a1 + 1, a1 + 2);
  v6 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6, v5))
    {
      LODWORD(v13) = *v6;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
      HIDWORD(v13) = *(v6 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
      v9 = v7;
      while (1)
      {
        v10 = (a1 + v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + v9 + 24, (a1 + v9 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v10 + 7), v10 + 5);
        if (v9 == -16)
        {
          break;
        }

        v9 -= 8;
        if ((pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v13, v10 + 1) & 1) == 0)
        {
          v11 = a1 + v9 + 24;
          goto LABEL_19;
        }
      }

      v11 = a1;
LABEL_19:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v11, &v13);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v10 + 5), &v13 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      ++v8;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
      if (v8 == 8)
      {
        return v6 + 1 == a2;
      }
    }

    v5 = v6;
    v7 += 8;
    if (++v6 == a2)
    {
      return 1;
    }
  }
}

void sub_247653F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath *> &,std::insert_iterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>> &>(uint64_t result, char **a2, char **a3, char **a4, char **a5, uint64_t a6)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_13:
    v18 = *a6;
    v17 = *(a6 + 8);
    v9 = v8;
  }

  else
  {
    v13 = *a4;
    if (*a4 != *a5)
    {
      while (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v8, v13))
      {
        result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(*a4, *a2);
        v16 = a4;
        if ((result & 1) == 0)
        {
          result = *a2;
          v15 = a2;
          v16 = a4;
          goto LABEL_7;
        }

LABEL_8:
        *v16 += 8;
        v8 = *a2;
        v9 = *a3;
        if (*a2 == *a3)
        {
          goto LABEL_13;
        }

        v13 = *a4;
        if (*a4 == *a5)
        {
          goto LABEL_10;
        }
      }

      result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::insert(*a6, *(a6 + 8), *a2);
      v15 = (a6 + 8);
      v16 = a2;
LABEL_7:
      *v15 = (result + 8);
      goto LABEL_8;
    }

LABEL_10:
    v18 = *a6;
    v17 = *(a6 + 8);
    while (v8 != v9)
    {
      result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::insert(v18, v17, v8);
      v17 = result + 8;
      v8 += 8;
    }
  }

  *v7 = v9;
  v7[1] = v18;
  v7[2] = v17;
  return result;
}

char *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::insert(char **a1, uint64_t a2, char *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v11 = *a1;
    v12 = ((v7 - *a1) >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v6 - v11;
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

    v16 = v13 >> 3;
    v25 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v15);
    }

    v17 = (8 * v16);
    v21 = 0;
    v22 = 8 * v16;
    v23 = 8 * v16;
    v24 = 0;
    if (!v16)
    {
      if (v13 < 1)
      {
        if (v11 == v4)
        {
          v18 = 1;
        }

        else
        {
          v18 = v13 >> 2;
        }

        v26 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v18);
      }

      v17 = (v17 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v22 = v17;
      v23 = v17;
    }

    v19 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v17, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v19 + 1, a3 + 1);
    v23 += 8;
    v4 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__swap_out_circular_buffer(a1, &v21, v4);
    std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(&v21);
  }

  else if (a2 == v7)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1[1], a3);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v7 + 1, a3 + 1);
    a1[1] = v7 + 8;
  }

  else
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__move_range(a1, a2, a1[1], a2 + 8);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 8;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v4, &a3[v9]);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v4 + 4), v10 + 1);
  }

  return v4;
}

void sub_247654318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8, v10);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8 + 1, v10 + 1);
      v10 += 2;
      v8 += 2;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *>(&v12, a2, v7, v6);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a4 - 8, (v7 - 8));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a4 - 4, (v7 - 4));
      a4 -= 8;
      v7 -= 8;
    }

    while (v7 != a2);
  }

  return a3;
}

char *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__insert_with_size[abi:ne200100]<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath*>>(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 3;
      if (v18 >= a5)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__move_range(a1, a2, a1[1], a2 + 8 * a5);
        v19 = &a3[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__move_range(a1, v5, v10, &v5[8 * a5]);
        v19 = (a3 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *,pxrInternal__aapl__pxrReserved__::SdfPath *>(v21, a3, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
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

    v16 = v13 >> 3;
    v21[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v15);
    }

    v21[0] = 0;
    v21[1] = (8 * v16);
    v21[2] = (8 * v16);
    v21[3] = 0;
    std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end_with_size<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath*>>(v21, a3, a5);
    v5 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__swap_out_circular_buffer(a1, v21, v5);
    std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::~__split_buffer(v21);
  }

  return v5;
}

_DWORD *std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end_with_size<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::SdfPath*>>(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 2);
  if (a3)
  {
    v6 = 8 * a3;
    v7 = &v4[2 * a3];
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4, a2);
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, a2 + 1);
      v4 += 2;
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
    v4 = v7;
  }

  *(v3 + 2) = v4;
  return result;
}

uint64_t std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = *v6 + 8 * (v5 & 0x1FF);
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy[abi:ne200100](a1, v7);
        v7 += 8;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 512;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void *std::deque<pxrInternal__aapl__pxrReserved__::SdfPath>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v10);
}

void sub_2476549E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<realityio::UsdPropertyDelta>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
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

uint64_t std::__function::__func<realityio::UsdStageObserver::_buildRelationshipPropertyPathAndTargetRelatedPrimPathMappings(void)::$_0,std::allocator<realityio::UsdStageObserver::_buildRelationshipPropertyPathAndTargetRelatedPrimPathMappings(void)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859575D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<realityio::UsdStageObserver::_buildRelationshipPropertyPathAndTargetRelatedPrimPathMappings(void)::$_0,std::allocator<realityio::UsdStageObserver::_buildRelationshipPropertyPathAndTargetRelatedPrimPathMappings(void)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v7[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperties();
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v7);
  for (i = v6[0]; i != v6[1]; i = (i + 32))
  {
    realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromPrimAndProperty(v3, a2, i);
  }

  v7[0] = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::__destroy_vector::operator()[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_247654C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::UsdStageObserver::_buildRelationshipPropertyPathAndTargetRelatedPrimPathMappings(void)::$_0,std::allocator<realityio::UsdStageObserver::_buildRelationshipPropertyPathAndTargetRelatedPrimPathMappings(void)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,BOOL)::$_0,std::allocator<realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,BOOL)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285957658;
  a2[1] = v2;
  return result;
}

void std::__function::__func<realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,BOOL)::$_0,std::allocator<realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,BOOL)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v7[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperties();
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v7);
  for (i = v6[0]; i != v6[1]; i = (i + 32))
  {
    realityio::UsdStageObserver::_clearPreviousPropertyAndPrimMappings(v3, i);
    realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromPrimAndProperty(v3, a2, i);
  }

  v7[0] = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdProperty>::__destroy_vector::operator()[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_247654E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,BOOL)::$_0,std::allocator<realityio::UsdStageObserver::_updateRelationshipPropertyPathAndTargetRelatedPrimPathMappingsFromNotice(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,BOOL)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(void *a1, void *a2)
{
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,void *>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,void,0>((v4 + 4));

    operator delete(v4);
  }
}

void realityio::EndOfUpdateBuilder::EndOfUpdateBuilder(realityio::EndOfUpdateBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[9] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "EndOfUpdateBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kEndOfUpdateBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE533B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE533B0))
  {
    operator new();
  }

  if (*algn_27EE533A8)
  {
    atomic_fetch_add_explicit((*algn_27EE533A8 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285957828;
  v7[3] = v7;
  v6[0] = &unk_2859578A8;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247655368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, char *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t *a38)
{
  v41 = *(v39 - 88);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  a38 = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a38);
  v42 = *(v39 - 104);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  a25 = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a25);
  MEMORY[0x24C1A91B0](v38, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE533B0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void realityio::EndOfUpdateBuilder::run(realityio::EndOfUpdateBuilder *this, realityio::Inputs *a2)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "end_of_update");
  std::mutex::lock(v3 + 1);
  operator new();
}

void sub_247655630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void realityio::EndOfUpdateBuilder::~EndOfUpdateBuilder(realityio::EndOfUpdateBuilder *this)
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

realityio::_anonymous_namespace_::EndOfUpdateDirtyPrimDescriptor *realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor::EndOfUpdateDirtyPrimDescriptor(realityio::_anonymous_namespace_::EndOfUpdateDirtyPrimDescriptor *this)
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  realityio::PrimitiveDirtyPrimDescriptor::PrimitiveDirtyPrimDescriptor(this, v4, v3);
  v5 = v3;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3[0] = v4;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v3);
  *this = &unk_285957750;
  return this;
}

void sub_24765585C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 - 40) = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2476558E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor::~EndOfUpdateDirtyPrimDescriptor(realityio::_anonymous_namespace_::EndOfUpdateDirtyPrimDescriptor *this)
{
  *this = &unk_2859525B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_2859525B8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C402FEF67C7);
}

CFStringRef realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor::description@<X0>(CFStringRef *a1@<X8>)
{
  *a1 = 0;
  result = CFStringCreateWithCString(0, "EndOfUpdateDirtyPrimDescriptor", 0x8000100u);
  *a1 = result;
  return result;
}

void std::__shared_ptr_pointer<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor *,std::shared_ptr<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor,realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>,std::allocator<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor *,std::shared_ptr<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor,realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>,std::allocator<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor *,std::shared_ptr<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>::__shared_ptr_default_delete<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor,realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>,std::allocator<realityio::anonymous namespace::EndOfUpdateDirtyPrimDescriptor>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::EndOfUpdateBuilder::EndOfUpdateBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::EndOfUpdateBuilder::EndOfUpdateBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247655E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::EndOfUpdateBuilder::EndOfUpdateBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::EndOfUpdateBuilder::EndOfUpdateBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<void *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285957928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::SpotOrPointOrAmbientLightComponentBuilder::SpotOrPointOrAmbientLightComponentBuilder(realityio::SpotOrPointOrAmbientLightComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[30] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "SpotOrPointOrAmbientLightComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kSpotOrPointOrAmbientLightComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE533D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE533D8))
  {
    operator new();
  }

  if (unk_27EE533D0)
  {
    atomic_fetch_add_explicit((unk_27EE533D0 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285957A20;
  v7[3] = v7;
  v6[0] = &unk_285957AA0;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247656848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x24C1A91B0](v72, 0x10A1C40F82F910ELL);
  a72 = &a56;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a72);
  MEMORY[0x24C1A91B0](v73, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v74, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE533D8);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::SpotOrPointOrAmbientLightComponentBuilder *this, realityio::Inputs *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v81 = a2;
  v2 = (a2 + 32);
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v79, v3, v2);
  v4 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<BOOL>(&v79, (v4 + 88), &buf);
  v5 = buf.__r_.__value_.__s.__data_[0];
  v6 = buf.__r_.__value_.__s.__data_[8];
  if ((buf.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<BOOL>(&v79, (v7 + 80), &buf);
  v8 = buf.__r_.__value_.__s.__data_[0];
  v9 = buf.__r_.__value_.__s.__data_[8];
  if ((buf.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeColor4FAndGamut(&v79, (v10 + 72), &buf, xmmword_247766550);
  v93 = *&buf.__r_.__value_.__l.__data_;
  v94 = buf.__r_.__value_.__s.__data_[16];
  v11 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<float>(&v79, (v11 + 56), &buf);
  v12 = buf.__r_.__value_.__s.__data_[0];
  v13 = *&buf.__r_.__value_.__r.__words[1];
  if ((buf.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 1.0;
  if (v12)
  {
    v14 = v13;
  }

  v78 = v14;
  v15 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  realityio::getAttributeValue<float>(&v79, (v15 + 64), &buf);
  v17 = buf.__r_.__value_.__s.__data_[0];
  v18 = *&buf.__r_.__value_.__r.__words[1];
  if ((buf.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = 0.0;
  if (v17)
  {
    v19 = v18;
  }

  v77 = v19;
  v20 = v80;
  if (!v80 || (*(v80 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v80, v16);
  }

  v21 = *(v20 + 3);
  v22 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v22)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v22 + 32) ^ *v21) < 8)
  {
    goto LABEL_37;
  }

  v23 = v80;
  if (!v80 || (*(v80 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v80, v16);
  }

  v24 = *(v23 + 3);
  v25 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v25)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v25 + 24) ^ *v24) < 8)
  {
    goto LABEL_37;
  }

  v26 = v80;
  if (!v80 || (*(v80 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v80, v16);
  }

  v27 = *(v26 + 3);
  v28 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (!v28)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v28 + 16) ^ *v27) > 7)
  {
    v29 = *MEMORY[0x277D00820];
    if (((v5 ^ 1 | v6) & 1) == 0)
    {
      v31 = 0;
      v30 = MEMORY[0x277D00840];
LABEL_39:
      v32 = v8 & v9;
      if (!v32)
      {
        v29 = *v30;
      }

      v78 = v78 * v29;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v76 = 0;
      v74 = MEMORY[0x277D86750] + 16;
      if (!v75 || (*(v75 + 57) & 8) != 0 || !(*(MEMORY[0x277D86750] + 48))(&v74))
      {
LABEL_59:
        if (v32)
        {
          ComponentType = REAmbientLightComponentGetComponentType();
        }

        else if (v31)
        {
          ComponentType = REPointLightComponentGetComponentType();
        }

        else
        {
          ComponentType = RESpotLightComponentGetComponentType();
        }

        v72.__r_.__value_.__r.__words[0] = ComponentType;
        v78 = realityio::scaleLightIntensityByStageUnits(&v79, v36, v78);
        *v83 = 0;
        v37 = *(v81 + 6);
        operator new();
      }

      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v72);
      pxrInternal__aapl__pxrReserved__::UsdLuxShapingAPI::GetShapingIesFileAttr(&v67, &v74);
      if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v67) & 1) == 0)
      {
        MEMORY[0x24C1A5DE0](v83, "inputs:shaping:ies:file");
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&buf, &v79, v83);
        LODWORD(v67) = buf.__r_.__value_.__l.__data_;
        if (size)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(size);
        }

        size = buf.__r_.__value_.__l.__size_;
        buf.__r_.__value_.__l.__size_ = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v69, &buf.__r_.__value_.__r.__words[2]);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v70, &buf.__r_.__value_.__r.__words[2] + 1);
        if ((v71 & 7) != 0)
        {
          atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v71 = __p.__r_.__value_.__r.__words[0];
        __p.__r_.__value_.__r.__words[0] = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf.__r_.__value_.__r.__words[2]);
        if (buf.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(buf.__r_.__value_.__l.__size_);
        }

        if ((v83[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v67, &buf);
      v33 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf);
      if (v33)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
      }

      v34 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&buf);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v72 = buf;
      *(&buf.__r_.__value_.__s + 23) = 0;
      buf.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
        v73 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v73 = __p;
      }

      v38 = *(realityio::logObjects(v34) + 24);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v79, v83);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v83);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = Text;
        _os_log_impl(&dword_247485000, v38, OS_LOG_TYPE_DEFAULT, "Error IES light is not suppoorted on light %s", &buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v83);
      }

      v40 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&buf);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v72.__r_.__value_.__l.__size_;
      }

      v42 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      v43 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = buf.__r_.__value_.__l.__size_;
      }

      if (v41 != v42)
      {
        goto LABEL_97;
      }

      v44 = (v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v72 : v72.__r_.__value_.__r.__words[0];
      v45 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      v40 = memcmp(v44, v45, v41);
      if (v40)
      {
        goto LABEL_97;
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v73.__r_.__value_.__l.__size_;
      }

      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = __p.__r_.__value_.__l.__size_;
      }

      if (v46 == v47)
      {
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &v73;
        }

        else
        {
          v48 = v73.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v40 = memcmp(v48, p_p, v46);
        v50 = v40 != 0;
      }

      else
      {
LABEL_97:
        v50 = 1;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(&buf.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_100:
          if (v50)
          {
LABEL_101:
            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v66, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
            }

            else
            {
              v66 = v73;
            }

            pxrInternal__aapl__pxrReserved__::ArGetResolver(v40);
            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
            }

            else
            {
              buf = v73;
            }

            pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            memset(&buf, 0, sizeof(buf));
            v90 = 0;
            v92 = 0;
            v91 = 0;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v62[0] = 0;
            v62[1] = 0;
            v63 = 0;
            (*(*v64 + 24))(v83);
            v51 = *v83;
            v52 = (*(*v64 + 16))(v64);
            v53 = realityio::RIOIESInfoLoadFromString(v51, v52, &buf, 1, v62);
            v54 = *&v83[8];
            if (*&v83[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v83[8]);
            }

            if (v53)
            {
              v55 = v89 * 4.0 * 3.14159265 * 683.0;
              v78 = v55;
              v56 = *(*(*(v81 + 5) + 16) + 16);
              ServiceLocator = REEngineGetServiceLocator();
              MEMORY[0x24C1A4230]();
              MEMORY[0x24C1A4260](ServiceLocator);
              memset(v61, 0, sizeof(v61));
              std::vector<float>::resize(v61, 0x100000uLL);
              realityio::RIOIESInfoGenerateTexture2D(&buf, v61[0], 0x200u, 0x200u, 4, 4);
              CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
              operator new();
            }

            v58 = *(realityio::logObjects(v54) + 24);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v59 = &v66;
              }

              else
              {
                v59 = v66.__r_.__value_.__r.__words[0];
              }

              pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v79, v82);
              v60 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v82);
              *v83 = 136315394;
              *&v83[4] = v59;
              *&v83[12] = 2080;
              *&v83[14] = v60;
              _os_log_impl(&dword_247485000, v58, OS_LOG_TYPE_DEFAULT, "Error reading IES file %s on light %s", v83, 0x16u);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v82);
            }

            if (SHIBYTE(v63) < 0)
            {
              operator delete(v62[0]);
            }

            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }

            if (*(&v87 + 1))
            {
              *&v88 = *(&v87 + 1);
              operator delete(*(&v87 + 1));
            }

            if (v86)
            {
              *(&v86 + 1) = v86;
              operator delete(v86);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }
          }

LABEL_135:
          if ((v71 & 7) != 0)
          {
            atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v69);
          if (size)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(size);
          }

          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          goto LABEL_59;
        }
      }

      else if ((v43 & 0x80) == 0)
      {
        goto LABEL_100;
      }

      operator delete(buf.__r_.__value_.__l.__data_);
      if (v50)
      {
        goto LABEL_101;
      }

      goto LABEL_135;
    }
  }

  else
  {
LABEL_37:
    v29 = *MEMORY[0x277D00820];
  }

  v30 = MEMORY[0x277D00830];
  v31 = 1;
  goto LABEL_39;
}

void sub_247657E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  MEMORY[0x24C1A91B0](v49, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE533C0);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  MEMORY[0x24C1A54E0](&a43);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a48);
  _Unwind_Resume(a1);
}

uint64_t realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::SpotOrPointOrAmbientLightComponentBuilder *this, realityio::Inputs *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v5 = a2;
  v6[0] = &unk_285957CA0;
  v6[1] = &v5;
  v6[2] = this;
  v6[3] = v6;
  (*(*v2 + 16))(v2, v6);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247658240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::SpotOrPointOrAmbientLightComponentBuilder::~SpotOrPointOrAmbientLightComponentBuilder(realityio::SpotOrPointOrAmbientLightComponentBuilder *this)
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

void sub_24765852C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::SpotOrPointOrAmbientLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::SpotOrPointOrAmbientLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::SpotOrPointOrAmbientLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::SpotOrPointOrAmbientLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::getAttributeValue<BOOL>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<BOOL>(&__p, a3);
      if ((*a3 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v15 = *(a3 + 24);
          v14 = a3 + 24;
          v13 = v15;
          if (*(v14 + 23) >= 0)
          {
            v13 = v14;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v16, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v16);
      *(a3 + 8) = *buf;
      v11 = v22;
      *(a3 + 24) = *&buf[16];
      *(a3 + 32) = v11;
      *(a3 + 39) = *(&v22 + 7);
      LOBYTE(v11) = HIBYTE(v22);
      v22 = 0uLL;
      *&buf[16] = 0;
      *a3 = 0;
      *(a3 + 47) = v11;
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a3 + 8) = *buf;
    v10 = v22;
    *(a3 + 24) = *&buf[16];
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v22 + 7);
    LOBYTE(v10) = HIBYTE(v22);
    v22 = 0uLL;
    *&buf[16] = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if ((v19[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_247658A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((*v5 & 1) == 0 && *(v5 + 47) < 0)
  {
    operator delete(*(v5 + 24));
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<BOOL>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<BOOL>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_247658BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<BOOL>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(v36))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v36);
        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D82798], v12))
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<BOOL>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v14);
          *a3 = 1;
          *(a3 + 8) = v15;
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v32;
          v26 = v34;
          *(a3 + 24) = v33;
          *(a3 + 32) = v26;
          *(a3 + 39) = *(&v34 + 7);
          LOBYTE(v26) = HIBYTE(v34);
          v34 = 0uLL;
          v33 = 0;
          *a3 = 0;
          *(a3 + 47) = v26;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        goto LABEL_38;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v24 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v24;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v24) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v24;
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_38:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v36);
        goto LABEL_39;
      }

      v23 = __p[0];
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      }

      std::operator+<char>();
      v16 = std::string::append(&v29, ") at the given time: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, *a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v28;
      }

      else
      {
        v18 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v35, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v31 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v32;
      v22 = v34;
      *(a3 + 24) = v33;
      *(a3 + 32) = v22;
      *(a3 + 39) = *(&v34 + 7);
      LOBYTE(v22) = HIBYTE(v34);
      v34 = 0uLL;
      v33 = 0;
      *a3 = 0;
      *(a3 + 47) = v22;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v23 = v29.__r_.__value_.__r.__words[0];
    }

    operator delete(v23);
    goto LABEL_38;
  }

  v8 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v8 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v32, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v32;
  v10 = v34;
  *(a3 + 24) = v33;
  *(a3 + 32) = v10;
  *(a3 + 39) = *(&v34 + 7);
  LOBYTE(v10) = HIBYTE(v34);
  v34 = 0uLL;
  v33 = 0;
  *a3 = 0;
  *(a3 + 47) = v10;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
}

void sub_247659018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285957B20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285957BA0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = **(a1 + 8);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v3, v4, v18);
  if (v18[0])
  {
    v5 = v19;
    v17 = v19;
    if (v19)
    {
      RERetain();
      v6 = *(v2 + 280);
      if (**(a1 + 24) != v6 && v6 != RECameraMovementComponentGetComponentType())
      {
        v7 = *(v2 + 280);
        REEntityRemoveComponentByClass();
      }

      *(v2 + 280) = **(a1 + 24);
      v8 = *(a1 + 40);
      v15 = *(a1 + 48);
      v9 = *(a1 + 64);
      v10 = *(a1 + 16);
      v22 = 0;
      operator new();
    }
  }

  else
  {
    v17 = 0;
  }

  v11 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 16), &v16);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v16);
    *buf = 136315138;
    v21 = Text;
    _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_DEFAULT, "Stopping operation to set spot/point/ambient light component because entity no longer exists for prim %s", buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v17);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v18);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247659488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_1,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::run(realityio::Inputs *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio41SpotOrPointOrAmbientLightComponentBuilder3runEPNS2_6InputsEENK3__1clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285957C10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio41SpotOrPointOrAmbientLightComponentBuilder3runEPNS2_6InputsEENK3__1clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  **(a1 + 8) = *a2;
  realityio::Builder::addComponent(v4, v3);
  v5 = v4[35];
  if (v5 == REPointLightComponentGetComponentType())
  {
    v12 = **(a1 + 24);
    exp2f(**(a1 + 32));
    REPointLightComponentSetIntensity();
    v13 = *(a1 + 40);
    v14 = *v13;
    v15 = *(v13 + 16);
    REPointLightComponentSetColorGamut3F();
    v16.n128_u32[0] = 1232348160;

    return MEMORY[0x282154838](v3, v16);
  }

  else
  {
    v6 = v4[35];
    ComponentType = RESpotLightComponentGetComponentType();
    v8 = **(a1 + 24);
    exp2f(**(a1 + 32));
    if (v6 == ComponentType)
    {
      RESpotLightComponentSetIntensity();
      v17 = *(a1 + 40);
      v18 = *v17;
      v19 = *(v17 + 16);
      RESpotLightComponentSetColorGamut3F();
      v20 = atomic_load(&realityio::tokens::LightBuilderTokens);
      if (!v20)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      v21 = *(v20 + 120);
      v29 = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v29 &= 0xFFFFFFFFFFFFFFF8;
      }

      realityio::getAttributeValue<float>(*(a1 + 48), &v29, v30);
      if ((v30[0] & 1) == 0 && v32 < 0)
      {
        operator delete(__p);
      }

      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      RESpotLightComponentSetOuterAngle();
      v22 = atomic_load(&realityio::tokens::LightBuilderTokens);
      if (!v22)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      v23 = *(v22 + 128);
      v29 = v23;
      if ((v23 & 7) != 0)
      {
        v24 = (v23 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed) & 1) == 0)
        {
          v29 = v24;
        }
      }

      realityio::getAttributeValue<float>(*(a1 + 48), &v29, v30);
      if ((v30[0] & 1) == 0 && v32 < 0)
      {
        operator delete(__p);
      }

      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = atomic_load(&realityio::tokens::LightBuilderTokens);
      if (!v25)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      v26 = *(v25 + 136);
      v29 = v26;
      if ((v26 & 7) != 0)
      {
        v27 = (v26 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed) & 1) == 0)
        {
          v29 = v27;
        }
      }

      realityio::getAttributeValue<float>(*(a1 + 48), &v29, v30);
      if ((v30[0] & 1) == 0 && v32 < 0)
      {
        operator delete(__p);
      }

      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      return RESpotLightComponentSetInnerAngle();
    }

    else
    {
      REAmbientLightComponentSetIntensity();
      v9 = *(a1 + 40);
      v10 = *v9;
      v11 = v9[1].n128_u8[0];

      return MEMORY[0x282153640](v3, v11, v10);
    }
  }
}

void sub_247659978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio41SpotOrPointOrAmbientLightComponentBuilder3runEPNS2_6InputsEENK3__1clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio41SpotOrPointOrAmbientLightComponentBuilder3runEPNS_6InputsEENK3__1clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285957CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  v3 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v3, v7);
  if (v7[0])
  {
    v6 = v8;
    if (v8)
    {
      RERetain();
      v4 = *(v1 + 280);
      REEntityRemoveComponentByClass();
    }
  }

  else
  {
    v6 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v6);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v7);
}

void sub_247659B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::SpotOrPointOrAmbientLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *ExecFault::fromString@<X0>(int a1@<W0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 40) = 0;
  *a3 = a1;
  return std::string::operator=((a3 + 8), a2);
}

std::string *ExecFault::fromError@<X0>(int a1@<W0>, const std::string *a2@<X1>, __CFError *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v5 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 40) = 0;
  *a4 = a1;
  result = std::string::operator=((a4 + 8), a2);
  if (a3)
  {
    v7 = CFErrorCopyDescription(a3);
    cf = v7;
    if (!v7)
    {
      goto LABEL_19;
    }

    realityio::CFStringCopyUTF8String(v7, v12);
    if (v12[0] != 1)
    {
      goto LABEL_19;
    }

    v8 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__s.__r_.__value_.__l.__size_)
      {
LABEL_18:
        operator delete(__s.__r_.__value_.__l.__data_);
        goto LABEL_19;
      }

      std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      if (!*(&__s.__r_.__value_.__s + 23))
      {
LABEL_19:
        CFRelease(a3);
        return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&cf);
      }

      __p = __s;
    }

    std::string::append(v5, ": ");
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

    std::string::append(v5, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return result;
}

void sub_247659CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19)
{
  operator delete(v20);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a19);
  ExecFault::~ExecFault(v19);
  _Unwind_Resume(a1);
}

void ExecFault::stringValue(int a1@<W0>, const std::string *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  ExecFault::fromString(a1, a2, v4);
  *(a3 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<ExecFault>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>::_PlaceCopy();
}

void sub_247659DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ExecFault::~ExecFault(va);
  _Unwind_Resume(a1);
}

void ExecFault::errorValue(int a1@<W0>, const std::string *a2@<X1>, __CFError *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  ExecFault::fromError(a1, a2, a3, v5);
  *(a4 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<ExecFault>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<ExecFault>::_PlaceCopy();
}

void sub_247659E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ExecFault::~ExecFault(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrTfTokenGetTypeID()
{
  if (RIOPxrTfTokenGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrTfTokenGetTypeID::onceToken, &__block_literal_global_25);
  }

  return RIOPxrTfTokenGetTypeID::typeID;
}

void __RIOPxrTfTokenGetTypeID_block_invoke()
{
  if (!RIOPxrTfTokenGetTypeID::typeID)
  {
    RIOPxrTfTokenGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrTfTokenCreateWithCString(_BYTE *a1, int a2)
{
  if (a1 && *a1)
  {
    if (a2)
    {
      MEMORY[0x24C1A5DF0](&v3, a1, 0);
    }

    else
    {
      MEMORY[0x24C1A5DE0](&v3, a1);
    }

    result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v3);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (RIOPxrTfTokenEmpty::onceToken != -1)
    {
      dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
    }

    return RIOPxrTfTokenEmpty::tokenRef;
  }

  return result;
}

void sub_247659FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrTfTokenEmpty()
{
  if (RIOPxrTfTokenEmpty::onceToken != -1)
  {
    dispatch_once(&RIOPxrTfTokenEmpty::onceToken, &__block_literal_global_2_2);
  }

  return RIOPxrTfTokenEmpty::tokenRef;
}

uint64_t __RIOPxrTfTokenEmpty_block_invoke()
{
  v1 = 0;
  result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v1);
  RIOPxrTfTokenEmpty::tokenRef = result;
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

CFStringRef RIOPxrTfTokenCopyString(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v1 = *(a1 + 16) & 0xFFFFFFFFFFFFFFF8;
  if (v1)
  {
    v2 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v2 = *v2;
    }
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

uint64_t RIOPxrTfTokenIsImmortal(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if ((v1 & 7) == 0)
      {
        return 1;
      }

      v2 = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((*v2 & 1) == 0)
      {
        *(result + 16) = v2;
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t RIOPxrTfTokenGetLength(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16) & 0xFFFFFFFFFFFFFFF8;
    if (v1)
    {
      result = *(v1 + 39);
      if (result < 0)
      {
        return *(v1 + 24);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *RIOPxrTfTokenCopyTypeSchemaPropertyNames(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v38 = 0uLL;
    v39 = 0;
    v3 = atomic_load(off_278EA82C0);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry>::_CreateInstance();
    }

    v4 = *(v3 + 40);
    if (v4)
    {
      v5 = *(a1 + 16);
      v6 = bswap64(0x9E3779B97F4A7C55 * (v5 & 0xFFFFFFFFFFFFFFF8));
      v7 = vcnt_s8(v4);
      v7.i16[0] = vaddlv_u8(v7);
      if (v7.u32[0] > 1uLL)
      {
        v8 = v6;
        if (v6 >= *&v4)
        {
          v8 = v6 % *&v4;
        }
      }

      else
      {
        v8 = v6 & (*&v4 - 1);
      }

      v9 = *(*(v3 + 32) + 8 * v8);
      if (v9)
      {
        for (i = *v9; i; i = *i)
        {
          v11 = i[1];
          if (v6 == v11)
          {
            if ((i[2] ^ v5) < 8)
            {
              v12 = i[3];
              if (v12)
              {
                v13 = &v38 == (v12 + 80);
              }

              else
              {
                v13 = 1;
              }

              if (!v13)
              {
                v14 = *(v12 + 80);
                v15 = *(v12 + 88);
                v16 = v15 - v14;
                v17 = v38;
                if (v39 - v38 < (v15 - v14))
                {
                  v18 = v16 >> 3;
                  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vdeallocate(&v38);
                  if (!(v18 >> 61))
                  {
                    v19 = (v39 - v38) >> 2;
                    if (v19 <= v18)
                    {
                      v19 = v18;
                    }

                    if ((v39 - v38) >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v20 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v20 = v19;
                    }

                    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vallocate[abi:ne200100](&v38, v20);
                  }

                  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__throw_length_error[abi:ne200100]();
                }

                v21 = *(&v38 + 1);
                v22 = *(&v38 + 1) - v38;
                if (*(&v38 + 1) - v38 >= v16)
                {
                  if (v14 != v15)
                  {
                    do
                    {
                      pxrInternal__aapl__pxrReserved__::TfToken::operator=(v17, v14);
                      v14 += 8;
                      ++v17;
                    }

                    while (v14 != v15);
                    v21 = *(&v38 + 1);
                  }

                  while (v21 != v17)
                  {
                    v26 = *--v21;
                    v25 = v26;
                    if ((v26 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }
                  }

                  *(&v38 + 1) = v17;
                }

                else
                {
                  v23 = &v14[v22];
                  if (*(&v38 + 1) != v38)
                  {
                    do
                    {
                      pxrInternal__aapl__pxrReserved__::TfToken::operator=(v17, v14);
                      v14 += 8;
                      ++v17;
                      v22 -= 8;
                    }

                    while (v22);
                    v21 = *(&v38 + 1);
                  }

                  for (; v23 != v15; ++v21)
                  {
                    v24 = *v23;
                    *v21 = *v23;
                    if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      *v21 &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v23 += 8;
                  }

                  *(&v38 + 1) = v21;
                }
              }

              break;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= *&v4 - 1;
            }

            if (v11 != v8)
            {
              break;
            }
          }
        }
      }
    }

    if (v38 == *(&v38 + 1))
    {
      goto LABEL_75;
    }

    std::__introsort<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,false>(v38, *(&v38 + 1), &v40, 126 - 2 * __clz((*(&v38 + 1) - v38) >> 3), 1);
    v27 = *(&v38 + 1);
    v28 = v38;
    if (v38 == *(&v38 + 1))
    {
      v34 = v38;
LABEL_67:
      if (v34 != v27)
      {
        do
        {
          v36 = *--v27;
          v35 = v36;
          if ((v36 & 7) != 0)
          {
            atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        while (v27 != v34);
        *(&v38 + 1) = v34;
        v28 = v38;
        goto LABEL_74;
      }
    }

    else
    {
      v29 = (v38 + 8);
      while (v29 != *(&v38 + 1))
      {
        v30 = *v29 ^ *(v29 - 1);
        ++v29;
        if (v30 <= 7)
        {
          v31 = v29 - 2;
          if (v29 != *(&v38 + 1))
          {
            do
            {
              v32 = *v29;
              if ((*v29 ^ *v31) >= 8)
              {
                v33 = v31 + 1;
                if (v29 - 1 != v31)
                {
                  if ((*v33 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    v32 = *v29;
                  }

                  *v33 = v32;
                  *v29 = 0;
                }

                ++v31;
              }

              ++v29;
            }

            while (v29 != v27);
            v27 = *(&v38 + 1);
            v28 = v38;
          }

          v34 = v31 + 1;
          goto LABEL_67;
        }
      }
    }

    v34 = v27;
LABEL_74:
    while (v28 != v34)
    {
      v41 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v28);
      CFArrayAppendValue(Mutable, v41);
      realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v41);
      ++v28;
    }

LABEL_75:
    v41 = &v38;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v41);
  }

  return Mutable;
}

void sub_24765A5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t _RIOPxrTfTokenCFFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = result;
LABEL_2:
  v321 = a2 - 1;
  j = v6;
  while (1)
  {
    v6 = j;
    v8 = a2 - j;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(j, j + 1, v321);
        case 4:

          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(j, j + 1, j + 2, v321);
        case 5:

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(j, j + 1, j + 2, j + 3, v321);
      }

      goto LABEL_10;
    }

    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v149 = j + 1;
      v151 = j == a2 || v149 == a2;
      if (a5)
      {
        if (v151)
        {
          return result;
        }

        v152 = 0;
        v153 = v6;
        while (1)
        {
          v154 = v153;
          v153 = v149;
          if ((v154[1] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v155 = (v154[1] & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v155 = result;
          }

          if ((*v154 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v156 = (*v154 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v156 = result;
          }

          if (*(v155 + 23) >= 0)
          {
            v157 = v155;
          }

          else
          {
            v157 = *v155;
          }

          v158 = *v157;
          if (*(v156 + 23) >= 0)
          {
            v159 = v156;
          }

          else
          {
            v159 = *v156;
          }

          if (v158 < 0 || (v160 = *v159, v160 < 0) || ((v161 = v158, v162 = v160, v163 = (v160 ^ v161) & 0x5F, v161 >= 0x40) ? (v164 = v163 == 0) : (v164 = 1), v164 || v162 < 0x40))
          {
            result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
            if (result)
            {
LABEL_349:
              v165 = 0;
              v166 = *v153;
              *v153 = 0;
              v322 = v166;
              v167 = v166 & 0xFFFFFFFFFFFFFFF8;
              v168 = (v166 & 0xFFFFFFFFFFFFFFF8) + 16;
              for (i = v152; ; i -= 8)
              {
                if ((v165 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v170 = (v6 + i);
                v171 = *(v6 + i);
                *v170 = 0;
                v170[1] = v171;
                if (!i)
                {
                  break;
                }

                v172 = v168;
                if (!v167)
                {
                  result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                  v172 = result;
                }

                if ((*(v6 + i - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v173 = (*(v6 + i - 8) & 0xFFFFFFFFFFFFFFF8) + 16;
                }

                else
                {
                  result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                  v173 = result;
                }

                if (v172[23] >= 0)
                {
                  v174 = v172;
                }

                else
                {
                  v174 = *v172;
                }

                v175 = *v174;
                if (*(v173 + 23) >= 0)
                {
                  v176 = v173;
                }

                else
                {
                  v176 = *v173;
                }

                if (v175 < 0 || (v177 = *v176, v177 < 0) || ((v178 = v175, v179 = v177, v180 = (v177 ^ v178) & 0x5F, v178 >= 0x40) ? (v181 = v180 == 0) : (v181 = 1), v181 || v179 < 0x40))
                {
                  result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
                  if (!result)
                  {
                    v154 = (v6 + i);
                    goto LABEL_376;
                  }
                }

                else if (((v178 + 5) & 0x1Fu) >= ((v179 + 5) & 0x1Fu))
                {
                  goto LABEL_376;
                }

                --v154;
                v165 = *v170;
              }

              v154 = v6;
LABEL_376:
              if ((*v154 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v154 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v154 = v322;
            }
          }

          else if (((v161 + 5) & 0x1Fu) < ((v162 + 5) & 0x1Fu))
          {
            goto LABEL_349;
          }

          v149 = v153 + 1;
          v152 += 8;
          if (v153 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v151)
      {
        return result;
      }

LABEL_583:
      v283 = v6;
      v6 = v149;
      if ((v283[1] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v284 = (v283[1] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v284 = result;
      }

      if ((*v283 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v285 = (*v283 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v285 = result;
      }

      if (*(v284 + 23) >= 0)
      {
        v286 = v284;
      }

      else
      {
        v286 = *v284;
      }

      v287 = *v286;
      if (*(v285 + 23) >= 0)
      {
        v288 = v285;
      }

      else
      {
        v288 = *v285;
      }

      if (v287 < 0 || (v289 = *v288, v289 < 0) || ((v290 = v287, v291 = v289, v292 = (v289 ^ v290) & 0x5F, v290 >= 0x40) ? (v293 = v292 == 0) : (v293 = 1), v293 || v291 < 0x40))
      {
        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
        if (!result)
        {
          goto LABEL_630;
        }
      }

      else if (((v290 + 5) & 0x1Fu) >= ((v291 + 5) & 0x1Fu))
      {
        goto LABEL_630;
      }

      v294 = 0;
      v295 = *v6;
      *v6 = 0;
      while (1)
      {
        if ((v294 & 7) != 0)
        {
          atomic_fetch_add_explicit((v294 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v296 = *v283;
        *v283 = 0;
        v283[1] = v296;
        v297 = (v295 & 0xFFFFFFFFFFFFFFF8) + 16;
        if ((v295 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v297 = result;
        }

        if ((*(v283 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v298 = (*(v283 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v298 = result;
        }

        if (*(v297 + 23) >= 0)
        {
          v299 = v297;
        }

        else
        {
          v299 = *v297;
        }

        v300 = *v299;
        if (*(v298 + 23) >= 0)
        {
          v301 = v298;
        }

        else
        {
          v301 = *v298;
        }

        if (v300 < 0 || (v302 = *v301, v302 < 0) || ((v303 = v300, v304 = v302, v305 = (v302 ^ v303) & 0x5F, v303 >= 0x40) ? (v306 = v305 == 0) : (v306 = 1), v306 || v304 < 0x40))
        {
          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
          if (!result)
          {
LABEL_627:
            if ((*v283 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v283 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v283 = v295;
LABEL_630:
            v149 = v6 + 1;
            if (v6 + 1 == a2)
            {
              return result;
            }

            goto LABEL_583;
          }
        }

        else if (((v303 + 5) & 0x1Fu) >= ((v304 + 5) & 0x1Fu))
        {
          goto LABEL_627;
        }

        v294 = *v283--;
      }
    }

    if (!a4)
    {
      if (j == a2)
      {
        return result;
      }

      v182 = (v8 - 2) >> 1;
      v323 = v182;
      while (1)
      {
        v183 = v182;
        if (v323 < v182)
        {
          goto LABEL_483;
        }

        v184 = (2 * v182) | 1;
        v185 = &v6[v184];
        if (2 * v182 + 2 < v8)
        {
          if ((*v185 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v186 = (*v185 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v186 = result;
          }

          if ((v185[1] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v187 = (v185[1] & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v187 = result;
          }

          if (*(v186 + 23) >= 0)
          {
            v188 = v186;
          }

          else
          {
            v188 = *v186;
          }

          v189 = *v188;
          if (*(v187 + 23) >= 0)
          {
            v190 = v187;
          }

          else
          {
            v190 = *v187;
          }

          if ((v189 & 0x80000000) == 0)
          {
            v191 = *v190;
            if ((v191 & 0x80000000) == 0)
            {
              v192 = v189;
              v193 = v191;
              v194 = (v191 ^ v192) & 0x5F;
              v195 = v192 < 0x40 || v194 == 0;
              if (!v195 && v193 >= 0x40)
              {
                if (((v192 + 5) & 0x1Fu) >= ((v193 + 5) & 0x1Fu))
                {
                  goto LABEL_408;
                }

LABEL_407:
                ++v185;
                v184 = 2 * v183 + 2;
                goto LABEL_408;
              }
            }
          }

          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
          if (result)
          {
            goto LABEL_407;
          }
        }

LABEL_408:
        if ((*v185 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v196 = (*v185 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v196 = result;
        }

        v197 = &v6[v183];
        if ((*v197 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v198 = (*v197 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v198 = result;
        }

        if (*(v196 + 23) >= 0)
        {
          v199 = v196;
        }

        else
        {
          v199 = *v196;
        }

        v200 = *v199;
        if (*(v198 + 23) >= 0)
        {
          v201 = v198;
        }

        else
        {
          v201 = *v198;
        }

        if (v200 < 0 || (v202 = *v201, v202 < 0) || ((v203 = v200, v204 = v202, v205 = (v202 ^ v203) & 0x5F, v203 >= 0x40) ? (v206 = v205 == 0) : (v206 = 1), v206 || v204 < 0x40))
        {
          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
          if (result)
          {
            goto LABEL_483;
          }
        }

        else if (((v203 + 5) & 0x1Fu) < ((v204 + 5) & 0x1Fu))
        {
          goto LABEL_483;
        }

        v207 = *v197;
        *v197 = 0;
        v318 = v183;
        v320 = v207;
        v208 = v207 & 0xFFFFFFFFFFFFFFF8;
        v209 = (v207 & 0xFFFFFFFFFFFFFFF8) + 16;
        while (1)
        {
          v210 = v185;
          if (v185 != v197)
          {
            if ((*v197 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v197 = *v185;
            *v185 = 0;
          }

          if (v323 < v184)
          {
            break;
          }

          v211 = 2 * v184;
          v184 = (2 * v184) | 1;
          v185 = &v6[v184];
          v212 = v211 + 2;
          if (v211 + 2 < v8)
          {
            if ((*v185 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v213 = (*v185 & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v213 = result;
            }

            if ((v185[1] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v214 = (v185[1] & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v214 = result;
            }

            if (*(v213 + 23) >= 0)
            {
              v215 = v213;
            }

            else
            {
              v215 = *v213;
            }

            v216 = *v215;
            if (*(v214 + 23) >= 0)
            {
              v217 = v214;
            }

            else
            {
              v217 = *v214;
            }

            if (v216 < 0 || (v218 = *v217, v218 < 0) || ((v219 = v216, v220 = v218, v221 = (v218 ^ v219) & 0x5F, v219 >= 0x40) ? (v222 = v221 == 0) : (v222 = 1), v222 || v220 < 0x40))
            {
              result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
              if (!result)
              {
                goto LABEL_456;
              }

LABEL_455:
              ++v185;
              v184 = v212;
              goto LABEL_456;
            }

            if (((v219 + 5) & 0x1Fu) < ((v220 + 5) & 0x1Fu))
            {
              goto LABEL_455;
            }
          }

LABEL_456:
          if ((*v185 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v223 = (*v185 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v223 = result;
          }

          v224 = v209;
          if (!v208)
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v224 = result;
          }

          if (*(v223 + 23) >= 0)
          {
            v225 = v223;
          }

          else
          {
            v225 = *v223;
          }

          v226 = *v225;
          if (v224[23] >= 0)
          {
            v227 = v224;
          }

          else
          {
            v227 = *v224;
          }

          if (v226 < 0 || (v228 = *v227, v228 < 0) || ((v229 = v226, v230 = v228, v231 = (v228 ^ v229) & 0x5F, v229 >= 0x40) ? (v232 = v231 == 0) : (v232 = 1), v232 || v230 < 0x40))
          {
            result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
            v197 = v210;
            if (result)
            {
              break;
            }
          }

          else
          {
            v197 = v210;
            if (((v229 + 5) & 0x1Fu) < ((v230 + 5) & 0x1Fu))
            {
              break;
            }
          }
        }

        if ((*v210 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v210 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v183 = v318;
        *v210 = v320;
LABEL_483:
        v182 = v183 - 1;
        if (!v183)
        {
LABEL_489:
          v233 = 0;
          v324 = *v6;
          *v6 = 0;
          v234 = v6;
          while (1)
          {
            v235 = &v234[v233];
            v236 = v235 + 1;
            v237 = 2 * v233;
            v233 = (2 * v233) | 1;
            v238 = v237 + 2;
            if (v237 + 2 < v8)
            {
              if ((*v236 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v239 = (*v236 & 0xFFFFFFFFFFFFFFF8) + 16;
              }

              else
              {
                result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                v239 = result;
              }

              v241 = v235[2];
              v240 = v235 + 2;
              v242 = v241 & 0xFFFFFFFFFFFFFFF8;
              if ((v241 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v243 = (v242 + 16);
              }

              else
              {
                result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                v243 = result;
              }

              if (*(v239 + 23) >= 0)
              {
                v244 = v239;
              }

              else
              {
                v244 = *v239;
              }

              v245 = *v244;
              if (v243[23] >= 0)
              {
                v246 = v243;
              }

              else
              {
                v246 = *v243;
              }

              if (v245 < 0 || (v247 = *v246, v247 < 0) || ((v248 = v245, v249 = v247, v250 = (v247 ^ v248) & 0x5F, v248 >= 0x40) ? (v251 = v250 == 0) : (v251 = 1), v251 || v249 < 0x40))
              {
                result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
                if (!result)
                {
                  goto LABEL_512;
                }

LABEL_511:
                v236 = v240;
                v233 = v238;
                goto LABEL_512;
              }

              if (((v248 + 5) & 0x1Fu) < ((v249 + 5) & 0x1Fu))
              {
                goto LABEL_511;
              }
            }

LABEL_512:
            if (v236 != v234)
            {
              if ((*v234 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v234 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v234 = *v236;
              *v236 = 0;
            }

            v234 = v236;
            if (v233 > ((v8 - 2) >> 1))
            {
              v252 = *v236;
              v253 = *v236 & 7;
              if (v236 == --a2)
              {
                if (v253)
                {
                  atomic_fetch_add_explicit((v252 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                *v236 = v324;
              }

              else
              {
                if (v253)
                {
                  atomic_fetch_add_explicit((v252 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                *v236 = *a2;
                *a2 = v324;
                v254 = (v236 - v6 + 8) >> 3;
                v255 = v254 < 2;
                v256 = v254 - 2;
                if (!v255)
                {
                  v257 = v256 >> 1;
                  v258 = &v6[v256 >> 1];
                  if ((*v258 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v259 = (*v258 & 0xFFFFFFFFFFFFFFF8) + 16;
                  }

                  else
                  {
                    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                    v259 = result;
                  }

                  if ((*v236 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    v260 = (*v236 & 0xFFFFFFFFFFFFFFF8) + 16;
                  }

                  else
                  {
                    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                    v260 = result;
                  }

                  if (*(v259 + 23) >= 0)
                  {
                    v261 = v259;
                  }

                  else
                  {
                    v261 = *v259;
                  }

                  v262 = *v261;
                  if (*(v260 + 23) >= 0)
                  {
                    v263 = v260;
                  }

                  else
                  {
                    v263 = *v260;
                  }

                  if (v262 < 0 || (v264 = *v263, v264 < 0) || ((v265 = v262, v266 = v264, v267 = (v264 ^ v265) & 0x5F, v265 >= 0x40) ? (v268 = v267 == 0) : (v268 = 1), v268 || v266 < 0x40))
                  {
                    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
                    if (result)
                    {
                      goto LABEL_547;
                    }
                  }

                  else if (((v265 + 5) & 0x1Fu) < ((v266 + 5) & 0x1Fu))
                  {
LABEL_547:
                    v269 = *v236;
                    *v236 = 0;
                    v325 = v269;
                    v270 = v269 & 0xFFFFFFFFFFFFFFF8;
                    v271 = (v269 & 0xFFFFFFFFFFFFFFF8) + 16;
                    while (1)
                    {
                      v272 = v258;
                      if (v258 != v236)
                      {
                        if ((*v236 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((*v236 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        *v236 = *v258;
                        *v258 = 0;
                      }

                      if (!v257)
                      {
                        break;
                      }

                      v257 = (v257 - 1) >> 1;
                      v258 = &v6[v257];
                      if ((*v258 & 0xFFFFFFFFFFFFFFF8) != 0)
                      {
                        v273 = (*v258 & 0xFFFFFFFFFFFFFFF8) + 16;
                      }

                      else
                      {
                        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                        v273 = result;
                      }

                      v274 = v271;
                      if (!v270)
                      {
                        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                        v274 = result;
                      }

                      if (*(v273 + 23) >= 0)
                      {
                        v275 = v273;
                      }

                      else
                      {
                        v275 = *v273;
                      }

                      v276 = *v275;
                      if (v274[23] >= 0)
                      {
                        v277 = v274;
                      }

                      else
                      {
                        v277 = *v274;
                      }

                      if (v276 < 0 || (v278 = *v277, v278 < 0) || ((v279 = v276, v280 = v278, v281 = (v278 ^ v279) & 0x5F, v279 >= 0x40) ? (v282 = v281 == 0) : (v282 = 1), v282 || v280 < 0x40))
                      {
                        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
                        v236 = v272;
                        if ((result & 1) == 0)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v236 = v272;
                        if (((v279 + 5) & 0x1Fu) >= ((v280 + 5) & 0x1Fu))
                        {
                          break;
                        }
                      }
                    }

                    if ((*v272 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((*v272 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    *v272 = v325;
                  }
                }
              }

              v255 = v8-- <= 2;
              if (v255)
              {
                return result;
              }

              goto LABEL_489;
            }
          }
        }
      }
    }

    v9 = &j[v8 >> 1];
    if (v8 < 0x81)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(&v6[v8 >> 1], v6, v321);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>(v6, &v6[v8 >> 1], v321);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>((v6 + 1), v9 - 1, a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>((v6 + 2), &v6[(v8 >> 1) + 1], a2 - 3);
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,0>((v9 - 1), &v6[v8 >> 1], &v6[(v8 >> 1) + 1]);
      v10 = *v6;
      *v6 = *v9;
      *v9 = v10;
    }

    --a4;
    if (a5)
    {
      goto LABEL_36;
    }

    if ((*(v6 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = (*(v6 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v11 = result;
    }

    if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = (*v6 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v12 = result;
    }

    if (*(v11 + 23) >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = *v11;
    }

    v14 = *v13;
    if (*(v12 + 23) >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = *v12;
    }

    if (v14 < 0 || (v16 = *v15, v16 < 0) || ((v17 = v14, v18 = v16, v19 = (v16 ^ v17) & 0x5F, v17 >= 0x40) ? (v20 = v19 == 0) : (v20 = 1), v20 || v18 < 0x40))
    {
      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
      if (result)
      {
        goto LABEL_36;
      }

      goto LABEL_167;
    }

    if (((v17 + 5) & 0x1Fu) >= ((v18 + 5) & 0x1Fu))
    {
LABEL_167:
      v87 = *v6;
      *v6 = 0;
      v88 = v87 & 0xFFFFFFFFFFFFFFF8;
      if ((v87 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v89 = (v88 + 16);
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v89 = result;
      }

      if ((*v321 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v90 = (*v321 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v90 = result;
      }

      if (v89[23] >= 0)
      {
        v91 = v89;
      }

      else
      {
        v91 = *v89;
      }

      v92 = *v91;
      if (*(v90 + 23) >= 0)
      {
        v93 = v90;
      }

      else
      {
        v93 = *v90;
      }

      if (v92 < 0 || (v94 = *v93, v94 < 0) || v92 < 0x40u || ((v94 ^ v92) & 0x5F) == 0 || v94 < 0x40u)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
        if (result)
        {
LABEL_185:
          for (j = v6 + 1; ; ++j)
          {
            v95 = (v88 + 16);
            if (!v88)
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v95 = result;
            }

            if ((*j & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v96 = (*j & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v96 = result;
            }

            if (v95[23] >= 0)
            {
              v97 = v95;
            }

            else
            {
              v97 = *v95;
            }

            v98 = *v97;
            if (*(v96 + 23) >= 0)
            {
              v99 = v96;
            }

            else
            {
              v99 = *v96;
            }

            if (v98 < 0 || (v100 = *v99, v100 < 0) || ((v101 = v98, v102 = v100, v103 = (v100 ^ v101) & 0x5F, v101 >= 0x40) ? (v104 = v103 == 0) : (v104 = 1), v104 || v102 < 0x40))
            {
              result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
              if (result)
              {
                goto LABEL_232;
              }
            }

            else if (((v101 + 5) & 0x1Fu) < ((v102 + 5) & 0x1Fu))
            {
              goto LABEL_232;
            }
          }
        }
      }

      else if (((v92 + 5) & 0x1Fu) < ((v94 + 5) & 0x1Fu))
      {
        goto LABEL_185;
      }

      for (j = v6 + 1; j < a2; ++j)
      {
        v105 = (v88 + 16);
        if (!v88)
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v105 = result;
        }

        if ((*j & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v106 = (*j & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v106 = result;
        }

        if (v105[23] >= 0)
        {
          v107 = v105;
        }

        else
        {
          v107 = *v105;
        }

        v108 = *v107;
        if (*(v106 + 23) >= 0)
        {
          v109 = v106;
        }

        else
        {
          v109 = *v106;
        }

        if (v108 < 0 || (v110 = *v109, v110 < 0) || ((v111 = v108, v112 = v110, v113 = (v110 ^ v111) & 0x5F, v111 >= 0x40) ? (v114 = v113 == 0) : (v114 = 1), v114 || v112 < 0x40))
        {
          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
          if (result)
          {
            break;
          }
        }

        else if (((v111 + 5) & 0x1Fu) < ((v112 + 5) & 0x1Fu))
        {
          break;
        }
      }

LABEL_232:
      k = a2;
      if (j < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          v116 = (v88 + 16);
          if (!v88)
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v116 = result;
          }

          if ((*k & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v117 = (*k & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v117 = result;
          }

          if (v116[23] >= 0)
          {
            v118 = v116;
          }

          else
          {
            v118 = *v116;
          }

          v119 = *v118;
          if (*(v117 + 23) >= 0)
          {
            v120 = v117;
          }

          else
          {
            v120 = *v117;
          }

          if (v119 < 0 || (v121 = *v120, v121 < 0) || ((v122 = v119, v123 = v121, v124 = (v121 ^ v122) & 0x5F, v122 >= 0x40) ? (v125 = v124 == 0) : (v125 = 1), v125 || v123 < 0x40))
          {
            result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
            if (!result)
            {
              break;
            }
          }

          else if (((v122 + 5) & 0x1Fu) >= ((v123 + 5) & 0x1Fu))
          {
            break;
          }
        }
      }

      if (j >= k)
      {
        goto LABEL_300;
      }

      do
      {
        v126 = *j;
        *j++ = *k;
        *k = v126;
        while (1)
        {
          v127 = v88 + 16;
          if (!v88)
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v127 = result;
          }

          if ((*j & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v128 = (*j & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v128 = result;
          }

          v129 = *(v127 + 23) >= 0 ? v127 : *v127;
          v130 = *v129;
          v131 = *(v128 + 23) >= 0 ? v128 : *v128;
          if (v130 < 0)
          {
            break;
          }

          v132 = *v131;
          if (v132 < 0)
          {
            break;
          }

          v133 = v130;
          v134 = v132;
          v135 = (v132 ^ v133) & 0x5F;
          v136 = v133 < 0x40 || v135 == 0;
          if (v136 || v134 < 0x40)
          {
            break;
          }

          if (((v133 + 5) & 0x1Fu) < ((v134 + 5) & 0x1Fu))
          {
            goto LABEL_278;
          }

LABEL_276:
          ++j;
        }

        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
        if ((result & 1) == 0)
        {
          goto LABEL_276;
        }

        do
        {
          while (1)
          {
LABEL_278:
            --k;
            v137 = v88 + 16;
            if (!v88)
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v137 = result;
            }

            if ((*k & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v138 = (*k & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v138 = result;
            }

            v139 = *(v137 + 23) >= 0 ? v137 : *v137;
            v140 = *v139;
            v141 = *(v138 + 23) >= 0 ? v138 : *v138;
            if (v140 < 0)
            {
              break;
            }

            v142 = *v141;
            if (v142 < 0)
            {
              break;
            }

            v143 = v140;
            v144 = v142;
            v145 = (v142 ^ v143) & 0x5F;
            v146 = v143 < 0x40 || v145 == 0;
            if (v146 || v144 < 0x40)
            {
              break;
            }

            if (((v143 + 5) & 0x1Fu) >= ((v144 + 5) & 0x1Fu))
            {
              goto LABEL_299;
            }
          }

          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
        }

        while (result);
LABEL_299:
        ;
      }

      while (j < k);
LABEL_300:
      v147 = j - 1;
      if (j - 1 == v6)
      {
        if ((*v147 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if ((*v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v6 = *v147;
        *v147 = 0;
      }

      a5 = 0;
      *v147 = v87;
    }

    else
    {
LABEL_36:
      v21 = 0;
      v22 = *v6;
      *v6 = 0;
      v23 = v22 & 0xFFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6[v21 + 1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v24 = (v6[v21 + 1] & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v24 = result;
        }

        v25 = (v22 & 0xFFFFFFFFFFFFFFF8) + 16;
        if (!v23)
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v25 = result;
        }

        v26 = *(v24 + 23) >= 0 ? v24 : *v24;
        v27 = *v26;
        v28 = *(v25 + 23) >= 0 ? v25 : *v25;
        if (v27 < 0)
        {
          break;
        }

        v29 = *v28;
        if (v29 < 0)
        {
          break;
        }

        v30 = v27;
        v31 = v29;
        v32 = (v29 ^ v30) & 0x5F;
        v33 = v30 < 0x40 || v32 == 0;
        if (v33 || v31 < 0x40)
        {
          break;
        }

        if (((v30 + 5) & 0x1Fu) >= ((v31 + 5) & 0x1Fu))
        {
          goto LABEL_58;
        }

LABEL_56:
        ++v21;
      }

      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
      if (result)
      {
        goto LABEL_56;
      }

LABEL_58:
      v319 = a4;
      v34 = &v6[v21];
      v35 = &v6[v21 + 1];
      m = a2 - 1;
      if (v21 * 8)
      {
        while (1)
        {
          if ((*m & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v37 = (*m & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v37 = result;
          }

          v38 = (v22 & 0xFFFFFFFFFFFFFFF8) + 16;
          if (!v23)
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v38 = result;
          }

          if (*(v37 + 23) >= 0)
          {
            v39 = v37;
          }

          else
          {
            v39 = *v37;
          }

          v40 = *v39;
          if (*(v38 + 23) >= 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = *v38;
          }

          if (v40 < 0 || (v42 = *v41, v42 < 0) || ((v43 = v40, v44 = v42, v45 = (v42 ^ v43) & 0x5F, v43 >= 0x40) ? (v46 = v45 == 0) : (v46 = 1), v46 || v44 < 0x40))
          {
            result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
            if (result)
            {
              goto LABEL_108;
            }
          }

          else if (((v43 + 5) & 0x1Fu) < ((v44 + 5) & 0x1Fu))
          {
            goto LABEL_108;
          }

          --m;
        }
      }

      m = a2;
      if (v35 < a2)
      {
        for (m = a2 - 1; ; --m)
        {
          if ((*m & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v47 = (*m & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v47 = result;
          }

          v48 = (v22 & 0xFFFFFFFFFFFFFFF8) + 16;
          if (!v23)
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v48 = result;
          }

          if (*(v47 + 23) >= 0)
          {
            v49 = v47;
          }

          else
          {
            v49 = *v47;
          }

          v50 = *v49;
          if (*(v48 + 23) >= 0)
          {
            v51 = v48;
          }

          else
          {
            v51 = *v48;
          }

          if (v50 < 0 || (v52 = *v51, v52 < 0) || ((v53 = v50, v54 = v52, v55 = (v52 ^ v53) & 0x5F, v53 >= 0x40) ? (v56 = v55 == 0) : (v56 = 1), v56 || v54 < 0x40))
          {
            result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
            if (v35 >= m)
            {
              v57 = 1;
            }

            else
            {
              v57 = result;
            }

            if (v57)
            {
              break;
            }
          }

          else if (v35 >= m || ((v53 + 5) & 0x1Fu) < ((v54 + 5) & 0x1Fu))
          {
            break;
          }
        }
      }

LABEL_108:
      if (v35 >= m)
      {
        goto LABEL_155;
      }

      v58 = &v6[v21 + 1];
      v59 = m;
      while (2)
      {
        v60 = *v58;
        *v58++ = *v59;
        *v59 = v60;
        while (2)
        {
          if ((*v58 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v61 = (*v58 & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v61 = result;
          }

          v62 = (v22 & 0xFFFFFFFFFFFFFFF8) + 16;
          if (!v23)
          {
            result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
            v62 = result;
          }

          if (*(v61 + 23) >= 0)
          {
            v63 = v61;
          }

          else
          {
            v63 = *v61;
          }

          v64 = *v63;
          if (*(v62 + 23) >= 0)
          {
            v65 = v62;
          }

          else
          {
            v65 = *v62;
          }

          if ((v64 & 0x80000000) == 0)
          {
            v66 = *v65;
            if ((v66 & 0x80000000) == 0)
            {
              v67 = v64;
              v68 = v66;
              v69 = (v66 ^ v67) & 0x5F;
              v70 = v67 < 0x40 || v69 == 0;
              if (!v70 && v68 >= 0x40)
              {
                if (((v67 + 5) & 0x1Fu) >= ((v68 + 5) & 0x1Fu))
                {
                  goto LABEL_132;
                }

                goto LABEL_130;
              }
            }
          }

          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
          if (result)
          {
LABEL_130:
            ++v58;
            continue;
          }

          break;
        }

        do
        {
          while (1)
          {
LABEL_132:
            v71 = *--v59;
            v72 = v71 & 0xFFFFFFFFFFFFFFF8;
            if ((v71 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v73 = v72 + 16;
            }

            else
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v73 = result;
            }

            v74 = (v22 & 0xFFFFFFFFFFFFFFF8) + 16;
            if (!v23)
            {
              result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
              v74 = result;
            }

            v75 = *(v73 + 23) >= 0 ? v73 : *v73;
            v76 = *v75;
            v77 = *(v74 + 23) >= 0 ? v74 : *v74;
            if (v76 < 0)
            {
              break;
            }

            v78 = *v77;
            if (v78 < 0)
            {
              break;
            }

            v79 = v76;
            v80 = v78;
            v81 = (v78 ^ v79) & 0x5F;
            v82 = v79 < 0x40 || v81 == 0;
            if (v82 || v80 < 0x40)
            {
              break;
            }

            if (((v79 + 5) & 0x1Fu) < ((v80 + 5) & 0x1Fu))
            {
              goto LABEL_153;
            }
          }

          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
        }

        while ((result & 1) == 0);
LABEL_153:
        if (v58 < v59)
        {
          continue;
        }

        break;
      }

      v34 = v58 - 1;
LABEL_155:
      v83 = *v6;
      v84 = *v6 & 7;
      if (v34 == v6)
      {
        if (v84)
        {
          atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        if (v84)
        {
          atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v6 = *v34;
        *v34 = 0;
      }

      *v34 = v22;
      v85 = v35 >= m;
      a4 = v319;
      if (v85)
      {
        v86 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *>(v6, v34);
        j = v34 + 1;
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *>(v34 + 1, a2);
        if (result)
        {
          a2 = v34;
          if (v86)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v86)
        {
          goto LABEL_165;
        }
      }

      else
      {
LABEL_165:
        result = std::__introsort<std::_ClassicAlgPolicy,pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan &,pxrInternal__aapl__pxrReserved__::TfToken *,false>(v6, v34, a3, v319, a5 & 1);
        a5 = 0;
        j = v34 + 1;
      }
    }
  }

  if ((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v148 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v148 = result;
  }

  if ((*j & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v307 = (*j & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v307 = result;
  }

  if (*(v148 + 23) >= 0)
  {
    v308 = v148;
  }

  else
  {
    v308 = *v148;
  }

  v309 = *v308;
  if (*(v307 + 23) >= 0)
  {
    v310 = v307;
  }

  else
  {
    v310 = *v307;
  }

  if (v309 < 0 || (v311 = *v310, v311 < 0) || ((v312 = v309, v313 = v311, v314 = (v311 ^ v312) & 0x5F, v312 >= 0x40) ? (v315 = v314 == 0) : (v315 = 1), v315 || v313 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl();
    if (!result)
    {
      return result;
    }
  }

  else if (((v312 + 5) & 0x1Fu) >= ((v313 + 5) & 0x1Fu))
  {
    return result;
  }

  v316 = *j;
  *j = *(a2 - 1);
  *(a2 - 1) = v316;
  return result;
}