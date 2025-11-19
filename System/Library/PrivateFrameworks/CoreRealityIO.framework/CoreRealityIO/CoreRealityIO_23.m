uint64_t std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::WrappedRERef<REAsset *>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      v2 = (a1 + 8);
LABEL_12:
      operator delete(*v2);
    }
  }

  else if (*(a1 + 47) < 0)
  {
    v2 = (a1 + 24);
    goto LABEL_12;
  }

  return a1;
}

void *realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t std::__function::__func<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24760A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::TextureBuilder::TextureDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859545A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::find<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 8;
  do
  {
    v4 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<();
    if (v4)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    if (!v4)
    {
      v3 = v2;
    }

    v2 = *(v2 + v5);
  }

  while (v2);
  if (v3 == v1 || pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
  {
    return v1;
  }

  return v3;
}

void std::__tree<realityio::TextureImportOperationSettings>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<realityio::TextureImportOperationSettings>::destroy(a1, *a2);
    std::__tree<realityio::TextureImportOperationSettings>::destroy(a1, *(a2 + 1));
    if (a2[151] < 0)
    {
      operator delete(*(a2 + 16));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath const,std::set<realityio::TextureImportOperationSettings>>>(uint64_t a1)
{
  v1 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1, &v3);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void sub_24760A840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,void *>>>::operator()[abi:ne200100](va, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      while (1)
      {
        v5 = v3;
        if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
        {
          break;
        }

        v3 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
      {
        break;
      }

      v4 = v5 + 1;
      v3 = v5[1];
    }

    while (v3);
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_9:
  *a2 = v5;
  return v4;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<realityio::TextureImportOperationSettings>::destroy(a2 + 80, *(a2 + 88));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__tree<realityio::TextureImportOperationSettings>::__emplace_unique_key_args<realityio::TextureImportOperationSettings,realityio::TextureImportOperationSettings const&>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<realityio::TextureImportOperationSettings>::__find_equal<realityio::TextureImportOperationSettings>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<realityio::TextureImportOperationSettings>::__construct_node<realityio::TextureImportOperationSettings const&>();
  }

  return result;
}

void *std::__tree<realityio::TextureImportOperationSettings>::__find_equal<realityio::TextureImportOperationSettings>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!realityio::TextureImportOperationSettings::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!realityio::TextureImportOperationSettings::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_24760ABA4(_Unwind_Exception *a1)
{
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath((v2 + 32));
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<realityio::TextureImportOperationSettings,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t realityio::TextureImportOperationSettings::operator<(uint64_t a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
  {
    return 1;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(a1, a2))
  {
    return 0;
  }

  v5 = (a1 + 48);
  v6 = *(a2 + 71);
  v7 = *(a1 + 71);
  v8 = v7;
  v9 = (a1 + 48);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 71);
  }

  else
  {
    v10 = *(a2 + 56);
  }

  if (v6 >= 0)
  {
    v11 = (a2 + 48);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  v14 = v8 < v10;
  if (v13)
  {
    v14 = v13 < 0;
  }

  if (v14)
  {
    return 1;
  }

  v15 = *(a1 + 56);
  if ((v7 & 0x80000000) == 0)
  {
    v15 = v7;
  }

  if (v15 != v10)
  {
    return 0;
  }

  v16 = *v5;
  v17 = ((v7 & 0x80000000) == 0 ? a1 + 48 : *v5);
  if (memcmp(v17, v11, v10))
  {
    return 0;
  }

  v18 = *(a1 + 72);
  v19 = *(a2 + 72);
  if (v18 < v19)
  {
    return 1;
  }

  if (v18 != v19)
  {
    return 0;
  }

  if (realityio::TextureSwizzleChannels::operator<((a1 + 76), (a2 + 76)))
  {
    return 1;
  }

  if (*(a1 + 76) != *(a2 + 76))
  {
    return 0;
  }

  if (*(a1 + 77) != *(a2 + 77))
  {
    return 0;
  }

  if (*(a1 + 78) != *(a2 + 78))
  {
    return 0;
  }

  if (*(a1 + 79) != *(a2 + 79))
  {
    return 0;
  }

  v20 = *(a1 + 80);
  v21 = *(a2 + 80);
  if (v20 < v21)
  {
    return 1;
  }

  if (v20 == v21 && ((v22 = *(a1 + 84), v23 = *(a2 + 84), v22 < v23) || v22 == v23 && ((v24 = *(a1 + 88), v25 = *(a2 + 88), v24 < v25) || v24 == v25 && ((v26 = *(a1 + 89), v27 = *(a2 + 89), v26 < v27) || v26 == v27 && (std::string::compare[abi:ne200100]((a1 + 96), (a2 + 96)) & 0x80000000) != 0))))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL realityio::TextureSwizzleChannels::operator<(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a2[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 == v8)
  {
    return a1[3] < a2[3];
  }

  return 0;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<realityio::TextureImportOperationSettings,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 151) < 0)
    {
      operator delete(__p[16]);
    }

    if (*(__p + 103) < 0)
    {
      operator delete(__p[10]);
    }

    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void realityio::mtlx::fillAttr(realityio::mtlx *this, realityio::mtlx::MxDataSource *a2, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v15);
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v15);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18 + 1, &v16);
  v19[0] = TypeName;
  v7 = (this + 184);
  v6 = *(this + 23);
  if (!v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v18, v6 + 4))
      {
        break;
      }

      v6 = *v8;
      v7 = v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v8 + 4, &v18))
    {
      break;
    }

    v7 = v8 + 1;
    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!*v7)
  {
LABEL_7:
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v15);
  HasValue = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v15);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18 + 1, &v16);
  LOBYTE(v19[0]) = HasValue;
  v11 = (this + 136);
  v10 = *(this + 17);
  if (!v10)
  {
    goto LABEL_14;
  }

  while (1)
  {
    while (1)
    {
      v12 = v10;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v18, (v10 + 28)))
      {
        break;
      }

      v10 = *v12;
      v11 = v12;
      if (!*v12)
      {
        goto LABEL_14;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v12 + 28), &v18))
    {
      break;
    }

    v11 = v12 + 1;
    v10 = v12[1];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  if (!*v11)
  {
LABEL_14:
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v15);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(&v14, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v18, &v15, &v14);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(this + 248, &v18);
  if ((v19[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v19[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v15);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v14, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v18, &v15, &v14);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(this + 272, &v18);
  if ((v19[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v19[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(a2))
  {
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v14);
    std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<true,0>(&v18, &v14, &v15);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>(this + 200, &v18);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v15);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24760B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::fillDataSourceFromShaderPrim(realityio::mtlx *a1, pxrInternal__aapl__pxrReserved__ **this)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(&v92, this);
  v5 = v93;
  if (v92 != v93)
  {
    v6 = v92 + 16;
    do
    {
      v7 = v6 - 16;
      LODWORD(v105) = *(v6 - 16);
      v8 = *(v6 - 8);
      v106 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, v6);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v6 + 4));
      v10 = *(v6 + 8);
      v109 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v109 &= 0xFFFFFFFFFFFFFFF8;
      }

      realityio::mtlx::fillAttr(a1, &v105, v9);
      if ((v109 & 7) != 0)
      {
        atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
      if (v106)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
      }

      v6 += 32;
    }

    while (v7 + 32 != v5);
  }

  v11 = this[1];
  if (!v11 || (*(v11 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v4);
  }

  v12 = *(v11 + 3);
  MEMORY[0x24C1A5DE0](&v105, "Shader");
  v14 = v105 ^ *v12;
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v91);
    realityio::mtlx::MxDataSource::addPrim(a1, &v91, 2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v91);
    v86 = *this;
    v15 = this[1];
    v87 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 6, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v88, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v89, this + 5);
    v16 = this[3];
    v90 = v16;
    if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v90 &= 0xFFFFFFFFFFFFFFF8;
    }

    v17 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v114 = 0;
    v115[0] = MEMORY[0x277D86708] + 16;
    v112 = 0;
    v113 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(v17);
    v18 = v110;
    for (i = v111; v18 != i; v18 += 32)
    {
      LODWORD(v105) = *v18;
      v20 = *(v18 + 8);
      v106 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, (v18 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v18 + 20));
      v21 = *(v18 + 24);
      v109 = v21;
      if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v109 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v102);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v102);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v112, NameToken);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
      realityio::mtlx::fillAttr(a1, &v105, v23);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v102);
      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v99, &v105);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v102, &v99);
      if ((v99 & 7) != 0)
      {
        atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
      v102 = 0;
      v103 = 0;
      v104 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v24 = v102;
        if (v102 != v103)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v99, v102);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v99 + 1, v24 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v96, &v99);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>();
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v101);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v101, &v102);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v101);
      v99 = &v102;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v99);
      if ((v109 & 7) != 0)
      {
        atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
      if (v106)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
      }
    }

    v102 = 0;
    v103 = 0;
    v104 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutputs(v115);
    v25 = v99;
    for (j = v100; v25 != j; v25 += 32)
    {
      LODWORD(v105) = *v25;
      v27 = *(v25 + 8);
      v106 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, (v25 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v25 + 20));
      v28 = *(v25 + 24);
      v109 = v28;
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v109 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v96);
      v29 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v96);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v102, v29);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
      realityio::mtlx::fillAttr(a1, &v105, v30);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v96);
      pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(v116, &v105);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v96, v116);
      if ((v116[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v116[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
      v96 = 0;
      v97 = 0;
      v98 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v31 = v96;
        if (v96 != v97)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v116, v96);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v116 + 1, v31 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v95, v116);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>();
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v94);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v94, &v96);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v94);
      v116[0] = &v96;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v116);
      if ((v109 & 7) != 0)
      {
        atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
      if (v106)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v86, &v96);
    realityio::mtlx::MxDataSource::addInputsOutputs(a1, &v96, &v112, &v102);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
    v105 = &v99;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105 = &v102;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105 = &v110;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105 = &v112;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v105);
    MEMORY[0x24C1A5280](v115);
    if ((v90 & 7) != 0)
    {
      atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v88);
    v32 = v87;
    if (!v87)
    {
      goto LABEL_154;
    }

LABEL_153:
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
    goto LABEL_154;
  }

  v33 = this[1];
  if (!v33 || (*(v33 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v13);
  }

  v34 = *(v33 + 3);
  MEMORY[0x24C1A5DE0](&v105, "NodeGraph");
  v36 = v105 ^ *v34;
  if ((v105 & 7) != 0)
  {
    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v36 > 7)
  {
    v54 = this[1];
    if (!v54 || (*(v54 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v35);
    }

    v55 = *(v54 + 3);
    MEMORY[0x24C1A5DE0](&v105, "Material");
    v56 = v105 ^ *v55;
    if ((v105 & 7) != 0)
    {
      atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v56 <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v79);
      realityio::mtlx::MxDataSource::addPrim(a1, &v79, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v79);
      v74 = *this;
      v57 = this[1];
      v75 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(v57 + 6, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v76, this + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v77, this + 5);
      v58 = this[3];
      v78 = v58;
      if ((v58 & 7) != 0 && (atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v78 &= 0xFFFFFFFFFFFFFFF8;
      }

      v59 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v114 = 0;
      v115[0] = MEMORY[0x277D86758] + 16;
      v112 = 0;
      v113 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(v59);
      v60 = v110;
      for (k = v111; v60 != k; v60 += 32)
      {
        LODWORD(v105) = *v60;
        v62 = *(v60 + 8);
        v106 = v62;
        if (v62)
        {
          atomic_fetch_add_explicit((v62 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, (v60 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v60 + 20));
        v63 = *(v60 + 24);
        v109 = v63;
        if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v109 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v102);
        v64 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v102);
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v112, v64);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
        realityio::mtlx::fillAttr(a1, &v105, v65);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v102);
        pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v99, &v105);
        realityio::mtlx::MxDataSource::addBaseName(a1, &v102, &v99);
        if ((v99 & 7) != 0)
        {
          atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
        v102 = 0;
        v103 = 0;
        v104 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
        {
          v66 = v102;
          if (v102 != v103)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v99, v102);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v99 + 1, v66 + 1);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v96, &v99);
            std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>();
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v101);
        realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v101, &v102);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v101);
        v99 = &v102;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v99);
        if ((v109 & 7) != 0)
        {
          atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
        if (v106)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
        }
      }

      v102 = 0;
      v103 = 0;
      v104 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(v115);
      v67 = v99;
      for (m = v100; v67 != m; v67 += 32)
      {
        LODWORD(v105) = *v67;
        v69 = *(v67 + 8);
        v106 = v69;
        if (v69)
        {
          atomic_fetch_add_explicit((v69 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, (v67 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v67 + 20));
        v70 = *(v67 + 24);
        v109 = v70;
        if ((v70 & 7) != 0 && (atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v109 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v96);
        v71 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v96);
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v102, v71);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
        realityio::mtlx::fillAttr(a1, &v105, v72);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v96);
        pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(v116, &v105);
        realityio::mtlx::MxDataSource::addBaseName(a1, &v96, v116);
        if ((v116[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v116[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
        v96 = 0;
        v97 = 0;
        v98 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
        {
          v73 = v96;
          if (v96 != v97)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v116, v96);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v116 + 1, v73 + 1);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v95, v116);
            std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>();
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v94);
        realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v94, &v96);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v94);
        v116[0] = &v96;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v116);
        if ((v109 & 7) != 0)
        {
          atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
        if (v106)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v74, &v96);
      realityio::mtlx::MxDataSource::addInputsOutputs(a1, &v96, &v112, &v102);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
      v105 = &v99;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v105);
      v105 = &v102;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v105);
      v105 = &v110;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v105);
      v105 = &v112;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v105);
      MEMORY[0x24C1A5510](v115);
      if ((v78 & 7) != 0)
      {
        atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v76);
      v32 = v75;
      if (v75)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v85);
    realityio::mtlx::MxDataSource::addPrim(a1, &v85, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v85);
    v80 = *this;
    v37 = this[1];
    v81 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(v37 + 6, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v82, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v83, this + 5);
    v38 = this[3];
    v84 = v38;
    if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v84 &= 0xFFFFFFFFFFFFFFF8;
    }

    v39 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v114 = 0;
    v115[0] = MEMORY[0x277D86778] + 16;
    v112 = 0;
    v113 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(v39);
    v40 = v110;
    for (n = v111; v40 != n; v40 += 32)
    {
      LODWORD(v105) = *v40;
      v42 = *(v40 + 8);
      v106 = v42;
      if (v42)
      {
        atomic_fetch_add_explicit((v42 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, (v40 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v40 + 20));
      v43 = *(v40 + 24);
      v109 = v43;
      if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v109 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v102);
      v44 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v102);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v112, v44);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
      realityio::mtlx::fillAttr(a1, &v105, v45);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v102);
      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v99, &v105);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v102, &v99);
      if ((v99 & 7) != 0)
      {
        atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
      v102 = 0;
      v103 = 0;
      v104 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v46 = v102;
        if (v102 != v103)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v99, v102);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v99 + 1, v46 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v96, &v99);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>();
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v101);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v101, &v102);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v101);
      v99 = &v102;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v99);
      if ((v109 & 7) != 0)
      {
        atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
      if (v106)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
      }
    }

    v102 = 0;
    v103 = 0;
    v104 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(v115);
    v47 = v99;
    for (ii = v100; v47 != ii; v47 += 32)
    {
      LODWORD(v105) = *v47;
      v49 = *(v47 + 8);
      v106 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v107, (v47 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v47 + 20));
      v50 = *(v47 + 24);
      v109 = v50;
      if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v109 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v96);
      v51 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v96);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v102, v51);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
      realityio::mtlx::fillAttr(a1, &v105, v52);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v96);
      pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(v116, &v105);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v96, v116);
      if ((v116[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v116[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
      v96 = 0;
      v97 = 0;
      v98 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v53 = v96;
        if (v96 != v97)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v116, v96);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v116 + 1, v53 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v95, v116);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>();
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v94);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v94, &v96);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v94);
      v116[0] = &v96;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v116);
      if ((v109 & 7) != 0)
      {
        atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
      if (v106)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v106);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v80, &v96);
    realityio::mtlx::MxDataSource::addInputsOutputs(a1, &v96, &v112, &v102);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v96);
    v105 = &v99;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105 = &v102;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105 = &v110;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v105);
    v105 = &v112;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v105);
    MEMORY[0x24C1A5610](v115);
    if ((v84 & 7) != 0)
    {
      atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v82);
    v32 = v81;
    if (v81)
    {
      goto LABEL_153;
    }
  }

LABEL_154:
  v105 = &v92;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v105);
}

void sub_24760C7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a30);
  *(v37 - 200) = &a33;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  *(v37 - 200) = &a37;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  *(v37 - 200) = v37 - 168;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  *(v37 - 200) = v37 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  MEMORY[0x24C1A5510](v37 - 120);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a10);
  *(v37 - 200) = &a25;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::addPrim(void *a1, _DWORD *a2, int a3)
{
  v6 = (a1 + 7);
  v7 = (a1[8] - a1[7]) >> 3;
  v8 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v13, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v13 + 1, a2 + 1);
  v13[1] = v7;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>(v8, v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v13);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11 + 1, a2 + 1);
  v12 = a3;
  if (!*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>((a1 + 4), &v14, &v11))
  {
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  v9 = a1[8];
  if (v9 >= a1[9])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v6, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1[8], a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v9 + 4), a2 + 1);
    result = v9 + 8;
  }

  a1[8] = result;
  return result;
}

void sub_24760CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::chaseConnection(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  while (1)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
    if (!result)
    {
      break;
    }

    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3, a1);
    v8 = result;
    if (a3 + 8 == result)
    {
      if (*a1 == *a2)
      {
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a1 + 1), &v9 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      }

      return result;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, (result + 36));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a1 + 1), (v8 + 40));
  }

  return result;
}

uint64_t realityio::mtlx::buildConnectionsMaps(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v39, a1);
  v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v39);
  pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(v45, v5);
  v6 = v40;
  if (v40 && atomic_fetch_add_explicit((v40 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(v45, &v39);
  v34 = v45[1];
  v35 = v45;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v37 = 0;
  v38 = 0;
  while (v40 != v35 || v39 != v34 || v41 != v36 || v42 != v37 || v43 != v38 || v44 != HIBYTE(v38))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(&v39, v30);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(v29, v30);
    v8 = v29[0];
    v7 = v29[1];
    while (v8 != v7)
    {
      LODWORD(v24) = *v8;
      v9 = *(v8 + 8);
      v25 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, (v8 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v27, (v8 + 20));
      v10 = *(v8 + 24);
      v28 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v28 &= 0xFFFFFFFFFFFFFFF8;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v11 = v21;
        v12 = v22;
        while (v11 != v12)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, v11);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, v11 + 1);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v24, &v14);
          LODWORD(v16) = v14;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
          HIDWORD(v16) = v15;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, &v19);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v20);
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(a2, &v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v24, &v14);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, &v19);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16 + 1, &v20);
          v17 = v14;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
          v18 = v15;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(a3, &v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
          v11 += 2;
        }
      }

      v16 = &v21;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v16);
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
      }

      v8 += 32;
    }

    v24 = v29;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v24);
    if ((v33 & 7) != 0)
    {
      atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    if (v31)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v31);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v39);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
}

void sub_24760D4B8(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v1 - 128);
  _Unwind_Resume(a1);
}

void sub_24760D690(uint64_t a1, ...)
{
  va_start(va, a1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(va);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  JUMPOUT(0x24760D6BCLL);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a2, &v6, (a1 + 16));
  result = v6;
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return result;
}

void sub_24760D738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

atomic_uint **realityio::mtlx::mtlxDocToDataSource@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&v36);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&v36);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v26, &v24);
  std::string::basic_string[abi:ne200100]<0>(&v36, "/MaterialX");
  MEMORY[0x24C1A5D70](&v41, &v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "/ModelRoot");
  MEMORY[0x24C1A5D70](&v25, __p);
  realityio::mtlx::UsdMtlxRead(a2, &v26, &v41, &v25);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v36);
  }

  v5 = v27;
  if (v27 && atomic_fetch_add_explicit(v27 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v19 = 1;
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v23 = 0;
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v24);
    std::string::basic_string[abi:ne200100]<0>(__p, "/MaterialX/Materials");
    MEMORY[0x24C1A5D70](&v41, __p);
    MEMORY[0x24C1A5E00](&v25, a1);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v26, &v41, &v25);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v36, v7, &v26);
    v19 = v36;
    v20 = v37;
    v37 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v21, &v38);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v22, &v39);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 = v40;
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    if (v37)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v18 = v24;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v18);
    v8 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v18);
    pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(&v36, v8);
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(&v36, __p);
    v26 = v37;
    v27 = &v36;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v29 = 0;
    v30 = 0;
    while (__p[1] != v27 || __p[0] != v26 || v32 != v28 || v33 != v29 || v34 != v30 || v35 != HIBYTE(v30))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(__p, &v41);
      v10 = v42;
      if (!v42 || (*(v42 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v42, v9);
      }

      v11 = *(v10 + 3);
      MEMORY[0x24C1A5DE0](&v25, "Material");
      v12 = *v11;
      v13 = v25;
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v13 ^ v12) < 8)
      {
        v14 = 0;
        goto LABEL_38;
      }

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

      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(__p);
    }

    v14 = 1;
LABEL_38:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    if (v14)
    {
      LODWORD(v41) = 1;
      v42 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v45 = 0;
    }

    v19 = v41;
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
    }

    v20 = v42;
    v42 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v21, &v43);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v22, &v44);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 = v45;
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
    if (v42)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v18);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v19))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
  }

  result = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v24);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24760EDB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::mtlxToDataSource(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = [v5 isFileURL];
  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v5 fileSystemRepresentation]);
    realityio::mtlx::UsdMtlxGetDocument(__p, &v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v12;
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    realityio::mtlx::mtlxDocToDataSource(a1, &v8, a3);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v7 = *(realityio::logObjects(v6) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", __p, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_24760F44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::mtlxToDataSource(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  realityio::mtlx::UsdMtlxGetDocumentFromString(a2, &v7);
  v5 = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  realityio::mtlx::mtlxDocToDataSource(a1, &v5, a3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_24760F514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,BOOL>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, void *a2)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue,0>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 16) = 0;
  if (*(a2 + 16))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v9, a1 + 8);
    v5 = *(a2 + 16);
    v6 = ~*(a2 + 16);
    *(a1 + 16) = v5;
    if ((v6 & 3) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 8, a1 + 8);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    *(a2 + 16) = 0;
    if (v10)
    {
      (*(v10 + 32))(v9);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24760F964(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>();
  }

  return v2;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::NeoPrimType>,0>(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::NeoPrimType>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    result = (v3 + 1);
  }

  a1[1] = result;
  return result;
}

uint64_t realityio::mtlx::MxDataSource::addBaseName(realityio::mtlx::MxDataSource *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v5, a2, a3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(this + 152, &v5);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
}

uint64_t realityio::mtlx::MxDataSource::addConnectedAttribute(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7 + 1, a2 + 1);
  memset(v8, 0, sizeof(v8));
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(v8, *a3, a3[1], (a3[1] - *a3) >> 3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>(a1 + 224, &v7);
  v9 = v8;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
}

void sub_24760FDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::addInputsOutputs(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&,0>(&v8, a2, a3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>(a1 + 80, &v8);
  v10 = v9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&,0>(&v8, a2, a4);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>(a1 + 104, &v8);
  v10 = v9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
}

void sub_24760FEBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,0>(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 4, a2);
    if (!result)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&,0>(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 8, *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1, a2[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 36);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 28);

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<realityio::mtlx::MxDataSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::mtlx::MxDataSource>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285954670;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 296, *(a1 + 304));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 272, *(a1 + 280));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1 + 248, *(a1 + 256));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1 + 224, *(a1 + 232));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(*(a1 + 208));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 176, *(a1 + 184));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(*(a1 + 160));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*(a1 + 136));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*(a1 + 112));
  v2 = (a1 + 80);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(*(a1 + 64));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1 + 32, *(a1 + 40));
}

uint64_t realityio::mtlx::MxDataSource::getIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v5, a2);
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 8, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 36);
  }
}

void sub_247610520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

_DWORD *realityio::mtlx::MxDataSource::getPath@<X0>(realityio::mtlx::MxDataSource *this@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(this + 7);
  if (a2 >= ((*(this + 8) - v3) >> 3))
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  }

  else
  {
    v4 = (v3 + 8 * a2);
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, v4) + 1;

    return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v5, v4 + 1);
  }
}

uint64_t realityio::mtlx::MxDataSource::getPath@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t *a3@<X8>)
{
  (*(*this + 16))(&v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a3, &v6, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
}

void sub_247610644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::hasValue(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v3 = *(this + 7);
  if (a2 < ((*(this + 8) - v3) >> 3))
  {
    v6 = (v3 + 8 * a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v6 + 1);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v16, &v17, a3);
    v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 128, &v16);
    v8 = v7;
    if ((this + 136) == v7)
    {
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      std::operator+<char>();
      MEMORY[0x24C1A5E00](&v14, __p);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v15, &v17, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16, &v15);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16 + 4, &v15 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 128, &v16);
      if (v8 == v10)
      {
        if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
        }

        std::operator+<char>();
        MEMORY[0x24C1A5E00](&v14, __p);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v15, &v17, &v14);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16, &v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16 + 4, &v15 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 128, &v16);
        if (v8 == v10)
        {
          v9 = 0;
LABEL_22:
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
          return v9 & 1;
        }
      }

      v8 = v10;
    }

    v9 = *(v8 + 36);
    goto LABEL_22;
  }

  v9 = 0;
  return v9 & 1;
}

void sub_247610898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a18);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a20);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getBaseName@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  (*(*this + 16))(&v19);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v18, &v19, a2);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 152, &v18);
  if ((this + 160) == v8)
  {
    if (a3)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(__p, "inputs:");
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v17, __p, EmptyString);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(__p, "outputs:");
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v13 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v17, __p, v13);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    MEMORY[0x24C1A5E00](a4, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v8[5];
    *a4 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
}

void sub_247610AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a21);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v21 - 40));
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getTypeName(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  (*(*this + 16))(&v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v7, &v8, a3);
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 176, &v7);
  if ((this + 184) == v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v9);
  }

  else
  {
    v9 = v5[5];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  return v9;
}

void sub_247610BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::mtlx::MxDataSource::getInputValue(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v8);
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v8 + 1);
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::operator+<char>();
  MEMORY[0x24C1A5E00](&v16, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(__p, &v17, &v16);
  v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 200, __p);
  if (a4)
  {
    v11 = (this + 208) == v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator=(a4, v10 + 5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  return (v12 & 1) == 0;
}

void sub_247610D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a17);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getInputValue(realityio::mtlx::MxDataSource *this, uint64_t a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v5 = (*(*this + 56))(this, a2, a3, v10) ^ 1;
  if (!a4)
  {
    LOBYTE(v5) = 1;
  }

  if ((v5 & 1) != 0 || !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v10))
  {
    v7 = 0;
  }

  else
  {
    if ((v11 & 4) != 0)
    {
      v6 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(v10);
    }

    else
    {
      v6 = v10;
    }

    pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, v6);
    v7 = 1;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_247610E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getInputValue(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v5 = (*(*a1 + 56))(a1, a2, a3, &__str) ^ 1;
  if (!a4)
  {
    LOBYTE(v5) = 1;
  }

  if (v5)
  {
    goto LABEL_13;
  }

  v6 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16) != 12)
  {
    {
      v6 = v12;
      if ((v12 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&__str);
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if ((v12 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v7 = __str;
LABEL_8:
  std::string::operator=(a4, v7);
  v8 = 1;
LABEL_14:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__str);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_247610FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

BOOL realityio::mtlx::MxDataSource::getRawConnectedSourcePaths(uint64_t a1, unsigned int a2, void *a3, int a4, void *a5)
{
  v5 = *(a1 + 56);
  if (a2 >= ((*(a1 + 64) - v5) >> 3))
  {
    return 0;
  }

  v10 = (v5 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, v10);
  v11 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, v10 + 1);
  if (a4)
  {
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
LABEL_7:
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

LABEL_8:
  std::operator+<char>();
  MEMORY[0x24C1A5E00](&v18, __p);
  v13 = v18;
  v18 = 0;
  v19 = v13;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v19, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(__p, &v20, &v19);
  v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, __p);
  v12 = 0;
  if (a5 && a1 + 232 != v14)
  {
    if ((v14 + 40) != a5)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a5, *(v14 + 40), *(v14 + 48), (*(v14 + 48) - *(v14 + 40)) >> 3);
    }

    v12 = *a5 != a5[1];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  return v12;
}

void sub_247611180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a17);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getAttributeConnections(uint64_t a1, unsigned int a2, atomic_uint **a3, uint64_t a4)
{
  v4 = *(a1 + 56);
  if (a2 >= ((*(a1 + 64) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v8 + 1);
  v9 = *a3;
  v16 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v10;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v15, &v17, &v16);
  v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, &v15);
  if (a4)
  {
    v12 = a1 + 232 == v11;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v12 && v11 + 40 != a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a4, *(v11 + 40), *(v11 + 48), (*(v11 + 48) - *(v11 + 40)) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  return v13;
}

void sub_247611324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((a4 & 7) != 0)
  {
    atomic_fetch_add_explicit((a4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::MxDataSource::surfaceOutput(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  std::operator+<char>();
  v7 = std::string::append(&v11, ":surface");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  MEMORY[0x24C1A5E00](&v11, __p);
  v9 = v11.__r_.__value_.__r.__words[0];
  if ((v11.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v11.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v11.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v11.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a4 = this;
  *(a4 + 8) = a3;
  *(a4 + 16) = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a4 + 16) = v10;
    }

    atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247611480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::mtlx::MxDataSource::getAttrValue(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, v8 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v13, &v14, a3);
  v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 200, &v13);
  v10 = !a4 || (this + 208) == v9;
  v11 = v10;
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator=(a4, v9 + 5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
  return !v11;
}

void sub_24761159C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::mtlx::MxDataSource::getAttrToken(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v8 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v16, &v17, a3);
  v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 200, &v16);
  v10 = v9;
  if (a4)
  {
    v11 = (this + 208) == v9;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (!v11)
  {
    v13 = (v9 + 40);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v9 + 40)))
    {
      v14 = *(v10 + 48);
      if ((v14 & 4) != 0)
      {
        v13 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 40);
      }

      pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  return (v12 & 1) == 0;
}

void sub_2476116E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getAttrRoleName@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, atomic_uint **a4@<X8>)
{
  v7 = (*(this + 7) + 8 * a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v7 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v12, &v13, a2);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 248, &v12);
  if ((this + 256) == v8)
  {
    v10 = 0;
LABEL_6:
    *a4 = v10;
    goto LABEL_7;
  }

  v9 = v8[5];
  *a4 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_2476117E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a10);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getAttrColorSpace@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, atomic_uint **a4@<X8>)
{
  v7 = (*(this + 7) + 8 * a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v7 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v12, &v13, a2);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 272, &v12);
  if ((this + 280) == v8)
  {
    v10 = 0;
LABEL_6:
    *a4 = v10;
    goto LABEL_7;
  }

  v9 = v8[5];
  *a4 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_2476118F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a10);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::nodeGraphGetList@<X0>(realityio::mtlx::MxDataSource *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  (*(*this + 16))(&v24);
  if (a3)
  {
    v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 80, &v24);
    if ((this + 88) != v8)
    {
      v9 = v8[5];
      for (i = v8[6]; v9 != i; ++v9)
      {
        v11 = *v9;
        if ((*v9 & 7) != 0)
        {
          add_explicit = atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
          v21 = this;
          if ((add_explicit & 1) == 0)
          {
            v11 &= 0xFFFFFFFFFFFFFFF8;
          }

          v22 = a2;
          v23 = v11;
          if ((v11 & 7) != 0)
          {
            v13 = 0;
            if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v23 &= 0xFFFFFFFFFFFFFFF8;
            }
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v21 = this;
          v22 = a2;
          v13 = 1;
          v23 = v11;
        }

        std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](a4, &v21);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v13 & 1) == 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }
  }

  else
  {
    v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 104, &v24);
    if ((this + 112) != v14)
    {
      v15 = v14[5];
      for (j = v14[6]; v15 != j; ++v15)
      {
        v17 = *v15;
        if ((*v15 & 7) != 0)
        {
          v18 = atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
          v21 = this;
          if ((v18 & 1) == 0)
          {
            v17 &= 0xFFFFFFFFFFFFFFF8;
          }

          v22 = a2;
          v23 = v17;
          if ((v17 & 7) != 0)
          {
            v19 = 0;
            if ((atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v23 &= 0xFFFFFFFFFFFFFFF8;
            }
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          v21 = this;
          v22 = a2;
          v19 = 1;
          v23 = v17;
        }

        std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](a4, &v21);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v19 & 1) == 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
}

void sub_247611B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a12);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::nodeGraphGetInput@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v6 = this + 80;
  (*(*this + 16))(&v32);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6, &v32);
  if ((this + 88) == v7 || (v8 = v7[5], v9 = v7[6], v8 == v9))
  {
LABEL_31:
    v21 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
      if ((v21 & 7) != 0)
      {
        v23 = (v21 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v23;
        }

        atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
    }
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = std::string::basic_string[abi:ne200100]<0>(__p, "inputs:");
      v12 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v12 + 4);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v31, __p, EmptyString);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v15 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      v16 = *(v15 + 23);
      if (v16 >= 0)
      {
        v17 = *(v15 + 23);
      }

      else
      {
        v17 = v15[1];
      }

      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      if (v17 == size)
      {
        if (v16 < 0)
        {
          v15 = *v15;
        }

        v20 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
        if (!memcmp(v15, v20, v17))
        {
          break;
        }
      }

      if (v19 < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
      }

      if (++v8 == v9)
      {
        goto LABEL_31;
      }
    }

    v24 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v24 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
      if ((v24 & 7) != 0)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v25;
        }

        atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
}

uint64_t realityio::mtlx::MxDataSource::nodeGraphGetOutput@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v6 = this + 104;
  (*(*this + 16))(&v32);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6, &v32);
  if ((this + 112) == v7 || (v8 = v7[5], v9 = v7[6], v8 == v9))
  {
LABEL_31:
    v21 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
      if ((v21 & 7) != 0)
      {
        v23 = (v21 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v23;
        }

        atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
    }
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = std::string::basic_string[abi:ne200100]<0>(__p, "outputs:");
      v12 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v12 + 4);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v31, __p, EmptyString);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v15 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      v16 = *(v15 + 23);
      if (v16 >= 0)
      {
        v17 = *(v15 + 23);
      }

      else
      {
        v17 = v15[1];
      }

      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      if (v17 == size)
      {
        if (v16 < 0)
        {
          v15 = *v15;
        }

        v20 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
        if (!memcmp(v15, v20, v17))
        {
          break;
        }
      }

      if (v19 < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
      }

      if (++v8 == v9)
      {
        goto LABEL_31;
      }
    }

    v24 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v24 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
      if ((v24 & 7) != 0)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v25;
        }

        atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
}

uint64_t realityio::mtlx::MxDataSource::gatherSources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 80;
  (*(*a1 + 16))(&v19);
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v5, &v19);
  if (a1 + 88 != v6)
  {
    v7 = *(v6 + 40);
    for (i = *(v6 + 48); v7 != i; ++v7)
    {
      v9 = *v7;
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v17, &v19, &v18);
      v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, &v17);
      if (a1 + 232 != v10)
      {
        realityio::mtlx::MxDataSource::mergeSourcePrimIndices(a1, *(v10 + 40), *(v10 + 48), a3);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 104, &v19);
  if (a1 + 112 != v11)
  {
    v12 = *(v11 + 40);
    for (j = *(v11 + 48); v12 != j; ++v12)
    {
      v14 = *v12;
      v18 = v14;
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v17, &v19, &v18);
      v15 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, &v17);
      if (a1 + 232 != v15)
      {
        realityio::mtlx::MxDataSource::mergeSourcePrimIndices(a1, *(v15 + 40), *(v15 + 48), a3);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
}

void sub_2476123E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::shaderUsesSecondUV(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v13, "info:id");
  v3 = *(a2 + 2);
  v17 = *a2;
  v18 = v3;
  v19 = v13;
  if ((v13 & 7) != 0)
  {
    v4 = v13 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v19 = v4;
    }
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = 0;
  result = (*(*v17 + 112))(v17, v18, &v19, &v16);
  if (result)
  {
    MEMORY[0x24C1A5DE0](&v13, "ND_texcoord");
    v6 = v13 ^ v16;
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v6 > 7)
    {
      goto LABEL_30;
    }

    MEMORY[0x24C1A5DE0](&v20, "index");
    v7 = *a2;
    v8 = *(a2 + 2);
    v13 = *a2;
    v14 = v8;
    v15 = v20;
    if ((v20 & 7) != 0)
    {
      v9 = v20 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 = v9;
      }
    }

    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v7 = v13;
      v8 = v14;
    }

    v21 = 0;
    if ((*(*v7 + 104))(v7, v8, &v15, &v20))
    {
      v10 = v21;
      if (v21)
      {
        if (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16) == 5)
        {
          if ((v21 & 4) == 0)
          {
LABEL_19:
            v11 = &v20;
            goto LABEL_20;
          }

LABEL_27:
          v11 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v20);
LABEL_20:
          if (*v11 == 1)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v20);
            if ((v15 & 7) != 0)
            {
              atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            result = 1;
            goto LABEL_31;
          }

          goto LABEL_28;
        }

        if ((v21 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v20, MEMORY[0x277D827C0]))
        {
          v10 = v21;
          if ((v21 & 4) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }
    }

LABEL_28:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v20);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

LABEL_30:
    result = 0;
  }

LABEL_31:
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476126E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::mtlx::MxDataSource::attrIsValid(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  (*(*this + 16))(&v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v7, &v8, a3);
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 176, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  return (this + 184) != v5;
}

void sub_247612828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a10);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::primType(realityio::mtlx::MxDataSource *this, unsigned int a2)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 3;
  }

  v7[5] = v2;
  v7[6] = v3;
  v5 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 32, v7, (v4 + 8 * a2));
  if (!v5)
  {
    operator new();
  }

  return *(v5 + 36);
}

uint64_t realityio::mtlx::MxDataSource::getShadeInputs@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a2;
  v7 = *(a2 + 2);
  (*(*v6 + 16))(&v27);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 80, &v27);
  if (a1 + 88 != v8)
  {
    v10 = *(v8 + 40);
    for (i = *(v8 + 48); v10 != i; ++v10)
    {
      v11 = *v10;
      if ((*v10 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = *(a2 + 2);
      if ((v11 & 7) != 0)
      {
        if (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
        {
          v13 = v11;
        }

        else
        {
          v13 = v11 & 0xFFFFFFFFFFFFFFF8;
        }

        if ((v13 & 7) != 0)
        {
          v14 = 0;
          v15 = v13;
          if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v13 &= 0xFFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          v14 = 1;
          v15 = v13;
        }
      }

      else
      {
        v14 = 1;
        v15 = v11;
        v13 = v11;
      }

      v17 = a3[1];
      v16 = a3[2];
      if (v17 >= v16)
      {
        v25 = v15;
        v26 = v14;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v28[4] = a3;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(a3, v22);
        }

        v23 = 24 * v19;
        v28[0] = 0;
        v28[1] = v23;
        v28[3] = 0;
        *v23 = a1;
        *(v23 + 8) = v12;
        *(v23 + 16) = v13;
        v28[2] = 24 * v19 + 24;
        std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(a3, v28);
        v18 = a3[1];
        std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v28);
        v14 = v26;
        v15 = v25;
      }

      else
      {
        *v17 = a1;
        *(v17 + 8) = v12;
        v18 = v17 + 24;
        *(v17 + 16) = v13;
      }

      a3[1] = v18;
      if ((v14 & 1) == 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
}

void sub_247612B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getShadeOutputs@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a2;
  v7 = *(a2 + 2);
  (*(*v6 + 16))(&v27);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 104, &v27);
  if (a1 + 112 != v8)
  {
    v10 = *(v8 + 40);
    for (i = *(v8 + 48); v10 != i; ++v10)
    {
      v11 = *v10;
      if ((*v10 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = *(a2 + 2);
      if ((v11 & 7) != 0)
      {
        if (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
        {
          v13 = v11;
        }

        else
        {
          v13 = v11 & 0xFFFFFFFFFFFFFFF8;
        }

        if ((v13 & 7) != 0)
        {
          v14 = 0;
          v15 = v13;
          if ((atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v13 &= 0xFFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          v14 = 1;
          v15 = v13;
        }
      }

      else
      {
        v14 = 1;
        v15 = v11;
        v13 = v11;
      }

      v17 = a3[1];
      v16 = a3[2];
      if (v17 >= v16)
      {
        v25 = v15;
        v26 = v14;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v28[4] = a3;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(a3, v22);
        }

        v23 = 24 * v19;
        v28[0] = 0;
        v28[1] = v23;
        v28[3] = 0;
        *v23 = a1;
        *(v23 + 8) = v12;
        *(v23 + 16) = v13;
        v28[2] = 24 * v19 + 24;
        std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(a3, v28);
        v18 = a3[1];
        std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v28);
        v14 = v26;
        v15 = v25;
      }

      else
      {
        *v17 = a1;
        *(v17 + 8) = v12;
        v18 = v17 + 24;
        *(v17 + 16) = v13;
      }

      a3[1] = v18;
      if ((v14 & 1) == 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
}

void sub_247612E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **realityio::mtlx::MxDataSource::assignGamut(uint64_t a1, const void **a2, _BYTE *a3, unsigned int *a4)
{
  v7 = a4[2];
  (*(**a4 + 24))(&v10);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 272, &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (a1 + 280 != v8)
  {
    return realityio::assignGamutFromToken(a2, a3, (v8 + 40));
  }

  return result;
}

void sub_247612FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::MxDataSource::textureSettings(unsigned int *a1@<X1>, std::string *a2@<X2>, uint64_t a3@<X8>)
{
  v11[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(a3, "");
  *(a3 + 24) = 0;
  v6 = a1[2];
  v7 = (*(**a1 + 128))(v11);
  if ((v11[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v11[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
  }

  std::string::operator=(a3, EmptyString);
  if ((v11[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v11[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11[1] = 0;
  (*(**a1 + 104))(*a1, a1[2], a1 + 4, v11);
  v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v11);
  std::string::operator=(a2, v9);
  std::string::operator=(a2 + 1, v9 + 1);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v11);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_247613110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::MxDataSource::stripLeading(std::string *this, char *a2, std::string *__str)
{
  v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = v5;
  v7 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if ((v5 & 0x80u) == 0)
  {
    v9 = __str;
  }

  else
  {
    v9 = __str->__r_.__value_.__r.__words[0];
  }

  __s = v9;
  if ((v5 & 0x80u) != 0)
  {
    v5 = __str->__r_.__value_.__l.__size_;
  }

  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = a2[23];
  }

  else
  {
    v12 = *(a2 + 1);
  }

  if (v12)
  {
    if (v5 >= v12)
    {
      v13 = v9;
      v14 = (v9 + v5);
      v15 = *v11;
      do
      {
        v16 = v5 - v12;
        if (v16 == -1)
        {
          break;
        }

        v17 = memchr(v13, v15, v16 + 1);
        if (!v17)
        {
          break;
        }

        v18 = v17;
        if (!memcmp(v17, v11, v12))
        {
          if (v18 == v14 || v18 != __s)
          {
            break;
          }

          goto LABEL_27;
        }

        v13 = (&v18->__r_.__value_.__l.__data_ + 1);
        v5 = v14 - (&v18->__r_.__value_.__l.__data_ + 1);
      }

      while (v5 >= v12);
    }

    if (v6 < 0)
    {

      std::string::__init_copy_ctor_external(this, v7, size);
    }

    else
    {
      *&this->__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    }
  }

  else
  {
LABEL_27:
    std::string::basic_string(this, __str, v12, 0xFFFFFFFFFFFFFFFFLL, &v20);
  }
}

uint64_t realityio::mtlx::MxDataSource::mergeSourcePrimIndices(uint64_t result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, v6);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, v6 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v12);
      v10 = (*(*v7 + 8))(v7, &v8);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(a4, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
      v6 += 2;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_2476133AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a11);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a13);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 32));
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, a2[1]);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a2 + 5));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,BOOL>,0>(a1 + 28);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));
    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::NeoPrimType>,0>(a1 + 28);

    operator delete(a1);
  }
}

uint64_t realityio::replication::SetFieldOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v10))
  {
    v9 = 0;
    if (realityio::replication::read(a1, a2, &v9))
    {
      v17 = 0;
      if (realityio::replication::read(a1))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, &v10);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, &v11);
        v14 = v9;
        if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v14 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v12);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v13);
        v6 = v14;
        *(a3 + 8) = v14;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a3 + 16), v15);
        *(a3 + 32) = 1;
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
      }

      else
      {
        *a3 = 0;
        *(a3 + 32) = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v16);
    }

    else
    {
      *a3 = 0;
      *(a3 + 32) = 0;
    }

    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247613808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::replication::SetFieldOperation::Serialize(void *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);

  realityio::replication::write(a2, (a1 + 2));
}

uint64_t realityio::replication::SetFieldDictValueByKeyOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v12))
  {
    v11 = 0;
    if (realityio::replication::read(a1, a2, &v11))
    {
      v10 = 0;
      if (realityio::replication::read(a1, a2, &v10))
      {
        v20 = 0;
        if (realityio::replication::read(a1))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, &v12);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, &v13);
          v16 = v11;
          if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v16 &= 0xFFFFFFFFFFFFFFF8;
          }

          v17 = v10;
          if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v17 &= 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v18, v19);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v14);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v15);
          v6 = v16;
          *(a3 + 8) = v16;
          if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
          }

          v7 = v17;
          *(a3 + 16) = v17;
          if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *(a3 + 16) &= 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a3 + 24), v18);
          *(a3 + 40) = 1;
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v18);
          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
        }

        else
        {
          *a3 = 0;
          *(a3 + 40) = 0;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
      }

      else
      {
        *a3 = 0;
        *(a3 + 40) = 0;
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 40) = 0;
    }

    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 40) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247613BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::replication::SetFieldDictValueByKeyOperation::Serialize(void *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);
  realityio::replication::write(a2, a1 + 2);

  realityio::replication::write(a2, (a1 + 3));
}

uint64_t realityio::replication::SetTimeSampleOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v9) && (v8 = 0, realityio::replication::details::readBuffer<double,0>(a1, a2, &v8, 1uLL)))
  {
    v16 = 0;
    if (realityio::replication::read(a1))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, &v10);
      v13 = v8;
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v14, v15);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v12);
      *(a3 + 8) = v13;
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a3 + 16), v14);
      *(a3 + 32) = 1;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v14);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    }

    else
    {
      *a3 = 0;
      *(a3 + 32) = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247613E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::replication::SetTimeSampleOperation::Serialize(uint64_t a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  std::ostream::write();

  realityio::replication::write(a2, (a1 + 16));
}

uint64_t realityio::replication::CreateSpecOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v13) && (v12 = 0, realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfSpecType,0>(a1, a2, &v12, 1uLL)) && (v11 = 0, realityio::replication::details::readBuffer<BOOL,0>(a1)))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, &v13);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v14);
    v9 = v12;
    v10 = v11;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v8);
    *(a3 + 8) = v9;
    *(a3 + 12) = v10;
    *(a3 + 16) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_247614078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::CreateSpecOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  std::ostream::write();

  return std::ostream::write();
}

uint64_t realityio::replication::DeleteSpecOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v11) && (v10 = 0, realityio::replication::details::readBuffer<BOOL,0>(a1)))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, &v11);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v12);
    v9 = v10;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v8);
    *(a3 + 8) = v9;
    *(a3 + 12) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
}

void sub_2476141F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::DeleteSpecOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);

  return std::ostream::write();
}

uint64_t realityio::replication::MoveSpecOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v13))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    if (realityio::replication::read(a1, a2, &v11))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, &v13);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 8), &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 12), &v10);
      *(a3 + 16) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    }

    else
    {
      *a3 = 0;
      *(a3 + 16) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_2476143D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::MoveSpecOperation::Serialize(uint64_t a1, uint64_t a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 8));

  return realityio::replication::write(a2, v5);
}

uint64_t realityio::replication::PushChildOperation_TfToken::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v15))
  {
    v14 = 0;
    if (realityio::replication::read(a1, a2, &v14))
    {
      v13 = 0;
      if (realityio::replication::read(a1, a2, &v13))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v16);
        v11 = v14;
        if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        v12 = v13;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v12 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v10);
        v6 = v11;
        *(a3 + 8) = v11;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        v7 = v12;
        *(a3 + 16) = v12;
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 16) &= 0xFFFFFFFFFFFFFFF8;
        }

        *(a3 + 24) = 1;
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
}

void sub_24761467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a6 & 7) != 0)
  {
    atomic_fetch_add_explicit((a6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::PushChildOperation_TfToken::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);

  return realityio::replication::write(a2, a1 + 2);
}

uint64_t realityio::replication::PushChildOperation_SdfPath::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v16))
  {
    v15 = 0;
    if (realityio::replication::read(a1, a2, &v15))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      if (realityio::replication::read(a1, a2, &v13))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v17);
        v10 = v15;
        if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v10 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, &v13);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, &v14);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v8);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v9);
        v6 = v10;
        *(a3 + 8) = v10;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 16), &v11);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 20), &v12);
        *(a3 + 24) = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
}

void sub_247614948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::PushChildOperation_SdfPath::Serialize(void *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 2));

  return realityio::replication::write(a2, v5);
}

uint64_t realityio::replication::PopChildOperation_TfToken::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v15))
  {
    v14 = 0;
    if (realityio::replication::read(a1, a2, &v14))
    {
      v13 = 0;
      if (realityio::replication::read(a1, a2, &v13))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v16);
        v11 = v14;
        if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        v12 = v13;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v12 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v10);
        v6 = v11;
        *(a3 + 8) = v11;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        v7 = v12;
        *(a3 + 16) = v12;
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 16) &= 0xFFFFFFFFFFFFFFF8;
        }

        *(a3 + 24) = 1;
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
}

void sub_247614C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a6 & 7) != 0)
  {
    atomic_fetch_add_explicit((a6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void realityio::replication::SetFieldOperation::~SetFieldOperation(realityio::replication::SetFieldOperation *this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 16));
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::replication::SetFieldDictValueByKeyOperation::~SetFieldDictValueByKeyOperation(realityio::replication::SetFieldDictValueByKeyOperation *this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 24));
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::replication::SetTimeSampleOperation::~SetTimeSampleOperation(realityio::replication::SetTimeSampleOperation *this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfSpecType,0>(realityio *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    v4 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v6 = "Read size overflowed";
    v7 = &v11;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    return 0;
  }

  v9 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v4 = *(realityio::logObjects(v9) + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v6 = "Failed to read";
    v7 = &v10;
    goto LABEL_7;
  }

  return 1;
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::shared_ptr<Exec::ExecAction>>::~pair(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void realityio::ImportSessionV2::getAction(realityio::ImportSessionV2 *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X3>, void *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(this + 166);
  if (!v7)
  {
    goto LABEL_27;
  }

  v9 = (this + 1328);
  v10 = (this + 1328);
  do
  {
    v11 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](this + 1320, v7 + 4, a2);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    if (!v11)
    {
      v10 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v10 == v9 || (std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](this + 1320, a2, v10 + 4) & 1) != 0)
  {
LABEL_27:
    if ((atomic_load_explicit(&_MergedGlobals_30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_30))
    {
      qword_27EE53200 = 0;
      qword_27EE531F8 = 0;
      qword_27EE531F0 = &qword_27EE531F8;
      __cxa_guard_release(&_MergedGlobals_30);
    }

    if (!std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__count_unique<pxrInternal__aapl__pxrReserved__::TfToken>(&qword_27EE531F0, a2))
    {
      v13 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&qword_27EE531F0, a2);
      v14 = *(realityio::logObjects(v13) + 24);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v17)
        {
          v18 = (v17 + 16);
          if (*(v17 + 39) < 0)
          {
            v18 = *v18;
          }
        }

        else
        {
          v18 = "";
        }

        v19 = 136315138;
        v20 = v18;
        _os_log_error_impl(&dword_247485000, v14, OS_LOG_TYPE_ERROR, "Un-handled rule %s\n", &v19, 0xCu);
      }
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v16 = v10[6];
    *a3 = v10[5];
    a3[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void realityio::ImportSessionV2::ImportSessionV2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v9[113] = *MEMORY[0x277D85DE8];
  v9[0] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v9);
  realityio::ImportSessionImpl::ImportSessionImpl(a1, v9, a3, a4, a5);
}

void sub_247617118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, pxrInternal__aapl__pxrReserved__::TfWeakBase *a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, atomic_uint *a17, atomic_uint *a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a17);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a18);
  while (v28 != &a26)
  {
    v28 -= 24;
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::shared_ptr<Exec::ExecAction>>::~pair(v28);
  }

  std::recursive_mutex::~recursive_mutex((v27 + 1520));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v27 + 1488);
  v30 = *(v27 + 1352);
  if (v30)
  {
    if (atomic_fetch_add_explicit(v30 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v30 + 8))(v30);
    }
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*a9);
  TgECS::~TgECS((v27 + 816));
  Exec::~Exec((v27 + 432));
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((v27 + 424));
  std::unique_ptr<realityio::ExecContext>::reset[abi:ne200100]((v27 + 416), 0);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase(a10, v31);
  realityio::ImportSessionImpl::~ImportSessionImpl(v27);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::setRootEntity(std::chrono::steady_clock::time_point *this)
{
  v15 = *MEMORY[0x277D85DE8];
  this[184].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v12 = 0;
  if (this[52].__d_.__rep_ && this[5].__d_.__rep_)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    rep = this[52].__d_.__rep_;
    v3 = this[5].__d_.__rep_;
    v4 = *(v3 + 472);
    rep[25] = *(v3 + 40);
    rep[26] = v4;
    rep[27] = v3;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((rep + 28), buf);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(rep + 228, &buf[4]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  }

  TgECS::eval(&this[102], &v9);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(buf, &v11);
    v12 = v10;
    if ((~v10 & 3) != 0)
    {
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(&v9, &v11);
    }

    else
    {
      v11 = v9;
    }

    v10 = 0;
    if (v14)
    {
      (*(v14 + 32))(buf);
    }
  }

  else
  {
    v12 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v9);
  v5 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(&v11);
  if (v5)
  {
    *buf = 0;
    v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REEntity *>>(&v11);
    realityio::WrappedRERef<REAsset *>::operator=(&this[53].__d_.__rep_, v6);
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(buf);
  }

  else
  {
    v7 = *realityio::logObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Update did not produce a root entity", buf, 2u);
    }
  }

  realityio::RioTimer::stop(this + 181);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v11);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_24761764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ImportSessionV2::changeNoticeCB(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *this)
{
  ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(this);
  v5 = ResyncedPaths + 1;
  v6 = *ResyncedPaths;
  if (*ResyncedPaths != ResyncedPaths + 1)
  {
    do
    {
      Exec::setHierarchyDirty((a1 + 432), (v6 + 4), 1);
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v5);
  }

  ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(this);
  v11 = ChangedInfoOnlyPaths + 1;
  v12 = *ChangedInfoOnlyPaths;
  if (*ChangedInfoOnlyPaths != ChangedInfoOnlyPaths + 1)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v12 + 4)))
      {
        Exec::setDirty((a1 + 432), (v12 + 4), 1);
      }

      else
      {
        Exec::setPropertiesDirty((a1 + 432), (v12 + 4), 1);
        if (v12[4] == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v13))
        {
          v14 = atomic_load(&realityio::tokens::StageTokens);
          if (!v14)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::StageTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::StageTokens_StaticTokenType>>::_TryToCreateData();
          }

          v15 = *v14 & 0xFFFFFFFFFFFFFFF8;
          if (v15)
          {
            v16 = (v15 + 16);
            if (*(v15 + 39) < 0)
            {
              v16 = *v16;
            }
          }

          else
          {
            v16 = "";
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v16);
          MEMORY[0x24C1A5D70](v21, __p);
          Exec::setPropertiesDirty((a1 + 432), v21, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != v11);
  }
}

void sub_247617858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::~ImportSessionV2(realityio::ImportSessionV2 *this)
{
  *this = &unk_285954780;
  *(this + 50) = &unk_285954800;
  std::recursive_mutex::~recursive_mutex((this + 1520));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 1488);
  v2 = *(this + 169);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*(this + 166));
  TgECS::~TgECS((this + 816));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,realityio::SdfPathHashCompare,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,realityio::SdfPathHashCompare,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>>>::~__hash_table(this + 672);
  pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::~SdfPathTable(this + 632);
  v3 = *(this + 75);
  if (v3)
  {
    *(this + 76) = v3;
    operator delete(v3);
  }

  realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(this + 496);
  std::mutex::~mutex((this + 432));
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 53);
  std::unique_ptr<realityio::ExecContext>::reset[abi:ne200100](this + 52, 0);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase((this + 408), v4);

  realityio::ImportSessionImpl::~ImportSessionImpl(this);
}

{
  realityio::ImportSessionV2::~ImportSessionV2(this);

  JUMPOUT(0x24C1A91B0);
}

void non-virtual thunk torealityio::ImportSessionV2::~ImportSessionV2(realityio::ImportSessionV2 *this)
{
  realityio::ImportSessionV2::~ImportSessionV2((this - 400));
}

{
  realityio::ImportSessionV2::~ImportSessionV2((this - 400));

  JUMPOUT(0x24C1A91B0);
}

void realityio::ImportSessionV2::updateLiveScene(realityio::ImportSessionV2 *this)
{
  *(this + 920) = *(this + 272);
  *(this + 174) = std::chrono::steady_clock::now();
  *(this + 179) = std::chrono::steady_clock::now();
  v6[0] = *(*(this + 1) + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v6);
  v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v6);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetUsedLayers(v2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v6);
  realityio::MultipleLayerMutex::MultipleLayerMutex<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>>(v6, v7[0], v7[1]);
  realityio::MultipleLayerMutex::lock(v6);
  if (*(this + 1360) == 1)
  {
    v3 = atomic_load(off_278EA82B0);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::TraceCollector::Clear(v3);
    v4 = atomic_load(off_278EA82B0);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v4);
  }

  TgECS::update((this + 816));
  realityio::RioTimer::stop(this + 176);
  std::chrono::steady_clock::now();
  realityio::ImportSessionV2::setRootEntity(this);
  realityio::RioTimer::stop(this + 171);
  realityio::MultipleLayerMutex::unlock(v6);
  std::recursive_mutex::lock((this + 1520));
  v5 = *(this + 189);
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  std::recursive_mutex::unlock((this + 1520));
  v8 = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v6[0] = v7;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](v6);
}

void sub_247617B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  std::recursive_mutex::unlock((v13 + 1520));
  *(v14 - 24) = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  a10 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::setRootEntity(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  *(a1 + 920) = *(a1 + 272);
  v6[0] = a2;
  if (a2)
  {
    RERetain();
  }

  v4 = *(a1 + 424);
  if (v4 != a2)
  {
    *(a1 + 424) = a2;
    v6[0] = v4;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v6);
  v5 = a2;
  if (a2)
  {
    RERetain();
  }

  v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REEntity *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>::_PlaceCopy();
}

void sub_247617D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

atomic_uint **realityio::ImportSessionV2::setStage(uint64_t a1, atomic_uint **a2)
{
  v5 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v5);
  v3 = *(a1 + 904);
  *(a1 + 904) = v5;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v5);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(a1 + 904, v3);
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v5);
}

void sub_247617E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionV2::getEntityAtPrimPath(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(&realityio::tokens::EcsTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v8, a2, (v3 + 152));
  Exec::getValue((a1 + 432), &v8, &v9);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(&v9))
  {
    if ((v10 & 4) != 0)
    {
      v4 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v9);
    }

    else
    {
      v4 = v9;
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_247617F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSessionV2::dumpDiagnostics(void *a1, const void **a2)
{
  v7 = *(a1[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v7);
  v4 = a1[2];
  (*(*a1 + 16))(a1);
  v5 = realityio::internal::dumpDiagnostics(a2, &v7);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v7);
  return v5;
}

void sub_24761803C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionV2::dumpDependencies(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "w");
  if (v4)
  {
    v5 = v4;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
    Exec::dumpDotfile((a1 + 432), &v12);
    std::stringbuf::str();
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    fprintf(v5, "\n%s\n", p_p);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    v11[0] = *MEMORY[0x277D82818];
    v7 = *(MEMORY[0x277D82818] + 72);
    *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v12 = v7;
    v13 = MEMORY[0x277D82878] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    MEMORY[0x24C1A9110](&v16);
    fclose(v5);
  }

  return 1;
}

void sub_247618240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](&a30);
  _Unwind_Resume(a1);
}

void timerStat(uint64_t a1, const void **a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 6);
  if (v18 < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, ":total");
  v8 = ((((std::chrono::steady_clock::now().__d_.__rep_ - *(a3 + 24)) / 1000) / 1000.0) / 1000.0);
  v20 = &unk_285946DC3;
  v19 = v8;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = __p;
  std::string::basic_string[abi:ne200100](__p, v9 + 6);
  if (v18 < 0)
  {
    v10 = __p[0];
  }

  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, ":count");
  v19 = *(a3 + 16);
  v20 = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = __p;
  std::string::basic_string[abi:ne200100](__p, v12 + 4);
  if (v18 < 0)
  {
    v13 = __p[0];
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, ":avg");
  v15 = ((((std::chrono::steady_clock::now().__d_.__rep_ - *(a3 + 24)) / 1000) / 1000.0) / 1000.0) / *(a3 + 16);
  v20 = &unk_285946DC3;
  v19 = v15;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_247618570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(uint64_t *a1)
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

uint64_t realityio::ImportSessionV2::gatherFaultRecords(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::__value_func[abi:ne200100](v5, a2);
  Exec::gatherFaultRecords(a1 + 432, v5);
  result = std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476186B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::setSceneUpdatePassCompletion(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 1520));
  std::function<void ()(void)>::operator=((a1 + 1488), a2);

  std::recursive_mutex::unlock((a1 + 1520));
}

void realityio::ImportSessionV2::gatherStatistics(realityio::ImportSessionV2 *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "time:update");
  timerStat(a2, &__p, this + 1368);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "time:targetGeneration");
  timerStat(a2, &__p, this + 1408);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "time:evaluation");
  timerStat(a2, &__p, this + 1448);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  Exec::getUnreachableTargets((this + 432), (this + 912), &__p);
  std::string::basic_string[abi:ne200100]<0>(v16, "graph:unreachableTargets");
  v15[0] = v20;
  v15[1] = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&__p, v19);
  Exec::getStatistics((this + 432), a2);
  v4 = atomic_load(off_278EA82B0);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  v5 = pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v4);
  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v5);
  v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  MEMORY[0x24C1A5020](v6);
  v7 = v19;
  if (v19 && atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v7 = (*(*v7 + 8))(v7);
  }

  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v7);
  v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  Counters = pxrInternal__aapl__pxrReserved__::TraceReporter::GetCounters(v8);
  v10 = v19;
  if (v19 && atomic_fetch_add_explicit(v19 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v10 = (*(*v10 + 8))(v10);
  }

  for (i = *(Counters + 16); i; i = *i)
  {
    v12 = i[2];
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = i[3];
    if ((v12 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
    }

    v19 = &unk_285946DC3;
    __p = v13;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "importSessionVersion");
  v16[0] = 0x4000000000000000;
  v16[1] = &unk_285946DC3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v16);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_247618A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a12);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,realityio::SdfPathHashCompare,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,realityio::SdfPathHashCompare,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v2 + 7));
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::~SdfPathTable(uint64_t a1)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    do
    {
      v7 = *a1;
      v8 = *(*a1 + 8 * v5);
      if (v8)
      {
        do
        {
          v9 = *(v8 + 24);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v8 + 8));
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v10 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v8);
          MEMORY[0x24C1A91B0](v10, 0x1060C407FF37761);
          v8 = v9;
        }

        while (v9);
        v7 = *a1;
      }

      v7[v5++] = 0;
    }

    while (v5 != v6);
    v2 = *a1;
  }

  *(a1 + 24) = 0;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 32));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(*(a1 + 8));
  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(a1[1]);
    v2 = a1[9];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = a1[7];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

void TgECS::~TgECS(TgECS *this)
{
  *this = &unk_28595E5D0;
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 480, *(this + 61));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 456, *(this + 58));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::~__hash_table(this + 408);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 384, *(this + 49));
  pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::~SdfPathTable(this + 43);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 320, *(this + 41));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 296, *(this + 38));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 272, *(this + 35));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 200, *(this + 26));
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex((this + 120));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 108);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 96);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 11);
  *this = &unk_285955738;
  std::mutex::~mutex((this + 24));
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v6 = (v2 + 48);
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 = *(v2 + 5);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 32));
      v5 = *(v2 + 3);
      if (v5)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::~SdfPathTable(uint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::clear(uint64_t *result)
{
  v1 = result;
  v2 = result[1] - *result;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *v1;
      v6 = *(*v1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v6);
          result = MEMORY[0x24C1A91B0](v8, 0x1020C4084A03ABELL);
          v6 = v7;
        }

        while (v7);
        v5 = *v1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  v1[3] = 0;
  return result;
}

void Exec::~Exec(std::mutex *this)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,realityio::SdfPathHashCompare,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,realityio::SdfPathHashCompare,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>>>::~__hash_table(&this[3].__m_.__opaque[40]);
  pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::~SdfPathTable(this[3].__m_.__opaque);
  v2 = *&this[2].__m_.__opaque[32];
  if (v2)
  {
    *&this[2].__m_.__opaque[40] = v2;
    operator delete(v2);
  }

  realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(&this[1]);

  std::mutex::~mutex(this);
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_0,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_0>,void ()(std::function<void ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954880;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_0,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_0>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (v3)
  {

    return realityio::LiveSceneManager::performBlockSyncOnEngineQueue(v3, a2);
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = *(*v5 + 48);

    return v6();
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_0,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_0>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_1,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_1>,void ()(std::function<void ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954910;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_1,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_1>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  realityio::ImportSessionImpl::performBlockLaterOnEngineQueue(v2, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476193B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_1,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_1>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::ImportSessionImpl::performBlockLaterOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a2);
    realityio::LiveSceneManager::performBlockLaterOnEngineQueue(v2, v8);
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

void sub_2476194F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_2,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_2>,void ()(std::function<void ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954990;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_2,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_2>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, a2);
  realityio::ImportSessionImpl::performBlockPostAssetLoadOnEngineQueue(v2, v5);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247619618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_2,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_2>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_3,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_3>,void ()(realityio::WrappedRERef<REEntity *> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954A10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_3,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_3>,void ()(realityio::WrappedRERef<REEntity *> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_4,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_4>,void ()(realityio::WrappedRERef<REAsset *> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_4,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_4>,void ()(realityio::WrappedRERef<REAsset *> const&)>::operator()(uint64_t a1)
{
  result = *(*(a1 + 8) + 40);
  if (result)
  {
    realityio::LiveSceneManager::queueForDeferredAssetLoad();
  }

  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_4,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_4>,void ()(realityio::WrappedRERef<REAsset *> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_5,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_5>,void ()(std::shared_ptr<realityio::AssetLoadTracker::Asset> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954B30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_5,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_5>,void ()(std::shared_ptr<realityio::AssetLoadTracker::Asset> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **std::unique_ptr<realityio::ExecContext>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 28));
    v3 = v2[23];
    if (v3 == v2 + 20)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = v2[19];
    if (v4 == v2 + 16)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = v2[15];
    if (v5 == v2 + 12)
    {
      (*(*v5 + 32))(v5);
    }

    else if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100]((v2 + 8));
    std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100]((v2 + 4));
    std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](v2);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__shared_ptr_emplace<realityio::AnchoringComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954BC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnimationComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954C10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnimationLibraryAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954C60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnimationLibraryComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954CB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::BlendShapeWeightsDefinitionAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954D00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::BlendShapeWeightsComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CapsuleAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CapsuleMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::ConeAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::ConeMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CubeAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CubeMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954F30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CylinderAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CylinderMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::EntityAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::EntitySyncAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::GetFromUsdAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859550C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MapFromGroupsAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MaterialAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859551B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshDeformationComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859552A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::RenderOptionsComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859552F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::RigComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SampleAnimationFromUsdAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationTimelineAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859553E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalPoseAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalPoseComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalPoseDefinitionAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859554D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SphereAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SphereMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TextureAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859555C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformAnimationTimelineAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*(a1 + 16));
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = a1[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

__n128 pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::_DelivererWithSender(uint64_t a1, void *a2, __n128 *a3, void *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *a1 = &unk_2859556B0;
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

void pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::~_DelivererWithSender(pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase *this)
{
  *this = &unk_2859556B0;
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
  *this = &unk_2859556B0;
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

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::_SendToListenerImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
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
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::ImportSessionV2>::operator->(v13);
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

void sub_24761B1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType(uint64_t a1, const std::type_info *a2)
{
  v2 = MEMORY[0x277D86688];
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D86688], a2);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v14);
  if (v14[0] == v3)
  {
    v14[0] = "tf/notice.h";
    v14[1] = "GetNoticeType";
    v14[2] = 614;
    v14[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (realityio::ImportSessionV2::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (realityio::ImportSessionV2::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>]";
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

void sub_24761B310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::Delivers(uint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetSenderWeakBase(uint64_t a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::ImportSessionV2>::operator->(uint64_t *a1)
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

void *pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register((a2 + 16), &v6);
    v3 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v3 + 8))(v3);
      }

      v4 = v6;
      if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  return a1;
}

void sub_24761B654(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *realityio::MultipleLayerMutex::MultipleLayerMutex<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::reserve(a1, (a3 - a2) >> 4);
  for (; v4 != a3; v4 += 16)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::push_back[abi:ne200100](a1, v4);
  }

  v6 = a1[1];
  v7 = 126 - 2 * __clz((v6 - *a1) >> 4);
  if (v6 == *a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,false>(*a1, v6, v10, v8, 1);
  return a1;
}

void sub_24761B73C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    result = (v3 + 2);
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>(a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *v8 = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1u, memory_order_relaxed);
  }

  *&v18 = v8 + 1;
  v10 = a1[1];
  v11 = (v8 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(&v16);
  return v15;
}

void sub_24761B8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **realityio::UsdMetadataDelta::description@<X0>(realityio::UsdMetadataDelta *this@<X0>, CFStringRef *a2@<X8>)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = Mutable;
  for (i = *(this + 3); i; i = *i)
  {
    if ((i[2] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (i[2] & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Mutable);
    }

    if (*(EmptyString + 23) >= 0)
    {
      v9 = EmptyString;
    }

    else
    {
      v9 = *EmptyString;
    }

    v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
    CFArrayAppendValue(v6, v10);
    CFRelease(v10);
  }

  v11 = realityio::joinAsCFStringRef(v6, ", ", v5);
  CFRelease(v6);
  *a2 = 0;
  *a2 = CFStringCreateWithFormat(0, 0, @"<UsdMetadataDelta: %p { metadata: (%lu) [ %@ ] }>", this, *(this + 4), v11, v11);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&cf);
}

void sub_24761BA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v4);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void realityio::UsdMetadataDelta::~UsdMetadataDelta(realityio::UsdMetadataDelta *this)
{
  *this = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 8);
}

{
  *this = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 8);

  JUMPOUT(0x24C1A91B0);
}

void stripInputsPrefixString(std::string *a1, const std::string *a2)
{
  v2 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v4 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if (v2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = a2->__r_.__value_.__l.__size_;
  }

  v7 = 7;
  if (v6 < 7)
  {
    v7 = v6;
  }

  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = (v5 + v7);
  v9 = v5;
  v10 = v8;
  do
  {
    if (v9->__r_.__value_.__s.__data_[0] == 105)
    {
      v11 = 1u;
      while (v11 != 7)
      {
        if ((v9 + v11) == v8)
        {
          goto LABEL_20;
        }

        v12 = v9->__r_.__value_.__s.__data_[v11];
        v13 = aInputs_0[v11++];
        if (v12 != v13)
        {
          goto LABEL_12;
        }
      }

      v10 = v9;
    }

LABEL_12:
    v9 = (v9 + 1);
  }

  while (v9 != v8);
LABEL_20:
  if (v10 != v8 && v10 == v5)
  {
    std::string::basic_string(a1, a2, 7uLL, 0xFFFFFFFFFFFFFFFFLL, &v15);
  }

  else
  {
LABEL_23:
    if (v2 < 0)
    {
      v14 = a2->__r_.__value_.__r.__words[0];

      std::string::__init_copy_ctor_external(a1, v14, size);
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
      a1->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    }
  }
}

void realityio::MaterialAssetAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v214 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v210, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&__p);
  MEMORY[0x24C1A5DE0](__str, "standardConstColorMaterial");
  v10 = *NameToken;
  v11 = __str[0];
  if ((__str[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  if ((v11 ^ v10) <= 7)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      if (*(v12 + 192))
      {
        __str[0] = 0;
        v177.__r_.__value_.__r.__words[0] = 0;
        v195 = 0;
        v194 = 0;
        realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v195, &v194);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v194);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v195);
        a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy();
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
  v13 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&__p);
  MEMORY[0x24C1A5DE0](__str, "__materialAssetWithMeshVertexColors");
  v14 = *v13;
  v15 = __str[0];
  if ((__str[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  if ((v15 ^ v14) <= 7)
  {
    v177.__r_.__value_.__r.__words[0] = REAssetManagerCreateAssetHandle();
    realityio::ECSAction::queueForDeferredAssetLoad(a1, &v177);
    v186 = 0;
    v16 = *a4;
    if (a4[1] == *a4)
    {
      __asm { FMOV            V0.2S, #1.0 }

      v163 = _D0;
      v162 = 1.0;
LABEL_127:
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v182, a2);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v182);
      v62 = REMaterialAssetBuilderCreate();
      __str[0] = v62;
      if (v62)
      {
        REMaterialAssetBuilderSetMaterialDefinition();
        *&v63 = v163;
        *(&v63 + 1) = __PAIR64__(1.0, LODWORD(v162));
        *__p.__x_ = v63;
        LOBYTE(v180) = 0;
        realityio::assignGamutFromToken(&__p, &v180, &v186);
        REMaterialAssetBuilderSetColor4F();
        v62 = REAssetManagerMaterialAssetBuilderBuild();
      }

      v184.__r_.__value_.__r.__words[0] = v62;
      realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(__str);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v182);
      realityio::ECSAction::queueForDeferredAssetLoad(a1, &v184);
      __str[0] = 0;
      v193 = v184.__r_.__value_.__r.__words[0];
      if (v184.__r_.__value_.__r.__words[0])
      {
        RERetain();
        v192 = __str[0];
        if (__str[0])
        {
          RERetain();
        }
      }

      else
      {
        v192 = 0;
      }

      realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v193, &v192);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v192);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v193);
      a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy();
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v163 = _D0;
    v162 = 1.0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__str, (*a5 + v17));
      v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v16 + v18));
      MEMORY[0x24C1A5DE0](&__p, "primvars:displayColor");
      v26 = *__p.__x_;
      if ((*__p.__x_ ^ *v25) > 7)
      {
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_33;
      }

      if (!__str[1])
      {
        goto LABEL_19;
      }

      if (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 16) != 21)
      {
        break;
      }

      IsImpl = 1;
LABEL_21:
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (IsImpl)
      {
        if ((__str[1] & 4) != 0)
        {
          v28 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
        }

        else
        {
          v28 = __str[0];
        }

        v29 = *&v28->__r_.__value_.__r.__words[2];
        *__p.__x_ = *&v28->__r_.__value_.__l.__data_;
        *&__p.__x_[4] = v29;
        size = v28[1].__r_.__value_.__l.__size_;
        *&__p.__x_[8] = size;
        if (size)
        {
          v31 = (size - 16);
          if (*&__p.__x_[6])
          {
            v31 = *&__p.__x_[6];
          }

          atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
        }

        if (*__p.__x_ == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&__p);
          v163 = **&__p.__x_[8];
          v162 = *(*&__p.__x_[8] + 8);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&__p);
      }

LABEL_33:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__str);
      ++v19;
      v16 = *a4;
      v18 += 8;
      v17 += 16;
      if (v19 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_127;
      }
    }

    if ((__str[1] & 4) != 0)
    {
      v26 = *__p.__x_;
      goto LABEL_21;
    }

LABEL_19:
    IsImpl = 0;
    goto LABEL_21;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(__str, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/__builtin/standardNoMaterial");
  MEMORY[0x24C1A5D70](&v177, &__p);
  v32 = __str[0];
  v33 = v177.__r_.__value_.__r.__words[0];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v177);
  if (SHIBYTE(__p.__x_[5]) < 0)
  {
    operator delete(*__p.__x_);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__str);
  if (v32 == v33)
  {
    v34 = *(a1 + 16);
    if (v34)
    {
      v35 = *(v34 + 192);
      if (v35)
      {
        __str[0] = 0;
        v191 = *(*(v35 + 16) + 248);
        if (v191)
        {
          RERetain();
        }

        v190 = 0;
        realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v191, &v190);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v190);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v191);
        a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy();
      }
    }

    __str[0] = REAssetManagerCreateAssetHandle();
    realityio::ECSAction::queueForDeferredAssetLoad(a1, __str);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v186, a2);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v186);
    v64 = REMaterialAssetBuilderCreate();
    *__p.__x_ = v64;
    if (v64)
    {
      REMaterialAssetBuilderSetMaterialDefinition();
      v64 = REAssetManagerMaterialAssetBuilderBuild();
    }

    v177.__r_.__value_.__r.__words[0] = v64;
    realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&__p);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v186);
    realityio::ECSAction::queueForDeferredAssetLoad(a1, &v177);
    v186 = 0;
    v189 = v177.__r_.__value_.__r.__words[0];
    if (v177.__r_.__value_.__r.__words[0])
    {
      RERetain();
      v188 = v186;
      if (v186)
      {
        RERetain();
      }
    }

    else
    {
      v188 = 0;
    }

    realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v189, &v188);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v188);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v189);
    a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy();
  }

  v187[0] = 0;
  v187[1] = 0;
  v185 = 0;
  v186 = v187;
  std::string::basic_string[abi:ne200100]<0>(&v184, "st");
  v183[0] = 0;
  v183[1] = 0;
  v181[1] = 0;
  v182 = v183;
  v180 = v181;
  v181[0] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v36 = *a4;
  if (a4[1] != *a4)
  {
    v37 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__str, (*a5 + 16 * v37));
      v38 = (v36 + 8 * v37);
      v39 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v38);
      MEMORY[0x24C1A5DE0](&__p, "info:id");
      if ((*__p.__x_ ^ *v39) > 7)
      {
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v40 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(__str);
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v40)
        {
          if ((__str[1] & 4) != 0)
          {
            v41 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
          }

          else
          {
            v41 = __str;
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v185, v41);
          goto LABEL_114;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(__str))
      {
        if ((__str[1] & 4) != 0)
        {
          v42 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
        }

        else
        {
          v42 = __str[0];
        }

        if (&v186 != v42)
        {
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>(&v186, *v42, v42 + 1);
        }

        v43 = v186;
        if (v186 != v187)
        {
          do
          {
            v177.__r_.__value_.__r.__words[0] = 0;
            LODWORD(v174.__r_.__value_.__l.__data_) = 0;
            v164.__r_.__value_.__s.__data_[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            if (v175[0])
            {
              pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v177, v43 + 4);
              std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&__p, v43 + 4, v208);
              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>(&v180, &__p);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p.__x_[2]);
              if ((__p.__x_[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v44 = v43[4];
              *__p.__x_ = v44;
              if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *__p.__x_ &= 0xFFFFFFFFFFFFFFF8;
              }

              *&__p.__x_[2] = v175[0];
              if (v175[0])
              {
                RERetain();
              }

              v45 = v183[0];
              if (!v183[0])
              {
                goto LABEL_78;
              }

              v46 = v183;
              while (1)
              {
                while (1)
                {
                  v47 = v45;
                  if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v182, &__p, v45 + 4))
                  {
                    break;
                  }

                  v45 = *v47;
                  v46 = v47;
                  if (!*v47)
                  {
                    goto LABEL_78;
                  }
                }

                if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v182, v47 + 4, &__p))
                {
                  break;
                }

                v46 = v47 + 1;
                v45 = v47[1];
                if (!v45)
                {
                  goto LABEL_78;
                }
              }

              if (!*v46)
              {
LABEL_78:
                operator new();
              }

              realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p.__x_[2]);
              if ((__p.__x_[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            realityio::WrappedRERef<REAsset *>::~WrappedRERef(v175);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v208);
            if ((v177.__r_.__value_.__s.__data_[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v177.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v48 = v43[1];
            if (v48)
            {
              do
              {
                v49 = v48;
                v48 = *v48;
              }

              while (v48);
            }

            else
            {
              do
              {
                v49 = v43[2];
                _ZF = *v49 == v43;
                v43 = v49;
              }

              while (!_ZF);
            }

            v43 = v49;
          }

          while (v49 != v187);
        }

        goto LABEL_114;
      }

      v50 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v38);
      MEMORY[0x24C1A5DE0](&__p, "__defaultUV");
      v51 = *__p.__x_;
      if ((*__p.__x_ ^ *v50) > 7)
      {
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_105:
        v54 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v38);
        MEMORY[0x24C1A5DE0](&__p, "__shaderPrimPath");
        if ((*__p.__x_ ^ *v54) > 7)
        {
          if ((__p.__x_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v55 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfPath>(__str);
          if ((__p.__x_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v55)
          {
            if ((__str[1] & 4) != 0)
            {
              v56 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
            }

            else
            {
              v56 = __str;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v178, v56);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v179, v56 + 1);
          }
        }

        goto LABEL_114;
      }

      if (!__str[1])
      {
        goto LABEL_97;
      }

      if (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 16) != 12)
      {
        break;
      }

      v52 = 1;
LABEL_99:
      if ((v51 & 7) != 0)
      {
        atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v52)
      {
        goto LABEL_105;
      }

      if ((__str[1] & 4) != 0)
      {
        v53 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
      }

      else
      {
        v53 = __str[0];
      }

      std::string::operator=(&v184, v53);
LABEL_114:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__str);
      ++v37;
      v36 = *a4;
      if (v37 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_120;
      }
    }

    if ((__str[1] & 4) != 0)
    {
      v51 = *__p.__x_;
      goto LABEL_99;
    }

LABEL_97:
    v52 = 0;
    goto LABEL_99;
  }

LABEL_120:
  v57 = a2;
  v58 = *(a1 + 16);
  if (v58 && *(v58 + 200))
  {
    MEMORY[0x24C1A5DE0](&__p, "UsdPreviewSurface");
    if ((__p.__x_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(__str, a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "/__root");
    v59 = MEMORY[0x24C1A5D70](&v177, &__p);
    if (__str[0] == v177.__r_.__value_.__l.__data_)
    {
      v60 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v59);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v164, v60);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v164.__r_.__value_.__r.__words + 1, v60 + 1);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v164, a2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v177);
    if (SHIBYTE(__p.__x_[5]) < 0)
    {
      operator delete(*__p.__x_);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__str);
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v173, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&__p);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, *Name, *(Name + 8));
  }

  else
  {
    v66 = *Name;
    v177.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v177.__r_.__value_.__l.__data_ = v66;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  MEMORY[0x24C1A5DE0](&__p, "inputs:opacityThreshold");
  v67 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(&v186, &__p);
  v68 = v67;
  if (v187 != v67 && (v69 = (v67 + 5), pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v67 + 5))) && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v68 + 5)))
  {
    v70 = v68[6];
    if ((v70 & 4) != 0)
    {
      v69 = (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(v68 + 5);
    }

    v71 = *v69 > 0.0;
  }

  else
  {
    v71 = 0;
  }

  if ((__p.__x_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!v71)
  {
    MEMORY[0x24C1A5DE0](&__p, "inputs:diffuseColor");
    MEMORY[0x24C1A5DE0](__str, "inputs:opacity");
    LODWORD(v169) = 1065353216;
    LOBYTE(v168) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    LOBYTE(v207) = 0;
    if (v175[0] == v174.__r_.__value_.__l.__data_)
    {
      MEMORY[0x24C1A5DE0](&v164, "outputs:a");
      if ((v164.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v164.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v174);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v175);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v208);
    if ((__str[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((__p.__x_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v172 = 0;
  AssetHandle = REAssetManagerCreateAssetHandle();
  *__p.__x_ = AssetHandle;
  v73 = v172;
  if (v172 != AssetHandle)
  {
    v172 = AssetHandle;
    *__p.__x_ = v73;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  if (v172)
  {
    realityio::ECSAction::queueForDeferredAssetLoad(a1, &v172);
    v171 = REMaterialAssetBuilderCreate();
    if (v171)
    {
      REMaterialAssetBuilderSetName();
      REMaterialAssetBuilderSetMaterialDefinition();
      v74 = v171;
      v75 = *a4;
      if (a4[1] != *a4)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath((v75 + v76)))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v208, (v75 + v76));
            std::string::basic_string[abi:ne200100]<0>(&__p, "/__stage.layerData");
            MEMORY[0x24C1A5D70](v175, &__p);
            if (v208[0] == v175[0])
            {
              TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v75 + v76));
              std::string::basic_string[abi:ne200100]<0>(__str, "/customLayerData");
              MEMORY[0x24C1A5D70](&v174, __str);
              HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(TargetPath, &v174);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v174);
              if (SHIBYTE(v212[0]) < 0)
              {
                operator delete(__str[0]);
              }
            }

            else
            {
              HasPrefix = 0;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v175);
            if (SHIBYTE(__p.__x_[5]) < 0)
            {
              operator delete(*__p.__x_);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v208);
            if (HasPrefix)
            {
              v81 = (*a5 + v77);
              v82 = *(v81 + 1);
              if (v82)
              {
                if (!*((v82 & 0xFFFFFFFFFFFFFFF8) + 16) || (v82 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v81, MEMORY[0x277D82798]))
                {
                  v83 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((*a4 + v76));
                  v84 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v83);
                  if (*(v84 + 23) < 0)
                  {
                    v85 = *v84;
                  }

                  v86 = *a5 + v77;
                  v87 = *(v86 + 8);
                  if ((v87 & 4) != 0)
                  {
                    v86 = (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))();
                  }

                  *v86;
                  REMaterialAssetBuilderSetFunctionConstant();
                }
              }
            }
          }

          ++v78;
          v75 = *a4;
          v77 += 16;
          v76 += 8;
        }

        while (v78 < (a4[1] - *a4) >> 3);
        v74 = v171;
        v57 = a2;
      }

      MEMORY[0x24C1A5DE0](&__p, "inputs:opacity");
      LODWORD(__str[0]) = 1065353216;
      if ((__p.__x_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](v208, "inputs:diffuseColor");
      __str[0] = vdup_n_s32(0x3E3851ECu);
      LODWORD(__str[1]) = 1043878380;
      if ((v208[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v208[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](v175, "inputs:realitykit:tint");
      __asm { FMOV            V0.2S, #1.0 }

      v208[0] = _D0;
      LODWORD(v208[1]) = 1065353216;
      if ((v175[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v175[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      LODWORD(v200) = 1065353216;
      MEMORY[0x24C1A5DE0](&v164, "inputs:diffuseColor");
      MEMORY[0x24C1A5DE0](&v169, "inputs:opacity");
      MEMORY[0x24C1A5DE0](&v168, "outputs:a");
      v207 = 0;
      LOBYTE(v199) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v204 = 0;
      LOBYTE(v197) = 0;
      if (v205 != v203 || !v205 || (v168 ^ v204) >= 8)
      {
        LOBYTE(v196) = 0;
        v198 = 0;
        v202 = 0;
        v89 = v203;
        if (v203 != v201)
        {
          v203 = v201;
          v201 = v89;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v201);
        if (v196 == 1)
        {
          v90 = v175;
          if (!v203)
          {
            v90 = v208;
          }

          v91 = *v90;
        }

        if ((v202 & 7) != 0)
        {
          atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      LOBYTE(v196) = 0;
      v198 = 0;
      v202 = 0;
      v92 = v205;
      if (v205 != v201)
      {
        v205 = v201;
        v201 = v92;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v201);
      if ((v202 & 7) != 0)
      {
        atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v203);
      if ((v204 & 7) != 0)
      {
        atomic_fetch_add_explicit((v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v205);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v206);
      if ((v207 & 7) != 0)
      {
        atomic_fetch_add_explicit((v207 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v168 & 7) != 0)
      {
        atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v169 & 7) != 0)
      {
        atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v164.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v164.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetColor4F();
      REMaterialAssetBuilderSetFunctionConstant();
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v178);
      v94 = std::__string_hash<char>::operator()[abi:ne200100](__str, String);
      __p.__x_[0] = v94;
      for (i = 1; i != 624; ++i)
      {
        v94 = i + 1812433253 * (v94 ^ (v94 >> 30));
        __p.__x_[i] = v94;
      }

      __p.__i_ = 0;
      std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
      std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
      std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
      REMaterialAssetBuilderSetColor3F();
      MEMORY[0x24C1A5DE0](&v164, "inputs:emissiveColor");
      v169 = 0;
      *&v168 = 0;
      LOBYTE(v201) = 0;
      LOBYTE(v200) = 0;
      if (v201 == 1)
      {
        v96 = v175;
        if (!v207)
        {
          v96 = v208;
        }

        __asm { FMOV            V0.4S, #1.0 }

        *&_Q0 = *v96;
        DWORD2(_Q0) = *(v96 + 2);
        REMaterialAssetBuilderSetFloat4();
      }

      else
      {
        v98 = v169;
        if ((v169 & 7) != 0 && (atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v98 &= 0xFFFFFFFFFFFFFFF8;
        }

        LOBYTE(v206) = 0;
        *__str = *v208;
        if ((v98 & 7) != 0)
        {
          atomic_fetch_add_explicit((v98 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        REMaterialAssetBuilderSetColor3F();
        __asm { FMOV            V0.4S, #1.0 }

        REMaterialAssetBuilderSetFloat4();
      }

      REMaterialAssetBuilderSetFloat();
      MEMORY[0x24C1A5DE0](&v206, "inputs:metallic");
      std::string::basic_string[abi:ne200100]<0>(__str, "metallicScale");
      if (SHIBYTE(v212[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](&v205, "inputs:roughness");
      std::string::basic_string[abi:ne200100]<0>(__str, "roughnessScale");
      if (SHIBYTE(v212[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](&v204, "inputs:clearcoat");
      std::string::basic_string[abi:ne200100]<0>(__str, "clearcoatScale");
      if (SHIBYTE(v212[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](&v203, "inputs:clearcoatRoughness");
      std::string::basic_string[abi:ne200100]<0>(__str, "clearcoatRoughnessScale");
      if (SHIBYTE(v212[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](__str, "inputs:opacityThreshold");
      LODWORD(v202) = 0;
      if ((__str[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetFloat();
      MEMORY[0x24C1A5DE0](__str, "inputs:ior");
      LODWORD(v202) = 1069547520;
      if ((__str[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetFloat();
      if ((v203 & 7) != 0)
      {
        atomic_fetch_add_explicit((v203 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v204 & 7) != 0)
      {
        atomic_fetch_add_explicit((v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v205 & 7) != 0)
      {
        atomic_fetch_add_explicit((v205 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v206 & 7) != 0)
      {
        atomic_fetch_add_explicit((v206 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v207);
      if ((v168 & 7) != 0)
      {
        atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v169 & 7) != 0)
      {
        atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v164.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v164.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v100 = v171;
      MEMORY[0x24C1A5DE0](&v169, "inputs:diffuseColor");
      MEMORY[0x24C1A5DE0](&v168, "inputs:normal");
      MEMORY[0x24C1A5DE0](&v207, "inputs:emissiveColor");
      MEMORY[0x24C1A5DE0](&v206, "inputs:roughness");
      MEMORY[0x24C1A5DE0](&v205, "inputs:metallic");
      MEMORY[0x24C1A5DE0](&v204, "inputs:occlusion");
      MEMORY[0x24C1A5DE0](&v203, "inputs:specularColor");
      MEMORY[0x24C1A5DE0](&v202, "inputs:opacity");
      MEMORY[0x24C1A5DE0](&v201, "inputs:clearcoat");
      MEMORY[0x24C1A5DE0](&v200, "inputs:clearcoatRoughness");
      MEMORY[0x24C1A5DE0](&v199, "inputs:realitykitTintMask");
      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableBaseColorMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableNormalMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableEmissiveMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableRoughnessMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableMetallicMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableAOMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableSpecularMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      v175[0] = 0;
      LOBYTE(v197) = 0;
      LOBYTE(v196) = 0;
      v174.__r_.__value_.__r.__words[0] = 0;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v164);
      if ((v174.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v174.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v175[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v175[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetFunctionConstant();
      std::string::basic_string[abi:ne200100]<0>(&__p, "UseBaseColorMapAsTintMask");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      v175[0] = 0;
      v174.__r_.__value_.__r.__words[0] = 0;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v164);
      if ((v174.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v174.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v175[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v175[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v175[0] = 0;
      v174.__r_.__value_.__r.__words[0] = 0;
      v196 = 1008981770;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v164);
      if ((v174.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v174.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v175[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v175[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&__p, "inputs:opacityThreshold");
      LODWORD(__str[0]) = 0;
      if ((__p.__x_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (ShadeInputValueWith > 0.0)
      {
        REMaterialAssetBuilderSetFunctionConstant();
      }

      if ((v199 & 7) != 0)
      {
        atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v200 & 7) != 0)
      {
        atomic_fetch_add_explicit((v200 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v201 & 7) != 0)
      {
        atomic_fetch_add_explicit((v201 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v202 & 7) != 0)
      {
        atomic_fetch_add_explicit((v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v203 & 7) != 0)
      {
        atomic_fetch_add_explicit((v203 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v204 & 7) != 0)
      {
        atomic_fetch_add_explicit((v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v205 & 7) != 0)
      {
        atomic_fetch_add_explicit((v205 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v206 & 7) != 0)
      {
        atomic_fetch_add_explicit((v206 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v207 & 7) != 0)
      {
        atomic_fetch_add_explicit((v207 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v168 & 7) != 0)
      {
        atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v169 & 7) != 0)
      {
        atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "/__builtin/standardVertexColorMaterial");
      MEMORY[0x24C1A5D70](&v207, &__p);
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      v102 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v57);
      MEMORY[0x24C1A5DE0](&__p, "__materialAssetWithVertexColors");
      if ((*__p.__x_ ^ *v102) >= 8 && pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(v57))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(__str, v57);
        pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(__str);
      }

      if ((__p.__x_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v103 = MEMORY[0x24C1A5DE0](v208, "inputs:diffuseColor");
      if ((v208[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v208[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v103);
      }

      if (*(EmptyString + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *EmptyString, *(EmptyString + 8));
      }

      else
      {
        v105 = *EmptyString;
        *&__p.__x_[4] = *(EmptyString + 16);
        *__p.__x_ = v105;
      }

      *&__p.__x_[6] = "textureBaseColor";
      v106 = MEMORY[0x24C1A5DE0](v175, "inputs:metallic");
      if ((v175[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v107 = (v175[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v107 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v106);
      }

      if (*(v107 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[8], *v107, *(v107 + 8));
      }

      else
      {
        v108 = *v107;
        *&__p.__x_[12] = *(v107 + 16);
        *&__p.__x_[8] = v108;
      }

      *&__p.__x_[14] = "textureMetallic";
      v109 = MEMORY[0x24C1A5DE0](&v174, "inputs:roughness");
      if ((v174.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v110 = (v174.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v110 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v109);
      }

      if (*(v110 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[16], *v110, *(v110 + 8));
      }

      else
      {
        v111 = *v110;
        *&__p.__x_[20] = *(v110 + 16);
        *&__p.__x_[16] = v111;
      }

      *&__p.__x_[22] = "textureRoughness";
      v112 = MEMORY[0x24C1A5DE0](&v164, "inputs:emissiveColor");
      if ((v164.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v113 = (v164.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v113 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v112);
      }

      if (*(v113 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[24], *v113, *(v113 + 8));
      }

      else
      {
        v114 = *v113;
        *&__p.__x_[28] = *(v113 + 16);
        *&__p.__x_[24] = v114;
      }

      *&__p.__x_[30] = "textureEmissive";
      v115 = MEMORY[0x24C1A5DE0](&v169, "inputs:specularColor");
      if ((v169 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v116 = (v169 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v116 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v115);
      }

      if (*(v116 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[32], *v116, *(v116 + 8));
      }

      else
      {
        v117 = *v116;
        *&__p.__x_[36] = *(v116 + 16);
        *&__p.__x_[32] = v117;
      }

      *&__p.__x_[38] = "textureSpecular";
      v118 = MEMORY[0x24C1A5DE0](&v168, "inputs:clearcoat");
      if ((v168 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v119 = (v168 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v119 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v118);
      }

      if (*(v119 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[40], *v119, *(v119 + 8));
      }

      else
      {
        v120 = *v119;
        *&__p.__x_[44] = *(v119 + 16);
        *&__p.__x_[40] = v120;
      }

      *&__p.__x_[46] = "textureClearcoat";
      v121 = MEMORY[0x24C1A5DE0](&v206, "inputs:clearcoatRoughness");
      if ((v206 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v122 = (v206 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v122 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v121);
      }

      if (*(v122 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[48], *v122, *(v122 + 8));
      }

      else
      {
        v123 = *v122;
        *&__p.__x_[52] = *(v122 + 16);
        *&__p.__x_[48] = v123;
      }

      *&__p.__x_[54] = "textureClearcoatRoughness";
      v124 = MEMORY[0x24C1A5DE0](&v205, "inputs:normal");
      if ((v205 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v125 = (v205 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v125 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v124);
      }

      if (*(v125 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[56], *v125, *(v125 + 8));
      }

      else
      {
        v126 = *v125;
        *&__p.__x_[60] = *(v125 + 16);
        *&__p.__x_[56] = v126;
      }

      *&__p.__x_[62] = "textureNormal";
      v127 = MEMORY[0x24C1A5DE0](&v204, "inputs:occlusion");
      if ((v204 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v128 = (v204 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v128 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v127);
      }

      if (*(v128 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[64], *v128, *(v128 + 8));
      }

      else
      {
        v129 = *v128;
        *&__p.__x_[68] = *(v128 + 16);
        *&__p.__x_[64] = v129;
      }

      *&__p.__x_[70] = "textureAmbientOcclusion";
      v130 = MEMORY[0x24C1A5DE0](&v203, "inputs:opacity");
      if ((v203 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v131 = (v203 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v131 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v130);
      }

      if (*(v131 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[72], *v131, *(v131 + 8));
      }

      else
      {
        v132 = *v131;
        *&__p.__x_[76] = *(v131 + 16);
        *&__p.__x_[72] = v132;
      }

      *&__p.__x_[78] = "textureOpacity";
      std::map<std::string,char const*>::map[abi:ne200100](__str, &__p, 10);
      v133 = 40;
      do
      {
        if (SHIBYTE(v212[v133 + 2]) < 0)
        {
          operator delete(v212[v133]);
        }

        v133 -= 4;
      }

      while (v133 * 8);
      if ((v203 & 7) != 0)
      {
        atomic_fetch_add_explicit((v203 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v204 & 7) != 0)
      {
        atomic_fetch_add_explicit((v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v205 & 7) != 0)
      {
        atomic_fetch_add_explicit((v205 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v206 & 7) != 0)
      {
        atomic_fetch_add_explicit((v206 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v168 & 7) != 0)
      {
        atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v169 & 7) != 0)
      {
        atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v164.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v164.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v174.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v174.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v175[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v175[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v208[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v208[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v134 = v182;
      if (v182 == v183)
      {
LABEL_481:
        REMaterialAssetBuilderSetFunctionConstant();
        v175[0] = REAssetManagerMaterialAssetBuilderBuild();
        realityio::ECSAction::queueForDeferredAssetLoad(a1, v175);
        v208[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAsset *>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_PlaceCopy();
      }

      v135 = 0;
      v136 = 0;
      while (1)
      {
        v137 = v134[4];
        v169 = v137;
        if ((v137 & 7) != 0 && (atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v169 &= 0xFFFFFFFFFFFFFFF8;
        }

        v138 = v134[5];
        v170 = v138;
        if (v138)
        {
          v138 = RERetain();
        }

        if ((v169 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v139 = ((v169 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v139 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v138);
        }

        v140 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(__str, v139);
        if (&__str[1] == v140)
        {
          goto LABEL_473;
        }

        memset(&__p, 0, 24);
        v168 = xmmword_247757250;
        v206 = 0;
        v205 = 0;
        v204 = 0;
        v167 = v169;
        if ((v169 & 7) != 0 && (atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v167 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v167 & 7) != 0)
        {
          atomic_fetch_add_explicit((v167 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        std::string::basic_string[abi:ne200100]<0>(v208, *(v140 + 56));
        REMaterialAssetBuilderSetTextureFromAsset();
        std::string::basic_string[abi:ne200100]<0>(&v174, *(v140 + 56));
        v141 = std::string::append(&v174, "_sampler");
        v142 = *&v141->__r_.__value_.__l.__data_;
        v176 = v141->__r_.__value_.__r.__words[2];
        *v175 = v142;
        v141->__r_.__value_.__l.__size_ = 0;
        v141->__r_.__value_.__r.__words[2] = 0;
        v141->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        v166 = v205;
        if ((v205 & 7) != 0)
        {
          v143 = v205 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((v205 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v166 = v143;
          }
        }

        v165 = v204;
        if ((v204 & 7) != 0)
        {
          v144 = v204 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((v204 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v165 = v144;
          }
        }
        v145 = ;
        if ((v165 & 7) != 0)
        {
          atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v166 & 7) != 0)
        {
          atomic_fetch_add_explicit((v166 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        REMaterialAssetBuilderSetSampler();
        REMaterialAssetBuilderBindTextureToSampler();
        v146 = (__p.__x_[5] & 0x80000000) == 0 ? HIBYTE(__p.__x_[5]) : *&__p.__x_[2];
        if (!v146)
        {
          break;
        }

        v147 = HIBYTE(v184.__r_.__value_.__r.__words[2]);
        if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v147 = v184.__r_.__value_.__l.__size_;
        }

        if (v146 == v147)
        {
          if ((__p.__x_[5] & 0x80000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = *__p.__x_;
          }

          if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v149 = &v184;
          }

          else
          {
            v149 = v184.__r_.__value_.__r.__words[0];
          }

          if ((memcmp(p_p, v149, v146) == 0) | v135 & 1)
          {
            break;
          }
        }

        else if (v135)
        {
          break;
        }

        std::string::basic_string[abi:ne200100]<0>(&v164, "geometry.primvars:");
        if ((__p.__x_[5] & 0x80000000) == 0)
        {
          v150 = &__p;
        }

        else
        {
          v150 = *__p.__x_;
        }

        if ((__p.__x_[5] & 0x80000000) == 0)
        {
          v151 = HIBYTE(__p.__x_[5]);
        }

        else
        {
          v151 = *&__p.__x_[2];
        }

        v152 = std::string::append(&v164, v150, v151);
        v153 = *&v152->__r_.__value_.__l.__data_;
        v174.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
        *&v174.__r_.__value_.__l.__data_ = v153;
        v152->__r_.__value_.__l.__size_ = 0;
        v152->__r_.__value_.__r.__words[2] = 0;
        v152->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v164.__r_.__value_.__l.__data_);
        }

        REMaterialAssetBuilderSetBufferFromBinding();
        REMaterialAssetBuilderSetFloat4();
        REMaterialAssetBuilderSetFloat2();
        REMaterialAssetBuilderSetUVIndexForTexture();
        if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        v135 = 1;
LABEL_463:

        if (SHIBYTE(v176) < 0)
        {
          operator delete(v175[0]);
        }

        if (SHIBYTE(v209) < 0)
        {
          operator delete(v208[0]);
        }

        if ((v204 & 7) != 0)
        {
          atomic_fetch_add_explicit((v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v205 & 7) != 0)
        {
          atomic_fetch_add_explicit((v205 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (SHIBYTE(__p.__x_[5]) < 0)
        {
          operator delete(*__p.__x_);
        }

LABEL_473:
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v170);
        if ((v169 & 7) != 0)
        {
          atomic_fetch_add_explicit((v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v154 = v134[1];
        if (v154)
        {
          do
          {
            v155 = v154;
            v154 = *v154;
          }

          while (v154);
        }

        else
        {
          do
          {
            v155 = v134[2];
            _ZF = *v155 == v134;
            v134 = v155;
          }

          while (!_ZF);
        }

        v134 = v155;
        if (v155 == v183)
        {
          goto LABEL_481;
        }
      }

      if ((v136 & 1) == 0)
      {
        REMaterialAssetBuilderSetFloat4();
        REMaterialAssetBuilderSetFloat2();
      }

      REMaterialAssetBuilderSetUVIndexForTexture();
      v136 = 1;
      goto LABEL_463;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a6, &v210);
    realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v171);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a6, &v210);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v172);
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v173);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v178);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(&v180, v181[0]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(v183[0]);
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if ((v185 & 7) != 0)
  {
    atomic_fetch_add_explicit((v185 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v186, v187[0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v210);
  v156 = *MEMORY[0x277D85DE8];
}

void sub_24761F61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, realityio::TextureBuilder::TextureDataT *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2D0]);
  if ((a71 & 7) != 0)
  {
    atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a55);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x2C0]);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

void anonymous namespace::uvNameAndTransformForTextureInput(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4, void *a5, void *a6, void *a7)
{
  v124 = *MEMORY[0x277D85DE8];
  v13 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2);
  if ((a1 + 8) == v13 || (v14 = v13, !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v13 + 5))))
  {
    v86 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x24C1A8D40);
  }

  v15 = v14[6];
  if ((v15 & 4) != 0)
  {
    v16 = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(v14 + 5);
  }

  else
  {
    v16 = v14[5];
  }

  v88 = a4;
  v89 = a6;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](&v91, v16);
  v17 = v91;
  if (v91 != v92)
  {
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v23 = std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v121, v17 + 4);
      if ((v121 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v121 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
      }

      v25 = *(EmptyString + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(EmptyString + 8);
      }

      if (v25 >= 8)
      {
        if (v26 < 0)
        {
          EmptyString = *EmptyString;
        }

        if (!strncmp(EmptyString, "outputs:", 8uLL) && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(&v122))
        {
          if ((v123 & 4) != 0)
          {
            v27 = (*((v123 & 0xFFFFFFFFFFFFFFF8) + 168))(&v122);
          }

          else
          {
            v27 = v122;
          }

          MEMORY[0x24C1A5DE0](&v118, "inputs:wrapS");
          v28 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v27, &v118);
          v29 = v28;
          if ((v118 & 7) != 0)
          {
            atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v30 = (v27 + 8);
          if ((v27 + 8) != v28)
          {
            v31 = v28 + 5;
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v28 + 5)))
            {
              v32 = v29[6];
              if ((v32 & 4) != 0)
              {
                v31 = (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(v29 + 5);
              }

              pxrInternal__aapl__pxrReserved__::TfToken::operator=(v89, v31);
            }
          }

          MEMORY[0x24C1A5DE0](&v118, "inputs:wrapT");
          v33 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v27, &v118);
          v34 = v33;
          if ((v118 & 7) != 0)
          {
            atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v30 != v33)
          {
            v35 = v33 + 5;
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v33 + 5)))
            {
              v36 = v34[6];
              if ((v36 & 4) != 0)
              {
                v35 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(v34 + 5);
              }

              pxrInternal__aapl__pxrReserved__::TfToken::operator=(a7, v35);
            }
          }

          MEMORY[0x24C1A5DE0](&v118, "inputs:st");
          v37 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v27, &v118);
          v38 = v37;
          if ((v118 & 7) != 0)
          {
            atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v30 != v37 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v37 + 5)))
          {
            v39 = v38[6];
            if ((v39 & 4) != 0)
            {
              v40 = (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(v38 + 5);
            }

            else
            {
              v40 = v38[5];
            }

            MEMORY[0x24C1A5DE0](&v118, "outputs:result");
            v41 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v40, &v118);
            v42 = v41;
            if ((v118 & 7) != 0)
            {
              atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v40 + 8) != v41 && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>((v41 + 5)))
            {
              v43 = v42[6];
              if ((v43 & 4) != 0)
              {
                v44 = (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(v42 + 5);
              }

              else
              {
                v44 = v42[5];
              }

              MEMORY[0x24C1A5DE0](&v118, "inputs:varname");
              v45 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v118);
              v46 = v45;
              if ((v118 & 7) != 0)
              {
                atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v47 = (v44 + 8);
              if ((v44 + 8) != v45)
              {
                v48 = v45 + 5;
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v45 + 5)))
                {
                  v49 = v46[6];
                  if ((v49 & 4) != 0)
                  {
                    v48 = (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(v46 + 5);
                  }

                  v50 = *v48 & 0xFFFFFFFFFFFFFFF8;
                  if (v50)
                  {
                    v51 = (v50 + 16);
                    if (*(v50 + 39) < 0)
                    {
                      v51 = *v51;
                    }
                  }

                  else
                  {
                    v51 = "";
                  }

                  MEMORY[0x24C1A8D40](a3, v51);
                }
              }

              MEMORY[0x24C1A5DE0](&v118, "inputs:scale");
              v52 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v118);
              v53 = v52;
              if ((v118 & 7) != 0)
              {
                atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v54 = _D8;
              if (v47 != v52)
              {
                v55 = v52 + 5;
                v54 = _D8;
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>((v52 + 5)))
                {
                  v56 = v53[6];
                  if ((v56 & 4) != 0)
                  {
                    v55 = (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(v53 + 5);
                  }

                  v54 = *v55;
                }
              }

              MEMORY[0x24C1A5DE0](&v118, "inputs:translation");
              v57 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v118);
              v58 = v57;
              if ((v118 & 7) != 0)
              {
                atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v59 = 0;
              if (v47 != v57)
              {
                v60 = v57 + 5;
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>((v57 + 5)))
                {
                  v61 = v58[6];
                  if ((v61 & 4) != 0)
                  {
                    v60 = (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(v58 + 5);
                  }

                  v59 = *v60;
                }
              }

              MEMORY[0x24C1A5DE0](&v118, "inputs:rotation");
              v62 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v44, &v118);
              v63 = v62;
              if ((v118 & 7) != 0)
              {
                atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v64 = 0.0;
              if (v47 != v62)
              {
                v65 = (v62 + 5);
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v62 + 5)))
                {
                  v66 = v63[6];
                  if ((v66 & 4) != 0)
                  {
                    v65 = (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(v63 + 5);
                  }

                  v64 = *v65;
                }
              }

              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(v99, 1.0);
              *&v118 = v54;
              DWORD2(v118) = 1065353216;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetScale();
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v96, 1.0);
              v67 = v64 / 180.0 * 3.14159265;
              v69 = __sincosf_stret(v67 * 0.5);
              cosval = v69.__cosval;
              _Q0 = vmulq_n_f32(xmmword_247753B70, v69.__sinval);
              _S2 = _Q0.i32[1];
              _S4 = _Q0.i32[2];
              __asm { FMLS            S3, S4, V0.S[2] }

              v74 = _S3 + (cosval * cosval);
              v75 = vmuls_lane_f32(v69.__cosval, _Q0, 2);
              v76 = vmuls_lane_f32(v69.__cosval, *_Q0.f32, 1);
              __asm { FMLA            S5, S2, V0.S[1] }

              v78 = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
              __asm
              {
                FMLA            S18, S4, V0.S[1]
                FMLA            S19, S4, V0.S[1]
                FMLA            S1, S4, V0.S[2]
              }

              *&v96 = v74;
              *(&v96 + 1) = (v75 + (_Q0.f32[0] * _Q0.f32[1])) + (v75 + (_Q0.f32[0] * _Q0.f32[1]));
              *(&v96 + 2) = -(v76 - (_Q0.f32[0] * _Q0.f32[2])) - (v76 - (_Q0.f32[0] * _Q0.f32[2]));
              *(&v96 + 3) = -(v75 - (_Q0.f32[0] * _Q0.f32[1])) - (v75 - (_Q0.f32[0] * _Q0.f32[1]));
              *&v97 = v78;
              *(&v97 + 1) = _S18 + _S18;
              __asm { FMLS            S1, S2, V0.S[1] }

              *(&v97 + 2) = (v76 + (_Q0.f32[2] * _Q0.f32[0])) + (v76 + (_Q0.f32[2] * _Q0.f32[0]));
              *(&v97 + 3) = _S19 + _S19;
              v98 = _S1;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v93, 1.0);
              *(&v94 + 1) = v59;
              v118 = v93;
              v119 = v94;
              v120 = v95;
              *(&v119 + 3) = -*(&v59 + 1);
              v115 = v96;
              v116 = v97;
              v117 = v98;
              *(&v115 + 1) = -*(&v96 + 1);
              *(&v115 + 3) = -*(&v96 + 3);
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v112, 1.0);
              *(&v113 + 1) = 0xBF80000000000000;
              v114 = 1065353216;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(v109, 1.0);
              v110 = 0x3F80000000000000;
              v111 = 1065353216;
              v100 = v112;
              v101 = v113;
              v102 = v114;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              v103 = v100;
              v104 = v101;
              v105 = v102;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              v106 = v103;
              v107 = v104;
              v108 = v105;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              *v90 = v106;
              *&v90[16] = v107;
              pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
              *&v83 = *v90;
              *(&v83 + 1) = *&v90[12];
              *v88 = v83;
              *a5 = *&v90[24];
            }
          }
        }
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v122);
      if ((v121 & 7) != 0)
      {
        atomic_fetch_add_explicit((v121 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v84 = v17[1];
      if (v84)
      {
        do
        {
          v85 = v84;
          v84 = *v84;
        }

        while (v84);
      }

      else
      {
        do
        {
          v85 = v17[2];
          _ZF = *v85 == v17;
          v17 = v85;
        }

        while (!_ZF);
      }

      v17 = v85;
    }

    while (v85 != v92);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v91, v92[0]);
  v87 = *MEMORY[0x277D85DE8];
}