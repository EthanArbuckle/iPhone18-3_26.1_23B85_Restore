void sub_2476C80EC(_Unwind_Exception *a1)
{
  v3 = 16;
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
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::internal::assertHandler(unsigned int a1, const char *a2, const char *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1 > 1)
  {
    v14 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v27 = 0;
    *v19 = 0xE00000001;
    v20 = 1;
    v21 = getpid();
    v18 = 648;
    sysctl(v19, 4u, buf, &v18, 0, 0);
    if ((v27 & 0x800) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], v15))
  {
    *buf = 136315650;
    *&buf[4] = a3;
    v23 = 1024;
    v24 = a4;
    v25 = 2080;
    v26 = a2;
    _os_log_impl(&dword_247485000, MEMORY[0x277D86220], v15, "Assertion failed (%s:%i). Condition: %s", buf, 0x1Cu);
  }

  fprintf(*MEMORY[0x277D85DF8], "Assertion failed (%s:%i). Condition: %s\nCheck os_log for additional details!\n", a3, a4, a2);
  if (a5 >= 1)
  {
    *buf = &a10;
    os_log_with_args();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t realityio::TextureAssetAction::ImportOperationSettings::idString(realityio::TextureAssetAction::ImportOperationSettings *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v28);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "swizzle_", 8);
  v3 = *(this + 71);
  if (v3 >= 0)
  {
    v4 = this + 48;
  }

  else
  {
    v4 = *(this + 6);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 71);
  }

  else
  {
    v5 = *(this + 7);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "_", 1);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "textureSemantic_", 16);
  v9 = *(this + 47);
  if (v9 >= 0)
  {
    v10 = this + 24;
  }

  else
  {
    v10 = *(this + 3);
  }

  if (v9 >= 0)
  {
    v11 = *(this + 47);
  }

  else
  {
    v11 = *(this + 4);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "_", 1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "colorSpace_", 11);
  v15 = *(this + 23);
  if (v15 >= 0)
  {
    v16 = this;
  }

  else
  {
    v16 = *this;
  }

  if (v15 >= 0)
  {
    v17 = *(this + 23);
  }

  else
  {
    v17 = *(this + 1);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "_", 1);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "downSample_", 11);
  v21 = MEMORY[0x24C1A8F10](v20, *(this + 18));
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "_", 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "restictTo8_", 11);
  if (*(this + 76))
  {
    v24 = "true";
  }

  else
  {
    v24 = "false";
  }

  if (*(this + 76))
  {
    v25 = 4;
  }

  else
  {
    v25 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
  std::stringbuf::str();
  v28[0] = *MEMORY[0x277D82818];
  v26 = *(MEMORY[0x277D82818] + 72);
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v29 = v26;
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v33);
}

void sub_2476C85B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](v2 + 128);
  _Unwind_Resume(a1);
}

void realityio::TextureAssetAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x24C1A4260]())
  {
    v8 = RERenderManagerGetRenderDevice();
    [v8 supportsTextureSwizzle];
  }

  v80 = 0;
  memset(&v76, 0, sizeof(v76));
  std::string::basic_string[abi:ne200100]<0>(&v71, "");
  v63 = &v72;
  std::string::basic_string[abi:ne200100]<0>(&v72, "");
  p_p = &__p;
  IsImpl = std::string::basic_string[abi:ne200100]<0>(&__p, "rgba");
  v74 = 0;
  v75 = 0;
  v10 = *a3;
  if (a3[1] != *a3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = (*a4 + v12);
      *(&v82 + 1) = 0;
      if (!v14[1])
      {
        goto LABEL_36;
      }

      IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v78, &v82);
      v15 = v14[1];
      v16 = ~*(v14 + 2);
      *(&v82 + 1) = v15;
      if ((v16 & 3) != 0)
      {
        IsImpl = (*((v15 & 0xFFFFFFFFFFFFFFF8) + 24))(v14, &v82);
      }

      else
      {
        *&v82 = *v14;
      }

      if (v78.__r_.__value_.__l.__size_)
      {
        IsImpl = (*(v78.__r_.__value_.__l.__size_ + 32))(&v78);
      }

      v17 = *(&v82 + 1);
      if (!*(&v82 + 1))
      {
LABEL_36:
        v24 = *(realityio::logObjects(IsImpl) + 24);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
          v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v10 + v11));
          LODWORD(v78.__r_.__value_.__l.__data_) = 136315394;
          *(v78.__r_.__value_.__r.__words + 4) = Text;
          WORD2(v78.__r_.__value_.__r.__words[1]) = 2080;
          *(&v78.__r_.__value_.__r.__words[1] + 6) = v26;
          _os_log_impl(&dword_247485000, v24, OS_LOG_TYPE_DEFAULT, "%s TextureAssetAction::Unused input %s\n", &v78, 0x16u);
        }

        goto LABEL_39;
      }

      v18 = *(&v82 + 1) & 0xFFFFFFFFFFFFFFF8;
      if (!strcmp((*(*(*(&v82 + 1) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        break;
      }

      if ((v17 & 4) != 0)
      {
        v17 = *(&v82 + 1);
        if (IsImpl)
        {
          break;
        }

        if (!*(&v82 + 1))
        {
          goto LABEL_36;
        }

        v18 = *(&v82 + 1) & 0xFFFFFFFFFFFFFFF8;
      }

      IsImpl = strcmp((*(*v18 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio18TextureAssetAction23ImportOperationSettingsE" & 0x7FFFFFFFFFFFFFFFLL));
      if (IsImpl)
      {
        if ((v17 & 4) == 0)
        {
          goto LABEL_36;
        }

        if (!IsImpl)
        {
          goto LABEL_36;
        }

        v17 = *(&v82 + 1);
      }

      if ((v17 & 4) != 0)
      {
        v22 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v82);
      }

      else
      {
        v22 = v82;
      }

      std::string::operator=(&v71, v22);
      std::string::operator=(&v72, (v22 + 24));
      std::string::operator=(&__p, (v22 + 48));
      v23 = *(v22 + 72);
      v75 = *(v22 + 76);
      v74 = v23;
LABEL_39:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v82);
      ++v13;
      v10 = *a3;
      v12 += 16;
      v11 += 8;
      if (v13 >= (a3[1] - *a3) >> 3)
      {
        goto LABEL_43;
      }
    }

    if ((v17 & 4) != 0)
    {
      v19 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(&v82);
    }

    else
    {
      v19 = v82;
    }

    if (*(v19 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v78, *v19, *(v19 + 8));
    }

    else
    {
      v20 = *v19;
      v78.__r_.__value_.__r.__words[2] = *(v19 + 16);
      *&v78.__r_.__value_.__l.__data_ = v20;
    }

    if (*(v19 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v79, *(v19 + 24), *(v19 + 32));
    }

    else
    {
      v21 = *(v19 + 24);
      v79.__r_.__value_.__r.__words[2] = *(v19 + 40);
      *&v79.__r_.__value_.__l.__data_ = v21;
    }

    std::string::operator=(&v76, &v79);
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

LABEL_43:
  pxrInternal__aapl__pxrReserved__::ArGetResolver(IsImpl);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v78 = v76;
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (!v70)
  {
    std::string::basic_string[abi:ne200100]<0>(&v78, "Could not retrieve asset path");
    ExecFault::errorValue(2, &v78, 0, a5);
  }

  (*(*v70 + 24))(&v69);
  v27 = v69;
  v28 = (*(*v70 + 16))(v70);
  v29 = CFDataCreateWithBytesNoCopy(0, v27, v28, *MEMORY[0x277CBED00]);
  v68[1] = v29;
  if (!v29)
  {
    std::string::basic_string[abi:ne200100]<0>(&v78, "Could not retrieve texture data");
    ExecFault::errorValue(2, &v78, 0, a5);
  }

  v68[0] = v29;
  CFRetain(v29);
  if (!ServiceLocator)
  {
    std::string::basic_string[abi:ne200100]<0>(&v81, "Could not find service locator");
    v31 = std::system_category();
    realityio::DetailedError::DetailedError(&v82, 0, v31, &v81);
    *&v78.__r_.__value_.__r.__words[1] = v82;
    *&v79.__r_.__value_.__l.__data_ = *v83;
    *(&v79.__r_.__value_.__r.__words[1] + 7) = *&v83[15];
    v32 = v83[23];
    memset(v83, 0, sizeof(v83));
    v78.__r_.__value_.__s.__data_[0] = 0;
    *(&v79.__r_.__value_.__s + 23) = v32;
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

LABEL_157:
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(v68);
    if (v78.__r_.__value_.__s.__data_[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      RETextureImportOperationSetAssetResourceName();
      v77 = 0;
      if (RETextureImportOperationCreateAssetData())
      {
        MEMORY[0x24C1A4230](ServiceLocator);
        TextureAssetFromDataAsync = REAssetManagerCreateTextureAssetFromDataAsync();
        realityio::ECSAction::queueForDeferredAssetLoad(a1, &TextureAssetFromDataAsync);
        v81.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAsset *>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_PlaceCopy();
      }

      v56 = std::string::basic_string[abi:ne200100]<0>(&v82, "Error importing texture ");
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v76;
      }

      else
      {
        v57 = v76.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v76.__r_.__value_.__l.__size_;
      }

      std::string::append(v56, v57, size);
      ExecFault::errorValue(2, &v82, v77, a5);
    }

    std::error_code::message(&v81, &v78.__r_.__value_.__r.__words[1]);
    v54 = std::string::insert(&v81, 0, "Could not instantiate import operation");
    v55 = *&v54->__r_.__value_.__l.__data_;
    *v83 = *(&v54->__r_.__value_.__l + 2);
    v82 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    ExecFault::errorValue(2, &v82, 0, a5);
  }

  v77 = RETextureImportOperationCreateWithData();
  if (!v77)
  {
    std::string::basic_string[abi:ne200100]<0>(&v81, "Failed to create import operation");
    v33 = std::system_category();
    realityio::DetailedError::DetailedError(&v82, 0, v33, &v81);
    *&v78.__r_.__value_.__r.__words[1] = v82;
    *&v79.__r_.__value_.__l.__data_ = *v83;
    *(&v79.__r_.__value_.__r.__words[1] + 7) = *&v83[15];
    v34 = v83[23];
    memset(v83, 0, sizeof(v83));
    v78.__r_.__value_.__s.__data_[0] = 0;
    *(&v79.__r_.__value_.__s + 23) = v34;
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    goto LABEL_156;
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v72.__r_.__value_.__l.__size_ > 4)
    {
      switch(v72.__r_.__value_.__l.__size_)
      {
        case 5uLL:
          if (*v72.__r_.__value_.__l.__data_ != 1869377379 || *(v72.__r_.__value_.__r.__words[0] + 4) != 114)
          {
            goto LABEL_127;
          }

          break;
        case 6uLL:
          if ((*v72.__r_.__value_.__l.__data_ != 1818321779 || *(v72.__r_.__value_.__r.__words[0] + 4) != 29281) && (*v72.__r_.__value_.__l.__data_ != 1836216174 || *(v72.__r_.__value_.__r.__words[0] + 4) != 27745))
          {
LABEL_127:
            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              if (!v71.__r_.__value_.__l.__size_)
              {
                goto LABEL_139;
              }

              *&v82 = 0;
              v47 = v71.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (!*(&v71.__r_.__value_.__s + 23))
              {
                goto LABEL_139;
              }

              *&v82 = 0;
              v47 = &v71;
            }

            v48 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v47, 0x8000100u);
            if (v82)
            {
              CFRelease(v82);
            }

            *&v82 = v48;
            if (v48)
            {
              v81.__r_.__value_.__r.__words[0] = 0;
              v81.__r_.__value_.__r.__words[0] = MEMORY[0x24C1A4490](v48);
              if (v81.__r_.__value_.__r.__words[0])
              {
                RETextureImportOperationSetColorSpaceName();
              }

              realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v81.__r_.__value_.__l.__data_);
            }

            realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v82);
LABEL_139:
            if (v74)
            {
              RETextureImportOperationSetDimensionsMode();
              RETextureImportOperationSetDownsampleFactor();
            }

            v49 = RETextureImportOperationCopyTextureDescriptorTemplate();
            v50 = v49;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__p.__r_.__value_.__l.__size_ != 1)
              {
                if (__p.__r_.__value_.__l.__size_ != 3)
                {
                  goto LABEL_152;
                }

                p_p = __p.__r_.__value_.__r.__words[0];
LABEL_148:
                if (LOWORD(p_p->__r_.__value_.__l.__data_) == 26482 && p_p->__r_.__value_.__s.__data_[2] == 98)
                {
                  v52 = 17040130;
                  goto LABEL_153;
                }

LABEL_152:
                v52 = 84148994;
LABEL_153:
                [v49 setSwizzle:v52];
                if (v75 == 1)
                {
                  RETextureImportOperationSetPixelFormatMode();
                  [v50 setPixelFormat:10];
                }

                RETextureImportOperationSetTextureDescriptorTemplate();
                v53 = v77;
                v77 = 0;
                v78.__r_.__value_.__s.__data_[0] = 1;
                v78.__r_.__value_.__l.__size_ = v53;
                *&v82 = 0;
                realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&v82);

LABEL_156:
                realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&v77);
                goto LABEL_157;
              }

              v59 = *__p.__r_.__value_.__l.__data_;
            }

            else
            {
              if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
              {
                if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
                {
                  goto LABEL_152;
                }

                goto LABEL_148;
              }

              v59 = __p.__r_.__value_.__s.__data_[0];
            }

            if (v59 > 102)
            {
              if (v59 == 103)
              {
                v52 = 16974595;
                goto LABEL_153;
              }

              if (v59 == 114)
              {
                v52 = 16908802;
                goto LABEL_153;
              }
            }

            else
            {
              if (v59 == 97)
              {
                v52 = 17106181;
                goto LABEL_153;
              }

              if (v59 == 98)
              {
                v52 = 17040388;
                goto LABEL_153;
              }
            }

            goto LABEL_152;
          }

          break;
        case 8uLL:
          v30 = *v72.__r_.__value_.__l.__data_;
LABEL_69:
          if (v30 != 0x726F6C6F43726468)
          {
            goto LABEL_127;
          }

          break;
        default:
          goto LABEL_127;
      }

LABEL_126:
      RETextureImportOperationSetSemantic();
      goto LABEL_127;
    }

    if (v72.__r_.__value_.__l.__size_ == 3)
    {
      if (*v72.__r_.__value_.__l.__data_ != 24946 || *(v72.__r_.__value_.__r.__words[0] + 2) != 119)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }

    if (v72.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_127;
    }

    v63 = v72.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v72.__r_.__value_.__r.__words[2]) > 4u)
    {
      switch(HIBYTE(v72.__r_.__value_.__r.__words[2]))
      {
        case 5u:
          if (LODWORD(v72.__r_.__value_.__l.__data_) != 1869377379 || v72.__r_.__value_.__s.__data_[4] != 114)
          {
            goto LABEL_127;
          }

          break;
        case 6u:
          if ((LODWORD(v72.__r_.__value_.__l.__data_) != 1818321779 || WORD2(v72.__r_.__value_.__r.__words[0]) != 29281) && (LODWORD(v72.__r_.__value_.__l.__data_) != 1836216174 || WORD2(v72.__r_.__value_.__r.__words[0]) != 27745))
          {
            goto LABEL_127;
          }

          break;
        case 8u:
          v30 = v72.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        default:
          goto LABEL_127;
      }

      goto LABEL_126;
    }

    if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 3)
    {
      if (LOWORD(v72.__r_.__value_.__l.__data_) != 24946 || v72.__r_.__value_.__s.__data_[2] != 119)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }

    if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_127;
    }
  }

  v35 = bswap32(v63->__r_.__value_.__l.__data_);
  v36 = v35 >= 0x6E6F6E65;
  v37 = v35 > 0x6E6F6E65;
  v38 = !v36;
  if (v37 != v38)
  {
    goto LABEL_127;
  }

  goto LABEL_126;
}

void sub_2476C9280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, const void *a25, const void *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v53 - 168));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v53 - 144));
  realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&a53);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a25);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a26);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v53 - 184));
  _Unwind_Resume(a1);
}

void realityio::tokens::MaterialBuilderTokens_StaticTokenType::~MaterialBuilderTokens_StaticTokenType(realityio::tokens::MaterialBuilderTokens_StaticTokenType *this)
{
  v42 = (this + 328);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v42);
  v2 = *(this + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 39);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 38);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 37);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 36);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 35);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 34);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 33);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 32);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 31);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 30);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 29);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 28);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 27);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 26);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 25);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 24);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 23);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 22);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 21);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 20);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 19);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 18);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 17);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 16);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 15);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 14);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 13);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 12);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 11);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 10);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 9);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 8);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 7);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 6);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 5);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 4);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 3);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 2);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 1);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::MaterialBuilderTokens_StaticTokenType *realityio::tokens::MaterialBuilderTokens_StaticTokenType::MaterialBuilderTokens_StaticTokenType(realityio::tokens::MaterialBuilderTokens_StaticTokenType *this)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Material", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "Shader", 0);
  MEMORY[0x24C1A5DF0](this + 16, "NodeGraph", 0);
  MEMORY[0x24C1A5DF0](this + 24, "mtlx", 0);
  MEMORY[0x24C1A5DF0](this + 32, "fallback", 0);
  MEMORY[0x24C1A5DF0](this + 40, "scale", 0);
  MEMORY[0x24C1A5DF0](this + 48, "file", 0);
  MEMORY[0x24C1A5DF0](this + 56, "index", 0);
  MEMORY[0x24C1A5DF0](this + 64, "inputs:index", 0);
  MEMORY[0x24C1A5DF0](this + 72, "geomprop", 0);
  MEMORY[0x24C1A5DF0](this + 80, "varname", 0);
  MEMORY[0x24C1A5DF0](this + 88, "RealityKit:includeUnusedMaterials", 0);
  MEMORY[0x24C1A5DF0](this + 96, "realitykit:vertex", 0);
  MEMORY[0x24C1A5DF0](this + 104, "ND_realitykit_occlusion_surfaceshader", 0);
  MEMORY[0x24C1A5DF0](this + 112, "ND_realitykit_shadowreceiver_surfaceshader", 0);
  MEMORY[0x24C1A5DF0](this + 120, "ND_texcoord_vector2", 0);
  MEMORY[0x24C1A5DF0](this + 128, "ND_texcoord_vector3", 0);
  MEMORY[0x24C1A5DF0](this + 136, "ND_texcoord_vector4", 0);
  MEMORY[0x24C1A5DF0](this + 144, "ND_realitykit_geometry_modifier_uv0", 0);
  MEMORY[0x24C1A5DF0](this + 152, "ND_realitykit_geometry_modifier_uv1", 0);
  MEMORY[0x24C1A5DF0](this + 160, "ND_realitykit_surface_uv0", 0);
  MEMORY[0x24C1A5DF0](this + 168, "ND_realitykit_surface_uv1", 0);
  MEMORY[0x24C1A5DF0](this + 176, "ND_UsdPrimvarReader_vector2", 0);
  MEMORY[0x24C1A5DF0](this + 184, "ND_UsdPrimvarReader_vector3", 0);
  MEMORY[0x24C1A5DF0](this + 192, "ND_UsdPrimvarReader_vector4", 0);
  MEMORY[0x24C1A5DF0](this + 200, "ND_UsdPrimvarReader_color3", 0);
  MEMORY[0x24C1A5DF0](this + 208, "ND_UsdPrimvarReader_color4", 0);
  MEMORY[0x24C1A5DF0](this + 216, "ND_geompropvalue_vector2", 0);
  MEMORY[0x24C1A5DF0](this + 224, "ND_geompropvalue_vector3", 0);
  MEMORY[0x24C1A5DF0](this + 232, "ND_geompropvalue_vector4", 0);
  MEMORY[0x24C1A5DF0](this + 240, "ND_geompropvalue_color3", 0);
  MEMORY[0x24C1A5DF0](this + 248, "ND_geompropvalue_color4", 0);
  MEMORY[0x24C1A5DF0](this + 256, "UV0", 0);
  MEMORY[0x24C1A5DF0](this + 264, "UV1", 0);
  MEMORY[0x24C1A5DF0](this + 272, "cullMode", 0);
  MEMORY[0x24C1A5DF0](this + 280, "front", 0);
  MEMORY[0x24C1A5DF0](this + 288, "back", 0);
  MEMORY[0x24C1A5DF0](this + 296, "none", 0);
  MEMORY[0x24C1A5DF0](this + 304, "unspecified", 0);
  MEMORY[0x24C1A5DF0](this + 312, "displayColor", 0);
  MEMORY[0x24C1A5DF0](this + 320, "displayOpacity", 0);
  v3 = *this;
  v48 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v49 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v50 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v51 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v52 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v53 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v54 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v55 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v56 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v57 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v58 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v59 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v60 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v61 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v62 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v63 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v64 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v65 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v66 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v67 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v68 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v69 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v70 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v71 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v72 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v73 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v74 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v75 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v76 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v77 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v78 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v79 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v80 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v81 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v82 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v83 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v84 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v85 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v86 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v87 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v88 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v88 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(this + 328, &v48, &v89, 0x29uLL);
  for (i = 320; i != -8; i -= 8)
  {
    v45 = *(&v48 + i);
    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2476CA3F8(_Unwind_Exception *a1)
{
  v3 = 320;
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
      v5 = v1[40];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[39];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[38];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[37];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[36];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[35];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[34];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[33];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[32];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[31];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[30];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[29];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[28];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[27];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[26];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[25];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[24];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[23];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[22];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[21];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[20];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[19];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[18];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[17];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[16];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[15];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[14];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[13];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v33 = v1[12];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v34 = v1[11];
      if ((v34 & 7) != 0)
      {
        atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v35 = v1[10];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v36 = v1[9];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v37 = v1[8];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v38 = v1[7];
      if ((v38 & 7) != 0)
      {
        atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v39 = v1[6];
      if ((v39 & 7) != 0)
      {
        atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v1[5];
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v41 = v1[4];
      if ((v41 & 7) != 0)
      {
        atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v42 = v1[3];
      if ((v42 & 7) != 0)
      {
        atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v43 = v1[2];
      if ((v43 & 7) != 0)
      {
        atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v44 = v1[1];
      if ((v44 & 7) != 0)
      {
        atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateMaterialAssetsDirtyStageSubscription(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53650))
  {
    operator new();
  }

  v3 = *algn_27EE53648;
  *a1 = _MergedGlobals_55;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2476CAB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, char a22)
{
  MEMORY[0x24C1A91B0](v24, 0x10A1C40F82F910ELL);
  a19 = &a22;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a19);
  MEMORY[0x24C1A91B0](v23, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v22, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE53650);
  _Unwind_Resume(a1);
}

uint64_t realityio::isMaterialX(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdShadeMaterial *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0 || !(*(*this + 32))(this, a2))
  {
    return 0;
  }

  v4 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::GetSurfaceOutput(&v21, this, (v4 + 24));
  if (pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput())
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v5 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
    }

    v19 = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v18, (v5 + 24));
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
    if (!v16 || (*(v16 + 57) & 8) != 0 || ((*(v15 + 32))(&v15) & 1) == 0)
    {
      goto LABEL_22;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v11, &v16, &v17);
    v9 = v12;
    if (!v12 || (v10 = *(v12 + 7), (v10 & 0x800) != 0))
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v12, v8);
      v10 = *(v9 + 7);
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

    if (v10)
    {
      v6 = MEMORY[0x24C1A75A0](&v21);
    }

    else
    {
LABEL_22:
      v6 = 0;
    }

    MEMORY[0x24C1A5280](&v15);
    v11 = &v18;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  else
  {
    v6 = 0;
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

  return v6;
}

void sub_2476CAF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a9);
  MEMORY[0x24C1A5280](&a13);
  a9 = &a16;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a9);
  pxrInternal__aapl__pxrReserved__::UsdShadeOutput::~UsdShadeOutput((v16 - 48));
  _Unwind_Resume(a1);
}

uint64_t realityio::hasMaterialXSurface(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v5[0] = MEMORY[0x277D86758] + 16;
  isMaterialX = realityio::isMaterialX(v5, v2);
  MEMORY[0x24C1A5510](v5);
  return isMaterialX;
}

uint64_t realityio::getFileResolvedPath@<X0>(std::string *a1@<X8>)
{
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v14[0] = MEMORY[0x277D86708] + 16;
  v4 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v10, v14, (v4 + 48));
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v6);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
  }

  if (SHIBYTE(v9) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p, *(&__p + 1));
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = __p;
    a1->__r_.__value_.__r.__words[2] = v9;
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return MEMORY[0x24C1A5280](v14);
}

void sub_2476CB14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(va);
  MEMORY[0x24C1A5280](v8 - 40);
  _Unwind_Resume(a1);
}

uint64_t realityio::createMaterialInputs@<X0>(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1@<X1>, void *a2@<X8>)
{
  v83 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v52[0] = MEMORY[0x277D86758] + 16;
  v6 = atomic_load(MEMORY[0x277D86568]);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData();
  }

  v7 = *(v6 + 216);
  v78 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v72 = 0uLL;
  v73 = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(&v72, &v78, &v79, 1uLL);
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
  v75[0] = &v72;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v75);
  if ((v78 & 7) != 0)
  {
    atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v51 && (*(v51 + 57) & 8) == 0 && ((*(v50 + 32))(&v50) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v50, &v72);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, &v72);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 4, &v72 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v72);
    MEMORY[0x24C1A5DE0](v8, "diffuseColor");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v78, &v50, &v72);
    if ((v72 & 7) != 0)
    {
      atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x24C1A5DE0](&v72, "opacity");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v68, &v50, &v72);
    if ((v72 & 7) != 0)
    {
      atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v78) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v68) && (pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() & 1) != 0 && MEMORY[0x24C1A7400](&v78) && MEMORY[0x24C1A7400](&v68))
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeUtils::GetValueProducingAttributes();
      if (LODWORD(v74.__r_.__value_.__r.__words[1]))
      {
        v9 = HIDWORD(v74.__r_.__value_.__r.__words[1]);
        v10 = v72;
        if (HIDWORD(v74.__r_.__value_.__r.__words[1]) >= 2)
        {
          v11 = v72;
        }

        else
        {
          v11 = &v72;
        }

        LODWORD(v66) = *v11;
        v12 = *(v11 + 1);
        __p.__r_.__value_.__r.__words[0] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 48), 1uLL, memory_order_relaxed);
        }

        if (v9 >= 2)
        {
          v13 = v10;
        }

        else
        {
          v13 = &v72;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p.__r_.__value_.__r.__words[1], v13 + 4);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p.__r_.__value_.__r.__words[1] + 1, v13 + 5);
        v14 = *(v13 + 3);
        __p.__r_.__value_.__r.__words[2] = v14;
        if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          __p.__r_.__value_.__r.__words[2] &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeUtils::GetValueProducingAttributes();
        if (v76)
        {
          if (v77 >= 2)
          {
            v15 = v75[0];
          }

          else
          {
            v15 = v75;
          }

          pxrInternal__aapl__pxrReserved__::UsdAttribute::UsdAttribute(&v63, v15);
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v60, &__p, &__p.__r_.__value_.__r.__words[1]);
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v59, &v64, v65);
          pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v58, &v66);
          pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v57, &v63);
          realityio::getFileResolvedPath(&v56);
          realityio::getFileResolvedPath(&v55);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v60, &v54);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v59, &v53);
          v17 = v53;
          v16 = v54;
          pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v53);
          pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v54);
          v18 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v56, &v55);
          if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
          {
            v19 = 1;
          }

          else
          {
            v19 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
          }

          v47 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
          v48 = v16 == v17;
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if ((v57 & 7) != 0)
          {
            atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v49 = (v48 || v18) & v19 & v47;
          if ((v58 & 7) != 0)
          {
            atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(v59);
          pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&v60);
          pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v63);
        }

        else
        {
          v49 = 0;
        }

        pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdAttribute,1u>::~TfSmallVector(v75);
        if ((__p.__r_.__value_.__s.__data_[16] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p.__r_.__value_.__l.__size_);
        if (__p.__r_.__value_.__r.__words[0])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v49 = 0;
      }

      pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdAttribute,1u>::~TfSmallVector(&v72);
    }

    else
    {
      v49 = 0;
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

    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
    if (v79)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v79);
    }

    a2[1] = 0;
    v22 = a2 + 1;
    a2[2] = 0;
    *a2 = a2 + 1;
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v50);
    v23 = v63;
    v24 = v64;
    if (v63 != v64)
    {
      while (1)
      {
        if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v23) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput() || !MEMORY[0x24C1A7400](v23))
        {
          goto LABEL_109;
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeUtils::GetValueProducingAttributes();
        if (v76)
        {
          break;
        }

LABEL_108:
        pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdAttribute,1u>::~TfSmallVector(v75);
LABEL_109:
        v23 = (v23 + 32);
        if (v23 == v24)
        {
          goto LABEL_129;
        }
      }

      v25 = v77;
      v26 = v75[0];
      v27 = v75;
      if (v77 >= 2)
      {
        v27 = v75[0];
      }

      LODWORD(v78) = *v27;
      v28 = v27[1];
      v79 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 48), 1uLL, memory_order_relaxed);
      }

      if (v25 >= 2)
      {
        v29 = v26;
      }

      else
      {
        v29 = v75;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v80, v29 + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v81, v29 + 5);
      v30 = v29[3];
      v82 = v30;
      if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v82 &= 0xFFFFFFFFFFFFFFF8;
      }

      v31 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v68, &v79, &v80);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v31, v59);
      pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v56, &v78);
      BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v55, v23);
      if (v49)
      {
        BaseName = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
        if (BaseName)
        {
          BaseName = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
          if (BaseName)
          {
LABEL_96:
            if ((v55.__r_.__value_.__s.__data_[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v56.__r_.__value_.__s.__data_[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v56.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v59);
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

            if ((v82 & 7) != 0)
            {
              atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
            if (v79)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v79);
            }

            goto LABEL_108;
          }
        }
      }

      v33 = *v22;
      if (!*v22)
      {
        goto LABEL_77;
      }

      v34 = a2 + 1;
      do
      {
        BaseName = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v33 + 4, v59);
        if (BaseName)
        {
          v35 = 1;
        }

        else
        {
          v35 = 0;
        }

        if (!BaseName)
        {
          v34 = v33;
        }

        v33 = v33[v35];
      }

      while (v33);
      if (v34 == v22 || (BaseName = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v59, v34 + 4), BaseName))
      {
LABEL_77:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v36 = v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
        if ((v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v37 = (v36 + 16);
          if (*(v36 + 39) < 0)
          {
            v37 = *v37;
          }
        }

        else
        {
          v37 = "";
        }

        if ((v56.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (v56.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
        }

        v66 = v37;
        if (*(EmptyString + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *EmptyString, *(EmptyString + 8));
          v37 = v66;
        }

        else
        {
          v39 = *EmptyString;
          __p.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
          *&__p.__r_.__value_.__l.__data_ = v39;
        }

        std::string::basic_string[abi:ne200100]<0>(&v72, v37);
        v74 = __p;
        memset(&__p, 0, sizeof(__p));
        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v60, &v72);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v72 = v59;
        v40 = (std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a2, v59) + 40);
        if (v40 == &v60)
        {
          goto LABEL_95;
        }
      }

      else
      {
        *&v72 = v59;
        v41 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a2, v59);
        v61 = 0;
        v62 = 0;
        v60 = 0;
        v42 = std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&v60, *(v41 + 40), *(v41 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(v41 + 48) - *(v41 + 40)) >> 4));
        v43 = v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
        if ((v55.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v44 = (v43 + 16);
          if (*(v43 + 39) < 0)
          {
            v44 = *v44;
          }
        }

        else
        {
          v44 = "";
        }

        if ((v56.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v45 = (v56.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v45 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v42);
        }

        v66 = v44;
        if (*(v45 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v45, *(v45 + 8));
          v44 = v66;
        }

        else
        {
          v46 = *v45;
          __p.__r_.__value_.__r.__words[2] = *(v45 + 16);
          *&__p.__r_.__value_.__l.__data_ = v46;
        }

        std::string::basic_string[abi:ne200100]<0>(&v72, v44);
        v74 = __p;
        memset(&__p, 0, sizeof(__p));
        std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](&v60, &v72);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v72 = v59;
        v40 = (std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(a2, v59) + 40);
        if (v40 == &v60)
        {
          goto LABEL_95;
        }
      }

      std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(v40, v60, v61, 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 4));
LABEL_95:
      *&v72 = &v60;
      std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v72);
      goto LABEL_96;
    }

LABEL_129:
    *&v72 = &v63;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v72);
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

  MEMORY[0x24C1A5280](&v50);
  result = MEMORY[0x24C1A5510](v52);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476CBBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a2)
  {
    if (a23 < 0)
    {
      operator delete(__p);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if ((a30 & 7) != 0)
    {
      atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((a31 & 7) != 0)
    {
      atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a32);
    pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a36);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a40);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdAttribute,1u>::~TfSmallVector((v44 - 168));
    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a44);
    pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdAttribute,1u>::~TfSmallVector((v44 - 216));
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v44 - 248));
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput((v44 - 128));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TexcoordID::computeNormalizedName(realityio::TexcoordID *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (!v2)
  {
    std::to_string(&v24, *(this + 1));
    v3 = std::string::insert(&v24, 0, "UV");
    v4 = v3->__r_.__value_.__r.__words[0];
    v23.__r_.__value_.__r.__words[0] = v3->__r_.__value_.__l.__size_;
    *(v23.__r_.__value_.__r.__words + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
    v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    v6 = v23.__r_.__value_.__r.__words[0];
    *(this + 2) = v4;
    *(this + 3) = v6;
    *(this + 31) = *(v23.__r_.__value_.__r.__words + 7);
    *(this + 39) = v5;
    goto LABEL_69;
  }

  if ((v2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  pxrInternal__aapl__pxrReserved__::TfStringToUpper();
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 16) = v24;
  v7 = std::string::basic_string(&v24, (this + 16), 0, 9uLL, &v23);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_30;
    }

    if (v24.__r_.__value_.__r.__words[0] != 0x535241564D495250 || v24.__r_.__value_.__s.__data_[8] != 58)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (v24.__r_.__value_.__l.__size_ != 9)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
    goto LABEL_30;
  }

  v10 = *v24.__r_.__value_.__l.__data_ != 0x535241564D495250 || *(v24.__r_.__value_.__r.__words[0] + 8) != 58;
  operator delete(v24.__r_.__value_.__l.__data_);
  if (!v10)
  {
LABEL_26:
    v7 = std::string::basic_string(&v24, (this + 16), 9uLL, 0xFFFFFFFFFFFFFFFFLL, &v23);
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    *(this + 16) = v24;
  }

LABEL_30:
  v11 = *(this + 39);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = *(this + 3);
  }

  if (v11 >= 2)
  {
    std::string::basic_string(&v24, (this + 16), 0, 2uLL, &v23);
    std::string::basic_string(&v23, (this + 16), 2uLL, 0xFFFFFFFFFFFFFFFFLL, &v21);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if ((*(&v24.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (v24.__r_.__value_.__l.__size_ != 2)
        {
          goto LABEL_67;
        }

        v17 = v24.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(v24.__r_.__value_.__r.__words[2]) != 2)
        {
          goto LABEL_67;
        }

        v17 = &v24;
      }

      if (LOWORD(v17->__r_.__value_.__l.__data_) == 21587)
      {
        MEMORY[0x24C1A8D40](this + 16, "UV0");
      }

      goto LABEL_67;
    }

    if ((*(&v24.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v24.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_67;
      }

      v13 = v24.__r_.__value_.__r.__words[0];
      if (*v24.__r_.__value_.__l.__data_ != 22101)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (HIBYTE(v24.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_67;
      }

      if (LOWORD(v24.__r_.__value_.__l.__data_) != 22101)
      {
        v13 = &v24;
LABEL_50:
        if (LOWORD(v13->__r_.__value_.__l.__data_) == 21587)
        {
          goto LABEL_51;
        }

LABEL_67:
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

LABEL_69:
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        goto LABEL_71;
      }
    }

LABEL_51:
    v18 = 0;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v23;
    }

    else
    {
      v19 = v23.__r_.__value_.__r.__words[0];
    }

    while (memchr("0123456789", v19->__r_.__value_.__s.__data_[v18], 0xAuLL))
    {
      if (size == ++v18)
      {
        goto LABEL_64;
      }
    }

    if (v18 != -1)
    {
      goto LABEL_67;
    }

LABEL_64:
    std::operator+<char>();
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    *(this + 1) = v21;
    *(this + 4) = v22;
    goto LABEL_67;
  }

  v14 = *(realityio::logObjects(v7) + 24);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 1) & 0xFFFFFFFFFFFFFFF8;
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

    LODWORD(v24.__r_.__value_.__l.__data_) = 136315138;
    *(v24.__r_.__value_.__r.__words + 4) = v16;
    _os_log_impl(&dword_247485000, v14, OS_LOG_TYPE_DEFAULT, "Invalid Primvar Name '%s'", &v24, 0xCu);
  }

LABEL_71:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2476CC194(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void realityio::TexcoordID::getIndexFromName(realityio::TexcoordID *this)
{
  v2 = *(this + 39);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(this + 3);
  }

  if (v2 <= 1)
  {
    *(this + 1) = -1;
    return;
  }

  std::string::basic_string(&v26, (this + 16), 0, 2uLL, &v25);
  std::string::basic_string(&v25, (this + 16), 2uLL, 0xFFFFFFFFFFFFFFFFLL, __p);
  v3 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
    if (v25.__r_.__value_.__l.__size_)
    {
LABEL_9:
      if (size >= 3)
      {
        goto LABEL_36;
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v26.__r_.__value_.__l.__size_ != 2)
        {
          goto LABEL_36;
        }

        v5 = v26.__r_.__value_.__r.__words[0];
        if (*v26.__r_.__value_.__l.__data_ != 22101)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) != 2)
        {
          goto LABEL_36;
        }

        if (LOWORD(v26.__r_.__value_.__l.__data_) != 22101)
        {
          v5 = &v26;
LABEL_23:
          if (LOWORD(v5->__r_.__value_.__l.__data_) == 21587)
          {
            goto LABEL_24;
          }

LABEL_36:
          *(this + 1) = -1;
          goto LABEL_37;
        }
      }

LABEL_24:
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v25;
      }

      else
      {
        v7 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v25.__r_.__value_.__l.__size_;
      }

      if (!v8)
      {
        goto LABEL_42;
      }

      v9 = 0;
      while (memchr("0123456789", v7->__r_.__value_.__s.__data_[v9], 0xAuLL))
      {
        if (v8 == ++v9)
        {
          goto LABEL_42;
        }
      }

      if (v9 == -1)
      {
LABEL_42:
        v10 = atoi(v7);
        *(this + 1) = v10;
        if (v10 >= 8)
        {
          *(this + 1) = -1;
          v11 = std::string::basic_string[abi:ne200100]<0>(&v21, "error:");
          v13 = *(this + 1);
          v12 = (this + 8);
          v14 = v13 & 0xFFFFFFFFFFFFFFF8;
          if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            EmptyString = v14 + 16;
          }

          else
          {
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
          }

          v16 = *(EmptyString + 23);
          if (v16 >= 0)
          {
            v17 = EmptyString;
          }

          else
          {
            v17 = *EmptyString;
          }

          if (v16 >= 0)
          {
            v18 = *(EmptyString + 23);
          }

          else
          {
            v18 = *(EmptyString + 8);
          }

          v19 = std::string::append(&v21, v17, v18);
          v20 = *&v19->__r_.__value_.__l.__data_;
          v23 = v19->__r_.__value_.__r.__words[2];
          *__p = v20;
          v19->__r_.__value_.__l.__size_ = 0;
          v19->__r_.__value_.__r.__words[2] = 0;
          v19->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x24C1A5E00](&v24, __p);
          if (&v24 == v12)
          {
            if ((v24 & 7) != 0)
            {
              atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          else
          {
            if ((*v12 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v12 = v24;
            v24 = 0;
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }

          v3 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
        }

        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if (*(&v25.__r_.__value_.__s + 23))
  {
    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    goto LABEL_9;
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v26.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_36;
    }

    v6 = v26.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_36;
    }

    v6 = &v26;
  }

  if (LOWORD(v6->__r_.__value_.__l.__data_) != 21587)
  {
    goto LABEL_36;
  }

  *(this + 1) = 0;
LABEL_37:
  if (v3 < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

size_t realityio::TexcoordID::operator<(realityio::TexcoordID *a1, realityio::TexcoordID *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v102, "ST");
  std::string::basic_string[abi:ne200100]<0>(v100, "UV");
  std::string::basic_string[abi:ne200100]<0>(&v97, "PRIMVARS:ST");
  std::string::basic_string[abi:ne200100]<0>(v95, "PRIMVARS:UV");
  v4 = *a1;
  if (v4 == *a2)
  {
    realityio::TexcoordID::getNormalizedName(a1, &v94);
    realityio::TexcoordID::getNormalizedName(a2, &v93);
    v5 = SHIBYTE(v94.__r_.__value_.__r.__words[2]);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v94.__r_.__value_.__l.__size_;
    }

    v7 = SHIBYTE(v93.__r_.__value_.__r.__words[2]);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v4 = v93.__r_.__value_.__l.__size_;
    }

    if (size != v4 || ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &v94) : (v8 = v94.__r_.__value_.__r.__words[0]), (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v9 = &v93) : (v9 = v93.__r_.__value_.__r.__words[0]), EmptyString = memcmp(v8, v9, size), EmptyString))
    {
      v11 = v104;
      if ((v104 & 0x80u) == 0)
      {
        v12 = v104;
      }

      else
      {
        v12 = v103;
      }

      if (size != v12 || (v5 >= 0 ? (v13 = &v94) : (v13 = v94.__r_.__value_.__r.__words[0]), (v104 & 0x80u) == 0 ? (v14 = &v102) : (v14 = v102), memcmp(v13, v14, size)))
      {
        if (v4 == v12)
        {
          v15 = v7 >= 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
          v16 = v11 >= 0 ? &v102 : v102;
          if (!memcmp(v15, v16, v4))
          {
            goto LABEL_216;
          }
        }

        v17 = v99;
        if ((v99 & 0x80u) == 0)
        {
          v18 = v99;
        }

        else
        {
          v18 = v98;
        }

        if (size != v18 || (v5 >= 0 ? (v19 = &v94) : (v19 = v94.__r_.__value_.__r.__words[0]), (v99 & 0x80u) == 0 ? (v20 = &v97) : (v20 = v97), memcmp(v19, v20, size)))
        {
          if (v4 != v18 || (v7 >= 0 ? (v21 = &v93) : (v21 = v93.__r_.__value_.__r.__words[0]), v17 >= 0 ? (v22 = &v97) : (v22 = v97), memcmp(v21, v22, v4)))
          {
            v23 = 0;
            while (1)
            {
              std::to_string(&v91, v23);
              if ((v104 & 0x80u) == 0)
              {
                v24 = &v102;
              }

              else
              {
                v24 = v102;
              }

              if ((v104 & 0x80u) == 0)
              {
                v25 = v104;
              }

              else
              {
                v25 = v103;
              }

              v26 = std::string::insert(&v91, 0, v24, v25);
              __p = *v26;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v91.__r_.__value_.__l.__data_);
              }

              std::to_string(&v90, v23);
              if ((v101 & 0x80u) == 0)
              {
                v27 = v100;
              }

              else
              {
                v27 = v100[0];
              }

              if ((v101 & 0x80u) == 0)
              {
                v28 = v101;
              }

              else
              {
                v28 = v100[1];
              }

              v29 = std::string::insert(&v90, 0, v27, v28);
              v91 = *v29;
              v29->__r_.__value_.__l.__size_ = 0;
              v29->__r_.__value_.__r.__words[2] = 0;
              v29->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }

              std::to_string(&v89, v23);
              if ((v99 & 0x80u) == 0)
              {
                v30 = &v97;
              }

              else
              {
                v30 = v97;
              }

              if ((v99 & 0x80u) == 0)
              {
                v31 = v99;
              }

              else
              {
                v31 = v98;
              }

              v32 = std::string::insert(&v89, 0, v30, v31);
              v90 = *v32;
              v32->__r_.__value_.__l.__size_ = 0;
              v32->__r_.__value_.__r.__words[2] = 0;
              v32->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              std::to_string(&v88, v23);
              if ((v96 & 0x80u) == 0)
              {
                v33 = v95;
              }

              else
              {
                v33 = v95[0];
              }

              if ((v96 & 0x80u) == 0)
              {
                v34 = v96;
              }

              else
              {
                v34 = v95[1];
              }

              v35 = std::string::insert(&v88, 0, v33, v34);
              v89 = *v35;
              v35->__r_.__value_.__l.__size_ = 0;
              v35->__r_.__value_.__r.__words[2] = 0;
              v35->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v88.__r_.__value_.__l.__data_);
              }

              v36 = SHIBYTE(v94.__r_.__value_.__r.__words[2]);
              v37 = (v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v94.__r_.__value_.__r.__words[2]) : v94.__r_.__value_.__l.__size_;
              v38 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
              if (v37 == v39)
              {
                v40 = (v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
                v41 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                if (!memcmp(v40, v41, v37))
                {
                  break;
                }
              }

              v42 = SHIBYTE(v93.__r_.__value_.__r.__words[2]);
              if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v43 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v43 = v93.__r_.__value_.__l.__size_;
              }

              if (v43 == v39)
              {
                v44 = (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
                v45 = v38 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                if (!memcmp(v44, v45, v39))
                {
                  goto LABEL_170;
                }
              }

              v46 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
              if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v47 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v47 = v91.__r_.__value_.__l.__size_;
              }

              if (v37 == v47)
              {
                v48 = v36 >= 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
                v49 = (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v91 : v91.__r_.__value_.__r.__words[0];
                if (!memcmp(v48, v49, v37))
                {
                  break;
                }
              }

              if (v43 == v47)
              {
                v50 = v42 >= 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
                v51 = v46 >= 0 ? &v91 : v91.__r_.__value_.__r.__words[0];
                if (!memcmp(v50, v51, v43))
                {
                  goto LABEL_170;
                }
              }

              v52 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
              if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v53 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v53 = v90.__r_.__value_.__l.__size_;
              }

              if (v37 == v53)
              {
                v54 = v36 >= 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
                v55 = (v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v90 : v90.__r_.__value_.__r.__words[0];
                if (!memcmp(v54, v55, v37))
                {
                  break;
                }
              }

              if (v43 == v53 && (v42 >= 0 ? (v56 = &v93) : (v56 = v93.__r_.__value_.__r.__words[0]), v52 >= 0 ? (v57 = &v90) : (v57 = v90.__r_.__value_.__r.__words[0]), !memcmp(v56, v57, v43)))
              {
LABEL_170:
                v4 = 0;
                LOBYTE(v64) = 0;
              }

              else
              {
                v58 = SHIBYTE(v89.__r_.__value_.__r.__words[2]);
                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v59 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v59 = v89.__r_.__value_.__l.__size_;
                }

                if (v37 == v59)
                {
                  v60 = v36 >= 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
                  v61 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
                  if (!memcmp(v60, v61, v37))
                  {
                    break;
                  }
                }

                if (v43 == v59)
                {
                  if (v42 >= 0)
                  {
                    v62 = &v93;
                  }

                  else
                  {
                    v62 = v93.__r_.__value_.__r.__words[0];
                  }

                  if (v58 >= 0)
                  {
                    v63 = &v89;
                  }

                  else
                  {
                    v63 = v89.__r_.__value_.__r.__words[0];
                  }

                  v64 = memcmp(v62, v63, v43) != 0;
                }

                else
                {
                  v64 = 1;
                }

                v4 = v64 & v4;
              }

LABEL_173:
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v91.__r_.__value_.__l.__data_);
                if (v38 < 0)
                {
LABEL_183:
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              else if (v38 < 0)
              {
                goto LABEL_183;
              }

              if (!v64)
              {
                goto LABEL_217;
              }

              if (++v23 == 8)
              {
                if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v68 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v68 = v94.__r_.__value_.__l.__size_;
                }

                if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v69 = &v94;
                }

                else
                {
                  v69 = v94.__r_.__value_.__r.__words[0];
                }

                if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v70 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v70 = v93.__r_.__value_.__l.__size_;
                }

                if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v71 = &v93;
                }

                else
                {
                  v71 = v93.__r_.__value_.__r.__words[0];
                }

                if (v70 >= v68)
                {
                  v72 = v68;
                }

                else
                {
                  v72 = v70;
                }

                v73 = memcmp(v69, v71, v72);
                if (v73)
                {
                  v4 = v73 < 0;
                }

                else
                {
                  v4 = v68 < v70;
                }

                goto LABEL_217;
              }
            }

            LOBYTE(v64) = 0;
            v4 = 1;
            goto LABEL_173;
          }

LABEL_216:
          v4 = 0;
          goto LABEL_217;
        }
      }

      v4 = 1;
      goto LABEL_217;
    }

    v65 = *(a1 + 1);
    if ((v65 & 7) != 0 && (atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v65 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (v65)
    {
      v66 = *(a2 + 1);
      if ((v66 & 7) != 0 && (atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v66 &= 0xFFFFFFFFFFFFFFF8;
      }

      v67 = v66 == 0;
      if ((v66 & 7) != 0)
      {
        atomic_fetch_add_explicit((v66 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v67 = 1;
    }

    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v67)
    {
      goto LABEL_216;
    }

    v75 = *(a1 + 1);
    if ((v75 & 7) != 0 && (atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v75 &= 0xFFFFFFFFFFFFFFF8;
    }

    v76 = (v75 & 0xFFFFFFFFFFFFFFF8);
    if ((v75 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v77 = (v76 + 4);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v77 = EmptyString;
    }

    v78 = *(a2 + 1);
    if ((v78 & 7) != 0 && (atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v78 &= 0xFFFFFFFFFFFFFFF8;
    }

    v79 = (v78 & 0xFFFFFFFFFFFFFFF8);
    if ((v78 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v80 = (v79 + 4);
    }

    else
    {
      v80 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    }

    v81 = *(v80 + 23);
    v82 = *(v77 + 23);
    if ((v82 & 0x8000000000000000) != 0)
    {
      v83 = v77;
      v77 = *v77;
      v82 = v83[1];
    }

    if (v81 >= 0)
    {
      v84 = *(v80 + 23);
    }

    else
    {
      v84 = *(v80 + 8);
    }

    if (v81 >= 0)
    {
      v85 = v80;
    }

    else
    {
      v85 = *v80;
    }

    if (v84 >= v82)
    {
      v86 = v82;
    }

    else
    {
      v86 = v84;
    }

    v87 = memcmp(v77, v85, v86);
    if (v87)
    {
      v4 = v87 < 0;
    }

    else
    {
      v4 = v82 < v84;
    }

    if ((v78 & 7) != 0)
    {
      atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_release);
    }

    if ((v75 & 7) != 0)
    {
      atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_release);
    }

LABEL_217:
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }
  }

  if (v96 < 0)
  {
    operator delete(v95[0]);
  }

  if (v99 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100[0]);
  }

  if (v104 < 0)
  {
    operator delete(v102);
  }

  return v4;
}

uint64_t realityio::getCullMode(realityio *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = atomic_load(&realityio::tokens::MaterialBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::MaterialBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::MaterialBuilderTokens_StaticTokenType>>::_TryToCreateData();
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v6, this, (v3 + 272));
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v6))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 2;
}

void sub_2476CCF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a10);
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(uint64_t a1, void *a2)
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

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v5 + 4, a2))
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

  return *v3;
}

void std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(std::vector<std::pair<std::string, std::string>> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) < a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vdeallocate(this);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](this, v10);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v11 = this->__end_ - begin;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(__str, a3, &begin->first);
    for (i = this->__end_; i != v12; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, i))
    {
      --i;
    }

    this->__end_ = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(__str, (__str + v11), &begin->first);
    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(this, (__str + v11), a3, &this->__end_->first);
  }
}

void std::vector<std::pair<std::string,std::string>>::__vdeallocate(std::vector<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  if (this->__begin_)
  {
    end = this->__end_;
    v4 = this->__begin_;
    if (end != begin)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != begin);
      v4 = this->__begin_;
    }

    this->__end_ = begin;
    operator delete(v4);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return this;
}

uint64_t RIODependencyDescriptorGetTypeID()
{
  if (qword_27EE53660 != -1)
  {
    dispatch_once(&qword_27EE53660, &__block_literal_global_34);
  }

  return _MergedGlobals_56;
}

void __RIODependencyDescriptorGetTypeID_block_invoke()
{
  if (!_MergedGlobals_56)
  {
    _MergedGlobals_56 = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrUsdUtilsCopyAllDependencies()
{
  v14[5] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v11);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v11);
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v14[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdUtilsComputeAllDependencies();
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::UsdUtilsDependencyInfo ()(pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::UsdUtilsDependencyInfo const&)>::~__value_func[abi:ne200100](v14);
  v9 = 0uLL;
  v10 = 0;
  v0 = *&v11[0];
  v1 = *(&v11[0] + 1) - *&v11[0];
  if (*(&v11[0] + 1) != *&v11[0])
  {
    if (!((v1 >> 3) >> 61))
    {
      v14[4] = &v9;
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(v1 >> 3);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (*&v11[0])
  {
    v2 = *(&v11[0] + 1);
    v3 = *&v11[0];
    if (*(&v11[0] + 1) != *&v11[0])
    {
      do
      {
        v2 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(v2 - 1);
      }

      while (v2 != v0);
      v3 = *&v11[0];
    }

    *(&v11[0] + 1) = v0;
    operator delete(v3);
  }

  v11[0] = v9;
  *&v11[1] = v10;
  v10 = 0;
  v9 = 0uLL;
  v4 = *MEMORY[0x277CBECE8];
  if (qword_27EE53660 != -1)
  {
    dispatch_once(&qword_27EE53660, &__block_literal_global_34);
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    *(Instance + 32) = 0;
    *(Instance + 16) = v11[0];
    *(Instance + 32) = *&v11[1];
    memset(v11, 0, 24);
    *(Instance + 40) = *(&v11[1] + 8);
    *(Instance + 56) = *(&v11[2] + 1);
    memset(&v11[1] + 8, 0, 24);
    *(Instance + 80) = 0;
    *(Instance + 64) = v12;
    *(Instance + 80) = v13;
    v12 = 0uLL;
    v13 = 0;
  }

  v14[0] = &v9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](v14);
  v14[0] = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  v14[0] = &v11[1] + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v14);
  v14[0] = v11;
  std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](v14);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2476CD728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void *);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(va3, va2);
  v19 = va_arg(va3, void **);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(va3);
  va_copy(v19, va);
  std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](va2);
  realityio::DependencyDescriptor::~DependencyDescriptor(va1);
  _Unwind_Resume(a1);
}

__CFArray *RIODependencyDescriptorCopyLayers(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 != v4)
  {
    v5 = *MEMORY[0x277CBECE8];
    do
    {
      if (RIOPxrSdfLayerGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOPxrSdfLayerGetTypeID::onceToken, &__block_literal_global_11);
      }

      Instance = _CFRuntimeCreateInstance();
      v7 = Instance;
      if (Instance)
      {
        *(Instance + 16) = *v3;
        pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef((Instance + 16));
      }

      v9 = v7;
      CFArrayAppendValue(Mutable, v7);
      realityio::WrappedCFRef<RIOPxrSdfLayer *>::~WrappedCFRef(&v9);
      ++v3;
    }

    while (v3 != v4);
  }

  return Mutable;
}

void sub_2476CD8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<RIOPxrSdfLayer *>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

__CFArray *RIODependencyDescriptorCopyAssets(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  while (v4 != v3)
  {
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      v5 = *v4;
    }

    v7 = CFStringCreateWithCString(0, v5, 0x8000100u);
    CFArrayAppendValue(Mutable, v7);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v7);
    v4 += 24;
  }

  return Mutable;
}

void sub_2476CD968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

__CFArray *RIODependencyDescriptorCopyUnresolvedPaths(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  while (v4 != v3)
  {
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      v5 = *v4;
    }

    v7 = CFStringCreateWithCString(0, v5, 0x8000100u);
    CFArrayAppendValue(Mutable, v7);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v7);
    v4 += 24;
  }

  return Mutable;
}

void sub_2476CDA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::SdfLayer *RIOGetLoadedLayerIdentifiers()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetLoadedLayers(&v10, Mutable);
  v1 = v10;
  if (v10 != v11)
  {
    do
    {
      v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(v1 + 4);
      Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v2);
      if (*(Identifier + 23) >= 0)
      {
        v4 = Identifier;
      }

      else
      {
        v4 = *Identifier;
      }

      v9 = CFStringCreateWithCString(0, v4, 0x8000100u);
      CFArrayAppendValue(Mutable, v9);
      realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v9);
      v5 = v1[1];
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
        do
        {
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != v11);
  }

  std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::destroy(v11[0]);
  return Mutable;
}

void sub_2476CDB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, void *a11)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a9);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::destroy(a11);
  _Unwind_Resume(a1);
}

void _RIODependencyDescriptorCFFinalize(void **a1)
{
  v2 = a1 + 2;
  v3 = a1 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void realityio::DependencyDescriptor::~DependencyDescriptor(void **this)
{
  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<pxrInternal__aapl__pxrReserved__::UsdUtilsDependencyInfo ()(pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&,pxrInternal__aapl__pxrReserved__::UsdUtilsDependencyInfo const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

atomic_uint **std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(atomic_uint **result, void *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    v7 = result;
    do
    {
      *a3 = *v7;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(a3);
      ++v7;
      ++a3;
      v6 -= 8;
    }

    while (v7 != a2);
    do
    {
      result = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(v5++);
    }

    while (v5 != a2);
  }

  return result;
}

void sub_2476CDDE4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 8);
    do
    {
      v4 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(v4) - 1;
      v2 += 8;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::destroy(*a1);
    std::__tree<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

void realityio::ArbitraryComponentBuilder::ArbitraryComponentBuilder(realityio::ArbitraryComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[13] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v5, "ArbitraryComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(&__p, realityio::kArbitraryComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE536E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE536E0))
  {
    operator new();
  }

  if (*algn_27EE536D8)
  {
    atomic_fetch_add_explicit((*algn_27EE536D8 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = &unk_28595D308;
  v7[3] = v7;
  v6[0] = &unk_28595D408;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2);
}

void sub_2476CE304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  v47 = *(v45 - 104);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  *(v45 - 232) = &a37;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v45 - 232));
  v48 = *(v45 - 120);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  *(v45 - 232) = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v45 - 232));
  a25 = &a28;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a25);
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(&a32, a33);
  v49 = 24;
  while (1)
  {
    v50 = *(v45 - 160 + v49);
    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v49 -= 8;
    if (v49 == -8)
    {
      *(v45 - 160) = &a40;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v45 - 160));
      MEMORY[0x24C1A91B0](v44, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE536E0);
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
  }
}

uint64_t MockREComponentClassGetComponentTypeInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    REComponentClassGetName();
    return REGlobalTypeRegistryWithReadLock();
  }

  return result;
}

uint64_t ___Z40MockREComponentClassGetComponentTypeInfoP16REComponentClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = RETypeRegistryGetTypeInfoByTypeName();
  if (result)
  {
    result = RETypeInfoGetSubClassCount();
    if (result)
    {
      v3 = result;
      v4 = 0;
      while (1)
      {
        RETypeInfoGetSubClass();
        result = REComponentClassFromTypeInfo();
        if (result)
        {
          Name = REComponentClassGetName();
          result = strcmp(**(a1 + 32), Name);
          if (!result)
          {
            break;
          }
        }

        if (v3 == ++v4)
        {
          goto LABEL_9;
        }
      }

      v6 = *(a1 + 40);
      *v6 = 0u;
      v6[1] = 0u;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __copy_helper_block_ea8_32c72_ZTSKZ40MockREComponentClassGetComponentTypeInfoP16REComponentClassE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void buildValueType(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t *a2, _OWORD *a3, uint64_t *a4, const void **a5, realityio::ImportSession **a6, _BYTE *a7, uint64_t a8)
{
  v11 = a1;
  v212 = *MEMORY[0x277D85DE8];
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1);
  v163 = v11;
  if (IsValid)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(v199, v11);
    v13 = v199[0];
    v14 = v199[1];
    if (v199[0] != v199[1])
    {
      while (1)
      {
        Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v13);
        v16 = atomic_load(&realityio::tokens::ArbitraryComponentBuilderTokens);
        if (!v16)
        {
          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType>>::_TryToCreateData();
        }

        if ((*(v16 + 16) ^ *Name) < 8 || (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(v13) | a8) != 1)
        {
          goto LABEL_127;
        }

        v17 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v13);
        if ((*v17 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = (*v17 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
        }

        if (*(EmptyString + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v187, *EmptyString, *(EmptyString + 8));
        }

        else
        {
          v19 = *EmptyString;
          v187.__r_.__value_.__r.__words[2] = *(EmptyString + 16);
          *&v187.__r_.__value_.__l.__data_ = v19;
        }

        pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(v204, v13);
        MEMORY[0x24C1A5DE0](buf, "");
        v20 = *v204;
        v21 = *buf;
        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v204[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v21 ^ v20) < 8)
        {
          goto LABEL_56;
        }

        pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(buf, v13);
        pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(__p, v13);
        v22 = MEMORY[0x24C1A5DE0](v202, "values");
        v23 = *v202;
        if ((*v202 ^ *__p) <= 7)
        {
          if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v25 = (*buf & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v25 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
          }

          if (*(v25 + 23) >= 0)
          {
            v26 = *(v25 + 23);
          }

          else
          {
            v26 = *(v25 + 8);
          }

          std::string::basic_string[abi:ne200100](v204, v26 + 7);
          if (v204[23] >= 0)
          {
            v27 = v204;
          }

          else
          {
            v27 = *v204;
          }

          if (v26)
          {
            if (*(v25 + 23) >= 0)
            {
              v28 = v25;
            }

            else
            {
              v28 = *v25;
            }

            memmove(v27, v28, v26);
          }

          strcpy(&v27[v26], ":counts");
          MEMORY[0x24C1A5E00](&__src, v204);
          HasAttribute = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(v11, &__src);
          if ((__src & 7) != 0)
          {
            atomic_fetch_add_explicit((__src & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v204[23] & 0x80000000) != 0)
          {
            operator delete(*v204);
          }

          v24 = HasAttribute ^ 1;
          v23 = *v202;
        }

        else
        {
          v24 = 1;
        }

        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v24 & 1) == 0)
        {
          break;
        }

        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_123:
        if (SBYTE7(v211) < 0)
        {
          operator delete(v210);
        }

        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
        }

LABEL_127:
        v13 = (v13 + 32);
        if (v13 == v14)
        {
          goto LABEL_139;
        }
      }

      Namespace = pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(v204, v13);
      if ((*v204 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v31 = ((*v204 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v31 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Namespace);
      }

      std::string::operator=(&v187, v31);
      if ((v204[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (SBYTE7(v211) < 0)
      {
        operator delete(v210);
      }

      v210 = *v204;
      *&v211 = *&v204[16];
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

LABEL_56:
      MEMORY[0x24C1A5DE0](buf, "");
      memset(v204, 0, 24);
      *&v204[24] = *buf;
      v205 = 0u;
      *v206 = 0u;
      v32 = a3[1];
      *buf = *a3;
      *&buf[16] = v32;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      v33 = a2[1];
      v182[0] = *a2;
      v182[1] = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = MemberInfo;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (*v204)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if (!v36)
      {
        v40 = *(realityio::logObjects(MemberInfo) + 24);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a4 + 23) >= 0)
          {
            v41 = a4;
          }

          else
          {
            v41 = *a4;
          }

          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v13, __p);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(__p);
          *buf = 136315394;
          *&buf[4] = v41;
          *&buf[12] = 2080;
          *&buf[14] = Text;
          _os_log_impl(&dword_247485000, v40, OS_LOG_TYPE_DEFAULT, "Unknown component detail for %s from attribute: %s", buf, 0x16u);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
          v11 = v163;
        }

        goto LABEL_119;
      }

      *buf = v205;
      *&buf[16] = *v206;
      if (RETypeInfoGetCategory() == 2)
      {
        *buf = v205;
        *&buf[16] = *v206;
        EnumConstantCount = RETypeInfoGetEnumConstantCount();
        realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(v13, buf);
        if (buf[0] != 1)
        {
          goto LABEL_105;
        }

        if ((*&buf[8] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v39 = (*&buf[8] & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v39 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v38);
        }

        if (*(v39 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v202, *v39, *(v39 + 8));
        }

        else
        {
          v46 = *v39;
          *&v202[16] = *(v39 + 16);
          *v202 = v46;
        }

        v47 = a8;
        if (EnumConstantCount)
        {
          v48 = 0;
          do
          {
            *__p = v205;
            *&__p[16] = *v206;
            EnumConstantName = RETypeInfoGetEnumConstantName();
            v39 = strlen(EnumConstantName);
            v50 = v39;
            if ((v202[23] & 0x8000000000000000) != 0)
            {
              if (v39 != *&v202[8])
              {
                continue;
              }

              if (v39 == -1)
              {
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              v51 = *v202;
            }

            else
            {
              if (v39 != v202[23])
              {
                continue;
              }

              v51 = v202;
            }

            v39 = memcmp(v51, EnumConstantName, v50);
            if (!v39)
            {
              *__p = v205;
              *&__p[16] = *v206;
              Size = RETypeInfoGetSize();
              a8 = v47;
              *__p = v205;
              *&__p[16] = *v206;
              *&__src = RETypeInfoGetEnumConstantValue();
              *__p = v205;
              *&__p[16] = *v206;
              if (RETypeInfoIsOptional())
              {
                *__p = v205;
                *&__p[16] = *v206;
                REOptionalAccessorSetValue();
              }

              else
              {
                memcpy(*&v204[16], &__src, Size);
              }

              goto LABEL_100;
            }
          }

          while (EnumConstantCount != ++v48);
        }

        v52 = *(realityio::logObjects(v39) + 24);
        a8 = v47;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v13, &__src);
          v53 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__src);
          v54 = v202;
          if (v202[23] < 0)
          {
            v54 = *v202;
          }

          *__p = 136315394;
          *&__p[4] = v53;
          *&__p[12] = 2080;
          *&__p[14] = v54;
          _os_log_impl(&dword_247485000, v52, OS_LOG_TYPE_DEFAULT, "Component data (%s) has no associated enum name for (%s)", __p, 0x16u);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__src);
        }

LABEL_100:
        if ((v202[23] & 0x80000000) != 0)
        {
          operator delete(*v202);
        }

        if (buf[0])
        {
          if ((buf[8] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&buf[8] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
LABEL_105:
          if (SHIBYTE(v197) < 0)
          {
            operator delete(*&buf[24]);
          }
        }
      }

      else
      {
        if ((pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) != 0 || pxrInternal__aapl__pxrReserved__::TfToken::operator==())
        {
          if (*(a4 + 23) < 0)
          {
            v43 = *a4;
          }

          v44 = REComponentClassFromName();
          MockREComponentClassGetComponentTypeInfo(buf, v44);
          v45 = *&buf[16];
          *a3 = *buf;
          a3[1] = v45;
        }
      }

      if (a7)
      {
        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v187.__r_.__value_.__l.__size_ == 11)
          {
            v55 = v187.__r_.__value_.__r.__words[0];
LABEL_113:
            v56 = v55->__r_.__value_.__r.__words[0];
            v57 = *(v55->__r_.__value_.__r.__words + 3);
            if (v56 == 0x636146656C616373 && v57 == 0x726F74636146656CLL)
            {
              *a7 = 1;
            }
          }
        }

        else if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) == 11)
        {
          v55 = &v187;
          goto LABEL_113;
        }
      }

LABEL_119:
      if ((v204[24] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v204[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (*&v204[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v204[8]);
      }

      goto LABEL_123;
    }

LABEL_139:
    *v204 = v199;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](v204);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationships(&v187, v11);
    v63 = v187.__r_.__value_.__l.__size_;
    v64 = v187.__r_.__value_.__r.__words[0];
    if (v187.__r_.__value_.__r.__words[0] != v187.__r_.__value_.__l.__size_)
    {
      while (1)
      {
        v210 = 0uLL;
        *&v211 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets())
        {
          break;
        }

LABEL_215:
        *v204 = &v210;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v204);
        v64 = (v64 + 32);
        if (v64 == v63)
        {
          goto LABEL_216;
        }
      }

      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(*a6 + 1);
      v65 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v64);
      if ((*v65 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v66 = (*v65 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v66 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v65);
      }

      if (*(v66 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__src, *v66, *(v66 + 8));
      }

      else
      {
        v67 = *v66;
        *&v209 = *(v66 + 16);
        __src = v67;
      }

      pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(v204, v64);
      MEMORY[0x24C1A5DE0](buf, "");
      v68 = *v204;
      v69 = *buf;
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v204[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v69 ^ v68) >= 8)
      {
        pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(buf, v64);
        pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(__p, v64);
        v70 = MEMORY[0x24C1A5DE0](v204, "values");
        v71 = *__p;
        v72 = *v204;
        if ((v204[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v204 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v72 ^ v71) > 7)
        {
          if ((__p[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((buf[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

LABEL_213:
          if (SBYTE7(v209) < 0)
          {
            operator delete(__src);
          }

          goto LABEL_215;
        }

        if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v73 = (*buf & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v73 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
        }

        if (*(v73 + 23) >= 0)
        {
          v74 = *(v73 + 23);
        }

        else
        {
          v74 = *(v73 + 8);
        }

        std::string::basic_string[abi:ne200100](v204, v74 + 7);
        if (v204[23] >= 0)
        {
          v75 = v204;
        }

        else
        {
          v75 = *v204;
        }

        if (v74)
        {
          if (*(v73 + 23) >= 0)
          {
            v76 = v73;
          }

          else
          {
            v76 = *v73;
          }

          memmove(v75, v76, v74);
        }

        strcpy(&v75[v74], ":counts");
        MEMORY[0x24C1A5E00](v202, v204);
        v77 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(v11, v202);
        if ((v202[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*v202 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v204[23] & 0x80000000) != 0)
        {
          operator delete(*v204);
        }

        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v77 & 1) == 0)
        {
          goto LABEL_213;
        }
      }

      MEMORY[0x24C1A5DE0](buf, "");
      memset(v204, 0, 24);
      *&v204[24] = *buf;
      v205 = 0u;
      *v206 = 0u;
      v78 = a3[1];
      *buf = *a3;
      *&buf[16] = v78;
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      v79 = a2[1];
      v181[0] = *a2;
      v181[1] = v79;
      if (v79)
      {
        atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v80;
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (v81)
        {
LABEL_188:
          *buf = v205;
          *&buf[16] = *v206;
          if ((RETypeInfoIsList() & 1) != 0 || (*buf = v205, *&buf[16] = *v206, RETypeInfoIsArray()))
          {
            memset(buf, 0, sizeof(buf));
            *__p = *buf;
            *&__p[16] = *&buf[16];
            RETypeInfoGetSize();
            *__p = *buf;
            *&__p[16] = *&buf[16];
            if ((RETypeInfoIsList() & 1) != 0 || (*__p = *buf, *&__p[16] = *&buf[16], RETypeInfoIsArray()))
            {
              v194[1] = 0;
              v194[0] = 0;
              *&v195 = 0;
              v180 = *&v204[16];
              operator new();
            }

            operator new();
          }

          MEMORY[0x24C1A5DE0](buf, "isEntityHandle");
          HasCustomDataKey = pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey(v64, buf);
          if ((buf[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (HasCustomDataKey)
          {
            operator new();
          }

LABEL_207:
          if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v178.__r_.__value_.__l.__data_);
          }

          if ((v204[24] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&v204[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (*&v204[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v204[8]);
          }

          goto LABEL_213;
        }
      }

      else if (v81)
      {
        goto LABEL_188;
      }

      v82 = *(realityio::logObjects(v80) + 24);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a4 + 23) >= 0)
        {
          v83 = a4;
        }

        else
        {
          v83 = *a4;
        }

        p_src = &__src;
        if (SBYTE7(v209) < 0)
        {
          p_src = __src;
        }

        *buf = 136315394;
        *&buf[4] = v83;
        *&buf[12] = 2080;
        *&buf[14] = p_src;
        _os_log_impl(&dword_247485000, v82, OS_LOG_TYPE_DEFAULT, "Unknown component detail for %s from relationship: %s", buf, 0x16u);
      }

      goto LABEL_207;
    }

LABEL_216:
    *v204 = &v187;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100](v204);
    UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v86);
    v89 = *UsdPrimDefaultPredicate;
    v88 = UsdPrimDefaultPredicate[1];
    v90 = UsdPrimDefaultPredicate[2];
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v89 & 0x2000) != 0 || (v88 & 0x2000) == 0))
    {
      v89 |= 0x2000uLL;
      v88 &= ~0x2000uLL;
    }

    *buf = v89;
    *&buf[8] = v88;
    *&buf[16] = v90;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(v163, buf, v204);
    *v202 = *v204;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v202[8], &v204[8]);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v202[12], &v204[12]);
    *&v202[16] = *&v204[16];
    v199[0] = *(&v205 + 1);
    v203 = v205;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199[1], v206);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v199[1] + 1, &v206[4]);
    v200 = *&v206[8];
    v201 = v207;
    while (*v202 != *v199 || !pxrInternal__aapl__pxrReserved__::operator==(&v202[16], &v200))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(v202, &v178);
      if (pxrInternal__aapl__pxrReserved__::UsdPrim::HasAuthoredReferences(&v178))
      {
        goto LABEL_442;
      }

      v92 = v178.__r_.__value_.__l.__size_;
      if (!v178.__r_.__value_.__l.__size_ || (*(v178.__r_.__value_.__l.__size_ + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v178.__r_.__value_.__l.__size_, v91);
      }

      v93 = *(v92 + 24);
      MEMORY[0x24C1A5DE0](buf, "RealityKitDict");
      v95 = *buf;
      if ((*buf ^ *v93) >= 8)
      {
        v97 = v178.__r_.__value_.__l.__size_;
        if (!v178.__r_.__value_.__l.__size_ || (*(v178.__r_.__value_.__l.__size_ + 57) & 8) != 0)
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v178.__r_.__value_.__l.__size_, v94);
        }

        v98 = *(v97 + 24);
        MEMORY[0x24C1A5DE0](__p, "Dict");
        v96 = (*__p ^ *v98) < 8uLL;
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v95 = *buf;
      }

      else
      {
        v96 = 1;
      }

      if ((v95 & 7) != 0)
      {
        atomic_fetch_add_explicit((v95 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v96)
      {
        v99 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v178);
        if ((*v99 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v100 = (*v99 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v100 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v99);
        }

        if (*(v100 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v177, *v100, *(v100 + 8));
        }

        else
        {
          v103 = *v100;
          v177.__r_.__value_.__r.__words[2] = *(v100 + 16);
          *&v177.__r_.__value_.__l.__data_ = v103;
        }

        MEMORY[0x24C1A5DE0](__p, "");
        memset(buf, 0, 24);
        *&buf[24] = *__p;
        v197 = 0u;
        v198 = 0u;
        v105 = a3[1];
        *__p = *a3;
        *&__p[16] = v105;
        std::string::basic_string[abi:ne200100]<0>(&v187, "");
        v106 = a2[1];
        v175[0] = *a2;
        v175[1] = v106;
        if (v106)
        {
          atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v106)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v106);
        }

        if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v187.__r_.__value_.__l.__data_);
          if (!v107)
          {
            goto LABEL_433;
          }
        }

        else if (!v107)
        {
          goto LABEL_433;
        }

        *__p = v197;
        *&__p[16] = v198;
        if (!RETypeInfoIsDictionary())
        {
          goto LABEL_433;
        }

        MEMORY[0x24C1A5DE0](__p, "values");
        v111 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(&v178, __p);
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v111)
        {
          MEMORY[0x24C1A5DE0](__p, "values");
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v194, &v178, __p);
          if ((__p[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v183 = 0;
          v184 = 0;
          v185 = 0;
          MEMORY[0x24C1A5DE0](__p, "values");
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v187, &v178, __p);
          if ((__p[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *&v210 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v187);
          pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, &v210);
          v113 = qword_27EE536B0;
          if (!qword_27EE536B0)
          {
            goto LABEL_284;
          }

          v114 = &qword_27EE536B0;
          do
          {
            if (v115)
            {
              v116 = 8;
            }

            else
            {
              v116 = 0;
            }

            if (!v115)
            {
              v114 = v113;
            }

            v113 = *(v113 + v116);
          }

          while (v113);
          {
LABEL_284:
            v114 = &qword_27EE536B0;
          }

          if ((__p[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v210 = 0u;
          v211 = 0u;
          *__p = v197;
          *&__p[16] = v198;
          RETypeInfoGetDictionaryValueType();
          *(&v209 + 1) = 0;
          *__p = v210;
          *&__p[16] = v211;
          if (v114 != &qword_27EE536B0)
          {
            v117 = MEMORY[0x24C1A5E00](__p, &v186);
            v120 = v114[6];
            v118 = v114 + 6;
            v119 = v120;
            if (!v120)
            {
              goto LABEL_298;
            }

            v121 = v118;
            do
            {
              v117 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100]((v118 - 1), (v119 + 32), __p);
              if (v117)
              {
                v122 = 8;
              }

              else
              {
                v122 = 0;
              }

              if (!v117)
              {
                v121 = v119;
              }

              v119 = *(v119 + v122);
            }

            while (v119);
            if (v121 == v118 || (v117 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100]((v118 - 1), __p, v121 + 4), v117))
            {
LABEL_298:
              v121 = v118;
            }

            if ((__p[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v118 != v121)
            {
              std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__value_func[abi:ne200100](__p, (v121 + 5));
              v123 = *&__p[24];
              if (*&__p[24] == __p)
              {
                if (*(&v209 + 1) == &__src)
                {
                  (*(**&__p[24] + 24))();
                  (*(**&__p[24] + 32))(*&__p[24]);
                  *&__p[24] = 0;
                  (*(**(&v209 + 1) + 24))(*(&v209 + 1), __p);
                  (*(**(&v209 + 1) + 32))(*(&v209 + 1));
                  *(&v209 + 1) = 0;
                  *&__p[24] = __p;
                  (*(v189[0] + 3))(v189, &__src);
                  (*(v189[0] + 4))(v189);
                }

                else
                {
                  (*(**&__p[24] + 24))();
                  (*(**&__p[24] + 32))(*&__p[24]);
                  *&__p[24] = *(&v209 + 1);
                }

                *(&v209 + 1) = &__src;
              }

              else if (*(&v209 + 1) == &__src)
              {
                (*(**(&v209 + 1) + 24))(*(&v209 + 1), __p);
                (*(**(&v209 + 1) + 32))(*(&v209 + 1));
                *(&v209 + 1) = *&__p[24];
                *&__p[24] = __p;
              }

              else
              {
                *&__p[24] = *(&v209 + 1);
                *(&v209 + 1) = v123;
              }

              v117 = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](__p);
            }
          }

          if (*(&v209 + 1))
          {
            *__p = *&buf[16];
            operator new();
          }

          v139 = *(realityio::logObjects(v117) + 24);
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
          {
            if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v140 = &v186;
            }

            else
            {
              v140 = v186.__r_.__value_.__r.__words[0];
            }

            v141 = *&buf[24] & 0xFFFFFFFFFFFFFFF8;
            if ((*&buf[24] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v142 = (v141 + 16);
              if (*(v141 + 39) < 0)
              {
                v142 = *v142;
              }
            }

            else
            {
              v142 = "";
            }

            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v187, v189);
            v143 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v189);
            *__p = 136315650;
            *&__p[4] = v140;
            *&__p[12] = 2080;
            *&__p[14] = v142;
            *&__p[22] = 2080;
            *&__p[24] = v143;
            _os_log_impl(&dword_247485000, v139, OS_LOG_TYPE_DEFAULT, "Unsupported hashtable type conversion USD values (%s) to RE (%s) for %s ", __p, 0x20u);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v189);
          }

          if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v186.__r_.__value_.__l.__data_);
          }

          std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&__src);
          if ((v188 & 7) != 0)
          {
            atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v187.__r_.__value_.__r.__words[2]);
          if (v187.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v187.__r_.__value_.__l.__size_);
          }

          *__p = &v183;
          std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
          if ((BYTE8(v195) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v195 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v195);
          if (v194[1])
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v194[1]);
          }

          goto LABEL_433;
        }

        memset(&v186, 0, sizeof(v186));
        v124 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(*a6 + 1);
        v183 = 0;
        v184 = 0;
        v185 = 0;
        MEMORY[0x24C1A5DE0](__p, "values");
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v187, &v178, __p);
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
        v210 = 0u;
        v211 = 0u;
        *__p = v197;
        *&__p[16] = v198;
        RETypeInfoGetDictionaryValueType();
        if (v184 != v183)
        {
          pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(__p, v124, v183);
          v125 = *__p;
          if ((__p[24] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&__p[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[16]);
          if (*&__p[8])
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&__p[8]);
          }

          pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(__p, v124, v183);
          v126 = *__p;
          if ((__p[24] & 7) != 0)
          {
            atomic_fetch_add_explicit((*&__p[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[16]);
          if (*&__p[8])
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&__p[8]);
          }

          *__p = v210;
          *&__p[16] = v211;
          v127 = RETypeInfoGetName();
          std::string::basic_string[abi:ne200100]<0>(v173, v127);
          *__p = v210;
          *&__p[16] = v211;
          if (RETypeInfoIsList())
          {
            if (v125 == 3)
            {
              goto LABEL_318;
            }

LABEL_350:
            if (v126 != 1)
            {
              goto LABEL_391;
            }

            *__p = v210;
            *&__p[16] = v211;
            if (!RETypeInfoIsObject())
            {
              goto LABEL_391;
            }

            if ((v174 & 0x80000000) == 0)
            {
              if (v174 == 11)
              {
                v136 = v173;
                goto LABEL_387;
              }

              goto LABEL_391;
            }

            if (v173[1] != 11)
            {
              goto LABEL_391;
            }

            v136 = v173[0];
LABEL_387:
            v144 = *v136;
            v145 = *(v136 + 3);
            if (v144 == 0x6E61487465737341 && v145 == 0x656C646E61487465)
            {
              if (v186.__r_.__value_.__l.__size_ != v186.__r_.__value_.__r.__words[0])
              {
                v151 = 0;
                v152 = 0;
                v153 = 0;
                do
                {
                  if (((v184 - v183) >> 3) - 1 < v153)
                  {
                    break;
                  }

                  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v183 + v152));
                  if (*(String + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(__p, *String, *(String + 8));
                  }

                  else
                  {
                    v155 = *String;
                    *&__p[16] = *(String + 16);
                    *__p = v155;
                  }

                  realityio::ImportSession::extraAssets(a6[5], &__src);
                  v194[0] = __p;
                  v156 = *(std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__src, __p) + 56);
                  std::__tree<std::string>::destroy(&__src, *(&__src + 1));
                  if (v156)
                  {
                    v157 = *(&v151[1].isa + v186.__r_.__value_.__r.__words[0]);
                    v161 = *(&v151->isa + v186.__r_.__value_.__r.__words[0]);
                    if (v157)
                    {
                      atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    MEMORY[0x24C1A5DE0](&v170, "AssetHandle");
                    log = v151;
                    if (v157)
                    {
                      atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
                      v158 = v170;
                      v170 = 0;
                      std::__shared_weak_count::__release_shared[abi:ne200100](v157);
                    }

                    else
                    {
                      v158 = v170;
                      v170 = 0;
                    }

                    REAssetHandleSet();
                    if ((v158 & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    v151 = log;
                    if (v157)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v157);
                    }
                  }

                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }

                  ++v153;
                  v152 += 8;
                  v151 += 2;
                }

                while (v153 < (v186.__r_.__value_.__l.__size_ - v186.__r_.__value_.__r.__words[0]) >> 4);
              }
            }

            else
            {
LABEL_391:
              if (v186.__r_.__value_.__l.__size_ != v186.__r_.__value_.__r.__words[0])
              {
                v147 = 0;
                v148 = 0;
                while (1)
                {
                  if (((v184 - v183) >> 3) - 1 < v148)
                  {
                    goto LABEL_426;
                  }

                  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(__p, v124, (v183 + v147));
                  v149 = *(v186.__r_.__value_.__r.__words[0] + 16 * v148);
                  v169 = v149;
                  v150 = *(&v149 + 1);
                  if (*(&v149 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v149 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  __src = v210;
                  v209 = v211;
                  *v194 = v210;
                  v195 = v211;
                  RETypeInfoGetSize();
                  std::string::basic_string[abi:ne200100]<0>(v194, "");
                  buildValueType(__p, &v169, &__src, a4, v194, a6, 0, 1);
                  if (SBYTE7(v195) < 0)
                  {
                    break;
                  }

                  if (v150)
                  {
                    goto LABEL_398;
                  }

LABEL_399:
                  if ((__p[24] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*&__p[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[16]);
                  if (*&__p[8])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&__p[8]);
                  }

                  ++v148;
                  v147 += 8;
                  if (v148 >= (v186.__r_.__value_.__l.__size_ - v186.__r_.__value_.__r.__words[0]) >> 4)
                  {
                    goto LABEL_426;
                  }
                }

                operator delete(v194[0]);
                if (!v150)
                {
                  goto LABEL_399;
                }

LABEL_398:
                std::__shared_weak_count::__release_shared[abi:ne200100](v150);
                goto LABEL_399;
              }
            }
          }

          else
          {
            *__p = v210;
            *&__p[16] = v211;
            IsArray = RETypeInfoIsArray();
            if (v125 == 3)
            {
              v135 = IsArray;
            }

            else
            {
              v135 = 0;
            }

            if ((v135 & 1) == 0)
            {
              goto LABEL_350;
            }

LABEL_318:
            MEMORY[0x24C1A5DE0](__p, "counts");
            v128 = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute(&v178, __p);
            if ((__p[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v128)
            {
              if (v186.__r_.__value_.__l.__size_ != v186.__r_.__value_.__r.__words[0])
              {
                v129 = 0;
                v130 = 0;
                do
                {
                  if (((v184 - v183) >> 3) - 1 < v130)
                  {
                    break;
                  }

                  v131 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(*a6 + 1);
                  pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&__src, v131, (v183 + v129));
                  pxrInternal__aapl__pxrReserved__::UsdObject::As<pxrInternal__aapl__pxrReserved__::UsdAttribute>(&__src, v194);
                  v132 = *(v186.__r_.__value_.__r.__words[0] + 16 * v130);
                  *v164 = v132;
                  v133 = *(v186.__r_.__value_.__r.__words[0] + 16 * v130 + 8);
                  if (*(&v132 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v132 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(v194);
                  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v172, &TypeName);
                  *v189 = v210;
                  v190 = v211;
                  *__p = *v164;
                  if (v133)
                  {
                    atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  *&__p[16] = v164[0];
                  *&__p[24] = v172;
                  v172 = 0;
                  v192 = *v189;
                  v193 = v190;
                  if ((__p[24] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*&__p[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if (*&__p[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
                  }

                  if ((v172 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if (v133)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v133);
                  }

                  if ((BYTE8(v195) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v195 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v195);
                  if (v194[1])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v194[1]);
                  }

                  if ((BYTE8(v209) & 7) != 0)
                  {
                    atomic_fetch_add_explicit((*(&v209 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v209);
                  if (*(&__src + 1))
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__src + 1));
                  }

                  ++v130;
                  v129 += 8;
                }

                while (v130 < (v186.__r_.__value_.__l.__size_ - v186.__r_.__value_.__r.__words[0]) >> 4);
              }
            }

            else
            {
              v137 = *(realityio::logObjects(v128) + 24);
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
              {
                pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v178, &__src);
                v138 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__src);
                *__p = 136315138;
                *&__p[4] = v138;
                _os_log_impl(&dword_247485000, v137, OS_LOG_TYPE_DEFAULT, "Missing counts at prim path: %s", __p, 0xCu);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__src);
              }
            }
          }

LABEL_426:
          if (v174 < 0)
          {
            operator delete(v173[0]);
          }
        }

        if ((v188 & 7) != 0)
        {
          atomic_fetch_add_explicit((v188 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v187.__r_.__value_.__r.__words[2]);
        if (v187.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v187.__r_.__value_.__l.__size_);
        }

        *__p = &v183;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](__p);
        *__p = &v186;
        std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_433:
        if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v176.__r_.__value_.__l.__data_);
        }

        if ((buf[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&buf[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
        {
          v110 = v177.__r_.__value_.__r.__words[0];
          goto LABEL_441;
        }

        goto LABEL_442;
      }

      v101 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v178);
      if ((*v101 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v102 = (*v101 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v102 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v101);
      }

      if (*(v102 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *v102, *(v102 + 8));
      }

      else
      {
        v104 = *v102;
        *&__p[16] = *(v102 + 16);
        *__p = v104;
      }

      v108 = a2[1];
      v168[0] = *a2;
      v168[1] = v108;
      if (v108)
      {
        atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v109 = a3[1];
      *buf = *a3;
      *&buf[16] = v109;
      buildValueType(&v178, v168, buf, a4, &v187, a6, 0, 0);
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      }

      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v187.__r_.__value_.__l.__data_);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        v110 = *__p;
LABEL_441:
        operator delete(v110);
      }

LABEL_442:
      if ((v179 & 7) != 0)
      {
        atomic_fetch_add_explicit((v179 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v178.__r_.__value_.__r.__words[2]);
      if (v178.__r_.__value_.__l.__size_)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v178.__r_.__value_.__l.__size_);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(v202);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v199[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v202[8]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v206);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v204[8]);
  }

  else
  {
    v60 = *(realityio::logObjects(IsValid) + 24);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v163, buf);
      v61 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(buf);
      if (*(a4 + 23) >= 0)
      {
        v62 = a4;
      }

      else
      {
        v62 = *a4;
      }

      *v204 = 136315394;
      *&v204[4] = v61;
      *&v204[12] = 2080;
      *&v204[14] = v62;
      _os_log_impl(&dword_247485000, v60, OS_LOG_TYPE_DEFAULT, "Unknown Prim %s for %s from attribute: ", v204, 0x16u);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
    }
  }

  v159 = *MEMORY[0x277D85DE8];
}

void sub_2476D0DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&STACK[0x230]);

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x250]);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&STACK[0x290]);
  STACK[0x250] = &a73;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  if (a48 < 0)
  {
    operator delete(__p);
  }

  v75 = *(v74 - 232);
  if ((v75 & 7) != 0)
  {
    atomic_fetch_add_explicit((v75 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v76 = *(v74 - 248);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if (*(v74 - 153) < 0)
  {
    operator delete(*(v74 - 176));
  }

  *(v74 - 256) = v74 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v74 - 256));
  *(v74 - 256) = &a66;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__destroy_vector::operator()[abi:ne200100]((v74 - 256));
  JUMPOUT(0x2476D186CLL);
}

void sub_2476D0FBC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x2476D186CLL);
}

void sub_2476D0FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<std::string>::destroy(v71 - 176, *(v71 - 168));
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a71);
  }

  JUMPOUT(0x2476D15ACLL);
}

void sub_2476D1018()
{
  if ((STACK[0x250] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x250] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x2476D1668);
}

void sub_2476D1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a71);

  JUMPOUT(0x2476D13F0);
}

void sub_2476D1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a70);

  if (a65 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v71 - 176);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a66);
  *(v71 - 144) = &a57;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100]((v71 - 144));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&STACK[0x230]);
  JUMPOUT(0x2476D17E4);
}

void sub_2476D109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a71 & 7) != 0)
  {
    atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((STACK[0x250] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x250] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x2476D1414);
}

void sub_2476D11F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a73);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v73 - 176);
  JUMPOUT(0x2476D17C4);
}

void sub_2476D1210(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x2476D186CLL);
}

void sub_2476D1228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  __cxa_end_catch();
  if (a65 < 0)
  {
    operator delete(a60);
  }

  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v65 - 176);
  JUMPOUT(0x2476D17C4);
}

void sub_2476D12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a71 & 7) != 0)
  {
    atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x2476D15C4);
}

void sub_2476D1340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a71 & 7) != 0)
  {
    atomic_fetch_add_explicit((a71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x2476D17CCLL);
}

void sub_2476D136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2476D1668);
}

void sub_2476D1450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((STACK[0x208] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x208] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a72);
  }

  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&STACK[0x230]);
  JUMPOUT(0x2476D15A4);
}

void sub_2476D14C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a63);
  *(v63 - 144) = &a57;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](v63 - 144);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&STACK[0x230]);
  JUMPOUT(0x2476D17E4);
}

void sub_2476D14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a73 & 7) != 0)
  {
    atomic_fetch_add_explicit((a73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if ((STACK[0x268] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x268] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  JUMPOUT(0x2476D184CLL);
}

void sub_2476D14F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a71);
  a71 = &STACK[0x290];
  JUMPOUT(0x2476D1664);
}

void sub_2476D153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a73);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(&a66);
  a66 = &a60;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a66);
  a66 = &a63;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a66);
  JUMPOUT(0x2476D17E4);
}

void sub_2476D1584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a36 < 0)
  {
    operator delete(a31);
  }

  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(&a66);
  a66 = &a60;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a66);
  a66 = &a63;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a66);
  JUMPOUT(0x2476D17E4);
}

void sub_2476D1620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&STACK[0x2C0]);
  JUMPOUT(0x2476D1658);
}

void sub_2476D16D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if ((STACK[0x268] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x268] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x258]);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  JUMPOUT(0x2476D184CLL);
}

void sub_2476D16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if ((STACK[0x268] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x268] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  JUMPOUT(0x2476D184CLL);
}

void sub_2476D16FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  if (a68 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    JUMPOUT(0x2476D1824);
  }

  JUMPOUT(0x2476D184CLL);
}

void sub_2476D1720()
{
  if ((STACK[0x250] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x250] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x2476D184CLL);
}

void sub_2476D1830(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::scrubAttrName(std::string *a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5)
  {
    v7 = &v18;
    std::string::basic_string[abi:ne200100](&v18, v5 + 1);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v18.__r_.__value_.__r.__words[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v5);
    *(&v7->__r_.__value_.__l.__data_ + v5) = 58;
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = std::string::append(&v18, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a3, *(a3 + 8));
  }

  else
  {
    v19 = *a3;
  }

  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if ((atomic_load_explicit(&qword_27EE536E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE536E8))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&unk_27EE53748, "[^A-Za-z0-9_]", 0);
  }

  size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char *>,std::regex_traits<char>,char>(a1, v15, v15 + size, &unk_27EE53748, "_", 0);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  v17 = v16->__r_.__value_.__s.__data_[0];
  if ((v17 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v17 + 60) & 0x400) != 0)
  {
    std::operator+<char>();
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a1->__r_.__value_.__l.__data_);
    }

    *a1 = v18;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_2476D1A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27EE536E8);
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL anonymous namespace::allocateAndFindMemberInfo(uint64_t a1, void *a2, __int128 *a3, int a4, const void **a5, uint64_t *a6)
{
  v86 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v81 = *a3;
  v82 = v7;
  ObjectMemberCount = RETypeInfoGetObjectMemberCount();
  if (ObjectMemberCount)
  {
    v8 = 0;
    v60 = 1;
    while (1)
    {
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v9 = a3[1];
      v81 = *a3;
      v82 = v9;
      RETypeInfoGetObjectMemberByIndex();
      v81 = v74;
      v82 = v75;
      v83 = v76;
      Name = RETypeMemberInfoGetName();
      std::string::basic_string[abi:ne200100]<0>(v65, Name);
      v63 = v8;
      v81 = v74;
      v82 = v75;
      v83 = v76;
      Offset = RETypeMemberInfoGetOffset();
      v71 = v74;
      v72 = v75;
      v73 = v76;
      v13 = *a6;
      v12 = a6[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v84 = 0u;
      v85 = 0u;
      v81 = v71;
      v82 = v72;
      v83 = v73;
      RETypeMemberInfoGetMemberType();
      v81 = v84;
      v82 = v85;
      if (RETypeInfoIsPointer())
      {
        v81 = v84;
        v82 = v85;
        v14 = RETypeInfoDereferencePointer();
        v79 = v84;
        v80 = v85;
        RETypeInfoGetReferencedType();
        v84 = v81;
        v85 = v82;
        if (v14)
        {
          operator new();
        }

        v81 = v84;
        v82 = v85;
        RETypeInfoCreateInstance();
        v79 = v84;
        v80 = v85;
        operator new();
      }

      v62 = Offset + a4;
      v81 = v84;
      v82 = v85;
      v16 = qword_27EE53670;
      if (qword_27EE53670)
      {
        v17 = &qword_27EE53670;
        do
        {
          if (v18)
          {
            v19 = 8;
          }

          else
          {
            v19 = 0;
          }

          if (!v18)
          {
            v17 = v16;
          }

          v16 = *(v16 + v19);
        }

        while (v16);
        {
          break;
        }
      }

      v81 = v84;
      v82 = v85;
      Category = RETypeInfoGetCategory();
      v21 = *(a2 + 23);
      v22 = a2;
      v23 = a2[1];
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
      if (Category == 2)
      {
        v26 = (v21 & 0x80u) == 0 ? v21 : v23;
        v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        if (v26 == v27)
        {
          v28 = (v21 & 0x80u) == 0 ? v22 : *v22;
          v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          if (!memcmp(v28, v29, v26))
          {
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            MEMORY[0x24C1A5E00](&v77, &v70);
            a2 = v22;
LABEL_78:
            v79 = v84;
            v80 = v85;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v40 = v77;
            *&v77 = 0;
            v81 = v79;
            v82 = v80;
            v41 = *(a1 + 8);
            *a1 = v13;
            *(a1 + 8) = v12;
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }

            *(a1 + 16) = v13 + v62;
            v42 = *(a1 + 24);
            if ((v42 & 7) != 0)
            {
              atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *(a1 + 24) = v40;
            v43 = v82;
            *(a1 + 32) = v81;
            *(a1 + 48) = v43;
            if ((v77 & 7) != 0)
            {
              atomic_fetch_add_explicit((v77 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

LABEL_88:
            MemberInfo = 1;
            goto LABEL_89;
          }
        }
      }

      if ((v21 & 0x80u) == 0)
      {
        v30 = v21;
      }

      else
      {
        v30 = v23;
      }

      if ((v24 & 0x80u) == 0)
      {
        v31 = v24;
      }

      else
      {
        v31 = size;
      }

      a2 = v22;
      if (v30 == v31)
      {
        v32 = (v21 & 0x80u) == 0 ? v22 : *v22;
        v33 = (v24 & 0x80u) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        if (!memcmp(v32, v33, v30))
        {
          v81 = v84;
          v82 = v85;
          if (RETypeInfoGetCategory() == 4)
          {
            v81 = v84;
            v82 = v85;
            if ((RETypeInfoIsFixedSizeArray() & 1) == 0)
            {
              v81 = 0u;
              v82 = 0u;
              v79 = v84;
              v80 = v85;
              RETypeInfoGetArrayElementType();
              v79 = v81;
              v80 = v82;
              v44 = RETypeInfoGetName();
              v45 = std::string::basic_string[abi:ne200100]<0>(&v77, v44);
              v46 = std::string::append(v45, "[]");
              v47 = *&v46->__r_.__value_.__l.__data_;
              v69 = v46->__r_.__value_.__r.__words[2];
              *v68 = v47;
              v46->__r_.__value_.__l.__size_ = 0;
              v46->__r_.__value_.__r.__words[2] = 0;
              v46->__r_.__value_.__r.__words[0] = 0;
              if (SBYTE7(v78) < 0)
              {
                operator delete(v77);
              }

              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v69 >= 0)
              {
                v48 = v68;
              }

              else
              {
                v48 = v68[0];
              }

              MEMORY[0x24C1A5DE0](&v67, v48);
              v77 = v84;
              v78 = v85;
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v49 = v67;
              v67 = 0;
              v79 = v77;
              v80 = v78;
              v50 = *(a1 + 8);
              *a1 = v13;
              *(a1 + 8) = v12;
              if (v50)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v50);
              }

              *(a1 + 16) = v13 + v62;
              v51 = *(a1 + 24);
              if ((v51 & 7) != 0)
              {
                atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *(a1 + 24) = v49;
              v52 = v80;
              *(a1 + 32) = v79;
              *(a1 + 48) = v52;
              if ((v67 & 7) != 0)
              {
                atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v12)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              }

              if (SHIBYTE(v69) < 0)
              {
                operator delete(v68[0]);
              }

              goto LABEL_88;
            }
          }

          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

LABEL_77:
          MEMORY[0x24C1A5E00](&v77, &v70);
          goto LABEL_78;
        }
      }

      v81 = v84;
      v82 = v85;
      if (RETypeInfoGetCategory() != 8)
      {
        goto LABEL_66;
      }

      v81 = v84;
      v82 = v85;
      *&v79 = v13;
      *(&v79 + 1) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

LABEL_89:
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
        if (!v12)
        {
          goto LABEL_92;
        }

LABEL_91:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        goto LABEL_92;
      }

      if (v12)
      {
        goto LABEL_91;
      }

LABEL_92:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

      if ((MemberInfo & 1) == 0)
      {
        v8 = v63 + 1;
        v60 = v63 + 1 < ObjectMemberCount;
        if (v63 + 1 != ObjectMemberCount)
        {
          continue;
        }
      }

      goto LABEL_121;
    }

    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = *(a2 + 23);
    }

    else
    {
      v36 = a2[1];
    }

    v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = __p.__r_.__value_.__l.__size_;
    }

    if (v36 != v37 || (v35 >= 0 ? (v38 = a2) : (v38 = *a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v38, p_p, v36)))
    {
LABEL_66:
      MemberInfo = 0;
      goto LABEL_89;
    }

    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_77;
  }

  v60 = 0;
LABEL_121:
  v53 = *MEMORY[0x277D85DE8];
  return v60;
}

void sub_2476D2280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::setComponentDataUsingInfo(_anonymous_namespace_ *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  *&v28 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(buf, &v28);
  v5 = qword_27EE53690;
  if (!qword_27EE53690)
  {
    goto LABEL_11;
  }

  v6 = &qword_27EE53690;
  do
  {
    if (AsToken)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!AsToken)
    {
      v6 = v5;
    }

    v5 = *(v5 + v7);
  }

  while (v5);
  {
LABEL_11:
    v6 = &qword_27EE53690;
  }

  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v6 != &qword_27EE53690)
  {
    v10 = v6[6];
    v8 = v6 + 6;
    v9 = v10;
    if (v10)
    {
      v11 = v8;
      do
      {
        AsToken = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100]((v8 - 1), (v9 + 32), (a2 + 24));
        if (AsToken)
        {
          v12 = 8;
        }

        else
        {
          v12 = 0;
        }

        if (!AsToken)
        {
          v11 = v9;
        }

        v9 = *(v9 + v12);
      }

      while (v9);
      if (v11 != v8)
      {
        AsToken = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100]((v8 - 1), (a2 + 24), v11 + 4);
        if ((AsToken & 1) == 0)
        {
          std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::__value_func[abi:ne200100](buf, (v11 + 5));
          if (v34)
          {
            v13 = *(a2 + 48);
            v28 = *(a2 + 32);
            v29 = v13;
            v14 = *(a2 + 48);
            v26 = *(a2 + 32);
            v27 = v14;
            if (RETypeInfoIsOptional())
            {
              v26 = 0u;
              v27 = 0u;
              v15 = *(a2 + 48);
              v25[0] = *(a2 + 32);
              RETypeInfoGetOptionalValueType();
              memset(v25, 0, sizeof(v25));
              Instance = RETypeInfoCreateInstance();
              v28 = 0u;
              v29 = 0u;
              if (!Instance)
              {
                goto LABEL_28;
              }
            }

            else
            {
              Instance = *(a2 + 16);
              if (!Instance)
              {
                goto LABEL_28;
              }
            }

            v24 = Instance;
            operator new();
          }

LABEL_28:
          AsToken = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdAttribute const&,std::shared_ptr<unsigned char>,realityio::Inputs *,RETypeInfo const&)>::~__value_func[abi:ne200100](buf);
        }
      }
    }
  }

  v17 = *(realityio::logObjects(AsToken) + 24);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *&v26 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v28, &v26);
    v18 = v28 & 0xFFFFFFFFFFFFFFF8;
    if ((v28 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v19 = (v18 + 16);
      if (*(v18 + 39) < 0)
      {
        v19 = *v19;
      }
    }

    else
    {
      v19 = "";
    }

    v20 = *(a2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v21 = (v20 + 16);
      if (*(v20 + 39) < 0)
      {
        v21 = *v21;
      }
    }

    else
    {
      v21 = "";
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(a1, v25);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v25);
    *buf = 136315650;
    *&buf[4] = v19;
    v31 = 2080;
    v32 = v21;
    v33 = 2080;
    v34 = Text;
    _os_log_impl(&dword_247485000, v17, OS_LOG_TYPE_DEFAULT, "Unsupported type conversion USD (%s) to RE (%s) for %s ", buf, 0x20u);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2476D27F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  JUMPOUT(0x2476D27ECLL);
}

void sub_2476D2810(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2476D2820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a11);
  if ((a19 & 7) != 0)
  {
    atomic_fetch_add_explicit((a19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_2476D2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if ((a23 & 7) != 0)
  {
    atomic_fetch_add_explicit((a23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::getReArrayElementType(_OWORD *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  if (RETypeInfoIsArray())
  {
    v5 = a2[1];
    v14 = *a2;
    v15 = v5;
    RETypeInfoGetArrayElementType();
  }

  else
  {
    v6 = a2[1];
    v14 = *a2;
    v15 = v6;
    IsList = RETypeInfoIsList();
    if (IsList)
    {
      v8 = a2[1];
      v14 = *a2;
      v15 = v8;
      RETypeInfoGetListElementType();
    }

    else
    {
      v9 = *(realityio::logObjects(IsList) + 24);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a2[1];
        v14 = *a2;
        v15 = v10;
        v12 = 136315138;
        Name = RETypeInfoGetName();
        _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, "Component detail: %s is not an array.", &v12, 0xCu);
      }

      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::generateRe2DArray(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3[1];
  *v46 = *a3;
  *&v46[16] = v6;
  if ((RETypeInfoIsList() & 1) == 0)
  {
    v7 = a3[1];
    *v46 = *a3;
    *&v46[16] = v7;
    IsArray = RETypeInfoIsArray();
    if (!IsArray)
    {
      v12 = *(realityio::logObjects(IsArray) + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a3[1];
        *v46 = *a3;
        *&v46[16] = v13;
        *buf = 136315138;
        *&buf[4] = RETypeInfoGetName();
        _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, "Component detail: %s is not a 2D array.", buf, 0xCu);
      }

      goto LABEL_57;
    }
  }

  v44 = 0u;
  v45 = 0u;
  *v46 = v44;
  *&v46[16] = v45;
  if ((RETypeInfoIsList() & 1) == 0)
  {
    *v46 = v44;
    *&v46[16] = v45;
    v9 = RETypeInfoIsArray();
    if (!v9)
    {
      v12 = *(realityio::logObjects(v9) + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a3[1];
        *v46 = *a3;
        *&v46[16] = v28;
        *buf = 136315138;
        *&buf[4] = RETypeInfoGetName();
        _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, "Component detail: %s is not a 2D array.", buf, 0xCu);
      }

LABEL_57:

      goto LABEL_58;
    }
  }

  memset(v43, 0, sizeof(v43));
  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v35, (a1 + 8), (a1 + 16));
  Namespace = pxrInternal__aapl__pxrReserved__::UsdProperty::GetNamespace(v46, a1);
  if ((*v46 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*v46 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Namespace);
  }

  if (*(EmptyString + 23) >= 0)
  {
    v14 = *(EmptyString + 23);
  }

  else
  {
    v14 = *(EmptyString + 8);
  }

  v15 = __p;
  std::string::basic_string[abi:ne200100](__p, v14 + 7);
  if (v34 < 0)
  {
    v15 = __p[0];
  }

  if (v14)
  {
    if (*(EmptyString + 23) >= 0)
    {
      v16 = EmptyString;
    }

    else
    {
      v16 = *EmptyString;
    }

    memmove(v15, v16, v14);
  }

  strcpy(v15 + v14, ":counts");
  if ((v46[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  MEMORY[0x24C1A5E00](&v39, __p);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v46, &v39, v35);
  if (v46[0])
  {
    *buf = *&v46[8];
    v41 = *&v46[24];
    v17 = v47;
  }

  else
  {
    *buf = v30;
    v41 = v31;
    v17 = v32;
  }

  v42 = v17;
  if (v17)
  {
    v18 = (v17 - 16);
    if (*(&v41 + 1))
    {
      v18 = *(&v41 + 1);
    }

    atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v46);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v30);
  v19 = *a2;
  v20 = a2[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  memset(v46, 0, 24);
  v21 = *a2;
  v22 = a2[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (*buf)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(buf);
      v25 = *(v42 + 8 * v24);
      v27 = *(*v46 + v23);
      v26 = *(*v46 + v23 + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      ++v24;
      v23 += 16;
    }

    while (v24 < *buf);
  }

  *&v30 = v46;
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v30);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(buf);
  if (v34 < 0)
  {
    operator delete(__p[0]);
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

LABEL_58:
  v29 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::resetReArray(__int128 *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  if (RETypeInfoIsArray())
  {
    v3 = a1[1];
    v12 = *a1;
    v13 = v3;
    REArrayAccessorReset();
  }

  else
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    IsList = RETypeInfoIsList();
    if (IsList)
    {
      v6 = a1[1];
      v12 = *a1;
      v13 = v6;
      REListAccessorReset();
    }

    else
    {
      v7 = *(realityio::logObjects(IsList) + 24);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[1];
        v12 = *a1;
        v13 = v8;
        v10 = 136315138;
        Name = RETypeInfoGetName();
        _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_DEFAULT, "Component detail: %s is not an array.", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::appendReArrayElements(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  if (RETypeInfoIsArray())
  {
    if (a3)
    {
      v6 = a1[1];
      v16 = *a1;
      v17 = v6;
      *v15 = REArrayAccessorGetElementAt();
      operator new();
    }
  }

  else
  {
    v7 = a1[1];
    v16 = *a1;
    v17 = v7;
    IsList = RETypeInfoIsList();
    if (IsList)
    {
      v9 = a1[1];
      v16 = *a1;
      v17 = v9;
      REListIteratorCreate();
      if (a3)
      {
        v10 = a1[1];
        v16 = *a1;
        v17 = v10;
        *v15 = REListIteratorNextElement();
        operator new();
      }

      v11 = a1[1];
      v16 = *a1;
      v17 = v11;
      REListIteratorDestroy();
    }

    else
    {
      v12 = *(realityio::logObjects(IsList) + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1[1];
        v16 = *a1;
        v17 = v13;
        *v15 = 136315138;
        *&v15[4] = RETypeInfoGetName();
        _os_log_impl(&dword_247485000, v12, OS_LOG_TYPE_DEFAULT, "Component detail: %s is not an array.", v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::GetChildren(pxrInternal__aapl__pxrReserved__::UsdPrim *this, uint64_t a2)
{
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(this);
  v6 = *UsdPrimDefaultPredicate;
  v5 = UsdPrimDefaultPredicate[1];
  v7 = UsdPrimDefaultPredicate[2];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v6 & 0x2000) != 0 || (v5 & 0x2000) == 0))
  {
    v6 |= 0x2000uLL;
    v5 &= ~0x2000uLL;
  }

  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v7;
  return pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a2, v9, this);
}

void *anonymous namespace::setComponentDataUsingInfoHashTableKeys(pxrInternal__aapl__pxrReserved__::UsdPrim *a1, uint64_t a2)
{
  v121[5] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE536F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE536F0))
  {
    MEMORY[0x24C1A5DE0](&v73, "uchar[]");
    MEMORY[0x24C1A5DE0](&v71, "uint8_t");
    v111 = v71;
    v71 = 0;
    v112[0] = &unk_28595D258;
    v112[3] = v112;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v72, &v111, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(buf, v73, v72);
    MEMORY[0x24C1A5DE0](&v70, "uint[]");
    MEMORY[0x24C1A5DE0](&v68, "uint16_t");
    *&v106 = v68;
    v68 = 0;
    *(&v106 + 1) = &unk_28595D258;
    v108 = &v106 + 8;
    MEMORY[0x24C1A5DE0](&v67, "uint32_t");
    v109 = v67;
    v67 = 0;
    v110[0] = &unk_28595D258;
    v110[3] = v110;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v69, &v106, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v114, v70, v69);
    MEMORY[0x24C1A5DE0](&v66, "uint64[]");
    MEMORY[0x24C1A5DE0](&v64, "uint64_t");
    v100 = v64;
    v64 = 0;
    v101[0] = &unk_28595D258;
    v103 = v101;
    MEMORY[0x24C1A5DE0](&v63, "size_t");
    v104 = v63;
    v63 = 0;
    v105[0] = &unk_28595D258;
    v105[3] = v105;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v65, &v100, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v115, v66, v65);
    MEMORY[0x24C1A5DE0](&v62, "int[]");
    MEMORY[0x24C1A5DE0](&v60, "char");
    v90 = v60;
    v60 = 0;
    v91 = &unk_28595D258;
    v94 = &v91;
    MEMORY[0x24C1A5DE0](&v59, "int8_t");
    v95 = v59;
    v59 = 0;
    v96[0] = &unk_28595D258;
    v96[3] = v96;
    MEMORY[0x24C1A5DE0](&v58, "int16_t");
    v96[4] = v58;
    v58 = 0;
    v97[0] = &unk_28595D258;
    v97[3] = v97;
    MEMORY[0x24C1A5DE0](&v57, "int32_t");
    v98 = v57;
    v57 = 0;
    v99[0] = &unk_28595D258;
    v99[3] = v99;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v61, &v90, 4);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v116, v62, v61);
    MEMORY[0x24C1A5DE0](&v56, "int64[]");
    MEMORY[0x24C1A5DE0](&v54, "int");
    v86 = v54;
    v54 = 0;
    v87[0] = &unk_28595D258;
    v87[3] = v87;
    MEMORY[0x24C1A5DE0](&v53, "int64_t");
    v88 = v53;
    v53 = 0;
    v89[0] = &unk_28595D258;
    v89[3] = v89;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v55, &v86, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v117, v56, v55);
    MEMORY[0x24C1A5DE0](&v52, "float[]");
    MEMORY[0x24C1A5DE0](&v50, "float");
    v84 = v50;
    v50 = 0;
    v85[0] = &unk_28595D258;
    v85[3] = v85;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v51, &v84, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v118, v52, v51);
    MEMORY[0x24C1A5DE0](&v49, "double[]");
    MEMORY[0x24C1A5DE0](&v47, "double");
    v82 = v47;
    v47 = 0;
    v83[0] = &unk_28595D258;
    v83[3] = v83;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v48, &v82, 1);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v119, v49, v48);
    MEMORY[0x24C1A5DE0](&v46, "token[]");
    MEMORY[0x24C1A5DE0](&v44, "DynamicString");
    TypeName = v44;
    v44 = 0;
    v79[0] = &unk_28595D258;
    v79[3] = v79;
    MEMORY[0x24C1A5DE0](&v43, "StringID");
    v80 = v43;
    v43 = 0;
    v81[0] = &unk_28595D258;
    v81[3] = v81;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v45, &TypeName, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v120, v46, v45);
    MEMORY[0x24C1A5DE0](&v42, "string[]");
    MEMORY[0x24C1A5DE0](&v40, "DynamicString");
    v24 = v40;
    v40 = 0;
    v74 = v24;
    v75[0] = &unk_28595D258;
    v75[3] = v75;
    MEMORY[0x24C1A5DE0](&v39, "StringID");
    v76 = v39;
    v39 = 0;
    v77[0] = &unk_28595D258;
    v77[3] = v77;
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>::map[abi:ne200100](v41, &v74, 2);
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::pair[abi:ne200100]<true,0>(v121, v42, v41);
    std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::map<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>::map[abi:ne200100](buf, 9);
    v25 = 36;
    do
    {
      std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v112[v25 + 2]);
      v26 = v112[v25];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 -= 4;
    }

    while (v25 * 8);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v41[1]);
    do
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v77[v25]);
      v27 = v77[v25 - 1];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 -= 5;
    }

    while (v25 != -10);
    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v42 & 7) != 0)
    {
      atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v45[1]);
    for (i = 0; i != -10; i -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v81[i]);
      v29 = v81[i - 1];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v48[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v83);
    if ((v82 & 7) != 0)
    {
      atomic_fetch_add_explicit((v82 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v47 & 7) != 0)
    {
      atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v49 & 7) != 0)
    {
      atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v51[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v85);
    if ((v84 & 7) != 0)
    {
      atomic_fetch_add_explicit((v84 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v50 & 7) != 0)
    {
      atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v52 & 7) != 0)
    {
      atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v55[1]);
    for (j = 0; j != -10; j -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v89[j]);
      v31 = v89[j - 1];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v53 & 7) != 0)
    {
      atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v56 & 7) != 0)
    {
      atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v61[1]);
    for (k = 0; k != -20; k -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v99[k]);
      v33 = v99[k - 1];
      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if ((v57 & 7) != 0)
    {
      atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v58 & 7) != 0)
    {
      atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v65[1]);
    for (m = 0; m != -10; m -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v105[m]);
      v35 = v105[m - 1];
      if ((v35 & 7) != 0)
      {
        atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v69[1]);
    for (n = 0; n != -10; n -= 5)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v110[n]);
      v37 = v110[n - 1];
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::function<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>>>>::destroy(v72[1]);
    std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](v112);
    if ((v111 & 7) != 0)
    {
      atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v73 & 7) != 0)
    {
      atomic_fetch_add_explicit((v73 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    __cxa_guard_release(&qword_27EE536F0);
  }

  MEMORY[0x24C1A5DE0](buf, "keys");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v90, a1, buf);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *&v106 = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v90);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(buf, &v106);
  v4 = qword_27EE53708;
  if (!qword_27EE53708)
  {
    goto LABEL_14;
  }

  v5 = &qword_27EE53708;
  do
  {
    v6 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, (v4 + 32), buf);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v4;
    }

    v4 = *(v4 + v7);
  }

  while (v4);
  if (v5 == &qword_27EE53708 || std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&qword_27EE53700, buf, v5 + 4))
  {
LABEL_14:
    v5 = &qword_27EE53708;
  }

  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v106 = 0u;
  v107 = 0u;
  v8 = *(a2 + 48);
  *buf = *(a2 + 32);
  *&buf[16] = v8;
  DictionaryKeyType = RETypeInfoGetDictionaryKeyType();
  v102 = 0;
  if (v5 != &qword_27EE53708)
  {
    *buf = v106;
    *&buf[16] = v107;
    Name = RETypeInfoGetName();
    DictionaryKeyType = MEMORY[0x24C1A5DE0](&v86, Name);
    v11 = v5 + 6;
    v12 = v5[6];
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = v5 + 6;
    do
    {
      DictionaryKeyType = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100]((v5 + 5), (v12 + 32), &v86);
      if (DictionaryKeyType)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      if (!DictionaryKeyType)
      {
        v13 = v12;
      }

      v12 = *(v12 + v14);
    }

    while (v12);
    if (v13 == v11 || (DictionaryKeyType = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100]((v5 + 5), &v86, v13 + 4), DictionaryKeyType))
    {
LABEL_28:
      v13 = v5 + 6;
    }

    if ((v86 & 7) != 0)
    {
      atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v11 != v13)
    {
      std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::__value_func[abi:ne200100](buf, (v13 + 5));
      v15 = *&buf[24];
      if (*&buf[24] == buf)
      {
        if (v102 == &v100)
        {
          (*(**&buf[24] + 24))();
          (*(**&buf[24] + 32))(*&buf[24]);
          *&buf[24] = 0;
          (*(*v102 + 24))(v102, buf);
          (*(*v102 + 32))(v102);
          v102 = 0;
          *&buf[24] = buf;
          (*(v86 + 24))(&v86, &v100);
          (*(v86 + 32))(&v86);
        }

        else
        {
          (*(**&buf[24] + 24))();
          (*(**&buf[24] + 32))(*&buf[24]);
          *&buf[24] = v102;
        }

        v102 = &v100;
      }

      else if (v102 == &v100)
      {
        (*(*v102 + 24))(v102, buf);
        (*(*v102 + 32))(v102);
        v102 = *&buf[24];
        *&buf[24] = buf;
      }

      else
      {
        *&buf[24] = v102;
        v102 = v15;
      }

      DictionaryKeyType = std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](buf);
    }

    if (v102)
    {
      v38 = *(a2 + 16);
      operator new();
    }
  }

  v16 = *(realityio::logObjects(DictionaryKeyType) + 24);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v90);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v86, &TypeName);
    v17 = v86 & 0xFFFFFFFFFFFFFFF8;
    if ((v86 & 0xFFFFFFFFFFFFFFF8) != 0)
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

    v19 = *(a2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v19)
    {
      v20 = (v19 + 16);
      if (*(v19 + 39) < 0)
      {
        v20 = *v20;
      }
    }

    else
    {
      v20 = "";
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v90, &v74);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v74);
    *buf = 136315650;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = v20;
    *&buf[22] = 2080;
    *&buf[24] = Text;
    _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Unsupported hashtable type conversion USD keys (%s) to RE (%s) for %s ", buf, 0x20u);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v74);
    if ((v86 & 7) != 0)
    {
      atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::UsdPrim const&,std::shared_ptr<unsigned char>,RETypeInfo const&,std::vector<std::shared_ptr<unsigned char>> &)>::~__value_func[abi:ne200100](&v100);
  if ((v93 & 7) != 0)
  {
    atomic_fetch_add_explicit((v93 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v92);
  result = v91;
  if (v91)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v91);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476D4F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  JUMPOUT(0x2476D4FECLL);
}

void sub_2476D4F84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2476D4F98(_Unwind_Exception *a1)
{
  if ((STACK[0x490] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x490] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

void sub_2476D4FF8()
{
  if ((STACK[0x490] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x490] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&STACK[0x320]);
  JUMPOUT(0x2476D501CLL);
}

void *realityio::ArbitraryComponentBuilder::updateComponentOnEntityFromProtoPrim(uint64_t a1, realityio::Inputs *a2, pxrInternal__aapl__pxrReserved__::UsdObject *this, uint64_t a4, uint64_t *a5)
{
  v142 = *MEMORY[0x277D85DE8];
  v130 = a4;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, buf);
  v8 = *(a1 + 288);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = a1 + 288;
  do
  {
    v10 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v8 + 32), buf);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v9 = v8;
    }

    v8 = *(v8 + v11);
  }

  while (v8);
  if (v9 == a1 + 288 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(buf, (v9 + 32)))
  {
LABEL_11:
    v129 = 0;
  }

  else
  {
    v129 = *(v9 + 40);
    if (v129)
    {
      RERetain();
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  if (*(a5 + 23) < 0)
  {
    v12 = *a5;
  }

  v13 = REComponentClassFromName();
  v128 = v13;
  if (!v13)
  {
    v16 = *(realityio::logObjects(0) + 24);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a5 + 23) >= 0)
      {
        v17 = a5;
      }

      else
      {
        v17 = *a5;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v139);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v139);
      *buf = 136315394;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = Text;
      _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Unknown component type for info:id %s from %s", buf, 0x16u);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      goto LABEL_35;
    }

LABEL_36:

    goto LABEL_37;
  }

  ComponentType = REMeshComponentGetComponentType();
  if (v13 == ComponentType)
  {
    v16 = *(realityio::logObjects(ComponentType) + 24);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v139);
      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v139);
      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Mesh components cannot be explicitly created at %s", buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_35:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v139);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (v13 == REImageBasedLightReceiverComponentGetComponentType() || v13 == REImageBasedLightComponentGetComponentType() || v13 == REVirtualEnvironmentProbeComponentGetComponentType() || v13 == REMeshSortingComponentGetComponentType() || v13 == RESpotLightComponentGetComponentType() || v13 == RESpotLightShadowMapComponentGetComponentType() || v13 == REDirectionalLightComponentGetComponentType() || v13 == REDirectionalLightShadowMapComponentGetComponentType() || v13 == REAnchoringComponentGetComponentType())
  {
    goto LABEL_37;
  }

  if (!v129)
  {
    v15 = REComponentCreateByClass();
    goto LABEL_41;
  }

  if (REComponentGetClass() != v13)
  {
    REComponentGetClass();
    REEntityRemoveComponentByClass();
    v15 = REComponentCreateByClass();
    RERelease();
LABEL_41:
    v129 = v15;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v139);
    *buf = &v139;
    v22 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REComponent *>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath&&>,std::tuple<>>(a1 + 280, &v139);
    realityio::WrappedRERef<REAsset *>::operator=((v22 + 40), &v129);
    pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v139);
    goto LABEL_43;
  }

  v23 = *(*(*(a2 + 5) + 16) + 16);
  REEngineGetServiceLocator();
  ECSService = REServiceLocatorGetECSService();
  reinitIntrospectableData(ECSService, &v129);
LABEL_43:
  v25 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  realityio::Inputs::assetManager(a2);
  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "Collider"))
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "RigidBody"))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, __p);
      MEMORY[0x24C1A5DE0](&v110, "material");
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v139, __p, &v110);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(buf, v25, &v139);
      pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v139);
      if ((v110 & 7) != 0)
      {
        atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(__p);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(buf))
      {
        MEMORY[0x24C1A5DE0](__p, "restitution");
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v139, buf, __p);
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        LODWORD(__p[0]) = 0;
        realityio::getAttributeValueWithDefaultValue<float>(&v139, __p);
        MEMORY[0x24C1A5DE0](&v110, "staticFriction");
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(__p, buf, &v110);
        if ((v110 & 7) != 0)
        {
          atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        LODWORD(v110) = 0;
        realityio::getAttributeValueWithDefaultValue<float>(__p, &v110);
        MEMORY[0x24C1A5DE0](&v106, "dynamicFriction");
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v110, buf, &v106);
        if ((v106 & 7) != 0)
        {
          atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        LODWORD(v106) = 0;
        realityio::getAttributeValueWithDefaultValue<float>(&v110, &v106);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v110);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(__p);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v139);
      }

      *&v139 = REAssetManagerPhysicsMaterialAssetCreate2();
      RERigidBodyComponentSetMaterial();
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v139);
      pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(buf);
      v13 = v128;
    }

    memset(buf, 0, 32);
    MockREComponentClassGetComponentTypeInfo(buf, v13);
    v139 = *buf;
    v140 = *&buf[16];
    RETypeInfoGetSize();
    LOBYTE(v110) = 0;
    std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "Anchoring");
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, __p);
  MEMORY[0x24C1A5DE0](&v110, "Shape");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(buf, __p, &v110);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v139, v25, buf);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(buf);
  if ((v110 & 7) != 0)
  {
    atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(__p);
  MEMORY[0x24C1A5DE0](buf, "shapeType");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(__p, &v139, buf);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *&v110 = 0;
  realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::TfToken>(buf, __p, &v110);
  v27 = buf[0];
  v28 = (*buf & 0xFFFFFFFFFFFFFFF8);
  if ((*buf & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v28 + 4);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v26);
  }

  if (*(EmptyString + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v103, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v30 = *EmptyString;
    *&v103[16] = *(EmptyString + 16);
    *v103 = v30;
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_release);
    if ((v110 & 7) != 0)
    {
      atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v139, &v106);
  MEMORY[0x24C1A5DE0](&v137, "pose");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(buf, &v106, &v137);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v110, v25, buf);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(buf);
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v106);
  v106 = 0u;
  v107 = 0u;
  REPoseIdentity();
  DWORD2(v106) = v31;
  *&v106 = v32;
  v107 = v33;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v110))
  {
    MEMORY[0x24C1A5DE0](buf, "position");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v137, &v110, buf);
    if ((buf[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    LODWORD(__s[1]) = 0;
    __s[0] = 0;
    *buf = 0;
    *&buf[8] = 0;
    realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(&v137, buf);
    __s[0] = __PAIR64__(v35, v34);
    LODWORD(__s[1]) = v36;
    MEMORY[0x24C1A5DE0](buf, "orientation");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v118, &v110, buf);
    if ((buf[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *buf = xmmword_247757270;
    realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::GfQuatf>(&v118, buf);
    v116.__r_.__value_.__r.__words[0] = __PAIR64__(v38, v37);
    v116.__r_.__value_.__l.__size_ = __PAIR64__(v40, v39);
    pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(buf, 1.0);
    pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTranslateOnly();
    pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly();
    REMakePose();
    DWORD2(v106) = v41;
    *&v106 = v42;
    v107 = v43;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v118);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v137);
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v103, "Box"))
  {
    MEMORY[0x24C1A5DE0](&v137, "extent");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, &v139, &v137);
    if ((v137 & 7) != 0)
    {
      atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *&v137 = 0;
    DWORD2(v137) = 0;
    realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(buf, &v137);
    *&v137 = REAssetManagerCollisionShapeAssetCreateBox();
    *&v118 = v137;
    REAssetManagerCollisionShapeAssetCreateCompound();
  }

  else
  {
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v103, "Capsule"))
    {
      MEMORY[0x24C1A5DE0](&v137, "height");
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, &v139, &v137);
      if ((v137 & 7) != 0)
      {
        atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&v118, "radius");
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v137, &v139, &v118);
      if ((v118 & 7) != 0)
      {
        atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      LODWORD(v118) = 0;
      realityio::getAttributeValueWithDefaultValue<float>(buf, &v118);
      LODWORD(v118) = 0;
      realityio::getAttributeValueWithDefaultValue<float>(&v137, &v118);
      *&v118 = REAssetManagerCollisionShapeAssetCreateCapsule();
      v116.__r_.__value_.__r.__words[0] = v118;
      REAssetManagerCollisionShapeAssetCreateCompound();
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v118);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v137);
      goto LABEL_89;
    }

    v58 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v103, "Sphere");
    if (!v58)
    {
      v100 = *(realityio::logObjects(v58) + 24);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = v103;
        if (v103[23] < 0)
        {
          v101 = *v103;
        }

        *buf = 136315138;
        *&buf[4] = v101;
        _os_log_impl(&dword_247485000, v100, OS_LOG_TYPE_DEFAULT, "Shape type for %s does not exist. Creating an empty shape.", buf, 0xCu);
      }

      REAssetManagerCollisionShapeAssetCreateEmpty();
      goto LABEL_90;
    }

    MEMORY[0x24C1A5DE0](&v137, "radius");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, &v139, &v137);
    if ((v137 & 7) != 0)
    {
      atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    LODWORD(v137) = 0;
    realityio::getAttributeValueWithDefaultValue<float>(buf, &v137);
    *&v137 = REAssetManagerCollisionShapeAssetCreateSphere();
    *&v118 = v137;
    REAssetManagerCollisionShapeAssetCreateCompound();
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v137);
LABEL_89:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(buf);
LABEL_90:
  REColliderComponentSetShape();
  MEMORY[0x24C1A5DE0](&v137, "interactionType");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(buf, this, &v137);
  if ((v137 & 7) != 0)
  {
    atomic_fetch_add_explicit((v137 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](&v118, "Default");
  realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::TfToken>(&v137, buf, &v118);
  v45 = v137;
  v46 = (v137 & 0xFFFFFFFFFFFFFFF8);
  if ((v137 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v47 = (v46 + 4);
  }

  else
  {
    v47 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
  }

  if (*(v47 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, *v47, *(v47 + 8));
  }

  else
  {
    v48 = *v47;
    v116.__r_.__value_.__r.__words[2] = *(v47 + 16);
    *&v116.__r_.__value_.__l.__data_ = v48;
  }

  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_release);
  }

  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v116, "Trigger"))
  {
    v49 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v116, "Default");
    if (!v49)
    {
      v50 = *(realityio::logObjects(v49) + 24);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = &v116;
        if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v51 = v116.__r_.__value_.__r.__words[0];
        }

        LODWORD(v137) = 136315138;
        *(&v137 + 4) = v51;
        _os_log_impl(&dword_247485000, v50, OS_LOG_TYPE_DEFAULT, "Interaction type for %s does not exist. Setting to Default", &v137, 0xCu);
      }
    }
  }

  REColliderComponentSetInteractionType();
  MEMORY[0x24C1A5DE0](&v118, "mask");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v137, this, &v118);
  if ((v118 & 7) != 0)
  {
    atomic_fetch_add_explicit((v118 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5DE0](__s, "group");
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v118, this, __s);
  if ((__s[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__s[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  LODWORD(__s[0]) = 0;
  realityio::getAttributeValueWithDefaultValue<unsigned int>(&v137, __s);
  LODWORD(__s[0]) = 0;
  realityio::getAttributeValueWithDefaultValue<unsigned int>(&v118, __s);
  REColliderComponentSetMask();
  REColliderComponentSetGroup();
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v118);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v137);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(buf);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&v110);
  if ((v103[23] & 0x80000000) != 0)
  {
    operator delete(*v103);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(__p);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&v139);
  Entity = REComponentGetEntity();
  if (Entity)
  {
    v130 = Entity;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "GroundingShadow"))
  {
    Name = REEntityGetName();
    if (strncmp(Name, "usdPrimitiveAxis", 0x10uLL))
    {
      ChildCount = REEntityGetChildCount();
      if (ChildCount)
      {
        v55 = 0;
        while (1)
        {
          Child = REEntityGetChild();
          v57 = REEntityGetName();
          if (!strncmp(v57, "usdPrimitiveAxis", 0x10uLL))
          {
            break;
          }

          if (ChildCount == ++v55)
          {
            goto LABEL_131;
          }
        }

        v130 = Child;
      }
    }
  }

LABEL_131:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "BlendShapeWeights"))
  {
    memset(buf, 0, sizeof(buf));
    MEMORY[0x24C1A5DE0](&v139, "blendWeights:keys");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v106, this, &v139);
    if ((v139 & 7) != 0)
    {
      atomic_fetch_add_explicit((v139 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(&v139, &v106, buf);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(buf);
    *buf = v139;
    *&buf[16] = v140;
    v139 = 0u;
    v140 = 0u;
    *&buf[32] = v141;
    v141 = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v139);
    v141 = 0;
    v139 = 0u;
    v140 = 0u;
    MEMORY[0x24C1A5DE0](__p, "blendWeights:counts");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v137, this, __p);
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(__p, &v137, &v139);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v139);
    v139 = *__p;
    v140 = v121;
    *__p = 0u;
    v121 = 0u;
    v141 = v122;
    v122 = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__p);
    v122 = 0;
    *__p = 0u;
    v121 = 0u;
    MEMORY[0x24C1A5DE0](&v110, "blendWeights:values");
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v118, this, &v110);
    if ((v110 & 7) != 0)
    {
      atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(&v110, &v118, __p);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__p);
    *__p = v110;
    v121 = v111;
    v110 = 0u;
    v111 = 0u;
    v122 = v112.__r_.__value_.__r.__words[0];
    v112.__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v110);
    REBlendShapeWeightsComponentSetBlendShapeWeightsCount();
    if (v139)
    {
      v59 = 0;
      v60 = 0;
      do
      {
        pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v139);
        v61 = *(v141 + 8 * v59);
        REBlendShapeWeightsComponentSetBlendWeightCount();
        if (v61)
        {
          for (i = 0; i != v61; ++i)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(__p);
            v63 = *(v122 + 4 * v60 + 4 * i);
            REBlendShapeWeightsComponentSetBlendWeight();
          }

          v60 += i;
        }

        ++v59;
      }

      while (v59 < v139);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v118);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(__p);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v137);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v139);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&v106);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(buf);
  }

  v64 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "AnimationLibrary");
  if (v64)
  {
    if (*(*(a2 + 5) + 272) == 1)
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetChildren(&v139, this);
      v124 = 0;
      v125 = 0;
      v126 = 0;
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetChildren(__p, this);
      v65 = &v106 + 1;
      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(&v137, __p);
      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::UsdPrimSiblingIterator(&v118, &v123);
      while (1)
      {
        if (v137 == v118 && pxrInternal__aapl__pxrReserved__::operator==(&v138, &v119))
        {
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(&v118);
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(&v137);
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::~UsdPrimSiblingRange(__p);
          if (v125 != v124)
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetName(this);
            std::allocate_shared[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary,std::allocator<realityio::ArbitraryComponentBuilder::AnimationLibrary>,pxrInternal__aapl__pxrReserved__::TfToken const&,REEntity *&,std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry> &,0>();
          }

          *buf = &v124;
          std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__destroy_vector::operator()[abi:ne200100](buf);
          pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::~UsdPrimSiblingRange(&v139);
          goto LABEL_294;
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v137, &v116);
        size = v116.__r_.__value_.__l.__size_;
        if (!v116.__r_.__value_.__l.__size_ || (*(v116.__r_.__value_.__l.__size_ + 57) & 8) != 0)
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v116.__r_.__value_.__l.__size_, v66);
        }

        v68 = *(size + 24);
        if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
        {
          break;
        }

LABEL_217:
        v79 = v116.__r_.__value_.__l.__size_;
        if (!v116.__r_.__value_.__l.__size_ || (*(v116.__r_.__value_.__l.__size_ + 57) & 8) != 0)
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v116.__r_.__value_.__l.__size_, v69);
        }

        v80 = *(v79 + 24);
        if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
        {
          MEMORY[0x24C1A5DE0](v103, "clipNames");
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v116, v103, buf);
          if (buf[0])
          {
            v110 = *&buf[8];
            v111 = *&buf[24];
            v81 = v132;
          }

          else
          {
            v110 = v106;
            v111 = v107;
            v81 = v108;
          }

          v112.__r_.__value_.__r.__words[0] = v81;
          if (v81)
          {
            v82 = (v81 - 16);
            if (*(&v111 + 1))
            {
              v82 = *(&v111 + 1);
            }

            atomic_fetch_add_explicit(v82, 1uLL, memory_order_relaxed);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(buf);
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v106);
          if ((v103[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v103 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5DE0](__s, "startTimes");
          v104 = 0;
          memset(v103, 0, sizeof(v103));
          realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<double>>(buf, __s, &v116);
          if (buf[0])
          {
            v106 = *&buf[8];
            v107 = *&buf[24];
            v83 = v132;
          }

          else
          {
            v106 = *v103;
            v107 = *&v103[16];
            v83 = v104;
          }

          v108 = v83;
          if (v83)
          {
            v84 = (v83 - 16);
            if (*(&v107 + 1))
            {
              v84 = *(&v107 + 1);
            }

            atomic_fetch_add_explicit(v84, 1uLL, memory_order_relaxed);
          }

          realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<double>,realityio::DetailedError>::~Result(buf);
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v103);
          if ((__s[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((__s[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5DE0](&v105, "sourceAnimationName");
          std::string::basic_string[abi:ne200100]<0>(__s, "");
          realityio::getAttributeValue<std::string>(&v116, &v105, buf);
          if (buf[0])
          {
            if ((buf[31] & 0x80000000) == 0)
            {
              *v103 = *&buf[8];
              *&v103[16] = *&buf[24];
LABEL_251:
              if (SHIBYTE(v114) < 0)
              {
                operator delete(__s[0]);
              }

              if ((v105.__r_.__value_.__s.__data_[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((v105.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v110);
              v88 = v112.__r_.__value_.__r.__words[0];
              pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v110);
              v89 = v112.__r_.__value_.__r.__words[0] + 24 * v110;
              if (v88 != v89)
              {
                v90 = 0;
                do
                {
                  if (v106 <= v90)
                  {
                    break;
                  }

                  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v106);
                  v91 = *(v108 + 8 * v90);
                  v92 = 0.0;
                  if (v106 > v90 + 1)
                  {
                    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v106);
                    v92 = *(v108 + 8 * v90 + 8);
                  }

                  if (*(v88 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(buf, *v88, *(v88 + 8));
                  }

                  else
                  {
                    v93 = *v88;
                    *&buf[16] = *(v88 + 16);
                    *buf = v93;
                  }

                  if ((v103[23] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(&buf[24], *v103, *&v103[8]);
                  }

                  else
                  {
                    *&buf[24] = *v103;
                    v132 = *&v103[16];
                  }

                  v94 = v65;
                  std::string::basic_string[abi:ne200100]<0>(&v133, "");
                  v134 = v91;
                  v135 = v92;
                  v136 = 1;
                  v95 = v125;
                  if (v125 >= v126)
                  {
                    v96 = std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__emplace_back_slow_path<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry const&>(&v124, buf);
                  }

                  else
                  {
                    std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__construct_one_at_end[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry const&>(&v124, buf);
                    v96 = v95 + 96;
                  }

                  v65 = v94;
                  v125 = v96;
                  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v133.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v132) < 0)
                  {
                    operator delete(*&buf[24]);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  v88 += 24;
                  ++v90;
                }

                while (v88 != v89);
              }

              if ((v103[23] & 0x80000000) != 0)
              {
                operator delete(*v103);
              }

              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v106);
              pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v110);
              goto LABEL_279;
            }

            v85 = *&buf[8];
            v86 = &buf[16];
LABEL_246:
            std::string::__init_copy_ctor_external(v103, v85, *v86);
            if (buf[0])
            {
              v87 = &buf[8];
              if ((buf[31] & 0x80000000) == 0)
              {
                goto LABEL_251;
              }

LABEL_250:
              operator delete(*v87);
              goto LABEL_251;
            }
          }

          else
          {
            if (SHIBYTE(v114) < 0)
            {
              v85 = __s[0];
              v86 = &__s[1];
              goto LABEL_246;
            }

            *v103 = *__s;
            *&v103[16] = v114;
          }

          v87 = &buf[24];
          if ((SHIBYTE(v132) & 0x80000000) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_250;
        }

LABEL_279:
        if ((v117 & 7) != 0)
        {
          atomic_fetch_add_explicit((v117 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v116.__r_.__value_.__r.__words[2]);
        if (v116.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v116.__r_.__value_.__l.__size_);
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v137);
      }

      MEMORY[0x24C1A5DE0](buf, "file");
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(v103, &v116, buf);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](buf, "name");
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(__s, &v116, buf);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(__s))
      {
LABEL_209:
        if ((v115 & 7) != 0)
        {
          atomic_fetch_add_explicit((v115 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v114);
        if (__s[1])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__s[1]);
        }

        if ((v103[24] & 7) != 0)
        {
          atomic_fetch_add_explicit((*&v103[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103[16]);
        if (*&v103[8])
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v103[8]);
        }

        goto LABEL_217;
      }

      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v103, &v110);
      realityio::getAttributeValue<std::string>(__s, &v106);
      MEMORY[0x24C1A5DE0](&v105, "startTime");
      realityio::getAttributeValue<double>(&v116, &v105, buf);
      v70 = buf[0];
      v71 = *&buf[8];
      if ((buf[0] & 1) == 0 && SHIBYTE(v132) < 0)
      {
        operator delete(*&buf[24]);
      }

      if (!v70)
      {
        v71 = -1.0;
      }

      if ((v105.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v105.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&v105, "endTime");
      realityio::getAttributeValue<double>(&v116, &v105, buf);
      v72 = buf[0];
      v73 = *&buf[8];
      if ((buf[0] & 1) == 0 && SHIBYTE(v132) < 0)
      {
        operator delete(*&buf[24]);
      }

      if (!v72)
      {
        v73 = -1.0;
      }

      if ((v105.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v105.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&v105, "looping");
      realityio::getAttributeValue<BOOL>(&v116, &v105, buf);
      v74 = buf[0];
      v75 = buf[8];
      if ((buf[0] & 1) == 0 && SHIBYTE(v132) < 0)
      {
        operator delete(*&buf[24]);
      }

      if ((v105.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v105.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v110 == 1)
      {
        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v105, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
        }

        else
        {
          v105 = v112;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v105, "");
      }

      if (v106 != 1)
      {
LABEL_201:
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        if (v106 == 1)
        {
          v78 = v65;
          if (SHIBYTE(v107) < 0)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v78 = &v107 + 1;
          if (v109 < 0)
          {
LABEL_207:
            operator delete(*v78);
          }
        }

        realityio::Result<pxrInternal__aapl__pxrReserved__::SdfAssetPath,realityio::DetailedError>::~Result(&v110);
        goto LABEL_209;
      }

      if (SHIBYTE(v107) < 0)
      {
        std::string::__init_copy_ctor_external(buf, *(&v106 + 1), v107);
        if (SHIBYTE(v107) < 0)
        {
          std::string::__init_copy_ctor_external(&buf[24], *(&v106 + 1), v107);
          goto LABEL_189;
        }
      }

      else
      {
        *buf = *v65;
        *&buf[16] = v65[2];
      }

      *&buf[24] = *v65;
      v132 = v65[2];
LABEL_189:
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v133, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
      }

      else
      {
        v133 = v105;
      }

      v134 = v71;
      v135 = v73;
      v136 = v74 & v75;
      v76 = v125;
      if (v125 >= v126)
      {
        v77 = std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__emplace_back_slow_path<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry const&>(&v124, buf);
      }

      else
      {
        std::vector<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry>::__construct_one_at_end[abi:ne200100]<realityio::ArbitraryComponentBuilder::AnimationLibrary::Entry const&>(&v124, buf);
        v77 = v76 + 96;
      }

      v125 = v77;
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v132) < 0)
      {
        operator delete(*&buf[24]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_201;
    }

    v97 = *(realityio::logObjects(v64) + 24);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(this, &v139);
      v98 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v139);
      if (*(v98 + 23) >= 0)
      {
        v99 = v98;
      }

      else
      {
        v99 = *v98;
      }

      *buf = 136315138;
      *&buf[4] = v99;
      _os_log_impl(&dword_247485000, v97, OS_LOG_TYPE_DEFAULT, "Recursive realitykit animation library components are disallowed. Ignoring one at: %s.", buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v139);
    }
  }

LABEL_294:
  if (REEntityGetComponentByClass() != v129 || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, "CharacterController"))
  {
    REEntityRemoveComponentByClass();
    REEntityAddExistingComponent();
  }

  MEMORY[0x24C1A3400](v129);
LABEL_37:
  result = realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v129);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2476D6BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&STACK[0x250]);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a73);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a34);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a56);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v73 - 224));
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(&a72);
  _Unwind_Resume(a1);
}

void *reinitIntrospectableData(uint64_t a1, void *a2)
{
  result = *a2;
  if (*a2)
  {
    REComponentGetClass();
    v8 = REComponentCreateByClass();
    v7 = REECSOPACKSerializerCreate();
    v6 = REComponentSerializeCopyToOPACKData();
    if (v6)
    {
      v5 = REECSOPACKDeserializerCreate();
      v4 = *a2;
      REComponentDeserializeFromOPACKData();
      realityio::WrappedRERef<REECSOPACKDeserializer *>::~WrappedRERef(&v5);
    }

    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v6);
    realityio::WrappedRERef<REECSOPACKSerializer *>::~WrappedRERef(&v7);
    return realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v8);
  }

  return result;
}

void sub_2476D7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12)
{
  realityio::WrappedRERef<REECSOPACKDeserializer *>::~WrappedRERef(&a9);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a10);
  realityio::WrappedRERef<REECSOPACKSerializer *>::~WrappedRERef(&a11);
  realityio::WrappedRERef<REComponent *>::~WrappedRERef(&a12);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::TfToken>(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, atomic_uint **a3)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(a2, v7);
  if (v7[0])
  {
    v5 = v8;
  }

  else
  {
    v5 = *a3;
  }

  *a1 = v5;
  if ((v5 & 7) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a1 = v6;
    }
  }

  if (v7[0] == 1)
  {
    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (v10 < 0)
  {
    operator delete(__p);
  }
}

void realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, int *a2)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1, v6);
  v4 = a2[1];
  v3 = a2[2];
  v5 = *a2;
  if ((v6[0] & 1) == 0 && v8 < 0)
  {
    operator delete(__p);
  }
}

void realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::GfQuatf>(pxrInternal__aapl__pxrReserved__::UsdObject *this, int *a2)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::GfQuatf>(v7, this);
  v4 = a2[2];
  v3 = a2[3];
  v5 = *a2;
  v6 = a2[1];
  if ((v7[0] & 1) == 0 && v9 < 0)
  {
    operator delete(__p);
  }
}

void realityio::getAttributeValueWithDefaultValue<float>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, int *a2)
{
  realityio::getAttributeValue<float>(a1, v4);
  v3 = *a2;
  if ((v4[0] & 1) == 0 && v6 < 0)
  {
    operator delete(__p);
  }
}

uint64_t realityio::getAttributeValueWithDefaultValue<unsigned int>(pxrInternal__aapl__pxrReserved__::UsdObject *a1, unsigned int *a2)
{
  realityio::getAttributeValue<unsigned int>(a1, v7);
  v3 = v7[0];
  v4 = v8;
  v5 = *a2;
  if ((v7[0] & 1) == 0 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(v10, a2);
  if (v10[0])
  {
    v5 = v12;
    *a1 = v11;
    *(a1 + 16) = v5;
    v6 = v13;
  }

  else
  {
    v7 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v7;
    v6 = *(a3 + 32);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    v8 = (v6 - 16);
    if (*(a1 + 24))
    {
      v8 = *(a1 + 24);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>,realityio::DetailedError>::~Result(v10);
}

uint64_t realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(v10, a2);
  if (v10[0])
  {
    v5 = v12;
    *a1 = v11;
    *(a1 + 16) = v5;
    v6 = v13;
  }

  else
  {
    v7 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v7;
    v6 = *(a3 + 32);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    v8 = (v6 - 16);
    if (*(a1 + 24))
    {
      v8 = *(a1 + 24);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<long long>,realityio::DetailedError>::~Result(v10);
}

uint64_t realityio::getAttributeValueWithDefaultValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, uint64_t a3)
{
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<float>>(a2, v10);
  if (v10[0])
  {
    v5 = v12;
    *a1 = v11;
    *(a1 + 16) = v5;
    v6 = v13;
  }

  else
  {
    v7 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v7;
    v6 = *(a3 + 32);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    v8 = (v6 - 16);
    if (*(a1 + 24))
    {
      v8 = *(a1 + 24);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<float>,realityio::DetailedError>::~Result(v10);
}

uint64_t realityio::ArbitraryComponentBuilder::run(realityio::ArbitraryComponentBuilder *this, realityio::Inputs *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  v5 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v24, v5, v4);
  v7 = realityio::EntityBuilder::kInputName(PrimAtPath);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v7, v22);
  if (v22[0])
  {
    v21 = v23;
    if (v23)
    {
      RERetain();
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
  }

  v8 = 1;
LABEL_6:
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v24, v17);
  if ((v8 & 1) == 0)
  {
    v10 = v25;
    if (!v25 || (v11 = *(v25 + 7), (v11 & 0x800) != 0))
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v25, v9);
      v11 = *(v10 + 7);
    }

    if (v11)
    {
      v30 = a2;
      v29 = v21;
      LODWORD(v36) = 3;
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v40 = 0;
      v13 = atomic_load(&realityio::tokens::ArbitraryComponentBuilderTokens);
      if (!v13)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType>>::_TryToCreateData();
      }

      pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v31, &v24, (v13 + 16));
      LODWORD(v36) = v31;
      if (v37)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
      }

      v37 = v32;
      v32 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v38, &v33);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v39, &v34);
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v40 = v35;
      v35 = 0;
      IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v36);
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

      if (IsValid)
      {
        v28 = 0;
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
      }

      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v38);
      if (v37)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
      }
    }

    else
    {
      v12 = *(a2 + 6);
      v36 = &unk_28595D658;
      v37 = this;
      v40 = &v36;
      (*(*v12 + 16))(v12, &v36);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v36);
    }
  }

  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  if (v18)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v18);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v21);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v22);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  result = v25;
  if (v25)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}