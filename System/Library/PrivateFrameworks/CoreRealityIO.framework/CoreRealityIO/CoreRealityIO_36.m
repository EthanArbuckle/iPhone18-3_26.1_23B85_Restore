void sub_2476E6E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<long long>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
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
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<long long>(v54))
      {
        v9 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<long long>(v54);
        *a1 = 1;
        *(a1 + 8) = v9;
        goto LABEL_47;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v54);
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827F8], v19))
      {
        v20 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<long long>(v54);
        v21 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v52, v20);
        if (v52.__r_.__value_.__l.__size_)
        {
          v22 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<long long>(v21);
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

void sub_2476E7488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::setReString(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  v19 = *a3;
  v20 = v4;
  Name = RETypeInfoGetName();
  std::string::basic_string[abi:ne200100]<0>(&__p, Name);
  if ((v18 & 0x80000000) == 0)
  {
    if (v18 != 5)
    {
      if (v18 != 8)
      {
        if (v18 != 13)
        {
          v11 = 0;
          goto LABEL_48;
        }

        if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
        {
          goto LABEL_39;
        }

        goto LABEL_19;
      }

      p_p = &__p;
      goto LABEL_31;
    }

    if (__p != 1918986339 || BYTE4(__p) != 42)
    {
      goto LABEL_39;
    }

LABEL_40:
    if (*(a1 + 23) < 0)
    {
      v14 = *a1;
    }

    RENullTerminatedStringSet();
    goto LABEL_43;
  }

  if (*(&__p + 1) == 5)
  {
    if (*__p != 1918986339 || *(__p + 4) != 42)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (*(&__p + 1) == 8)
  {
    p_p = __p;
LABEL_31:
    if (*p_p == 0x4449676E69727453)
    {
      if (*(a1 + 23) < 0)
      {
        v12 = *a1;
      }

      REStringIDSet();
      goto LABEL_43;
    }

LABEL_39:
    v11 = 0;
    goto LABEL_44;
  }

  if (*(&__p + 1) != 13)
  {
    v11 = 0;
LABEL_47:
    operator delete(__p);
    goto LABEL_48;
  }

  if (*__p != 0x5363696D616E7944 || *(__p + 5) != 0x676E697274536369)
  {
    goto LABEL_39;
  }

LABEL_19:
  if (*(a1 + 23) < 0)
  {
    v8 = *a1;
  }

  REDynamicStringSet();
LABEL_43:
  v11 = 1;
LABEL_44:
  if (v18 < 0)
  {
    goto LABEL_47;
  }

LABEL_48:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2476E7784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::generateAsset(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, a3[3], a3[4]);
  }

  else
  {
    v26 = *(a3 + 1);
  }

  pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
  for (i = 0; i != 11; ++i)
  {
    v8 = v7;
    if ((v25 & 0x8000000000000000) != 0)
    {
      if (v7 != v24[1])
      {
        continue;
      }

      if (v7 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v9 = v24[0];
    }

    else
    {
      if (v7 != v25)
      {
        continue;
      }

      v9 = v24;
    }

    {
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *a3, a3[1]);
      }

      else
      {
        v21 = *a3;
      }

      if (*(a3 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, a3[3], a3[4]);
      }

      else
      {
        v22 = *(a3 + 1);
      }

      v20 = 0;
      v18 = 0u;
      *__p = 0u;
      *v16 = 0u;
      v17 = 0u;
      *v14 = 0u;
      v15 = 0u;
      *v13 = 0u;
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v13);
      std::string::basic_string[abi:ne200100]<0>(v16, "");
      DWORD2(v17) = 0;
      HIDWORD(v17) = realityio::TextureSwizzleChannels::kDefault;
      LOBYTE(v18) = 2;
      DWORD1(v18) = 0;
      WORD4(v18) = 512;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      realityio::TextureBuilder::createStandardTextureAsset(a1, a2, &v21, v13, &v23);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[1]);
      }

      if (SHIBYTE(v14[0]) < 0)
      {
        operator delete(v13[0]);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      AssetHandle = v23;
      if (v23)
      {
        v23 = 0;
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v23);
        goto LABEL_36;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v23);
    }
  }

  realityio::Inputs::assetManager(a1);
  if (*(a3 + 23) < 0)
  {
    v11 = *a3;
  }

  AssetHandle = REAssetManagerCreateAssetHandle();
LABEL_36:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return AssetHandle;
}

void sub_2476E7A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 113) < 0)
  {
    operator delete(*(v33 - 136));
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::validateArraySize(_OWORD *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  *buf = *a1;
  *&buf[16] = v6;
  if (!RETypeInfoIsArray())
  {
    goto LABEL_4;
  }

  v7 = a1[1];
  *buf = *a1;
  *&buf[16] = v7;
  if (!RETypeInfoIsFixedSizeArray())
  {
    goto LABEL_4;
  }

  v8 = a1[1];
  *buf = *a1;
  *&buf[16] = v8;
  Size = REArrayAccessorGetSize();
  v10 = Size;
  if (a3 != Size)
  {
    v13 = *(realityio::logObjects(Size) + 24);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a2, &v15);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v15);
      *buf = 134218498;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      *&buf[18] = 2080;
      *&buf[20] = Text;
      _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_DEFAULT, "Property size, %zu, does not match expected size, %d, for (%s)", buf, 0x1Cu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    }

    result = 0;
  }

  else
  {
LABEL_4:
    result = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476E7C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
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

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2476E8294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 55)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
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

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2476E8BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 41)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
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

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2476E94AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 47)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
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

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2476E9DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back<std::string const&>(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (*(a1 + 24))
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_16;
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
      v9 = (v5 + 24 * v4);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 1));
      }

      else
      {
        v10 = *a2;
        v9->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

LABEL_15:
      ++*a1;
      return;
    }

LABEL_16:
    v11 = 1;
    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v4 + 1);
    Copy = pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_AllocateCopy(a1, *(a1 + 32), v12, *a1);
    v14 = &Copy[v4];
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v14, *a2, *(a2 + 1));
    }

    else
    {
      v15 = *a2;
      v14->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v14->__r_.__value_.__l.__data_ = v15;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(a1);
    *(a1 + 32) = Copy;
    goto LABEL_15;
  }

  if (*(a1 + 12))
  {
    *(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
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

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2476EA6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_12SdfAssetPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(a1))
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

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(void *result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_27EE53698 = 0;
  qword_27EE53690 = 0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE53690;
    while (v5 != &qword_27EE53690)
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
        v7 = &qword_27EE53690;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      v3 = qword_27EE53690;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE53690)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE53690;
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

        v9 = v10 + 1;
        v3 = v10[1];
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

      v3 = qword_27EE53690;
    }

    v6 = &qword_27EE53690;
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

void sub_2476EABC8(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(*(v2 + 1680));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>>>>::destroy(a1[6]);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(a1, &__p);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476EAFF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v62 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v51, this);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v51);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    v50 = v8;
    if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this) & 1) == 0)
    {
      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
      }

      std::operator+<char>();
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v19 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v20 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v21 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v19;
      *(a1 + 32) = v21;
      *(a1 + 47) = v20;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_59;
    }

    v59.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v59))
      {
        v9 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v59);
        v10 = *(v9 + 16);
        v60 = *v9;
        *v61 = v10;
        v11 = *(v9 + 32);
        if (v11)
        {
          v12 = *&v61[8];
          if (!*&v61[8])
          {
            v12 = (v11 - 16);
          }

          atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
        }

        *a1 = 1;
        v13 = *v61;
        *(a1 + 8) = v60;
        *(a1 + 24) = v13;
        v60 = 0u;
        *v61 = 0u;
        *(a1 + 40) = v11;
        *&v61[16] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        goto LABEL_58;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v59);
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v59))
        {
          v25 = &v59;
        }

        else
        {
          v25 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(&v59, &v60);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v60);
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v57, v25);
        if (v57.__r_.__value_.__l.__size_)
        {
          v39 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(&v57);
          v40 = *(v39 + 16);
          v60 = *v39;
          *v61 = v40;
          v41 = *(v39 + 32);
          if (v41)
          {
            v42 = *&v61[8];
            if (!*&v61[8])
            {
              v42 = (v41 - 16);
            }

            atomic_fetch_add_explicit(v42, 1uLL, memory_order_relaxed);
          }

          *a1 = 1;
          v43 = *v61;
          *(a1 + 8) = v60;
          *(a1 + 24) = v43;
          v60 = 0u;
          *v61 = 0u;
          *(a1 + 40) = v41;
          *&v61[16] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v60);
        }

        else
        {
          v44 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
          if ((*v44 & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a1 + 8) = v60;
          v56.__r_.__value_.__r.__words[0] = *&v61[8];
          v45 = *v61;
          *(v56.__r_.__value_.__r.__words + 7) = *&v61[15];
          v46 = v61[23];
          memset(v61, 0, sizeof(v61));
          *a1 = 0;
          *(a1 + 39) = *(v56.__r_.__value_.__r.__words + 7);
          v47 = v56.__r_.__value_.__r.__words[0];
          *(a1 + 24) = v45;
          *(a1 + 32) = v47;
          *(a1 + 47) = v46;
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v57);
        goto LABEL_58;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v57.__r_.__value_.__r.__words[0] = *&v61[8];
      v36 = *v61;
      *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
      v37 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
      v38 = v57.__r_.__value_.__r.__words[0];
      *(a1 + 24) = v36;
      *(a1 + 32) = v38;
      *(a1 + 47) = v37;
      if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
LABEL_58:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v59);
LABEL_59:
        v48 = v52;
        if (v52 && atomic_fetch_add_explicit((v52 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v48 + 8))(v48);
        }

        goto LABEL_62;
      }

      v35 = __p[0];
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
      if ((*v18 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v18);
      }

      std::operator+<char>();
      v26 = std::string::append(&v56, ") at the given time: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v27;
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

      v30 = std::string::append(&v57, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v55 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a1 + 8) = v60;
      v58[0] = *&v61[8];
      v32 = *v61;
      *(v58 + 7) = *&v61[15];
      v33 = v61[23];
      memset(v61, 0, sizeof(v61));
      *a1 = 0;
      *(a1 + 39) = *(v58 + 7);
      v34 = v58[0];
      *(a1 + 24) = v32;
      *(a1 + 32) = v34;
      *(a1 + 47) = v33;
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      v35 = v56.__r_.__value_.__r.__words[0];
    }

    operator delete(v35);
    goto LABEL_58;
  }

  v6 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
  if ((*v6 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v60, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a1 + 8) = v60;
  v57.__r_.__value_.__r.__words[0] = *&v61[8];
  v15 = *v61;
  *(v57.__r_.__value_.__r.__words + 7) = *&v61[15];
  v16 = v61[23];
  memset(v61, 0, sizeof(v61));
  *a1 = 0;
  *(a1 + 39) = *(v57.__r_.__value_.__r.__words + 7);
  v17 = v57.__r_.__value_.__r.__words[0];
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 47) = v16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2476EB66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 54)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(a1))
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

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1 + 8);
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::__shared_ptr_pointer<unsigned char *,anonymous namespace::makeSharedNoDelete(void *)::{lambda(unsigned char *)#1},std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,anonymous namespace::makeSharedNoDelete(void *)::{lambda(unsigned char *)#1},std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN12_GLOBAL__N_118makeSharedNoDeleteEPvEUlT_E_))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const void **std::vector<std::shared_ptr<unsigned char>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<unsigned char>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<unsigned char>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<unsigned char>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<unsigned char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void anonymous namespace::getHashTableFuncTable(_anonymous_namespace_ *this)
{
  v194[4] = *MEMORY[0x277D85DE8];
  {
    MEMORY[0x24C1A5DE0](&v106, "uchar[]");
    MEMORY[0x24C1A5DE0](&v104, "uint8_t");
    v176 = v104;
    v104 = 0;
    v177[0] = &unk_28595D1A8;
    v177[3] = v177;
    MEMORY[0x24C1A5DE0](&v103, "uint8_t[]");
    v178 = v103;
    v103 = 0;
    v179[0] = &unk_28595D1A8;
    v179[3] = v179;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v105, &v176, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v180, v106, v105);
    MEMORY[0x24C1A5DE0](&v102, "uint[]");
    MEMORY[0x24C1A5DE0](&v100, "uint16_t");
    v170 = v100;
    v100 = 0;
    v171[0] = &unk_28595D1A8;
    v171[3] = v171;
    MEMORY[0x24C1A5DE0](&v99, "uint32_t");
    v171[4] = v99;
    v99 = 0;
    v172[0] = &unk_28595D1A8;
    v172[3] = v172;
    MEMORY[0x24C1A5DE0](&v98, "uint16_t[]");
    v172[4] = v98;
    v98 = 0;
    v173[0] = &unk_28595D1A8;
    v173[3] = v173;
    MEMORY[0x24C1A5DE0](&v97, "uint32_t[]");
    v174 = v97;
    v97 = 0;
    v175[0] = &unk_28595D1A8;
    v175[3] = v175;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v101, &v170, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v181, v102, v101);
    MEMORY[0x24C1A5DE0](&v96, "uint64[]");
    MEMORY[0x24C1A5DE0](&v94, "uint64_t");
    v164 = v94;
    v94 = 0;
    v165[0] = &unk_28595D1A8;
    v165[3] = v165;
    MEMORY[0x24C1A5DE0](&v93, "size_t");
    v165[4] = v93;
    v93 = 0;
    v166[0] = &unk_28595D1A8;
    v166[3] = v166;
    MEMORY[0x24C1A5DE0](&v92, "uint64_t[]");
    v166[4] = v92;
    v92 = 0;
    v167[0] = &unk_28595D1A8;
    v167[3] = v167;
    MEMORY[0x24C1A5DE0](&v91, "size_t[]");
    v168 = v91;
    v91 = 0;
    v169[0] = &unk_28595D1A8;
    v169[3] = v169;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v95, &v164, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v182, v96, v95);
    MEMORY[0x24C1A5DE0](&v90, "int[]");
    MEMORY[0x24C1A5DE0](&v88, "char");
    v155 = v88;
    v88 = 0;
    v156[0] = &unk_28595D1A8;
    v156[3] = v156;
    MEMORY[0x24C1A5DE0](&v87, "int8_t");
    v156[4] = v87;
    v87 = 0;
    v157[0] = &unk_28595D1A8;
    v157[3] = v157;
    MEMORY[0x24C1A5DE0](&v86, "int16_t");
    v157[4] = v86;
    v86 = 0;
    v158[0] = &unk_28595D1A8;
    v158[3] = v158;
    MEMORY[0x24C1A5DE0](&v85, "int32_t");
    v158[4] = v85;
    v85 = 0;
    v159[0] = &unk_28595D1A8;
    v159[3] = v159;
    MEMORY[0x24C1A5DE0](&v84, "char[]");
    v159[4] = v84;
    v84 = 0;
    v160[0] = &unk_28595D1A8;
    v160[3] = v160;
    MEMORY[0x24C1A5DE0](&v83, "int8_t[]");
    v160[4] = v83;
    v83 = 0;
    v161[0] = &unk_28595D1A8;
    v161[3] = v161;
    MEMORY[0x24C1A5DE0](&v82, "int16_t[]");
    v161[4] = v82;
    v82 = 0;
    v162[0] = &unk_28595D1A8;
    v162[3] = v162;
    MEMORY[0x24C1A5DE0](&v81, "int32_t[]");
    v162[4] = v81;
    v81 = 0;
    v163[0] = &unk_28595D1A8;
    v163[3] = v163;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v89, &v155, 8);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v183, v90, v89);
    MEMORY[0x24C1A5DE0](&v80, "int64[]");
    MEMORY[0x24C1A5DE0](&v78, "int");
    v149 = v78;
    v78 = 0;
    v150[0] = &unk_28595D1A8;
    v150[3] = v150;
    MEMORY[0x24C1A5DE0](&v77, "int64_t");
    v150[4] = v77;
    v77 = 0;
    v151[0] = &unk_28595D1A8;
    v151[3] = v151;
    MEMORY[0x24C1A5DE0](&v76, "int[]");
    v151[4] = v76;
    v76 = 0;
    v152[0] = &unk_28595D1A8;
    v152[3] = v152;
    MEMORY[0x24C1A5DE0](&v75, "int64_t[]");
    v153 = v75;
    v75 = 0;
    v154[0] = &unk_28595D1A8;
    v154[3] = v154;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v79, &v149, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v184, v80, v79);
    MEMORY[0x24C1A5DE0](&v74, "float[]");
    MEMORY[0x24C1A5DE0](&v72, "float");
    v145 = v72;
    v72 = 0;
    v146[0] = &unk_28595D1A8;
    v146[3] = v146;
    MEMORY[0x24C1A5DE0](&v71, "float[]");
    v147 = v71;
    v71 = 0;
    v148[0] = &unk_28595D1A8;
    v148[3] = v148;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v73, &v145, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v185, v74, v73);
    MEMORY[0x24C1A5DE0](&v70, "float2[]");
    MEMORY[0x24C1A5DE0](&v68, "Vector2F");
    v141 = v68;
    v68 = 0;
    v142[0] = &unk_28595D1A8;
    v142[3] = v142;
    MEMORY[0x24C1A5DE0](&v67, "Vector2F[]");
    v143 = v67;
    v67 = 0;
    v144[0] = &unk_28595D1A8;
    v144[3] = v144;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v69, &v141, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v186, v70, v69);
    MEMORY[0x24C1A5DE0](&v66, "float3[]");
    MEMORY[0x24C1A5DE0](&v64, "Vector3F");
    v137 = v64;
    v64 = 0;
    v138[0] = &unk_28595D1A8;
    v138[3] = v138;
    MEMORY[0x24C1A5DE0](&v63, "Vector3F[]");
    v139 = v63;
    v63 = 0;
    v140[0] = &unk_28595D1A8;
    v140[3] = v140;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v65, &v137, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v187, v66, v65);
    MEMORY[0x24C1A5DE0](&v62, "float4[]");
    MEMORY[0x24C1A5DE0](&v60, "Vector4F");
    v133 = v60;
    v60 = 0;
    v134[0] = &unk_28595D1A8;
    v134[3] = v134;
    MEMORY[0x24C1A5DE0](&v59, "Vector4F[]");
    v135 = v59;
    v59 = 0;
    v136[0] = &unk_28595D1A8;
    v136[3] = v136;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v61, &v133, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v188, v62, v61);
    MEMORY[0x24C1A5DE0](&v58, "quatf[]");
    MEMORY[0x24C1A5DE0](&v56, "QuaternionF");
    v129 = v56;
    v56 = 0;
    v130[0] = &unk_28595D1A8;
    v130[3] = v130;
    MEMORY[0x24C1A5DE0](&v55, "QuaternionF[]");
    v131 = v55;
    v55 = 0;
    v132[0] = &unk_28595D1A8;
    v132[3] = v132;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v57, &v129, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v189, v58, v57);
    MEMORY[0x24C1A5DE0](&v54, "double[]");
    MEMORY[0x24C1A5DE0](&v52, "double");
    v125 = v52;
    v52 = 0;
    v126[0] = &unk_28595D1A8;
    v126[3] = v126;
    MEMORY[0x24C1A5DE0](&v51, "double[]");
    v127 = v51;
    v51 = 0;
    v128[0] = &unk_28595D1A8;
    v128[3] = v128;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v53, &v125, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v190, v54, v53);
    MEMORY[0x24C1A5DE0](&v50, "BOOL[]");
    MEMORY[0x24C1A5DE0](&v48, "BOOL");
    v121 = v48;
    v48 = 0;
    v122[0] = &unk_28595D1A8;
    v122[3] = v122;
    MEMORY[0x24C1A5DE0](&v47, "BOOL[]");
    v123 = v47;
    v47 = 0;
    v124[0] = &unk_28595D1A8;
    v124[3] = v124;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v49, &v121, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v191, v50, v49);
    MEMORY[0x24C1A5DE0](&v46, "token[]");
    MEMORY[0x24C1A5DE0](&v44, "DynamicString");
    v115 = v44;
    v44 = 0;
    v116[0] = &unk_28595D1A8;
    v116[3] = v116;
    MEMORY[0x24C1A5DE0](&v43, "StringID");
    v116[4] = v43;
    v43 = 0;
    v117[0] = &unk_28595D1A8;
    v117[3] = v117;
    MEMORY[0x24C1A5DE0](&v42, "DynamicString[]");
    v117[4] = v42;
    v42 = 0;
    v118[0] = &unk_28595D1A8;
    v118[3] = v118;
    MEMORY[0x24C1A5DE0](&v41, "StringID[]");
    v119 = v41;
    v41 = 0;
    v120[0] = &unk_28595D1A8;
    v120[3] = v120;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v45, &v115, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v192, v46, v45);
    MEMORY[0x24C1A5DE0](&v40, "string[]");
    MEMORY[0x24C1A5DE0](&v38, "DynamicString");
    v109 = v38;
    v38 = 0;
    v110[0] = &unk_28595D1A8;
    v110[3] = v110;
    MEMORY[0x24C1A5DE0](&v37, "StringID");
    v110[4] = v37;
    v37 = 0;
    v111[0] = &unk_28595D1A8;
    v111[3] = v111;
    MEMORY[0x24C1A5DE0](&v36, "DynamicString[]");
    v111[4] = v36;
    v36 = 0;
    v112[0] = &unk_28595D1A8;
    v112[3] = v112;
    MEMORY[0x24C1A5DE0](&v35, "StringID[]");
    v113 = v35;
    v35 = 0;
    v114[0] = &unk_28595D1A8;
    v114[3] = v114;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v39, &v109, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v193, v40, v39);
    MEMORY[0x24C1A5DE0](&v34, "asset[]");
    MEMORY[0x24C1A5DE0](&v32, "AssetHandle[]");
    v107 = v32;
    v32 = 0;
    v108[0] = &unk_28595D1A8;
    v108[3] = v108;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v33, &v107, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v194, v34, v33);
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](v180, 15);
    v2 = 60;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v179[v2 + 2]);
      v3 = v179[v2];
      if ((v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v2 -= 4;
    }

    while (v2 * 8);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v33[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v108);
    if ((v107 & 7) != 0)
    {
      atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v39[1]);
    for (i = 0; i != -20; i -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v114[i]);
      v5 = v114[i - 1];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v35 & 7) != 0)
    {
      atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v37 & 7) != 0)
    {
      atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v38 & 7) != 0)
    {
      atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v45[1]);
    for (j = 0; j != -20; j -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v120[j]);
      v7 = v120[j - 1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v46 & 7) != 0)
    {
      atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v49[1]);
    for (k = 0; k != -10; k -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v124[k]);
      v9 = v124[k - 1];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v53[1]);
    for (m = 0; m != -10; m -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v128[m]);
      v11 = v128[m - 1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v51 & 7) != 0)
    {
      atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v52 & 7) != 0)
    {
      atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v57[1]);
    for (n = 0; n != -10; n -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v132[n]);
      v13 = v132[n - 1];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v55 & 7) != 0)
    {
      atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v56 & 7) != 0)
    {
      atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v58 & 7) != 0)
    {
      atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v61[1]);
    for (ii = 0; ii != -10; ii -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v136[ii]);
      v15 = v136[ii - 1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v60 & 7) != 0)
    {
      atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v62 & 7) != 0)
    {
      atomic_fetch_add_explicit((v62 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v65[1]);
    for (jj = 0; jj != -10; jj -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v140[jj]);
      v17 = v140[jj - 1];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v63 & 7) != 0)
    {
      atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v64 & 7) != 0)
    {
      atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v66 & 7) != 0)
    {
      atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v69[1]);
    for (kk = 0; kk != -10; kk -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v144[kk]);
      v19 = v144[kk - 1];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v67 & 7) != 0)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v68 & 7) != 0)
    {
      atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v70 & 7) != 0)
    {
      atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v73[1]);
    for (mm = 0; mm != -10; mm -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v148[mm]);
      v21 = v148[mm - 1];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v72 & 7) != 0)
    {
      atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v74 & 7) != 0)
    {
      atomic_fetch_add_explicit((v74 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v79[1]);
    for (nn = 0; nn != -20; nn -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v154[nn]);
      v23 = v154[nn - 1];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v75 & 7) != 0)
    {
      atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v76 & 7) != 0)
    {
      atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v77 & 7) != 0)
    {
      atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v78 & 7) != 0)
    {
      atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v89[1]);
    v24 = 40;
    do
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v154[v24]);
      v25 = v154[v24 - 1];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 -= 5;
    }

    while (v24 * 8);
    if ((v81 & 7) != 0)
    {
      atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v83 & 7) != 0)
    {
      atomic_fetch_add_explicit((v83 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v84 & 7) != 0)
    {
      atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v85 & 7) != 0)
    {
      atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v86 & 7) != 0)
    {
      atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v87 & 7) != 0)
    {
      atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v88 & 7) != 0)
    {
      atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v90 & 7) != 0)
    {
      atomic_fetch_add_explicit((v90 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v95[1]);
    for (i1 = 0; i1 != -20; i1 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v169[i1]);
      v27 = v169[i1 - 1];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v91 & 7) != 0)
    {
      atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v92 & 7) != 0)
    {
      atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v93 & 7) != 0)
    {
      atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v94 & 7) != 0)
    {
      atomic_fetch_add_explicit((v94 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v96 & 7) != 0)
    {
      atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v101[1]);
    for (i2 = 0; i2 != -20; i2 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v175[i2]);
      v29 = v175[i2 - 1];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v97 & 7) != 0)
    {
      atomic_fetch_add_explicit((v97 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v105[1]);
    for (i3 = 0; i3 != -10; i3 -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v179[i3]);
      v31 = v179[i3 - 1];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v103 & 7) != 0)
    {
      atomic_fetch_add_explicit((v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v104 & 7) != 0)
    {
      atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v106 & 7) != 0)
    {
      atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

void sub_2476ED788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  v74 = (v73 + 464);
  v75 = -480;
  while (1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(*v74);
    v76 = *(v74 - 2);
    if ((v76 & 7) != 0)
    {
      atomic_fetch_add_explicit((v76 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v74 -= 4;
    v75 += 32;
    if (!v75)
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a17);
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v72);
      if ((STACK[0x378] & 7) != 0)
      {
        atomic_fetch_add_explicit((STACK[0x378] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a15 & 7) != 0)
      {
        atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((a19 & 7) != 0)
      {
        atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a25);
      v77 = &STACK[0x420];
      v78 = -160;
      while (1)
      {
        v79 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v77);
        v80 = *(v79 - 8);
        if ((v80 & 7) != 0)
        {
          atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v77 = (v79 - 40);
        v78 += 40;
        if (!v78)
        {
          if ((a20 & 7) != 0)
          {
            atomic_fetch_add_explicit((a20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a21 & 7) != 0)
          {
            atomic_fetch_add_explicit((a21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a22 & 7) != 0)
          {
            atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a23 & 7) != 0)
          {
            atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((a27 & 7) != 0)
          {
            atomic_fetch_add_explicit((a27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a33);
          v81 = &STACK[0x4C0];
          v82 = -160;
          while (1)
          {
            v83 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v81);
            v84 = *(v83 - 8);
            if ((v84 & 7) != 0)
            {
              atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v81 = (v83 - 40);
            v82 += 40;
            if (!v82)
            {
              if ((a28 & 7) != 0)
              {
                atomic_fetch_add_explicit((a28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a29 & 7) != 0)
              {
                atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a30 & 7) != 0)
              {
                atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a31 & 7) != 0)
              {
                atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((a35 & 7) != 0)
              {
                atomic_fetch_add_explicit((a35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a39);
              v85 = &STACK[0x510];
              v86 = -80;
              while (1)
              {
                v87 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v85);
                v88 = *(v87 - 8);
                if ((v88 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                v85 = (v87 - 40);
                v86 += 40;
                if (!v86)
                {
                  if ((a36 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((a36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((a37 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((a37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((a41 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((a41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a45);
                  v89 = &STACK[0x560];
                  v90 = -80;
                  while (1)
                  {
                    v91 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v89);
                    v92 = *(v91 - 8);
                    if ((v92 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v92 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    v89 = (v91 - 40);
                    v90 += 40;
                    if (!v90)
                    {
                      if ((a42 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((a42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((a43 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((a43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if ((a47 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((a47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a51);
                      v93 = &STACK[0x5B0];
                      v94 = -80;
                      while (1)
                      {
                        v95 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v93);
                        v96 = *(v95 - 8);
                        if ((v96 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v96 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        v93 = (v95 - 40);
                        v94 += 40;
                        if (!v94)
                        {
                          if ((a48 & 7) != 0)
                          {
                            atomic_fetch_add_explicit((a48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          if ((a49 & 7) != 0)
                          {
                            atomic_fetch_add_explicit((a49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          if ((a53 & 7) != 0)
                          {
                            atomic_fetch_add_explicit((a53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a57);
                          v97 = &STACK[0x600];
                          v98 = -80;
                          while (1)
                          {
                            v99 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v97);
                            v100 = *(v99 - 8);
                            if ((v100 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v97 = (v99 - 40);
                            v98 += 40;
                            if (!v98)
                            {
                              if ((a54 & 7) != 0)
                              {
                                atomic_fetch_add_explicit((a54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((a55 & 7) != 0)
                              {
                                atomic_fetch_add_explicit((a55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              if ((a59 & 7) != 0)
                              {
                                atomic_fetch_add_explicit((a59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a63);
                              v101 = &STACK[0x650];
                              v102 = -80;
                              while (1)
                              {
                                v103 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v101);
                                v104 = *(v103 - 8);
                                if ((v104 & 7) != 0)
                                {
                                  atomic_fetch_add_explicit((v104 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                }

                                v101 = (v103 - 40);
                                v102 += 40;
                                if (!v102)
                                {
                                  if ((a60 & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((a60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((a61 & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((a61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  if ((a65 & 7) != 0)
                                  {
                                    atomic_fetch_add_explicit((a65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                  }

                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a69);
                                  v105 = &STACK[0x6A0];
                                  v106 = -80;
                                  while (1)
                                  {
                                    v107 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v105);
                                    v108 = *(v107 - 8);
                                    if ((v108 & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v108 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    v105 = (v107 - 40);
                                    v106 += 40;
                                    if (!v106)
                                    {
                                      if ((a66 & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((a66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((a67 & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((a67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      if ((a71 & 7) != 0)
                                      {
                                        atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                      }

                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x210]);
                                      v109 = &STACK[0x6F0];
                                      v110 = -80;
                                      while (1)
                                      {
                                        v111 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v109);
                                        v112 = *(v111 - 8);
                                        if ((v112 & 7) != 0)
                                        {
                                          atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                        }

                                        v109 = (v111 - 40);
                                        v110 += 40;
                                        if (!v110)
                                        {
                                          if ((a72 & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((a72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          if ((STACK[0x200] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x200] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          if ((STACK[0x220] & 7) != 0)
                                          {
                                            atomic_fetch_add_explicit((STACK[0x220] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                          }

                                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x250]);
                                          v113 = &STACK[0x790];
                                          v114 = -160;
                                          while (1)
                                          {
                                            v115 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v113);
                                            v116 = *(v115 - 8);
                                            if ((v116 & 7) != 0)
                                            {
                                              atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                            }

                                            v113 = (v115 - 40);
                                            v114 += 40;
                                            if (!v114)
                                            {
                                              if ((STACK[0x228] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x228] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x230] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x230] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x238] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x238] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x240] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x240] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              if ((STACK[0x260] & 7) != 0)
                                              {
                                                atomic_fetch_add_explicit((STACK[0x260] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                              }

                                              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x2B0]);
                                              v117 = &STACK[0x8D0];
                                              v118 = -320;
                                              while (1)
                                              {
                                                v119 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v117);
                                                v120 = *(v119 - 8);
                                                if ((v120 & 7) != 0)
                                                {
                                                  atomic_fetch_add_explicit((v120 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                }

                                                v117 = (v119 - 40);
                                                v118 += 40;
                                                if (!v118)
                                                {
                                                  if ((STACK[0x268] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x268] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x270] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x270] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x278] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x278] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x280] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x280] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x288] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x288] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x290] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x290] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x298] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x298] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x2A0] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x2A0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  if ((STACK[0x2C0] & 7) != 0)
                                                  {
                                                    atomic_fetch_add_explicit((STACK[0x2C0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                  }

                                                  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x2F0]);
                                                  v121 = &STACK[0x970];
                                                  v122 = -160;
                                                  while (1)
                                                  {
                                                    v123 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v121);
                                                    v124 = *(v123 - 8);
                                                    if ((v124 & 7) != 0)
                                                    {
                                                      atomic_fetch_add_explicit((v124 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                    }

                                                    v121 = (v123 - 40);
                                                    v122 += 40;
                                                    if (!v122)
                                                    {
                                                      if ((STACK[0x2C8] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2C8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x2D0] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2D0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x2D8] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2D8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x2E0] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x2E0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      if ((STACK[0x300] & 7) != 0)
                                                      {
                                                        atomic_fetch_add_explicit((STACK[0x300] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                      }

                                                      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x330]);
                                                      v125 = &STACK[0xA10];
                                                      v126 = -160;
                                                      while (1)
                                                      {
                                                        v127 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v125);
                                                        v128 = *(v127 - 8);
                                                        if ((v128 & 7) != 0)
                                                        {
                                                          atomic_fetch_add_explicit((v128 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                        }

                                                        v125 = (v127 - 40);
                                                        v126 += 40;
                                                        if (!v126)
                                                        {
                                                          if ((STACK[0x308] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x308] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x310] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x310] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x318] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x318] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x320] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x320] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          if ((STACK[0x340] & 7) != 0)
                                                          {
                                                            atomic_fetch_add_explicit((STACK[0x340] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                          }

                                                          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(STACK[0x360]);
                                                          v129 = &STACK[0xA60];
                                                          v130 = -80;
                                                          while (1)
                                                          {
                                                            v131 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v129);
                                                            v132 = *(v131 - 8);
                                                            if ((v132 & 7) != 0)
                                                            {
                                                              atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                            }

                                                            v129 = (v131 - 40);
                                                            v130 += 40;
                                                            if (!v130)
                                                            {
                                                              if ((STACK[0x348] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x348] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              if ((STACK[0x350] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x350] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                                              }

                                                              if ((STACK[0x370] & 7) != 0)
                                                              {
                                                                atomic_fetch_add_explicit((STACK[0x370] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

uint64_t anonymous namespace::usdToRe_HashTable<unsigned char,unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EE8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned int,unsigned short>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EE9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned int,unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned long long,unsigned long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<unsigned long long,unsigned long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EECC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,signed char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,short>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EEFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<int,int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<long long,int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<long long,long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<float,float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 4 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v13);
}

void sub_2476EF388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTableVector<pxrInternal__aapl__pxrReserved__::GfVec2f,float,2>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v20, "values");
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v20);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(&__p, v21);
      if ((v21[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v20 & 0xFFFFFFFFFFFFFFF8;
          if ((v20 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v19 = &v23;
          if (v24 < 0)
          {
            v19 = v23;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v25);
      v22 = *buf;
      v23 = *&buf[16];
      *&v24 = v31;
      *(&v24 + 7) = *(&v31 + 7);
      v12 = HIBYTE(v31);
      v31 = 0uLL;
      *&buf[16] = 0;
      v21[0] = 0;
      HIBYTE(v24) = v12;
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v28);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v22 = *buf;
    v23 = *&buf[16];
    *&v24 = v31;
    *(&v24 + 7) = *(&v31 + 7);
    v11 = HIBYTE(v31);
    v31 = 0uLL;
    *&buf[16] = 0;
    v21[0] = 0;
    HIBYTE(v24) = v11;
    if ((v28[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v21[0])
  {
    v13 = v22;
    if (v22)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v22);
        *v16 = *(*(&v24 + 1) + 8 * v15++);
        v14 += 16;
      }

      while (v13 != v15);
    }
  }

  result = realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(v21);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476EF688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableVector<pxrInternal__aapl__pxrReserved__::GfVec3f,float,3>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v21, "values");
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v21);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(&__p, v22);
      if ((v22[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v21 & 0xFFFFFFFFFFFFFFF8;
          if ((v21 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v20 = &v24;
          if (v25 < 0)
          {
            v20 = v24;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v20;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v26, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v26);
      v23 = *buf;
      v24 = *&buf[16];
      *&v25 = v32;
      *(&v25 + 7) = *(&v32 + 7);
      v12 = HIBYTE(v32);
      v32 = 0uLL;
      *&buf[16] = 0;
      v22[0] = 0;
      HIBYTE(v25) = v12;
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }
    }

    if ((v30 & 7) != 0)
    {
      atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v29);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v23 = *buf;
    v24 = *&buf[16];
    *&v25 = v32;
    *(&v25 + 7) = *(&v32 + 7);
    v11 = HIBYTE(v32);
    v32 = 0uLL;
    *&buf[16] = 0;
    v22[0] = 0;
    HIBYTE(v25) = v11;
    if ((v29[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v22[0])
  {
    v13 = v23;
    if (v23)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v23);
        v17 = *(*(&v25 + 1) + v15);
        *(v16 + 8) = *(*(&v25 + 1) + v15 + 8);
        *v16 = v17;
        v15 += 12;
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  result = realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(v22);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476EF9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableVector<pxrInternal__aapl__pxrReserved__::GfVec4f,float,4>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v19, "values");
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v19);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(&__p, v20);
      if ((v20[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v19 & 0xFFFFFFFFFFFFFFF8;
          if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v18 = &v22;
          if (v23 < 0)
          {
            v18 = v22;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v24);
      v21 = *buf;
      v22 = *&buf[16];
      *&v23 = v30;
      *(&v23 + 7) = *(&v30 + 7);
      v12 = HIBYTE(v30);
      v30 = 0uLL;
      *&buf[16] = 0;
      v20[0] = 0;
      HIBYTE(v23) = v12;
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v27);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v21 = *buf;
    v22 = *&buf[16];
    *&v23 = v30;
    *(&v23 + 7) = *(&v30 + 7);
    v11 = HIBYTE(v30);
    v30 = 0uLL;
    *&buf[16] = 0;
    v20[0] = 0;
    HIBYTE(v23) = v11;
    if ((v27[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20[0])
  {
    v13 = v21;
    if (v21)
    {
      v14 = 0;
      do
      {
        v15 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v21);
        *v15 = *(*(&v23 + 1) + v14);
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  result = realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(v20);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476EFD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTable<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v19, "values");
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v19);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(v20, &__p);
      if ((v20[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v19 & 0xFFFFFFFFFFFFFFF8;
          if ((v19 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v18 = &v22;
          if (v23 < 0)
          {
            v18 = v22;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v24, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v24);
      v21 = *buf;
      v22 = *&buf[16];
      *&v23 = v30;
      *(&v23 + 7) = *(&v30 + 7);
      v12 = HIBYTE(v30);
      v30 = 0uLL;
      *&buf[16] = 0;
      v20[0] = 0;
      HIBYTE(v23) = v12;
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v27);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v21 = *buf;
    v22 = *&buf[16];
    *&v23 = v30;
    *(&v23 + 7) = *(&v30 + 7);
    v11 = HIBYTE(v30);
    v30 = 0uLL;
    *&buf[16] = 0;
    v20[0] = 0;
    HIBYTE(v23) = v11;
    if ((v27[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v20[0])
  {
    v13 = v21;
    if (v21)
    {
      v14 = 0;
      do
      {
        v15 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(&v21);
        *v15 = *(*(&v23 + 1) + v14);
        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }

  result = realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,realityio::DetailedError>::~Result(v20);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476F0038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTable<double,double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v12, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v13, &v12, a1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13[0])
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(*a5 + v8);
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(v14);
        *v10 = *(v14[4] + 8 * v9++);
        v8 += 16;
      }

      while (v7 != v9);
    }
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v13);
}

void sub_2476F016C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTable<BOOL,BOOL>(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v20, "values");
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, a1, &v20);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(v21, &__p);
      if ((v21[0] & 1) == 0)
      {
        v8 = *realityio::logObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v20 & 0xFFFFFFFFFFFFFFF8;
          if ((v20 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v19 = &v23;
          if (v24 < 0)
          {
            v19 = v23;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_error_impl(&dword_247485000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v25);
      v22 = *buf;
      v23 = *&buf[16];
      *&v24 = v31;
      *(&v24 + 7) = *(&v31 + 7);
      v12 = HIBYTE(v31);
      v31 = 0uLL;
      *&buf[16] = 0;
      v21[0] = 0;
      HIBYTE(v24) = v12;
      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v28);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    v22 = *buf;
    v23 = *&buf[16];
    *&v24 = v31;
    *(&v24 + 7) = *(&v31 + 7);
    v11 = HIBYTE(v31);
    v31 = 0uLL;
    *&buf[16] = 0;
    v21[0] = 0;
    HIBYTE(v24) = v11;
    if ((v28[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v21[0])
  {
    v13 = v22;
    if (v22)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(*a5 + v14);
        pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v22);
        *v16 = *(*(&v24 + 1) + v15++);
        v14 += 16;
      }

      while (v13 != v15);
    }
  }

  result = realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(v21);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476F046C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,realityio::DetailedError>::~Result(va);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va1);
  if ((a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableString(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x24C1A5DE0](v24, "values");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1, v8, v19);
  if ((v24[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v24[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v19[0])
  {
    v9 = v20[0];
    if (v20[0])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(v20);
        v12 = (v21 + v10);
        if (*(v21 + v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v12, *(v12 + 1));
        }

        else
        {
          v13 = *v12;
          __p.__r_.__value_.__r.__words[2] = *(v12 + 2);
          *&__p.__r_.__value_.__l.__data_ = v13;
        }

        v14 = *(*a5 + v11);
        v15 = a4[1];
        v22 = *a4;
        v23 = v15;
        RETypeInfoGetDictionaryValueType();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v11 += 16;
        v10 += 24;
        --v9;
      }

      while (v9);
    }
  }

  result = realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v19);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476F062C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  v17 = *(v16 - 104);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::usdToRe_HashTableAssetHandle(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, void *a5)
{
  MEMORY[0x24C1A5DE0](&v20, "values");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v23, a1, &v20);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(&v20, &v23);
  if (v20)
  {
    v8 = v21[0];
    if (v21[0])
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(*a5 + v9);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(v21);
        v12 = v22;
        v13 = (v22 + v10);
        if (*(v22 + v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, *v13, *(v13 + 1));
        }

        else
        {
          v14 = *v13;
          v18.__r_.__value_.__r.__words[2] = *(v13 + 2);
          *&v18.__r_.__value_.__l.__data_ = v14;
        }

        v15 = v12 + v10;
        if (*(v12 + v10 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v15 + 24), *(v15 + 32));
        }

        else
        {
          v16 = *(v15 + 24);
          __p.__r_.__value_.__r.__words[2] = *(v15 + 40);
          *&__p.__r_.__value_.__l.__data_ = v16;
        }

        REAssetHandleSet();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        v10 += 48;
        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,realityio::DetailedError>::~Result(&v20);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  result = v24;
  if (v24)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
  }

  return result;
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(&__p, a1);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476F0B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D1A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6(a2, &v7, *a4, a5, a6);
  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void sub_2476F0C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, uint64_t *a2, uint64_t a3)
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
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(uint64_t result, void *a2, uint64_t *a3)
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

void sub_2476F0F40(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a2 + 5));
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

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a1 + 5));
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  if ((a2 & 7) != 0 && (atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](a1 + 1, a3);
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, void *a2)
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
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v3, v5 + 4);
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

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(&__p, a1);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476F1464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(a1, &__p);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476F1708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(&__p, a1);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476F19AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&__p, a1);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476F1C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a2);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(&__p, a1);
      if ((*a1 & 1) == 0)
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

          v19 = *(a1 + 24);
          v18 = a1 + 24;
          v17 = v19;
          if (*(v18 + 23) >= 0)
          {
            v17 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v23);
      *(a1 + 8) = *buf;
      v13 = *&buf[16];
      v25[0] = v27;
      *(v25 + 7) = *(&v27 + 7);
      v14 = HIBYTE(v27);
      v27 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 39) = *(v25 + 7);
      v15 = v25[0];
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;
      *(a1 + 47) = v14;
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 8) = *buf;
    v10 = *&buf[16];
    v23[0] = v27;
    *(v23 + 7) = *(&v27 + 7);
    v11 = HIBYTE(v27);
    v27 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 39) = *(v23 + 7);
    v12 = v23[0];
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 47) = v11;
    if ((v21[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2476F1EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

uint64_t std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_27EE536B8 = 0;
  qword_27EE536B0 = 0;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE536B0;
    while (v5 != &qword_27EE536B0)
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
        v7 = &qword_27EE536B0;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      v3 = qword_27EE536B0;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE536B0)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE536B0;
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

        v9 = v10 + 1;
        v3 = v10[1];
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

      v3 = qword_27EE536B0;
    }

    v6 = &qword_27EE536B0;
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

void sub_2476F2114(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(*(v2 + 1712));
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[6]);
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void anonymous namespace::usdToRe_HashTableEntries<unsigned char>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v36);
        v17 = v38 + v14;
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F2744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v36);
        v17 = v38 + 4 * v14;
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F2DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<unsigned long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v36);
        v17 = &v38[v14];
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F3404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<int>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<int>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v36);
        v17 = v38 + 4 * v14;
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F3A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<long long>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v36);
        v17 = &v38[v14];
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v36);
        v17 = v38 + 4 * v14;
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::usdToRe_HashTableEntries<double>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, __int128 *a3, uint64_t *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v42, "keys");
  v46 = 0;
  *buf = 0u;
  v45 = 0u;
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v39, &v42, a1);
  if (v39[0])
  {
    v36 = v40[0];
    v37 = v40[1];
    v8 = v41;
  }

  else
  {
    v36 = *buf;
    v37 = v45;
    v8 = v46;
  }

  v38 = v8;
  if (v8)
  {
    v9 = v8 - 2;
    if (*(&v37 + 1))
    {
      v9 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v39, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39[0] == 1)
  {
    *buf = 0u;
    v45 = 0u;
    v10 = a3[1];
    v42 = *a3;
    v43 = v10;
    RETypeInfoGetDictionaryValueType();
    if (*&v40[0])
    {
      v11 = a3[1];
      v42 = *a3;
      v43 = v11;
      v12 = *a2;
      pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v36);
      REDictionaryAddEntry();
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(v40);
      v13 = *v41;
      operator new();
    }
  }

  else
  {
    std::vector<std::shared_ptr<unsigned char>>::resize(a4, v36);
    *(&v42 + 1) = 0;
    *&v43 = 0;
    *&v42 = &v42 + 8;
    if (v36)
    {
      v14 = 0;
      do
      {
        v15 = a3[1];
        *buf = *a3;
        v45 = v15;
        v16 = *a2;
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v36);
        REDictionaryAddEntry();
        pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v36);
        v17 = &v38[v14];
        v18 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = v18[4];
            if (v20 <= v17)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_23;
            }
          }

          if (v20 >= v17)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        v19[5] = v14++;
      }

      while (v14 < v36);
    }

    v21 = a3[1];
    *buf = *a3;
    v45 = v21;
    v22 = *a2;
    REDictionaryIteratorCreate();
    while (1)
    {
      v23 = a3[1];
      *buf = *a3;
      v45 = v23;
      if (!REDictionaryIteratorMoveNext())
      {
        break;
      }

      v24 = a3[1];
      *buf = *a3;
      v45 = v24;
      CurrentKey = REDictionaryIteratorGetCurrentKey();
      v26 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        v27 = &v42 + 8;
        do
        {
          v28 = *(v26 + 4);
          v29 = v28 >= CurrentKey;
          v30 = v28 < CurrentKey;
          if (v29)
          {
            v27 = v26;
          }

          v26 = *&v26[8 * v30];
        }

        while (v26);
        if (v27 != &v42 + 8 && CurrentKey >= *(v27 + 4))
        {
          v32 = *(v27 + 5);
          v33 = a3[1];
          *buf = *a3;
          v45 = v33;
          REDictionaryIteratorGetCurrentValue();
          operator new();
        }
      }

      v31 = *(realityio::logObjects(CurrentKey) + 24);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Expected to find key in key cache", buf, 2u);
      }
    }

    v34 = a3[1];
    *buf = *a3;
    v45 = v34;
    REDictionaryIteratorDestroy();
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(&v42 + 1));
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v39);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2476F4D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(&a15);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::usdToRe_HashTableStringEntries(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t *a2, _OWORD *a3, uint64_t *a4)
{
  v89 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](v85, "keys");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v77, a1, v85);
  if ((v85[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v85 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v77);
  v7 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if ((pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==() & 1) == 0)
  {
    *v83 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v77);
    if (!atomic_load(v7))
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v10 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==();
    if ((v10 & 1) == 0)
    {
      v58 = *(realityio::logObjects(v10) + 24);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1, v83);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v83);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v77, buf);
        v60 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(buf);
        *v85 = 136315394;
        *&v85[4] = Text;
        *&v85[12] = 2080;
        *&v85[14] = v60;
        _os_log_impl(&dword_247485000, v58, OS_LOG_TYPE_DEFAULT, "Unsupported keys format for (%s) at (%s)", v85, 0x16u);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v83);
      }

      goto LABEL_153;
    }
  }

  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  *v85 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v77);
  if (!atomic_load(v7))
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(v85, &v77);
    *v83 = *&v85[8];
    *&v83[16] = *&v85[24];
    *&v83[32] = v86;
    if (v86)
    {
      v12 = v86 - 2;
      if (*&v83[24])
      {
        v12 = *&v83[24];
      }

      atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,realityio::DetailedError>::~Result(v85);
    if (*v83)
    {
      v13 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(v83);
        if ((*(*&v83[32] + 8 * v13) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(*&v83[32] + 8 * v13) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::emplace_back<std::string const&>(&v74, EmptyString);
        ++v13;
      }

      while (v13 < *v83);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v83);
  }

  else
  {
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v77, v85);
    if (v85[0] == 1)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v77, v83);
      *buf = *&v83[8];
      *&buf[16] = *&v83[24];
      v88 = v84;
      if (v84)
      {
        v16 = v84 - 2;
        if (*&buf[24])
        {
          v16 = *&buf[24];
        }

        atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v74);
      v74 = *buf;
      v75 = *&buf[16];
      memset(buf, 0, sizeof(buf));
      v76 = v88;
      v88 = 0;
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(buf);
      realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v83);
    }

    realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v85);
  }

  memset(v83, 0, 32);
  v17 = a3[1];
  *v85 = *a3;
  *&v85[16] = v17;
  RETypeInfoGetDictionaryKeyType();
  *v85 = *v83;
  *&v85[16] = *&v83[16];
  Name = RETypeInfoGetName();
  std::string::basic_string[abi:ne200100]<0>(&__p, Name);
  MEMORY[0x24C1A5DE0](buf, "counts");
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v85, buf, a1);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v85[0] == 1)
  {
    memset(buf, 0, sizeof(buf));
    v19 = a3[1];
    *v82 = *a3;
    *&v82[16] = v19;
    DictionaryValueType = RETypeInfoGetDictionaryValueType();
    if (!*&v85[8])
    {
      goto LABEL_150;
    }

    if (v73 < 0)
    {
      if (*(&__p + 1) != 8)
      {
        if (*(&__p + 1) != 13)
        {
          goto LABEL_142;
        }

        if (*__p != 0x5363696D616E7944 || *(__p + 5) != 0x676E697274536369)
        {
          goto LABEL_142;
        }

LABEL_49:
        *v82 = *v83;
        *&v82[16] = *&v83[16];
        RETypeInfoCreateInstance();
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v74);
        if (*(v76 + 23) < 0)
        {
          v23 = *v76;
        }

        REDynamicStringSet();
        goto LABEL_58;
      }

      p_p = __p;
    }

    else
    {
      if (v73 != 8)
      {
        if (v73 != 13)
        {
          goto LABEL_142;
        }

        if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
        {
          goto LABEL_142;
        }

        goto LABEL_49;
      }

      p_p = &__p;
    }

    if (*p_p != 0x4449676E69727453)
    {
LABEL_142:
      v65 = *(realityio::logObjects(DictionaryValueType) + 24);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        if (v73 >= 0)
        {
          v66 = &__p;
        }

        else
        {
          v66 = __p;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v77, &v81);
        v67 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v81);
        *v82 = 136315394;
        *&v82[4] = v66;
        *&v82[12] = 2080;
        *&v82[14] = v67;
        _os_log_impl(&dword_247485000, v65, OS_LOG_TYPE_DEFAULT, "Unsupported string format for (%s) at (%s)", v82, 0x16u);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v81);
      }

      goto LABEL_150;
    }

    *v82 = *v83;
    *&v82[16] = *&v83[16];
    RETypeInfoCreateInstance();
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v74);
    if (*(v76 + 23) < 0)
    {
      v25 = *v76;
    }

    REStringIDSet();
LABEL_58:
    v26 = a3[1];
    *v82 = *a3;
    *&v82[16] = v26;
    v27 = *a2;
    REDictionaryAddEntry();
    pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v85[8]);
    v28 = *v86;
    operator new();
  }

  std::vector<std::shared_ptr<unsigned char>>::resize(a4, v74);
  *&v82[8] = 0;
  *&v82[16] = 0;
  *v82 = &v82[8];
  if (v74)
  {
    v29 = 0;
    for (i = 0; i < v74; ++i)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v74);
      v32 = &v76[v29];
      if (SHIBYTE(v76[v29 + 2]) < 0)
      {
        v32 = *v32;
      }

      if (v73 < 0)
      {
        if (*(&__p + 1) == 8)
        {
          v35 = __p;
          goto LABEL_81;
        }

        if (*(&__p + 1) != 13 || (*__p == 0x5363696D616E7944 ? (v34 = *(__p + 5) == 0x676E697274536369) : (v34 = 0), !v34))
        {
LABEL_136:
          v62 = *(realityio::logObjects(v31) + 24);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            if (v73 >= 0)
            {
              v63 = &__p;
            }

            else
            {
              v63 = __p;
            }

            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v77, &v81);
            v64 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v81);
            *buf = 136315394;
            *&buf[4] = v63;
            *&buf[12] = 2080;
            *&buf[14] = v64;
            _os_log_impl(&dword_247485000, v62, OS_LOG_TYPE_DEFAULT, "Unsupported string format for (%s) at (%s)", buf, 0x16u);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v81);
          }

          goto LABEL_149;
        }
      }

      else
      {
        if (v73 == 8)
        {
          v35 = &__p;
LABEL_81:
          if (*v35 != 0x4449676E69727453)
          {
            goto LABEL_136;
          }

          *buf = *v83;
          *&buf[16] = *&v83[16];
          RETypeInfoCreateInstance();
          REStringIDSet();
          goto LABEL_83;
        }

        if (v73 != 13)
        {
          goto LABEL_136;
        }

        if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
        {
          goto LABEL_136;
        }
      }

      *buf = *v83;
      *&buf[16] = *&v83[16];
      RETypeInfoCreateInstance();
      REDynamicStringSet();
LABEL_83:
      std::string::basic_string[abi:ne200100]<0>(buf, v32);
      v36 = *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(v82, &v81, buf);
      if (!v36)
      {
        operator new();
      }

      *(v36 + 56) = i;
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v37 = a3[1];
      *buf = *a3;
      *&buf[16] = v37;
      v38 = *a2;
      REDictionaryAddEntry();
      *buf = *v83;
      *&buf[16] = *&v83[16];
      RETypeInfoDestroyInstance();
      v29 += 3;
    }
  }

  v39 = a3[1];
  *buf = *a3;
  *&buf[16] = v39;
  v40 = *a2;
  REDictionaryIteratorCreate();
  while (1)
  {
    v41 = a3[1];
    *buf = *a3;
    *&buf[16] = v41;
    if (!REDictionaryIteratorMoveNext())
    {
      v68 = a3[1];
      *buf = *a3;
      *&buf[16] = v68;
      REDictionaryIteratorDestroy();
      goto LABEL_149;
    }

    v42 = a3[1];
    *buf = *a3;
    *&buf[16] = v42;
    CurrentKey = REDictionaryIteratorGetCurrentKey();
    if (v73 < 0)
    {
      break;
    }

    if (v73 != 8)
    {
      if (v73 != 13)
      {
        goto LABEL_134;
      }

      if (__p != 0x5363696D616E7944 || *(&__p + 5) != 0x676E697274536369)
      {
        goto LABEL_134;
      }

      goto LABEL_105;
    }

    v46 = &__p;
LABEL_108:
    if (*v46 != 0x4449676E69727453)
    {
      goto LABEL_134;
    }

    CurrentKey = REStringIDGet();
LABEL_110:
    v47 = CurrentKey;
    if (!CurrentKey)
    {
      goto LABEL_134;
    }

    v48 = std::string::basic_string[abi:ne200100]<0>(buf, CurrentKey);
    v49 = *&v82[8];
    if (!*&v82[8])
    {
      goto LABEL_124;
    }

    v50 = &v82[8];
    do
    {
      v51 = v50;
      v52 = (v49 + 32);
      v48 = std::less<std::string>::operator()[abi:ne200100](v82, (v49 + 32), buf);
      if (v48)
      {
        v53 = 8;
      }

      else
      {
        v53 = 0;
      }

      if (!v48)
      {
        v50 = v49;
      }

      v49 = *(v49 + v53);
    }

    while (v49);
    if (v50 == &v82[8] || (!v48 ? (v54 = v52) : (v54 = (v51 + 32)), v48 = std::less<std::string>::operator()[abi:ne200100](v82, buf, v54), v48))
    {
LABEL_124:
      v50 = &v82[8];
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (&v82[8] != v50)
    {
      v55 = *(v50 + 7);
      v56 = a3[1];
      *buf = *a3;
      *&buf[16] = v56;
      REDictionaryIteratorGetCurrentValue();
      operator new();
    }

    v57 = *(realityio::logObjects(v48) + 24);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v47;
      _os_log_impl(&dword_247485000, v57, OS_LOG_TYPE_DEFAULT, "Expected to find %s in key cache.", buf, 0xCu);
    }
  }

  if (*(&__p + 1) == 8)
  {
    v46 = __p;
    goto LABEL_108;
  }

  if (*(&__p + 1) == 13 && *__p == 0x5363696D616E7944 && *(__p + 5) == 0x676E697274536369)
  {
LABEL_105:
    CurrentKey = REDynamicStringGetValue();
    goto LABEL_110;
  }

LABEL_134:
  v61 = *(realityio::logObjects(CurrentKey) + 24);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v61, OS_LOG_TYPE_DEFAULT, "Unexpected non-string key in HashTable.", buf, 2u);
  }

LABEL_149:
  std::__tree<std::string>::destroy(v82, *&v82[8]);
LABEL_150:
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v85);
  if (v73 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v74);
LABEL_153:
  if ((v80 & 7) != 0)
  {
    atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v79);
  result = v78;
  if (v78)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v78);
  }

  v70 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476F5C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<std::shared_ptr<unsigned char>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 16 * a2;
      while (v4 != v11)
      {
        v12 = *(v4 - 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v4 -= 16;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v13 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<unsigned char>>>(v10);
      }

      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 16 * v6);
    a1[1] = v4 + 16 * v6;
  }
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595D258;
  a2[1] = v2;
  return result;
}

void std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v5(a2, &v6, a4, a5);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_2476F6094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &),std::allocator<void (*)(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>,void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, uint64_t *a2, uint64_t a3)
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
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(uint64_t result, void *a2, uint64_t *a3)
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

void sub_2476F639C(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](0, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,void *>>>::operator()[abi:ne200100](char a1, void *a2)
{
  if (a1)
  {
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a2 + 5));
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

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(a1[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100]((a1 + 5));
    v2 = a1[4];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  if ((a2 & 7) != 0 && (atomic_fetch_add_explicit((a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](a1 + 1, a3);
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](void *a1, void *a2)
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
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>> const&>(a1, v3, v5 + 4);
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

uint64_t std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](uint64_t result, uint64_t a2)
{
  qword_27EE53710 = 0;
  qword_27EE53708 = 0;
  qword_27EE53700 = &qword_27EE53708;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_27EE53708;
    while (v5 != &qword_27EE53708)
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
        v7 = &qword_27EE53708;
        do
        {
          v6 = v7[2];
          v8 = *v6 == v7;
          v7 = v6;
        }

        while (v8);
      }

      result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, v6 + 4, v2);
      v3 = qword_27EE53708;
      if (result)
      {
        goto LABEL_11;
      }

      if (!qword_27EE53708)
      {
LABEL_22:
        operator new();
      }

      v9 = &qword_27EE53708;
      while (1)
      {
        while (1)
        {
          v10 = v3;
          if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, v2, (v3 + 32)))
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

        result = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, v10 + 4, v2);
        if (!result)
        {
          break;
        }

        v9 = v10 + 1;
        v3 = v10[1];
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

      v5 = qword_27EE53700;
      v3 = qword_27EE53708;
    }

    v6 = &qword_27EE53708;
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