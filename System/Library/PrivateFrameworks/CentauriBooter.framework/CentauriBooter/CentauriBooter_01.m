void sub_243394F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::copyCalibrationData(ACFULogging *a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, int a7, CFTypeRef **a8)
{
  v71 = *MEMORY[0x277D85DE8];
  ACFULogging::getLogInstance(a1);
  v12 = ACFULogging::handleMessage();
  if (a4)
  {
    ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage();
    goto LABEL_45;
  }

  v61 = 0;
  v62 = "BWC3";
  v59 = 0;
  v60 = 0;
  v13 = std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(&v59, &v62, &v63, 1uLL);
  v55 = a5;
  v56 = a6;
  v57 = 0;
  v14 = a7;
  v58 = a7;
  CentauriFirmware::getManifestUniqueId(v13, &v54);
  size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v54.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v32 = 0;
    goto LABEL_40;
  }

  v17 = v59;
  v49 = v60;
  if (v59 == v60)
  {
LABEL_37:
    if (*a8 == a8[1])
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage();
    }

    v32 = 1;
    goto LABEL_40;
  }

  while (v14)
  {
    ACFUCommon::FDRDataClass::FDRDataClass(&v62, *v17);
    DataLocalCopy = ACFUFDR::getDataLocalCopy();
    if (SBYTE7(v65) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62);
    }

    if (v53)
    {
LABEL_67:
      ACFULogging::getLogInstance(DataLocalCopy);
      ACFULogging::handleMessage();
      AMSupportSafeRelease();
      goto LABEL_58;
    }

    if (!theDict)
    {
LABEL_35:
      ACFULogging::getLogInstance(DataLocalCopy);
      v47 = *v17;
      v15 = ACFULogging::handleMessage();
      goto LABEL_36;
    }

    v69 = 0u;
    v70 = 0u;
    *__dst = 0u;
    v68 = 0u;
    ACFULogging::getLogInstance(DataLocalCopy);
    v45 = *v17;
    ACFULogging::handleMessage();
    v19 = strlcpy(__dst, *v17, 8uLL);
    if (v19 >= 8)
    {
      ACFULogging::getLogInstance(v19);
      v44 = strlen(*v17);
      goto LABEL_57;
    }

    LOBYTE(v68) = v68 | 1;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v54;
    }

    else
    {
      v20 = v54.__r_.__value_.__r.__words[0];
    }

    TypeID = strlcpy(&v69, v20, 0x20uLL);
    if (TypeID >= 0x20)
    {
LABEL_56:
      ACFULogging::getLogInstance(TypeID);
LABEL_57:
      ACFULogging::handleMessage();
      AMSupportSafeRelease();
      goto LABEL_58;
    }

    v62 = theDict;
    v63 = *__dst;
    __p = v68;
    v65 = v69;
    v66 = v70;
    std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v62);
LABEL_36:
    if (++v17 == v49)
    {
      goto LABEL_37;
    }
  }

  v22 = *v17;
  DataLocalCopy = ACFUFDR::getDictLocalCopy();
  if (v53)
  {
    goto LABEL_67;
  }

  if (!theDict)
  {
    goto LABEL_35;
  }

  ACFULogging::getLogInstance(DataLocalCopy);
  v46 = *v17;
  ACFULogging::handleMessage();
  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    ACFULogging::getLogInstance(0);
    v48 = *v17;
    ACFULogging::handleMessage();
    AMSupportSafeRelease();
    goto LABEL_58;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  v24 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  if (v24)
  {
    v25 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    if (v25)
    {
      CFDictionaryGetKeysAndValues(theDict, v24, v25);
      if (Count >= 1)
      {
        v26 = 0;
        while (1)
        {
          TypeID = v24[v26];
          if (!TypeID)
          {
            break;
          }

          if (!v25[v26])
          {
            goto LABEL_56;
          }

          v27 = CFGetTypeID(TypeID);
          TypeID = CFStringGetTypeID();
          if (v27 != TypeID)
          {
            goto LABEL_56;
          }

          v28 = CFGetTypeID(v25[v26]);
          TypeID = CFDataGetTypeID();
          if (v28 != TypeID)
          {
            goto LABEL_56;
          }

          v30 = ACFUCommon::stringFromCFString(__dst, v24[v26], v29);
          ACFULogging::getLogInstance(v30);
          ACFULogging::handleMessage();
          v31 = CFRetain(v25[v26]);
          v66 = 0u;
          v65 = 0u;
          __p = 0u;
          v63 = 0u;
          v62 = v31;
          std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v62);
          if (SBYTE7(v68) < 0)
          {
            operator delete(*__dst);
          }

          if (Count == ++v26)
          {
            goto LABEL_34;
          }
        }

        ACFULogging::getLogInstance(0);
        goto LABEL_57;
      }

LABEL_34:
      v15 = AMSupportSafeRelease();
      v14 = a7;
      goto LABEL_36;
    }
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
  AMSupportSafeRelease();
LABEL_58:
  v32 = 0;
LABEL_40:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v32)
  {
LABEL_45:
    if (a1)
    {
      v33 = CFArrayGetCount(a1);
      if (v33 >= 1)
      {
        v34 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v34);
          FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(ValueAtIndex, v36);
          ACFULogging::getLogInstance(FileDatafromFilePath);
          if (!FileDatafromFilePath)
          {
            break;
          }

          ACFULogging::handleMessage();
          v62 = FileDatafromFilePath;
          v63 = 0u;
          __p = 0u;
          v65 = 0u;
          v66 = 0u;
          std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](a8, &v62);
          v33 = CFArrayGetCount(a1);
          if (++v34 >= v33)
          {
            goto LABEL_52;
          }
        }

        ACFULogging::handleMessage();
        goto LABEL_60;
      }
    }

    else
    {
      ACFULogging::getLogInstance(0);
      v33 = ACFULogging::handleMessage();
    }

LABEL_52:
    if (*a8 == a8[1])
    {
      ACFULogging::getLogInstance(v33);
      ACFULogging::handleMessage();
    }

    v38 = 1;
  }

  else
  {
LABEL_60:
    v39 = a8;
    v41 = *a8;
    v40 = a8[1];
    if (*a8 != v40)
    {
      do
      {
        if (*v41)
        {
          CFRelease(*v41);
          *v41 = 0;
          v39 = a8;
        }

        v41 += 9;
      }

      while (v41 != v40);
      v41 = *v39;
    }

    v38 = 0;
    v39[1] = v41;
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  v42 = *MEMORY[0x277D85DE8];
  return v38;
}

void sub_243395834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriFirmware::setPatchBay(CentauriFirmware *this, const __CFData *a2, const __CFData *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
  v6 = (*(*this + 40))(this, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
  updated = (*(*this + 40))(this, __p);
  v8 = updated;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (a2)
    {
LABEL_5:
      v9 = *(this + 11);
      if (v9)
      {
        v9 = ACFUDiagnostics::addItem();
      }

      if (v6)
      {
        ACFULogging::getLogInstance(v9);
        ACFULogging::handleMessage();
        std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
        updated = RTKitFirmware::updateTagWithData();
        v10 = updated;
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if (v10)
        {
          v11 = "%s::%s: failed to update alpha tag\n";
LABEL_41:
          CentauriFirmware::setPatchBay(v11);
          return 0;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
        updated = RTKitFirmware::addTagWithData();
        v13 = updated;
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

        if (v13)
        {
          v11 = "%s::%s: failed to add alpha tag\n";
          goto LABEL_41;
        }
      }

      goto LABEL_21;
    }
  }

  else if (a2)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(__p, "_apb");
    updated = RTKitFirmware::removeTag();
    v12 = updated;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12)
    {
      v11 = "%s::%s: failed to remove alpha tag\n";
      goto LABEL_41;
    }
  }

LABEL_21:
  if (a3)
  {
    v14 = *(this + 11);
    if (v14)
    {
      v14 = ACFUDiagnostics::addItem();
    }

    if (v8)
    {
      ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage();
      std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
      v15 = RTKitFirmware::updateTagWithData();
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15)
      {
        v11 = "%s::%s: failed to update beta tag\n";
        goto LABEL_41;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
      v17 = RTKitFirmware::addTagWithData();
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17)
      {
        v11 = "%s::%s: failed to add beta tag\n";
        goto LABEL_41;
      }
    }
  }

  else if (v8)
  {
    ACFULogging::getLogInstance(updated);
    ACFULogging::handleMessage();
    std::string::basic_string[abi:ne200100]<0>(__p, "_bpb");
    v16 = RTKitFirmware::removeTag();
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      v11 = "%s::%s: failed to remove beta tag\n";
      goto LABEL_41;
    }
  }

  return 1;
}

void sub_243395C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CentauriFirmware::isChipRevisionSupported(CentauriFirmware *this, unsigned __int8 a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  memset(&v18, 0, sizeof(v18));
  CentauriFirmware::getSupportedChipRevision(&v16);
  v20 = v17;
  *__p = v16;
  v3 = HIBYTE(v17);
  v4 = SHIBYTE(v17);
  v5 = *(&v16 + 1);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(v17);
  }

  else
  {
    v6 = *(&v16 + 1);
  }

  v7 = 1;
  if (v6)
  {
    *(&v18.__r_.__value_.__s + 23) = 1;
    LOWORD(v18.__r_.__value_.__l.__data_) = ((a2 >> 4) + 65);
    std::string::push_back(&v18, a2 & 0xF | 0x30);
    v9 = __p[0];
    if (v4 >= 0)
    {
      v10 = (__p + v3);
    }

    else
    {
      v10 = (__p[0] + v5);
    }

    if (v4 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if (v11 != v10)
    {
      do
      {
        v8 = __toupper(*v11);
        *v11 = v8;
        v11 = (v11 + 1);
      }

      while (v11 != v10);
      LOBYTE(v4) = HIBYTE(v20);
      v9 = __p[0];
    }

    if ((v4 & 0x80u) == 0)
    {
      v9 = __p;
    }

    v12 = *v9;
    v13 = v18.__r_.__value_.__r.__words[0];
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    v14 = v13->__r_.__value_.__s.__data_[0];
    v7 = v12 == v14;
    if (v12 == v14)
    {
      if ((*(&v18.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
    if ((*(&v18.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_21:
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

LABEL_22:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_243395E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void CentauriFirmware::getSupportedChipRevision(void **a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "bver");
  v3 = ACFUFirmware::copyFWDataByFileName();
  v4 = v3;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], BytePtr, Length, 0x8000100u, 0);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      LogInstance = ACFULogging::getLogInstance(v9);
      v22 = [(ACFULogging *)v9 UTF8String];
      ACFULogging::handleMessage();
      v23 = 0;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"chip_revision_([a-zA-Z][0-9])" options:0 error:{&v23, "CentauriFirmware", "getSupportedChipRevision", v22}];
      v12 = v23;
      v13 = v12;
      if (v11)
      {
        v14 = [v11 firstMatchInString:v9 options:0 range:{0, -[ACFULogging length](v9, "length")}];
        v15 = [v14 numberOfRanges];
        if (v15 == 2)
        {
          v16 = [v14 rangeAtIndex:1];
          v18 = [(ACFULogging *)v9 substringWithRange:v16, v17];
          v20 = ACFUCommon::stringFromCFString(__p, v18, v19);
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          *a1 = *__p;
          a1[2] = v25;
          ACFULogging::getLogInstance(v20);
          if (*(a1 + 23) < 0)
          {
            v21 = *a1;
          }

          ACFULogging::handleMessage();
        }

        else
        {
          ACFULogging::getLogInstance(v15);
          v18 = 0;
          ACFULogging::handleMessage();
        }
      }

      else
      {
        ACFULogging::getLogInstance(v12);
        if (v13)
        {
          LogInstance = [(ACFULogging *)v13 description];
          [LogInstance UTF8String];
        }

        ACFULogging::handleMessage();
        if (v13)
        {
        }

        v14 = 0;
        v18 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      ACFULogging::getLogInstance(0);
      v13 = 0;
      v14 = 0;
      v18 = 0;
      ACFULogging::handleMessage();
      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    ACFULogging::getLogInstance(v3);
    v13 = 0;
    v14 = 0;
    v18 = 0;
    ACFULogging::handleMessage();
    v11 = 0;
    v8 = 0;
  }
}

void sub_2433962C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(a1);
}

void CentauriFirmware::~CentauriFirmware(CentauriFirmware *this)
{
  *this = &unk_28561AC38;
  v1 = *(this + 12);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x245D31710);
}

{
  CentauriFirmware::~CentauriFirmware(this);

  operator delete(v1);
}

void CentauriFirmware::getManifestUniqueId(CentauriFirmware *this@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    CentauriFirmware::getManifestUniqueId();
  }

  if (CentauriFirmware::getManifestUniqueId(void)::once != -1)
  {
    CentauriFirmware::getManifestUniqueId();
  }

  v3 = *(&xmmword_27ED71C88 + 1);
  if (byte_27ED71C9F >= 0)
  {
    v3 = byte_27ED71C9F;
  }

  if (v3)
  {
    if ((byte_27ED71C9F & 0x80) == 0)
    {
LABEL_9:
      *&a2->__r_.__value_.__l.__data_ = xmmword_27ED71C88;
      a2->__r_.__value_.__r.__words[2] = unk_27ED71C98;
      return;
    }
  }

  else
  {
    ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage();
    if ((byte_27ED71C9F & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  v4 = xmmword_27ED71C88;

  std::string::__init_copy_ctor_external(a2, v4, *(&v4 + 1));
}

uint64_t ___ZN16CentauriFirmware19getManifestUniqueIdEv_block_invoke()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v27);
  v25 = 0;
  valuePtr = 0;
  TypeID = MGCopyAnswer();
  v1 = TypeID;
  if (!TypeID || (v2 = CFGetTypeID(TypeID), TypeID = CFNumberGetTypeID(), v2 != TypeID))
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
    if (!v1)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  Value = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
  if (!Value)
  {
    ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage();
LABEL_35:
    v5 = 0;
    goto LABEL_26;
  }

  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4 && (v6 = CFGetTypeID(v4), v4 = CFNumberGetTypeID(), v6 == v4))
  {
    v7 = CFNumberGetValue(v5, kCFNumberSInt64Type, &v25);
    if (v7)
    {
      *(&v28 + *(v28 - 24) + 8) |= 0x4000u;
      LOBYTE(__dst) = 48;
      v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &__dst);
      v9 = *v8;
      *(v8 + *(*v8 - 24) + 24) = 8;
      *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
      v10 = MEMORY[0x245D31900]();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "-", 1);
      v24 = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v24);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 16;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      v14 = MEMORY[0x245D31900]();
      if ((v35 & 0x10) != 0)
      {
        v17 = v34;
        if (v34 < v31)
        {
          v34 = v31;
          v17 = v31;
        }

        locale = v30[4].__locale_;
      }

      else
      {
        if ((v35 & 8) == 0)
        {
          v15 = 0;
          HIBYTE(v23) = 0;
          p_dst = &__dst;
          goto LABEL_23;
        }

        locale = v30[1].__locale_;
        v17 = v30[3].__locale_;
      }

      v15 = v17 - locale;
      if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v15 >= 0x17)
      {
        if ((v15 | 7) == 0x17)
        {
          v19 = 25;
        }

        else
        {
          v19 = (v15 | 7) + 1;
        }

        p_dst = operator new(v19);
        *(&__dst + 1) = v15;
        v23 = v19 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v23) = v17 - locale;
        p_dst = &__dst;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      v14 = memmove(p_dst, locale, v15);
LABEL_23:
      *(p_dst + v15) = 0;
      if (byte_27ED71C9F < 0)
      {
        operator delete(xmmword_27ED71C88);
      }

      xmmword_27ED71C88 = __dst;
      unk_27ED71C98 = v23;
      ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage();
      goto LABEL_26;
    }

    ACFULogging::getLogInstance(v7);
  }

  else
  {
    ACFULogging::getLogInstance(v4);
  }

  ACFULogging::handleMessage();
LABEL_26:
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

LABEL_28:
  v27[0] = *MEMORY[0x277D82818];
  v20 = *(MEMORY[0x277D82818] + 72);
  *(v27 + *(v27[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v28 = v20;
  v29 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D319A0](&v36);
}

void sub_2433969C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x277D82818]);
  MEMORY[0x245D319A0](&a34);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v13 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>>(a1, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[72 * v10];
    v16 = &v14[72 * v13];
    *v15 = *a2;
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    v19 = *(a2 + 48);
    *(v15 + 8) = *(a2 + 64);
    *(v15 + 2) = v18;
    *(v15 + 3) = v19;
    *(v15 + 1) = v17;
    v9 = v15 + 72;
    v20 = *(a1 + 8) - *a1;
    v21 = &v15[-v20];
    memcpy(&v15[-v20], *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v9;
    *(a1 + 16) = v16;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 64);
    *(v4 + 32) = v7;
    *(v4 + 48) = v8;
    *(v4 + 16) = v6;
    v9 = (v4 + 72);
  }

  *(a1 + 8) = v9;
}

char *std::vector<char const*>::__init_with_size[abi:ne200100]<char const* const*,char const* const*>(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_243396B9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ACFUCommon::FDRDataClass *ACFUCommon::FDRDataClass::FDRDataClass(ACFUCommon::FDRDataClass *this, char *a2)
{
  v3 = std::string::basic_string[abi:ne200100]<0>(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v3 + 3, "");
  return this;
}

void sub_243396BF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::FDRDataClass::~FDRDataClass(void **this)
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

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<__CFData const*,CentauriFirmware::CalibrationFileMetadata>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(72 * a2);
}

uint64_t *std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
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

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_243397034(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriCommon::getTatsuTagToFileNameMap(uint64_t a1@<X8>)
{
  v47[4] = *MEMORY[0x277D85DE8];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v5, CentauriTags::Firmware::kRTKitOS, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v6, CentauriTags::Firmware::kRestoreRTKitOS, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v7, CentauriTags::Firmware::kRTKitOSLPEM, "rkol");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v8, CentauriTags::Firmware::kFirmwareDigestArray, "fwda");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v9, CentauriTags::Firmware::kACIWIFI, "aciw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v10, CentauriTags::Firmware::kACIWiFiTxManuf, "awma");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v11, CentauriTags::Firmware::kWiFiTx, "wftp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v12, CentauriTags::Firmware::kWiFiTxManuf, "wftm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v13, CentauriTags::Firmware::kWiFiRx, "wfrp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v14, CentauriTags::Firmware::kWiFiRxManuf, "wfrm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v15, CentauriTags::Firmware::kScanWifi, "scaw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v16, CentauriTags::Firmware::kScanWifiManuf, "swfm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v17, CentauriTags::Firmware::kWifi2GLMAC, "w2lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v18, CentauriTags::Firmware::kWifi2GLMACManuf, "w2lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v19, CentauriTags::Firmware::kWifi5GLMAC, "w5lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v20, CentauriTags::Firmware::kWifi5GLMACManuf, "w5lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v21, CentauriTags::Firmware::kWifi2GLPhy, "w2pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v22, CentauriTags::Firmware::kWifi2GLPhyManuf, "w2pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v23, CentauriTags::Firmware::kWifi5GLPhy, "w5pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v24, CentauriTags::Firmware::kWifi5GLPhyManuf, "w5pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v25, CentauriTags::Firmware::kWifiRegData, "wfrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v26, CentauriTags::Firmware::kACIBT, "acib");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v27, CentauriTags::Firmware::kACIBTLPEM, "lpbt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v28, CentauriTags::Firmware::kACIBTManuf, "acim");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v29, CentauriTags::Firmware::kPhyBlueTooth, "phyb");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v30, CentauriTags::Firmware::kPhyBlueToothManuf, "pbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v31, CentauriTags::Firmware::kScanBluetooth, "scab");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v32, CentauriTags::Firmware::kScanBTLPEM, "sbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v33, CentauriTags::Firmware::kScanBTManuf, "sbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v34, CentauriTags::Firmware::kBTRegData, "btrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v35, CentauriTags::Firmware::kCCPUApplicationFirmware, "ccaf");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v36, CentauriTags::Firmware::kCoexRealTimeArbiter, "crta");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v37, CentauriTags::Firmware::kPhyBlueToothLPM, "pbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v38, CentauriTags::Firmware::kBTOTPDatabase, "bopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v39, CentauriTags::Firmware::kBTSecondary, "btse");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v40, CentauriTags::Firmware::kBTSecondaryManuf, "btsm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v41, CentauriTags::Firmware::kPhyBlueTooth5G, "bt5p");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v42, CentauriTags::Firmware::kPhyBlueTooth5GManuf, "bt5m");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v43, CentauriTags::Firmware::kWiFiOTPDatabase, "wopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v44, CentauriTags::Firmware::kPhyBluetoothTrim, "pbtt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v45, CentauriTags::Firmware::kPhyBluetooth5GTrim, "bt5t");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v46, CentauriTags::Firmware::kWifi2GLPhyTrim, "w2pt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v47, &CentauriTags::Firmware::kWifi5GLPhyTrim, "w5pt");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v5, 43);
  v3 = 172;
  do
  {
    if (SHIBYTE(v5[v3 - 1]) < 0)
    {
      operator delete(v5[v3 - 3]);
    }

    v3 -= 4;
  }

  while (v3 * 8);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_2433975EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 1352;
  v13 = -1376;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

CFMutableDataRef CentauriTransport::copySiKCertificateSigningRequest(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = CentauriTransport::openInterfaceDriver(this);
  if ((v2 & 1) == 0)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    return 0;
  }

  v3 = CentauriTransport::sendCCHICommand(this, 0, 0, 6u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFDataGetLength(v3);
  if (v5 == 4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    v7 = *BytePtr;
    ACFULogging::getLogInstance(BytePtr);
    v8 = ACFULogging::handleMessage();
    if (v7)
    {
      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v7);
      if (Mutable)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = v7 - v11;
          if (v7 - v11 >= 0x3F8)
          {
            v13 = 1016;
          }

          *bytes = v11;
          LODWORD(length) = v13;
          if (v12)
          {
            CFRelease(v12);
          }

          CFRelease(v4);
          v12 = CFDataCreate(v9, bytes, 8);
          ACFULogging::getLogInstance(v12);
          if (!v12)
          {
            break;
          }

          ACFULogging::handleMessage();
          v14 = CentauriTransport::sendCCHICommand(this, v12, 0, 7u);
          if (!v14)
          {
            CFRelease(Mutable);
            v19 = v12;
            goto LABEL_20;
          }

          v4 = v14;
          v15 = CFDataGetLength(v14);
          if (v15 != length)
          {
            ACFULogging::getLogInstance(v15);
            CFDataGetLength(v4);
            ACFULogging::handleMessage();
            CFRelease(Mutable);
            CFRelease(v12);
            Mutable = 0;
            goto LABEL_16;
          }

          v16 = CFDataGetBytePtr(v4);
          CFDataAppendBytes(Mutable, v16, length);
          v11 += length;
          if (v11 >= v7)
          {
            ACFULogging::getLogInstance(v17);
            ACFULogging::handleMessage();
            CFRelease(v12);
            goto LABEL_16;
          }
        }

        ACFULogging::handleMessage();
        v19 = Mutable;
LABEL_20:
        CFRelease(v19);
        return 0;
      }

      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      goto LABEL_16;
    }

    ACFULogging::getLogInstance(v8);
  }

  else
  {
    ACFULogging::getLogInstance(v5);
    CFDataGetLength(v4);
  }

  ACFULogging::handleMessage();
  Mutable = 0;
LABEL_16:
  CFRelease(v4);
  return Mutable;
}

uint64_t CentauriTransport::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1, unsigned __int8 *a2)
{
  ACFULogging::getLogInstance(a1);
  v5 = *a1;
  v6 = *a2;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v4 = *a2;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v4 = *a2;
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::generateBootNonce(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::setHostPlatformIdentifier(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::openControlDriver(ACFULogging *a1, uint64_t a2)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();

  return CentauriTransport::closeControlDriver(a2);
}

uint64_t CentauriTransport::destroySecondaryFtab(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::reset(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::pingCheck(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

void CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  ACFULogging::handleMessage();
  __ns.__rep_ = 20000000000;
  std::this_thread::sleep_for (&__ns);
}

uint64_t CentauriTransport::sendBootTimestamps(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

ACFULogging *copyDefaultPersonalizedFirmwarePath(uint64_t a1, const __CFString *a2)
{
  values[2] = *MEMORY[0x277D85DE8];
  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Centauri", a2);
  if (PersonalizedFirmwarePath)
  {
    v3 = PersonalizedFirmwarePath;
    values[0] = PersonalizedFirmwarePath;
    values[1] = @"ftab.bin";
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, 0);
    v6 = CFStringCreateByCombiningStrings(v4, v5, @"/");
    ACFULogging::getLogInstance(v6);
    if (v6)
    {
      [(ACFULogging *)v6 UTF8String];
    }

    ACFULogging::handleMessage();
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned long long>(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 8)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned char>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 1)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

void ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::create(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  v2 = ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::~ACFUBootInterface(a1);
  operator delete(v2);
}

uint64_t isPersonalizedFirmwarePresentInDefaultLocation(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t validateNVRAMOverride(ACFULogging *a1, _BYTE *a2)
{
  ACFULogging::getLogInstance(a1);
  result = ACFULogging::handleMessage();
  *a2 = 0;
  return result;
}

uint64_t validatePath(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  result = ACFULogging::handleMessage();
  *a1 = 0;
  return result;
}

uint64_t copyPatchBayData(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  dlerror();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  dlerror();
  return ACFULogging::handleMessage();
}

uint64_t ACFUBootInterface<void *,CentauriFirmware,CentauriTransport,ACFURTKitROM>::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriPlatform::isCentauriBuiltin(CentauriPlatform *this, BOOL *a2)
{
  if (this)
  {
    if (qword_27ED71C70 != -1)
    {
      dispatch_once(&qword_27ED71C70, &__block_literal_global_1);
    }

    if (_MergedGlobals == 1)
    {
      *this = HIBYTE(_MergedGlobals);
      return 1;
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return 0;
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriFirmware::copyRFEM(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriFirmware::copyWSKU(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

void CentauriFirmware::getManifestUniqueId()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    __cxa_atexit(MEMORY[0x277D82640], &xmmword_27ED71C88, &dword_243386000);

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

{
  dispatch_once(&CentauriFirmware::getManifestUniqueId(void)::once, &__block_literal_global_2);
}

uint64_t RTKitFirmware::init()
{
  return MEMORY[0x28213EBE8]();
}

{
  return MEMORY[0x28213EBF0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}