uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>();
  }

  return *a1;
}

void realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType::~ShaderGraphUtilityTokens_StaticTokenType(realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType *this)
{
  v12 = (this + 88);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v12);
  v2 = *(this + 10);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 9);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 7);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 5);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 4);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 3);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 2);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 1);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType *realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType::ShaderGraphUtilityTokens_StaticTokenType(realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "NodeGraph", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "Shader", 0);
  MEMORY[0x24C1A5DF0](this + 16, "Material", 0);
  MEMORY[0x24C1A5DF0](this + 24, "Point", 0);
  MEMORY[0x24C1A5DF0](this + 32, "Normal", 0);
  MEMORY[0x24C1A5DF0](this + 40, "Vector", 0);
  MEMORY[0x24C1A5DF0](this + 48, "Color", 0);
  MEMORY[0x24C1A5DF0](this + 56, "Frame", 0);
  MEMORY[0x24C1A5DF0](this + 64, "TextureCoordinate", 0);
  MEMORY[0x24C1A5DF0](this + 72, "inputs", 0);
  MEMORY[0x24C1A5DF0](this + 80, "outputs", 0);
  v3 = (this + 88);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v19, &v30, 0xBuLL);
  for (i = 80; i != -8; i -= 8)
  {
    v16 = *(&v19 + i);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_24750E55C(_Unwind_Exception *a1)
{
  v3 = 80;
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
      v5 = v1[10];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[9];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[8];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[7];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[6];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[5];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[4];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[3];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[2];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[1];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t RIOPxrSdfNamespaceEditGetTypeID()
{
  if (RIOPxrSdfNamespaceEditGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfNamespaceEditGetTypeID::onceToken, &__block_literal_global_1);
  }

  return RIOPxrSdfNamespaceEditGetTypeID::typeID;
}

void __RIOPxrSdfNamespaceEditGetTypeID_block_invoke()
{
  if (!RIOPxrSdfNamespaceEditGetTypeID::typeID)
  {
    RIOPxrSdfNamespaceEditGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfBatchNamespaceEditGetTypeID()
{
  if (qword_27EE52DB8 != -1)
  {
    dispatch_once(&qword_27EE52DB8, &__block_literal_global_2);
  }

  return _MergedGlobals_7;
}

void __RIOPxrSdfBatchNamespaceEditGetTypeID_block_invoke()
{
  if (!_MergedGlobals_7)
  {
    _MergedGlobals_7 = _CFRuntimeRegisterClass();
  }
}

_DWORD *RIOPxrSdfNamespaceEditCreateEmpty()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v8 = -1;
  v0 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfNamespaceEditGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfNamespaceEditGetTypeID::onceToken, &__block_literal_global_1);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), &v4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v2 + 5, &v5);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v2 + 6, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v2 + 7, &v7);
    v2[8] = v8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  return v2;
}

void pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::~SdfNamespaceEdit(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

_DWORD *RIOPxrSdfNamespaceEditCreateFromPaths(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v5, (a1 + 16), (a2 + 16), a3);
    v3 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  }

  return v3;
}

_DWORD *RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(_DWORD *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfNamespaceEditGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfNamespaceEditGetTypeID::onceToken, &__block_literal_global_1);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), a1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 5, a1 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 6, a1 + 2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 7, a1 + 3);
    v4[8] = a1[4];
  }

  return v4;
}

_DWORD *RIOPxrSdfNamespaceEditCreateRemove(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v4, (v1 + 4), v2, -1);
    v1 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  }

  return v1;
}

_DWORD *RIOPxrSdfNamespaceEditCreateRename(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v7, (a1 + 16), (a2 + 16));
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v5, (a1 + 16), &v7, -2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    v2 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  }

  return v2;
}

_DWORD *RIOPxrSdfNamespaceEditCreateReorder(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v4, (a1 + 16), (a1 + 16), a2);
  v2 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  return v2;
}

_DWORD *RIOPxrSdfNamespaceEditCreateReparent(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix((a1 + 16), &v10, (a2 + 16));
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v8, (a1 + 16), v11, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    v3 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  }

  return v3;
}

_DWORD *RIOPxrSdfNamespaceEditCreateReparentAndRename(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix((a1 + 16), &v12, (a2 + 16));
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v14, v13, (a3 + 16));
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v10, (a1 + 16), &v14, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    v4 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  }

  return v4;
}

uint64_t RIOPxrSdfNamespaceEditGetCurrentPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditCopyCurrentPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditGetNewPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 24));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditCopyNewPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 24));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditGetIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _RIOPxrSdfNamespaceEditCFFinalize(const void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 16);
}

pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 3, a3 + 1);
  *(this + 4) = a4;
  return this;
}

void RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Collection>(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  RIO_MTLX::Element::getQualifiedName(a1, a2, &__p);
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Collection>(v8, &__p.__r_.__value_.__l.__data_, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    v9 = v12;
    *a3 = v11;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Collection>(v8, &a2->__r_.__value_.__l.__data_, a3);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_24750F1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Collection>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Collection>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24750F2A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void realityio::IBLComponentBuilder::IBLComponentBuilder(realityio::IBLComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[14] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "IBLComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kIBLComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE52DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52DE0))
  {
    operator new();
  }

  if (*algn_27EE52DD8)
  {
    atomic_fetch_add_explicit((*algn_27EE52DD8 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_285948AE0;
  v7[3] = v7;
  v6[0] = &unk_285948B60;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_24750F7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  MEMORY[0x24C1A91B0](v44, 0x10A1C40F82F910ELL);
  *(v47 - 176) = &a40;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v47 - 176));
  MEMORY[0x24C1A91B0](v45, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v46, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE52DE0);
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

void realityio::IBLComponentBuilder::run(realityio::IBLComponentBuilder *this, realityio::Inputs *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v2 = (a2 + 32);
  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v15, v3, v2);
  v4 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (v4)
  {
    realityio::getAttributeValue<float>(&v15, (v4 + 56), &v17);
    v5 = v17;
    v6 = v18;
    if ((v17 & 1) == 0 && v20 < 0)
    {
      operator delete(__p);
    }

    v7 = 1.0;
    if (v5)
    {
      v7 = v6;
    }

    v14 = v7;
    v8 = atomic_load(&realityio::tokens::LightBuilderTokens);
    if (v8)
    {
      realityio::getAttributeValue<float>(&v15, (v8 + 64), &v17);
      v9 = v17;
      v10 = v18;
      if ((v17 & 1) == 0 && v20 < 0)
      {
        operator delete(__p);
      }

      v11 = 0.0;
      if (v9)
      {
        v11 = v10;
      }

      v13 = v11;
      v12 = *(v16 + 6);
      operator new();
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData();
}

void sub_24750FE0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x24C1A91B0](v3, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE52DC8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::IBLComponentBuilder::clear(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  v5 = a2;
  v6[0] = &unk_285948CE0;
  v6[1] = &v5;
  v6[3] = v6;
  (*(*v2 + 16))(v2, v6);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24750FF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::IBLComponentBuilder::~IBLComponentBuilder(realityio::IBLComponentBuilder *this)
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

void sub_2475103A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::IBLComponentBuilder::IBLComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::IBLComponentBuilder::IBLComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::IBLComponentBuilder::IBLComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::IBLComponentBuilder::IBLComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *std::__shared_ptr_emplace<realityio::OutputDescriptor>::__shared_ptr_emplace[abi:ne200100]<char const(&)[5],pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality,std::allocator<realityio::OutputDescriptor>,0>(std::string *a1, char *__s, std::string::size_type *a3, int *a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_285943508;
  std::allocator<realityio::OutputDescriptor>::construct[abi:ne200100]<realityio::OutputDescriptor,char const(&)[5],pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality>(&v6, a1 + 1, __s, a3, a4);
  return a1;
}

void std::allocator<realityio::OutputDescriptor>::construct[abi:ne200100]<realityio::OutputDescriptor,char const(&)[5],pxrInternal__aapl__pxrReserved__::TfToken &,realityio::OutputDescriptor::Optionality>(int a1, std::string *a2, char *__s, std::string::size_type *a4, int *a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  realityio::OutputDescriptor::OutputDescriptor(a2, __p, a4, *a5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2475107D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<float>(pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X0>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<float>(&__p, a3);
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

void sub_247510A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((*v5 & 1) == 0 && *(v5 + 47) < 0)
  {
    operator delete(*(v5 + 24));
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::IBLComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::IBLComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285948BE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::IBLComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::IBLComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = **(a1 + 8);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v3, v4, v21);
  if (v21[0])
  {
    v5 = v22;
    v20 = v22;
    if (v22)
    {
      v6 = RERetain();
      v7 = **(a1 + 8);
      v8 = realityio::IBLCubeMapAssetBuilder::kOutputName(v6);
      realityio::Inputs::_getValue<REAsset *>(v7, v8, buf);
      if (buf[0])
      {
        v9 = *&v25[4];
      }

      else
      {
        v9 = 0;
      }

      if (REEntityGetSceneNullable())
      {
        v10 = MEMORY[0x24C1A4220]();
        if (v10)
        {
          *v23 = REComponentGetClass();
          std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(v2 + 40, v23);
          v11 = **(a1 + 32);
          v12 = exp2f(**(a1 + 40));
          log2f(v11 * v12);
          REImageBasedLightComponentSetIntensityExponent();
          if (v9)
          {
            if (v9 != REImageBasedLightComponentGetIBL())
            {
              MEMORY[0x24C1A3AB0](v10, v9);
            }
          }
        }
      }

      else
      {
        v17 = *(realityio::logObjects(0) + 24);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 16), &v19);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v19);
          *v23 = 136315138;
          *&v23[4] = Text;
          _os_log_impl(&dword_247485000, v17, OS_LOG_TYPE_DEFAULT, "Set IBL operation unable to find scene for entity from prim %s", v23, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
        }
      }

      if ((buf[0] & 1) == 0 && v27 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
  }

  v13 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 16), v23);
    v14 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v23);
    *buf = 136315138;
    *v25 = v14;
    _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_DEFAULT, "Stopping operation to set IBL component because entity no longer exists for prim %s", buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v23);
  }

LABEL_15:
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v20);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v21);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247510DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<realityio::IBLComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::IBLComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<decltype(nullptr)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285948C60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::IBLComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::IBLComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285948CE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::IBLComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::IBLComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v1 = **(a1 + 1);
  v2 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v1, v2, v6);
  if (v6[0])
  {
    v5 = v7;
    if (v7)
    {
      RERetain();
      if (REEntityGetSceneNullable())
      {
        v3 = MEMORY[0x24C1A4220]();
        if (v3)
        {
          MEMORY[0x24C1A3AB0](v3, 0);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v5);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v6);
}

void sub_24751105C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::IBLComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::IBLComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOBuilderDirtyPrimDescriptorGetTypeID()
{
  if (RIOBuilderDirtyPrimDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyPrimDescriptorGetTypeID::onceToken, &__block_literal_global_2);
  }

  return RIOBuilderDirtyPrimDescriptorGetTypeID::typeID;
}

void __RIOBuilderDirtyPrimDescriptorGetTypeID_block_invoke()
{
  if (!RIOBuilderDirtyPrimDescriptorGetTypeID::typeID)
  {
    RIOBuilderDirtyPrimDescriptorGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

void RIOBuilderDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors(const __CFArray *a1, const __CFArray *a2)
{
  memset(v15, 0, sizeof(v15));
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v7 = *(ValueAtIndex + 3);
      *&v13 = *(ValueAtIndex + 2);
      *(&v13 + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::push_back[abi:ne200100](v15, &v13);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }

  v13 = 0uLL;
  v14 = 0;
  v8 = CFArrayGetCount(a2);
  if (v8 >= 1)
  {
    for (j = 0; j != v8; ++j)
    {
      v10 = CFArrayGetValueAtIndex(a2, j);
      v11 = v10[3];
      *&v12 = v10[2];
      *(&v12 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](&v13, &v12);
      if (*(&v12 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
      }
    }
  }

  operator new();
}

void sub_2475112E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, std::__shared_weak_count *a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a9 = &a11;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a14;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

void **std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::DirtyStageDescriptor const>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t RIOBuilderDirtyPrimDescriptorCreate<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOBuilderDirtyPrimDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyPrimDescriptorGetTypeID::onceToken, &__block_literal_global_2);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a1[1];
    *(result + 16) = *a1;
    *(result + 24) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

__CFArray *anonymous namespace::dirtyPropertyDescriptorsFromPrimDescriptor(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>(&v12, *(v3 + 32), *(v3 + 40), (*(v3 + 40) - *(v3 + 32)) >> 4);
      v5 = v12;
      for (i = v13; v5 != i; v5 += 16)
      {
        v7 = *(v5 + 8);
        v10 = *v5;
        v11 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = RIOBuilderDirtyPropertyDescriptorCreate<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const> &>(&v10);
        CFArrayAppendValue(Mutable, v9);
        realityio::WrappedCFRef<RIOBuilderDirtyPropertyDescriptor *>::~WrappedCFRef(&v9);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      v10 = &v12;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v10);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return Mutable;
}

void sub_247511700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *anonymous namespace::dirtyMetadataDescriptorsFromPrimDescriptor(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>(&v12, *(v3 + 8), *(v3 + 16), (*(v3 + 16) - *(v3 + 8)) >> 4);
      v5 = v12;
      for (i = v13; v5 != i; v5 += 16)
      {
        v7 = *(v5 + 8);
        v10 = *v5;
        v11 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = RIOBuilderDirtyMetadataDescriptorCreate<std::shared_ptr<realityio::DirtyMetadataDescriptor const> &>(&v10);
        CFArrayAppendValue(Mutable, v9);
        realityio::WrappedCFRef<RIOBuilderDirtyMetadataDescriptor *>::~WrappedCFRef(&v9);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      v10 = &v12;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v10);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return Mutable;
}

void sub_247511854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors(const __CFArray *a1, const __CFArray *a2, const __CFArray *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v42[0] = &unk_285948E30;
  v43 = v42;
  if (a1)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
LABEL_34:
      v38 = 0uLL;
      v39 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(&v38, v35, v36, (v36 - v35) >> 3);
      v30 = 1;
      v31 = v38;
      v32 = v39;
      v33 = &v38;
      v38 = 0uLL;
      v39 = 0;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v33);
    }

    else
    {
      v7 = 0;
      while (1)
      {
        *&v38 = CFArrayGetValueAtIndex(a1, v7);
        if (!v43)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v43 + 48))(&v33);
        v8 = v33;
        v9 = v34;
        if (v33)
        {
          if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v9 &= 0xFFFFFFFFFFFFFFF8;
          }

          v10 = v36;
          if (v36 >= v37)
          {
            v13 = (v36 - v35) >> 3;
            v14 = v13 + 1;
            if ((v13 + 1) >> 61)
            {
              std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__throw_length_error[abi:ne200100]();
            }

            v15 = v37 - v35;
            if ((v37 - v35) >> 2 > v14)
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

            v41 = &v35;
            if (v16)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(&v35, v16);
            }

            v17 = (8 * v13);
            *&v38 = 0;
            *(&v38 + 1) = v17;
            v40 = 0;
            *v17 = v9;
            v11 = v9 & 7;
            if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v17 &= 0xFFFFFFFFFFFFFFF8;
            }

            v39 = v17 + 1;
            std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__swap_out_circular_buffer(&v35, &v38);
            v12 = v36;
            std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfToken>::~__split_buffer(&v38);
          }

          else
          {
            *v36 = v9;
            v11 = v9 & 7;
            if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v10 &= 0xFFFFFFFFFFFFFFF8;
            }

            v12 = v10 + 1;
          }

          v36 = v12;
          if (v11)
          {
            atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v30 = 0;
          v31 = v34;
        }

        if (v33 == 1 && (v34 & 7) != 0)
        {
          atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        if (Count == ++v7)
        {
          goto LABEL_34;
        }
      }
    }

    *&v38 = &v35;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v38);
  }

  else
  {
    v30 = 0;
    *&v31 = 0;
    *(&v31 + 1) = std::system_category();
  }

  std::__function::__value_func<realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::Error> ()(RIOPxrTfToken *)>::~__value_func[abi:ne200100](v42);
  v38 = 0uLL;
  v39 = 0;
  if (v30)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(&v38, v31, *(&v31 + 1), (*(&v31 + 1) - v31) >> 3);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v18 = CFArrayGetCount(a2);
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v21 = *(ValueAtIndex + 3);
      v33 = *(ValueAtIndex + 2);
      *&v34 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::push_back[abi:ne200100](&v35, &v33);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }
  }

  v33 = 0;
  v34 = 0uLL;
  v22 = CFArrayGetCount(a3);
  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      v24 = CFArrayGetValueAtIndex(a3, j);
      v25 = v24[3];
      *&v28 = v24[2];
      *(&v28 + 1) = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::push_back[abi:ne200100](&v33, &v28);
      if (*(&v28 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
      }
    }
  }

  v27 = *(&v38 + 1);
  v26 = v38;
  *(&v28 + 1) = 0;
  v29 = 0;
  *&v28 = &v28 + 8;
  while (v26 != v27)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&v28, &v28 + 1, v26++);
  }

  operator new();
}

void sub_247511D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a19 = &a22;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__function::__value_func<realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::Error> ()(RIOPxrTfToken *)>::~__value_func[abi:ne200100](v22 - 128);
  _Unwind_Resume(a1);
}

__CFArray *RIOBuilderTypeNameDirtyPrimDescriptorCopyTypeNames(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6[8];
    v8 = v6 + 9;
    if (v7 != v6 + 9)
    {
      do
      {
        v13 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v7 + 4);
        CFArrayAppendValue(Mutable, v13);
        realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v13);
        v9 = v7[1];
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
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v8);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else if (v4)
  {
    goto LABEL_17;
  }

  return Mutable;
}

void sub_247512028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderDirtyPrimDescriptorCopyType(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (!v3)
  {
    if (v2)
    {
      goto LABEL_6;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v2)
  {
    v4 = 0;
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    return v4;
  }

LABEL_6:
  v5 = **v2;
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    goto LABEL_11;
  }

  return v4;
}

void _RIOBuilderDirtyPrimDescriptorCFFinalize(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t RIOBuilderDirtyPropertyDescriptorCreate<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOBuilderDirtyPropertyDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyPropertyDescriptorGetTypeID::onceToken, &__block_literal_global_21);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a1[1];
    *(result + 16) = *a1;
    *(result + 24) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::PrimitiveDirtyPropertyDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475122A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

const void **realityio::WrappedCFRef<RIOBuilderDirtyPropertyDescriptor *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t RIOBuilderDirtyMetadataDescriptorCreate<std::shared_ptr<realityio::DirtyMetadataDescriptor const> &>(void *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOBuilderDirtyMetadataDescriptorGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderDirtyMetadataDescriptorGetTypeID::onceToken, &__block_literal_global_27);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    v4 = a1[1];
    *(result + 16) = *a1;
    *(result + 24) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2475123E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

const void **realityio::WrappedCFRef<RIOBuilderDirtyMetadataDescriptor *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::__shared_ptr_emplace<realityio::PrimitiveDirtyPrimDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285948DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__swap_out_circular_buffer(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v3);
    do
    {
      if ((*v2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__function::__func<RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors::$_0,std::allocator<RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors::$_0>,realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::Error> ()(RIOPxrTfToken *)>::operator()(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = *(*a1 + 16);
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v3 & 7) != 0)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v3 &= 0xFFFFFFFFFFFFFFF8;
      }

      *a2 = 1;
      *(a2 + 8) = v3;
      atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_release);
    }

    else
    {
      *a2 = 1;
      *(a2 + 8) = v3;
    }
  }

  else
  {
    v5 = std::system_category();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
  }
}

uint64_t std::__function::__func<RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors::$_0,std::allocator<RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors::$_0>,realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::Error> ()(RIOPxrTfToken *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<realityio::Result<pxrInternal__aapl__pxrReserved__::TfToken,realityio::Error> ()(RIOPxrTfToken *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<realityio::TypeNameDirtyPrimDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285948EC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::GetFromUsdAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, uint64_t a2@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v48 = 0;
  if (a3[1])
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(__p, &v47);
    v8 = a3[1];
    v9 = ~*(a3 + 2);
    v48 = v8;
    if ((v9 & 3) != 0)
    {
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 24))(a3, &v47);
    }

    else
    {
      v47 = *a3;
    }

    if (*&__p[8])
    {
      (*(*&__p[8] + 32))(__p);
    }
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(this))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&buf, this);
    v45 = 18;
    strcpy(__p, "/__stage.layerData");
    MEMORY[0x24C1A5D70](&v37, __p);
    v10 = buf;
    v11 = v37;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
    if (v45 < 0)
    {
      operator delete(*__p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf);
    if (v10 == v11)
    {
      TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(this);
      v13 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(TargetPath);
      *__p = v13;
      if ((v13 & 7) != 0)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
        {
          *__p = v14;
        }
      }

      v15 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(v15, __p, &v47);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_69:
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, &v47);
      goto LABEL_70;
    }

    v20 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v37, this);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&buf, v20, &v37);
    pxrInternal__aapl__pxrReserved__::UsdObject::As<pxrInternal__aapl__pxrReserved__::UsdAttribute>(&buf, __p);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
    if (*(&buf + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v37);
    if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(__p))
    {
LABEL_65:
      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[16]);
      if (*&__p[8])
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&__p[8]);
      }

      goto LABEL_69;
    }

    v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(this);
    v22 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v21);
    v37 = v22;
    if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v37 &= 0xFFFFFFFFFFFFFFF8;
    }

    v23 = MEMORY[0x24C1A5DE0](&buf, "__timeSamples");
    v24 = buf ^ v37;
    if ((buf & 7) != 0)
    {
      atomic_fetch_add_explicit((buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v24 <= 7)
    {
      v25 = *(realityio::logObjects(v23) + 24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(__p, &v35);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v35);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = Text;
        v27 = "Unexpected __timeSamples request on %s";
LABEL_84:
        _os_log_error_impl(&dword_247485000, v25, OS_LOG_TYPE_ERROR, v27, &buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v35);
        goto LABEL_62;
      }

      goto LABEL_62;
    }

    v30 = MEMORY[0x24C1A5DE0](&buf, "__timeValues");
    v31 = buf ^ v37;
    if ((buf & 7) != 0)
    {
      atomic_fetch_add_explicit((buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v31 <= 7)
    {
      v25 = *(realityio::logObjects(v30) + 24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(__p, &v35);
        v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v35);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v34;
        v27 = "Unexpected __timeValues request on %s";
        goto LABEL_84;
      }

LABEL_62:

      goto LABEL_63;
    }

    MEMORY[0x24C1A5DE0](&buf, "__typeName");
    v33 = buf ^ v37;
    if ((buf & 7) != 0)
    {
      atomic_fetch_add_explicit((buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v33 > 7)
    {
      if (!pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(__p, &v37, &v47))
      {
LABEL_63:
        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_65;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, &v47);
    }

    else
    {
      *a4 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(__p);
      a4[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfValueTypeName>(void)::ti + 1;
    }

    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[16]);
    if (*&__p[8])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&__p[8]);
    }
  }

  else
  {
    v16 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&buf, v16, this);
    pxrInternal__aapl__pxrReserved__::UsdObject::As<pxrInternal__aapl__pxrReserved__::UsdAttribute>(&buf, __p);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
    if (*(&buf + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
    }

    IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(__p);
    v18 = IsValid;
    if (IsValid)
    {
      v19 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v19);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, &v47);
    }

    else
    {
      v28 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v37, v28, this);
      if (v37 == 4)
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&buf, 4, &v38, &v39, &v40);
      }

      else
      {
        LODWORD(buf) = 4;
        *(&buf + 1) = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v43 = 0;
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

      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&buf))
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
        v29 = v37;
        if (v38 - v37 != 8)
        {
          v36 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy();
        }

        v36 = (&pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>(void)::ti + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35, v37);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v35 + 1, v29 + 1);
        pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v47, &v35);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
        v35 = &v37;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v35);
      }

      else if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(this))
      {
        v38 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>(void)::ti + 1;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37, this);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v37 + 1, this + 1);
        pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v47, &v37);
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v37);
      }

      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
      if (*(&buf + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&buf + 1));
      }
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[16]);
    if (*&__p[8])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&__p[8]);
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

LABEL_70:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v47);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_247512FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&__p);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v24 - 72));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfValueTypeName,pxrInternal__aapl__pxrReserved__::SdfValueTypeName,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfValueTypeName>(void)::ti + 1;
  return result;
}

void *realityio::SkeletalPoseComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v22[0] = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v7))
  {
    RESkeletalPoseComponentGetComponentType();
    v23 = REComponentCreateByClass();
    if (v23)
    {
      RERetain();
      v9 = v23;
    }

    else
    {
      v9 = 0;
    }

    v10 = v22[0];
    if (v22[0] != v9)
    {
      v22[0] = v9;
      v23 = v10;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v23);
    v22[2] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a4);
  realityio::WrappedRERef<REAsset *>::operator=(v22, v8);
  v11 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v23, (*a3 + v12));
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v13));
      v16 = atomic_load(&realityio::tokens::EcsTokens);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v16 + 376) ^ *NameToken) > 7)
      {
        goto LABEL_21;
      }

      v17 = v24;
      if (!v24)
      {
        goto LABEL_21;
      }

      if (!strcmp((*(*(v24 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        goto LABEL_18;
      }

      {
        break;
      }

LABEL_21:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v23);
      ++v14;
      v11 = *a2;
      v13 += 8;
      v12 += 16;
      if (v14 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_25;
      }
    }

    v17 = v24;
LABEL_18:
    if ((v17 & 4) != 0)
    {
      v18 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v23);
    }

    else
    {
      v18 = v23;
    }

    v19 = *v18;
    goto LABEL_21;
  }

LABEL_25:
  RESkeletalPoseComponentSetSkeletalPoseDefinition();
  RENetworkMarkComponentDirty();
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(v22);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247513600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::VtValue *a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPrimSpecGetTypeID()
{
  if (RIOPxrSdfPrimSpecGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPrimSpecGetTypeID::onceToken, &__block_literal_global_3);
  }

  return RIOPxrSdfPrimSpecGetTypeID::typeID;
}

void __RIOPxrSdfPrimSpecGetTypeID_block_invoke()
{
  if (!RIOPxrSdfPrimSpecGetTypeID::typeID)
  {
    RIOPxrSdfPrimSpecGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfPrimSpecCopyLayer(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(&v5, v1);
  v2 = RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(&v5);
  v3 = v6;
  if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return v2;
}

void sub_24751375C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t RIOPxrSdfLayerCreate<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>(uint64_t *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfLayerGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfLayerGetTypeID::onceToken, &__block_literal_global_11);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = a1[1];
    if (v4)
    {
      if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(a1 + 1) + 14))
      {
        v4 = *a1;
      }

      else
      {
        v4 = 0;
      }
    }

    *(Instance + 16) = v4;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((Instance + 16));
  }

  return Instance;
}

pxrInternal__aapl__pxrReserved__::SdfSpec *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(pxrInternal__aapl__pxrReserved__::SdfSpec *a1)
{
  v1 = a1;
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfPrimSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, ("N32pxrInternal__aapl__pxrReserved__11SdfPrimSpecE" & 0x7FFFFFFFFFFFFFFFLL), v2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v1;
}

void sub_247513904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPrimSpecCopyPath(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(&v4, v1);
  v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  return v2;
}

void sub_24751397C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPrimSpecGetSpecifier(uint64_t a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->((a1 + 16));
  v2 = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(v1) - 1;
  if (v2 < 3)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrSdfPrimSpecCopyAttribute(uint64_t a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->((a1 + 16));
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetAttributeAtPath(&v9, v3, (a2 + 16));
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v9))
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x277CBECE8];
    if (RIOPxrSdfAttributeSpecGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOPxrSdfAttributeSpecGetTypeID::onceToken, &__block_literal_global_29);
    }

    Instance = _CFRuntimeCreateInstance();
    v4 = Instance;
    if (Instance)
    {
      v7 = v9;
      *(Instance + 16) = v9;
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v9);
  return v4;
}

void sub_247513A80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void realityio::StageMetersPerUnitBuilder::StageMetersPerUnitBuilder(realityio::StageMetersPerUnitBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v6[26] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "StageMetersPerUnitBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kStageMetersPerUnitBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE52DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52DF8))
  {
    operator new();
  }

  v4[0] = _MergedGlobals_9;
  v4[1] = unk_27EE52DF0;
  if (unk_27EE52DF0)
  {
    atomic_fetch_add_explicit((unk_27EE52DF0 + 8), 1uLL, memory_order_relaxed);
  }

  realityio::EntityInputNoOutputStaticBuilder::EntityInputNoOutputStaticBuilder(this, a2, v6, __p, v4);
}

void sub_247513E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  v39 = *(v37 - 72);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  *(v37 - 104) = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v37 - 104));
  a25 = &a32;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a25);
  v40 = *(v37 - 88);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if ((a28 & 7) != 0)
  {
    atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A91B0](v36, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE52DF8);
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

uint64_t realityio::StageMetersPerUnitBuilder::run(realityio::StageMetersPerUnitBuilder *this, realityio::Inputs *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *buf = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(buf);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v14, buf);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
  v4 = v3;
  v5 = v15;
  if (v15 && atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(buf);
  v16 = v4;
  v7 = realityio::EntityBuilder::kInputName(v6);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v7, &v14);
  if (v14)
  {
    v8 = v15;
    v13 = v15;
    if (v15)
    {
      RERetain();
      v9 = *(a2 + 6);
      *buf = &unk_285949140;
      v18 = &v13;
      v19 = &v16;
      v20 = buf;
      (*(*v9 + 16))(v9, buf);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](buf);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = *(realityio::logObjects(v8) + 24);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "Stopping operation to set meters per unit transform because entity no longer exists", buf, 2u);
  }

LABEL_10:
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
  result = realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v14);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2475141D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a17);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a9);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a10);
  _Unwind_Resume(a1);
}

void realityio::StageMetersPerUnitBuilder::~StageMetersPerUnitBuilder(realityio::StageMetersPerUnitBuilder *this)
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

__n128 std::__function::__func<realityio::StageMetersPerUnitBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::StageMetersPerUnitBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285949140;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::StageMetersPerUnitBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::StageMetersPerUnitBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 8);
  RETransformComponentGetComponentType();
  v3 = *(a1 + 16);
  v11[0] = &unk_2859491B0;
  v11[1] = v3;
  v11[3] = v11;
  v4 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v11, v4);
  RENetworkMarkComponentDirty();
  v5 = std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v11);
  v6 = *(realityio::logObjects(v5) + 24);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = **(a1 + 16);
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_INFO, "Updating root entity scale based on metersPerUnit: %f", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<realityio::StageMetersPerUnitBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::StageMetersPerUnitBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25StageMetersPerUnitBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2859491B0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio25StageMetersPerUnitBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, void *a2)
{
  v2 = **(a1 + 8);
  *&v2 = v2;
  return MEMORY[0x282155000](*a2, vdupq_lane_s32(*&v2, 0));
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25StageMetersPerUnitBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio25StageMetersPerUnitBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrUsdVariantSetGetTypeID()
{
  if (RIOPxrUsdVariantSetGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdVariantSetGetTypeID::onceToken, &__block_literal_global_4);
  }

  return RIOPxrUsdVariantSetGetTypeID::typeID;
}

void __RIOPxrUsdVariantSetGetTypeID_block_invoke()
{
  if (!RIOPxrUsdVariantSetGetTypeID::typeID)
  {
    RIOPxrUsdVariantSetGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdVariantHasAuthoredVariant(uint64_t a1, char *a2)
{
  v10 = *(a1 + 16);
  v4 = *(a1 + 24);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (a1 + 36));
  v5 = *(a1 + 40);
  v14 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v15 = *(a1 + 48);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  HasAuthoredVariant = pxrInternal__aapl__pxrReserved__::UsdVariantSet::HasAuthoredVariant();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return HasAuthoredVariant;
}

void pxrInternal__aapl__pxrReserved__::UsdVariantSet::~UsdVariantSet(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 2));
  v3 = this[1];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 2));
  v3 = this[1];
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

uint64_t RIOPxrUsdVariantSetAddVariant(uint64_t a1, char *a2)
{
  v10 = *(a1 + 16);
  v4 = *(a1 + 24);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (a1 + 36));
  v5 = *(a1 + 40);
  v14 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v15 = *(a1 + 48);
  }

  v6 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(&v10);
  std::recursive_mutex::lock(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::AddVariant();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v6);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  result = v11;
  if (v11)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return result;
}

uint64_t realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(realityio::UsdLayerMutexTracker *a1)
{
  v2 = realityio::UsdLayerMutexTracker::instance(a1);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v12, a1);
    v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v12);
    EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v3);
    v5 = EditTarget[1];
    v10 = *EditTarget;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    v6 = v13;
    if (v13 && atomic_fetch_add_explicit((v13 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v7 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v2, &v10);
  v8 = v11;
  if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  return v7;
}

void sub_247514BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12)
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

__CFArray *RIOPxrUsdVariantSetCopyVariantNames(uint64_t a1)
{
  v10 = *(a1 + 16);
  v2 = *(a1 + 24);
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (a1 + 36));
  v3 = *(a1 + 40);
  v14 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v14 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantNames(v9, &v10);
  v5 = v9[0];
  v6 = v9[1];
  while (v5 != v6)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v16 = CFStringCreateWithCString(0, v7, 0x8000100u);
    CFArrayAppendValue(Mutable, v16);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v16);
    v5 += 24;
  }

  v16 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return Mutable;
}

void sub_247514DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

CFStringRef RIOPxrUsdVariantSetCopyVariantSelection(uint64_t a1)
{
  v9 = *(a1 + 16);
  v2 = *(a1 + 24);
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, (a1 + 36));
  v3 = *(a1 + 40);
  v13 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v14 = *(a1 + 48);
  }

  pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantSelection(__p, &v9);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  return v5;
}

uint64_t RIOPxrUsdVariantSetHasAuthoredVariantSelection(uint64_t a1)
{
  v6 = *(a1 + 16);
  v2 = *(a1 + 24);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, (a1 + 36));
  v3 = *(a1 + 40);
  v10 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  HasAuthoredVariantSelection = pxrInternal__aapl__pxrReserved__::UsdVariantSet::HasAuthoredVariantSelection();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return HasAuthoredVariantSelection;
}

void sub_2475150B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetHasAuthoredVariantSelectionOnLayer(uint64_t a1, uint64_t a2)
{
  v44 = *(a1 + 16);
  v4 = *(a1 + 24);
  v45 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v46, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v47, (a1 + 36));
  v5 = *(a1 + 40);
  v48 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v49 = *(a1 + 48);
  }

  v43 = *(a2 + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v43);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v49;
  }

  MEMORY[0x24C1A8260](&v40, &v44);
  v6 = v40;
  v7 = v41;
  if (v40 == v41)
  {
    v29 = 0;
  }

  else
  {
    while (1)
    {
      v8 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(v6);
      pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(&v38, v8);
      v9 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(v6);
      pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSelections(&v36, v9);
      if (pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string,std::string>>>::_Validate(&v36))
      {
        v10 = (*(*v36 + 48))(v36);
        v11 = *(*(*v36 + 48))(v36);
        v12 = &v36;
      }

      else
      {
        v12 = 0;
        v10 = 0;
        v11 = 0;
      }

      if (pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string,std::string>>>::_Validate(&v36))
      {
        v13 = v36;
        if (v36)
        {
          (*(*v36 + 48))(v36);
          v13 = v36;
          if (v36)
          {
            v13 = (*(*v36 + 48))(v36);
          }
        }

        v14 = (v13 + 8);
        v15 = &v36;
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      if (v15 != v12 || v14 != v11)
      {
        break;
      }

LABEL_60:
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v28 = v39;
      if (v39 && atomic_fetch_add_explicit((v39 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v28 + 8))(v28);
      }

      v6 = (v6 + 8);
      if (v6 == v7)
      {
        v29 = 0;
        goto LABEL_76;
      }
    }

    while (1)
    {
      if (!v12)
      {
        goto LABEL_31;
      }

      v16 = *v12;
      if (*v12)
      {
        v16 = (*(*v16 + 48))(v16);
      }

      if ((v16 + 8) == v11)
      {
LABEL_31:
        if (!v15)
        {
          goto LABEL_60;
        }

        v17 = *v15;
        if (*v15)
        {
          v17 = (*(*v17 + 48))(v17);
        }

        if (v14 == (v17 + 8))
        {
          goto LABEL_60;
        }

        if (!v12)
        {
          v50[0] = "sdf/mapEditProxy.h";
          v50[1] = "Dereference";
          v50[2] = 198;
          v50[3] = "static _PairProxy pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::Traits::Dereference(This *, const Type *, inner_iterator) [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
          v51 = 0;
          v52 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v50, "Dereferenced an invalid map proxy iterator");
        }
      }

      if (*(v11 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v11[4], v11[5]);
      }

      else
      {
        __p = *(v11 + 4);
      }

      v33 = v12;
      v34 = v10;
      v35 = v11;
      v18 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator==<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v38, &v43);
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v18)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v21 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v42.__r_.__value_.__l.__size_;
        }

        if (size == v21)
        {
          v22 = __p.__r_.__value_.__r.__words[0];
          v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v24 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
          if (!memcmp(v23, v24, size))
          {
            break;
          }
        }
      }

      if (v19 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v25 = v11[1];
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
          v26 = v11[2];
          v27 = *v26 == v11;
          v11 = v26;
        }

        while (!v27);
      }

      v11 = v26;
      if (v15 == v12)
      {
        v11 = v26;
        if (v14 == v26)
        {
          goto LABEL_60;
        }
      }
    }

    if (v19 < 0)
    {
      operator delete(v22);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    v30 = v39;
    if (v39 && atomic_fetch_add_explicit((v39 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v30 + 8))(v30);
    }

    v29 = 1;
  }

LABEL_76:
  v50[0] = &v40;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](v50);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v43);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
  if (v45)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v45);
  }

  return v29;
}

void sub_247515614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, atomic_uint *a32, void *a33)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&a32);
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::~UsdVariantSet(&a33);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetClearVariantSelection(uint64_t a1)
{
  v7 = *(a1 + 16);
  v2 = *(a1 + 24);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, (a1 + 36));
  v3 = *(a1 + 40);
  v11 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(&v7);
  std::recursive_mutex::lock(v4);
  v5 = pxrInternal__aapl__pxrReserved__::UsdVariantSet::ClearVariantSelection(&v7);
  std::recursive_mutex::unlock(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return v5;
}

void sub_247515828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetSetVariantSelection(uint64_t a1, char *a2)
{
  v11 = *(a1 + 16);
  v4 = *(a1 + 24);
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, (a1 + 36));
  v5 = *(a1 + 40);
  v15 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v15 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v16 = *(a1 + 48);
  }

  v6 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(&v11);
  std::recursive_mutex::lock(v6);
  std::string::basic_string[abi:ne200100]<0>(&__p, a2);
  v7 = pxrInternal__aapl__pxrReserved__::UsdVariantSet::SetVariantSelection();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v6);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
  }

  return v7;
}

uint64_t RIOPxrUsdVariantSetCopyPrim(uint64_t a1)
{
  v6 = *(a1 + 16);
  v2 = *(a1 + 24);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, (a1 + 36));
  v3 = *(a1 + 40);
  v10 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v12 = 1;
  v4 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v6, &v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return v4;
}

CFStringRef RIOPxrUsdVariantSetCopyName(uint64_t a1)
{
  v7 = *(a1 + 16);
  v2 = *(a1 + 24);
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, (a1 + 36));
  v3 = *(a1 + 40);
  v11 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return v5;
}

void sub_247515C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetIsValid(uint64_t a1)
{
  v6 = *(a1 + 16);
  v2 = *(a1 + 24);
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, (a1 + 36));
  v3 = *(a1 + 40);
  v10 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return IsValid;
}

void sub_247515DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdVariantSetCopyEditTarget(uint64_t a1)
{
  v16[7] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 16);
  v2 = *(a1 + 24);
  v9 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, (a1 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, (a1 + 36));
  v3 = *(a1 + 40);
  v12 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v12 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantEditTarget();
  v4 = RIOPxrUsdEditTargetCreate<pxrInternal__aapl__pxrReserved__::UsdEditTarget>(v14);
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(v16);
  v5 = v15;
  if (v15 && atomic_fetch_add_explicit((v15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_247515FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdEditTargetCreate<pxrInternal__aapl__pxrReserved__::UsdEditTarget>(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrUsdEditTargetGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrUsdEditTargetGetTypeID::onceToken, &__block_literal_global_26);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = *a1;
    *a1 = 0;
    *(a1 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::_Data((Instance + 32), a1 + 16);
    *(v4 + 72) = *(a1 + 56);
  }

  return v4;
}

void *_RIOPxrUsdVariantSetCFFinalize(void **a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  v2 = a1[5];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));
  result = a1[3];
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(result);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdEditTarget::~UsdEditTarget(pxrInternal__aapl__pxrReserved__::UsdEditTarget *this)
{
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data((this + 16));
  v2 = *(this + 1);
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v2 + 8))(v2);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data *this)
{
  v2 = *(this + 8);
  if (v2 > 2)
  {
    v5 = *(this + 1);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    *(this + 8) = v2 - 1;
    if (v2)
    {
      v3 = this;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v3 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v3);
        v3 = (v3 + 16);
        v4 = *(this + 8);
        *(this + 8) = v4 - 1;
      }

      while (v4);
    }
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string,std::string>,pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string,std::string>>>::_Validate(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  return 0;
}

BOOL pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator==<pxrInternal__aapl__pxrReserved__::SdfLayer>(uint64_t *a1, void *a2)
{
  if (pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::_GetUniqueIdentifier(a1))
  {
    if (!a1[1])
    {
      return 0;
    }

    v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(a1 + 1);
    v5 = *a1;
    if (*(v4 + 14) != 1 || v5 == 0)
    {
      return 0;
    }

    return v5 == *a2;
  }

  else
  {
    return *a2 == 0;
  }
}

_DWORD *pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::_Data(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 32);
  a1[8] = v4;
  *(a1 + 36) = *(a2 + 36);
  if (v4 > 2)
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else if (v4)
  {
    v5 = 16 * v4;
    do
    {
      v6 = std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100](a1, v2);
      v2 += 4;
      a1 = v6 + 4;
      v5 -= 16;
    }

    while (v5);
  }

  return v3;
}

{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 32);
  a1[8] = v4;
  *(a1 + 36) = *(a2 + 36);
  if (v4 > 2)
  {
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else if (v4)
  {
    v5 = 16 * v4;
    do
    {
      v6 = std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100](a1, v2);
      v2 += 4;
      a1 = v6 + 4;
      v5 -= 16;
    }

    while (v5);
  }

  return v3;
}

_DWORD *std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100](_DWORD *a1, _DWORD *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 2, a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 3, a2 + 3);
  return a1;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 2, a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1 + 3, a2 + 3);
  return a1;
}

void *realityio::TransformComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v66 = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v7))
  {
    RETransformComponentGetComponentType();
    v71 = REComponentCreateByClass();
    if (v71)
    {
      RERetain();
      v9 = v71;
    }

    else
    {
      v9 = 0;
    }

    v10 = v66;
    if (v66 != v9)
    {
      v66 = v9;
      v71 = v10;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v71);
    v72 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a4);
  realityio::WrappedRERef<REAsset *>::operator=(&v66, v8);
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v65, 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(v64, 1.0);
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  v11 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
      v17 = MEMORY[0x24C1A5DE0](&v71, "xformOpOrder");
      v18 = *NameToken;
      v19 = v71;
      if ((v71 & 7) != 0)
      {
        atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v19 ^ v18) <= 7)
      {
        v20 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v17, (*a3 + v13));
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(v20))
        {
          v21 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v71);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::operator=(v62, v21);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v71);
        goto LABEL_51;
      }

      v22 = realityio::TargetPaths::upAxisPath(v17);
      if (*(v11 + v12) == *v22)
      {
        v23 = atomic_load(MEMORY[0x277D86550]);
        if (!v23)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        v24 = *(v23 + 1352);
        *&v55 = v24;
        if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *&v55 = v55 & 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v67, (*a3 + v13));
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&v67))
        {
          if ((BYTE8(v67) & 4) != 0)
          {
            v25 = (*((*(&v67 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v67);
          }

          else
          {
            v25 = &v67;
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v55, v25);
        }

        v26 = atomic_load(MEMORY[0x277D86550]);
        if (!v26)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdGeomTokensType>>::_TryToCreateData();
        }

        if ((*(v26 + 1360) ^ v55) <= 7)
        {
          v72 = 0;
          v73 = 0;
          v71 = 0x3FF0000000000000;
          v74 = 0xC056800000000000;
          v27 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate();
          v28 = *v27;
          v29 = v27[1];
          v30 = v27[3];
          v65[2] = v27[2];
          v65[3] = v30;
          v65[0] = v28;
          v65[1] = v29;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v67);
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_50;
      }

      if (*(v11 + v12) != *realityio::TargetPaths::metersPerUnitPath(v22))
      {
        v35 = *a3;
        v71 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
        v36 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&v60, v71);
        v37 = v36;
        v38 = (v35 + v13);
        v39 = (v36 + 40);
        if (v35 + v13 != v36 + 40)
        {
          v40 = v35 + v13;
          if (*(v40 + 8))
          {
            pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v71, v39);
            v41 = *(v40 + 8);
            v42 = ~*(v40 + 8);
            *(v37 + 48) = v41;
            if ((v42 & 3) != 0)
            {
              (*((v41 & 0xFFFFFFFFFFFFFFF8) + 24))(v38, v39);
            }

            else
            {
              *v39 = *v38;
            }

            if (v72)
            {
              (*(v72 + 32))(&v71);
            }
          }

          else
          {
            v43 = *(v36 + 48);
            if (v43 && (*(v36 + 48) & 3) != 3)
            {
              (*((v43 & 0xFFFFFFFFFFFFFFF8) + 32))(v36 + 40);
            }

            *(v37 + 48) = 0;
          }
        }

        goto LABEL_51;
      }

      v31 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v71, (*a3 + v13));
      v32 = v72;
      v33.n128_u32[0] = 1008981770;
      if (v72)
      {
        break;
      }

LABEL_49:
      LODWORD(v67) = v33.n128_u32[0];
      DWORD1(v67) = v33.n128_u32[0];
      DWORD2(v67) = v33.n128_u32[0];
      v45 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetScale();
      v46 = *v45;
      v47 = v45[1];
      v48 = v45[3];
      v64[2] = v45[2];
      v64[3] = v48;
      v64[0] = v46;
      v64[1] = v47;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v71);
LABEL_50:
      v15 = 1;
LABEL_51:
      ++v14;
      v11 = *a2;
      v13 += 16;
      v12 += 8;
      if (v14 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_60;
      }
    }

    if (*((v72 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
    {
      if ((v72 & 4) == 0)
      {
LABEL_35:
        v34 = &v71;
LABEL_36:
        v33.n128_f32[0] = *v34;
        goto LABEL_49;
      }
    }

    else
    {
      v33.n128_u32[0] = 1008981770;
      if ((v72 & 4) == 0)
      {
        goto LABEL_49;
      }

      IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v31, MEMORY[0x277D827A8]);
      v33.n128_u32[0] = 1008981770;
      if (!IsImpl)
      {
        goto LABEL_49;
      }

      v32 = v72;
      if ((v72 & 4) == 0)
      {
        goto LABEL_35;
      }
    }

    v34 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(&v71, v33);
    goto LABEL_36;
  }

  v15 = 0;
LABEL_60:
  v59 = 0;
  if (getLocalTransformation(&v71, &v59, v62, &v60))
  {
    MEMORY[0x24C1A4BE0](&v67, &v71);
    if (v15)
    {
      v51 = v67;
      v52 = v68;
      v53 = v69;
      v54 = v70;
      pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
      v67 = v55;
      v68 = v56;
      v69 = v57;
      v70 = v58;
    }

    DWORD2(v55) = 0;
    *&v55 = 0;
    REDecomposeMatrix();
    RETransformComponentSetLocalSRT();
    RENetworkMarkComponentDirty();
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v60, v61[0]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v62);
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v66);
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247516B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, pxrInternal__aapl__pxrReserved__::VtValue *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int16 a57, char a58, char a59)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a30, a31);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&a33);
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(&a56);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
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

void *realityio::AnchoringComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v49 = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(v7))
  {
    REAnchoringComponentGetComponentType();
    __p = REComponentCreateByClass();
    if (__p)
    {
      RERetain();
      v9 = __p;
    }

    else
    {
      v9 = 0;
    }

    v10 = v49;
    if (v49 != v9)
    {
      v49 = v9;
      __p = v10;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&__p);
    RERelease();
    v51 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a4);
  realityio::WrappedRERef<REAsset *>::operator=(&v49, v8);
  v47 = 0;
  v48 = 0;
  __p = 0;
  v51 = 0;
  v52 = 0;
  memset(&v46, 0, sizeof(v46));
  v11 = *a2;
  if (a2[1] != *a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *a3;
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
      v17 = atomic_load(&realityio::tokens::EcsTokens);
      if (!v17)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
      }

      v18 = (v15 + v13);
      if ((*(v17 + 48) ^ *NameToken) <= 7)
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>((v15 + v13)))
        {
          break;
        }
      }

      v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
      v22 = atomic_load(&realityio::tokens::EcsTokens);
      if (!v22)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v22 + 56) ^ *v21) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>((v15 + v13)))
      {
        v23 = *(v15 + v13 + 8);
        if ((v23 & 4) != 0)
        {
          v24 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + v13);
          p_p = &v46;
        }

        else
        {
          p_p = &v46;
LABEL_21:
          v24 = *v18;
        }

        goto LABEL_22;
      }

      v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
      v26 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v26)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v26 + 64) ^ *v25) <= 7 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v15 + v13)))
      {
        v27 = *(v15 + v13 + 8);
        if ((v27 & 4) != 0)
        {
          v18 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + v13);
        }

        v28 = &v48;
      }

      else
      {
        v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
        v30 = atomic_load(&realityio::tokens::TransformBuilderTokens);
        if (!v30)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        if ((*(v30 + 72) ^ *v29) > 7 || !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v15 + v13)))
        {
          v32 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v11 + v12));
          v33 = atomic_load(&realityio::tokens::EcsTokens);
          if (!v33)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
          }

          if ((*(v33 + 40) ^ *v32) > 7)
          {
            goto LABEL_46;
          }

          v34 = *(v15 + v13 + 8);
          if (!v34)
          {
            goto LABEL_46;
          }

          if (*((v34 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
          {
            if ((v34 & 4) == 0)
            {
LABEL_41:
              v35 = *v18;
              goto LABEL_46;
            }
          }

          else
          {
            if ((v34 & 4) == 0 || !pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl((v15 + v13), MEMORY[0x277D827B0]))
            {
              goto LABEL_46;
            }

            v34 = *(v15 + v13 + 8);
            if ((v34 & 4) == 0)
            {
              goto LABEL_41;
            }
          }

          v18 = (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + v13);
          goto LABEL_41;
        }

        v31 = *(v15 + v13 + 8);
        if ((v31 & 4) != 0)
        {
          v18 = (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + v13);
        }

        v28 = &v47;
      }

      pxrInternal__aapl__pxrReserved__::TfToken::operator=(v28, v18);
LABEL_46:
      ++v14;
      v11 = *a2;
      v13 += 16;
      v12 += 8;
      if (v14 >= (a2[1] - *a2) >> 3)
      {
        goto LABEL_55;
      }
    }

    v19 = *(v15 + v13 + 8);
    if ((v19 & 4) == 0)
    {
      p_p = &__p;
      goto LABEL_21;
    }

    v24 = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + v13);
    p_p = &__p;
LABEL_22:
    std::string::operator=(p_p, v24);
    goto LABEL_46;
  }

LABEL_55:
  v36 = atomic_load(&realityio::tokens::TransformBuilderTokens);
  if (!v36)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v36 + 24) ^ v48) > 7)
  {
    v38 = atomic_load(&realityio::tokens::TransformBuilderTokens);
    if (!v38)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v38 + 16) ^ v48) > 7)
    {
      v39 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v39)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*v39 ^ v48) >= 8)
      {
        v41 = *(realityio::logObjects(v39) + 24);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v48 & 0xFFFFFFFFFFFFFFF8;
          if ((v48 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v43 = (v42 + 16);
            if (*(v42 + 39) < 0)
            {
              v43 = *v43;
            }
          }

          else
          {
            v43 = "";
          }

          *buf = 136315138;
          v54 = v43;
          _os_log_impl(&dword_247485000, v41, OS_LOG_TYPE_DEFAULT, "Unknown anchor type %s", buf, 0xCu);
        }
      }

      REAnchoringComponentSetDescriptorType();
    }

    else
    {
      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorResourceGroup();
      REAnchoringComponentSetDescriptorResourceName();
    }
  }

  else
  {
    REAnchoringComponentSetDescriptorType();
    if (v47)
    {
      v37 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v37)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v37 + 8) ^ v47) >= 8)
      {
        v40 = atomic_load(&realityio::tokens::TransformBuilderTokens);
        if (!v40)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        *(v40 + 32);
      }

      REAnchoringComponentSetDescriptorAlignment();
    }
  }

  REAnchoringComponentSetScaleFactor();
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p);
  }

  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v48 & 7) != 0)
  {
    atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v49);
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247517330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, pxrInternal__aapl__pxrReserved__::VtValue *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(&a18);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a9);
  _Unwind_Resume(a1);
}

_BYTE *RIO_MTLX::MaterialAssign::MATERIAL_ATTRIBUTE(RIO_MTLX::MaterialAssign *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::MaterialAssign::MATERIAL_ATTRIBUTE(void)::v, "material");
  }

  return RIO_MTLX::MaterialAssign::MATERIAL_ATTRIBUTE(void)::v;
}

void RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeGraph>(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  RIO_MTLX::Element::getQualifiedName(a1, a2, &__p);
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeGraph>(v8, &__p.__r_.__value_.__l.__data_, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    v9 = v12;
    *a3 = v11;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeGraph>(v8, &a2->__r_.__value_.__l.__data_, a3);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_2475175D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Look>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Look>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_247517720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::MaterialAssign>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v3 = *(a1 + 136);
  for (i = *(a1 + 144); v3 != i; v3 += 2)
  {
    v8 = *v3;
    v7 = v3[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::MaterialAssign>(v8, &v18);
    if (v18)
    {
      v9 = *(a2 + 23);
      v10 = v9 >= 0 ? *(a2 + 23) : *(a2 + 8);
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *(v8 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 32);
      }

      if (v11 == v10)
      {
        v15 = *(v8 + 24);
        v14 = v8 + 24;
        v13 = v15;
        v16 = (v12 >= 0 ? v14 : v13);
        v17 = v9 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
LABEL_19:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a3, &v18);
        }
      }
    }

    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void sub_24751785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Node>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Node>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_247517918(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeGraph>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_2475179B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id realityio::conversions::asScalar<float>()
{
  v0 = [MEMORY[0x277CCABB0] numberWithFloat:?];

  return v0;
}

id realityio::conversions::asScalar<double>()
{
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:?];

  return v0;
}

id realityio::conversions::asScalar<pxrInternal__aapl__pxrReserved__::pxr_half::half>(unsigned __int16 a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a1];

  return v1;
}

id realityio::conversions::asScalar<int>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInt:a1];

  return v1;
}

id realityio::conversions::asScalar<long>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithLong:a1];

  return v1;
}

id realityio::conversions::asScalar<long long>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];

  return v1;
}

id realityio::conversions::asScalar<short>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithShort:a1];

  return v1;
}

id realityio::conversions::asScalar<unsigned char>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a1];

  return v1;
}

id realityio::conversions::asScalar<unsigned int>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];

  return v1;
}

id realityio::conversions::asScalar<unsigned long>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];

  return v1;
}

id realityio::conversions::asScalar<unsigned long long>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];

  return v1;
}

id realityio::conversions::asScalar<unsigned short>(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a1];

  return v1;
}

id realityio::conversions::asScalar<pxrInternal__aapl__pxrReserved__::VtValue>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  pxrInternal__aapl__pxrReserved__::VtValue::GetType(a1);
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D82798], v2);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v1)];
    goto LABEL_39;
  }

  v6 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827A0], v4);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    v8 = *(v1 + 1);
    if (v8)
    {
      if (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16) == 1)
      {
LABEL_9:
        if ((v8 & 4) == 0)
        {
LABEL_10:
          v5 = [MEMORY[0x277CCABB0] numberWithChar:*v1];
          goto LABEL_39;
        }

        v42 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v1);
LABEL_35:
        v1 = v42;
        goto LABEL_10;
      }

      if ((v8 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v1, MEMORY[0x277D827A0]))
      {
        v8 = *(v1 + 1);
        goto LABEL_9;
      }
    }

    v42 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
    goto LABEL_35;
  }

  v9 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827A8], v7);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    v11 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<double>(v1);
    v5 = realityio::conversions::asScalar<double>();
  }

  else
  {
    v12 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827B0], v10);
    if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
    {
      v14 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(v1);
      v5 = realityio::conversions::asScalar<float>();
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
      {
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::pxr_half::half>(v1);
        v5 = realityio::conversions::asScalar<pxrInternal__aapl__pxrReserved__::pxr_half::half>(*v17);
      }

      else
      {
        v18 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827C0], v16);
        if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
        {
          v20 = pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v1);
          v5 = realityio::conversions::asScalar<int>(*v20);
        }

        else
        {
          v21 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827D0], v19);
          if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
          {
            v23 = pxrInternal__aapl__pxrReserved__::VtValue::Get<long>(v1);
            v5 = realityio::conversions::asScalar<long>(*v23);
          }

          else
          {
            v24 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827F8], v22);
            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              v26 = pxrInternal__aapl__pxrReserved__::VtValue::Get<long long>(v1);
              v5 = realityio::conversions::asScalar<long long>(*v26);
            }

            else
            {
              v27 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827E0], v25);
              if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
              {
                v29 = pxrInternal__aapl__pxrReserved__::VtValue::Get<short>(v1);
                v5 = realityio::conversions::asScalar<short>(*v29);
              }

              else
              {
                v30 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827E8], v28);
                if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
                {
                  v32 = pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned short>(v1);
                  v5 = realityio::conversions::asScalar<unsigned short>(*v32);
                }

                else
                {
                  v33 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827B8], v31);
                  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
                  {
                    v35 = pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(v1);
                    v5 = realityio::conversions::asScalar<unsigned char>(*v35);
                  }

                  else
                  {
                    v36 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827C8], v34);
                    if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
                    {
                      v38 = pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(v1);
                      v5 = realityio::conversions::asScalar<unsigned int>(*v38);
                    }

                    else
                    {
                      v39 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827D8], v37);
                      if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
                      {
                        v41 = pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long>(v1);
                        v5 = realityio::conversions::asScalar<unsigned long>(*v41);
                      }

                      else
                      {
                        v43 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D82800], v40);
                        if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
                        {
                          v44 = pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long long>(v1);
                          v5 = realityio::conversions::asScalar<unsigned long long>(*v44);
                        }

                        else
                        {
                          v5 = 0;
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

LABEL_39:

  return v5;
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::pxr_half::half>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 11)
    {
      goto LABEL_6;
    }

    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x277D827D0] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827D0]))
    {
      v2 = *(a1 + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return a1;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<long long>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 7)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827F8]))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<short>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 3)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827E0]))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned short>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 4)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827E8]))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned char>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 2)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D827B8]))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(MEMORY[0x277D827D8] + 8) & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827D8]))
    {
      v2 = *(a1 + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return a1;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned long long>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 8)
    {
      goto LABEL_6;
    }

    if ((v2 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82800]))
    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

id realityio::conversions::asString<pxrInternal__aapl__pxrReserved__::VtValue>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::GetType(a1);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    v5 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(a1);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

LABEL_9:
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    goto LABEL_10;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1);
    v12 = *(v9 + 24);
    v10 = v9 + 24;
    v11 = v12;
    if (*(v10 + 23) >= 0)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    goto LABEL_9;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    v16 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(a1) & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v6 = (v16 + 16);
      if (*(v16 + 39) < 0)
      {
        v6 = *v6;
      }
    }

    else
    {
      v6 = "";
    }

    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
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

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
    {
      goto LABEL_6;
    }

    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t realityio::conversions::usdToSGDataType(uint64_t a1, const std::type_info *a2)
{
  v93 = a1;
  v2 = atomic_load(&realityio::tokens::ShaderGraphUtilityTokens);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType>>::_TryToCreateData();
  }

  if ((*(v2 + 24) ^ a2->__vftable) > 7uLL)
  {
    v6 = atomic_load(&realityio::tokens::ShaderGraphUtilityTokens);
    if (!v6)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v6 + 32) ^ a2->__vftable) > 7uLL)
    {
      v9 = atomic_load(&realityio::tokens::ShaderGraphUtilityTokens);
      if (!v9)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType>>::_TryToCreateData();
      }

      if ((*(v9 + 40) ^ a2->__vftable) > 7uLL)
      {
        v13 = atomic_load(&realityio::tokens::ShaderGraphUtilityTokens);
        if (!v13)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType>>::_TryToCreateData();
        }

        if ((*(v13 + 48) ^ a2->__vftable) > 7uLL)
        {
          v17 = atomic_load(&realityio::tokens::ShaderGraphUtilityTokens);
          if (!v17)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType>>::_TryToCreateData();
          }

          if ((*(v17 + 64) ^ a2->__vftable) <= 7uLL)
          {
            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              return 49;
            }

            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              return 47;
            }

            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              return 52;
            }

            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              return 50;
            }
          }
        }

        else
        {
          if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
          {
            return 41;
          }

          if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
          {
            return 42;
          }

          if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
          {
            return 44;
          }

          if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
          {
            return 45;
          }
        }
      }

      else
      {
        if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
        {
          return 38;
        }

        if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
        {
          return 39;
        }
      }
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
      {
        return 35;
      }

      if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
      {
        return 36;
      }
    }
  }

  else
  {
    if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
    {
      return 32;
    }

    if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
    {
      return 33;
    }
  }

  v31 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D82798], a2);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 1;
  }

  v33 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827B8], v32);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 2;
  }

  v35 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827C0], v34);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 3;
  }

  v37 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827C8], v36);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 6;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 7;
  }

  v41 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D827B0], v40);
  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 9;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 10;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 11;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 12;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 13;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 18;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 20;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 21;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 22;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 24;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 25;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 26;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 28;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 29;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 30;
  }

  if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
  {
    return 31;
  }

  IsA = pxrInternal__aapl__pxrReserved__::TfType::IsA();
  if (IsA)
  {
    v76 = *(realityio::logObjects(IsA) + 48);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v76, OS_LOG_TYPE_ERROR, "We shouldn't see any double-precision matrices -- they are filtered up front.", buf, 2u);
    }

    return 14;
  }

  v78 = pxrInternal__aapl__pxrReserved__::TfType::IsA();
  if (v78)
  {
    v80 = *(realityio::logObjects(v78) + 48);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *v91 = 0;
      _os_log_error_impl(&dword_247485000, v80, OS_LOG_TYPE_ERROR, "We shouldn't see any double-precision matrices -- they are filtered up front.", v91, 2u);
    }

    return 15;
  }

  v82 = pxrInternal__aapl__pxrReserved__::TfType::IsA();
  if (v82)
  {
    v84 = *(realityio::logObjects(v82) + 48);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *v90 = 0;
      _os_log_error_impl(&dword_247485000, v84, OS_LOG_TYPE_ERROR, "We shouldn't see any double-precision matrices -- they are filtered up front.", v90, 2u);
    }
  }

  else
  {
    if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
    {
      return 14;
    }

    if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
    {
      return 15;
    }

    pxrInternal__aapl__pxrReserved__::TfType::IsA();
  }

  return 17;
}

uint64_t realityio::conversions::castToSupportedType(realityio::conversions *this, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(this))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(this);
    pxrInternal__aapl__pxrReserved__::GfMatrix2f::GfMatrix2f();
    pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(this);
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(this))
  {
    v3 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(this);
    MEMORY[0x24C1A4A90](v6, v3);
    pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(this);
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(this);
  if (result)
  {
    v5 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(this);
    MEMORY[0x24C1A4BE0](v6, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(this);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v2, a1);
  *(a1 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(void)::ti + 2;
  operator new();
}

void sub_2475191E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v2, a1);
  *(a1 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(void)::ti + 2;
  operator new();
}

void sub_2475192E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::VtValue::operator=<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v2, a1);
  *(a1 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(void)::ti + 2;
  operator new();
}

void sub_2475193EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<char>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::pxr_half::half>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<long>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<long long>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<short>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<unsigned short>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<unsigned char>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<unsigned long>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<unsigned long long>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::TfToken>(void *result)
{
  if (result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>::_Hash(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&>(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *a2;
  if (*a2 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = LODWORD(v5);
  if (*(a1 + 8))
  {
    v6 = ((*a1 + LODWORD(v5) + (*a1 + LODWORD(v5)) * (*a1 + LODWORD(v5))) >> 1) + LODWORD(v5);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&>(a1, a3, a4, a5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2f>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 16));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 36), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 36), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>::_Hash(float **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v4 = *a1 + 8;
  v5 = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(&v5, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v4);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v5));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  v10 = *a2;
  if (*a2 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = LODWORD(v10);
  if (*(a1 + 8))
  {
    v11 = ((*a1 + LODWORD(v10) + (*a1 + LODWORD(v10)) * (*a1 + LODWORD(v10))) >> 1) + LODWORD(v10);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9)
{
  v9 = *a2;
  if (*a2 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = LODWORD(v9);
  if (*(a1 + 8))
  {
    v10 = ((*a1 + LODWORD(v9) + (*a1 + LODWORD(v9)) * (*a1 + LODWORD(v9))) >> 1) + LODWORD(v9);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8)
{
  v8 = *a2;
  if (*a2 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = LODWORD(v8);
  if (*(a1 + 8))
  {
    v9 = ((*a1 + LODWORD(v8) + (*a1 + LODWORD(v8)) * (*a1 + LODWORD(v8))) >> 1) + LODWORD(v8);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *a2;
  if (*a2 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = LODWORD(v7);
  if (*(a1 + 8))
  {
    v8 = ((*a1 + LODWORD(v7) + (*a1 + LODWORD(v7)) * (*a1 + LODWORD(v7))) >> 1) + LODWORD(v7);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  if (*a2 == 0.0)
  {
    v6 = 0.0;
  }

  v7 = LODWORD(v6);
  if (*(a1 + 8))
  {
    v7 = ((*a1 + LODWORD(v6) + (*a1 + LODWORD(v6)) * (*a1 + LODWORD(v6))) >> 1) + LODWORD(v6);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3f>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 36));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 64), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 64), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>::_Hash(float **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12 = 0;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(&v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16, float *a17)
{
  v17 = *a2;
  if (*a2 == 0.0)
  {
    v17 = 0.0;
  }

  v18 = LODWORD(v17);
  if (*(a1 + 8))
  {
    v18 = ((*a1 + LODWORD(v17) + (*a1 + LODWORD(v17)) * (*a1 + LODWORD(v17))) >> 1) + LODWORD(v17);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v18;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16)
{
  v16 = *a2;
  if (*a2 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = LODWORD(v16);
  if (*(a1 + 8))
  {
    v17 = ((*a1 + LODWORD(v16) + (*a1 + LODWORD(v16)) * (*a1 + LODWORD(v16))) >> 1) + LODWORD(v16);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14, float *a15)
{
  v15 = *a2;
  if (*a2 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = LODWORD(v15);
  if (*(a1 + 8))
  {
    v16 = ((*a1 + LODWORD(v15) + (*a1 + LODWORD(v15)) * (*a1 + LODWORD(v15))) >> 1) + LODWORD(v15);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13, float *a14)
{
  v14 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = LODWORD(v14);
  if (*(a1 + 8))
  {
    v15 = ((*a1 + LODWORD(v14) + (*a1 + LODWORD(v14)) * (*a1 + LODWORD(v14))) >> 1) + LODWORD(v14);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12, float *a13)
{
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = LODWORD(v13);
  if (*(a1 + 8))
  {
    v14 = ((*a1 + LODWORD(v13) + (*a1 + LODWORD(v13)) * (*a1 + LODWORD(v13))) >> 1) + LODWORD(v13);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = LODWORD(v12);
  if (*(a1 + 8))
  {
    v13 = ((*a1 + LODWORD(v12) + (*a1 + LODWORD(v12)) * (*a1 + LODWORD(v12))) >> 1) + LODWORD(v12);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11)
{
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v11 = 0.0;
  }

  v12 = LODWORD(v11);
  if (*(a1 + 8))
  {
    v12 = ((*a1 + LODWORD(v11) + (*a1 + LODWORD(v11)) * (*a1 + LODWORD(v11))) >> 1) + LODWORD(v11);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&,float const&>(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 64));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::_Tf_RegistryFunctionBar0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName();
  v0 = pxrInternal__aapl__pxrReserved__::TfDebug::_Data<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>::nodes();

  return MEMORY[0x282206920](v0, "RIO_USDMTLX_READER", "RealityIO_UsdMtlx reader details");
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDebug::_Data<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>::nodes()
{
  {
    operator new();
  }

  return pxrInternal__aapl__pxrReserved__::TfDebug::_Data<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>::nodes(void)::nodes;
}

void *realityio::AnimationComponentAction::operator()@<X0>(void *a1@<X2>, pxrInternal__aapl__pxrReserved__::VtValue *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a2 + 1) = 0;
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v12, a2);
    v4 = a1[1];
    v5 = ~*(a1 + 2);
    *(a2 + 1) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a1, a2);
    }

    else
    {
      *a2 = *a1;
    }

    if (v13)
    {
      (*(v13 + 32))(&v12);
    }
  }

  v11[0] = 0;
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REComponent *>>(a2))
  {
    REAnimationComponentGetComponentType();
    v7 = REComponentCreateByClass();
    v12 = v7;
    v8 = v11[0];
    if (v11[0] != v7)
    {
      v11[0] = v7;
      v12 = v8;
    }

    realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v12);
    v11[2] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy();
  }

  v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REComponent *>>(a2);
  realityio::WrappedRERef<REAsset *>::operator=(v11, v6);
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24751AB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::UsdStageDelta::UsdStageDelta(void *a1, void *a2, uint64_t a3)
{
  *a1 = &unk_285949620;
  v5 = a1 + 2;
  a1[1] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(a1 + 1);
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::map[abi:ne200100](v5, a3);
  memset(v7, 0, sizeof(v7));
  v8 = 1065353216;
  a1[5] = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set((a1 + 6), v7);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v7);
  return a1;
}

void sub_24751AC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a9);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(v11, *(v10 + 24));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v9);
  _Unwind_Resume(a1);
}

void realityio::UsdStageDelta::setPrimDeltaForPrimPath(realityio::UsdStageDelta *this, const realityio::UsdPrimDelta *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 16, a3);
  if ((this + 24) == v6)
  {
    v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(this + 16, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v8 + 48, a2 + 2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v8 + 52, a2 + 3);
    *(v8 + 56) = *(a2 + 16);
    if ((v8 + 40) != a2)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *> *,long>>((v8 + 64), *(a2 + 3), a2 + 4);
      *(v8 + 128) = *(a2 + 22);
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>((v8 + 96), *(a2 + 9), 0);
    }
  }

  else
  {
    v7 = (v6 + 40);

    realityio::UsdPrimDelta::updateWithPrimDelta(v7, a2);
  }
}

void realityio::UsdStageDelta::updateWithStageDelta(realityio::UsdStageDelta *this, const realityio::UsdStageDelta *a2)
{
  if (*(this + 1) == *(a2 + 1))
  {
    for (i = *(a2 + 8); i; i = *i)
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(this + 6, i + 2);
    }

    v5 = *(a2 + 2);
    v6 = a2 + 24;
    if (v5 != v6)
    {
      do
      {
        realityio::UsdStageDelta::setPrimDeltaForPrimPath(this, (v5 + 40), (v5 + 32));
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }

      while (v8 != v6);
    }
  }
}

const void **realityio::UsdStageDelta::description@<X0>(realityio::UsdStageDelta *this@<X0>, CFStringRef *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v20[0] = &unk_285949660;
  v21 = v20;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = *(this + 2);
  if (v6 != (this + 24))
  {
    v7 = MEMORY[0x277CBF128];
    do
    {
      v8 = CFArrayCreateMutable(0, 0, v7);
      if (!v21)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v21 + 48))(&value);
      CFArrayAppendValue(v8, value);
      (*(*(v6 + 5) + 16))(&v18);
      CFArrayAppendValue(v8, v18);
      v10 = realityio::joinAsCFStringRef(v8, ": ", v9);
      CFRelease(v8);
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v18);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
      v11 = *(v6 + 1);
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
          v12 = *(v6 + 2);
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != (this + 24));
  }

  v14 = realityio::joinAsCFStringRef(Mutable, ", ", v4);
  CFRelease(Mutable);
  v17 = v14;
  std::__function::__value_func<realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v20);
  *a2 = 0;
  realityio::UsdMetadataDelta::description((this + 40), &value);
  *a2 = CFStringCreateWithFormat(0, 0, @"<UsdStageDelta: %p { stage: %p, metadata: %@, prim deltas: (%lu) [ %@ ] }>", this, this + 8, value, *(this + 4), v17);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
  result = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24751B0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>();
  }

  return result;
}

void sub_24751B288(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

_DWORD *_ZNSt3__14pairIKN32pxrInternal__aapl__pxrReserved__7SdfPathEN9realityio12UsdPrimDeltaEEC2B8ne200100IJRS3_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSA_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSJ_IJXspT2_EEEE(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, *a2);
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (v3 + 4));
  v6 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v5);
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  realityio::UsdPrimDelta::UsdPrimDelta((a1 + 2), v6, 0, &v8);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(&v8, v9[0]);
  return a1;
}

void sub_24751B318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(&a10, a11);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v11);
  _Unwind_Resume(a1);
}

CFStringRef std::__function::__func<realityio::UsdStageDelta::description(void)::$_0,std::allocator<realityio::UsdStageDelta::description(void)::$_0>,realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::operator()@<X0>(pxrInternal__aapl__pxrReserved__::SdfPath *this@<X1>, CFStringRef *a2@<X8>)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(this);
  if (*(String + 23) >= 0)
  {
    v4 = String;
  }

  else
  {
    v4 = *String;
  }

  result = CFStringCreateWithCString(0, v4, 0x8000100u);
  *a2 = result;
  return result;
}

uint64_t std::__function::__func<realityio::UsdStageDelta::description(void)::$_0,std::allocator<realityio::UsdStageDelta::description(void)::$_0>,realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<realityio::WrappedCFRef<__CFString const*> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t realityio::AnimationLibraryAssetAction::annotateSubTimelines(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4, uint64_t a5)
{
  REAssetCopyDependencyArray();
  Size = REAssetDynamicArrayGetSize();
  if (Size)
  {
    v9 = Size;
    v10 = 0;
    v19 = *(MEMORY[0x277D82828] + 24);
    v20 = *MEMORY[0x277D82828];
    do
    {
      Asset = REAssetDynamicArrayGetAsset();
      Type = REAssetGetType();
      if (CFStringCompare(Type, @"Timeline", 0) == kCFCompareEqualTo)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
        v13 = *(a2 + 23);
        if (v13 >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        if (v13 >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = *(a2 + 8);
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v14, v15);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "_subTimeline_", 13);
        MEMORY[0x24C1A8F30](v17, v10);
        v25 = Asset;
        if (Asset)
        {
          RERetain();
        }

        std::stringbuf::str();
        pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v22, a4);
        realityio::ECSAction::addAsset(a1, &v25, __p, &v22);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v25);
        std::stringbuf::str();
        realityio::AnimationLibraryAssetAction::annotateSubTimelines(a1, __p, Asset, a4, a5);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v26 = v20;
        *(&v26 + *(v20 - 24)) = v19;
        v27 = MEMORY[0x277D82878] + 16;
        if (v29 < 0)
        {
          operator delete(v28[7].__locale_);
        }

        v27 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v28);
        std::ostream::~ostream();
        MEMORY[0x24C1A9110](&v30);
      }

      ++v10;
    }

    while (v9 != v10);
  }

  return RERelease();
}

void sub_24751B780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  std::ostringstream::~ostringstream(&a23, MEMORY[0x277D82828]);
  MEMORY[0x24C1A9110](v25 + 112);
  _Unwind_Resume(a1);
}

void realityio::ECSAction::addAsset(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a1 + 16);
  if (v4 && *(v4 + 200))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/__root");
    MEMORY[0x24C1A5D70](&v15, __p);
    v9 = *a4;
    v10 = v15;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(a1 + 16);
    v12 = *(v11 + 216);
    if (v9 == v10)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "/model");
      MEMORY[0x24C1A5D70](&v15, __p);
      realityio::LiveSceneManager::addAsset(v12, a2, a3, &v15);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      realityio::LiveSceneManager::addAsset(*(v11 + 216), a2, a3, a4);
    }
  }
}

void sub_24751B924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void realityio::AnimationLibraryAssetAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t a2@<X0>, realityio *a3@<X1>, uint64_t *a4@<X3>, void *a5@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a6@<X8>)
{
  v207 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a6, a1);
  v176 = a2;
  v7 = *(a2 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  v9 = MEMORY[0x24C1A4230](ServiceLocator);
  __p = 0;
  v200 = 0;
  v201 = 0;
  memset(v198, 0, sizeof(v198));
  v185.__r_.__value_.__r.__words[0] = 0;
  v195 = 0;
  v192 = 0;
  v189 = 0;
  realityio::getAnimInputControlsFromInputs(a4, a5, &v185, &v195, &v192, &v189);
  v10 = *&v195;
  v11 = *&v189;
  v12 = *&v192;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  realityio::entityPath(a3, &v204);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v204);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, *Name, *(Name + 8));
  }

  else
  {
    v14 = *Name;
    v188.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v188.__r_.__value_.__l.__data_ = v14;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v175 = v9;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v204);
  v15 = *a4;
  if (a4[1] != *a4)
  {
    v16 = 0;
    v180 = 0;
    v17 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v204, (*a5 + 16 * v16));
      size = v204.__r_.__value_.__l.__size_;
      if (v204.__r_.__value_.__l.__size_)
      {
        if (strcmp((*(*(v204.__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayIN9realityio12WrappedRERefIP7REAssetEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
        {
          {
            goto LABEL_48;
          }

          size = v204.__r_.__value_.__l.__size_;
        }

        if ((size & 4) != 0)
        {
          v19 = (*((size & 0xFFFFFFFFFFFFFFF8) + 168))(&v204);
        }

        else
        {
          v19 = v204.__r_.__value_.__r.__words[0];
        }

        if (*v19)
        {
          v20 = v19[4];
          v21 = 8 * *v19;
          v22 = (v15 + 8 * v16);
          do
          {
            v23 = *v20;
            RETimelineDefinitionCreateFromTimeline();
            TimelineType = RETimelineDefinitionGetTimelineType();
            RERelease();
            v25 = *v20;
            v26 = v200;
            if (v200 >= v201)
            {
              v28 = (v200 - __p) >> 3;
              if ((v28 + 1) >> 61)
              {
                std::vector<realityio::WrappedRERef<REAsset *>>::__throw_length_error[abi:ne200100]();
              }

              v29 = (v201 - __p) >> 2;
              if (v29 <= v28 + 1)
              {
                v29 = v28 + 1;
              }

              if (v201 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v29;
              }

              if (v30)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<REComponentClass *>>(&__p, v30);
              }

              v31 = (8 * v28);
              *v31 = v25;
              v27 = 8 * v28 + 8;
              v32 = v31 - (v200 - __p);
              memcpy(v32, __p, v200 - __p);
              v33 = __p;
              __p = v32;
              v200 = v27;
              v201 = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v200 = v25;
              v27 = (v26 + 8);
            }

            v200 = v27;
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v185, v22);
            v34 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v185);
            std::vector<std::string>::push_back[abi:ne200100](v198, v34);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v185);
            NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v22);
            v36 = atomic_load(&realityio::tokens::EcsTokens);
            if (!v36)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
            }

            if ((*(v36 + 424) ^ *NameToken) > 7)
            {
              v40 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v22);
              v41 = atomic_load(&realityio::tokens::EcsTokens);
              if (!v41)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
              }

              if ((*(v41 + 360) ^ *v40) > 7)
              {
                v43 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v22);
                v44 = atomic_load(&realityio::tokens::EcsTokens);
                if (!v44)
                {
                  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
                }

                if ((*(v44 + 376) ^ *v43) <= 7)
                {
                  v177 = *v20;
                }

                goto LABEL_33;
              }

              if (TimelineType == 32)
              {
                pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v185, a3);
                pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, v22);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v185);
                v42 = *v20;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v185, v22);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v185.__r_.__value_.__r.__words + 1, v22 + 1);
                v185.__r_.__value_.__l.__size_ = v42;
                std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::push_back[abi:ne200100](&v189, &v185);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              }

              else
              {
                pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v185, a3);
                pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, v22);
                v45 = v185.__r_.__value_.__r.__words[0];
                v46 = v183[0];
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v185);
                v47 = *v20;
                v48 = v180;
                if (v45 == v46)
                {
                  v48 = *v20;
                }

                v180 = v48;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v185, v22);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v185.__r_.__value_.__r.__words + 1, v22 + 1);
                v185.__r_.__value_.__l.__size_ = v47;
                std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::push_back[abi:ne200100](&v195, &v185);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              }
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v185, a3);
              pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, v22);
              v37 = v185.__r_.__value_.__r.__words[0];
              v38 = v183[0];
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v185);
              v39 = *v20;
              if (v37 == v38)
              {
                v17 = *v20;
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v185, v22);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v185.__r_.__value_.__r.__words + 1, v22 + 1);
              v185.__r_.__value_.__l.__size_ = v39;
              std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::push_back[abi:ne200100](&v192, &v185);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            }

            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v185);
LABEL_33:
            ++v20;
            v21 -= 8;
          }

          while (v21);
        }
      }

LABEL_48:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v204);
      ++v16;
      v15 = *a4;
      if (v16 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_52;
      }
    }
  }

  v17 = 0;
  v180 = 0;
LABEL_52:
  realityio::entityPath(a3, &v185);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v185);
  realityio::TimelineGroupFactory::TimelineGroupFactory(&v204, String);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v185);
  realityio::entityPath(a3, v183);
  v50 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v183);
  realityio::TimelineGroupFactory::TimelineGroupFactory(&v185, v50);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v51 = v10 / v11;
  v52 = v12 / v11;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
  v53 = v193;
  v54 = v192;
  if (v193 == v192)
  {
    v68 = v195;
    v69 = v196;
    if (v196 == v195 && v190 == v189)
    {
      goto LABEL_85;
    }
  }

  else
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, a3);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, v54);
      v55 = v183[0];
      v56 = v203.__r_.__value_.__r.__words[0];
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
      v57 = *(v54 + 1);
      if (v55 == v56)
      {
        realityio::entityPath(a3, &v203);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
        std::string::basic_string[abi:ne200100]<0>(v183, Text);
        v59 = v51;
        v60 = v52;
        realityio::TimelineGroupFactory::addTimeline(&v204, v57, v183, "entitySceneClip", v59, v60);
        if (SHIBYTE(v184) < 0)
        {
          operator delete(v183[0]);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
        v61 = *(v54 + 1);
        realityio::entityPath(a3, &v203);
        v62 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
        std::string::basic_string[abi:ne200100]<0>(v183, v62);
        v63 = v51;
        v64 = v52;
        realityio::TimelineGroupFactory::addTimeline(&v185, v61, v183, "defaultSceneClip", v63, v64);
        if (SHIBYTE(v184) < 0)
        {
          operator delete(v183[0]);
        }
      }

      else
      {
        realityio::entityPath(v54, &v203);
        v65 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
        std::string::basic_string[abi:ne200100]<0>(v183, v65);
        v66 = v51;
        v67 = v52;
        realityio::TimelineGroupFactory::addTimeline(&v185, v57, v183, "childSceneClip", v66, v67);
        if (SHIBYTE(v184) < 0)
        {
          operator delete(v183[0]);
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
      v54 = (v54 + 16);
    }

    while (v54 != v53);
    v68 = v195;
    v69 = v196;
  }

  for (; v68 != v69; v68 = (v68 + 16))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, v68);
    v70 = v183[0];
    v71 = v203.__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
    v72 = *(v68 + 1);
    if (v70 == v71)
    {
      realityio::entityPath(a3, &v203);
      v73 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
      std::string::basic_string[abi:ne200100]<0>(v183, v73);
      v74 = v51;
      v75 = v52;
      realityio::TimelineGroupFactory::addTimeline(&v204, v72, v183, "entitySceneClip", v74, v75);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
      v76 = *(v68 + 1);
      realityio::entityPath(a3, &v203);
      v77 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
      std::string::basic_string[abi:ne200100]<0>(v183, v77);
      v78 = v51;
      v79 = v52;
      realityio::TimelineGroupFactory::addTimeline(&v185, v76, v183, "defaultSceneClip", v78, v79);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    else
    {
      realityio::entityPath(v68, &v203);
      v80 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
      std::string::basic_string[abi:ne200100]<0>(v183, v80);
      v81 = v51;
      v82 = v52;
      realityio::TimelineGroupFactory::addTimeline(&v185, v72, v183, "childSceneClip", v81, v82);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
  }

  v83 = v189;
  for (i = v190; v83 != i; v83 = (v83 + 16))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, v83);
    v85 = v183[0];
    v86 = v203.__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
    v87 = *(v83 + 1);
    if (v85 == v86)
    {
      realityio::entityPath(a3, &v203);
      v88 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
      std::string::basic_string[abi:ne200100]<0>(v183, v88);
      v89 = v51;
      v90 = v52;
      realityio::TimelineGroupFactory::addTimeline(&v204, v87, v183, "entitySceneClip", v89, v90);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
      v91 = *(v83 + 1);
      realityio::entityPath(a3, &v203);
      v92 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
      std::string::basic_string[abi:ne200100]<0>(v183, v92);
      v93 = v51;
      v94 = v52;
      realityio::TimelineGroupFactory::addTimeline(&v185, v91, v183, "defaultSceneClip", v93, v94);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    else
    {
      realityio::entityPath(v83, &v203);
      v95 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v203);
      std::string::basic_string[abi:ne200100]<0>(v183, v95);
      v96 = v51;
      v97 = v52;
      realityio::TimelineGroupFactory::addTimeline(&v185, v87, v183, "childSceneClip", v96, v97);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
  }

LABEL_85:
  if (v180 | v17 || v206 != v205 || v187 != v186)
  {
    REAnimationLibraryDefinitionCreate();
    if (v180 | v17 || v206 != v205)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, a3);
      v98 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v183);
      if (*(v98 + 23) < 0)
      {
        v99 = *v98;
      }

      REAnimationSceneEntityDefinitionCreate();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
      if (v180)
      {
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset();
      }

      if (v17)
      {
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationSceneEntityDefinitionSetHasTransformAnimations();
      }

      v100 = v189;
      if (v190 != v189)
      {
        v101 = 0;
        v102 = 0;
        while (1)
        {
          v103 = *(v100 + v101 + 8);
          REAnimationLibraryDefinitionAddEntryAsset();
          v104 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v189 + v101));
          v105 = v104;
          if (*(v104 + 23) < 0)
          {
            v106 = *v104;
          }

          REAnimationLibraryDefinitionAddKeyedEntryIndex();
          std::string::basic_string[abi:ne200100]<0>(v183, "");
          v107 = HIBYTE(v184);
          if (v184 >= 0)
          {
            v108 = HIBYTE(v184);
          }

          else
          {
            v108 = v183[1];
          }

          v109 = *(v105 + 23);
          v110 = v109;
          if ((v109 & 0x80u) != 0)
          {
            v109 = v105[1];
          }

          if (v108 == v109)
          {
            if (v184 >= 0)
            {
              v111 = v183;
            }

            else
            {
              v111 = v183[0];
            }

            if (v110 < 0)
            {
              v105 = *v105;
            }

            if (!memcmp(v111, v105, v108))
            {
              break;
            }
          }

          if (v107 < 0)
          {
            goto LABEL_113;
          }

LABEL_114:
          ++v102;
          v100 = v189;
          v101 += 16;
          if (v102 >= (v190 - v189) >> 4)
          {
            goto LABEL_118;
          }
        }

        REAnimationLibraryDefinitionSetDefaultEntryKey();
        if ((v184 & 0x8000000000000000) == 0)
        {
          goto LABEL_114;
        }

LABEL_113:
        operator delete(v183[0]);
        goto LABEL_114;
      }

LABEL_118:
      TimelineAsset = realityio::TimelineGroupFactory::createTimelineAsset(&v204.__r_.__value_.__l.__data_, v175, "default scene animation");
      v113 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
      REAnimationLibraryDefinitionAddEntryAsset();
      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v114 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v114 = v188.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v202, v114 + 1);
      if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v115 = &v202;
      }

      else
      {
        v115 = v202.__r_.__value_.__r.__words[0];
      }

      if (v114)
      {
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v116 = &v188;
        }

        else
        {
          v116 = v188.__r_.__value_.__r.__words[0];
        }

        memmove(v115, v116, v114);
      }

      *(&v115->__r_.__value_.__l.__data_ + v114) = 46;
      v117 = std::string::append(&v202, "timelineGroup.");
      v118 = *&v117->__r_.__value_.__l.__data_;
      v203.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
      *&v203.__r_.__value_.__l.__data_ = v118;
      v117->__r_.__value_.__l.__size_ = 0;
      v117->__r_.__value_.__r.__words[2] = 0;
      v117->__r_.__value_.__r.__words[0] = 0;
      v119 = std::string::append(&v203, "default scene animation");
      v120 = *&v119->__r_.__value_.__l.__data_;
      v184 = v119->__r_.__value_.__r.__words[2];
      *v183 = v120;
      v119->__r_.__value_.__l.__size_ = 0;
      v119->__r_.__value_.__r.__words[2] = 0;
      v119->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }

      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v121 = v188.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v182, v121 + 1);
      if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = &v182;
      }

      else
      {
        v122 = v182.__r_.__value_.__r.__words[0];
      }

      if (v121)
      {
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v123 = &v188;
        }

        else
        {
          v123 = v188.__r_.__value_.__r.__words[0];
        }

        memmove(v122, v123, v121);
      }

      *(&v122->__r_.__value_.__l.__data_ + v121) = 46;
      v124 = std::string::append(&v182, "entityAnimationScene.");
      v125 = *&v124->__r_.__value_.__l.__data_;
      v202.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
      *&v202.__r_.__value_.__l.__data_ = v125;
      v124->__r_.__value_.__l.__size_ = 0;
      v124->__r_.__value_.__r.__words[2] = 0;
      v124->__r_.__value_.__r.__words[0] = 0;
      v126 = std::string::append(&v202, "default scene animation");
      v127 = *&v126->__r_.__value_.__l.__data_;
      v203.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
      *&v203.__r_.__value_.__l.__data_ = v127;
      v126->__r_.__value_.__l.__size_ = 0;
      v126->__r_.__value_.__r.__words[2] = 0;
      v126->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      v202.__r_.__value_.__r.__words[0] = TimelineAsset;
      if (TimelineAsset)
      {
        RERetain();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a3);
      realityio::ECSAction::addAsset(v176, &v202, v183, &v182);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v202);
      v202.__r_.__value_.__r.__words[0] = v113;
      if (v113)
      {
        RERetain();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a3);
      realityio::ECSAction::addAsset(v176, &v202, &v203, &v182);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v202);
      RERelease();
      RERelease();
      RERelease();
      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    if (v187 != v186)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, a3);
      v128 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v183);
      if (*(v128 + 23) < 0)
      {
        v129 = *v128;
      }

      REAnimationSceneEntityDefinitionCreate();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
      if (v180)
      {
        REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset();
      }

      if (v17)
      {
        REAnimationSceneEntityDefinitionSetHasTransformAnimations();
      }

      v130 = realityio::TimelineGroupFactory::createTimelineAsset(&v185.__r_.__value_.__l.__data_, v175, "default subtree animation");
      v131 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
      std::string::basic_string[abi:ne200100]<0>(v183, "default subtree animation");
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, a3);
      realityio::AnimationLibraryAssetAction::annotateSubTimelines(v176, v183, v131, &v203, v175);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }

      REAnimationLibraryDefinitionAddEntryAsset();
      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v132 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v132 = v188.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v202, v132 + 1);
      if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &v202;
      }

      else
      {
        v133 = v202.__r_.__value_.__r.__words[0];
      }

      if (v132)
      {
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v134 = &v188;
        }

        else
        {
          v134 = v188.__r_.__value_.__r.__words[0];
        }

        memmove(v133, v134, v132);
      }

      *(&v133->__r_.__value_.__l.__data_ + v132) = 46;
      v135 = std::string::append(&v202, "timelineGroup.");
      v136 = *&v135->__r_.__value_.__l.__data_;
      v203.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
      *&v203.__r_.__value_.__l.__data_ = v136;
      v135->__r_.__value_.__l.__size_ = 0;
      v135->__r_.__value_.__r.__words[2] = 0;
      v135->__r_.__value_.__r.__words[0] = 0;
      v137 = std::string::append(&v203, "default subtree animation");
      v138 = *&v137->__r_.__value_.__l.__data_;
      v184 = v137->__r_.__value_.__r.__words[2];
      *v183 = v138;
      v137->__r_.__value_.__l.__size_ = 0;
      v137->__r_.__value_.__r.__words[2] = 0;
      v137->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }

      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v139 = v188.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v182, v139 + 1);
      if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v140 = &v182;
      }

      else
      {
        v140 = v182.__r_.__value_.__r.__words[0];
      }

      if (v139)
      {
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v141 = &v188;
        }

        else
        {
          v141 = v188.__r_.__value_.__r.__words[0];
        }

        memmove(v140, v141, v139);
      }

      *(&v140->__r_.__value_.__l.__data_ + v139) = 46;
      v142 = std::string::append(&v182, "subtreeAnimationScene.");
      v143 = *&v142->__r_.__value_.__l.__data_;
      v202.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
      *&v202.__r_.__value_.__l.__data_ = v143;
      v142->__r_.__value_.__l.__size_ = 0;
      v142->__r_.__value_.__r.__words[2] = 0;
      v142->__r_.__value_.__r.__words[0] = 0;
      v144 = std::string::append(&v202, "default subtree animation");
      v145 = *&v144->__r_.__value_.__l.__data_;
      v203.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
      *&v203.__r_.__value_.__l.__data_ = v145;
      v144->__r_.__value_.__l.__size_ = 0;
      v144->__r_.__value_.__r.__words[2] = 0;
      v144->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      v202.__r_.__value_.__r.__words[0] = v130;
      if (v130)
      {
        RERetain();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a3);
      realityio::ECSAction::addAsset(v176, &v202, v183, &v182);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v202);
      v202.__r_.__value_.__r.__words[0] = v131;
      if (v131)
      {
        RERetain();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a3);
      realityio::ECSAction::addAsset(v176, &v202, &v203, &v182);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v202);
      RERelease();
      RERelease();
      RERelease();
      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, a3);
    std::string::basic_string[abi:ne200100]<0>(v183, "/__root");
    MEMORY[0x24C1A5D70](&v202, v183);
    v146 = v203.__r_.__value_.__r.__words[0];
    v147 = v202.__r_.__value_.__r.__words[0];
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v202);
    if (SHIBYTE(v184) < 0)
    {
      operator delete(v183[0]);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
    if (v146 == v147 && v187 != v186)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v183, a3);
      v148 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v183);
      if (*(v148 + 23) < 0)
      {
        v149 = *v148;
      }

      REAnimationSceneEntityDefinitionCreate();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v183);
      v150 = realityio::TimelineGroupFactory::createTimelineAsset(&v185.__r_.__value_.__l.__data_, v175, "global scene animation");
      v151 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
      std::string::basic_string[abi:ne200100]<0>(v183, "global scene animation");
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, a3);
      realityio::AnimationLibraryAssetAction::annotateSubTimelines(v176, v183, v151, &v203, v175);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }

      REAnimationLibraryDefinitionInsertEntryAsset();
      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v152 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v152 = v188.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v202, v152 + 1);
      if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v153 = &v202;
      }

      else
      {
        v153 = v202.__r_.__value_.__r.__words[0];
      }

      if (v152)
      {
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v154 = &v188;
        }

        else
        {
          v154 = v188.__r_.__value_.__r.__words[0];
        }

        memmove(v153, v154, v152);
      }

      *(&v153->__r_.__value_.__l.__data_ + v152) = 46;
      v155 = std::string::append(&v202, "timelineGroup.");
      v156 = *&v155->__r_.__value_.__l.__data_;
      v203.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
      *&v203.__r_.__value_.__l.__data_ = v156;
      v155->__r_.__value_.__l.__size_ = 0;
      v155->__r_.__value_.__r.__words[2] = 0;
      v155->__r_.__value_.__r.__words[0] = 0;
      v157 = std::string::append(&v203, "global scene animation");
      v158 = *&v157->__r_.__value_.__l.__data_;
      v184 = v157->__r_.__value_.__r.__words[2];
      *v183 = v158;
      v157->__r_.__value_.__l.__size_ = 0;
      v157->__r_.__value_.__r.__words[2] = 0;
      v157->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }

      if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v159 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v159 = v188.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v182, v159 + 1);
      if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v160 = &v182;
      }

      else
      {
        v160 = v182.__r_.__value_.__r.__words[0];
      }

      if (v159)
      {
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v161 = &v188;
        }

        else
        {
          v161 = v188.__r_.__value_.__r.__words[0];
        }

        memmove(v160, v161, v159);
      }

      *(&v160->__r_.__value_.__l.__data_ + v159) = 46;
      v162 = std::string::append(&v182, "globalAnimationScene.");
      v163 = *&v162->__r_.__value_.__l.__data_;
      v202.__r_.__value_.__r.__words[2] = v162->__r_.__value_.__r.__words[2];
      *&v202.__r_.__value_.__l.__data_ = v163;
      v162->__r_.__value_.__l.__size_ = 0;
      v162->__r_.__value_.__r.__words[2] = 0;
      v162->__r_.__value_.__r.__words[0] = 0;
      v164 = std::string::append(&v202, "global scene animation");
      v165 = *&v164->__r_.__value_.__l.__data_;
      v203.__r_.__value_.__r.__words[2] = v164->__r_.__value_.__r.__words[2];
      *&v203.__r_.__value_.__l.__data_ = v165;
      v164->__r_.__value_.__l.__size_ = 0;
      v164->__r_.__value_.__r.__words[2] = 0;
      v164->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v202.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      v202.__r_.__value_.__r.__words[0] = v150;
      if (v150)
      {
        RERetain();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a3);
      realityio::ECSAction::addAsset(v176, &v202, v183, &v182);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v202);
      v202.__r_.__value_.__r.__words[0] = v151;
      if (v151)
      {
        RERetain();
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a3);
      realityio::ECSAction::addAsset(v176, &v202, &v203, &v182);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v202);
      RERelease();
      RERelease();
      RERelease();
      if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v203.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184) < 0)
      {
        operator delete(v183[0]);
      }
    }

    AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
    RERelease();
    v182.__r_.__value_.__r.__words[0] = AnimationLibraryAsset;
    if (AnimationLibraryAsset)
    {
      RERetain();
    }

    realityio::ECSAction::queueForDeferredAssetLoad(v176, &v182);
    realityio::entityPath(a3, &v202);
    v167 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v202);
    v168 = v167;
    if (*(v167 + 23) >= 0)
    {
      v169 = *(v167 + 23);
    }

    else
    {
      v169 = *(v167 + 8);
    }

    std::string::basic_string[abi:ne200100](&v203, v169 + 1);
    if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v170 = &v203;
    }

    else
    {
      v170 = v203.__r_.__value_.__r.__words[0];
    }

    if (v169)
    {
      if (v168[23] >= 0)
      {
        v171 = v168;
      }

      else
      {
        v171 = *v168;
      }

      memmove(v170, v171, v169);
    }

    *(&v170->__r_.__value_.__l.__data_ + v169) = 46;
    v172 = std::string::append(&v203, "animationLibrary");
    v173 = *&v172->__r_.__value_.__l.__data_;
    v184 = v172->__r_.__value_.__r.__words[2];
    *v183 = v173;
    v172->__r_.__value_.__l.__size_ = 0;
    v172->__r_.__value_.__r.__words[2] = 0;
    v172->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v202);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v203, a3);
    realityio::ECSAction::addAsset(v176, &v182, v183, &v203);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v203);
    RERelease();
    v202.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAsset *>>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_PlaceCopy();
  }

  v183[0] = &v186;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](v183);
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  v185.__r_.__value_.__r.__words[0] = &v205;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v185);
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v204.__r_.__value_.__r.__words[0] = &v189;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v204);
  v204.__r_.__value_.__r.__words[0] = &v192;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v204);
  v204.__r_.__value_.__r.__words[0] = &v195;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v204);
  v204.__r_.__value_.__r.__words[0] = v198;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v204);
  if (__p)
  {
    v200 = __p;
    operator delete(__p);
  }

  v174 = *MEMORY[0x277D85DE8];
}

void sub_24751D2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::VtValue *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v59 - 200));
  if (a44 < 0)
  {
    operator delete(__p);
  }

  *(v59 - 200) = &a45;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v59 - 200));
  *(v59 - 200) = &a48;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v59 - 200));
  *(v59 - 200) = &a52;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100]((v59 - 200));
  *(v59 - 200) = &a55;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v59 - 200));
  if (a58)
  {
    a59 = a58;
    operator delete(a58);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a10);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v11, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v11 + 4), (a2 + 4));
    *(v11 + 8) = *(a2 + 8);
    v6 = v11 + 16;
    v12 = *a1;
    v13 = a1[1];
    v14 = v11 + *a1 - v13;
    if (*a1 != v13)
    {
      v15 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v14 + v15), &v12[v15]);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v14 + v15 + 4), &v12[v15 + 4]);
        *(v14 + v15 + 8) = *&v12[v15 + 8];
        v15 += 16;
      }

      while (&v12[v15] != v13);
      do
      {
        std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::destroy[abi:ne200100](v12);
        v12 += 16;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = v6;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1[1], a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v5 + 4), (a2 + 4));
    *(v5 + 8) = *(a2 + 8);
    v6 = v5 + 16;
  }

  a1[1] = v6;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t realityio::ECSAction::queueForDeferredAssetLoad(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 152);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = *(*v4 + 48);

    return v5();
  }

  else
  {
    v7 = *a2;

    return MEMORY[0x282153990](v7);
  }
}

std::string *realityio::TimelineGroupFactory::TimelineGroupFactory(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0xFF7FFFFF7F7FFFFFLL;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = -8388609;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  return this;
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 16;
        std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REAsset *>>::destroy[abi:ne200100](uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REAsset *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REAsset *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REAsset *>>>::_DecrementIfValid(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REAsset *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAsset *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REAsset *>>>::_DecrementIfValid(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v3 = v1;
    __dmb(9u);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 8));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REAsset *>>,realityio::WrappedRERef<REAsset *> const&>();
  }

  return *a1;
}

void realityio::SyncUpdateEngineQueueManager::yieldEngineQueueExecution(realityio::SyncUpdateEngineQueueManager *this)
{
  dispatch_assert_queue_V2(*(this + 1));
  *v2 = this;
  std::mutex::lock((this + 24));
  if (*(this + 34))
  {
    v11 = realityio::internal::assertHandler(1u, "mState == kIsWaitingForEngineQueueYield", "yieldEngineQueueExecution", 28, 1, v3, v4, v5, "called yieldEngineQueueExecution twice", v14);
    if (v11 == 1)
    {
      raise(5);
    }

    else if (v11 == 2)
    {
      goto LABEL_16;
    }
  }

  *(this + 34) = 1;
  std::mutex::unlock((this + 24));
  dispatch_semaphore_wait(*(this + 2), 0xFFFFFFFFFFFFFFFFLL);
  do
  {
    realityio::SyncUpdateEngineQueueManager::popEngineQueueTask(this, &v15);
    v6 = v15;
    if (v15)
    {
      v7 = *(v15 + 24);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v7 + 48))(v7);
      dispatch_semaphore_signal(*(v15 + 32));
      dispatch_semaphore_wait(*(this + 2), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  while (v6);
  std::mutex::lock((this + 24));
  if (*(this + 34) != 3)
  {
    v12 = realityio::internal::assertHandler(1u, "mState == kFinished", "yieldEngineQueueExecution", 47, 0, v8, v9, v10, v13, v14);
    if (v12 == 1)
    {
      raise(5);
      goto LABEL_10;
    }

    if (v12 == 2)
    {
LABEL_16:
      abort();
    }
  }

LABEL_10:
  std::mutex::unlock((this + 24));
  *v2 = 0;
}

void realityio::SyncUpdateEngineQueueManager::popEngineQueueTask(realityio::SyncUpdateEngineQueueManager *this@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((this + 24));
  if (*(this + 16))
  {
    v4 = *(*(this + 12) + ((*(this + 15) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 15);
    *a2 = *v4;
    *v4 = 0;
    *(v4 + 8) = 0;
    std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::pop_front(this + 11);
  }

  else
  {
    if (*(this + 34) == 2)
    {
      *(this + 34) = 3;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  std::mutex::unlock((this + 24));
}

void sub_24751E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::mutex::unlock((v10 + 24));
  _Unwind_Resume(a1);
}

intptr_t realityio::SyncUpdateEngineQueueManager::stopYieldEngineQueueExecution(realityio::SyncUpdateEngineQueueManager *this)
{
  std::mutex::lock((this + 24));
  if (*(this + 34) != 1)
  {
    v7 = realityio::internal::assertHandler(1u, "mState == kOwnsEngineQueue", "stopYieldEngineQueueExecution", 57, 1, v2, v3, v4, "called stopYieldEngineQueueExecution() twice", v8);
    if (v7 == 1)
    {
      raise(5);
    }

    else if (v7 == 2)
    {
      abort();
    }
  }

  *(this + 34) = 2;
  std::mutex::unlock((this + 24));
  v5 = *(this + 2);

  return dispatch_semaphore_signal(v5);
}

uint64_t realityio::SyncUpdateEngineQueueManager::performBlockSyncOnEngineQueue(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if (*(a1 + 136) >= 2u)
  {
    v14 = realityio::internal::assertHandler(1u, "mState == kOwnsEngineQueue || mState == kIsWaitingForEngineQueueYield", "performBlockSyncOnEngineQueue", 69, 1, v4, v5, v6, "tried to submit blocks to the SyncUpdateEngineQueueManager after stopYieldEngineQueueExecution() was called.", v16);
    if (v14 == 1)
    {
      raise(5);
    }

    else if (v14 == 2)
    {
      goto LABEL_14;
    }
  }

  if (!v10)
  {
    dispatch_assert_queue_not_V2(*(a1 + 8));
    operator new();
  }

  if (v10 != a1)
  {
    v15 = realityio::internal::assertHandler(1u, "engineQueueManagerOwningThisThread == this", "performBlockSyncOnEngineQueue", 74, 1, v7, v8, v9, "cannot use multiple EngineQueueManagers simultaneously", v16);
    if (v15 == 1)
    {
      raise(5);
      goto LABEL_4;
    }

    if (v15 != 2)
    {
      goto LABEL_4;
    }

LABEL_14:
    abort();
  }

LABEL_4:
  dispatch_assert_queue_V2(*(a1 + 8));
  std::mutex::unlock((a1 + 24));
  v11 = *(a2 + 24);
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v12 = *(*v11 + 48);

  return v12();
}

void sub_24751E7D4(_Unwind_Exception *a1)
{
  operator delete(v3);
  if (v2)
  {
    operator delete(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void realityio::AsyncUpdateEngineQueueManager::performBlockSyncOnEngineQueue(uint64_t a1, uint64_t a2)
{
  if (v7)
  {
    if (v7 != a1)
    {
      v11 = realityio::internal::assertHandler(1u, "engineQueueManagerOwningThisThread == this", "performBlockSyncOnEngineQueue", 101, 1, v4, v5, v6, "cannot use multiple EngineQueueManagers simultaneously", v12);
      if (v11 == 1)
      {
        raise(5);
      }

      else if (v11 == 2)
      {
        abort();
      }
    }

    dispatch_assert_queue_V2(*(a1 + 8));
    v8 = *(a2 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = *(*v8 + 48);

    v9();
  }

  else
  {
    dispatch_assert_queue_not_V2(*(a1 + 8));
    v10 = *(a1 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZN9realityio29AsyncUpdateEngineQueueManager29performBlockSyncOnEngineQueueERKNSt3__18functionIFvvEEE_block_invoke;
    block[3] = &__block_descriptor_48_ea8_32c110_ZTSKZN9realityio29AsyncUpdateEngineQueueManager29performBlockSyncOnEngineQueueERKNSt3__18functionIFvvEEEE3__0_e5_v8__0l;
    block[4] = a1;
    block[5] = a2;
    dispatch_sync(v10, block);
  }
}

uint64_t ___ZN9realityio29AsyncUpdateEngineQueueManager29performBlockSyncOnEngineQueueERKNSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v6)
  {
    v9 = realityio::internal::assertHandler(1u, "engineQueueManagerOwningThisThread == nullptr", "operator()", 110, 1, v3, v4, v5, "cannot use multiple EngineQueueManagers simultaneously", v10);
    if (v9 == 1)
    {
      raise(5);
    }

    else if (v9 == 2)
    {
      abort();
    }
  }

  *v6 = v2;
  v7 = *(*(a1 + 40) + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v7 + 48))(v7);
  *v6 = 0;
  return result;
}

__n128 __copy_helper_block_ea8_32c110_ZTSKZN9realityio29AsyncUpdateEngineQueueManager29performBlockSyncOnEngineQueueERKNSt3__18functionIFvvEEEE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void realityio::AsyncUpdateEngineQueueManager::~AsyncUpdateEngineQueueManager(id *this)
{
}

{

  JUMPOUT(0x24C1A91B0);
}

void realityio::SyncUpdateEngineQueueManager::~SyncUpdateEngineQueueManager(realityio::SyncUpdateEngineQueueManager *this)
{
  std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::~deque[abi:ne200100](this + 11);
  std::mutex::~mutex((this + 24));
}

{
  std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::~deque[abi:ne200100](this + 11);
  std::mutex::~mutex((this + 24));

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void std::__shared_ptr_emplace<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859498A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_emplace<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>::__on_zero_shared(uint64_t a1)
{

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 24);
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24751F1A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void realityio::SampleAnimationFromUsdAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t a2@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X1>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(a3))
  {
    goto LABEL_93;
  }

  v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
  pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(buf, a3);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v80, v7, buf);
  pxrInternal__aapl__pxrReserved__::UsdObject::As<pxrInternal__aapl__pxrReserved__::UsdAttribute>(&v80, v64);
  if ((v83 & 7) != 0)
  {
    atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v82);
  if (v81)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v81);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v64))
  {
    v24 = 0;
    goto LABEL_85;
  }

  TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath(a3);
  v9 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(TargetPath);
  v63 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 = v9 & 0xFFFFFFFFFFFFFFF8;
    v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  MEMORY[0x24C1A5DE0](&v80, "__timeSamples");
  v10 = v9 ^ v80;
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v10 <= 7)
  {
    v62 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a2 + 24));
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v62);
    v75 = 0;
    v11 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v62);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v11);
    IsImpl = pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    if ((IsImpl & 1) == 0)
    {
LABEL_80:
      v73[1] = 0;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v74);
      pxrInternal__aapl__pxrReserved__::VtValue::operator=(a4, v73);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v73);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v62);
      goto LABEL_81;
    }

    v13 = v75;
    if (v75)
    {
      v14 = *((v75 & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v14 == 10)
      {
        goto LABEL_16;
      }

      if ((v75 & 4) != 0)
      {
        IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v74, MEMORY[0x277D827B0]);
        if (IsImpl)
        {
LABEL_16:
          v69 = v62;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v69);
          v15 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v69);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v15);
          v17 = v16;
          v18 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v69);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v18);
          v20 = v19;
          __p = 0;
          v71 = 0;
          v72 = 0;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
          v21 = 1.0 / v17;
          if (v71 == __p)
          {
            v23 = 0.0;
            v22 = 0.0;
          }

          else
          {
            v22 = *__p / v20;
            v23 = *(v71 - 1) / v20;
          }

          v35 = ((v23 - v22) / v21 + 1.0 + 0.5);
          v84 = 0;
          v80 = *&v22;
          v81 = *&v23;
          v82 = v21;
          v79 = 0;
          memset(buf, 0, sizeof(buf));
          LODWORD(v68) = 0;
          v76 = &v68;
          pxrInternal__aapl__pxrReserved__::VtArray<float>::resize<pxrInternal__aapl__pxrReserved__::VtArray<float>::resize(unsigned long,float const&)::{lambda(float *,float *)#1}>(buf, v35, &v76, 0);
          if (v35)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(buf);
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
          }

          v77 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
        }

        v13 = v75;
        if (!v75)
        {
          goto LABEL_78;
        }

        v14 = *((v75 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      if (v14 == 9)
      {
        goto LABEL_26;
      }

      if ((v13 & 4) != 0)
      {
        IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v74, MEMORY[0x277D827A8]);
        if (IsImpl)
        {
LABEL_26:
          v68 = v62;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v68);
          v26 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v68);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v26);
          v28 = v27;
          v29 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v68);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v29);
          v31 = v30;
          __p = 0;
          v71 = 0;
          v72 = 0;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
          v32 = 1.0 / v28;
          if (v71 == __p)
          {
            v34 = 0.0;
            v33 = 0.0;
          }

          else
          {
            v33 = *__p / v31;
            v34 = *(v71 - 1) / v31;
          }

          v45 = ((v34 - v33) / v32 + 1.0 + 0.5);
          v84 = 0;
          v80 = *&v33;
          v81 = *&v34;
          v82 = v32;
          v79 = 0;
          memset(buf, 0, sizeof(buf));
          v69 = 0;
          v76 = &v69;
          pxrInternal__aapl__pxrReserved__::VtArray<double>::resize<pxrInternal__aapl__pxrReserved__::VtArray<double>::resize(unsigned long,double const&)::{lambda(double *,double *)#1}>(buf, v45, &v76);
          if (v45)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(buf);
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
          }

          v77 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<double>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<float>>::_PlaceCopy();
        }

        v13 = v75;
        if (!v75)
        {
          goto LABEL_78;
        }

        v14 = *((v75 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      if (v14 == 88)
      {
        goto LABEL_37;
      }

      if ((v13 & 4) == 0)
      {
        goto LABEL_47;
      }

      if (IsImpl)
      {
LABEL_37:
        v68 = v62;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v68);
        v36 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v68);
        pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v36);
        v38 = v37;
        v39 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v68);
        pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v39);
        v41 = v40;
        __p = 0;
        v71 = 0;
        v72 = 0;
        pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
        v42 = 1.0 / v38;
        if (v71 == __p)
        {
          v44 = 0.0;
          v43 = 0.0;
        }

        else
        {
          v43 = *__p / v41;
          v44 = *(v71 - 1) / v41;
        }

        v55 = ((v44 - v43) / v42 + 1.0 + 0.5);
        v84 = 0;
        v80 = *&v43;
        v81 = *&v44;
        v82 = v42;
        v79 = 0;
        memset(buf, 0, sizeof(buf));
        v69 = &v76;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(buf, v55, &v69);
        if (v55)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(buf);
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfQuatf>();
        }

        v77 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
      }

      v13 = v75;
      if (v75)
      {
        v14 = *((v75 & 0xFFFFFFFFFFFFFFF8) + 16);
LABEL_47:
        if (v14 == 65)
        {
          goto LABEL_48;
        }

        if ((v13 & 4) == 0)
        {
          goto LABEL_57;
        }

        if (IsImpl)
        {
LABEL_48:
          v69 = v62;
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v69);
          v46 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v69);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetFramesPerSecond(v46);
          v48 = v47;
          v49 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v69);
          pxrInternal__aapl__pxrReserved__::UsdStage::GetTimeCodesPerSecond(v49);
          v51 = v50;
          __p = 0;
          v71 = 0;
          v72 = 0;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
          v52 = 1.0 / v48;
          if (v71 == __p)
          {
            v54 = 0.0;
            v53 = 0.0;
          }

          else
          {
            v53 = *__p / v51;
            v54 = *(v71 - 1) / v51;
          }

          v56 = ((v54 - v53) / v52 + 1.0 + 0.5);
          v84 = 0;
          v80 = *&v53;
          v81 = *&v54;
          v82 = v52;
          v79 = 0;
          memset(buf, 0, sizeof(buf));
          WORD2(v68) = 0;
          LODWORD(v68) = 0;
          v76 = &v68;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(buf, v56, &v76);
          if (v56)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(buf);
            pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3h>();
          }

          v77 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(void)::ti;
          pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
        }

        if (v75)
        {
LABEL_57:
          IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3f>(v74);
          if (IsImpl)
          {
            v80 = v62;
            pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v80);
          }

          if (v75)
          {
            IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3d>(v74);
            if (IsImpl)
            {
              v80 = v62;
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v80);
            }

            if (v75)
            {
              IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v74);
              if (IsImpl)
              {
                v80 = v62;
                pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v80);
              }

              if (v75)
              {
                IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(v74);
                if (IsImpl)
                {
                  v80 = v62;
                  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v80);
                }

                if (v75)
                {
                  IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(v74);
                  if (IsImpl)
                  {
                    v80 = v62;
                    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v80);
                  }

                  if (v75)
                  {
                    IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(v74);
                    if (IsImpl)
                    {
                      v80 = v62;
                      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v80);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_78:
    v57 = *(realityio::logObjects(IsImpl) + 24);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v60 = &v80;
      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v80, v74);
      if (v82 < 0.0)
      {
        v60 = v80;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v64, &__p);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__p);
      *buf = 136315394;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = Text;
      _os_log_error_impl(&dword_247485000, v57, OS_LOG_TYPE_ERROR, "Unsupported VtValue re-sample type %s for %s", buf, 0x16u);
      pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&__p);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v80);
      }
    }

    goto LABEL_80;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(v64, &v63, a4))
  {
    v25 = 0;
    v24 = 1;
    goto LABEL_82;
  }

LABEL_81:
  v24 = 0;
  v25 = 1;
LABEL_82:
  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v25 & 1) == 0)
  {
    v58 = 0;
    goto LABEL_87;
  }

LABEL_85:
  v58 = 1;
LABEL_87:
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
  if (v65)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65);
  }

  if (((v24 | v58) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(a4);
  }

LABEL_93:
  v59 = *MEMORY[0x277D85DE8];
}