void sub_2476210A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v23 + 8));
  v26 = *(v24 - 192);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

id anonymous namespace::samplerForTextureAttribute(unint64_t *a1, unint64_t *a2)
{
  v4 = REMaterialCreateDefaultSamplerDescriptor();
  v5 = *a1;
  v10 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 = v5 & 0xFFFFFFFFFFFFFFF8;
    v5 &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *a2;
  v9 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFF8;
    v6 &= 0xFFFFFFFFFFFFFFF8;
  }

  [v4 setTAddressMode:{SamplerAddressMode, v9, v10}];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4;
}

void sub_247621280(_Unwind_Exception *a1)
{
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::getTextureFromConnection(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  *a6 = 0;
  if ((a2 + 8) != v11)
  {
    v12 = v11;
    v13 = (v11 + 5);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v11 + 5)))
    {
      v14 = v12[6];
      if ((v14 & 4) != 0)
      {
        v15 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
      }

      else
      {
        v15 = *v13;
      }

      std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&v28, v15);
      MEMORY[0x24C1A5DE0](&v27, "__value");
      v16 = v29[0];
      if (!v29[0])
      {
        goto LABEL_18;
      }

      v17 = v29;
      do
      {
        v18 = v17;
        v19 = v16 + 4;
        v20 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v28, v16 + 4, &v27);
        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        if (!v20)
        {
          v17 = v16;
        }

        v16 = v16[v21];
      }

      while (v16);
      if (v17 == v29 || (!v20 ? (v22 = v19) : (v22 = (v18 + 4)), std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v28, &v27, v22)))
      {
LABEL_18:
        v17 = v29;
      }

      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v29 == v17)
      {
        if (*a1)
        {
LABEL_32:
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v28, v29[0]);
          return;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1);
      }

      else
      {
        *a6 = 1;
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>((v17 + 5)))
        {
          v23 = v17[6];
          if ((v23 & 4) != 0)
          {
            v24 = (*((v23 & 0xFFFFFFFFFFFFFFF8) + 168))(v17 + 5);
          }

          else
          {
            v24 = v17[5];
          }

          v25 = *v24;
          *a1 = v25;
          if (v25)
          {
            RERetain();
          }

          goto LABEL_32;
        }
      }

      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v28, v29[0]);
    }

    else if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v13))
    {
      v26 = v12[6];
      if ((v26 & 4) != 0)
      {
        v13 = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(v13);
      }

      *a5 = *v13;
    }
  }

  *a1 = 0;
}

void sub_2476214B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t anonymous namespace::getTextureFromTokValMapAtValue(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v5 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
LABEL_16:
    *v3 = 0;
    return result;
  }

  while (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v4 + 5)))
  {
    v8 = v4[6];
    if ((v8 & 4) != 0)
    {
      v9 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v4 + 5);
    }

    else
    {
      v9 = v4[5];
    }

    if (*v3)
    {
      return result;
    }

    result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v3);
LABEL_8:
    v10 = v4[1];
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
        v11 = v4[2];
        v12 = *v11 == v4;
        v4 = v11;
      }

      while (!v12);
    }

    v4 = v11;
    if (v11 == v5)
    {
      goto LABEL_16;
    }
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>((v4 + 5));
  if (!result)
  {
    goto LABEL_8;
  }

  MEMORY[0x24C1A5DE0](&v20, "__value");
  v13 = v20 ^ v4[4];
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13 <= 7)
  {
    MEMORY[0x24C1A5DE0](&v20, "__sourcePrimPath");
    v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, &v20);
    v15 = v14;
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v5 != v14)
    {
      v16 = v14 + 5;
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfPath>((v14 + 5)))
      {
        v17 = v15[6];
        if ((v17 & 4) != 0)
        {
          v16 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(v15 + 5);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a3 + 4, v16 + 1);
      }
    }
  }

  v18 = v4[6];
  if ((v18 & 4) != 0)
  {
    v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v4 + 5);
  }

  else
  {
    v19 = v4[5];
  }

  result = *v19;
  *v3 = result;
  if (result)
  {
    return RERetain();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, uint64_t *a2)
{
  result = *std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a3 + 1);
  return a1;
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(a1 + 8, *(a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void anonymous namespace::getTextureInfoFromConnection(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, int32x4_t *a6, void *a7, void *a8, _BYTE *a9, _BYTE *a10)
{
  v90 = *MEMORY[0x277D85DE8];
  *a5 = xmmword_247757270;
  __asm { FMOV            V0.4S, #1.0 }

  v74 = _Q0;
  *a6 = _Q0;
  *a7 = 0;
  a7[1] = 0;
  if ((*a8 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a8 = 0;
  *a1 = 0;
  v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  v19 = v18;
  *a9 = 0;
  *a10 = 0;
  v20 = (a2 + 8);
  if ((a2 + 8) != v18)
  {
    v21 = v18 + 5;
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v18 + 5)))
    {
      v22 = v19[6];
      if ((v22 & 4) != 0)
      {
        v23 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
      }

      else
      {
        v23 = *v21;
      }

      std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&__p, v23);
      v24 = __p;
      if (__p == &v82)
      {
LABEL_93:
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&__p, v82);
        goto LABEL_148;
      }

      while (1)
      {
        v25 = std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v87, v24 + 4);
        if ((v87 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v87 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
        }

        v27 = *(EmptyString + 23);
        v28 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v27 = *(EmptyString + 8);
        }

        if (v27 < 8)
        {
          goto LABEL_17;
        }

        if (v28 < 0)
        {
          EmptyString = *EmptyString;
        }

        if (strncmp(EmptyString, "outputs:", 8uLL))
        {
LABEL_17:
          MEMORY[0x24C1A5DE0](&v84, "__value");
          if ((v84 ^ v87) > 7)
          {
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            v29 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(&v88);
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v29)
            {
              if ((v89 & 4) != 0)
              {
                v30 = (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(&v88);
              }

              else
              {
                v30 = v88;
              }

              realityio::WrappedRERef<REAsset *>::operator=(a1, v30);
            }
          }

          goto LABEL_78;
        }

        *a9 = 1;
        pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, &v87);
        v31 = ((v89 & 4) != 0 ? (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(&v88) : v88);
        v34 = *v31;
        v33 = v31 + 1;
        v32 = v34;
        if (v34 != v33)
        {
          break;
        }

LABEL_78:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v88);
        if ((v87 & 7) != 0)
        {
          atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v47 = v24[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v24[2];
            _ZF = *v48 == v24;
            v24 = v48;
          }

          while (!_ZF);
        }

        v24 = v48;
        if (v48 == &v82)
        {
          goto LABEL_93;
        }
      }

      while (1)
      {
        std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v84, v32 + 4);
        MEMORY[0x24C1A5DE0](&v80, "inputs:scale");
        if ((v80 ^ v84) > 7)
        {
          if ((v80 & 7) != 0)
          {
            atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v35 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v85);
          if ((v80 & 7) != 0)
          {
            atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v35)
          {
            if ((v86 & 4) != 0)
            {
              v36 = (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(&v85);
            }

            else
            {
              v36 = v85;
            }

            *a6 = *v36;
            goto LABEL_66;
          }
        }

        MEMORY[0x24C1A5DE0](&v80, "inputs:fallback");
        if ((v80 ^ v84) > 7)
        {
          break;
        }

        v37 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v85);
        if ((v80 & 7) != 0)
        {
          atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (!v37)
        {
          goto LABEL_47;
        }

        if ((v86 & 4) != 0)
        {
          v38 = (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(&v85);
        }

        else
        {
          v38 = v85;
        }

        v39 = *v38;
        v40 = a5;
LABEL_54:
        *v40 = v39;
LABEL_66:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v85);
        if ((v84 & 7) != 0)
        {
          atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v45 = v32[1];
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = v32[2];
            _ZF = *v46 == v32;
            v32 = v46;
          }

          while (!_ZF);
        }

        v32 = v46;
        if (v46 == v33)
        {
          goto LABEL_78;
        }
      }

      if ((v80 & 7) != 0)
      {
        atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_47:
      MEMORY[0x24C1A5DE0](&v80, "inputs:bias");
      if ((v80 ^ v84) > 7)
      {
        if ((v80 & 7) != 0)
        {
          atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_57:
        MEMORY[0x24C1A5DE0](&v80, "inputs:sourceColorSpace");
        if ((v80 ^ v84) > 7)
        {
          if ((v80 & 7) != 0)
          {
            atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v43 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&v85);
          if ((v80 & 7) != 0)
          {
            atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v43)
          {
            v44 = &v85;
            if ((v86 & 4) != 0)
            {
              v44 = (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(&v85, &v85);
            }

            pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v44);
          }
        }

        goto LABEL_66;
      }

      v41 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v85);
      if ((v80 & 7) != 0)
      {
        atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v41)
      {
        goto LABEL_57;
      }

      if ((v86 & 4) != 0)
      {
        v42 = (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(&v85);
      }

      else
      {
        v42 = v85;
      }

      v39 = *v42;
      v40 = a7;
      goto LABEL_54;
    }

    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v19 + 5)))
    {
      *a10 = 1;
      v49 = v19[6];
      if ((v49 & 4) != 0)
      {
        v21 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
      }

      v50 = v74;
      v50.i32[0] = *v21;
      v51 = vzip1q_s32(v50, v50);
      v51.i32[2] = *v21;
      *a5 = v51;
    }

    else if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((v19 + 5)))
    {
      *a10 = 1;
      v52 = v19[6];
      if ((v52 & 4) != 0)
      {
        v53 = (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
      }

      else
      {
        v53 = *v21;
      }

      v54 = *v53;
      v55 = *(v53 + 2);
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v56 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v56 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v53);
      }

      if (*(v56 + 23) >= 0)
      {
        v59 = *(v56 + 23);
      }

      else
      {
        v59 = *(v56 + 8);
      }

      std::string::basic_string[abi:ne200100](&__p, v59 + 12);
      if (v83 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v59)
      {
        if (*(v56 + 23) >= 0)
        {
          v61 = v56;
        }

        else
        {
          v61 = *v56;
        }

        memmove(p_p, v61, v59);
      }

      strcpy(p_p + v59, "__colorSpace");
      MEMORY[0x24C1A5E00](&v87, &__p);
      v62 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, &v87);
      if ((v87 & 7) != 0)
      {
        atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v83 < 0)
      {
        operator delete(__p);
      }

      if (v20 != v62)
      {
        v63 = v62 + 5;
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v62 + 5)))
        {
          v64 = v62[6];
          if ((v64 & 4) != 0)
          {
            v63 = (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(v62 + 5);
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v63);
        }
      }

      *a5 = v54;
      *(a5 + 8) = v55;
      *(a5 + 12) = 1065353216;
    }

    else
    {
      v57 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((v19 + 5));
      if (v57)
      {
        *a10 = 1;
        if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v58 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v58 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v57);
        }

        if (*(v58 + 23) >= 0)
        {
          v65 = *(v58 + 23);
        }

        else
        {
          v65 = *(v58 + 8);
        }

        std::string::basic_string[abi:ne200100](&__p, v65 + 12);
        if (v83 >= 0)
        {
          v66 = &__p;
        }

        else
        {
          v66 = __p;
        }

        if (v65)
        {
          if (*(v58 + 23) >= 0)
          {
            v67 = v58;
          }

          else
          {
            v67 = *v58;
          }

          memmove(v66, v67, v65);
        }

        strcpy(v66 + v65, "__colorSpace");
        MEMORY[0x24C1A5E00](&v87, &__p);
        v68 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, &v87);
        if ((v87 & 7) != 0)
        {
          atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v83 < 0)
        {
          operator delete(__p);
        }

        if (v20 != v68)
        {
          v69 = v68 + 5;
          if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v68 + 5)))
          {
            v70 = v68[6];
            if ((v70 & 4) != 0)
            {
              v69 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(v68 + 5);
            }

            pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v69);
          }
        }

        v71 = v19[6];
        if ((v71 & 4) != 0)
        {
          v72 = (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(v19 + 5);
        }

        else
        {
          v72 = *v21;
        }

        *a5 = *v72;
      }
    }
  }

LABEL_148:
  v73 = *MEMORY[0x277D85DE8];
}

void *anonymous namespace::setFloatMaterialConstantScale(float a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v18 = a1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  if (*(a5 + 23) < 0)
  {
    v6 = *a5;
  }

  if (v11)
  {
    v7 = &v16;
  }

  else
  {
    v7 = &v12;
  }

  v8 = *v7;
  REMaterialAssetBuilderSetFloat();
  result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v10);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_247622440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a12);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

float anonymous namespace::getShadeInputValueWithFallback<float>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2);
  if ((a1 + 8) != v5)
  {
    v6 = v5;
    v7 = v5 + 5;
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v5 + 5)))
    {
      v8 = v6[6];
      if ((v8 & 4) != 0)
      {
        a3 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v7);
      }

      else
      {
        a3 = v7;
      }
    }
  }

  return *a3;
}

uint64_t anonymous namespace::getShadeInputColor3WithFallback(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *&v7 = *a4;
  DWORD2(v7) = *(a4 + 8);
  HIDWORD(v7) = 1.0;
  v18 = v7;
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  if (a2 + 8 != result)
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((result + 40));
    if (result)
    {
      v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
      v20 = v18;
      if ((a2 + 8) != v9)
      {
        v10 = v9;
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>((v9 + 5)))
        {
          v11 = v10[6];
          if ((v11 & 4) != 0)
          {
            v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 5);
          }

          else
          {
            v12 = v10[5];
          }

          *&v13 = *v12;
          DWORD2(v13) = *(v12 + 8);
          HIDWORD(v13) = 1.0;
LABEL_13:
          v20 = v13;
          goto LABEL_14;
        }

        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((v10 + 5)))
        {
          v16 = v10[6];
          if ((v16 & 4) != 0)
          {
            v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 5);
          }

          else
          {
            v17 = v10[5];
          }

          *&v13 = *v17;
          DWORD2(v13) = *(v17 + 8);
          goto LABEL_13;
        }
      }

LABEL_14:
      v19 = 0;
      v15 = v20;
      v14 = v19;
      goto LABEL_15;
    }
  }

  v14 = 0;
  v15 = v18;
LABEL_15:
  *a1 = v15;
  *(a1 + 16) = v14;
  return result;
}

const void **anonymous namespace::assignGamutFromValueAndGamut(const void **result, _BYTE *a2, unint64_t a3)
{
  v3 = a3;
  v4 = result;
  *a2 = 0;
  if ((a3 & 7) != 0 && (atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v3 = a3 & 0xFFFFFFFFFFFFFFF8;
  }

  if (v3)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFF8);
    if ((v3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (v5 + 4);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    }

    if (*(EmptyString + 23) >= 0)
    {
      v7 = EmptyString;
    }

    else
    {
      v7 = *EmptyString;
    }

    v15 = CFStringCreateWithCString(0, v7, 0x8000100u);
    v8 = MEMORY[0x24C1A4490]();
    if (v8)
    {
      v9 = CGColorSpaceCreateWithName(v8);
      v14 = v9;
      if (v9)
      {
        v10 = vcvt_hight_f64_f32(*v4);
        *components = vcvtq_f64_f32(*v4->f32);
        v13 = v10;
        v11 = CGColorCreate(v9, components);
        RECGColorToColorGamut();
        realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(&v11);
      }

      realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(&v14);
    }

    result = realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v15);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_release);
    }
  }

  return result;
}

void sub_247622740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  realityio::WrappedCFRef<CGColor *>::~WrappedCFRef(va);
  realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(va1);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v4 - 40));
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

const void **realityio::WrappedCFRef<CGColorSpace *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void anonymous namespace::getTextureInfoOrDefaultValueFromConnection<float>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, _OWORD *a5, _OWORD *a6, void *a7, void *a8, _DWORD *a9, int *a10, _BYTE *a11)
{
  v59 = *MEMORY[0x277D85DE8];
  *a5 = xmmword_247757270;
  __asm { FMOV            V0.4S, #1.0 }

  *a6 = _Q0;
  *a7 = 0;
  a7[1] = 0;
  if ((*a8 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a8 = 0;
  *a1 = 0;
  v21 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a2, a3);
  v22 = v21;
  *a11 = 0;
  if ((a2 + 8) == v21)
  {
    goto LABEL_90;
  }

  v23 = (v21 + 5);
  if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v21 + 5)))
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v22 + 5)))
    {
      v47 = v22[6];
      if ((v47 & 4) != 0)
      {
        v23 = (*((v47 & 0xFFFFFFFFFFFFFFF8) + 168))(v22 + 5);
      }

      v48 = *v23;
      goto LABEL_91;
    }

LABEL_90:
    v48 = *a10;
LABEL_91:
    *a9 = v48;
    goto LABEL_93;
  }

  *a11 = 1;
  v24 = v22[6];
  v50 = a1;
  if ((v24 & 4) != 0)
  {
    v25 = (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(v22 + 5);
  }

  else
  {
    v25 = *v23;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&v53, v25);
  v26 = v53;
  if (v53 != v54)
  {
    while (1)
    {
      v27 = std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v56, v26 + 4);
      if ((v56 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v56 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v27);
      }

      v29 = *(EmptyString + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(EmptyString + 8);
      }

      if (v29 >= 8)
      {
        if (v30 < 0)
        {
          EmptyString = *EmptyString;
        }

        if (!strncmp(EmptyString, "outputs:", 8uLL))
        {
          break;
        }
      }

      MEMORY[0x24C1A5DE0](&v55, "__value");
      if ((v55 ^ v56) > 7)
      {
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v31 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(&v57);
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v31)
        {
          if ((v58 & 4) != 0)
          {
            v32 = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(&v57);
          }

          else
          {
            v32 = v57;
          }

          realityio::WrappedRERef<REAsset *>::operator=(v50, v32);
          goto LABEL_71;
        }
      }

      MEMORY[0x24C1A5DE0](&v55, "inputs:fallback");
      if ((v55 ^ v56) > 7)
      {
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v33 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v57);
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v33)
        {
          if ((v58 & 4) != 0)
          {
            v34 = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(&v57);
          }

          else
          {
            v34 = v57;
          }

          *a5 = *v34;
          goto LABEL_71;
        }
      }

      MEMORY[0x24C1A5DE0](&v55, "inputs:scale");
      if ((v55 ^ v56) > 7)
      {
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v35 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v57);
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v35)
        {
          if ((v58 & 4) != 0)
          {
            v36 = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(&v57);
          }

          else
          {
            v36 = v57;
          }

LABEL_59:
          *a6 = *v36;
          goto LABEL_71;
        }
      }

      MEMORY[0x24C1A5DE0](&v55, "inputs:bias");
      if ((v55 ^ v56) > 7)
      {
        if ((v55 & 7) != 0)
        {
          atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_62:
        MEMORY[0x24C1A5DE0](&v55, "inputs:sourceColorSpace");
        if ((v55 ^ v56) > 7)
        {
          if ((v55 & 7) != 0)
          {
            atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v43 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(&v57);
          if ((v55 & 7) != 0)
          {
            atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v43)
          {
            v44 = &v57;
            if ((v58 & 4) != 0)
            {
              v44 = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(&v57, &v57);
            }

            pxrInternal__aapl__pxrReserved__::TfToken::operator=(a8, v44);
          }
        }

        goto LABEL_71;
      }

      v37 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(&v57);
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v37)
      {
        goto LABEL_62;
      }

      if ((v58 & 4) != 0)
      {
        v38 = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(&v57);
      }

      else
      {
        v38 = v57;
      }

      *a7 = *v38;
LABEL_71:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
      if ((v56 & 7) != 0)
      {
        atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v45 = v26[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v26[2];
          _ZF = *v46 == v26;
          v26 = v46;
        }

        while (!_ZF);
      }

      v26 = v46;
      if (v46 == v54)
      {
        goto LABEL_92;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, &v56);
    if (!pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(&v57))
    {
      goto LABEL_71;
    }

    if ((v58 & 4) != 0)
    {
      v39 = (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(&v57);
    }

    else
    {
      v39 = v57;
    }

    MEMORY[0x24C1A5DE0](&v55, "inputs:scale");
    v40 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v39, &v55);
    v41 = v40;
    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v39 + 8) == v40 || !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>((v40 + 5)))
    {
      goto LABEL_71;
    }

    v42 = v41[6];
    if ((v42 & 4) != 0)
    {
      v36 = (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(v41 + 5);
    }

    else
    {
      v36 = v41[5];
    }

    goto LABEL_59;
  }

LABEL_92:
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v53, v54[0]);
LABEL_93:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::setIfConnectedToTexture(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v12 = 0;
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v10);
  if (*(a3 + 23) < 0)
  {
    v7 = *a3;
  }

  return REMaterialAssetBuilderSetFunctionConstant();
}

void sub_247622EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::getSamplerAddressMode(void *a1)
{
  MEMORY[0x24C1A5DE0](v13, "black");
  v2 = *v13 ^ *a1;
  if ((v13[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v2 >= 8)
  {
    MEMORY[0x24C1A5DE0](v13, "clamp");
    v4 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v4 < 8)
    {
      return 0;
    }

    MEMORY[0x24C1A5DE0](v13, "repeat");
    v5 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v5 < 8)
    {
      return 2;
    }

    MEMORY[0x24C1A5DE0](v13, "mirror");
    v6 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v6 < 8)
    {
      return 3;
    }

    v7 = MEMORY[0x24C1A5DE0](v13, "useMetadata");
    v8 = *v13 ^ *a1;
    if ((v13[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v9 = *(realityio::logObjects(v7) + 24);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 > 7)
    {
      if (!v10)
      {
        return 2;
      }

      *v13 = 0;
      v11 = "Wrap mode for imported USD was an invalid option; defaulting to repeat";
    }

    else
    {
      if (!v10)
      {
        return 2;
      }

      *v13 = 0;
      v11 = "Reading wrap mode from image metadata is currently not supported; defaulting to repeat";
    }

    v3 = 2;
    _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
    return v3;
  }

  return 4;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>::_DecrementIfValid(0);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_MakeMutable(uint64_t *result)
{
  v1 = atomic_load((*result + 16));
  if (v1 != 1)
  {
    v2 = *result;
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::MaterialAssetPair,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>>::_DecrementIfValid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef((result + 8));
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1);

      JUMPOUT(0x24C1A91B0);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::MaterialAssetPair>::_Counted(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    RERetain();
  }

  v5 = a2[1];
  *(a1 + 8) = v5;
  if (v5)
  {
    RERetain();
  }

  atomic_store(0, (a1 + 16));
  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(a1[1]);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 5);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<std::string,realityio::WrappedRERef<REAsset *>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy((a1 + 5), a1[6]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<TinyTextureBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void TinyTextureBuilder::~TinyTextureBuilder(id *this)
{
  *this = &unk_2859558D0;
  realityio::TextureBuilder::TextureDataT::~TextureDataT(this + 23);

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_2859558D0;
  realityio::TextureBuilder::TextureDataT::~TextureDataT(this + 23);
  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::TransformAnimationAggregationBuilder::kOutputName(realityio::TransformAnimationAggregationBuilder *this)
{
  {
    operator new();
  }

  return realityio::TransformAnimationAggregationBuilder::kOutputName(void)::kOutputName;
}

void sub_2476236F4(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(realityio::TransformAnimationAggregationBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v6, "TransformAnimationAggregationBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kTransformAnimationAggregationBuilderIdentifier);
  realityio::generateTransformAnimationDirtyStageSubscription(&v4);
  v8[0] = &unk_2859559C0;
  v8[3] = v8;
  v7[0] = &unk_285955A40;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_247623894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v24 + 35);
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

uint64_t realityio::TransformAnimationAggregationBuilder::run(realityio::TransformAnimationAggregationBuilder *this, realityio::Inputs *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v48, v5, v4);
  v6 = *a2;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v48, &v43);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6 + 64, &v43);
  v8 = v6 + 72 != v7 && *(*(v6 + 40) + 104 * *(v7 + 40) + 24) == v43;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v46 = MEMORY[0x277D86748] + 16;
    if (v47 && (*(v47 + 57) & 8) == 0 && ((*(MEMORY[0x277D86748] + 48))(&v46) & 1) != 0 && pxrInternal__aapl__pxrReserved__::UsdGeomXformable::TransformMightBeTimeVarying(&v46))
    {
      v9 = realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v45, 2028, this);
      v10 = realityio::EntityBuilder::kInputName(v9);
      realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v10, &v43);
      if (v43)
      {
        v42 = v44;
        if (v44)
        {
          v11 = RERetain();
          v12 = realityio::TransformAnimationAssetBuilder::kOutputName(v11);
          realityio::Inputs::_getValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(buf, a2, v12);
          v13 = (this + 280);
          v40 = 0;
          v41 = 0;
          v14 = *(this + 35);
          if (v14)
          {
            *v13 = 0;
            v40 = v14;
          }

          *(this + 36) = 0;
          v15 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v40);
          if (buf[0] == 1)
          {
            v16 = *&v55[4];
            if (*&v55[4])
            {
              v40 = v42;
              if (v42)
              {
                RERetain();
                v17 = v40;
              }

              else
              {
                v17 = 0;
              }

              v41 = v16;
              v25 = *v13;
              if (*v13 != v17)
              {
                *v13 = v17;
                v40 = v25;
              }

              *(this + 36) = v16;
              v26 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v40);
              v28 = *(this + 2);
              v27 = *(this + 3);
              if (v27)
              {
                atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
              }

              realityio::TransformAnimationAggregationBuilder::kOutputName(v26);
              v40 = this + 280;
              realityio::Outputs::storeValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT *>(v28);
            }
          }

          v29 = realityio::TransformAnimationAssetBuilder::kOutputLibraryName(v15);
          realityio::Inputs::_getValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(a2, v29, &v40);
          if (v40)
          {
            v30 = v41;
          }

          else
          {
            v30 = 0;
          }

          REAnimationLibraryDefinitionCreate();
          if (v30)
          {
            v33 = *v30;
            v31 = (v30 + 1);
            v32 = v33;
            if (v33 != v31)
            {
              do
              {
                std::pair<std::string const,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100](&v52, v32 + 2);
                REAnimationLibraryDefinitionAddEntryAsset();
                REAnimationLibraryDefinitionAddKeyedEntryIndex();
                realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v53);
                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }

                v34 = *(v32 + 1);
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
                    v35 = *(v32 + 2);
                    v36 = *v35 == v32;
                    v32 = v35;
                  }

                  while (!v36);
                }

                v32 = v35;
              }

              while (v35 != v31);
            }
          }

          v37 = *(*(*(a2 + 5) + 16) + 16);
          ServiceLocator = REEngineGetServiceLocator();
          MEMORY[0x24C1A4230](ServiceLocator);
          v39 = *(a2 + 6);
          v53 = 0;
          operator new();
        }
      }

      else
      {
        v42 = 0;
      }

      v18 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf, v18, v4);
      PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(buf);
      if ((v57 & 7) != 0)
      {
        atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
      v20 = *&v55[4];
      if (*&v55[4])
      {
        v20 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v55[4]);
      }

      v21 = *(realityio::logObjects(v20) + 24);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(PrimPath);
        *buf = 136315138;
        *v55 = Text;
        _os_log_error_impl(&dword_247485000, v21, OS_LOG_TYPE_ERROR, "Stopping operation to set animation component because could not create entity at path (%s).\n", buf, 0xCu);
      }

      realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v42);
      realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v43);
      realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
    }

    MEMORY[0x24C1A54D0](&v46);
  }

  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
  result = v49;
  if (v49)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247623E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a25);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a26);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a34);
  MEMORY[0x24C1A54D0](&a36);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a39);
  _Unwind_Resume(a1);
}

void *realityio::TransformAnimationAggregationBuilder::clear(realityio::TransformAnimationAggregationBuilder *this, realityio::Inputs *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  v7 = a2;
  v8 = &unk_285955CC0;
  v9 = &v7;
  v10 = this;
  v11 = &v8;
  (*(*v3 + 16))(v3, &v8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v8);
  v8 = 0;
  v9 = 0;
  v4 = *(this + 35);
  if (v4)
  {
    *(this + 35) = 0;
    v8 = v4;
  }

  *(this + 36) = 0;
  result = realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24762418C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::TransformAnimationAggregationBuilder::~TransformAnimationAggregationBuilder(void **this)
{
  realityio::TransformAnimationAggregationBuilder::~TransformAnimationAggregationBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285955948;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 43));
  if (*(this + 343) < 0)
  {
    operator delete(this[40]);
  }

  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 35);
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

void sub_247624570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
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

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476247E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationAggregationBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::_getValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    v49 = std::__shared_weak_count::lock(v8);
    if (v49)
    {
      v48 = *(a2 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v50, a3);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 8), &v48);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v45, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 32));
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::string::append(&v46, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v47, ")");
    goto LABEL_22;
  }

  v20 = 1;
  v21 = v9;
  do
  {
    v21 = *v21;
    --v20;
  }

  while (v21 != v10);
  if (v20)
  {
    std::operator+<char>();
    v22 = std::string::append(&v45, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 32));
    v25 = *(v24 + 23);
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 8);
    }

    v28 = std::string::append(&v46, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v47, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v53, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = *v53;
    v31 = *&v53[16];
    v54[0] = *&v53[24];
    *(v54 + 7) = *&v53[31];
    v32 = v53[39];
    memset(&v53[16], 0, 24);
    *a1 = 0;
    *(a1 + 39) = *(v54 + 7);
    v33 = v54[0];
    *(a1 + 24) = v31;
    *(a1 + 32) = v33;
    *(a1 + 47) = v32;
    if (v52.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v45.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v34);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v35 = v9[5];
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  realityio::Outputs::getRawValue<realityio::TransformAnimationAssetBuilder::TransformAnimationAssetDataT const*>(v37, EmptyString, v53);
  v40 = v53[0];
  if (v53[0])
  {
    *&v39 = *&v53[8];
  }

  else
  {
    *__p = *&v53[8];
    if ((v53[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v52, *&v53[24], *&v53[32]);
      v41 = v53[0] | (v53[47] >= 0);
    }

    else
    {
      v52 = *&v53[24];
      v41 = 1;
    }

    v39 = *__p;
    size = v52.__r_.__value_.__l.__size_;
    v37 = v52.__r_.__value_.__r.__words[0];
    LODWORD(v47.__r_.__value_.__l.__data_) = v52.__r_.__value_.__r.__words[2];
    *(v47.__r_.__value_.__r.__words + 3) = *(&v52.__r_.__value_.__r.__words[2] + 3);
    v4 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v41 & 1) == 0)
    {
      v43 = *__p;
      operator delete(*&v53[24]);
      v39 = v43;
    }
  }

  if (v36)
  {
    v44 = v39;
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    v39 = v44;
  }

  if (v40)
  {
    *a1 = 1;
    *(a1 + 8) = v39;
  }

  else
  {
    *v53 = v39;
    if (v4 < 0)
    {
      std::string::__init_copy_ctor_external(&v53[16], v37, size);
      *a1 = 0;
      *(a1 + 8) = *v53;
      *(a1 + 24) = *&v53[16];
      *(a1 + 40) = *&v53[32];
      v34 = v37;
      goto LABEL_30;
    }

    *&v53[16] = v37;
    *&v53[24] = size;
    *&v53[32] = v47.__r_.__value_.__l.__data_;
    *&v53[35] = *(v47.__r_.__value_.__r.__words + 3);
    v53[39] = v4;
    *a1 = 0;
    *(a1 + 8) = *v53;
    *(a1 + 24) = *&v53[16];
    *(a1 + 40) = *&v53[32];
  }

LABEL_49:
  if ((v50 & 7) != 0)
  {
    atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_247624CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

__n128 std::__function::__func<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285955B40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v21 = 0;
  if (**(a1 + 16) == 1)
  {
    v3 = *(a1 + 32);
    v4 = **(a1 + 24);
    v5 = *v3;
    AnimationLibraryAsset = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
    v25[0] = AnimationLibraryAsset;
    v7 = v21;
    if (v21 != AnimationLibraryAsset)
    {
      v21 = AnimationLibraryAsset;
      v25[0] = v7;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v25);
    if (v21)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(*(a1 + 40), v25);
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v25);
      v9 = String;
      if (*(String + 23) >= 0)
      {
        v10 = *(String + 23);
      }

      else
      {
        v10 = *(String + 8);
      }

      v11 = __p;
      std::string::basic_string[abi:ne200100](__p, v10 + 17);
      if (v23 < 0)
      {
        v11 = __p[0];
      }

      if (v10)
      {
        if (v9[23] >= 0)
        {
          v12 = v9;
        }

        else
        {
          v12 = *v9;
        }

        memmove(v11, v12, v10);
      }

      strcpy(v11 + v10, "_animationLibrary");
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
      v20 = v21;
      RERetain();
      if (v23 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      realityio::Builder::addAsset(v2, &v20, v13);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v20);
      v14 = **(a1 + 56);
      REAnimationLibraryComponentGetComponentType();
      v25[0] = &unk_285955BB0;
      v25[1] = v2;
      v25[2] = &v21;
      v25[3] = v25;
      v15 = REEntityGetOrAddComponentByClass();
      std::function<void ()(REComponent *)>::operator()(v25, v15);
      RENetworkMarkComponentDirty();
      std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v25);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v16 = **(a1 + 56);
  REAnimationComponentGetComponentType();
  __p[0] = &unk_285955C30;
  __p[1] = v2;
  v24 = __p;
  v17 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(__p, v17);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](__p);
  result = realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v21);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24762512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285955BB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  v3 = **(a1 + 16);

  return REAnimationLibraryComponentAssignAnimationLibraryAsset();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285955C30;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  result = REAnimationComponentActiveAnimationCount();
  if (result)
  {

    return MEMORY[0x282153810](v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio36TransformAnimationAggregationBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285955CC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = **(a1 + 8);
  v4 = realityio::TransformAnimationAggregationBuilder::kOutputName(a1);
  v44 = 0;
  v45 = 0;
  v5 = *(v3 + 24);
  if (v5)
  {
    v45 = std::__shared_weak_count::lock(v5);
    if (v45)
    {
      v44 = *(v3 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v46, v4);
  v6 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v3 + 8), &v44);
  if (v6 == v7)
  {
    std::operator+<char>();
    v8 = std::string::append(&v41, ") at prim path (");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v3 + 32));
    v11 = *(String + 23);
    if (v11 >= 0)
    {
      v12 = String;
    }

    else
    {
      v12 = *String;
    }

    if (v11 >= 0)
    {
      v13 = *(String + 23);
    }

    else
    {
      v13 = *(String + 8);
    }

    v14 = std::string::append(&v42, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v43, ")");
LABEL_22:
    v27 = *&v16->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[0] = v16->__r_.__value_.__r.__words[2];
    *__p = v27;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v49, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    v3 = *&v49[16];
    v1 = v50.__r_.__value_.__s.__data_[15];
    *&v49[16] = 0;
    *&v50.__r_.__value_.__l.__data_ = 0uLL;
    if (v48.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v28 = 0;
    goto LABEL_31;
  }

  v17 = 1;
  v18 = v6;
  do
  {
    v18 = *v18;
    --v17;
  }

  while (v18 != v7);
  if (v17)
  {
    std::operator+<char>();
    v19 = std::string::append(&v41, ") at prim path (");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v42.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v42.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v3 + 32));
    v22 = *(v21 + 23);
    if (v22 >= 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = *v21;
    }

    if (v22 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = std::string::append(&v42, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v43, ") because more than one connected builder produced the same output type");
    goto LABEL_22;
  }

  v33 = v6[5];
  size = *(v33 + 16);
  v35 = *(v33 + 24);
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v6[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v6[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  realityio::Outputs::getRawValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>(size, EmptyString, v49);
  v28 = v49[0];
  if (v49[0])
  {
    *&v37 = *&v49[8];
    v40 = v37;
  }

  else
  {
    *__p = *&v49[8];
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v48, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
      v38 = v49[0] | ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0);
    }

    else
    {
      v48 = v50;
      v38 = 1;
    }

    v40 = *__p;
    size = v48.__r_.__value_.__l.__size_;
    v3 = v48.__r_.__value_.__r.__words[0];
    v1 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    if ((v38 & 1) == 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if ((v28 & 1) == 0)
  {
    *v49 = v40;
    if (v1 < 0)
    {
      std::string::__init_copy_ctor_external(&v49[16], v3, size);
      v39 = *&v49[16];
      v1 = v50.__r_.__value_.__s.__data_[15];
      operator delete(v3);
      v3 = v39;
    }
  }

LABEL_31:
  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (v28)
  {
    v31 = *(v2 + 16);
    v30 = *(v2 + 24);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = realityio::TransformAnimationAggregationBuilder::kOutputName(v29);
    std::mutex::lock((v31 + 64));
    if (v31 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v31 + 40, v32))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v31 + 40), v32);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v31, v32);
    std::mutex::unlock((v31 + 64));
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  else if (v1 < 0)
  {
    operator delete(v3);
  }
}

void sub_24762591C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformAnimationAggregationBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOBuilderInputsGetTypeID()
{
  if (RIOBuilderInputsGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderInputsGetTypeID::onceToken, &__block_literal_global_18);
  }

  return RIOBuilderInputsGetTypeID::typeID;
}

void __RIOBuilderInputsGetTypeID_block_invoke()
{
  if (!RIOBuilderInputsGetTypeID::typeID)
  {
    RIOBuilderInputsGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

BOOL RIOBuilderInputsHasValueWithName(uint64_t a1, __CFString *this)
{
  v2 = 0;
  if (a1 && this)
  {
    realityio::CFStringCopyUTF8String(this, v12);
    if (v12[0] == 1)
    {
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v13;
      }

      v4 = *(a1 + 16);
      MEMORY[0x24C1A5E00](&v14, &__p);
      v15 = 0;
      v16 = 0;
      v5 = *(v4 + 24);
      if (v5)
      {
        v16 = std::__shared_weak_count::lock(v5);
        if (v16)
        {
          v15 = *(v4 + 16);
        }
      }

      v17 = v14;
      if ((v14 & 7) != 0)
      {
        v6 = v14 & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v17 = v6;
        }
      }

      v7 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v4 + 8), &v15);
      v9 = v8;
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v2 = v7 != v9;
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v12[0] & 1) != 0 && SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_247625C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **RIOBuilderInputsGetValueWithName(uint64_t a1, __CFString *this)
{
  EmptyString = 0;
  if (!a1 || !this)
  {
    return EmptyString;
  }

  realityio::CFStringCopyUTF8String(this, v22);
  if (v22[0] != 1)
  {
    return 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v23;
  }

  v4 = *(a1 + 16);
  v24 = 0;
  v25 = 0;
  v5 = *(v4 + 24);
  if (v5)
  {
    v25 = std::__shared_weak_count::lock(v5);
    if (v25)
    {
      v24 = *(v4 + 16);
    }
  }

  MEMORY[0x24C1A5E00](&v26, &__p);
  v6 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v4 + 8), &v24);
  v8 = v6;
  if (v6 == v7)
  {
    goto LABEL_15;
  }

  v9 = 1;
  v10 = v6;
  do
  {
    v10 = *v10;
    --v9;
  }

  while (v10 != v7);
  if (v9 || (v12 = v6[5]) == 0)
  {
LABEL_15:
    EmptyString = 0;
    goto LABEL_16;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (v14)
    {
      v15 = v8[5];
      v14 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v16)
      {
        v17 = 0;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_33;
      }

LABEL_32:
      v17 = 1;
LABEL_33:
      if ((v8[7] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v8[7] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
      }

      std::mutex::lock(v14 + 1);
      v18 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v14->__m_.__opaque[32], EmptyString);
      if (&v14->__m_.__opaque[40] == v18)
      {
        goto LABEL_44;
      }

      v20 = *(v18 + 56);
      v19 = *(v18 + 64);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v20)
      {
        EmptyString = (**v20)(v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (!v20)
      {
LABEL_44:
        EmptyString = 0;
      }

      std::mutex::unlock(v14 + 1);
      if ((v17 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = 0;
  if (v14)
  {
    goto LABEL_32;
  }

  EmptyString = 0;
LABEL_16:
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v22[0] & 1) != 0 && SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return EmptyString;
}

void sub_247625F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::mutex::unlock(v26 + 1);
  if ((v27 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if ((a24 & 7) != 0)
  {
    atomic_fetch_add_explicit((a24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOBuilderInputsCopyStage(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((**(a1 + 16) + 8));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v3);
  v1 = RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(&v3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v3);
  return v1;
}

void sub_247626020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t RIOBuilderInputsCopyPrim(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v1 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v5, v2, (v1 + 32));
  v9 = 1;
  v3 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v5, &v9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return v3;
}

void sub_2476260DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t RIOBuilderInputsCopyPrimPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((*(result + 16) + 32));
  }

  return result;
}

void *RIOBuilderInputsCopyStageDelta(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  memset(v5, 0, sizeof(v5));
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v8, v6);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(&v9, 0, 0, 0);
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v14, v12);
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v15, v8);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>(&v16, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 4));
  v1 = *MEMORY[0x277CBECE8];
  if (RIOBuilderStageDeltaGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOBuilderStageDeltaGetTypeID::onceToken, &__block_literal_global_10);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(Instance + 16, v14);
    std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set((v3 + 7), v15);
    v3[12] = 0;
    v3[13] = 0;
    v3[14] = 0;
    std::vector<realityio::PropertyDelta>::__init_with_size[abi:ne200100]<realityio::PropertyDelta*,realityio::PropertyDelta*>((v3 + 12), v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 4));
  }

  realityio::StageDelta::~StageDelta(v14);
  v19 = &v9;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v19);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v8);
  v19 = v5;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v19);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v6);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v12);
  return v3;
}

void sub_2476262AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v27 + 56);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v27 + 16);
  realityio::StageDelta::~StageDelta((v28 - 144));
  realityio::PrimDelta::~PrimDelta(&a19);
  *(v28 - 40) = &a10;
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100]((v28 - 40));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a13);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void realityio::StageDelta::~StageDelta(realityio::StageDelta *this)
{
  v2 = (this + 80);
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 40);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this);
}

void realityio::PrimDelta::~PrimDelta(realityio::PrimDelta *this)
{
  v2 = (this + 40);
  std::vector<realityio::PropertyDelta>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this);
}

uint64_t RIOBuilderInputsGetEngine(uint64_t result)
{
  if (result)
  {
    return *(*(*(*(result + 16) + 40) + 16) + 16);
  }

  return result;
}

std::string::size_type RIOBuilderInputsCreateStandardTextureAsset(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (a2)
  {
    v5 = *(a1 + 16);
    if (*(a3 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v15 = *(a3 + 16);
    }

    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(a3 + 40), *(a3 + 48));
    }

    else
    {
      v16 = *(a3 + 40);
    }

    v14 = 0;
    v12 = 0u;
    *__p = 0u;
    *v10 = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    *v7 = 0u;
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v7);
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    DWORD2(v11) = 0;
    HIDWORD(v11) = realityio::TextureSwizzleChannels::kDefault;
    LOBYTE(v12) = 2;
    DWORD1(v12) = 0;
    WORD4(v12) = 512;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    realityio::Inputs::createStandardTextureAsset(v5, v3 + 24, &v15, v7, &v17);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[1]);
    }

    if (SHIBYTE(v8[0]) < 0)
    {
      operator delete(v7[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v3 = v17;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v17);
  }

  return v3;
}

void sub_247626578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type RIOBuilderInputsCreateCubeMapTextureAsset(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (a2)
  {
    v5 = *(a1 + 16);
    if (*(a3 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v7 = *(a3 + 16);
    }

    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a3 + 40), *(a3 + 48));
    }

    else
    {
      __p = *(a3 + 40);
    }

    realityio::Inputs::createCubeMapTextureAsset(v5, v3 + 24, &v7, &v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v3 = v9;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v9);
  }

  return v3;
}

void sub_2476266BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOBuilderInputsGetImportSession(uint64_t result)
{
  if (result)
  {
    return *(*(result + 16) + 40) - 16;
  }

  return result;
}

uint64_t RIOBuilderInputsGetAllBuildersAndOutputNamesProvidingValuesWithName(uint64_t a1, __CFString *this, __CFArray **a3, __CFArray **a4)
{
  v4 = 0;
  if (a1)
  {
    if (this)
    {
      v7 = *(a1 + 16);
      realityio::CFStringCopyUTF8String(this, v27);
      v4 = v27[0];
      if (v27[0] == 1)
      {
        MEMORY[0x24C1A5E00](&v26, &__p);
        v23 = 0;
        v24 = 0;
        v8 = *(v7 + 24);
        if (v8)
        {
          v24 = std::__shared_weak_count::lock(v8);
          if (v24)
          {
            v23 = *(v7 + 16);
          }
        }

        v25 = v26;
        if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v25 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v7 + 8), &v23);
        v11 = v10;
        v20 = a4;
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        v13 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        if (v9 != v11)
        {
          v15 = *MEMORY[0x277CBECE8];
          do
          {
            if (RIOBuilderGetTypeID::onceToken != -1)
            {
              dispatch_once(&RIOBuilderGetTypeID::onceToken, &__block_literal_global_35);
            }

            Instance = _CFRuntimeCreateInstance();
            if (Instance)
            {
              v17 = v9[6];
              Instance[2] = v9[5];
              Instance[3] = v17;
              if (v17)
              {
                atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              }
            }

            value = Instance;
            if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = (v9[7] & 0xFFFFFFFFFFFFFFF8) + 16;
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Instance);
            }

            if (*(EmptyString + 23) >= 0)
            {
              v19 = EmptyString;
            }

            else
            {
              v19 = *EmptyString;
            }

            v21 = CFStringCreateWithCString(0, v19, 0x8000100u);
            CFArrayAppendValue(Mutable, value);
            CFArrayAppendValue(v13, v21);
            realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v21);
            realityio::WrappedCFRef<RIOBuilder const*>::~WrappedCFRef(&value);
            v9 = *v9;
          }

          while (v9 != v11);
        }

        *a3 = Mutable;
        *v20 = v13;
        if ((v25 & 7) != 0)
        {
          atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        if ((v26 & 7) != 0)
        {
          atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v27[0] & 1) != 0 && v29 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  return v4;
}

void sub_247626960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a18 & 7) != 0)
  {
    atomic_fetch_add_explicit((a18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a20 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RIOBuilderInputsPerformBlockSyncOnEngineQueue(uint64_t a1, void *a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (a1 && v3)
  {
    v4 = *(*(a1 + 16) + 48);
    v7[0] = &unk_285955DC0;
    v7[1] = &v6;
    v7[3] = v7;
    (*(*v4 + 16))(v4, v7);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
    v3 = v6;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_247626AC4(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0,std::allocator<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285955DC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0,std::allocator<RIOBuilderInputsPerformBlockSyncOnEngineQueue::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t pugi::xml_writer_stream::write(pugi::xml_writer_stream *this, const void *a2, unint64_t a3)
{
  if (*(this + 1))
  {
    return std::ostream::write();
  }

  else
  {
    return MEMORY[0x2821F7950](*(this + 2), a2, a3 >> 2);
  }
}

uint64_t pugi::xml_attribute::set_value(pugi::xml_attribute *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = strlen(__s);
}

uint64_t pugi::xml_attribute::set_name(pugi::xml_attribute *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = strlen(__s);
}

uint64_t pugi::impl::anonymous namespace::strcpy_insitu<char *,unsigned long>(const char **a1, uint64_t *a2, uint64_t a3, void *__src, size_t __n)
{
  if (!__n)
  {
    v25 = *a2;
    if ((*a2 & a3) != 0)
    {
      v26 = *(a2 - (v25 >> 8));
      v27 = &(*a1)[-8 * *(*a1 - 2) - 4];
      if (*(*a1 - 1))
      {
        v28 = 8 * *(*a1 - 1);
      }

      else
      {
        v28 = *(v27 - 16);
      }

      v25 = *a2;
    }

    *a1 = 0;
    v29 = v25 & ~a3;
    goto LABEL_29;
  }

  v10 = *a1;
  v11 = *a2;
  if (*a1)
  {
    v12 = (*a2 & 0x40) == 0;
    *a2;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = strlen(*a1);
    if ((v11 & a3) != 0)
    {
      if (v13 < __n || v13 >= 0x20 && v13 - __n >= v13 >> 1)
      {
        goto LABEL_11;
      }
    }

    else if (v13 < __n)
    {
      goto LABEL_11;
    }

    memcpy(v10, __src, __n);
    (*a1)[__n] = 0;
    return 1;
  }

LABEL_11:
  v14 = *(a2 - (v11 >> 8));
  v15 = __n + 12;
  v16 = (__n + 12) & 0xFFFFFFFFFFFFFFF8;
  v17 = v14[1];
  if (v17 + v16 <= 0x7FD8)
  {
    v18 = *v14;
    result = *v14 + v17 + 40;
    v14[1] = v17 + v16;
LABEL_13:
    *result = (result - v18 + 524248) >> 3;
    v20 = v15 >> 3;
    if (v15 >= 0x80000)
    {
      LOWORD(v20) = 0;
    }

    *(result + 2) = v20;
    v21 = (result + 4);
    memcpy((result + 4), __src, __n);
    v21[__n] = 0;
    v22 = *a2;
    if ((*a2 & a3) != 0)
    {
      v23 = &(*a1)[-8 * *(*a1 - 2) - 4];
      if (*(*a1 - 1))
      {
        v24 = 8 * *(*a1 - 1);
      }

      else
      {
        v24 = *(v23 - 16);
      }

      v22 = *a2;
    }

    *a1 = v21;
    v29 = v22 | a3;
LABEL_29:
    *a2 = v29;
    return 1;
  }

  v30 = 0;
  if (result)
  {
    LODWORD(v18) = v30;
    goto LABEL_13;
  }

  return result;
}

uint64_t (*pugi::xml_node::operator void (*)(pugi::xml_node***)(void *a1))(pugi *__hidden this, pugi::xml_node ***)
{
  if (*a1)
  {
    return pugi::unspecified_BOOL_xml_node;
  }

  else
  {
    return 0;
  }
}

uint64_t pugi::xml_node::child(pugi::xml_node *this, const char *__s1)
{
  if (!*this)
  {
    return 0;
  }

  for (i = *(*this + 32); i; i = *(i + 48))
  {
    v4 = *(i + 8);
    if (v4 && !strcmp(__s1, v4))
    {
      break;
    }
  }

  return i;
}

uint64_t pugi::xml_node::attribute(pugi::xml_node *this, const char *__s1)
{
  if (!*this)
  {
    return 0;
  }

  for (i = *(*this + 56); i; i = *(i + 32))
  {
    v4 = *(i + 8);
    if (v4 && !strcmp(__s1, v4))
    {
      break;
    }
  }

  return i;
}

uint64_t pugi::xml_node::set_name(pugi::xml_node *this, char *__s)
{
  v3 = *this;
  if (*this)
  {
    v4 = *v3 & 0xF;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != 7 && (v4 & 0xFFFFFFFB) != 2)
  {
    return 0;
  }

  v6 = strlen(__s);
}

uint64_t pugi::xml_node::set_value(pugi::xml_node *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((*v2 & 0xFu) - 3 >= 4 && (*v2 & 0xF) != 8)
  {
    return 0;
  }

  v5 = strlen(__s);
}

char *pugi::xml_node::append_attribute(pugi::xml_node *this, char *__s)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *v2 & 0xFLL;
  if (v3 != 7 && v3 != 2)
  {
    return 0;
  }

  v7 = *(v2 - (*v2 >> 8));
  v8 = v7[1];
  if ((v8 + 40) > 0x7FD8)
  {
    v15 = 0;
    if (!v10)
    {
      return v10;
    }

    v9 = v15;
  }

  else
  {
    v9 = *v7;
    v10 = &v8[*v7 + 40];
    v7[1] = v8 + 40;
  }

  *(v10 + 24) = 0u;
  *(v10 + 8) = 0u;
  *v10 = (v10 - v9) << 8;
  v15 = v10;
  v11 = *(*this + 56);
  if (v11)
  {
    v13 = *(v11 + 24);
    v12 = (v11 + 24);
    *(v13 + 32) = v10;
    *(v10 + 3) = v13;
  }

  else
  {
    *(*this + 56) = v10;
    v12 = (v10 + 24);
  }

  *v12 = v10;
  pugi::xml_attribute::set_name(&v15, __s);
  return v10;
}

char *pugi::xml_node::append_child(void **a1, unsigned int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >= 2)
  {
    v4 = *v2 & 0xFLL;
    if ((v4 - 3) >= 0xFFFFFFFE)
    {
      if (a2 - 9 >= 0xFFFFFFFE && v4 != 1)
      {
        return 0;
      }

      v6 = *(v2 - (*v2 >> 8));
      v7 = v6[1];
      if ((v7 + 64) > 0x7FD8)
      {
        v14 = a1;
        v15 = 0;
        v13 = a2;
        if (!v3)
        {
          return v3;
        }

        a1 = v14;
        v8 = v15;
        a2 = v13;
      }

      else
      {
        v8 = *v6;
        v3 = &v7[*v6 + 40];
        v6[1] = v7 + 64;
      }

      *(v3 + 7) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 8) = 0u;
      *v3 = a2 | ((v3 - v8) << 8);
      v15 = v3;
      v9 = *a1;
      *(v3 + 3) = *a1;
      v10 = v9[4];
      if (v10)
      {
        v12 = *(v10 + 40);
        v11 = (v10 + 40);
        *(v12 + 48) = v3;
        *(v3 + 5) = v12;
      }

      else
      {
        v9[4] = v3;
        v11 = (v3 + 40);
      }

      *v11 = v3;
      if (a2 == 7)
      {
        pugi::xml_node::set_name(&v15, "xml");
      }
    }
  }

  return v3;
}

uint64_t pugi::xml_node::remove_child(pugi::xml_node *this, uint64_t **a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = v3[3];
  if (v4 != v2)
  {
    return 0;
  }

  v6 = *(v2 - (*v2 >> 8));
  v8 = v3[5];
  v7 = v3[6];
  v9 = v7;
  if (!v7)
  {
    v9 = v4[4];
  }

  *(v9 + 40) = v8;
  v11 = *(v8 + 48);
  v10 = (v8 + 48);
  v12 = v4 + 4;
  if (v11)
  {
    v12 = v10;
  }

  *v12 = v7;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  return 1;
}

void pugi::impl::anonymous namespace::destroy_node(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a1 & 0x20) != 0)
  {
    v5 = a1[1];
    v6 = *(v5 - 4);
    v5 -= 4;
    v7 = v5 - 8 * v6;
    v8 = *(v5 + 2);
    if (v8)
    {
      v9 = 8 * v8;
    }

    else
    {
      v9 = *(v7 - 16);
    }

    v4 = *a1;
  }

  if ((v4 & 0x10) != 0)
  {
    v10 = a1[2];
    v11 = *(v10 - 4);
    v10 -= 4;
    v12 = v10 - 8 * v11;
    v13 = *(v10 + 2);
    if (v13)
    {
      v14 = 8 * v13;
    }

    else
    {
      v14 = *(v12 - 16);
    }
  }

  v15 = a1[7];
  if (v15)
  {
    do
    {
      v16 = v15[4];
      v17 = *v15;
      if ((*v15 & 0x20) != 0)
      {
        v18 = v15[1];
        v19 = *(v18 - 4);
        v18 -= 4;
        v20 = v18 - 8 * v19;
        v21 = *(v18 + 2);
        if (v21)
        {
          v22 = 8 * v21;
        }

        else
        {
          v22 = *(v20 - 16);
        }

        v17 = *v15;
      }

      if ((v17 & 0x10) != 0)
      {
        v23 = v15[2];
        v24 = *(v23 - 4);
        v23 -= 4;
        v25 = v23 - 8 * v24;
        v26 = *(v23 + 2);
        if (v26)
        {
          v27 = 8 * v26;
        }

        else
        {
          v27 = *(v25 - 16);
        }

        v17 = *v15;
      }

      v15 = v16;
    }

    while (v16);
  }

  v28 = a1[4];
  if (v28)
  {
    do
    {
      v29 = *(v28 + 48);
      v28 = v29;
    }

    while (v29);
  }

  v30 = (a1 - (*a1 >> 8));
}

void pugi::impl::anonymous namespace::load_buffer_impl(pugi::impl::_anonymous_namespace_ *this@<X2>, unsigned __int8 *a2@<X3>, uint64_t a3@<X0>, uint64_t a4@<X1>, unint64_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 **a10)
{
  v12 = a5;
  v13 = a2;
  v17 = a9;
  if (!this && a2)
  {
    *(a9 + 16) = 0;
    v18 = 2;
LABEL_557:
    *v17 = v18;
    *(v17 + 8) = 0;
    return;
  }

  v231 = buffer_encoding;
  v232 = a3;
  if (buffer_encoding == 1)
  {
    if (a7)
    {
      v20 = this;
      goto LABEL_123;
    }

    goto LABEL_117;
  }

  if ((buffer_encoding & 0xFFFFFFFE) == 2)
  {
    v21 = v13 >> 1;
    if (buffer_encoding == 2)
    {
      if (v13 >= 2)
      {
        v22 = 0;
        v23 = this;
        v24 = v13 >> 1;
        while (1)
        {
          v25 = *v23;
          if (v25 >> 11 > 0x1A)
          {
            if ((~v25 & 0xE000) != 0)
            {
              v27 = (v23 + 2);
              v28 = -1;
              if (v24 != 1 && (v25 & 0xFC00) == 0xD800)
              {
                v29 = *v27 & 0xFC00;
                v30 = v29 == 56320;
                v31 = (v23 + 4);
                if (v29 == 56320)
                {
                  v28 = -2;
                }

                else
                {
                  v28 = -1;
                }

                if (v30)
                {
                  v22 += 4;
                }

                if (v30)
                {
                  v27 = v31;
                }
              }

              goto LABEL_21;
            }

            v22 += 3;
          }

          else
          {
            if (v25 < 0x800)
            {
              v26 = 2;
            }

            else
            {
              v26 = 3;
            }

            if (v25 < 0x80)
            {
              v26 = 1;
            }

            v22 += v26;
          }

          v27 = (v23 + 2);
          v28 = -1;
LABEL_21:
          v23 = v27;
          v24 += v28;
          if (!v24)
          {
            v45 = v22 + 1;
            if (!v46)
            {
              goto LABEL_556;
            }

            v47 = this;
            v225 = v46;
            while (2)
            {
              v48 = *v47;
              if (v48 >> 11 <= 0x1A || (~v48 & 0xE000) == 0)
              {
                v49 = (v47 + 2);
                goto LABEL_67;
              }

              v49 = (v47 + 2);
              v50 = -1;
              if (v21 != 1 && (v48 & 0xFC00) == 0xD800)
              {
                v51 = *v49;
                if ((*v49 & 0xFC00) == 0xDC00)
                {
                  v52 = ((v48 << 10) & 0xFFC00) + 0x10000;
                  *v46 = (v52 >> 18) | 0xF0;
                  v46[1] = (v52 >> 12) & 0x3F | 0x80;
                  v46[2] = (((v48 << 10) | v51 & 0x3FFu) >> 6) & 0x3F | 0x80;
                  v46[3] = v51 & 0x3F | 0x80;
                  v46 += 4;
                  v49 = (v47 + 4);
                  v50 = -2;
                }

                else
                {
LABEL_67:
                  v50 = -1;
                }
              }

              v47 = v49;
              v21 += v50;
              if (!v21)
              {
                goto LABEL_113;
              }

              continue;
            }
          }
        }
      }

LABEL_55:
      v45 = 1;
      if (v46)
      {
        v20 = v46;
        goto LABEL_121;
      }

      goto LABEL_556;
    }

    if (v13 < 2)
    {
      goto LABEL_55;
    }

    v53 = 0;
    v54 = this;
    v55 = v13 >> 1;
    while (1)
    {
      v56 = bswap32(*v54);
      v57 = HIWORD(v56);
      if (v56 >> 27 > 0x1A)
      {
        if ((~v57 & 0xE000) != 0)
        {
          v59 = (v54 + 2);
          v60 = -1;
          if (v55 != 1 && (v57 & 0xFC00) == 0xD800)
          {
            v61 = *v59 & 0xFC;
            v62 = v61 == 220;
            v63 = (v54 + 4);
            if (v61 == 220)
            {
              v60 = -2;
            }

            else
            {
              v60 = -1;
            }

            if (v62)
            {
              v53 += 4;
            }

            if (v62)
            {
              v59 = v63;
            }
          }

          goto LABEL_88;
        }

        v53 += 3;
      }

      else
      {
        if (v57 < 0x800)
        {
          v58 = 2;
        }

        else
        {
          v58 = 3;
        }

        if (v57 < 0x80)
        {
          v58 = 1;
        }

        v53 += v58;
      }

      v59 = (v54 + 2);
      v60 = -1;
LABEL_88:
      v54 = v59;
      v55 += v60;
      if (!v55)
      {
        v45 = v53 + 1;
        if (!v46)
        {
          goto LABEL_556;
        }

        v64 = this;
        v225 = v46;
        while (2)
        {
          v65 = bswap32(*v64);
          v66 = HIWORD(v65);
          if (v65 >> 27 <= 0x1A || (~v66 & 0xE000) == 0)
          {
            v67 = (v64 + 2);
            goto LABEL_106;
          }

          v67 = (v64 + 2);
          v68 = -1;
          if (v21 != 1 && (v66 & 0xFC00) == 0xD800)
          {
            v69 = bswap32(*v67) >> 16;
            if ((v69 & 0xFC00) == 0xDC00)
            {
              v70 = ((v66 << 10) & 0xFFC00) + 0x10000;
              *v46 = (v70 >> 18) | 0xF0;
              v46[1] = (v70 >> 12) & 0x3F | 0x80;
              v46[2] = (((v66 << 10) | v69 & 0x3FF) >> 6) & 0x3F | 0x80;
              v46[3] = v69 & 0x3F | 0x80;
              v46 += 4;
              v67 = (v64 + 4);
              v68 = -2;
            }

            else
            {
LABEL_106:
              v68 = -1;
            }
          }

          v64 = v67;
          v21 += v68;
          if (!v21)
          {
LABEL_113:
            v20 = v225;
            goto LABEL_122;
          }

          continue;
        }
      }
    }
  }

  if ((buffer_encoding - 5) <= 1)
  {
    v32 = v13 >> 2;
    if (buffer_encoding == 5)
    {
      if (v13 >= 4)
      {
        v33 = 0;
        v34 = this;
        v35 = v13 >> 2;
        do
        {
          v37 = *v34;
          v34 = (v34 + 4);
          v36 = v37;
          v38 = HIWORD(v37);
          v39 = v33 + 4;
          if (v37 < 0x800)
          {
            v40 = 2;
          }

          else
          {
            v40 = 3;
          }

          if (v36 < 0x80)
          {
            v41 = 1;
          }

          else
          {
            v41 = v40;
          }

          v33 += v41;
          if (v38)
          {
            v33 = v39;
          }

          --v35;
        }

        while (v35);
        v45 = v33 + 1;
        if (v46)
        {
          v20 = v46;
          v42 = this;
          do
          {
            v43 = *v42;
            if (v43 >> 16)
            {
              *v46 = (v43 >> 18) | 0xF0;
              v46[1] = (v43 >> 12) & 0x3F | 0x80;
              v46[2] = (v43 >> 6) & 0x3F | 0x80;
              v46[3] = v43 & 0x3F | 0x80;
              v46 += 4;
            }

            else
            {
            }

            v42 = (v42 + 4);
            --v32;
          }

          while (v32);
          goto LABEL_121;
        }

        goto LABEL_556;
      }
    }

    else if (v13 >= 4)
    {
      v201 = 0;
      v202 = this;
      v203 = v13 >> 2;
      do
      {
        v204 = bswap32(*v202);
        if (HIWORD(v204))
        {
          v201 += 4;
        }

        else
        {
          if (v204 < 0x800)
          {
            v205 = 2;
          }

          else
          {
            v205 = 3;
          }

          if (v204 < 0x80)
          {
            v206 = 1;
          }

          else
          {
            v206 = v205;
          }

          v201 += v206;
        }

        ++v202;
        --v203;
      }

      while (v203);
      v45 = v201 + 1;
      if (v46)
      {
        v20 = v46;
        v207 = this;
        do
        {
          v208 = bswap32(*v207);
          if (v208 >> 16)
          {
            *v46 = (v208 >> 18) | 0xF0;
            v46[1] = (v208 >> 12) & 0x3F | 0x80;
            v46[2] = (v208 >> 6) & 0x3F | 0x80;
            v46[3] = v208 & 0x3F | 0x80;
            v46 += 4;
          }

          else
          {
          }

          ++v207;
          --v32;
        }

        while (v32);
        goto LABEL_121;
      }

      goto LABEL_556;
    }

    v45 = 1;
    if (v46)
    {
      v20 = v46;
      goto LABEL_121;
    }

    goto LABEL_556;
  }

  if (buffer_encoding != 9)
  {
    goto LABEL_556;
  }

  v44 = 0;
  if (v13)
  {
    while ((*(this + v44) & 0x80000000) == 0)
    {
      if (v13 == ++v44)
      {
        goto LABEL_115;
      }
    }
  }

  v71 = v13 - v44;
  if (v13 == v44)
  {
LABEL_115:
    if (a7)
    {
      v20 = this;
      goto LABEL_123;
    }

LABEL_117:
    v45 = v13 + 1;
    if (v72)
    {
      v20 = v72;
      if (this)
      {
        memcpy(v72, this, v13);
      }

      v46 = &v20[v13];
      goto LABEL_121;
    }

LABEL_556:
    *(v17 + 16) = 0;
    v18 = 3;
    goto LABEL_557;
  }

  v209 = this + v44;
  if (v71)
  {
    v71 = 0;
    v210 = v44 - v13;
    v211 = this + v44;
    do
    {
      v212 = *v211++;
      if (v212 >= 0)
      {
        v213 = 1;
      }

      else
      {
        v213 = 2;
      }

      v71 += v213;
      v214 = __CFADD__(v210++, 1);
    }

    while (!v214);
  }

  v45 = v44 + v71 + 1;
  if (!v215)
  {
    goto LABEL_556;
  }

  v20 = v215;
  memcpy(v215, this, v44);
  v46 = &v20[v44];
  if (v13 != v44)
  {
    v216 = v44 - v13;
    do
    {
      v217 = *v209++;
      v214 = __CFADD__(v216++, 1);
    }

    while (!v214);
  }

LABEL_121:
  a3 = v232;
LABEL_122:
  *v46 = 0;
  v13 = v45;
LABEL_123:
  if (a8)
  {
    v73 = v231;
    if (this && v20 != this)
    {
    }

    goto LABEL_128;
  }

  v73 = v231;
  if (v20 != this)
  {
LABEL_128:
    *a10 = v20;
  }

  *(a3 + 80) = v20;
  if (!v13)
  {
    *v17 = ~(v12 >> 8) & 0x10;
    *(v17 + 8) = 0;
    goto LABEL_617;
  }

  v74 = *(a4 + 32);
  if (v74)
  {
    v227 = *(v74 + 40);
  }

  else
  {
    v227 = 0;
  }

  v75 = v13 - 1;
  v230 = v20[v13 - 1];
  v20[v13 - 1] = 0;
  v76 = v20;
  if (*v20 == 239)
  {
    v76 = v20;
    if (v20[1] == 187)
    {
      v77 = 3;
      if (v20[2] != 191)
      {
        v77 = 0;
      }

      v76 = &v20[v77];
    }
  }

  v228 = *(&off_285955F00 + ((v12 >> 9) & 4 | (v12 >> 4) & 3));
  v229 = *(&off_285955E80 + (v12 >> 4));
  v78 = (v12 & 0x800) == 0 && (v12 & 0x408) != 0;
  v79 = a4;
LABEL_143:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          while (2)
          {
            while (2)
            {
              while (2)
              {
                v80 = *v76;
                do
                {
                  v81 = v76;
                  if (!v80)
                  {
                    goto LABEL_509;
                  }

                  if (v80 == 60)
                  {
                    v85 = v232;
LABEL_167:
                    v87 = *++v81;
                    v86 = v87;
                    goto LABEL_175;
                  }

                  {
                    do
                    {
                      v82 = *++v76;
                      v80 = v82;
                    }
                  }

                  v83 = v80 == 60 || v80 == 0;
                }

                while (v83 && (!v78 || (v12 & 0x400) != 0 && (v80 != 60 || v76[1] != 47 || *(v79 + 4))));
                if ((v12 & 0x800) != 0)
                {
                  v81 = v76;
                }

                v84 = *(v79 + 3);
                if ((v12 & 0x1000) == 0 && !v84)
                {
                  v85 = v232;
                  while (*v81)
                  {
                    if (*v81 == 60)
                    {
                      goto LABEL_167;
                    }

                    ++v81;
                  }

LABEL_509:
                  if (v79 != a4)
                  {
                    v88 = 14;
                    goto LABEL_511;
                  }

                  v73 = v231;
                  if (v230 == 60)
                  {
                    v198 = 5;
LABEL_522:
                    *v17 = v198;
                    *(v17 + 8) = v75;
                    goto LABEL_617;
                  }

                  if ((v12 & 0x1000) == 0)
                  {
                    v199 = (v227 + 48);
                    if (!v227)
                    {
                      v199 = (a4 + 32);
                    }

                    v200 = *v199;
                    if (!v200)
                    {
LABEL_521:
                      v198 = 16;
                      goto LABEL_522;
                    }

                    while ((*v200 & 0xFLL) != 2)
                    {
                      v200 = v200[6];
                      if (!v200)
                      {
                        goto LABEL_521;
                      }
                    }
                  }

                  v88 = 0;
LABEL_542:
                  v197 = 0;
                  goto LABEL_616;
                }

                if ((v12 & 0x2000) != 0 && v84 && !*(v79 + 4) && !*(v79 + 2))
                {
                  v90 = v79;
                  *(v79 + 2) = v81;
                  goto LABEL_174;
                }

                v88 = 3;
                if (!appended)
                {
                  goto LABEL_511;
                }

                *(appended + 2) = v81;
                v90 = *(appended + 3);
LABEL_174:
                v81 = v228(v81);
                v86 = *v81;
                v85 = v232;
                v79 = v90;
                if (!*v81)
                {
                  goto LABEL_509;
                }

LABEL_175:
                {
                  if (v79)
                  {
                    *(v79 + 1) = v81;
                    i = v81 + 1;
                    while (1)
                    {
                      v95 = *(i - 1);
                      if ((v96 & 0x40) == 0)
                      {
                        break;
                      }

                      v95 = *i;
                      if ((v96 & 0x40) == 0)
                      {
                        goto LABEL_265;
                      }

                      v95 = i[1];
                      if ((v96 & 0x40) == 0)
                      {
                        ++i;
LABEL_265:
                        *i = 0;
                        v76 = i + 1;
                        if (v95 != 62)
                        {
                          if ((v96 & 8) != 0)
                          {
                            goto LABEL_417;
                          }

                          if (v95)
                          {
                            if (v95 != 47 || ((v131 = *v76, v230 == 62) ? (v132 = v131 == 0) : (v132 = 0), !v132 ? (v133 = 0) : (v133 = 1), v131 != 62 && !v133))
                            {
                              v88 = 11;
                              goto LABEL_606;
                            }

                            v79 = *(v79 + 3);
                            if (v131 == 62)
                            {
                              v76 = i + 2;
                            }
                          }

                          else
                          {
                            v76 = i;
                            if (v230 != 62)
                            {
                              v88 = 11;
                              goto LABEL_607;
                            }
                          }
                        }

                        goto LABEL_143;
                      }

                      v95 = i[2];
                      i += 4;
                      if ((v96 & 0x40) == 0)
                      {
                        i -= 2;
                        goto LABEL_265;
                      }
                    }

                    --i;
                    goto LABEL_265;
                  }

                  v88 = 3;
                  goto LABEL_576;
                }

                if (v86 == 33)
                {
                  v76 = v81 + 1;
                  v111 = v81[1];
                  if (v111 != 91)
                  {
                    if (v111 != 68)
                    {
                      if (v111 == 45)
                      {
                        if (v81[2] != 45)
                        {
                          i = v81 + 2;
LABEL_588:
                          v88 = 7;
                          goto LABEL_607;
                        }

                        i = v81 + 3;
                        v112 = v79;
                        if ((v12 & 2) == 0)
                        {
                          goto LABEL_212;
                        }

                        v113 = v79;
                        if (v114)
                        {
                          v112 = v114;
                          *(v114 + 2) = i;
                          v79 = v113;
LABEL_212:
                          if ((v12 & 0x22) == 0x22)
                          {
                            v224 = v75;
                            v115 = 0;
                            v116 = 0;
                            while (1)
                            {
                              while (1)
                              {
                                v117 = *i;
                                {
                                  v118 = i;
                                }

                                else
                                {
                                  v118 = i + 2;
                                  while (1)
                                  {
                                    v117 = *(v118 - 1);
                                    {
                                      --v118;
                                      goto LABEL_223;
                                    }

                                    v117 = *v118;
                                    {
                                      goto LABEL_223;
                                    }

                                    v117 = v118[1];
                                    {
                                      break;
                                    }

                                    v117 = v118[2];
                                    v118 += 4;
                                    {
                                      v118 -= 2;
                                      goto LABEL_223;
                                    }
                                  }

                                  ++v118;
                                }

LABEL_223:
                                if (v117 != 13)
                                {
                                  break;
                                }

                                i = v118 + 1;
                                v122 = v118[1];
                                *v118 = 10;
                                if (v122 == 10)
                                {
                                  if (v115)
                                  {
                                    v123 = v79;
                                    v124 = i - v115;
                                    v125 = v116;
                                    memmove(&v115[-v116], v115, v124);
                                    v116 = v125;
                                    v79 = v123;
                                  }

                                  i = v118 + 2;
                                  ++v116;
                                  v115 = v118 + 2;
                                }
                              }

                              if (v117 == 45)
                              {
                                if (v118[1] == 45)
                                {
                                  v119 = v118[2];
                                  v120 = v230 == 62 && v119 == 0;
                                  v121 = v120;
                                  if (v119 == 62 || v121)
                                  {
                                    v189 = v118;
                                    if (v115)
                                    {
                                      v190 = v79;
                                      v191 = v116;
                                      memmove(&v115[-v116], v115, v118 - v115);
                                      v79 = v190;
                                      v189 = &v118[-v191];
                                    }

                                    *v189 = 0;
                                    v192 = 2;
                                    if (v118[2] == 62)
                                    {
                                      v192 = 3;
                                    }

                                    v76 = &v118[v192];
                                    v75 = v224;
                                    goto LABEL_143;
                                  }
                                }
                              }

                              else if (!v117)
                              {
                                v88 = 7;
                                v75 = v224;
                                goto LABEL_566;
                              }

                              i = v118 + 1;
                            }
                          }

                          while (1)
                          {
                            if (*i == 45)
                            {
                              if (i[1] == 45)
                              {
                                v177 = i[2];
                                v178 = v230 == 62 && v177 == 0;
                                v179 = !v178;
                                if (v177 == 62 || !v179)
                                {
                                  if ((v12 & 2) != 0)
                                  {
                                    *i = 0;
                                  }

                                  v187 = v177 == 62;
                                  v188 = 2;
LABEL_497:
                                  if (v187)
                                  {
                                    ++v188;
                                  }

                                  v76 = &i[v188];
                                  goto LABEL_143;
                                }
                              }
                            }

                            else if (!*i)
                            {
                              goto LABEL_588;
                            }

                            ++i;
                          }
                        }

LABEL_562:
                        v88 = 3;
                        goto LABEL_607;
                      }

                      if (v230 == 45 && !v81[1])
                      {
                        v88 = 7;
                        goto LABEL_606;
                      }

                      if (v230 == 91 && !v81[1])
                      {
                        v88 = 8;
                        goto LABEL_606;
                      }

LABEL_605:
                      v88 = 5;
                      goto LABEL_606;
                    }

                    if (v81[2] != 79 || v81[3] != 67 || v81[4] != 84 || v81[5] != 89 || v81[6] != 80)
                    {
                      goto LABEL_605;
                    }

                    v138 = v81[7];
                    v139 = v230 == 69 && v138 == 0;
                    v140 = v139;
                    if (v138 != 69 && !v140)
                    {
                      goto LABEL_605;
                    }

                    v141 = *(v79 + 3);
                    if (v141)
                    {
                      i = v81 - 1;
                      goto LABEL_598;
                    }

                    v142 = 68;
LABEL_310:
                    if (v142 > 59)
                    {
                      if (v142 == 60)
                      {
                        v146 = v76[1];
                        if (v146 == 63)
                        {
                          for (i = v76 + 2; ; ++i)
                          {
                            if (*i == 63)
                            {
                              if (i[1] == 62)
                              {
                                v76 = i + 2;
                                goto LABEL_347;
                              }
                            }

                            else if (!*i)
                            {
                              goto LABEL_598;
                            }
                          }
                        }

                        if (v146 != 33)
                        {
                          goto LABEL_599;
                        }

                        v147 = v76[2];
                        if (v147 == 45)
                        {
                          if (v76[3] == 45)
                          {
                            for (i = v76 + 4; ; ++i)
                            {
                              if (*i == 45)
                              {
                                if (i[1] == 45 && i[2] == 62)
                                {
                                  v76 = i + 3;
                                  goto LABEL_347;
                                }
                              }

                              else if (!*i)
                              {
                                goto LABEL_598;
                              }
                            }
                          }

LABEL_599:
                          v88 = 9;
                          goto LABEL_606;
                        }

                        if (v147 != 91)
                        {
                          ++v141;
                          v76 += 2;
                          goto LABEL_347;
                        }

                        v148 = 0;
                        v76 += 3;
LABEL_330:
                        for (v76 += 3; ; ++v76)
                        {
                          v149 = *(v76 - 3);
                          if (v149 == 60)
                          {
                            if (*(v76 - 2) == 33 && *(v76 - 1) == 91)
                            {
                              v150 = 1;
LABEL_344:
                              v148 += v150;
                              goto LABEL_330;
                            }
                          }

                          else if (v149 == 93)
                          {
                            if (*(v76 - 2) == 93 && *(v76 - 1) == 62)
                            {
                              if (v148)
                              {
                                v150 = -1;
                                goto LABEL_344;
                              }

LABEL_347:
                              v142 = *v76;
                              goto LABEL_310;
                            }
                          }

                          else if (!*(v76 - 3))
                          {
                            i = v76 - 3;
                            goto LABEL_598;
                          }
                        }
                      }

                      if (v142 != 62)
                      {
LABEL_346:
                        ++v76;
                        goto LABEL_347;
                      }

                      if (v141)
                      {
                        --v141;
                        goto LABEL_346;
                      }

                      *v76++ = 0;
                    }

                    else
                    {
                      if (v142 == 34 || v142 == 39)
                      {
                        ++v76;
                        do
                        {
                          v144 = *v76++;
                          v143 = v144;
                          if (v144)
                          {
                            v145 = v143 == v142;
                          }

                          else
                          {
                            v145 = 1;
                          }
                        }

                        while (!v145);
                        if (v143)
                        {
                          goto LABEL_347;
                        }

                        i = v76 - 1;
LABEL_598:
                        v88 = 9;
                        goto LABEL_607;
                      }

                      if (v142)
                      {
                        goto LABEL_346;
                      }

                      v88 = 9;
                      if (v230 != 62)
                      {
                        goto LABEL_606;
                      }

                      i = v76;
                      if (v141)
                      {
                        goto LABEL_607;
                      }
                    }

                    if ((v12 & 0x200) != 0)
                    {
                      v193 = v81 + 7;
                      do
                      {
                        v194 = *++v193;
                      }

                      v195 = v79;
                      if (!v196)
                      {
                        v88 = 3;
                        goto LABEL_606;
                      }

                      *(v196 + 2) = v193;
                      v79 = v195;
                    }

                    continue;
                  }

                  if (v81[2] == 67)
                  {
                    if (v81[3] == 68)
                    {
                      if (v81[4] == 65)
                      {
                        if (v81[5] == 84)
                        {
                          if (v81[6] == 65)
                          {
                            if (v81[7] == 91)
                            {
                              i = v81 + 8;
                              if ((v12 & 4) == 0)
                              {
                                while (1)
                                {
                                  if (*i == 93)
                                  {
                                    if (i[1] == 93)
                                    {
                                      v151 = i[2];
                                      v152 = v230 == 62 && v151 == 0;
                                      v153 = !v152;
                                      if (v151 == 62 || !v153)
                                      {
                                        ++i;
                                        goto LABEL_496;
                                      }
                                    }
                                  }

                                  else if (!*i)
                                  {
                                    goto LABEL_596;
                                  }

                                  ++i;
                                }
                              }

                              v181 = v79;
                              if (!v182)
                              {
                                goto LABEL_562;
                              }

                              v112 = v182;
                              *(v182 + 2) = i;
                              if ((v12 & 0x20) == 0)
                              {
                                v79 = v181;
                                while (1)
                                {
                                  if (*i == 93)
                                  {
                                    if (i[1] == 93)
                                    {
                                      v183 = i[2];
                                      v184 = v230 == 62 && v183 == 0;
                                      v185 = !v184;
                                      if (v183 == 62 || !v185)
                                      {
                                        *i++ = 0;
                                        goto LABEL_496;
                                      }
                                    }
                                  }

                                  else if (!*i)
                                  {
                                    goto LABEL_596;
                                  }

                                  ++i;
                                }
                              }

                              v79 = v181;
                              if (i)
                              {
LABEL_496:
                                v187 = i[1] == 62;
                                v188 = 1;
                                goto LABEL_497;
                              }

                              v88 = 8;
LABEL_566:
                              v81 = *(v112 + 2);
LABEL_511:
                              v73 = v231;
                              if (v81)
                              {
                                v197 = v81 - v20;
                                goto LABEL_608;
                              }

                              goto LABEL_542;
                            }

                            i = v81 + 7;
                          }

                          else
                          {
                            i = v81 + 6;
                          }
                        }

                        else
                        {
                          i = v81 + 5;
                        }
                      }

                      else
                      {
                        i = v81 + 4;
                      }
                    }

                    else
                    {
                      i = v81 + 3;
                    }
                  }

                  else
                  {
                    i = v81 + 2;
                  }

LABEL_596:
                  v88 = 8;
                  goto LABEL_607;
                }

                break;
              }

              if (v86 != 63)
              {
                if (v86 == 47)
                {
                  i = v81 + 1;
                  v92 = *(v79 + 1);
                  if (v92)
                  {
                    v76 = v81 + 1;
                    while (1)
                    {
                      v93 = *v76;
                      {
                        break;
                      }

                      ++v76;
                      v94 = *v92++;
                      if (v93 != v94)
                      {
                        goto LABEL_581;
                      }
                    }

                    if (!*v92)
                    {
                      v79 = *(v79 + 3);
                      do
                      {
                        i = v76;
                        v130 = *v76++;
                        v129 = v130;
                      }

                      if (v129)
                      {
                        if (v129 != 62)
                        {
                          v88 = 13;
                          goto LABEL_607;
                        }

                        continue;
                      }

                      --v76;
                      if (v230 == 62)
                      {
                        continue;
                      }

LABEL_590:
                      v88 = 13;
                      goto LABEL_606;
                    }

                    if (!*v76 && *v92 == v230 && !v92[1])
                    {
                      goto LABEL_590;
                    }
                  }

LABEL_581:
                  v88 = 14;
                  goto LABEL_607;
                }

                if (v86)
                {
                  v218 = 0;
                }

                else
                {
                  v218 = v230 == 63;
                }

                if (v218)
                {
                  v88 = 6;
                }

                else
                {
                  v88 = 5;
                }

LABEL_576:
                i = v81;
                goto LABEL_607;
              }

              break;
            }

            i = v81 + 1;
            {
LABEL_565:
              v88 = 6;
              goto LABEL_607;
            }

            v223 = v75;
            v226 = v20;
            v97 = v81 + 1;
            v98 = v81 + 3;
            v99 = 4;
            v100 = 1;
            do
            {
              v101 = v100;
              v76 = v97;
              v103 = *v97++;
              v102 = v103;
              v104 = v98;
              ++v100;
              --v99;
              ++v98;
            }

            v105 = &v81[v101];
            if (!v102)
            {
              v88 = 6;
              i = v105;
              goto LABEL_560;
            }

            v222 = v105;
            v106 = v97 - 1;
            if ((v81[1] & 0xDF) != 0x58 || (v81[2] & 0xDF) != 0x4D)
            {
              v109 = v230;
              if ((v12 & 1) == 0)
              {
                goto LABEL_243;
              }

LABEL_280:
              if (v79)
              {
                v110 = 0;
                v20 = v226;
                goto LABEL_282;
              }

              v88 = 3;
LABEL_559:
              i = v106;
LABEL_560:
              v75 = v223;
              v20 = v226;
              goto LABEL_607;
            }

            v107 = v99 == 0 && (v81[3] & 0xDF) == 76;
            if (v107)
            {
              v108 = 256;
            }

            else
            {
              v108 = 1;
            }

            v109 = v230;
            if ((v108 & v12) == 0)
            {
              while (1)
              {
LABEL_243:
                if (v102 == 63)
                {
                  v102 = v106[1];
                  v127 = v109 != 62 || v102 != 0;
                  if (v102 == 62 || !v127)
                  {
                    v30 = v102 == 62;
                    v161 = 1;
                    if (v30)
                    {
                      v161 = 2;
                    }

                    v76 = &v106[v161];
                    v20 = v226;
                    goto LABEL_415;
                  }
                }

                else
                {
                  if (!v102)
                  {
                    v88 = 6;
                    goto LABEL_559;
                  }

                  v102 = v106[1];
                }

                ++v106;
              }
            }

            if (!v107)
            {
              goto LABEL_280;
            }

            if (*(v79 + 3))
            {
              v88 = 6;
              i = v105;
              goto LABEL_560;
            }

            v20 = v226;
            if (!v79)
            {
              v88 = 3;
              i = v222;
              v75 = v223;
              goto LABEL_607;
            }

            v110 = 1;
LABEL_282:
            *(v79 + 1) = i;
            v134 = *(v97 - 1);
            *(v97 - 1) = 0;
            if (v134 == 63)
            {
              v135 = *v97;
              v137 = v109 == 62 && v135 == 0;
              if (v135 != 62 && !v137)
              {
                v88 = 6;
                i = v97;
                v75 = v223;
                goto LABEL_607;
              }

              if (v135 == 62)
              {
                v76 = v97 + 1;
              }

              else
              {
                v76 = v97;
              }

              v79 = *(v79 + 3);
LABEL_415:
              v75 = v223;
              goto LABEL_416;
            }

            {
              v75 = v223;
              i = v222 + 1;
              goto LABEL_565;
            }

            v75 = v223;
            do
            {
              v155 = v104;
              v157 = *++v76;
              v156 = v157;
              ++v104;
            }

            while (v156 != 63)
            {
              if (!v156)
              {
                i = v155 - 1;
                goto LABEL_565;
              }

              v156 = *v155;
LABEL_391:
              ++v155;
            }

            v156 = *v155;
            v159 = v109 != 62 || v156 != 0;
            if (v156 != 62 && v159)
            {
              goto LABEL_391;
            }

            if (v110)
            {
              *(v155 - 1) = 47;
            }

            else
            {
              *(v79 + 2) = v76;
              v79 = *(v79 + 3);
              *(v155 - 1) = 0;
              if (*v155 == 62)
              {
                v76 = v155 + 1;
              }

              else
              {
                v76 = v155;
              }
            }

LABEL_416:
            if ((*v79 & 0xFLL) != 7)
            {
              continue;
            }

            break;
          }

          while (1)
          {
            do
            {
LABEL_417:
              i = v76;
              v163 = *v76++;
              v162 = v163;
            }

            while ((v164 & 8) != 0);
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v165 = v17;
            v166 = v75;
            v167 = v79;
            if (!v168)
            {
              v75 = v166;
              v17 = v165;
              goto LABEL_562;
            }

            v112 = v168;
            *(v168 + 1) = i;
            v169 = i + 1;
            while (1)
            {
              v170 = *(v169 - 1);
              if ((v171 & 0x40) == 0)
              {
                --v169;
                goto LABEL_428;
              }

              v170 = *v169;
              if ((v171 & 0x40) == 0)
              {
                goto LABEL_428;
              }

              v170 = v169[1];
              if ((v171 & 0x40) == 0)
              {
                break;
              }

              v170 = v169[2];
              v169 += 4;
              if ((v171 & 0x40) == 0)
              {
                v169 -= 2;
                goto LABEL_428;
              }
            }

            ++v169;
LABEL_428:
            *v169 = 0;
            i = v169 + 1;
            if ((v171 & 8) != 0)
            {
              do
              {
                v172 = *i++;
                v170 = v172;
              }
            }

            if (v170 != 61)
            {
              goto LABEL_568;
            }

            do
            {
              v174 = *i++;
              v173 = v174;
            }

            if (v173 != 34 && v173 != 39)
            {
              --i;
LABEL_568:
              v75 = v166;
              v17 = v165;
              v88 = 12;
              goto LABEL_607;
            }

            *(v168 + 2) = i;
            v175 = v229(i, v173);
            if (!v175)
            {
              v75 = v166;
              v17 = v165;
              v88 = 12;
              goto LABEL_566;
            }

            v76 = v175;
            v79 = v167;
            v75 = v166;
            v17 = v165;
            if (v176 < 0)
            {
              v88 = 12;
              goto LABEL_606;
            }
          }

          if (v162 == 62)
          {
            continue;
          }

          break;
        }

        if (v162 != 47)
        {
          v88 = 11;
          if (v230 != 62)
          {
            goto LABEL_607;
          }

          v76 = i;
          if (v162)
          {
            goto LABEL_607;
          }

          continue;
        }

        break;
      }

      if (*v76 == 62)
      {
        v79 = *(v79 + 3);
        v76 = i + 2;
        continue;
      }

      break;
    }

    v88 = 11;
    if (v230 == 62 && !*v76)
    {
      v79 = *(v79 + 3);
      continue;
    }

    break;
  }

LABEL_606:
  i = v76;
LABEL_607:
  v197 = i - v20;
  v73 = v231;
LABEL_608:
  if (v230)
  {
    v219 = 0;
  }

  else
  {
    v219 = v197 == v75;
  }

  v220 = v219;
  v221 = v197 - v220;
  if (v197 >= 1)
  {
    v197 = v221;
  }

LABEL_616:
  *v17 = v88;
  *(v17 + 8) = v197;
LABEL_617:
  *(v17 + 16) = v73;
}

const char *pugi::xml_parse_result::description(pugi::xml_parse_result *this)
{
  v1 = *this;
  if (v1 > 0x10)
  {
    return "Unknown error";
  }

  else
  {
    return off_278EA8478[v1];
  }
}

void *pugi::xml_document::_destroy(pugi::xml_document *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 1) = 0;
  }

  v3 = *this;
  v4 = *(*this + 88);
  if (v4)
  {
    do
    {
      if (*v4)
      {
      }

      v4 = *(v4 + 8);
    }

    while (v4);
    v3 = *this;
  }

  result = *(v3 - (*v3 >> 8) + 16);
  if (result)
  {
    do
    {
      v6 = result[2];
      result = v6;
    }

    while (v6);
  }

  *this = 0;
  return result;
}

void pugi::xml_document::load(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  pugi::xml_document::_destroy(a1);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 56) = 10241;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a1 + 120;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 96) = a1 + 56;
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    *(a5 + 16) = 0;
    *a5 = 2;
LABEL_40:
    *(a5 + 8) = 0;
    goto LABEL_41;
  }

  v34 = a4;
  std::istream::tellg();
  if (v36 < 0)
  {
    std::ios_base::clear((a2 + *(*a2 - 24)), 0);
    v33 = a3;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v19 = a2 + 4;
    v18 = *a2;
    while ((*(v19 + *(v18 - 24)) & 2) == 0)
    {
      v12 = v20;
      if (!v20)
      {
        goto LABEL_32;
      }

      *v20 = 0;
      v20[1] = 0;
      v21 = v20;
      if (v17)
      {
        *v17 = v20;
        v21 = v16;
      }

      std::istream::read();
      v22 = a2[1];
      v12[1] = v22;
      v18 = *a2;
      v13 = 2;
      if ((*(v19 + *(*a2 - 24)) & 1) != 0 || (*(v19 + *(*a2 - 24)) & 6) == 4)
      {
        v12 = 0;
        v14 = 0;
LABEL_35:
        v16 = v21;
        while (v16)
        {
LABEL_36:
          v30 = v16;
          v16 = *v16;
        }

LABEL_37:
        a3 = v33;
        goto LABEL_38;
      }

      v23 = __CFADD__(v22, v14);
      v24 = &v14[v22];
      v25 = v23;
      if (v24 > v14)
      {
        v14 = v24;
      }

      v16 = v21;
      v17 = v12;
      if (v25)
      {
        v12 = 0;
        v14 = 0;
        v13 = 3;
        goto LABEL_35;
      }
    }

    v12 = v26;
    if (!v26)
    {
LABEL_32:
      v14 = 0;
      v13 = 3;
      if (v16)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v16)
    {
      v27 = v16;
      v28 = v26;
      do
      {
        memcpy(v28, v27 + 2, v27[1]);
        v29 = v27;
        v27 = *v27;
        v28 += v29[1];
      }

      while (v27);
      v13 = 0;
      goto LABEL_36;
    }

    a3 = v33;
    goto LABEL_44;
  }

  std::istream::tellg();
  std::istream::seekg();
  std::istream::tellg();
  std::istream::seekg();
  v12 = 0;
  v13 = 2;
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    goto LABEL_39;
  }

  v14 = 0;
  if (v36 < 0)
  {
LABEL_38:
    if (!v13)
    {
      goto LABEL_44;
    }

LABEL_39:
    *(a5 + 16) = 0;
    *a5 = v13;
    goto LABEL_40;
  }

  {
    v13 = 3;
    goto LABEL_39;
  }

  std::istream::read();
  if ((*(a2 + *(*a2 - 24) + 32) & 1) != 0 || (*(a2 + *(*a2 - 24) + 32) & 6) == 4)
  {
    v15(v12);
    goto LABEL_39;
  }

  v14 = a2[1];
LABEL_44:
  if (buffer_encoding == 1)
  {
    (v14++)[v12] = 0;
  }

LABEL_41:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_247629024(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pugi::xml_document::load_file(uint64_t a1@<X0>, const char *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  pugi::xml_document::_destroy(a1);
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 32728;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 56) = 10241;
  *(a1 + 64) = 0u;
  *(a1 + 16) = a1 + 120;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 16;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 32728;
  *a1 = a1 + 56;
  *(a1 + 96) = a1 + 56;
  v10 = fopen(a2, "rb");
  if (v10)
  {

    fclose(v10);
  }
}

void sub_247629178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    fclose(v1);
  }

  _Unwind_Resume(exception_object);
}

void pugi::impl::anonymous namespace::load_file_impl(FILE *a1@<X1>, uint64_t a2@<X0>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X4>, uint64_t a6@<X8>)
{
  if (!a1)
  {
    *(a6 + 16) = 0;
    v18 = 1;
LABEL_12:
    *a6 = v18;
    goto LABEL_13;
  }

  fseek(a1, 0, 2);
  v12 = MEMORY[0x24C1A94F0](a1);
  fseek(a1, 0, 0);
  if ((v12 & 0x8000000000000000) != 0)
  {
    *(a6 + 16) = 0;
    *a6 = 2;
LABEL_13:
    *(a6 + 8) = 0;
    return;
  }

  if (!v13)
  {
    *(a6 + 16) = 0;
    v18 = 3;
    goto LABEL_12;
  }

  v14 = v13;
  if (fread(v13, 1uLL, v12, a1) != v12)
  {
    *(a6 + 16) = 0;
    v18 = 2;
    goto LABEL_12;
  }

  if (buffer_encoding == 1)
  {
    *(v14 + v12++) = 0;
  }
}

uint64_t pugi::xml_document::save(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = v3;
  __s = v7;
  v8 = v2;
  v40 = *MEMORY[0x277D85DE8];
  v37 = v9;
  v38 = 0;
  v10 = v4;
  if (v4 <= 8)
  {
    v10 = v4;
    if ((0x191u >> v4))
    {
      v10 = dword_247766500[v4];
    }
  }

  v39 = v10;
  if ((v3 & 2) != 0 && v4 != 9)
  {
    *v36 = -17425;
    v36[2] = -65;
    v38 = 3;
  }

  if ((v3 & 8) == 0)
  {
    for (i = *(*v2 + 32); i; i = *(i + 48))
    {
      if ((*i & 0xF) == 2)
      {
        break;
      }

      if ((*i & 0xF) == 7)
      {
        goto LABEL_20;
      }
    }

    if (v5 == 9)
    {
    }

    v12 = v38;
    if (v38 >= 0x7FF)
    {
      v12 = 0;
    }

    *&v36[v12] = 15935;
    v13 = v12 + 2;
    v38 = v12 + 2;
    if ((v6 & 4) == 0)
    {
      if (v12 >= 0x7FE)
      {
        v13 = 0;
      }

      v36[v13] = 10;
      v38 = v13 + 1;
    }
  }

LABEL_20:
  v14 = 0;
  v15 = *v8;
  if ((v6 & 0x41) != 0 && (v6 & 4) == 0)
  {
    v14 = strlen(__s);
  }

  v16 = 0;
  v17 = 2;
  v18 = v15;
  do
  {
    if ((*v18 & 0xFu) - 3 <= 1)
    {
      v17 = 0;
      goto LABEL_73;
    }

    if (v6 & 4) == 0 && (v17)
    {
      v19 = v38;
      if (v38 >= 0x800)
      {
        v19 = 0;
      }

      v36[v19] = 10;
      v38 = v19 + 1;
    }

    if ((v17 & 2) != 0 && v14)
    {
    }

    if ((*v18 & 0xF) != 1)
    {
      if ((*v18 & 0xF) != 2)
      {
LABEL_94:
        v17 = 3;
        goto LABEL_73;
      }

      if (*(v18 + 8))
      {
        v20 = *(v18 + 8);
      }

      else
      {
        v20 = ":anonymous";
      }

      v21 = v38;
      if (v38 >= 0x800)
      {
        v21 = 0;
      }

      v36[v21] = 60;
      v38 = v21 + 1;
      v22 = *(v18 + 56);
      if (v22)
      {
      }

      if (*(v18 + 16))
      {
        v23 = v38;
        if (v38 >= 0x800)
        {
          v23 = 0;
        }

        v36[v23] = 62;
        v38 = v23 + 1;
        v24 = *(v18 + 32);
        if (!v24)
        {
          goto LABEL_87;
        }

        goto LABEL_55;
      }

      v25 = v38;
      if (*(v18 + 32))
      {
        if (v38 >= 0x800)
        {
          v25 = 0;
        }

        v36[v25] = 62;
        v38 = v25 + 1;
        v24 = *(v18 + 32);
LABEL_55:
        if (*(v18 + 16))
        {
          v17 = 0;
        }

        else
        {
          v17 = 3;
        }

        ++v16;
        goto LABEL_59;
      }

      if ((v6 & 0x80) == 0)
      {
        if ((v6 & 4) == 0)
        {
          if (v38 >= 0x800)
          {
            v25 = 0;
          }

          v36[v25++] = 32;
          v38 = v25;
        }

        if (v25 >= 0x7FF)
        {
          v25 = 0;
        }

        *&v36[v25] = 15919;
        v26 = v25 + 2;
        goto LABEL_93;
      }

      if (v38 >= 0x7FE)
      {
        v25 = 0;
      }

      v27 = &v36[v25];
      *v27 = 15422;
      v27[2] = 47;
      v28 = v25 + 3;
LABEL_90:
      v38 = v28;
      v31 = v38;
      if (v38 >= 0x800)
      {
        v31 = 0;
      }

      v36[v31] = 62;
      v26 = v31 + 1;
LABEL_93:
      v38 = v26;
      goto LABEL_94;
    }

    v24 = *(v18 + 32);
    v17 = 2;
    if (!v24)
    {
      do
      {
LABEL_73:
        if (v18 == v15)
        {
          goto LABEL_60;
        }

        v24 = *(v18 + 48);
        if (v24)
        {
          goto LABEL_59;
        }

        v18 = *(v18 + 24);
      }

      while ((*v18 & 0xFLL) != 2);
      if (v6 & 4) == 0 && (v17)
      {
        v29 = v38;
        if (v38 >= 0x800)
        {
          v29 = 0;
        }

        v36[v29] = 10;
        v38 = v29 + 1;
      }

      --v16;
      if ((v17 & 2) != 0 && v14)
      {
      }

      if (*(v18 + 8))
      {
        v20 = *(v18 + 8);
      }

      else
      {
        v20 = ":anonymous";
      }

LABEL_87:
      v30 = v38;
      if (v38 >= 0x7FF)
      {
        v30 = 0;
      }

      *&v36[v30] = 12092;
      v28 = v30 + 2;
      goto LABEL_90;
    }

LABEL_59:
    v18 = v24;
LABEL_60:
    ;
  }

  while (v18 != v15);
  v32 = v38;
  if (v6 & 4) == 0 && (v17)
  {
    if (v38 >= 0x800)
    {
      v32 = 0;
    }

    v36[v32++] = 10;
    v38 = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *pugi::impl::anonymous namespace::xml_buffered_writer::write_string(unint64_t *this, const char *__s)
{
  v2 = this;
  v3 = this[1281];
  LOBYTE(v4) = *__s;
  v5 = v3 < 0x800;
  if (*__s && v3 <= 0x7FF)
  {
    do
    {
      v6 = v3;
      *(this + v3) = v4;
      v7 = *++__s;
      v4 = v7;
      v5 = v3++ < 0x7FF;
    }

    while (v6 <= 0x7FE && v4);
  }

  if (v5)
  {
    this[1281] = v3;
  }

  else
  {
    v9 = this[1281];
    v10 = v3 - v9;
    if (v3 - v9 >= 5)
    {
      v11 = ~v9 + v3;
      v12 = -1;
      while ((__s[v12] & 0xC0) == 0x80)
      {
        --v12;
        --v11;
        if (v12 == -5)
        {
          v11 = v10;
          break;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    this[1281] = v3 - (v10 - v11);
    v13 = &__s[-(v10 - v11)];
    v14 = strlen(__s) + v10 - v11;
  }

  return this;
}

char *pugi::impl::anonymous namespace::append_new_node(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v5 = a2[1];
  if ((v5 + 64) > 0x7FD8)
  {
    v11 = 0;
    if (!result)
    {
      return result;
    }

    v6 = v11;
  }

  else
  {
    v6 = *a2;
    result = (*a2 + v5 + 40);
    a2[1] = v5 + 64;
  }

  *(result + 7) = 0;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = a3 | (&result[-v6] << 8);
  *(result + 3) = a1;
  v8 = *(a1 + 32);
  if (v8)
  {
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    *(v10 + 48) = result;
    *(result + 5) = v10;
  }

  else
  {
    *(a1 + 32) = result;
    v9 = (result + 40);
  }

  *v9 = result;
  return result;
}

char *pugi::impl::anonymous namespace::append_new_attribute(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if ((v3 + 40) > 0x7FD8)
  {
    v9 = 0;
    if (!result)
    {
      return result;
    }

    v4 = v9;
  }

  else
  {
    v4 = *a2;
    result = (*a2 + v3 + 40);
    a2[1] = v3 + 40;
  }

  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = &result[-v4] << 8;
  v6 = *(a1 + 56);
  if (v6)
  {
    v8 = *(v6 + 24);
    v7 = (v6 + 24);
    *(v8 + 32) = result;
    *(result + 3) = v8;
  }

  else
  {
    *(a1 + 56) = result;
    v7 = (result + 24);
  }

  *v7 = result;
  return result;
}

void pugi::impl::anonymous namespace::xml_allocator::deallocate_memory(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a1 == a3)
  {
    v3 = *(a1 + 8);
    a3[3] = v3;
  }

  else
  {
    v3 = a3[3];
  }

  v4 = a3[4] + a2;
  a3[4] = v4;
  if (v4 == v3)
  {
    v5 = a3[2];
    if (v5)
    {
      v6 = a3[1];
      *(v6 + 16) = v5;
      *(a3[2] + 8) = v6;
    }

    else
    {
      a3[3] = 0;
      a3[4] = 0;
      *(a1 + 8) = 0;
    }
  }
}

char *pugi::impl::anonymous namespace::xml_allocator::allocate_memory_oob(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 0x1FF7)
  {
    v6 = a2 + 40;
  }

  else
  {
    v6 = 0x8000;
  }

  if (result)
  {
    *(result + 4) = 0;
    *result = 0u;
    *(result + 1) = 0u;
    *result = **a1;
    *a3 = result;
    if (a2 > 0x1FF6)
    {
      v11 = *a1;
      v12 = *(*a1 + 8);
      *(result + 1) = v12;
      *(result + 2) = v11;
      *(v12 + 16) = result;
      v11[1] = result;
      v8 = (result + 24);
    }

    else
    {
      v8 = (a1 + 8);
      v9 = *(a1 + 8);
      v10 = *a1;
      *(result + 1) = *a1;
      v10[2] = result;
      v10[3] = v9;
      *a1 = result;
    }

    *v8 = a2;
    result += 40;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t pugi::impl::anonymous namespace::get_buffer_encoding(uint64_t result, pugi::impl::_anonymous_namespace_ *this, unsigned __int8 *a3, uint64_t a4, unint64_t *a5)
{
  if (result > 6)
  {
    if (result == 8)
    {
      v7 = 5;
    }

    else
    {
      v7 = result;
    }

    if (result == 7)
    {
      return 5;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (result)
    {
      if (result == 4)
      {
        return 2;
      }

      else
      {
        return result;
      }
    }

    if (a3 < 4)
    {
      return 1;
    }

    v8 = *this;
    v9 = *(this + 1);
    v10 = *(this + 2);
    v11 = *(this + 3);
    v12 = (v8 | v9) == 0;
    if (!(v8 | v9) && v10 == 254 && v11 == 255)
    {
      return 6;
    }

    v14 = v8 == 255 && v9 == 254;
    if (v14 && v10 == 0 && v11 == 0)
    {
      return 5;
    }

    v17 = v8 == 254 && v9 == 255 || v14;
    if (v8 == 254 && v9 == 255)
    {
      result = 3;
    }

    else
    {
      result = 2;
    }

    if (v17)
    {
      return result;
    }

    if (v8 == 239 && v9 == 187 && v10 == 191)
    {
      return 1;
    }

    if (*(this + 2))
    {
      v12 = 0;
    }

    if (v12 && v11 == 60)
    {
      return 6;
    }

    v18 = v8 == 60 && v9 == 0;
    v19 = v18;
    if (v18 && !*(this + 2) && !*(this + 3))
    {
      return 5;
    }

    if (*this)
    {
      v20 = 0;
    }

    else
    {
      v20 = v9 == 60;
    }

    v21 = v20;
    if (v20 && !*(this + 2) && v11 == 63)
    {
      return 3;
    }

    v22 = v10 == 63 && v19;
    v23 = v19 | v21;
    if (v21)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    if (v22 && v11 == 0)
    {
      result = 2;
    }

    else
    {
      result = v24;
    }

    if ((v23 & 1) == 0)
    {
      v27[1] = v5;
      v27[2] = v6;
      v26 = 0;
      v27[0] = 0;
      {
        if (v26 == 6)
        {
          if ((*v27[0] & 0xDF) == 0x4C && (*(v27[0] + 1) & 0xDF) == 0x41 && (*(v27[0] + 2) & 0xDF) == 0x54 && (*(v27[0] + 3) & 0xDF) == 0x49 && (*(v27[0] + 4) & 0xDF) == 0x4E)
          {
            v25 = *(v27[0] + 5);
LABEL_98:
            if (v25 == 49)
            {
              return 9;
            }
          }
        }

        else if (v26 == 10 && (*v27[0] & 0xDF) == 0x49 && (*(v27[0] + 1) & 0xDF) == 0x53 && (*(v27[0] + 2) & 0xDF) == 0x4F && *(v27[0] + 3) == 45 && *(v27[0] + 4) == 56 && *(v27[0] + 5) == 56 && *(v27[0] + 6) == 53 && *(v27[0] + 7) == 57 && *(v27[0] + 8) == 45)
        {
          v25 = *(v27[0] + 9);
          goto LABEL_98;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL pugi::impl::anonymous namespace::parse_declaration_encoding(pugi::impl::_anonymous_namespace_ *this, const unsigned __int8 *a2, void *a3, const unsigned __int8 **a4, unint64_t *a5)
{
  if (a2 < 6)
  {
    return 0;
  }

  v5 = 0;
  if (*this != 1836597052)
  {
    return v5;
  }

  if (*(this + 4) != 108)
  {
    return v5;
  }

  v5 = 0;
  {
    return v5;
  }

  v7 = this + 13;
  v8 = 14;
  while (1)
  {
    v9 = v7[v8 - 21];
    if (v9 != 101)
    {
      if (v9 == 63)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v7[v8 - 20] == 110)
    {
      break;
    }

LABEL_13:
    ++v8;
    if (7 - a2 + v8 == 14)
    {
      return 0;
    }
  }

  if (v8 - 8 >= a2 || v8 - 6 >= a2 || *(this + v8 - 6) != 99 || v8 - 5 >= a2 || *(this + v8 - 5) != 111 || v8 - 4 >= a2 || *(this + v8 - 4) != 100 || v8 - 3 >= a2 || *(this + v8 - 3) != 105 || v8 - 2 >= a2 || *(this + v8 - 2) != 110 || v8 - 1 >= a2)
  {
    return 0;
  }

  v5 = 0;
  if (*(this + v8 - 1) == 103 && v8 < a2)
  {
    while (1)
    {
      v10 = *(this + v8);
      {
        break;
      }

      v5 = 0;
      if (a2 == ++v8)
      {
        return v5;
      }
    }

    if (v10 == 61)
    {
      v11 = v8 + 1;
      v12 = this + v11;
      while (v11 < a2)
      {
        v14 = *v12++;
        v13 = v14;
        ++v11;
        {
          if (v13 == 34)
          {
            v15 = 34;
          }

          else
          {
            v15 = 39;
          }

          if (v15 != v13)
          {
            return 0;
          }

          *a3 = v12;
          if (v11 >= a2)
          {
LABEL_44:
            v5 = 0;
            v18 = &a2[-v11];
            if (a2 < v11)
            {
              v18 = 0;
            }

            *a4 = v18;
          }

          else
          {
            v16 = 0;
            v17 = v11;
            {
              ++v17;
              ++v16;
              ++v12;
              if (v17 >= a2)
              {
                goto LABEL_44;
              }
            }

            *a4 = v16;
            return v15 == *v12;
          }

          return v5;
        }
      }
    }

    return 0;
  }

  return v5;
}

uint64_t pugi::impl::anonymous namespace::utf8_writer::low(pugi::impl::_anonymous_namespace_::utf8_writer *this, unsigned __int8 *a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      *this = (a2 >> 12) | 0xE0;
      *(this + 1) = (a2 >> 6) & 0x3F | 0x80;
      *(this + 2) = a2 & 0x3F | 0x80;
      v2 = 3;
    }

    else
    {
      *this = (a2 >> 6) | 0xC0;
      *(this + 1) = a2 & 0x3F | 0x80;
      v2 = 2;
    }
  }

  else
  {
    *this = a2;
    v2 = 1;
  }

  return this + v2;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_simple(unsigned __int8 *a1, unsigned __int8 a2)
{
  while (1)
  {
    do
    {
      v2 = *a1;
      {
        goto LABEL_6;
      }

      v3 = a1 + 1;
      v2 = a1[1];
      {
        break;
      }

      v3 = a1 + 2;
      v2 = a1[2];
      {
        break;
      }

      v3 = a1 + 3;
      v2 = a1[3];
      a1 += 4;
    }

    while ((v4 & 2) == 0);
    a1 = v3;
LABEL_6:
    if (v2 == a2)
    {
      *a1 = 0;
      return a1 + 1;
    }

    if (!v2)
    {
      return 0;
    }

    ++a1;
  }
}

uint64_t pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_simple(pugi::impl::_anonymous_namespace_::utf8_writer *this, unsigned __int8 a2)
{
  v3 = a2;
  __src = 0;
  v11 = 0;
  while (1)
  {
    do
    {
      v4 = *this;
      {
        goto LABEL_7;
      }

      v5 = (this + 1);
      v4 = *(this + 1);
      {
        break;
      }

      v5 = (this + 2);
      v4 = *(this + 2);
      {
        break;
      }

      v5 = (this + 3);
      v4 = *(this + 3);
      this = (this + 4);
    }

    while ((v6 & 2) == 0);
    this = v5;
LABEL_7:
    if (v4 == v3)
    {
      break;
    }

    if (v4 == 38)
    {
    }

    else
    {
      if (!v4)
      {
        return 0;
      }

      this = (this + 1);
    }
  }

  v7 = this;
  if (__src)
  {
    v8 = v11;
    memmove(__src - v11, __src, this - __src);
    v7 = (this - v8);
  }

  *v7 = 0;
  return this + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_eol(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *a1;
    {
      v7 = a1;
    }

    else
    {
      v7 = a1 + 2;
      while (1)
      {
        v6 = *(v7 - 1);
        {
          --v7;
          goto LABEL_11;
        }

        v6 = *v7;
        {
          goto LABEL_11;
        }

        v6 = v7[1];
        {
          break;
        }

        v6 = v7[2];
        v7 += 4;
        if ((v8 & 2) != 0)
        {
          v7 -= 2;
          goto LABEL_11;
        }
      }

      ++v7;
    }

LABEL_11:
    if (v6 == v5)
    {
      break;
    }

    if (v6 == 13)
    {
      a1 = v7 + 1;
      v9 = v7[1];
      *v7 = 10;
      if (v9 == 10)
      {
        if (v3)
        {
          memmove(&v3[-v4], v3, a1 - v3);
        }

        a1 = v7 + 2;
        ++v4;
        v3 = (v7 + 2);
      }
    }

    else
    {
      if (!v6)
      {
        return 0;
      }

      a1 = v7 + 1;
    }
  }

  v10 = v7;
  if (v3)
  {
    memmove(&v3[-v4], v3, v7 - v3);
    v10 = &v7[-v4];
  }

  *v10 = 0;
  return v7 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_eol(char *a1, unsigned __int8 a2)
{
  v2 = a2;
  __src = 0;
  v12 = 0;
  while (1)
  {
    v3 = *a1;
    {
      v4 = a1;
    }

    else
    {
      v4 = (a1 + 2);
      while (1)
      {
        v3 = *(v4 - 1);
        {
          --v4;
          goto LABEL_11;
        }

        v3 = *v4;
        {
          goto LABEL_11;
        }

        v3 = v4[1];
        {
          break;
        }

        v3 = v4[2];
        v4 += 4;
        if ((v5 & 2) != 0)
        {
          v4 -= 2;
          goto LABEL_11;
        }
      }

      ++v4;
    }

LABEL_11:
    if (v3 == v2)
    {
      break;
    }

    switch(v3)
    {
      case 13:
        a1 = (v4 + 1);
        v6 = v4[1];
        *v4 = 10;
        if (v6 == 10)
        {
          v7 = v12;
          if (__src)
          {
            memmove(__src - v12, __src, a1 - __src);
          }

          a1 = (v4 + 2);
          __src = v4 + 2;
          v12 = v7 + 1;
        }

        break;
      case 38:
        break;
      case 0:
        return 0;
      default:
        a1 = (v4 + 1);
        break;
    }
  }

  v8 = v4;
  if (__src)
  {
    v9 = v12;
    memmove(__src - v12, __src, v4 - __src);
    v8 = &v4[-v9];
  }

  *v8 = 0;
  return v4 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_wconv(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *a1;
    if ((v7 & 4) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 + 2;
      while (1)
      {
        v6 = *(v8 - 1);
        if ((v7 & 4) != 0)
        {
          --v8;
          goto LABEL_11;
        }

        v6 = *v8;
        if ((v7 & 4) != 0)
        {
          goto LABEL_11;
        }

        v6 = v8[1];
        if ((v7 & 4) != 0)
        {
          break;
        }

        v6 = v8[2];
        v8 += 4;
        if ((v7 & 4) != 0)
        {
          v8 -= 2;
          goto LABEL_11;
        }
      }

      ++v8;
    }

LABEL_11:
    if (v6 == v5)
    {
      break;
    }

    if ((v7 & 8) != 0)
    {
      *v8 = 32;
      a1 = v8 + 1;
      if (v6 == 13 && *a1 == 10)
      {
        if (v3)
        {
          memmove(&v3[-v4], v3, a1 - v3);
        }

        a1 = v8 + 2;
        ++v4;
        v3 = (v8 + 2);
      }
    }

    else
    {
      if (!v6)
      {
        return 0;
      }

      a1 = v8 + 1;
    }
  }

  v9 = v8;
  if (v3)
  {
    memmove(&v3[-v4], v3, v8 - v3);
    v9 = &v8[-v4];
  }

  *v9 = 0;
  return v8 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_wconv(char *a1, unsigned __int8 a2)
{
  v2 = a2;
  __src = 0;
  v11 = 0;
  while (1)
  {
    v3 = *a1;
    if ((v4 & 4) != 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = (a1 + 2);
      while (1)
      {
        v3 = *(v5 - 1);
        if ((v4 & 4) != 0)
        {
          --v5;
          goto LABEL_11;
        }

        v3 = *v5;
        if ((v4 & 4) != 0)
        {
          goto LABEL_11;
        }

        v3 = v5[1];
        if ((v4 & 4) != 0)
        {
          break;
        }

        v3 = v5[2];
        v5 += 4;
        if ((v4 & 4) != 0)
        {
          v5 -= 2;
          goto LABEL_11;
        }
      }

      ++v5;
    }

LABEL_11:
    if (v3 == v2)
    {
      break;
    }

    if ((v4 & 8) != 0)
    {
      *v5 = 32;
      a1 = (v5 + 1);
      if (v3 == 13 && *a1 == 10)
      {
        v6 = v11;
        if (__src)
        {
          memmove(__src - v11, __src, a1 - __src);
        }

        a1 = (v5 + 2);
        __src = v5 + 2;
        v11 = v6 + 1;
      }
    }

    else if (v3 == 38)
    {
    }

    else
    {
      if (!v3)
      {
        return 0;
      }

      a1 = (v5 + 1);
    }
  }

  v7 = v5;
  if (__src)
  {
    v8 = v11;
    memmove(__src - v11, __src, v5 - __src);
    v7 = &v5[-v8];
  }

  *v7 = 0;
  return v5 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_false>::parse_wnorm(unsigned __int8 *a1, unsigned __int8 a2)
{
  v2 = a1;
  {
    v4 = 0;
    do
    {
    }

    while ((v5 & 8) != 0);
    v2 = &a1[v4];
    v3 = &a1[v4];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v6 = a2;
LABEL_7:
  v7 = v4;
  v8 = v3;
  v9 = v2;
  while (1)
  {
    v10 = *v9;
    if ((v11 & 0xC) != 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v9 + 2;
      while (1)
      {
        v10 = *(v12 - 1);
        if ((v11 & 0xC) != 0)
        {
          --v12;
          goto LABEL_17;
        }

        v10 = *v12;
        if ((v11 & 0xC) != 0)
        {
          goto LABEL_17;
        }

        v10 = v12[1];
        if ((v11 & 0xC) != 0)
        {
          break;
        }

        v10 = v12[2];
        v12 += 4;
        if ((v11 & 0xC) != 0)
        {
          v12 -= 2;
          goto LABEL_17;
        }
      }

      ++v12;
    }

LABEL_17:
    if (v10 == v6)
    {
      break;
    }

    if ((v11 & 8) != 0)
    {
      v9 = v12 + 1;
      v13 = v12[1];
      *v12 = 32;
      {
        v2 = v12 + 1;
        do
        {
          v14 = *++v2;
          ++v4;
        }

        v3 = v2;
        if (v8)
        {
          memmove(&v8[-v7], v8, v9 - v8);
          v3 = v2;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (!v10)
      {
        return 0;
      }

      v9 = v12 + 1;
    }
  }

  v15 = v12;
  if (v8)
  {
    memmove(&v8[-v4], v8, v12 - v8);
    v15 = &v12[-v4];
  }

  v16 = v15;
  do
  {
    v17 = *--v16;
    *v15 = 0;
    v15 = v16;
  }

  return v12 + 1;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_attribute_impl<pugi::impl::anonymous namespace::opt_true>::parse_wnorm(char *a1, unsigned __int8 a2)
{
  __src = 0;
  v18 = 0;
  {
    v2 = 0;
    do
    {
    }

    while ((v3 & 8) != 0);
    a1 += v2;
    __src = a1;
    v18 = v2;
  }

  v4 = a2;
  while (1)
  {
    v5 = *a1;
    if ((v6 & 0xC) != 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = (a1 + 2);
      while (1)
      {
        v5 = *(v7 - 1);
        if ((v6 & 0xC) != 0)
        {
          --v7;
          goto LABEL_15;
        }

        v5 = *v7;
        if ((v6 & 0xC) != 0)
        {
          goto LABEL_15;
        }

        v5 = v7[1];
        if ((v6 & 0xC) != 0)
        {
          break;
        }

        v5 = v7[2];
        v7 += 4;
        if ((v6 & 0xC) != 0)
        {
          v7 -= 2;
          goto LABEL_15;
        }
      }

      ++v7;
    }

LABEL_15:
    if (v5 == v4)
    {
      break;
    }

    if ((v6 & 8) != 0)
    {
      a1 = (v7 + 1);
      v8 = v7[1];
      *v7 = 32;
      {
        v9 = 0;
        do
        {
        }

        while ((v10 & 8) != 0);
        v11 = v18;
        if (__src)
        {
          memmove(__src - v18, __src, a1 - __src);
        }

        a1 = &v7[v9 + 1];
        __src = a1;
        v18 = v11 + v9;
      }
    }

    else if (v5 == 38)
    {
    }

    else
    {
      if (!v5)
      {
        return 0;
      }

      a1 = (v7 + 1);
    }
  }

  v12 = v7;
  if (__src)
  {
    v13 = v18;
    memmove(__src - v18, __src, v7 - __src);
    v12 = &v7[-v13];
  }

  v14 = v12;
  do
  {
    v15 = *--v14;
    *v12 = 0;
    v12 = v14;
  }

  return v7 + 1;
}

char *pugi::impl::anonymous namespace::strconv_escape(pugi::impl::_anonymous_namespace_::utf8_writer *this, const void **a2)
{
  v3 = this + 1;
  v4 = *(this + 1);
  v5 = this + 1;
  if (v4 > 0x66)
  {
    if (v4 == 103)
    {
      v5 = this + 2;
      if (*(this + 2) != 116)
      {
        return v5;
      }

      v5 = this + 3;
      if (*(this + 3) != 59)
      {
        return v5;
      }

      v11 = 62;
    }

    else
    {
      if (v4 != 108)
      {
        if (v4 == 113)
        {
          v5 = this + 2;
          if (*(this + 2) == 117)
          {
            v5 = this + 3;
            if (*(this + 3) == 111)
            {
              v5 = this + 4;
              if (*(this + 4) == 116)
              {
                v5 = this + 5;
                if (*(this + 5) == 59)
                {
                  v6 = 34;
LABEL_43:
                  *this = v6;
                  v8 = this + 6;
                  v19 = *a2;
                  if (*a2)
                  {
                    memmove((v19 - a2[1]), v19, v3 - v19);
                  }

                  v10 = 5;
LABEL_28:
                  v5 = v8;
LABEL_29:
                  v13 = a2[1] + v10;
                  *a2 = v8;
                  a2[1] = v13;
                  return v5;
                }
              }
            }
          }
        }

        return v5;
      }

      v5 = this + 2;
      if (*(this + 2) != 116)
      {
        return v5;
      }

      v5 = this + 3;
      if (*(this + 3) != 59)
      {
        return v5;
      }

      v11 = 60;
    }

    *this = v11;
    v8 = this + 4;
    v12 = *a2;
    if (*a2)
    {
      memmove((v12 - a2[1]), v12, v3 - v12);
    }

    v10 = 3;
    goto LABEL_28;
  }

  if (v4 == 35)
  {
    v5 = this + 2;
    v14 = *(this + 2);
    if (v14 == 59)
    {
      return v5;
    }

    if (v14 == 120)
    {
      v5 = this + 3;
      v15 = *(this + 3);
      if (v15 != 59)
      {
        v16 = 0;
        while (1)
        {
          v15 = v15;
          v17 = v15 - 48;
          if (v17 > 9)
          {
            if ((v15 | 0x20u) - 97 > 5)
            {
              goto LABEL_50;
            }

            v16 = ((v15 | 0x20u) + 16 * v16 - 87);
          }

          else
          {
            v16 = (v17 | (16 * v16));
          }

          v18 = *++v5;
          LOBYTE(v15) = v18;
        }
      }
    }

    else
    {
      v20 = v14 - 48;
      if (v20 <= 9)
      {
        LODWORD(v16) = 0;
        do
        {
          v16 = (v20 + 10 * v16);
          v22 = *++v5;
          v21 = v22;
          v20 = v22 - 48;
        }

        while ((v22 - 48) < 0xA);
        v15 = v21;
LABEL_50:
        if (v15 == 59)
        {
          ++v5;
          if (v16 >> 16)
          {
            *this = (v16 >> 18) | 0xF0;
            *(this + 1) = (v16 >> 12) & 0x3F | 0x80;
            *(this + 2) = (v16 >> 6) & 0x3F | 0x80;
            *(this + 3) = v16 & 0x3F | 0x80;
            v23 = this + 4;
          }

          else
          {
          }

          v10 = v5 - v23;
          if (*a2)
          {
            memmove((*a2 - a2[1]), *a2, v23 - *a2);
          }

          v8 = v5;
          goto LABEL_29;
        }
      }
    }
  }

  else if (v4 == 97)
  {
    v5 = this + 2;
    v7 = *(this + 2);
    if (v7 == 112)
    {
      v5 = this + 3;
      if (*(this + 3) == 111)
      {
        v5 = this + 4;
        if (*(this + 4) == 115)
        {
          v5 = this + 5;
          if (*(this + 5) == 59)
          {
            v6 = 39;
            goto LABEL_43;
          }
        }
      }
    }

    else if (v7 == 109)
    {
      v5 = this + 3;
      if (*(this + 3) == 112)
      {
        v5 = this + 4;
        if (*(this + 4) == 59)
        {
          *this = 38;
          v8 = this + 5;
          v9 = *a2;
          if (*a2)
          {
            memmove((v9 - a2[1]), v9, v3 - v9);
          }

          v10 = 4;
          goto LABEL_28;
        }
      }
    }
  }

  return v5;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *result)
{
  while (1)
  {
    do
    {
      v1 = *result;
      {
        goto LABEL_6;
      }

      v2 = result + 1;
      v1 = result[1];
      {
        break;
      }

      v2 = result + 2;
      v1 = result[2];
      {
        break;
      }

      v2 = result + 3;
      v1 = result[3];
      result += 4;
    }

    result = v2;
LABEL_6:
    if (!v1)
    {
      break;
    }

    if (v1 == 60)
    {
      *result++ = 0;
      return result;
    }

    ++result;
  }

  *result = 0;
  return result;
}

pugi::impl::_anonymous_namespace_::utf8_writer *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true>::parse(pugi::impl::_anonymous_namespace_::utf8_writer *this)
{
  __src = 0;
  v10 = 0;
  while (1)
  {
    while (1)
    {
      do
      {
        v2 = *this;
        {
          goto LABEL_7;
        }

        v3 = (this + 1);
        v2 = *(this + 1);
        {
          break;
        }

        v3 = (this + 2);
        v2 = *(this + 2);
        {
          break;
        }

        v3 = (this + 3);
        v2 = *(this + 3);
        this = (this + 4);
      }

      this = v3;
LABEL_7:
      if (v2 != 38)
      {
        break;
      }
    }

    if (!v2)
    {
      break;
    }

    if (v2 == 60)
    {
      v4 = this;
      if (__src)
      {
        v5 = v10;
        memmove(__src - v10, __src, this - __src);
        v4 = (this - v5);
      }

      *v4 = 0;
      return (this + 1);
    }

    this = (this + 1);
  }

  v6 = this;
  if (__src)
  {
    v7 = v10;
    memmove(__src - v10, __src, this - __src);
    v6 = (this - v7);
  }

  *v6 = 0;
  return this;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *a1)
{
  v1 = 0;
  v2 = 0;
  while (1)
  {
    while (1)
    {
      v3 = *a1;
      {
        v4 = a1;
      }

      else
      {
        v4 = a1 + 2;
        while (1)
        {
          v3 = *(v4 - 1);
          {
            --v4;
            goto LABEL_11;
          }

          v3 = *v4;
          {
            goto LABEL_11;
          }

          v3 = v4[1];
          {
            break;
          }

          v3 = v4[2];
          v4 += 4;
          {
            v4 -= 2;
            goto LABEL_11;
          }
        }

        ++v4;
      }

LABEL_11:
      if (v3 != 13)
      {
        break;
      }

      a1 = v4 + 1;
      v5 = v4[1];
      *v4 = 10;
      if (v5 == 10)
      {
        if (v1)
        {
          memmove(&v1[-v2], v1, a1 - v1);
        }

        a1 = v4 + 2;
        ++v2;
        v1 = (v4 + 2);
      }
    }

    if (!v3)
    {
      break;
    }

    if (v3 == 60)
    {
      v6 = v4;
      if (v1)
      {
        memmove(&v1[-v2], v1, v4 - v1);
        v6 = &v4[-v2];
      }

      *v6 = 0;
      return ++v4;
    }

    a1 = v4 + 1;
  }

  v7 = v4;
  if (v1)
  {
    memmove(&v1[-v2], v1, v4 - v1);
    v7 = &v4[-v2];
  }

  *v7 = 0;
  return v4;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true>::parse(char *a1)
{
  __src = 0;
  v11 = 0;
  while (1)
  {
    while (1)
    {
      v1 = *a1;
      {
        v2 = a1;
      }

      else
      {
        v2 = (a1 + 2);
        while (1)
        {
          v1 = *(v2 - 1);
          {
            --v2;
            goto LABEL_11;
          }

          v1 = *v2;
          {
            goto LABEL_11;
          }

          v1 = v2[1];
          {
            break;
          }

          v1 = v2[2];
          v2 += 4;
          {
            v2 -= 2;
            goto LABEL_11;
          }
        }

        ++v2;
      }

LABEL_11:
      if (v1 > 37)
      {
        break;
      }

      if (v1 == 13)
      {
        a1 = (v2 + 1);
        v3 = v2[1];
        *v2 = 10;
        if (v3 == 10)
        {
          v4 = v11;
          if (__src)
          {
            memmove(__src - v11, __src, a1 - __src);
          }

          a1 = (v2 + 2);
          __src = v2 + 2;
          v11 = v4 + 1;
        }
      }

      else
      {
        if (!v1)
        {
          v5 = v2;
          if (__src)
          {
            v6 = v11;
            memmove(__src - v11, __src, v2 - __src);
            v5 = &v2[-v6];
          }

          *v5 = 0;
          return v2;
        }

LABEL_22:
        a1 = (v2 + 1);
      }
    }

    if (v1 != 38)
    {
      break;
    }
  }

  if (v1 != 60)
  {
    goto LABEL_22;
  }

  v7 = v2;
  if (__src)
  {
    v8 = v11;
    memmove(__src - v11, __src, v2 - __src);
    v7 = &v2[-v8];
  }

  *v7 = 0;
  return ++v2;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *a1)
{
  for (i = a1; ; ++i)
  {
    do
    {
      v2 = *i;
      {
        goto LABEL_7;
      }

      v3 = i + 1;
      v2 = i[1];
      {
        break;
      }

      v3 = i + 2;
      v2 = i[2];
      {
        break;
      }

      v3 = i + 3;
      v2 = i[3];
      i += 4;
    }

    i = v3;
LABEL_7:
    if (v2 == 60)
    {
      break;
    }

    if (!v2)
    {
      v4 = i;
      do
      {
        v5 = v4;
        if (v4 <= a1)
        {
          break;
        }

        --v4;
      }

      *v5 = 0;
      return i;
    }
  }

  v6 = i;
  do
  {
    v7 = v6;
    if (v6 <= a1)
    {
      break;
    }

    --v6;
  }

  *v7 = 0;
  return ++i;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false,pugi::impl::anonymous namespace::opt_true>::parse(pugi::impl::_anonymous_namespace_::utf8_writer *this)
{
  v1 = this;
  __src = 0;
  v13 = 0;
LABEL_2:
  for (i = this; ; ++i)
  {
    do
    {
      v3 = *i;
      {
        goto LABEL_8;
      }

      v4 = i + 1;
      v3 = i[1];
      {
        break;
      }

      v4 = i + 2;
      v3 = i[2];
      {
        break;
      }

      v4 = i + 3;
      v3 = i[3];
      i += 4;
    }

    i = v4;
LABEL_8:
    if (v3 == 38)
    {
      goto LABEL_2;
    }

    if (!v3)
    {
      break;
    }

    if (v3 == 60)
    {
      v8 = i;
      if (__src)
      {
        v9 = v13;
        memmove(__src - v13, __src, i - __src);
        v8 = &i[-v9];
      }

      do
      {
        v10 = v8;
        if (v8 <= v1)
        {
          break;
        }

        --v8;
      }

      *v10 = 0;
      return ++i;
    }
  }

  v5 = i;
  if (__src)
  {
    v6 = v13;
    memmove(__src - v13, __src, i - __src);
    v5 = &i[-v6];
  }

  do
  {
    v7 = v5;
    if (v5 <= v1)
    {
      break;
    }

    --v5;
  }

  *v7 = 0;
  return i;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_false>::parse(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  for (i = a1; ; i = v6 + 1)
  {
    while (1)
    {
      v5 = *i;
      {
        v6 = i;
      }

      else
      {
        v6 = i + 2;
        while (1)
        {
          v5 = *(v6 - 1);
          {
            --v6;
            goto LABEL_11;
          }

          v5 = *v6;
          {
            goto LABEL_11;
          }

          v5 = v6[1];
          {
            break;
          }

          v5 = v6[2];
          v6 += 4;
          {
            v6 -= 2;
            goto LABEL_11;
          }
        }

        ++v6;
      }

LABEL_11:
      if (v5 != 13)
      {
        break;
      }

      i = v6 + 1;
      v7 = v6[1];
      *v6 = 10;
      if (v7 == 10)
      {
        if (v2)
        {
          memmove(&v2[-v3], v2, i - v2);
        }

        i = v6 + 2;
        ++v3;
        v2 = (v6 + 2);
      }
    }

    if (!v5)
    {
      break;
    }

    if (v5 == 60)
    {
      v8 = v6;
      if (v2)
      {
        memmove(&v2[-v3], v2, v6 - v2);
        v8 = &v6[-v3];
      }

      do
      {
        v9 = v8;
        if (v8 <= a1)
        {
          break;
        }

        --v8;
      }

      *v9 = 0;
      return ++v6;
    }
  }

  v10 = v6;
  if (v2)
  {
    memmove(&v2[-v3], v2, v6 - v2);
    v10 = &v6[-v3];
  }

  do
  {
    v11 = v10;
    if (v10 <= a1)
    {
      break;
    }

    --v10;
  }

  *v11 = 0;
  return v6;
}

unsigned __int8 *pugi::impl::anonymous namespace::strconv_pcdata_impl<pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true,pugi::impl::anonymous namespace::opt_true>::parse(char *a1)
{
  v1 = a1;
  __src = 0;
  v14 = 0;
  while (1)
  {
    while (1)
    {
      v2 = *a1;
      {
        v3 = a1;
      }

      else
      {
        v3 = (a1 + 2);
        while (1)
        {
          v2 = *(v3 - 1);
          {
            --v3;
            goto LABEL_11;
          }

          v2 = *v3;
          {
            goto LABEL_11;
          }

          v2 = v3[1];
          {
            break;
          }

          v2 = v3[2];
          v3 += 4;
          {
            v3 -= 2;
            goto LABEL_11;
          }
        }

        ++v3;
      }

LABEL_11:
      if (v2 > 37)
      {
        break;
      }

      if (v2 == 13)
      {
        a1 = (v3 + 1);
        v4 = v3[1];
        *v3 = 10;
        if (v4 == 10)
        {
          v5 = v14;
          if (__src)
          {
            memmove(__src - v14, __src, a1 - __src);
          }

          a1 = (v3 + 2);
          __src = v3 + 2;
          v14 = v5 + 1;
        }
      }

      else
      {
        if (!v2)
        {
          v6 = v3;
          if (__src)
          {
            v7 = v14;
            memmove(__src - v14, __src, v3 - __src);
            v6 = &v3[-v7];
          }

          do
          {
            v8 = v6;
            if (v6 <= v1)
            {
              break;
            }

            --v6;
          }

          *v8 = 0;
          return v3;
        }

LABEL_22:
        a1 = (v3 + 1);
      }
    }

    if (v2 != 38)
    {
      break;
    }
  }

  if (v2 != 60)
  {
    goto LABEL_22;
  }

  v9 = v3;
  if (__src)
  {
    v10 = v14;
    memmove(__src - v14, __src, v3 - __src);
    v9 = &v3[-v10];
  }

  do
  {
    v11 = v9;
    if (v9 <= v1)
    {
      break;
    }

    --v9;
  }

  *v11 = 0;
  return ++v3;
}

char *pugi::impl::anonymous namespace::strconv_cdata(pugi::impl::_anonymous_namespace_ *this, char *a2)
{
  v2 = a2;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    while (1)
    {
      v5 = *this;
      {
        v6 = this;
      }

      else
      {
        v6 = (this + 2);
        while (1)
        {
          v5 = *(v6 - 1);
          {
            v6 = (v6 - 1);
            goto LABEL_11;
          }

          v5 = *v6;
          {
            goto LABEL_11;
          }

          v5 = *(v6 + 1);
          {
            break;
          }

          v5 = *(v6 + 2);
          v6 = (v6 + 4);
          {
            v6 = (v6 - 2);
            goto LABEL_11;
          }
        }

        v6 = (v6 + 1);
      }

LABEL_11:
      if (v5 != 13)
      {
        break;
      }

      this = (v6 + 1);
      v10 = *(v6 + 1);
      *v6 = 10;
      if (v10 == 10)
      {
        if (v3)
        {
          memmove(&v3[-v4], v3, this - v3);
        }

        this = (v6 + 2);
        ++v4;
        v3 = v6 + 2;
      }
    }

    if (v5 == 93)
    {
      break;
    }

    if (!v5)
    {
      return 0;
    }

LABEL_24:
    this = (v6 + 1);
  }

  if (*(v6 + 1) != 93)
  {
    goto LABEL_24;
  }

  v7 = *(v6 + 2);
  v8 = v2 == 62 && v7 == 0;
  v9 = v8;
  if (v7 != 62 && !v9)
  {
    goto LABEL_24;
  }

  v11 = v6 + 1;
  if (v3)
  {
    memmove(&v3[-v4], v3, v6 - v3);
    v6 = (v6 - v4);
  }

  *v6 = 0;
  return v11;
}

unint64_t *pugi::impl::anonymous namespace::node_output_simple(unint64_t *this, uint64_t a2, char a3)
{
  v5 = this;
  v6 = *a2 & 0xF;
  if (v6 > 5)
  {
    if (v6 != 6)
    {
      if (v6 == 7)
      {
        v42 = this[1281];
        if (v42 >= 0x7FF)
        {
          v42 = 0;
        }

        *(v5 + v42) = 16188;
        v5[1281] = v42 + 2;
        if (*(a2 + 8))
        {
          v43 = *(a2 + 8);
        }

        else
        {
          v43 = ":anonymous";
        }

        v23 = v5[1281];
        goto LABEL_97;
      }

      if (v6 != 8)
      {
        return this;
      }

      v15 = this[1281];
      if (v15 >= 0x7FC)
      {
        v15 = 0;
      }

      v16 = v5 + v15;
      *v16 = 1329865020;
      v16[4] = 67;
      v17 = v15 + 5;
      v5[1281] = v15 + 5;
      if (v15 >= 0x7F8)
      {
        v17 = 0;
      }

      *(v5 + v17) = 1162893652;
      v18 = v17 + 4;
      v5[1281] = v17 + 4;
      if (*(a2 + 16))
      {
        if (v17 >= 0x7FC)
        {
          v18 = 0;
        }

        *(v5 + v18) = 32;
        v5[1281] = v18 + 1;
        v18 = v5[1281];
      }

      if (v18 >= 0x800)
      {
        v18 = 0;
      }

      *(v5 + v18) = 62;
      v19 = v18 + 1;
LABEL_104:
      v5[1281] = v19;
      return this;
    }

    v21 = this[1281];
    if (v21 >= 0x7FF)
    {
      v21 = 0;
    }

    *(v5 + v21) = 16188;
    v5[1281] = v21 + 2;
    if (*(a2 + 8))
    {
      v22 = *(a2 + 8);
    }

    else
    {
      v22 = ":anonymous";
    }

    v23 = v5[1281];
    if (!*(a2 + 16))
    {
      goto LABEL_97;
    }

    if (v23 >= 0x800)
    {
      v23 = 0;
    }

    *(v5 + v23++) = 32;
    v5[1281] = v23;
    v24 = *(a2 + 16);
    v25 = *v24;
    if (!*v24)
    {
      goto LABEL_97;
    }

LABEL_55:
    for (i = 0; ; ++i)
    {
      if (v25 == 63)
      {
        v25 = v24[i + 1];
        if (v25 == 62)
        {
LABEL_61:
          v27 = v23 + i;
          if (v23 + i > 0x800)
          {
            v27 = v5[1281];
          }

          else
          {
            this = memcpy(v5 + v23, v24, i);
            v5[1281] = v27;
          }

          if (!v24[i])
          {
            v23 = v27;
            goto LABEL_97;
          }

          if (v27 >= 0x7FE)
          {
            v27 = 0;
          }

          v28 = v5 + v27;
          *v28 = 8255;
          v28[2] = 62;
          v23 = v27 + 3;
          v5[1281] = v27 + 3;
          v29 = &v24[i];
          v30 = *(v29 + 2);
          v24 = v29 + 2;
          v25 = v30;
          if (!v30)
          {
LABEL_97:
            if (v23 >= 0x7FF)
            {
              v23 = 0;
            }

            *(v5 + v23) = 15935;
            v19 = v23 + 2;
            goto LABEL_104;
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_61;
        }

        v25 = v24[i + 1];
      }
    }
  }

  if (v6 != 3)
  {
    if (v6 != 4)
    {
      if (v6 != 5)
      {
        return this;
      }

      if (*(a2 + 16))
      {
        v7 = *(a2 + 16);
      }

      else
      {
        v7 = &str_16;
      }

      v8 = this[1281];
      if (v8 >= 0x7FD)
      {
        v8 = 0;
      }

      *(v5 + v8) = 757932348;
      v9 = v8 + 4;
      v5[1281] = v9;
      v10 = *v7;
      if (!*v7)
      {
        goto LABEL_101;
      }

LABEL_11:
      for (j = 0; ; ++j)
      {
        if (v10 == 45)
        {
          v10 = v7[j + 1];
          if (!v7[j + 1] || v10 == 45)
          {
LABEL_18:
            v12 = v9 + j;
            if (v9 + j > 0x800)
            {
              v12 = v5[1281];
            }

            else
            {
              this = memcpy(v5 + v9, v7, j);
              v5[1281] = v12;
            }

            if (!v7[j])
            {
              v9 = v12;
              goto LABEL_101;
            }

            if (v12 >= 0x7FF)
            {
              v12 = 0;
            }

            *(v5 + v12) = 8237;
            v9 = v12 + 2;
            v5[1281] = v12 + 2;
            v13 = &v7[j];
            v14 = *(v13 + 1);
            v7 = v13 + 1;
            v10 = v14;
            if (!v14)
            {
LABEL_101:
              if (v9 >= 0x7FE)
              {
                v9 = 0;
              }

              v44 = v5 + v9;
              *v44 = 11565;
              v44[2] = 62;
              v19 = v9 + 3;
              goto LABEL_104;
            }

            goto LABEL_11;
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_18;
          }

          v10 = v7[j + 1];
        }
      }
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = &str_16;
    }

    v32 = this[1281];
    while (1)
    {
      if (v32 >= 0x7FC)
      {
        v32 = 0;
      }

      v33 = v5 + v32;
      *v33 = 1130045756;
      v33[4] = 68;
      v34 = v32 + 5;
      v5[1281] = v32 + 5;
      if (v32 >= 0x7F8)
      {
        v34 = 0;
      }

      v35 = 0;
      *(v5 + v34) = 1531008065;
      v36 = v34 + 4;
      v5[1281] = v36;
      while (1)
      {
        v37 = v31[v35];
        if (v37 == 93)
        {
          break;
        }

        if (!v31[v35])
        {
          goto LABEL_84;
        }

LABEL_83:
        ++v35;
      }

      if (v31[v35 + 1] != 93 || v31[v35 + 2] != 62)
      {
        goto LABEL_83;
      }

LABEL_84:
      v38 = v37 != 0;
      v39 = v35 + 2 * v38;
      v40 = v39 + v36;
      if (v39 + v36 > 0x800)
      {
        v40 = v5[1281];
      }

      else
      {
        this = memcpy(v5 + v36, v31, v35 + 2 * v38);
        v5[1281] = v40;
      }

      if (v40 >= 0x7FE)
      {
        v40 = 0;
      }

      v31 += v39;
      v41 = v5 + v40;
      *v41 = 23901;
      v41[2] = 62;
      v32 = v40 + 3;
      v5[1281] = v40 + 3;
      if (!*v31)
      {
        return this;
      }
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 16);
  }

  else
  {
    v20 = &str_16;
  }
}

uint64_t pugi::impl::anonymous namespace::text_output_indent(uint64_t this, char *a2, int64_t a3, int a4)
{
  v5 = a4;
  v8 = this;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a4)
      {
        v19 = *(this + 10248);
        do
        {
          v20 = *a2;
          v21 = a2[1];
          v22 = a2[2];
          if (v19 >= 0x7FE)
          {
            v19 = 0;
          }

          v23 = (v8 + v19);
          *v23 = v20;
          v23[1] = v21;
          v23[2] = v22;
          v19 += 3;
          *(v8 + 10248) = v19;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      if (a3 != 4)
      {
LABEL_18:
        if (a4)
        {
          do
          {
            v15 = *(v8 + 10248);
            v16 = v15 + a3;
            if ((v15 + a3) > 0x800)
            {
            }

            else
            {
              this = memcpy((v8 + v15), a2, a3);
              *(v8 + 10248) = v16;
            }

            --v5;
          }

          while (v5);
        }

        return this;
      }

      if (a4)
      {
        v13 = *(this + 10248);
        do
        {
          v4.i32[0] = *a2;
          if (v13 >= 0x7FD)
          {
            v13 = 0;
          }

          v14 = vmovl_u8(v4).u64[0];
          *(v8 + v13) = vuzp1_s8(v14, v14).u32[0];
          v13 += 4;
          *(v8 + 10248) = v13;
          --v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        if (a4)
        {
          v9 = *(this + 10248);
          do
          {
            v10 = *a2;
            v11 = a2[1];
            if (v9 >= 0x7FF)
            {
              v9 = 0;
            }

            v12 = (v8 + v9);
            *v12 = v10;
            v12[1] = v11;
            v9 += 2;
            *(v8 + 10248) = v9;
            --v5;
          }

          while (v5);
        }

        return this;
      }

      goto LABEL_18;
    }

    if (a4)
    {
      v17 = *(this + 10248);
      do
      {
        v18 = *a2;
        if (v17 >= 0x800)
        {
          v17 = 0;
        }

        *(v8 + v17++) = v18;
        *(v8 + 10248) = v17;
        --v5;
      }

      while (v5);
    }
  }

  return this;
}