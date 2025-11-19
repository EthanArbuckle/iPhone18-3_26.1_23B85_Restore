void sub_2474D8B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::setMaterialConstantsFromUsdPreviewSurface(int a1, pxrInternal__aapl__pxrReserved__::UsdShadeShader *this, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v60, this, (v5 + 40));
  v6 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v56, this, (v6 + 16));
  v7 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v52, this, (v7 + 24));
  v8 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v48, this, (v8 + 56));
  v9 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v44, this, (v9 + 64));
  realityio::getBaseColorTintAndOpacity(&v64, this, a3);
  REMaterialAssetBuilderSetColor4F();
  v10 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v65, this + 1, this + 4);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v10, &v41);
  v11 = bswap64(0x9E3779B97F4A7C55 * (v42 + ((v42 + v41 + (v42 + v41) * (v42 + v41)) >> 1)));
  v43.__x_[0] = v11;
  for (i = 1; i != 624; ++i)
  {
    v11 = i + 1812433253 * (v11 ^ (v11 >> 30));
    v43.__x_[i] = v11;
  }

  v43.__i_ = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v66);
  if (v65.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.n128_i64[1]);
  }

  std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v43);
  std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v43);
  std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v43);
  REMaterialAssetBuilderSetColor3F();
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v60) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v60) & 1) != 0)
  {
    v13 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v13 + 5) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v13 + 5) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v13);
    }

    v35 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, EmptyString);
    realityio::findTextureScaleFloat3(&v60, v35);
    __asm { FMOV            V3.4S, #1.0 }

    REMaterialAssetBuilderSetFloat4();
  }

  else
  {
    realityio::getShadeInputColor4WithFallback(&v65, &v60, xmmword_247757270);
    REMaterialAssetBuilderSetColor3F();
    __asm { FMOV            V0.4S, #1.0 }

    REMaterialAssetBuilderSetFloat4();
  }

  REMaterialAssetBuilderSetFloat();
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v56) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v56) & 1) != 0)
  {
    v20 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v20)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v20 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v21 = ((*(v20 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v21 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
    }

    v37 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v21);
    realityio::findTextureScaleFloat(&v56, v37);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v22 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v22)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v65, this, (v22 + 16));
    v41 = 0;
    realityio::getShadeInputValueWithFallback<float>(&v65, &v41);
    if ((v67 & 7) != 0)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v66);
    if (v65.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.n128_i64[1]);
    }

    REMaterialAssetBuilderSetFloat();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v52) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v52) & 1) != 0)
  {
    v23 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v23)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v23 + 3) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = ((*(v23 + 3) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
    }

    v38 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v24);
    realityio::findTextureScaleFloat(&v52, v38);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v25 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v25)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v65, this, (v25 + 24));
    v41 = 1056964608;
    realityio::getShadeInputValueWithFallback<float>(&v65, &v41);
    if ((v67 & 7) != 0)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v66);
    if (v65.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.n128_i64[1]);
    }

    REMaterialAssetBuilderSetFloat();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v48) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v48) & 1) != 0)
  {
    v26 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v26)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v26 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v27 = ((*(v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
    }

    v39 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v27);
    realityio::findTextureScaleFloat(&v48, v39);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v65.n128_u32[0] = 0;
    realityio::getShadeInputValueWithFallback<float>(&v48, &v65);
    REMaterialAssetBuilderSetFloat();
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v44) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v44) & 1) != 0)
  {
    v28 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v28)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v29 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
    }

    v40 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, v29);
    realityio::findTextureScaleFloat(&v44, v40);
    REMaterialAssetBuilderSetFloat();
  }

  else
  {
    v30 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v30)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v65, this, (v30 + 64));
    v41 = 1008981770;
    realityio::getShadeInputValueWithFallback<float>(&v65, &v41);
    if ((v67 & 7) != 0)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v66);
    if (v65.n128_u64[1])
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.n128_i64[1]);
    }

    REMaterialAssetBuilderSetFloat();
  }

  v31 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v31)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v65, this, (v31 + 72));
  v41 = 0;
  realityio::getShadeInputValueWithFallback<float>(&v65, &v41);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v66);
  if (v65.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.n128_i64[1]);
  }

  REMaterialAssetBuilderSetFloat();
  v32 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v32)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v65, this, (v32 + 168));
  v41 = 1069547520;
  realityio::getShadeInputValueWithFallback<float>(&v65, &v41);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v66);
  if (v65.n128_u64[1])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v65.n128_i64[1]);
  }

  REMaterialAssetBuilderSetFloat();
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

  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v50);
  if (v49)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v49);
  }

  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v54);
  if (v53)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v53);
  }

  if ((v59 & 7) != 0)
  {
    atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v58);
  if (v57)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v57);
  }

  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v62);
  result = v61;
  if (v61)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v61);
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474D95A4(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&STACK[0x9D0]);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&STACK[0x9F0]);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v1 - 256));
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v1 - 224));
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v1 - 192));
  _Unwind_Resume(a1);
}

void realityio::setFunctionConstantsFromScene(int a1, pxrInternal__aapl__pxrReserved__::UsdStage *this)
{
  v22[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, this);
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v20, v2);
  size = __p.__r_.__value_.__l.__size_;
  if (__p.__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*size + 8))(size);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "realityio:functionConstants");
  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  v5 = ValueAtPath;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_28;
    }
  }

  else if (!ValueAtPath)
  {
    goto LABEL_28;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtDictionary>(v5))
  {
    v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtDictionary>(v5);
    MEMORY[0x24C1A4F90](&v19, v6);
    v17 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(&v19);
    v18 = v7;
    v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(&v19);
    v10 = v9;
    while (1)
    {
      v11 = !v10 || v17 == v8;
      v12 = v11;
      if (v18 == v10 && v12)
      {
        break;
      }

      std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&__p, (v17 + 32));
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(v22))
      {
        *pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(v22);
        REMaterialAssetBuilderSetFunctionConstant();
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(&v17);
    }

    v14 = v19;
    v19 = 0;
    if (v14)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v14, *(v14 + 8));
      MEMORY[0x24C1A91B0](v14, 0x1020C4062D53EE8);
    }
  }

LABEL_28:
  v15 = v20;
  v20 = 0;
  if (v15)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v15, *(v15 + 8));
    MEMORY[0x24C1A91B0](v15, 0x1020C4062D53EE8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2474D9914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a11);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a13);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(uint64_t *a1)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtDictionary>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12VtDictionaryE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtDictionary>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D82798]);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(a1))
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

uint64_t realityio::setFunctionConstantsFromUsdPreviewSurface(int a1, pxrInternal__aapl__pxrReserved__::UsdShadeShader *this, uint64_t a3)
{
  v5 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v5 + 32));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v6 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v6 + 88));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v7 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v7 + 40));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v8 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v8 + 24));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v9 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v9)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v9 + 16));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v10 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v10 + 184));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v11 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v11 + 192));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v12 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v12 + 80));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](&v28))
  {
    v14 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    realityio::isConnectedToBaseColorAlpha(this, (v14 + 80), v13);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v15 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v15 + 56));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    MEMORY[0x24C1A7400](&v28);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  if (realityio::isRMABundled(a3))
  {
    REMaterialAssetBuilderSetFunctionConstant();
    REMaterialAssetBuilderSetFunctionConstant();
    REMaterialAssetBuilderSetFunctionConstant();
    REMaterialAssetBuilderSetFunctionConstant();
    REMaterialAssetBuilderSetFunctionConstant();
    REMaterialAssetBuilderSetFunctionConstant();
  }

  v16 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v16 + 208));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](&v28))
  {
    v18 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v18)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    realityio::isConnectedToBaseColorAlpha(this, (v18 + 208), v17);
  }

  REMaterialAssetBuilderSetFunctionConstant();
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v19 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v19)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v19 + 56));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v28) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && (MEMORY[0x24C1A7400](&v28) & 1) != 0)
  {
    v20 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
    if (!v20)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v20 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
    }

    v26 = a3 + 8 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a3, EmptyString);
    TextureScaleFloat = realityio::findTextureScaleFloat(&v28, v26);
  }

  else
  {
    v27 = 0;
    TextureScaleFloat = realityio::getShadeInputValueWithFallback<float>(&v28, &v27);
  }

  if (TextureScaleFloat > 0.0)
  {
    REMaterialAssetBuilderSetFunctionConstant();
  }

  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  if (v29)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  v23 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v23)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v28, this, (v23 + 72));
  v27 = 0;
  ShadeInputValueWith = realityio::getShadeInputValueWithFallback<float>(&v28, &v27);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
  result = v29;
  if (v29)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v29);
  }

  if (ShadeInputValueWith > 0.0)
  {
    return REMaterialAssetBuilderSetFunctionConstant();
  }

  return result;
}

void sub_2474DA5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::isRMABundled(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "metallic");
  v2 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "occlusion");
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "roughness");
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "specularColor");
  v5 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, &__p);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  v6 = a1 + 8;
  if (v6 == v2)
  {
    v7 = 0;
  }

  else
  {
    realityio::TextureBuilder::TextureDataT::getOneTextureAsset(&__p, *(v2 + 56));
    v7 = __p;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  }

  v27 = v7;
  if (v6 == v4)
  {
    v8 = 0;
  }

  else
  {
    realityio::TextureBuilder::TextureDataT::getOneTextureAsset(&__p, *(v4 + 56));
    v8 = __p;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  }

  v26 = v8;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    realityio::TextureBuilder::TextureDataT::getOneTextureAsset(&__p, *(v5 + 56));
    v9 = __p;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  }

  v25 = v9;
  if (v6 == v3)
  {
    v10 = 0;
  }

  else
  {
    realityio::TextureBuilder::TextureDataT::getOneTextureAsset(&__p, *(v3 + 56));
    v10 = __p;
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (!v11)
  {
    v11 = v9;
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v6 == v3 || v10 == v12;
  if (!v13)
  {
    v10 = 0;
  }

  v24 = v10;
  if (!v13)
  {
    v3 = v6;
  }

  __p = 0;
  v29 = 0;
  v30 = 0;
  if (v7 == v12)
  {
    std::vector<REAsset *>::push_back[abi:ne200100](&__p, &v27);
  }

  if (v8 == v12)
  {
    std::vector<REAsset *>::push_back[abi:ne200100](&__p, &v26);
  }

  if (v9 == v12)
  {
    std::vector<REAsset *>::push_back[abi:ne200100](&__p, &v25);
  }

  if (v10 == v12)
  {
    std::vector<REAsset *>::push_back[abi:ne200100](&__p, &v24);
  }

  v15 = v6 == v2 || v7 == v12;
  v17 = v6 == v4 || v8 == v12;
  v19 = v3 == v6 || v10 == v12;
  v20 = v9 == v12 || v6 == v5;
  if (!v20 || !v17 || !v15 || (v29 - __p) < 9 || !v19)
  {
    if (v6 == v4 || v6 == v2 || v3 == v6 || (v23 = *(v2 + 56), v23 != *(v3 + 56)) && v23 != *(v4 + 56))
    {
      v21 = 0;
      if (!__p)
      {
        return v21;
      }

      goto LABEL_72;
    }
  }

  v21 = 1;
  if (__p)
  {
LABEL_72:
    v29 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2474DA928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::getShaderType(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  MEMORY[0x24C1A5DE0]();
  result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2);
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v8 = MEMORY[0x277D86708] + 16;
    if (v9 && (*(v9 + 57) & 8) == 0 && (*(MEMORY[0x277D86708] + 48))(&v8))
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v4, &v8);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v4))
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
      if (v5)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
      }
    }

    return MEMORY[0x24C1A5280](&v8);
  }

  return result;
}

void sub_2474DAA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x24C1A5280](va);
  if ((*v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void realityio::gatherUVSetNamesInBindOrder(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v75 = 0;
  v76 = 0;
  v74 = &v75;
  memset(&v73, 0, sizeof(v73));
  v4 = *(this + 1);
  if (v4 && (*(v4 + 57) & 8) == 0 && ((*(*this + 32))(this, a2) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(this);
    v6 = v72;
    if (v71 != v72)
    {
      v7 = v71 + 16;
      while (1)
      {
        v8 = v7 - 16;
        v66 = *(v7 - 16);
        v9 = *(v7 - 8);
        v67 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v68, v7);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v69, (v7 + 4));
        v10 = *(v7 + 8);
        v70 = v10;
        if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v70 &= 0xFFFFFFFFFFFFFFF8;
        }

        realityio::findPrimWhichOriginatedConnection(v62, &v66);
        if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v62))
        {
          goto LABEL_113;
        }

        realityio::getShaderType(&v29, v62);
        v11 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (!v11)
        {
          goto LABEL_113;
        }

        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v29 = (MEMORY[0x277D86708] + 16);
        MEMORY[0x24C1A5DE0](&v54, "st");
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v58, &v29, &v54);
        if ((v54 & 7) != 0)
        {
          atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x24C1A5280](&v29);
        if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v58) || (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) == 0)
        {
          if ((v61 & 7) != 0)
          {
            atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          goto LABEL_111;
        }

        realityio::findOriginalSourceAttribute(&v58, &v54);
        if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v54))
        {
          if (v54 != v58 || v55 != v59 || v56 != v60 || (v61 ^ v57) >= 8)
          {
            break;
          }
        }

LABEL_105:
        if ((v57 & 7) != 0)
        {
          atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
        if (v55)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v55);
        }

        if ((v61 & 7) != 0)
        {
          atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_111:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v60);
        if (v59)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v59);
        }

LABEL_113:
        if ((v65 & 7) != 0)
        {
          atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v64);
        if (v63)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63);
        }

        if ((v70 & 7) != 0)
        {
          atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v68);
        if (v67)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v67);
        }

        v7 += 32;
        if (v8 + 32 == v6)
        {
          goto LABEL_128;
        }
      }

      v49 = 1;
      v50 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v53 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v44, &v55, &v56);
      realityio::getShaderType(&v43, &v44);
      MEMORY[0x24C1A5DE0](&v29, "UsdPrimvarReader_float2");
      v12 = v43;
      v13 = v29;
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v13 ^ v12) > 7)
      {
        MEMORY[0x24C1A5DE0](&v29, "UsdTransform2d");
        v15 = v43;
        v16 = v29;
        if ((v29 & 7) != 0)
        {
          atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v16 ^ v15) <= 7)
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v39 = MEMORY[0x277D86708] + 16;
          MEMORY[0x24C1A5DE0](&v35, "in");
          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v29, &v39, &v35);
          if ((v35 & 7) != 0)
          {
            atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5280](&v39);
          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v29) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
          {
            realityio::findOriginalSourceAttribute(&v29, &v39);
            if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v39) && (v39 != v29 || v40 != v30 || v41 != __p || (v32 ^ v42) >= 8))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v35, &v40, &v41);
              realityio::getShaderType(&v77, &v35);
              MEMORY[0x24C1A5DE0](&v34, "UsdPrimvarReader_float2");
              v17 = v77;
              v18 = v34;
              if ((v34 & 7) != 0)
              {
                atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v77 & 7) != 0)
              {
                atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((v18 ^ v17) <= 7)
              {
                pxrInternal__aapl__pxrReserved__::UsdObject::operator=(&v49, &v35);
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
            }

            if ((v42 & 7) != 0)
            {
              atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
            if (v40)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v40);
            }
          }

          if ((v32 & 7) != 0)
          {
            atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
          if (v30)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
          }
        }
      }

      else
      {
        v49 = v44;
        v14 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit((v45 + 48), 1uLL, memory_order_relaxed);
        }

        if (v50)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v50);
        }

        v50 = v14;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v51, &v46);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v52, &v47);
        pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v53, &v48);
      }

      if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v49))
      {
LABEL_95:
        if ((v43 & 7) != 0)
        {
          atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

        if ((v53 & 7) != 0)
        {
          atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v51);
        if (v50)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v50);
        }

        goto LABEL_105;
      }

      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v29 = (MEMORY[0x277D86708] + 16);
      MEMORY[0x24C1A5DE0](&v35, "varname");
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v39, &v29, &v35);
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5280](&v29);
      if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v39) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
      {
LABEL_91:
        if ((v42 & 7) != 0)
        {
          atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
        if (v40)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v40);
        }

        goto LABEL_95;
      }

      realityio::findOriginalSourceAttribute(&v39, &v35);
      if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v35))
      {
LABEL_87:
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

        goto LABEL_91;
      }

      v78 = 0;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
      if (!v78)
      {
LABEL_86:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v77);
        goto LABEL_87;
      }

      if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(&v77) & 1) == 0)
      {
        Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v77);
        {
          pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v29, &v77);
          if (SHIBYTE(__p) >= 0)
          {
            v24 = &v29;
          }

          else
          {
            v24 = v29;
          }

          NSLog(&cfstr_WarningInvalid.isa, v24);
          if (SHIBYTE(__p) < 0)
          {
            operator delete(v29);
          }

          goto LABEL_77;
        }

        v21 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<std::string>(&v77);
        if (&v77 != v21)
        {
          pxrInternal__aapl__pxrReserved__::VtValue::_Copy(v21, &v77, v22);
        }
      }

      v23 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(&v77);
      std::string::operator=(&v73, v23);
LABEL_77:
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = v73;
      }

      realityio::TexcoordID::TexcoordID(&v29, &v28, -1, 0);
      std::__tree<realityio::TexcoordID>::__emplace_unique_key_args<realityio::TexcoordID,realityio::TexcoordID>(&v74, &v29);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      goto LABEL_86;
    }

LABEL_128:
    v29 = &v71;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v29);
    v25 = v76;
    if (v76 >= 8)
    {
      v25 = 8;
    }

    v26 = v25;
    std::vector<realityio::TexcoordID>::reserve(a3, v25);
    v29 = v74;
    std::__advance[abi:ne200100]<std::__tree_const_iterator<realityio::TexcoordID,std::__tree_node<realityio::TexcoordID,void *> *,long>>(&v29, v26);
    std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<realityio::TexcoordID,std::__tree_node<realityio::TexcoordID,void *> *,long>,std::__tree_const_iterator<realityio::TexcoordID,std::__tree_node<realityio::TexcoordID,void *> *,long>,std::back_insert_iterator<std::vector<realityio::TexcoordID>>>(&v66, v74, v29, a3);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  std::__tree<realityio::TexcoordID>::destroy(&v74, v75);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_2474DB46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v51 - 112));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a30);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a34);
  if ((a38 & 7) != 0)
  {
    atomic_fetch_add_explicit((a38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a39);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a43);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a47);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a51);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v51 - 248));
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v51 - 216));
  __p = (v51 - 184);
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  std::__tree<realityio::TexcoordID>::destroy(v51 - 136, *(v51 - 128));
  std::vector<realityio::TexcoordID>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void *std::vector<realityio::TexcoordID>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TexcoordID>>(result, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2474DB950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<realityio::TexcoordID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void realityio::findFirstUVMeshAttributeNameFromShader(realityio *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2@<X1>, std::string *a3@<X8>)
{
  realityio::gatherUVSetNamesInBindOrder(this, a2, v9);
  if (v9[0] == v9[1])
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v5 = *(v9[0] + 8);
    if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v5 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (v6 + 4);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
    }

    if (*(EmptyString + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *EmptyString, *(EmptyString + 8));
    }

    else
    {
      v8 = *EmptyString;
      a3->__r_.__value_.__r.__words[2] = *(EmptyString + 16);
      *&a3->__r_.__value_.__l.__data_ = v8;
    }

    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = v9;
  std::vector<realityio::TexcoordID>::__destroy_vector::operator()[abi:ne200100](&v10);
}

uint64_t realityio::getShaderID(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
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

void sub_2474DBAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a9);
  if ((*v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::uvNameAndTransformForTexturePrim(uint64_t a1, std::string *a2, _OWORD *a3, void *a4)
{
  v108 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v83 = MEMORY[0x277D86708] + 16;
  if (v84)
  {
    if ((*(v84 + 57) & 8) == 0)
    {
      v7 = *(MEMORY[0x277D86708] + 48);
      if (v7(&v83))
      {
        realityio::getShaderID(&v85, &v83);
        MEMORY[0x24C1A5DE0](&v102, "UsdUVTexture");
        v8 = v85;
        v9 = v102;
        if ((v102 & 7) != 0)
        {
          atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v10 = v9 ^ v8;
        if ((v85 & 7) != 0)
        {
          atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v10 <= 7)
        {
          MEMORY[0x24C1A5DE0](&v85, "st");
          pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v79, &v83, &v85);
          if ((v85 & 7) != 0)
          {
            atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v79) && (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) != 0)
          {
            realityio::findPrimWhichOriginatedConnection(v75, &v79);
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v73 = MEMORY[0x277D86708] + 16;
            if (v74 && (*(v74 + 57) & 8) == 0 && (v7(&v73) & 1) != 0)
            {
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v85, &v73);
              IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v85);
              if ((BYTE8(v86) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
              if (*(&v85 + 1))
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v85 + 1));
              }

              if (IsValid)
              {
                realityio::getShaderID(&v72, &v73);
                MEMORY[0x24C1A5DE0](&v85, "UsdTransform2d");
                v12 = v85 ^ v72;
                if ((v85 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v12 <= 7)
                {
                  MEMORY[0x24C1A5DE0](&v102, "scale");
                  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v85, &v73, &v102);
                  v67 = v85;
                  v68 = *(&v85 + 1);
                  if (*(&v85 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v85 + 1) + 48), 1uLL, memory_order_relaxed);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v69, &v86);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v70, &v86 + 1);
                  v71 = *(&v86 + 1);
                  if ((BYTE8(v86) & 7) != 0 && (atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v71 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  if ((BYTE8(v86) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
                  if (*(&v85 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v85 + 1));
                  }

                  if ((v102 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  MEMORY[0x24C1A5DE0](&v102, "rotation");
                  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v85, &v73, &v102);
                  v62 = v85;
                  v63 = *(&v85 + 1);
                  if (*(&v85 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v85 + 1) + 48), 1uLL, memory_order_relaxed);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v64, &v86);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v65, &v86 + 1);
                  v66 = *(&v86 + 1);
                  if ((BYTE8(v86) & 7) != 0 && (atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v66 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  if ((BYTE8(v86) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
                  if (*(&v85 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v85 + 1));
                  }

                  if ((v102 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  MEMORY[0x24C1A5DE0](&v102, "translation");
                  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v85, &v73, &v102);
                  v57 = v85;
                  v58 = *(&v85 + 1);
                  if (*(&v85 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v85 + 1) + 48), 1uLL, memory_order_relaxed);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v59, &v86);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v60, &v86 + 1);
                  v61 = *(&v86 + 1);
                  if ((BYTE8(v86) & 7) != 0 && (atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    v61 &= 0xFFFFFFFFFFFFFFF8;
                  }

                  if ((BYTE8(v86) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
                  if (*(&v85 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v85 + 1));
                  }

                  if ((v102 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(&v67, &v85);
                  v13 = v85;
                  v14 = *(&v85 + 8);
                  if ((v85 & 1) == 0 && v88 < 0)
                  {
                    operator delete(*(&v86 + 1));
                  }

                  realityio::getAttributeValue<float>(&v62, &v85);
                  v15 = v85;
                  v16 = *(&v85 + 2);
                  if ((v85 & 1) == 0 && v88 < 0)
                  {
                    operator delete(*(&v86 + 1));
                  }

                  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(&v57, &v85);
                  v17 = v85;
                  v18 = *(&v85 + 8);
                  if ((v85 & 1) == 0 && v88 < 0)
                  {
                    operator delete(*(&v86 + 1));
                  }

                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(v56, 1.0);
                  __asm { FMOV            V1.2S, #1.0 }

                  *&v85 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v13), 0x1FuLL)), v14, _D1);
                  DWORD2(v85) = 1065353216;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetScale();
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v53, 1.0);
                  v24 = v16 / 180.0 * 3.14159265;
                  v25 = v24 * 0.5;
                  if (!v15)
                  {
                    v25 = 0.0;
                  }

                  v27 = __sincosf_stret(v25);
                  cosval = v27.__cosval;
                  _Q0 = vmulq_n_f32(xmmword_247753B70, v27.__sinval);
                  _S2 = _Q0.i32[1];
                  _S4 = _Q0.i32[2];
                  __asm { FMLS            S3, S4, V0.S[2] }

                  v32 = _S3 + (cosval * cosval);
                  v33 = vmuls_lane_f32(v27.__cosval, _Q0, 2);
                  v34 = vmuls_lane_f32(v27.__cosval, *_Q0.f32, 1);
                  __asm { FMLA            S5, S2, V0.S[1] }

                  v36 = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
                  __asm
                  {
                    FMLA            S18, S4, V0.S[1]
                    FMLA            S19, S4, V0.S[1]
                    FMLA            S1, S4, V0.S[2]
                  }

                  *&v53 = v32;
                  *(&v53 + 1) = (v33 + (_Q0.f32[0] * _Q0.f32[1])) + (v33 + (_Q0.f32[0] * _Q0.f32[1]));
                  *(&v53 + 2) = -(v34 - (_Q0.f32[0] * _Q0.f32[2])) - (v34 - (_Q0.f32[0] * _Q0.f32[2]));
                  *(&v53 + 3) = -(v33 - (_Q0.f32[0] * _Q0.f32[1])) - (v33 - (_Q0.f32[0] * _Q0.f32[1]));
                  *&v54 = v36;
                  *(&v54 + 1) = _S18 + _S18;
                  __asm { FMLS            S1, S2, V0.S[1] }

                  *(&v54 + 2) = (v34 + (_Q0.f32[2] * _Q0.f32[0])) + (v34 + (_Q0.f32[2] * _Q0.f32[0]));
                  *(&v54 + 3) = _S19 + _S19;
                  v55 = _S1;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v50, 1.0);
                  *(&v51 + 1) = vand_s8(v18, vcltz_s32(vshl_n_s32(vdup_n_s32(v17), 0x1FuLL)));
                  v85 = v50;
                  v86 = v51;
                  v87 = v52;
                  *(&v86 + 3) = -*(&v51 + 3);
                  v102 = v53;
                  v103 = v54;
                  v104 = v55;
                  *(&v102 + 1) = -*(&v53 + 1);
                  *(&v102 + 3) = -*(&v53 + 3);
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v105, 1.0);
                  *(&v106 + 1) = 0xBF80000000000000;
                  v107 = 1065353216;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(&v98, 1.0);
                  v100 = 0x3F80000000000000;
                  v101 = 1065353216;
                  v89 = v105;
                  v90 = v106;
                  v91 = v107;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
                  v92 = v89;
                  v93 = v90;
                  v94 = v91;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
                  v95 = v92;
                  v96 = v93;
                  v97 = v94;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
                  *v49 = v95;
                  *&v49[16] = v96;
                  pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=();
                  *&v41 = *v49;
                  *(&v41 + 1) = *&v49[12];
                  *a3 = v41;
                  *a4 = *&v49[24];
                  MEMORY[0x24C1A5DE0](&v102, "in");
                  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v85, &v73, &v102);
                  if ((v102 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v85) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](&v85))
                  {
                    realityio::findOriginalSourceAttribute(&v85, &v102);
                    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v102))
                    {
                      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v105, &v102 + 1, &v103);
                      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                      v98 = MEMORY[0x277D86708] + 16;
                      pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&v105);
                      if (v99 && (*(v99 + 57) & 8) == 0 && (*(v98 + 32))(&v98))
                      {
                        pxrInternal__aapl__pxrReserved__::UsdTyped::operator=(&v73, &v98);
                        realityio::getShaderID(&v105, &v73);
                        if ((v72 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        v72 = v105;
                      }

                      MEMORY[0x24C1A5280](&v98);
                    }

                    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v102);
                  }

                  if ((BYTE8(v86) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
                  if (*(&v85 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v85 + 1));
                  }

                  if ((v61 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v59);
                  if (v58)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v58);
                  }

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

                  if ((v71 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v69);
                  if (v68)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v68);
                  }
                }

                MEMORY[0x24C1A5DE0](&v85, "UsdPrimvarReader_float2");
                v42 = v85 ^ v72;
                if ((v85 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                if (v42 <= 7)
                {
                  MEMORY[0x24C1A5DE0](&v105, "varname");
                  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v102, &v73, &v105);
                  LODWORD(v85) = v102;
                  *(&v85 + 1) = *(&v102 + 1);
                  if (*(&v102 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v102 + 1) + 48), 1uLL, memory_order_relaxed);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v86, &v103);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v86 + 1, &v103 + 1);
                  *(&v86 + 1) = *(&v103 + 1);
                  if ((BYTE8(v103) & 7) != 0 && (atomic_fetch_add_explicit((*(&v103 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                  {
                    *(&v86 + 1) &= 0xFFFFFFFFFFFFFFF8;
                  }

                  if ((BYTE8(v103) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v103 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
                  if (*(&v102 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v102 + 1));
                  }

                  if ((v105 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v105 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v85))
                  {
                    realityio::findOriginalSourceAttribute(&v85, &v102);
                    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v102) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v102))
                    {
                      *(&v105 + 1) = 0;
                      pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
                      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v105);
                      {
                        v45 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<std::string>(&v105);
                        v46 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(v45);
                        std::string::operator=(a2, v46);
                      }

                      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v105);
                    }

                    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v102);
                  }

                  if ((BYTE8(v86) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v86 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
                  if (*(&v85 + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v85 + 1));
                  }
                }

                if ((v72 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }
              }
            }

            MEMORY[0x24C1A5280](&v73);
            if ((v78 & 7) != 0)
            {
              atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v77);
            if (v76)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v76);
            }
          }

          if ((v82 & 7) != 0)
          {
            atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v81);
          if (v80)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v80);
          }
        }
      }
    }
  }

  result = MEMORY[0x24C1A5280](&v83);
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474DC78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  MEMORY[0x24C1A5280](v55 - 248);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v55 - 208));
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a55);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a28);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a32);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a36);
  if ((a40 & 7) != 0)
  {
    atomic_fetch_add_explicit((a40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5280](&a41);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a44);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a48);
  MEMORY[0x24C1A5280](&a52);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *realityio::internal::makeMaterialPrimToBoundSurfaceUsageMap@<X0>(pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(a1);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(IsA);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(IsA);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    goto LABEL_7;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(IsA);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA & 1) != 0 || (pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(IsA), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(), (IsA) || (pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(IsA), pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo(), IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA(), IsA))
  {
LABEL_7:
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(IsA);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    v32 = a2;
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *&v45 = MEMORY[0x277D866A8] + 16;
      isCatmullClarkSurface = realityio::isCatmullClarkSurface(&v45, v8);
      MEMORY[0x24C1A4DB0](&v45);
    }

    else
    {
      isCatmullClarkSurface = 0;
    }

    v39 = 0uLL;
    *&v40 = 0;
    v56[0] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *&v45 = MEMORY[0x277D866C8] + 16;
    BoundSubsetsAndCoverage = realityio::getBoundSubsetsAndCoverage(&v45, &v39, v56);
    MEMORY[0x24C1A4EF0](&v45);
    if ((isCatmullClarkSurface & BoundSubsetsAndCoverage) == 1)
    {
      if (v56[0] == 1)
      {
        v11 = *(&v39 + 1);
        v12 = v39;
        if (v39 != *(&v39 + 1))
        {
          v13 = MEMORY[0x277D86568];
          do
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            *(&v46 + 1) = 0;
            *&v45 = MEMORY[0x277D867B8] + 16;
            v14 = atomic_load(v13);
            if (!v14)
            {
              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
            }

            pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v45, v14, 0);
            if (realityio::isMaterialX(&v42, v15))
            {
              LOWORD(isCatmullClarkSurface) = 0;
            }

            MEMORY[0x24C1A5510](&v42);
            MEMORY[0x24C1A5AA0](&v45);
            v12 += 24;
          }

          while (v12 != v11);
        }
      }

      else
      {
        LOWORD(isCatmullClarkSurface) = 0;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *(&v46 + 1) = 0;
    *&v45 = MEMORY[0x277D867B8] + 16;
    v16 = atomic_load(MEMORY[0x277D86568]);
    if (!v16)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
    }

    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v45, v16, 0);
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v42, &v36, &v37);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v42, &v55);
    v17 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3, &v55);
    if (a3 + 1 == v17)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v53, &v55);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v53 + 1, &v55 + 1);
      v54 = !isCatmullClarkSurface || isCatmullClarkSurface << 8;
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>(a3, &v53);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v53);
    }

    else
    {
      v18 = *(v17 + 36);
      LOBYTE(v53) = v18 & 1 | !isCatmullClarkSurface;
      BYTE1(v53) = (isCatmullClarkSurface | HIBYTE(v18)) & 1;
      std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::insert_or_assign[abi:ne200100]<std::pair<BOOL,BOOL>&>(a3, &v55, &v53);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
    if ((BYTE8(v43) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v43 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
    if (*(&v42 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v42 + 1));
    }

    MEMORY[0x24C1A5510](v35);
    MEMORY[0x24C1A5AA0](&v45);
    v19 = *(&v39 + 1);
    for (i = v39; i != v19; i += 24)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *(&v46 + 1) = 0;
      *&v45 = MEMORY[0x277D867B8] + 16;
      v21 = atomic_load(MEMORY[0x277D86568]);
      if (!v21)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(&v45, v21, 0);
      pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v42, &v36, &v37);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v42, &v55);
      v22 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3, &v55);
      if (a3 + 1 == v22)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v53, &v55);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v53 + 1, &v55 + 1);
        v54 = !isCatmullClarkSurface || isCatmullClarkSurface << 8;
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>(a3, &v53);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v53);
      }

      else
      {
        v23 = *(v22 + 36);
        LOBYTE(v53) = (!isCatmullClarkSurface | v23) & 1;
        BYTE1(v53) = (isCatmullClarkSurface | HIBYTE(v23)) & 1;
        std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::insert_or_assign[abi:ne200100]<std::pair<BOOL,BOOL>&>(a3, &v55, &v53);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
      if ((BYTE8(v43) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v43 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
      if (*(&v42 + 1))
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v42 + 1));
      }

      MEMORY[0x24C1A5510](v35);
      MEMORY[0x24C1A5AA0](&v45);
    }

    *&v45 = &v39;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&v45);
    a2 = v32;
  }

  v45 = 0uLL;
  LOBYTE(v46) = 0;
  v24 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v45, 0);
  *&v43 = *(v24 + 16);
  v42 = *v24;
  v45 = v42;
  LOBYTE(v46) = v43;
  v25 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v45, 1);
  *&v40 = *(v25 + 16);
  v39 = *v25;
  v45 = v39;
  LOBYTE(v46) = v40;
  v26 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(&v45, 0x100000005);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  *&v42 = v27 & 0xFFFFFFFFFFFFDFFFLL;
  *(&v42 + 1) = v28 | 0x2000;
  *&v43 = v29;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a2, &v42, &v45);
  *&v42 = v45;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42 + 2, &v45 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42 + 3, &v45 + 3);
  v43 = v46;
  v44 = v47;
  *&v39 = v48;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 2, &v49);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 3, &v50);
  v40 = v51;
  v41 = v52;
  while (v42 != v39 || !pxrInternal__aapl__pxrReserved__::operator==(&v43, &v40))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v42, v35);
    v33 = *a1;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v33);
    realityio::internal::makeMaterialPrimToBoundSurfaceUsageMap(v34, &v33, v35, a3);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(v34, v34[1]);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v33);
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

    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v42);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45 + 8);
  return std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::map[abi:ne200100](a4, a3);
}

void sub_2474DD1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::~pair(v33 - 112);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v33 - 100));
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a27);
  MEMORY[0x24C1A5510](&a17);
  MEMORY[0x24C1A5AA0](&a33);
  a33 = &a21;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::insert_or_assign[abi:ne200100]<std::pair<BOOL,BOOL>&>(void *a1, void *a2, _WORD *a3)
{
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    v8 = a1 + 1;
    do
    {
      v9 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v7 + 28), a2);
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
    if (v8 != v6)
    {
      result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, (v8 + 28));
      if ((result & 1) == 0)
      {
        *(v8 + 18) = *a3;
        return result;
      }
    }

    v6 = v8;
  }

  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, v6, &v13, &v12, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

atomic_uint **realityio::internal::makeMaterialPrimToBoundSurfaceUsageMap@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v13 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v13);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v9, v5);
  realityio::internal::makeMaterialPrimToBoundSurfaceUsageMap(&v13, &v9, a2, &v14);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(a2, a2[1]);
  v6 = v15;
  *a2 = v14;
  a2[1] = v6;
  v7 = v16;
  a2[2] = v16;
  if (v7)
  {
    v6[2] = v4;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
    v6 = 0;
  }

  else
  {
    *a2 = v4;
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(&v14, v6);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v13);
}

void sub_2474DD5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a9);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a13);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(v13, *(v13 + 8));
  _Unwind_Resume(a1);
}

void realityio::MaterialAssetBuilder::~MaterialAssetBuilder(void **this)
{
  realityio::MaterialAssetBuilder::~MaterialAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285946910;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 44));
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  if (*(this + 327) < 0)
  {
    operator delete(this[38]);
  }

  realityio::MaterialAssetDataT::~MaterialAssetDataT((this + 35));
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

uint64_t realityio::MaterialAssetDataT::MaterialAssetDataT(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8 + 1, a2 + 1);
  v9 = *a3;
  *(a1 + 8) = *a3;
  if (v9)
  {
    RERetain();
  }

  v10 = *a4;
  *(a1 + 16) = *a4;
  if (v10)
  {
    RERetain();
  }

  return a1;
}

void sub_2474DD6A0(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v1);
  _Unwind_Resume(a1);
}

BOOL realityio::isConnectedToBaseColorAlpha(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v5 = atomic_load(&realityio::tokens::MaterialAssetBuilderTokens);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v23, this, (v5 + 32));
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v19, this, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v23) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v19) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && MEMORY[0x24C1A7400](&v23) && (MEMORY[0x24C1A7400](&v19) & 1) != 0)
  {
    realityio::findPrimWhichOriginatedConnection(v15, &v23);
    realityio::findPrimWhichOriginatedConnection(v11, &v19);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v15) && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v11))
    {
      realityio::getFileResolvedPath(&v10);
      realityio::getFileResolvedPath(&v9);
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &v9))
      {
        realityio::findOriginalSourceAttributeName(&__p, &v19);
        v6 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "a");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v6 = 0;
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v6 = 0;
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v12);
    }

    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
    }
  }

  else
  {
    v6 = 0;
  }

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

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  if (v24)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
  }

  return v6;
}

void sub_2474DD914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a25);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a29);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v29 - 80));
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v29 - 48));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&this[1], (a2 + 24));
  return this;
}

void sub_2474DDA40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_Copy(void *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[1])
  {
    v4 = this;
    this = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v10, a2);
    v5 = v4[1];
    v6 = ~*(v4 + 2);
    *(a2 + 1) = v5;
    if ((v6 & 3) != 0)
    {
      this = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 24))(v4, a2);
    }

    else
    {
      *a2 = *v4;
    }

    if (v11)
    {
      this = (*(v11 + 32))(v10);
    }
  }

  else
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      v8 = (*(a2 + 1) & 3) == 3;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      this = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
    }

    *(a2 + 1) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2474DDB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *realityio::TextureBuilder::TextureDataT::getOneTextureAsset(void *this, void *a2)
{
  v2 = a2[1];
  if (v2)
  {
    *this = v2;
    return RERetain();
  }

  if (a2[4])
  {
    v3 = *(a2[2] + 56);
    *this = v3;
    if (v3)
    {
      return RERetain();
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  *(a1 + 8) = v4;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, (a2 + 20));
  pxrInternal__aapl__pxrReserved__::TfToken::operator=((a1 + 24), (a2 + 24));
  return a1;
}

uint64_t realityio::TexcoordID::TexcoordID(uint64_t a1, uint64_t a2, int a3, char a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v8 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  realityio::TexcoordID::setIndex(a1, a3);
  *(a1 + 40) = a4;
  MEMORY[0x24C1A5E00](&v10, a2);
  if (&v10 == v8)
  {
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v8 = v10;
  }

  realityio::TexcoordID::computeNormalizedName(a1);
  if (a3 == -1)
  {
    realityio::TexcoordID::getIndexFromName(a1);
  }

  return a1;
}

void sub_2474DDD44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  if ((*v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TexcoordID::setIndex(realityio::TexcoordID *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 >= 8)
  {
    v3 = *(realityio::logObjects(this) + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = a2;
      v7 = 1024;
      v8 = 7;
      _os_log_impl(&dword_247485000, v3, OS_LOG_TYPE_DEFAULT, "Attempt to use a material buffer with index %d, which is greater that the largest allowed value %d.", v6, 0xEu);
    }

LABEL_6:
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  *(this + 1) = a2;
  if (a2 == -1 || *(this + 1))
  {
    goto LABEL_6;
  }

  v5 = *MEMORY[0x277D85DE8];

  realityio::TexcoordID::computeNormalizedName(this);
}

void sub_2474DDE80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<realityio::TexcoordID,std::__tree_node<realityio::TexcoordID,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
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

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdTyped::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  *(a1 + 8) = v4;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, (a2 + 20));
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  if ((pxrInternal__aapl__pxrReserved__::operator==(a1, v7) & 1) == 0)
  {
    v4 = 1 << a2;
    if ((*a1 & (1 << a2)) != 0)
    {
      if (((((*(a1 + 8) & v4) != 0) ^ HIDWORD(a2)) & 1) == 0)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 1;
      }
    }

    else
    {
      *a1 |= v4;
      if ((a2 & 0x100000000) != 0)
      {
        v5 = *(a1 + 8) & ~v4;
      }

      else
      {
        v5 = *(a1 + 8) | v4;
      }

      *(a1 + 8) = v5;
    }
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, (a1 + 20));
  if (!pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(&v22, &v20, 0, a2))
  {
    v22 = 0;
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v20, &v19);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v21, &v19 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(&v14, &v22, &v20, a2);
  v19 = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(&v9, &v19, &v8, a2);
  *a3 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 8), &v15);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 12), &v16);
  *(a3 + 16) = v17;
  v6 = v9;
  *(a3 + 32) = v18;
  *(a3 + 40) = v6;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 48), &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 52), &v11);
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
}

void sub_2474DE1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(&a15);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v15 - 64));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(uint64_t a1, void *a2, _DWORD *a3, __int128 *a4)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a3 + 1);
  v7 = *a4;
  *(a1 + 32) = *(a4 + 2);
  *(a1 + 16) = v7;
  if (*a1 && !pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>((a1 + 16), a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(a1);
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this)
{
  result = pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(this, (this + 8), 0, this + 2);
  if (result)
  {
    *this = 0;
    v3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 8, &v3);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 12, &v3 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference@<X0>(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this@<X0>, uint64_t a2@<X8>)
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

void sub_2474DE3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::~UsdPrimSiblingRange(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange *this)
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

void pxrInternal__aapl__pxrReserved__::UsdShadeTokensType::~UsdShadeTokensType(pxrInternal__aapl__pxrReserved__::UsdShadeTokensType *this)
{
  v39 = (this + 304);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v39);
  v2 = *(this + 37);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 36);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 35);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 34);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 33);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 32);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 31);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 30);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 29);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 28);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 27);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 26);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 25);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 24);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 23);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 22);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 21);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 20);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 19);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 18);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 17);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 16);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 15);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 14);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 13);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 12);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 11);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 10);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 9);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 8);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 7);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 6);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 5);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 4);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 3);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 2);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 1);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::pair<BOOL,BOOL>>,0>(a2 + 28);

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::pair<BOOL,BOOL>>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<std::string>(uint64_t result)
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

void *pxrInternal__aapl__pxrReserved__::VtValue::operator=(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v10, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      a2[1] = 0;
      if (v11)
      {
        (*(v11 + 32))(v10);
      }
    }

    else
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = (a1[1] & 3) == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v10, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      if (v11)
      {
        (*(v11 + 32))(v10);
      }
    }

    else
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = (a1[1] & 3) == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 32))(a1);
      }

      a1[1] = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2474DEBD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2474DF4E4(_Unwind_Exception *a1)
{
  v5 = 248;
  while (1)
  {
    v6 = *(v3 + v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 -= 8;
    if (v5 == -8)
    {
      v7 = v1[31];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[30];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[29];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[28];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[27];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[26];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[25];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[24];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[23];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[22];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[21];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[20];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[19];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[18];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[17];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[16];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[15];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[14];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[13];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[12];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[11];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[10];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[9];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[8];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[7];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[6];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[5];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[4];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[3];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[2];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[1];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__function::__func<realityio::MaterialAssetBuilder::generateInputsDescriptor(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MaterialAssetBuilder::generateInputsDescriptor(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::operator()@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v36, this, a2);
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v36))
  {
    goto LABEL_60;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v60, &v36);
  v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const(&v60);
  if (v5 & 1 | v4)
  {
    v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v60);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetSessionLayer(&v65, v6);
    v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v65);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v59, v7);
    v8 = *(&v65 + 1);
    if (*(&v65 + 1) && atomic_fetch_add_explicit((*(&v65 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v9)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    if ((*(v9 + 11) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
    v12 = ValueAtPath;
    if (!ValueAtPath || !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(ValueAtPath))
    {
      goto LABEL_17;
    }

    v13 = *(v12 + 8);
    if ((v13 & 4) != 0)
    {
      v12 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v12);
    }

    if (*v12)
    {
      v10 = 1;
    }

    else
    {
LABEL_17:
      v14 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v60);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v55, v14);
      v65 = 0uLL;
      LOBYTE(v66) = 1;
      v15 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(&v65, 0);
      v63 = *v15;
      v64 = *(v15 + 16);
      v65 = v63;
      LOBYTE(v66) = v64;
      v16 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(&v65, 8);
      v17 = *v16;
      v49 = *(v16 + 16);
      v48 = v17;
      pxrInternal__aapl__pxrReserved__::UsdPrimRange::UsdPrimRange(v53, &v55, &v48);
      tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::concurrent_unordered_base(&v65, 8uLL, &v63);
      tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::concurrent_unordered_base(&v63, 8uLL, &v48);
      pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(v53, &v48);
      while (1)
      {
        *&v45 = v53[1];
        *(&v45 + 1) = v53;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        LODWORD(v47) = 0;
        WORD2(v47) = 0;
        if (v48 == v45)
        {
          v10 = 1;
          if (v49 == v46 && !v50 && !v51)
          {
            v10 = v52;
          }
        }

        else
        {
          v10 = 1;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v18 = pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->(&v48, &v45);
        pxrInternal__aapl__pxrReserved__::UsdGeomGprim::_GetStaticTfType(v18);
        pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
        if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
        {
          IsA = 1;
        }

        else
        {
          v20 = pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->(&v48, v41);
          pxrInternal__aapl__pxrReserved__::UsdGeomSubset::_GetStaticTfType(v20);
          pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
          IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
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
        }

        if ((v47 & 7) != 0)
        {
          atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
        if (*(&v45 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v45 + 1));
        }

        if (IsA)
        {
          v62 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit((v48 + 48), 1uLL, memory_order_relaxed);
          }

          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v41, &v62, &v49);
          if (v62)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v62);
          }

          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v47 = 0;
          *&v45 = MEMORY[0x277D867B8] + 16;
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

          if (!atomic_load(&realityio::tokens::MaterialAssetBuilderTokens))
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialAssetBuilderTokens_StaticTokenType>>::_TryToCreateData();
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial();
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(v41, &v62);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v36, &v40);
          v22 = v62;
          v23 = v40;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v62);
          MEMORY[0x24C1A5510](v41);
          MEMORY[0x24C1A5AA0](&v45);
          if (v22 == v23)
          {
            break;
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v48);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v49);
      tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(&v63, v24);
      tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(&v65, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v54);
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
    }

    v26 = v59;
    v59 = 0;
    if (v26)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v26, *(v26 + 8));
      MEMORY[0x24C1A91B0](v26, 0x1020C4062D53EE8);
    }
  }

  else
  {
    v10 = 0;
  }

  v27 = v61;
  if (v61 && atomic_fetch_add_explicit((v61 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v27 + 8))(v27);
  }

  if (v10)
  {
    if (realityio::hasMaterialXSurface(&v36, v5))
    {
      realityio::generateMtlxInputsDescriptorPaths(&v36, a3);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    realityio::createMaterialInputs(&v55, &v63);
    v30 = v63;
    if (v63 != (&v63 + 8))
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v65, v30 + 8);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v65 + 1, v30 + 9);
        *(&v65 + 1) = 0;
        v66 = 0;
        v67 = 0;
        std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v65 + 8, *(v30 + 5), *(v30 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v30 + 6) - *(v30 + 5)) >> 4));
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v34, &v65);
        v53[0] = &v65 + 1;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v53);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v65);
        v31 = *(v30 + 1);
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v32 = *(v30 + 2);
            v33 = *v32 == v30;
            v30 = v32;
          }

          while (!v33);
        }

        v30 = v32;
      }

      while (v32 != (&v63 + 8));
    }

    if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v34, &v55);
    }

    std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(a3, v34);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::destroy(*(&v63 + 1));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v55);
  }

  else
  {
LABEL_60:
    std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(a3, v34);
  }

  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v34);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
  result = v37;
  if (v37)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2474E0128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MaterialAssetBuilder::generateInputsDescriptor(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MaterialAssetBuilder::generateInputsDescriptor(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin@<X0>(pxrInternal__aapl__pxrReserved__::UsdPrimRange *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, this + 5);
  v5 = *(this + 12);
  *a2 = v4;
  *(a2 + 8) = this;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), &v8);
  *(a2 + 24) = v5;
  *(a2 + 28) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator->@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v6, &v11, (a1 + 16));
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  *a2 = v6;
  v3 = v7;
  *(a2 + 8) = v7;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 16), &v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 20), &v9);
  v4 = v10;
  *(a2 + 24) = v10;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  result = v7;
  if (v7)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return result;
}

void sub_2474E0558(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::_PtrProxy::~_PtrProxy(pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::_PtrProxy *this)
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

uint64_t (*pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const(void *a1))(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return 0;
  }

  if ((*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14) & (*a1 != 0)) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::_FetchPointer;
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::_FetchPointer(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return 0;
  }

  if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14))
  {
    return *a1;
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsDisjunction::operator|=(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if ((pxrInternal__aapl__pxrReserved__::operator==(a1, v7) & 1) == 0)
  {
    v4 = 1 << a2;
    if ((*a1 & (1 << a2)) != 0)
    {
      if (((*(a1 + 8) & v4) != 0) != (BYTE4(a2) & 1))
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }
    }

    else
    {
      *a1 |= v4;
      if ((a2 & 0x100000000) != 0)
      {
        v5 = *(a1 + 8) | v4;
      }

      else
      {
        v5 = *(a1 + 8) & ~v4;
      }

      *(a1 + 8) = v5;
    }
  }

  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::UsdPrimRange(uint64_t a1, uint64_t a2, void *a3)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 40) & 7;
  v8 = *(v6 + 40) & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    goto LABEL_21;
  }

  if (!v7 || v8 == 0)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  while (1)
  {
    v11 = *(v8 + 40);
    v8 = v11 & 0xFFFFFFFFFFFFFFF8;
    if ((v11 & 7) == 0 && v8 != 0)
    {
      break;
    }

    if (v8)
    {
      v13 = (v11 & 7) == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::_Init(a1, v6, v8, (a2 + 16), a3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::_Init(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, a4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, a4 + 1);
  v8 = *a5;
  v9 = a5[1];
  if (*a1)
  {
    v10 = a5[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v8 & 0x2000) != 0 || (v9 & 0x2000) == 0))
    {
      v8 |= 0x2000uLL;
      v9 &= ~0x2000uLL;
    }
  }

  else
  {
    LOBYTE(v10) = *(a5 + 16);
  }

  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 52) = 0;
  *(a1 + 48) = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(a1, v12);
  if (v12[0] != *(a1 + 8) && !pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>((a1 + 24), v12))
  {
    v13[12] = 1;
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(v12);
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::set_begin(a1, v12);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v13);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::set_begin(pxrInternal__aapl__pxrReserved__::UsdPrimRange *this, const pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator *a2)
{
  if (*(a2 + 29) == 1)
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  *this = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 16, a2 + 4);
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(this + 20, a2 + 5);
  *(this + 12) = *(a2 + 6);
  return result;
}

uint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::concurrent_unordered_base(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x20);
  v5[3] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(a1, 0, &v11);
  return a1;
}

void tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2 | 1;
  if (HIDWORD(a2))
  {
    v5 = HIDWORD(a2);
  }

  if (v5 >= 0x10000)
  {
    v6 = (32 * (HIDWORD(a2) != 0)) | 0x10;
  }

  else
  {
    v6 = 32 * (HIDWORD(a2) != 0);
  }

  if (v5 >= 0x10000)
  {
    v5 >>= 16;
  }

  if (v5 >= 0x100)
  {
    v6 |= 8uLL;
    v5 >>= 8;
  }

  if (v5 >= 0x10)
  {
    v6 |= 4uLL;
    v5 >>= 4;
  }

  if (v5 >= 4)
  {
    v6 += 2;
    v5 >>= 2;
  }

  v7 = ((v5 >> 1) & 1) + v6;
  v8 = a1 + 48;
  v9 = *(a1 + 48 + 8 * v7);
  __dmb(0xBu);
  if (!v9)
  {
    if (v7)
    {
      v10 = 8 << v7;
    }

    else
    {
      v10 = 16;
    }

    v11 = tbb::internal::allocate_via_handler_v3(v10);
    bzero(v11, v10);
    v13 = (v8 + 8 * v7);
    while (1)
    {
      v14 = 0;
      atomic_compare_exchange_strong(v13, &v14, v11);
      if (!v14)
      {
        break;
      }

      if (atomic_fetch_add_explicit(v13, 0, memory_order_relaxed))
      {
        tbb::internal::deallocate_via_handler_v3(v11, v12);
        break;
      }
    }
  }

  v15 = *(v8 + 8 * v7);
  __dmb(0xBu);
  *(v15 + 8 * (a2 - ((1 << v7) & 0x1FFFFFFFFFFFFFFELL))) = *a3;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::~split_ordered_list(uint64_t a1)
{
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::clear(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::destroy_node(a1, v2);
  return a1;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::destroy_node(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::destroy_node(int a1, tbb::internal *this)
{
  if (*(this + 24))
  {
    std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>::~pair(this + 8);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    v9 = (v2 + 32);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding>::__destroy_vector::operator()[abi:ne200100](&v9);
    v9 = (v2 + 8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding>::__destroy_vector::operator()[abi:ne200100](&v9);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = v3[5];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v3[4];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v3 + 3));
      v6 = v3[2];
      if (v6)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v7 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v3);
      MEMORY[0x24C1A91B0](v7, 0x1060C4007B4A545);
    }

    MEMORY[0x24C1A91B0](v2, 0x20C400FA29667);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::~CollectionBinding((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding::~CollectionBinding(pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::CollectionBinding *this)
{
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 32);
  v3 = *(this + 3);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

uint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::concurrent_unordered_base(uint64_t a1, unint64_t a2, _WORD *a3)
{
  *a1 = *a3;
  *(a1 + 24) = 0;
  v5 = tbb::internal::allocate_via_handler_v3(0x20);
  v5[3] = 0;
  *v5 = 0;
  *(a1 + 32) = v5;
  *(a1 + 44) = 1082130432;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v7 = 2 * v6 - 1;
  v8 = HIDWORD(v7) != 0;
  __dmb(0xBu);
  if (HIDWORD(v7))
  {
    v7 >>= 32;
  }

  if (v7 >= 0x10000)
  {
    v9 = (32 * v8) | 0x10;
  }

  else
  {
    v9 = 32 * v8;
  }

  if (v7 >= 0x10000)
  {
    v7 >>= 16;
  }

  if (v7 >= 0x100)
  {
    v9 |= 8u;
    v7 >>= 8;
  }

  if (v7 >= 0x10)
  {
    v9 |= 4u;
    v7 >>= 4;
  }

  if (v7 >= 4)
  {
    v9 += 2;
    v7 >>= 2;
  }

  *(a1 + 8) = 1 << (((v7 & 2) != 0) + v9);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v11 = *(a1 + 32);
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::set_bucket(a1, 0, &v11);
  return a1;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::~split_ordered_list(uint64_t a1)
{
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::clear(a1);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::destroy_node(a1, v2);
  return a1;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *v2;
  *v2 = 0;
  if (v3)
  {
    do
    {
      v4 = *v3;
      result = tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::destroy_node(v1, v3);
      v3 = v4;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::destroy_node(int a1, tbb::internal *this)
{
  if (*(this + 24))
  {
    v3 = *(this + 2);
    *(this + 2) = 0;
    if (v3)
    {
      v7 = (v3 + 120);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl>>::__destroy_vector::operator()[abi:ne200100](&v7);
      v4 = *(v3 + 96);
      if (v4)
      {
        *(v3 + 104) = v4;
        operator delete(v4);
      }

      v5 = *(v3 + 88);
      if (v5 && atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v5 + 8))(v5);
      }

      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v3 + 48, *(v3 + 56));
      std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::~__hash_table(v3 + 8);
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v3, 0x10F0C4054F5A275);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
  }

  return tbb::internal::deallocate_via_handler_v3(this, this);
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPathExpressionEval<pxrInternal__aapl__pxrReserved__::UsdObject>::_PatternImpl>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = (v2 - 56);
    do
    {
      v7 = v4 + 4;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::UsdObject>>::__destroy_vector::operator()[abi:ne200100](&v7);
      v7 = v4;
      std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__destroy_vector::operator()[abi:ne200100](&v7);
      v7 = v4 - 3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      v5 = *(v4 - 6);
      if (v5)
      {
        *(v4 - 5) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 9);
      if (v6)
      {
        *(v4 - 8) = v6;
        operator delete(v6);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v4 - 10));
      v4 -= 17;
    }

    while (result != v3);
  }

  v1[1] = v3;
  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::UsdObject>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::UsdObject>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfPredicateProgram<pxrInternal__aapl__pxrReserved__::UsdObject>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  std::vector<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::UsdObject const&)>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

void std::vector<std::function<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::UsdObject const&)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::UsdObject const&)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<pxrInternal__aapl__pxrReserved__::SdfPredicateFunctionResult ()(pxrInternal__aapl__pxrReserved__::UsdObject const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<pxrInternal__aapl__pxrReserved__::ArchRegex>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = MEMORY[0x24C1A6370](v4 - 48);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a1, *a2);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>(a2 + 28);

    operator delete(a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(uint64_t a1, void *a2)
{
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::internal_clear(a1, a2);
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>>::~split_ordered_list(a1 + 16);
  return a1;
}

uint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::internal_clear(uint64_t result, void *a2)
{
  v2 = 0;
  v3 = result + 48;
  do
  {
    v4 = *(v3 + 8 * v2);
    __dmb(0xBu);
    if (v4)
    {
      v5 = 1 << v2;
      if (!v2)
      {
        v5 = 2;
      }

      do
      {
        v6 = *(v3 + 8 * v2);
        __dmb(0xBu);
        --v5;
      }

      while (v5);
      v7 = *(v3 + 8 * v2);
      __dmb(0xBu);
      result = tbb::internal::deallocate_via_handler_v3(v7, a2);
      __dmb(0xBu);
      *(v3 + 8 * v2) = 0;
    }

    ++v2;
  }

  while (v2 != 64);
  return result;
}

uint64_t tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(uint64_t a1, void *a2)
{
  tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::internal_clear(a1, a2);
  tbb::interface5::internal::split_ordered_list<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>>::~split_ordered_list(a1 + 16);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimRange::~UsdPrimRange(pxrInternal__aapl__pxrReserved__::UsdPrimRange *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
}

uint64_t std::unordered_set<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a1, i + 4);
  }

  return a1;
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474E1834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

void sub_2474E1A14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::vector<std::pair<std::string,std::string>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));
    operator delete(a1);
  }
}

void *std::__shared_ptr_emplace<realityio::CustomInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,std::function<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)> &,realityio::InputDescriptor::Optionality,std::allocator<realityio::CustomInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945CC0;
  std::allocator<realityio::CustomInputDescriptor>::construct[abi:ne200100]<realityio::CustomInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,std::function<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)> &,realityio::InputDescriptor::Optionality>(&v7, a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::allocator<realityio::CustomInputDescriptor>::construct[abi:ne200100]<realityio::CustomInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,std::function<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)> &,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__value_func[abi:ne200100](v12, a5);
  realityio::CustomInputDescriptor::CustomInputDescriptor(a2, &__p, a4, v12, *a6);
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<realityio::MaterialAssetBuilder::MaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MaterialAssetBuilder::MaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285946A08;
  a2[1] = v2;
  return result;
}

void sub_2474E2060(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MaterialAssetBuilder::MaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::MaterialAssetBuilder::MaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2474E228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::MaterialAssetBuilder::MaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::MaterialAssetBuilder::MaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::MaterialAssetDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285946B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::Outputs::getRawValue<realityio::MaterialAssetDataT *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

void sub_2474E24AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1, __p, a2);
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

void sub_2474E266C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(v36))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(v36);
        *a3 = 1;
        *(a3 + 8) = *v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4f>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(v14);
          *a3 = 1;
          *(a3 + 8) = *v15;
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

void sub_2474E2A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 67)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void realityio::getAttributeValue<float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<float>(a1, __p, a2);
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

void sub_2474E2E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(v36))
      {
        v7 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(v36);
        *a3 = 1;
        *(a3 + 8) = v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827B0], v12))
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<float>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(v14);
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

void sub_2474E3224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B0]);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<float>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827B0], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<float>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void realityio::Outputs::getRawValue<realityio::TextureBuilder::TextureDataT const*>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

void sub_2474E35EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<realityio::TextureBuilder::TextureDataT const*>::__init_with_size[abi:ne200100]<realityio::TextureBuilder::TextureDataT const**,realityio::TextureBuilder::TextureDataT const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<realityio::TextureBuilder::TextureDataT const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2474E367C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<realityio::TextureBuilder::TextureDataT const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

BOOL std::__tree<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TextureBuilder::TextureDataT const*>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TextureBuilder::TextureDataT const*>>(uint64_t a1, const void **a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v3 + 4))
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    result = std::less<std::string>::operator()[abi:ne200100](a1, v6 + 4, a2);
    if (!result)
    {
      break;
    }

    v4 = v6 + 1;
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t pxrInternal__aapl__pxrReserved__::Vt_DefaultValueHolder::Create<pxrInternal__aapl__pxrReserved__::VtDictionary>@<X0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::New<pxrInternal__aapl__pxrReserved__::VtDictionary>(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  v4[0] = 0;
  return v2(0);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::New<pxrInternal__aapl__pxrReserved__::VtDictionary>@<X0>(void *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v4);
  result = malloc_type_malloc(8uLL, 0xED746F3uLL);
  v3 = result;
  if (v4)
  {
    result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  *v3 = 0;
  *a1 = v3;
  a1[1] = pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtDictionary>;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtDictionary>(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
      MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
    }

    free(a1);
  }
}

void *pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(void *result)
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
    v6[3] = "void pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string, pxrInternal__aapl__pxrReserved__::VtValue, std::less<void>> *, std::__map_iterator<std::__tree_iterator<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, std::__tree_node<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, void *> *, long>>>::increment() [UnderlyingMapPtr = std::map<std::string, pxrInternal__aapl__pxrReserved__::VtValue, std::less<void>> *, UnderlyingIterator = std::__map_iterator<std::__tree_iterator<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, std::__tree_node<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, void *> *, long>>]";
    v7 = 0;
    v8 = 4;
    return pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v6, "Attempted invalid increment operation on a VtDictionary iterator");
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<BOOL>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::vector<realityio::TexcoordID>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<realityio::TexcoordID>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<realityio::TexcoordID>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 48)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }

    v5 = *(i - 40);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

void std::__tree<realityio::TexcoordID>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<realityio::TexcoordID>::destroy(a1, *a2);
    std::__tree<realityio::TexcoordID>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<realityio::TexcoordID,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<realityio::TexcoordID,0>(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t std::__tree<realityio::TexcoordID>::__emplace_unique_key_args<realityio::TexcoordID,realityio::TexcoordID>(uint64_t a1, realityio::TexcoordID *a2)
{
  v2 = *std::__tree<realityio::TexcoordID>::__find_equal<realityio::TexcoordID>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<realityio::TexcoordID>::__find_equal<realityio::TexcoordID>(uint64_t a1, void *a2, realityio::TexcoordID *a3)
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
        if (!realityio::TexcoordID::operator<(a3, (v4 + 4)))
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

      if (!realityio::TexcoordID::operator<((v7 + 4), a3))
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

uint64_t std::unique_ptr<std::__tree_node<realityio::TexcoordID,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<realityio::TexcoordID,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<realityio::TexcoordID,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TexcoordID>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *(a4 + 8) = *(v4 + 8);
      *(v4 + 8) = 0;
      v5 = *(v4 + 16);
      *(a4 + 32) = *(v4 + 32);
      *(a4 + 16) = v5;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      *(a4 + 40) = *(v4 + 40);
      v4 += 48;
      a4 += 48;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*,realityio::TexcoordID*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*,realityio::TexcoordID*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      if (*(v4 + 39) < 0)
      {
        operator delete(*(v4 + 16));
      }

      v5 = *(v4 + 8);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 += 48;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<realityio::TexcoordID>,std::reverse_iterator<realityio::TexcoordID*>,std::reverse_iterator<realityio::TexcoordID*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<realityio::TexcoordID>,std::reverse_iterator<realityio::TexcoordID*>,std::reverse_iterator<realityio::TexcoordID*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 32));
      }

      v7 = *(v6 - 40);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 -= 48;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<realityio::TexcoordID>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }

    v4 = *(i - 40);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<realityio::TexcoordID,std::__tree_node<realityio::TexcoordID,void *> *,long>,std::__tree_const_iterator<realityio::TexcoordID,std::__tree_node<realityio::TexcoordID,void *> *,long>,std::back_insert_iterator<std::vector<realityio::TexcoordID>>>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a4[1];
    do
    {
      if (v7 >= a4[2])
      {
        v7 = std::vector<realityio::TexcoordID>::__emplace_back_slow_path<realityio::TexcoordID const&>(a4, (v6 + 4));
      }

      else
      {
        realityio::TexcoordID::TexcoordID(v7, (v6 + 4));
        v7 += 48;
        a4[1] = v7;
      }

      a4[1] = v7;
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != a3);
  }

  return a3;
}

uint64_t std::vector<realityio::TexcoordID>::__emplace_back_slow_path<realityio::TexcoordID const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TexcoordID>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  realityio::TexcoordID::TexcoordID(48 * v2, a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<realityio::TexcoordID>::~__split_buffer(&v13);
  return v12;
}

void sub_2474E42C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<realityio::TexcoordID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::TexcoordID::TexcoordID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
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
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(a1, __p, a2);
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

void sub_2474E450C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v37 = 0;
    v6 = *a2;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>(v36))
      {
        v7 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(v36);
        *a3 = 1;
        *(a3 + 8) = *v7;
        goto LABEL_38;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v36);
      {
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2f>(v36);
        v14 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
        if (v35.__r_.__value_.__l.__size_)
        {
          v15 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(v14);
          *a3 = 1;
          *(a3 + 8) = *v15;
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

void sub_2474E4930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 69)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v5);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void *realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(void *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void *std::map<std::string,char const*>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,char const*>,std::__map_value_compare<std::string,std::__value_type<std::string,char const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,char const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,char const*> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,char const*>,std::__map_value_compare<std::string,std::__value_type<std::string,char const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,char const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,char const*> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,char const*>,std::__map_value_compare<std::string,std::__value_type<std::string,char const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,char const*>>>::__construct_node<std::pair<std::string const,char const*> const&>();
  }

  return result;
}

void sub_2474E4CE8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::createDefaultPbrMaterialAsset(realityio::MaterialAssetBuilder *,realityio::Inputs *,BOOL)::$_0,std::allocator<realityio::createDefaultPbrMaterialAsset(realityio::MaterialAssetBuilder *,realityio::Inputs *,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285946B98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::createDefaultPbrMaterialAsset(realityio::MaterialAssetBuilder *,realityio::Inputs *,BOOL)::$_0,std::allocator<realityio::createDefaultPbrMaterialAsset(realityio::MaterialAssetBuilder *,realityio::Inputs *,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = **(a1 + 8);
  v3 = **(a1 + 16);
  AssetHandle = REAssetManagerCreateAssetHandle();
  v21 = AssetHandle;
  if (AssetHandle)
  {
    v5 = **(a1 + 24);
    v20 = AssetHandle;
    RERetain();
    realityio::Builder::addAsset(v5, &v20, 0);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v20);
    if (*(*(*(**(a1 + 32) + 40) + 16) + 40))
    {
      realityio::LiveSceneManager::queueForDeferredAssetLoad();
    }

    v19 = REMaterialAssetBuilderCreate();
    if (v19)
    {
      Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((**(a1 + 32) + 32));
      if (*(Name + 23) < 0)
      {
        v7 = *Name;
      }

      REMaterialAssetBuilderSetName();
      REMaterialAssetBuilderSetMaterialDefinition();
      REMaterialAssetBuilderSetColor4F();
      REMaterialAssetBuilderSetColor3F();
      __asm { FMOV            V0.4S, #1.0 }

      REMaterialAssetBuilderSetFloat4();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFloat();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      REMaterialAssetBuilderSetFunctionConstant();
      v13 = **(a1 + 16);
      v14 = REAssetManagerMaterialAssetBuilderBuildAsync();
      v18 = v14;
      v15 = *(a1 + 40);
      v16 = *v15;
      if (*v15 != v14)
      {
        *v15 = v14;
        v18 = v16;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v18);
      if (**(a1 + 40) && *(*(*(**(a1 + 32) + 40) + 16) + 40))
      {
        realityio::LiveSceneManager::queueForDeferredAssetLoad();
      }
    }

    realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v19);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v21);
}

void sub_2474E50F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(va);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::createDefaultPbrMaterialAsset(realityio::MaterialAssetBuilder *,realityio::Inputs *,BOOL)::$_0,std::allocator<realityio::createDefaultPbrMaterialAsset(realityio::MaterialAssetBuilder *,realityio::Inputs *,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomSubset>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
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

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>(uint64_t a1, void *a2)
{
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::pair<BOOL,BOOL>>,0>(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a5, (a2 + 28)))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((a2 + 28), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a5, (v15 + 28)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v12 + 28), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a3, a5);
}

void *std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::pair<BOOL,BOOL>> const&>(v5, v5 + 1, (v4 + 28));
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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::pair<BOOL,BOOL>> const&>(void *a1, void *a2, void *a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::pair<BOOL,BOOL>> const&>();
  }

  return v3;
}

uint64_t realityio::UsdStageStateTracker::UsdStageStateTracker(uint64_t a1, void *a2)
{
  *a1 = &unk_285946C48;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((a1 + 8));
  v7 = *v3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v7);
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  realityio::UsdStageDelta::UsdStageDelta((a1 + 16), &v7, &v5);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(&v5, v6[0]);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v7);
  *(a1 + 104) = 850045863;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  return a1;
}

void sub_2474E5798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, atomic_uint *a12)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(&a9, a10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a12);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v12);
  _Unwind_Resume(a1);
}

void realityio::UsdStageStateTracker::updateWithStageDelta(realityio::UsdStageStateTracker *this, const realityio::UsdStageDelta *a2)
{
  if (*(this + 168) == 1)
  {
    std::mutex::lock((this + 104));
    realityio::UsdStageDelta::updateWithStageDelta((this + 16), a2);

    std::mutex::unlock((this + 104));
  }
}

void realityio::UsdStageStateTracker::getAndCleanAccumulatedStageDelta(realityio::UsdStageStateTracker *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 104));
  v4 = *(this + 3);
  *a2 = &unk_285949620;
  a2[1] = v4;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(a2 + 1);
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::map[abi:ne200100](a2 + 2, this + 32);
  a2[5] = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set((a2 + 6), this + 64);
  v8 = *(this + 1);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v8);
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  realityio::UsdStageDelta::UsdStageDelta(&v9, &v8, &v6);
  v5 = *(this + 3);
  *(this + 3) = v10[0];
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v10);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(this + 24, v5);
  if ((this + 16) != &v9)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,void *> *,long>>(this + 4, v10[1], v11);
    *(this + 24) = v12;
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>(this + 8, v11[5], 0);
  }

  realityio::UsdStageDelta::~UsdStageDelta(&v9);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(&v6, v7[0]);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v8);
  std::mutex::unlock((this + 104));
}

void sub_2474E5988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(va, v6);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va1);
  realityio::UsdStageDelta::~UsdStageDelta(v2);
  _Unwind_Resume(a1);
}

CFStringRef realityio::UsdStageStateTracker::description@<X0>(realityio::UsdStageStateTracker *this@<X0>, CFStringRef *a2@<X8>)
{
  *a2 = 0;
  result = CFStringCreateWithFormat(0, 0, @"<UsdStageStateTracker: %p { stage: %p }>", this, this + 8);
  *a2 = result;
  return result;
}

void realityio::UsdStageStateTracker::~UsdStageStateTracker(realityio::UsdStageStateTracker *this)
{
  *this = &unk_285946C48;
  v2 = (this + 8);
  std::mutex::~mutex((this + 104));
  realityio::UsdStageDelta::~UsdStageDelta((this + 16));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v2);
}

{
  *this = &unk_285946C48;
  v2 = (this + 8);
  std::mutex::~mutex((this + 104));
  realityio::UsdStageDelta::~UsdStageDelta((this + 16));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v2);

  JUMPOUT(0x24C1A91B0);
}

void *std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::UsdPrimDelta> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::UsdPrimDelta> const&>(void *a1, void *a2, void *a3)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::UsdPrimDelta> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a5, a2 + 4))
  {
    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a3, a5);
}

void sub_2474E5E94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::UsdPrimDelta>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 8) = &unk_285957E40;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), (a2 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), (a2 + 20));
  *(a1 + 24) = *(a2 + 24);
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::map[abi:ne200100]((a1 + 32), a2 + 32);
  *(a1 + 56) = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(a1 + 64, a2 + 64);
  return a1;
}

void sub_2474E5F60(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy((v1 + 4), v1[5]);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v1 + 2));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v1);
  _Unwind_Resume(a1);
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>(void *a1, void *a2, uint64_t *a3)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a3, a5);
}

void sub_2474E6310(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta>::pair[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = a2[2];
  a1[1] = &unk_285952578;
  a1[2] = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[3] = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set((a1 + 4), (a2 + 4));
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    realityio::UsdPropertyDelta::~UsdPropertyDelta((a2 + 5));
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

void realityio::UsdPropertyDelta::~UsdPropertyDelta(realityio::UsdPropertyDelta *this)
{
  *this = &unk_285952578;
  *(this + 2) = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 24);
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

{
  realityio::UsdPropertyDelta::~UsdPropertyDelta(this);

  JUMPOUT(0x24C1A91B0);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(a1, a2[1]);
    realityio::UsdPropertyDelta::~UsdPropertyDelta((a2 + 5));
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    realityio::UsdPrimDelta::~UsdPrimDelta((__p + 40));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((__p + 32));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void realityio::UsdPrimDelta::~UsdPrimDelta(realityio::UsdPrimDelta *this)
{
  *this = &unk_285957E40;
  *(this + 6) = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 56);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(this + 24, *(this + 4));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
}

{
  realityio::UsdPrimDelta::~UsdPrimDelta(this);

  JUMPOUT(0x24C1A91B0);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(a1, a2[1]);
    realityio::UsdPrimDelta::~UsdPrimDelta((a2 + 5));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v16 = result;
    v17 = v9;
    v18 = v9;
    if (v9)
    {
      v17 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v9);
      if (a2 != a3)
      {
        v10 = a2;
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v9 + 4), v10 + 8);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v9 + 36, v10 + 9);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v9 + 6), v10 + 12);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v9 + 52, v10 + 13);
          *(v9 + 56) = *(v10 + 56);
          if (v9 != v10)
          {
            std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *> *,long>>(v9 + 8, v10[8], v10 + 9);
            *(v9 + 32) = *(v10 + 32);
            std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>(v9 + 12, v10[14], 0);
            v9 = v18;
          }

          v11 = *v8;
          v12 = v5 + 1;
          v13 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v12 = v11;
                if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v9 + 4, v11 + 4))
                {
                  break;
                }

                v11 = *v12;
                v13 = v12;
                if (!*v12)
                {
                  goto LABEL_16;
                }
              }

              v11 = v12[1];
            }

            while (v11);
            v13 = v12 + 1;
          }

LABEL_16:
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(v5, v12, v13, v9);
          v9 = v17;
          v18 = v17;
          if (v17)
          {
            v17 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v17);
          }

          v14 = v10[1];
          if (v14)
          {
            do
            {
              a2 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              a2 = v10[2];
              v15 = *a2 == v10;
              v10 = a2;
            }

            while (!v15);
          }

          if (!v9)
          {
            break;
          }

          v10 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v16);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::UsdPrimDelta> const&>();
  }

  return result;
}

uint64_t **std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::operator=[abi:ne200100]((v8 + 4), (v9 + 4));
          leaf_high = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__emplace_multi<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,realityio::UsdPropertyDelta> const&>();
  }

  return result;
}

uint64_t std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfToken::operator=(a1, a2);
  pxrInternal__aapl__pxrReserved__::TfToken::operator=((a1 + 16), (a2 + 16));
  if (a1 != a2)
  {
    *(a1 + 64) = *(a2 + 64);
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>((a1 + 32), *(a2 + 48), 0);
  }

  return a1;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_2474E6C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::TfToken::operator=(v8 + 2, v4 + 2);
        v10 = *v8;
        std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_multi<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }
}

void sub_2474E6DD4(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[2];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[2] & 0xFFFFFFFFFFFFFFF8));
  a2[1] = v5;
  inserted = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && (v16[2] ^ *a3) < 8uLL;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2474E737C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::UsdStageDelta::~UsdStageDelta(realityio::UsdStageDelta *this)
{
  *this = &unk_285949620;
  *(this + 5) = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 48);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(this + 16, *(this + 3));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 1);
}

{
  realityio::UsdStageDelta::~UsdStageDelta(this);

  JUMPOUT(0x24C1A91B0);
}

void realityio::tokens::TextureBuilderTokens_StaticTokenType::~TextureBuilderTokens_StaticTokenType(realityio::tokens::TextureBuilderTokens_StaticTokenType *this)
{
  v31 = (this + 240);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v31);
  v2 = *(this + 29);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 28);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 27);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 26);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 25);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 24);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 23);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 22);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 21);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 20);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 19);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 18);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 17);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 16);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 15);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 14);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 13);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 12);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 11);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 10);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 9);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 8);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 7);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 6);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 5);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 4);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 3);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 2);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 1);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::TextureBuilderTokens_StaticTokenType *realityio::tokens::TextureBuilderTokens_StaticTokenType::TextureBuilderTokens_StaticTokenType(realityio::tokens::TextureBuilderTokens_StaticTokenType *this)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Shader", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "UsdUVTexture", 0);
  MEMORY[0x24C1A5DF0](this + 16, "scale", 0);
  MEMORY[0x24C1A5DF0](this + 24, "sourceColorSpace", 0);
  MEMORY[0x24C1A5DF0](this + 32, "sRGB", 0);
  MEMORY[0x24C1A5DF0](this + 40, "file", 0);
  MEMORY[0x24C1A5DF0](this + 48, "wrapS", 0);
  MEMORY[0x24C1A5DF0](this + 56, "wrapT", 0);
  MEMORY[0x24C1A5DF0](this + 64, "black", 0);
  MEMORY[0x24C1A5DF0](this + 72, "clamp", 0);
  MEMORY[0x24C1A5DF0](this + 80, "repeat", 0);
  MEMORY[0x24C1A5DF0](this + 88, "mirror", 0);
  MEMORY[0x24C1A5DF0](this + 96, "useMetadata", 0);
  MEMORY[0x24C1A5DF0](this + 104, "varname", 0);
  MEMORY[0x24C1A5DF0](this + 112, "rotation", 0);
  MEMORY[0x24C1A5DF0](this + 120, "translation", 0);
  MEMORY[0x24C1A5DF0](this + 128, "UsdTransform2d", 0);
  MEMORY[0x24C1A5DF0](this + 136, "UsdPrimvarReader_float2", 0);
  MEMORY[0x24C1A5DF0](this + 144, "ND_constant_filename", 0);
  MEMORY[0x24C1A5DF0](this + 152, "ND_dot_filename", 0);
  MEMORY[0x24C1A5DF0](this + 160, "value", 0);
  MEMORY[0x24C1A5DF0](this + 168, "in", 0);
  MEMORY[0x24C1A5DF0](this + 176, "color3", 0);
  MEMORY[0x24C1A5DF0](this + 184, "color4", 0);
  MEMORY[0x24C1A5DF0](this + 192, "float", 0);
  MEMORY[0x24C1A5DF0](this + 200, "vector2", 0);
  MEMORY[0x24C1A5DF0](this + 208, "vector3", 0);
  MEMORY[0x24C1A5DF0](this + 216, "vector4", 0);
  MEMORY[0x24C1A5DF0](this + 224, "asset", 0);
  MEMORY[0x24C1A5DF0](this + 232, "raw", 0);
  v3 = (this + 240);
  v4 = *this;
  v38 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v39 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v40 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v41 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v42 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v43 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v44 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v45 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v46 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v47 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v48 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v49 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v50 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v51 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v52 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v53 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v54 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v55 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v56 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v57 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v58 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 21);
  v59 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 22);
  v60 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 23);
  v61 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 24);
  v62 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 25);
  v63 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 26);
  v64 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 27);
  v65 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 28);
  v66 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 29);
  v67 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v38, &v68, 0x1EuLL);
  for (i = 232; i != -8; i -= 8)
  {
    v35 = *(&v38 + i);
    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2474E7FE0(_Unwind_Exception *a1)
{
  v3 = 232;
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
      v5 = v1[29];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[28];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[27];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[26];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[25];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[24];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[23];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[22];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[21];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[20];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[19];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[18];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[17];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[16];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[15];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[14];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[13];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[12];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[11];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[10];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[9];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[8];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[7];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[6];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[5];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[4];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[3];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[2];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[1];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}