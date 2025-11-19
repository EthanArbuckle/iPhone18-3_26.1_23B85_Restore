CFStringRef LDCopyLocaleIdentifierOverrideForLocaleIdentifier(const __CFString *a1)
{
  sub_255F6A1E0(a1, v8);
  sub_255F6A3B4();
  v1 = sub_255F6B2F0(v8);
  sub_255F6A3B4();
  if (v1)
  {
    sub_255F6A3B4();
    v2 = sub_255F6B2F0(v8);
    if (!v2)
    {
      sub_255F6D334();
    }

    if (*(v2 + 63) < 0)
    {
      sub_255F6CA24(__p, v2[5], v2[6]);
    }

    else
    {
      *__p = *(v2 + 5);
      v7 = v2[7];
    }

    if (v7 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if (v7 >= 0)
    {
      v4 = HIBYTE(v7);
    }

    else
    {
      v4 = __p[1];
    }

    v1 = sub_255F6C8FC(v3, v4);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return v1;
}

void sub_255F69DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_255F69DE0(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_255F6A1A8(a1, cf);
  }
}

void LDEnumerateAssetDataItems(CFTypeRef cf, char a2, const void *a3)
{
  if (cf)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3002000000;
    v28 = sub_255F6D644;
    v29 = sub_255F6D654;
    v30 = 0;
    sub_255F69DE0(&v30, cf);
    Value = CFLocaleGetValue(v26[5], *MEMORY[0x277CBEEC8]);
    v7 = LDCopyLocaleIdentifierOverrideForLocaleIdentifier(Value);
    v24 = v7;
    if (v7)
    {
      v8 = CFLocaleCreate(*MEMORY[0x277CBECE8], v7);
      if (v8)
      {
        sub_255F6A1A8(v26 + 5, v8);
      }
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v9 = v26[5];
    v19[1] = MEMORY[0x277D85DD0];
    v19[2] = 0x40000000;
    v19[3] = sub_255F6C64C;
    v19[4] = &unk_279817B80;
    v19[5] = a3;
    v19[6] = &v25;
    v19[7] = &v20;
    sub_255F6A500(v9, a2);
    if ((v21[3] & 1) == 0)
    {
      v10 = CFLocaleGetValue(cf, *MEMORY[0x277CBEED0]);
      if (qword_280AE5FE8 != -1)
      {
        dispatch_once(&qword_280AE5FE8, &unk_286807FF0);
      }

      if (qword_280AE5FF0)
      {
        v11 = CFDictionaryGetValue(qword_280AE5FF0, v10);
        v12 = v11;
        if (v11)
        {
          Count = CFArrayGetCount(v11);
          if (Count >= 1)
          {
            v14 = 0;
            v15 = *MEMORY[0x277CBECE8];
            do
            {
              if (v21[3])
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(v12, v14);
              v17 = CFLocaleCreate(v15, ValueAtIndex);
              if (v17)
              {
                v19[0] = 0;
                sub_255F69DE0(v19, v17);
                v18 = v19[0];
                sub_255F6A500(v19[0], a2);
                if (v18)
                {
                  CFRelease(v18);
                }
              }

              ++v14;
            }

            while (Count != v14);
          }
        }
      }
    }

    _Block_object_dispose(&v20, 8);
    if (v7)
    {
      CFRelease(v7);
    }

    _Block_object_dispose(&v25, 8);
    if (v30)
    {
      CFRelease(v30);
    }
  }
}

void sub_255F6A120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, const void *a29)
{
  _Block_object_dispose(&a25, 8);
  sub_255F6C9EC(&a29, 0);
  _Block_object_dispose((v29 - 152), 8);
  sub_255F6A1A8((v29 - 112), 0);
  _Unwind_Resume(a1);
}

void sub_255F6A1A8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

const __CFString *sub_255F6A1E0@<X0>(const __CFString *result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CStringPtr = CFStringGetCStringPtr(result, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v3);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return sub_255F6A2FC(a2, CStringPtr);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

_BYTE *sub_255F6A2FC(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255F6C944();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_255F6A3B4()
{
  v6 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AE6050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AE6050))
  {
    sub_255F6CB3C(v2);
    sub_255F6CB98(v3);
    sub_255F6CBF4(v4, "fr_CH");
    sub_255F6CBF4(v5, "fr_BE");
    sub_255F6CC48(v2, 4);
    for (i = 144; i != -48; i -= 48)
    {
      sub_255F6D1A8(&v2[i]);
    }

    __cxa_guard_release(&qword_280AE6050);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void sub_255F6A4A8(_Unwind_Exception *a1)
{
  v3 = v1 + 144;
  v4 = -192;
  do
  {
    v3 = sub_255F6D1A8(v3) - 48;
    v4 += 48;
  }

  while (v4);
  __cxa_guard_abort(&qword_280AE6050);
  _Unwind_Resume(a1);
}

uint64_t sub_255F6A500(uint64_t result, char a2)
{
  if (result)
  {
    if (a2 & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"LMDisableMobileAssets", *MEMORY[0x277CBF008], 0) && (_os_feature_enabled_impl())
    {
      operator new();
    }

    operator new();
  }

  return result;
}

void sub_255F6A70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  (*(*v7 + 8))(v7);
  _Unwind_Resume(a1);
}

void sub_255F6A744(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (sub_255F6B220())
  {
    v7 = MEMORY[0x259C53B10](a2);
    if (!v7)
    {
      cf = 0;
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x259C53CB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v8 = v7;
    CFRetain(v7);
    cf = v8;
    v9 = CFGetTypeID(v8);
    if (v9 != CFStringGetTypeID())
    {
      v43 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x259C53CB0](v43, "Could not construct");
      __cxa_throw(v43, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    sub_255F6A2FC(__p, "");
    v10 = cf;
    if (SHIBYTE(v53) < 0)
    {
      sub_255F6CA24(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v63 = v53;
    }

    if (v10 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v10)))
    {
      CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
      if (CStringPtr)
      {
        sub_255F6A2FC(&v55, CStringPtr);
      }

      else
      {
        Length = CFStringGetLength(v10);
        maxBufLen = 0;
        v69.location = 0;
        v69.length = Length;
        CFStringGetBytes(v10, v69, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
        v14 = maxBufLen;
        if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_255F6C944();
        }

        if (maxBufLen >= 0x17)
        {
          operator new();
        }

        HIBYTE(v56) = maxBufLen;
        if (maxBufLen)
        {
          bzero(&v55, maxBufLen);
        }

        *(&v55 + v14) = 0;
        if (SHIBYTE(v56) >= 0)
        {
          v15 = &v55;
        }

        else
        {
          v15 = v55;
        }

        v70.location = 0;
        v70.length = Length;
        CFStringGetBytes(v10, v70, 0x8000100u, 0, 0, v15, maxBufLen, &maxBufLen);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v55 = *buf;
      v56 = v63;
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if ((SHIBYTE(v56) & 0x80000000) == 0)
    {
      if (SHIBYTE(v56) == 4 && v55 == 1953460082)
      {
        goto LABEL_82;
      }

      goto LABEL_38;
    }

    if (*(&v55 + 1) == 4)
    {
      v16 = *v55;
      operator delete(v55);
      if (v16 == 1953460082)
      {
        goto LABEL_82;
      }
    }

    else
    {
      operator delete(v55);
    }

LABEL_38:
    *buf = 0;
    *&buf[8] = buf;
    v63 = 0x3052000000;
    v64 = sub_255F6D710;
    v17 = qword_280AE6008;
    v65 = sub_255F6D720;
    v66 = qword_280AE6008;
    if (!qword_280AE6008)
    {
      *&v55 = MEMORY[0x277D85DD0];
      *(&v55 + 1) = 3221225472;
      v56 = sub_255F6D72C;
      v57 = &unk_279817C70;
      v58 = buf;
      sub_255F6D72C(&v55);
      v17 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
    v18 = [v17 sharedInstance];
    *buf = 0;
    *&buf[8] = buf;
    v63 = 0x3052000000;
    v64 = sub_255F6D710;
    v19 = qword_280AE5FF8;
    v65 = sub_255F6D720;
    v66 = qword_280AE5FF8;
    if (!qword_280AE5FF8)
    {
      *&v55 = MEMORY[0x277D85DD0];
      *(&v55 + 1) = 3221225472;
      v56 = sub_255F6D79C;
      v57 = &unk_279817C70;
      v58 = buf;
      sub_255F6D79C(&v55);
      v19 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
    v20 = [v19 attributeFilter];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v21 = [a2 languageCode];
    v22 = [a2 countryCode];
    v23 = [a2 scriptCode];
    if ([(__CFString *)v21 isEqualToString:@"mul"])
    {
      if (v22)
      {
        if ([v22 length] && v23 && objc_msgSend(v23, "length"))
        {
          *buf = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@-%@", v21, v22, v23];
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
LABEL_53:
          v25 = v24;
          goto LABEL_66;
        }

        if ([v22 length])
        {
          *buf = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v21, v22];
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          goto LABEL_53;
        }
      }

      if (v23 && [v23 length])
      {
        *buf = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v21, v23];
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        goto LABEL_53;
      }
    }

    if ([(__CFString *)v21 isEqualToString:@"fil"])
    {
      v21 = @"tl";
    }

    v25 = [MEMORY[0x277CBEB18] arrayWithObject:v21];
    if (!v22)
    {
      goto LABEL_102;
    }

    if ([v22 length] && v23 && objc_msgSend(v23, "length"))
    {
      [v25 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@_%@-%@", v21, v22, v23)}];
      [v25 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@_%@", v21, v23)}];
      goto LABEL_66;
    }

    if ([v22 length])
    {
      [v25 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@_%@", v21, v22)}];
    }

    else
    {
LABEL_102:
      if (v23 && [v23 length])
      {
        [v25 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@_%@", v21, v23)}];
      }
    }

LABEL_66:
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v26)
    {
      v27 = *v49;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [v20 addAssetLocale:*(*(&v48 + 1) + 8 * i)];
        }

        v26 = [v25 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v26);
    }

    if (qword_280AE6018 != -1)
    {
      dispatch_once(&qword_280AE6018, &unk_286807EE0);
    }

    v29 = qword_280AE6048;
    *buf = 0;
    *&buf[8] = buf;
    v63 = 0x3052000000;
    v64 = sub_255F6D710;
    v30 = qword_280AE6010;
    v65 = sub_255F6D720;
    v66 = qword_280AE6010;
    if (!qword_280AE6010)
    {
      *&v55 = MEMORY[0x277D85DD0];
      *(&v55 + 1) = 3221225472;
      v56 = sub_255F6D80C;
      v57 = &unk_279817C70;
      v58 = buf;
      sub_255F6D80C(&v55);
      v30 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
    v31 = [[v30 alloc] initWithAssetType:v29 filter:v20];
    [v31 setCachedOnly:a3];
    *&v55 = 0;
    v32 = [objc_msgSend(v18 assetsForQuery:v31 error:{&v55), "sortedArrayUsingComparator:", &unk_286807FD0}];
    if (v55)
    {
      if (qword_280AE5FE0 != -1)
      {
        dispatch_once(&qword_280AE5FE0, &unk_286807F20);
      }

      v33 = qword_280AE5FD8;
      if (os_log_type_enabled(qword_280AE5FD8, OS_LOG_TYPE_ERROR))
      {
        v40 = [v55 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v40;
        _os_log_error_impl(&dword_255F69000, v33, OS_LOG_TYPE_ERROR, "DDS asset query failed: %@", buf, 0xCu);
      }
    }

    else
    {
      v35 = v32;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v36 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
      if (v36)
      {
        v37 = *v45;
LABEL_85:
        v38 = 0;
        while (1)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v44 + 1) + 8 * v38);
          if ([v39 localURL])
          {
            if (![objc_msgSend(v39 "attributes")])
            {
              buf[0] = 0;
              (*(a4 + 16))(a4, [v39 localURL], objc_msgSend(v39, "attributes"), buf);
              if (buf[0])
              {
                break;
              }
            }
          }

          if (v36 == ++v38)
          {
            v36 = [v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v36)
            {
              goto LABEL_85;
            }

            goto LABEL_82;
          }
        }
      }
    }

    goto LABEL_82;
  }

  if (qword_27F81B478 == -1)
  {
LABEL_82:
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  v41 = *MEMORY[0x277D85DE8];

  dispatch_once(&qword_27F81B478, &unk_286807F00);
}

uint64_t sub_255F6B220()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!qword_280AE6000)
  {
    qword_280AE6000 = _sl_dlopen();
  }

  result = qword_280AE6000;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_255F6B2F0(void *a1)
{
  v2 = sub_255F6B3EC(a1);
  v3 = *(&xmmword_280AE6020 + 1);
  if (!*(&xmmword_280AE6020 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_280AE6020 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_280AE6020 + 1))
    {
      v7 = v2 % *(&xmmword_280AE6020 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_280AE6020 + 1) - 1) & v2;
  }

  v8 = *(xmmword_280AE6020 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v4 == v10)
      {
        if (sub_255F6CAC8(v9 + 2, a1))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v10 >= v3)
          {
            v10 %= v3;
          }
        }

        else
        {
          v10 &= v3 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

unint64_t sub_255F6B3EC(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

uint64_t sub_255F6B850(const __CFLocale *a1, int a2, uint64_t a3)
{
  Value = CFLocaleGetValue(a1, *MEMORY[0x277CBEED0]);
  v7 = CFLocaleGetValue(a1, *MEMORY[0x277CBEED8]);
  v8 = CFLocaleGetValue(a1, *MEMORY[0x277CBEE98]);
  v9 = CFLocaleGetValue(a1, *MEMORY[0x277CBEEC8]);
  if (CFStringCompare(v9, @"hi-Translit", 1uLL))
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_255F6BACC(@"hi-Translit", a2, a3);
  }

  if (CFStringCompare(v9, @"fil_PH", 1uLL))
  {
    v11 = CFStringCompare(v9, @"fil", 1uLL) != kCFCompareEqualTo;
  }

  else
  {
    v11 = 0;
  }

  if (((v10 | v11) & 1) == 0)
  {
    v10 = sub_255F6BACC(@"tl", a2, a3);
  }

  if (!v10 && v7 && v8 != 0)
  {
    v13 = CFStringCreateWithFormat(0, 0, @"%@_%@-%@", Value, v8, v7);
    v10 = sub_255F6BACC(v13, a2, a3);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (!v10)
  {
    if (v7)
    {
      v14 = CFStringCreateWithFormat(0, 0, @"%@-%@", Value, v7);
      v10 = sub_255F6BACC(v14, a2, a3);
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  if (!v10 && v8)
  {
    v15 = CFStringCreateWithFormat(0, 0, @"%@_%@", Value, v8);
    v16 = sub_255F6BACC(v15, a2, a3);
    if (v15)
    {
      CFRelease(v15);
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    return 1;
  }

  if (v10)
  {
    return 1;
  }

LABEL_25:

  return sub_255F6BACC(Value, a2, a3);
}

void sub_255F6BAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255F6C9EC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_255F6BACC(const __CFString *a1, int a2, uint64_t a3)
{
  v6 = off_279817BF0[a2];
  v44 = @"/System/Library/LinguisticData/";
  v7 = CFStringCreateWithFormat(0, 0, @"%@/%@_%@.bundle", @"/System/Library/LinguisticData/", v6, a1);
  v43 = v7;
  Mutable = CFStringCreateMutable(0, 1024);
  v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "/", 0x8000100u);
  CFStringAppend(Mutable, v9);
  if (v7)
  {
    CFStringAppend(Mutable, v7);
  }

  CFRelease(v9);
  v42 = Mutable;
  sub_255F6A1E0(Mutable, v40);
  memset(&v39, 0, sizeof(v39));
  if (v41 >= 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = v40[0];
  }

  if (v41 >= 0)
  {
    v11 = v41;
  }

  else
  {
    v11 = v40[1];
  }

  if (v11)
  {
    if (&v39 > v10 || &v39.__r_.__value_.__l.__data_ + 1 <= v10)
    {
      if (v11 < 0x17)
      {
        v12 = &v39;
      }

      else
      {
        v12 = &v39;
        std::string::__grow_by(&v39, 0x16uLL, v11 - 22, 0, 0, 0, 0);
        v39.__r_.__value_.__l.__size_ = 0;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v39.__r_.__value_.__r.__words[0];
        }
      }

      memmove(v12, v10, v11);
      v12->__r_.__value_.__s.__data_[v11] = 0;
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        v39.__r_.__value_.__l.__size_ = v11;
      }

      else
      {
        *(&v39.__r_.__value_.__s + 23) = v11 & 0x7F;
      }
    }

    else
    {
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_255F6C944();
      }

      if (v11 > 0x16)
      {
        operator new();
      }

      v33 = v11;
      memmove(__dst, v10, v11);
      *(__dst + v11) = 0;
      if ((v33 & 0x80u) == 0)
      {
        v13 = __dst;
      }

      else
      {
        v13 = __dst[0];
      }

      if ((v33 & 0x80u) == 0)
      {
        v14 = v33;
      }

      else
      {
        v14 = __dst[1];
      }

      std::string::append(&v39, v13, v14);
      if (v33 < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  std::__fs::filesystem::__status(&v39, 0);
  v15 = __dst[0];
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  LOBYTE(v16) = 0;
  if (v15 && v15 != 255)
  {
    v17 = CFURLCreateWithFileSystemPath(0, Mutable, kCFURLPOSIXPathStyle, 1u);
    v39.__r_.__value_.__r.__words[0] = v17;
    v18 = CFBundleCreate(0, v17);
    v38 = v18;
    v19 = CFLocaleCreate(0, a1);
    v37 = v19;
    if (!v19)
    {
      LOBYTE(v16) = 0;
      if (!v18)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (v18)
    {
      InfoDictionary = CFBundleGetInfoDictionary(v18);
      if (InfoDictionary)
      {
        Value = CFDictionaryGetValue(InfoDictionary, @"MobileAssetProperties");
        v22 = Value;
        if (Value)
        {
          v23 = CFGetTypeID(Value);
          if (v23 == CFDictionaryGetTypeID())
          {
            v16 = CFDictionaryGetValue(v22, @"AssetLocale");
            cf = CFDictionaryGetValue(v22, @"Contents");
            if (!v16)
            {
              goto LABEL_53;
            }

            v24 = CFGetTypeID(v16);
            v30 = v16;
            LOBYTE(v16) = 0;
            if (v24 != CFStringGetTypeID() || !cf)
            {
              goto LABEL_53;
            }

            v25 = CFGetTypeID(cf);
            if (v25 == CFArrayGetTypeID())
            {
              v36 = 0;
              v26 = CFLocaleCreate(0, v30);
              v35 = v26;
              if (v26 && CFEqual(v26, v19))
              {
                v27 = CFBundleCopyResourceURL(v18, @"AssetData", 0, 0);
                *v34 = v27;
                if (v27 || (v28 = CFURLCreateCopyAppendingPathComponent(0, v17, @"AssetData", 1u), sub_255F6C5A4(v34, v28), (v27 = *v34) != 0))
                {
                  sub_255F6C4A4(__dst, v27, v30, a2, v22, cf);
                  (*(a3 + 16))(a3, __dst, &v36);
                  sub_255F6C8A8(__dst);
                }

                sub_255F6C5A4(v34, 0);
              }

              LOBYTE(v16) = v36;
              sub_255F6A1A8(&v35, 0);
LABEL_53:
              CFRelease(v19);
              if (!v18)
              {
LABEL_57:
                if (v17)
                {
                  CFRelease(v17);
                }

                goto LABEL_59;
              }

LABEL_56:
              CFRelease(v18);
              goto LABEL_57;
            }
          }
        }
      }
    }

    LOBYTE(v16) = 0;
    goto LABEL_53;
  }

LABEL_59:
  if (v41 < 0)
  {
    operator delete(v40[0]);
    if (!Mutable)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (Mutable)
  {
LABEL_63:
    CFRelease(Mutable);
  }

LABEL_64:
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(@"/System/Library/LinguisticData/");
  return v16 & 1;
}

void sub_255F6BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, const void *a26, const void *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_255F6C5A4(&a23, 0);
  sub_255F6A1A8(&a24, 0);
  sub_255F6A1A8(&a26, 0);
  sub_255F6D5E0(&a27);
  sub_255F6C5A4(&a28, 0);
  if (*(v33 - 113) < 0)
  {
    operator delete(*(v33 - 136));
  }

  sub_255F6C9EC((v33 - 112), 0);
  sub_255F6C9EC((v33 - 104), 0);
  sub_255F6C9EC((v33 - 96), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_255F6C0B8(CFArrayRef *a1, const __CFLocale *a2, uint64_t a3)
{
  v5 = 0;
  v42 = *MEMORY[0x277D85DE8];
  v38 = 0;
  key = *MEMORY[0x277CBEED0];
  v35 = *MEMORY[0x277CBEE98];
  v34 = *MEMORY[0x277CBEED8];
  while (v5 < CFArrayGetCount(a1[4]))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[4], v5);
    v7 = CFGetTypeID(ValueAtIndex);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"ContentType");
      v9 = CFDictionaryGetValue(ValueAtIndex, @"Locale");
      v10 = CFDictionaryGetValue(ValueAtIndex, @"ContentPath");
      if (Value)
      {
        v11 = v10;
        v12 = CFGetTypeID(Value);
        if (v12 == CFStringGetTypeID())
        {
          if (v9)
          {
            v13 = CFGetTypeID(v9);
            if (v13 == CFStringGetTypeID())
            {
              if (v11)
              {
                v14 = CFGetTypeID(v11);
                if (v14 == CFStringGetTypeID())
                {
                  v15 = CFLocaleCreate(0, v9);
                  v16 = v15;
                  if (v15)
                  {
                    v17 = CFLocaleGetValue(v15, key);
                    v18 = CFLocaleGetValue(a2, key);
                    if (v17)
                    {
                      if (v18)
                      {
                        if (CFStringCompare(v17, v18, 0) == kCFCompareEqualTo)
                        {
                          v19 = CFLocaleGetValue(v16, v35);
                          if (!v19 || (v20 = CFLocaleGetValue(a2, v35)) != 0 && CFStringCompare(v20, v19, 0) == kCFCompareEqualTo)
                          {
                            v21 = CFLocaleGetValue(v16, v34);
                            v22 = CFLocaleGetValue(a2, v34);
                            if (!(v21 | v22))
                            {
                              goto LABEL_30;
                            }

                            v23 = v21 != 0;
                            if (v22)
                            {
                              v23 = 0;
                            }

                            v24 = v21 || v22 == 0;
                            if (v24 && !v23 && CFStringCompare(v22, v21, 0) == kCFCompareEqualTo)
                            {
LABEL_30:
                              v25 = CFURLCreateCopyAppendingPathComponent(0, a1[1], v11, 0);
                              v40 = v25;
                              if (!CFURLGetFileSystemRepresentation(v25, 1u, buffer, 1024) || stat(buffer, &v39))
                              {
                                if (v25)
                                {
                                  CFRelease(v25);
                                }

                                goto LABEL_14;
                              }

                              v26 = 0;
                              v27 = 0;
                              v28 = (v39.st_mode & 0xF000) == 0x4000;
                              while (1)
                              {
                                v29 = buffer[v26];
                                if (v29 != 47)
                                {
                                  break;
                                }

                                if (buffer[++v26] != 47)
                                {
                                  goto LABEL_39;
                                }

LABEL_40:
                                if (v26 == 1024)
                                {
LABEL_41:
                                  v30 = CFURLCreateFromFileSystemRepresentation(0, buffer, v27, v28);
                                  if (v25)
                                  {
                                    CFRelease(v25);
                                  }

                                  if (v30)
                                  {
                                    (*(a3 + 16))(a3, v30, *a1, v16, Value, &v38);
                                    CFRelease(v30);
                                  }

                                  goto LABEL_14;
                                }
                              }

                              if (!buffer[v26])
                              {
                                goto LABEL_41;
                              }

                              ++v26;
LABEL_39:
                              buffer[v27++] = v29;
                              goto LABEL_40;
                            }
                          }
                        }
                      }
                    }

LABEL_14:
                    CFRelease(v16);
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v5;
    if (v38)
    {
      v31 = 1;
      goto LABEL_46;
    }
  }

  v31 = v38;
LABEL_46:
  v32 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

void sub_255F6C440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_255F6C930(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255F6C4A4(uint64_t a1, const void *a2, CFLocaleIdentifier localeIdentifier, int a4, const void *a5, const void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  v10 = (a1 + 8);
  v11 = CFLocaleCreate(0, localeIdentifier);
  *(a1 + 24) = 0;
  *(a1 + 16) = v11;
  *(a1 + 32) = 0;
  if (*(a1 + 8) == a2)
  {
    v12 = 0;
  }

  else
  {
    CFRetain(a2);
    sub_255F6C5A4(v10, a2);
    v12 = *(a1 + 24);
  }

  if (v12 != a5)
  {
    CFRetain(a5);
    sub_255F6C5DC((a1 + 24), a5);
  }

  if (*(a1 + 32) != a6)
  {
    CFRetain(a6);
    sub_255F6C614((a1 + 32), a6);
  }

  return a1;
}

void sub_255F6C5A4(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_255F6C5DC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_255F6C614(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_255F6C64C(uint64_t *a1, CFArrayRef *a2, _BYTE *a3)
{
  result = sub_255F6C0B8(a2, *(*(a1[5] + 8) + 40), a1[4]);
  *a3 = result;
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

CFStringRef LDCreateSystemLexiconCompatibilityVersion(const __CFLocale *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = sub_255F6D614;
  v12 = sub_255F6D630;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = sub_255F6C80C;
  v7[3] = &unk_279817B58;
  v7[4] = &v8;
  sub_255F6B850(a1, 0, v7);
  if (*(v9 + 63) < 0)
  {
    sub_255F6CA24(v5, v9[5], v9[6]);
  }

  else
  {
    *v5 = *(v9 + 5);
    v6 = v9[7];
  }

  _Block_object_dispose(&v8, 8);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (v6 >= 0)
  {
    v1 = v5;
  }

  else
  {
    v1 = v5[0];
  }

  if (v6 >= 0)
  {
    v2 = HIBYTE(v6);
  }

  else
  {
    v2 = v5[1];
  }

  v3 = sub_255F6C8FC(v1, v2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }

  return v3;
}

void sub_255F6C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_255F6C80C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  Value = CFDictionaryGetValue(*(a2 + 24), @"LMLexiconCompatibilityVersion");
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID())
    {
      sub_255F6A1E0(v7, &v10);
      v9 = *(*(a1 + 32) + 8);
      if (*(v9 + 63) < 0)
      {
        operator delete(*(v9 + 40));
      }

      result = *&v10;
      *(v9 + 40) = v10;
      *(v9 + 56) = v11;
      *a3 = 1;
    }
  }

  return result;
}

const void **sub_255F6C8A8(const void **a1)
{
  sub_255F6C614(a1 + 4, 0);
  sub_255F6C5DC(a1 + 3, 0);
  sub_255F6A1A8(a1 + 2, 0);
  sub_255F6C5A4(a1 + 1, 0);
  return a1;
}

CFStringRef sub_255F6C8FC(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return &stru_286808010;
  }
}

void sub_255F6C95C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_255F6C9B8(exception, a1);
  __cxa_throw(exception, off_279817B40, MEMORY[0x277D825F0]);
}

std::logic_error *sub_255F6C9B8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_255F6C9EC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *sub_255F6CA24(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_255F6C944();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

BOOL sub_255F6CAC8(void *a1, void *a2)
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

_BYTE *sub_255F6CB3C(_BYTE *a1)
{
  v2 = sub_255F6A2FC(a1, "ars");
  sub_255F6A2FC(v2 + 24, "ar");
  return a1;
}

void sub_255F6CB7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255F6CB98(_BYTE *a1)
{
  v2 = sub_255F6A2FC(a1, "ars_SA");
  sub_255F6A2FC(v2 + 24, "ar");
  return a1;
}

void sub_255F6CBD8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255F6CBF4(_BYTE *a1, char *a2)
{
  v3 = sub_255F6A2FC(a1, a2);
  sub_255F6A2FC(v3 + 24, "fr_FR");
  return a1;
}

void sub_255F6CC2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255F6CC48(uint64_t result, uint64_t a2)
{
  xmmword_280AE6020 = 0u;
  *&qword_280AE6030 = 0u;
  dword_280AE6040 = 1065353216;
  if (a2)
  {
    sub_255F6B3EC(result);
    operator new();
  }

  return result;
}

void sub_255F6D168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255F6D2B4(va);
  sub_255F6D1EC();
  _Unwind_Resume(a1);
}

uint64_t sub_255F6D1A8(uint64_t a1)
{
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

void sub_255F6D1EC()
{
  v0 = qword_280AE6030;
  if (qword_280AE6030)
  {
    do
    {
      v1 = *v0;
      sub_255F6D25C((v0 + 2));
      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_280AE6020;
  *&xmmword_280AE6020 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void sub_255F6D25C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_255F6D2B4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_255F6D25C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_255F6D300()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_255F6D334()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_255F6D388(exception);
  __cxa_throw(exception, off_279817B48, MEMORY[0x277D825F8]);
}

std::logic_error *sub_255F6D388(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "unordered_map::at: key not found");
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

os_log_t sub_255F6D3C4()
{
  result = os_log_create("com.apple.LinguisticData", "Default");
  qword_280AE5FD8 = result;
  return result;
}

void sub_255F6D3F4(uint64_t a1, const void *a2, CFDictionaryRef theDict, _BYTE *a4)
{
  Value = CFDictionaryGetValue(theDict, @"AssetLocale");
  v9 = CFDictionaryGetValue(theDict, @"Contents");
  v10 = CFDictionaryGetValue(theDict, @"LinguisticAssetType");
  if (CFEqual(v10, @"Delta"))
  {
    v11 = 2;
    if (!Value)
    {
      return;
    }

    goto LABEL_9;
  }

  if (CFEqual(v10, @"Optional"))
  {
    v11 = 1;
    if (!Value)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!CFEqual(v10, @"Priority"))
  {
    __assert_rtn("getAssetBundleTypeFromCFString", "LDAssetBundle.cpp", 61, "false && Unsupported asset type for LinguisticData OTA asset bundle.");
  }

  v11 = 3;
  if (Value)
  {
LABEL_9:
    v12 = CFGetTypeID(Value);
    if (v12 == CFStringGetTypeID())
    {
      if (v9)
      {
        v13 = CFGetTypeID(v9);
        if (v13 == CFArrayGetTypeID())
        {
          v14 = *(a1 + 32);
          sub_255F6C4A4(v15, a2, Value, v11, theDict, v9);
          (*(v14 + 16))(v14, v15, *(*(a1 + 40) + 8) + 24);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
          if (v18)
          {
            CFRelease(v18);
          }

          v18 = 0;
          if (v17)
          {
            CFRelease(v17);
          }

          v17 = 0;
          if (v16)
          {
            CFRelease(v16);
          }

          if (*(*(*(a1 + 40) + 8) + 24) == 1)
          {
            *a4 = 1;
          }
        }
      }
    }
  }
}

void sub_255F6D5CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255F6C8A8(va);
  _Unwind_Resume(a1);
}

void sub_255F6D5E0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

__n128 sub_255F6D614(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_255F6D630(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_255F6D644(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_255F6D660(uint64_t a1, CFArrayRef *a2, _BYTE *a3)
{
  result = sub_255F6C0B8(a2, *(a1 + 48), *(a1 + 32));
  *a3 = result;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

const void **sub_255F6D6A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_255F6D6DC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

Class sub_255F6D72C(uint64_t a1)
{
  sub_255F6D930();
  result = objc_getClass("DDSAssetCenter");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AE6008 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return sub_255F6D79C(v3);
  }

  return result;
}

Class sub_255F6D79C(uint64_t a1)
{
  sub_255F6D930();
  result = objc_getClass("DDSLinguisticAttributeFilter");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AE5FF8 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return sub_255F6D80C(v3);
  }

  return result;
}

Class sub_255F6D80C(uint64_t a1)
{
  sub_255F6D930();
  result = objc_getClass("DDSAssetQuery");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    qword_280AE6010 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = abort_report_np();
    return sub_255F6D87C(v3);
  }

  return result;
}

uint64_t sub_255F6D87C(uint64_t a1, void *a2, void *a3)
{
  v4 = [&unk_2868088B8 objectForKey:{objc_msgSend(objc_msgSend(a2, "attributes"), "objectForKey:", @"LinguisticAssetType"}];
  v5 = [&unk_2868088B8 objectForKey:{objc_msgSend(objc_msgSend(a3, "attributes"), "objectForKey:", @"LinguisticAssetType"}];
  if (!v4 || !v5)
  {
    __assert_rtn("enumerateOTAAssets_block_invoke", "LDDDSAssetManager.mm", 132, "order1 != nil & order2 != nil");
  }

  return MEMORY[0x2821F9670](v4, sel_compare_);
}

void sub_255F6D930()
{
  if (!sub_255F6B220())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

void sub_255F6D980()
{
  if (qword_280AE5FE0 != -1)
  {
    dispatch_once(&qword_280AE5FE0, &unk_286807F20);
  }

  v0 = qword_280AE5FD8;
  if (os_log_type_enabled(qword_280AE5FD8, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_255F69000, v0, OS_LOG_TYPE_ERROR, "Skipping mobile asset discovery: could not soft-link DataDeliveryServices", v1, 2u);
  }
}

uint64_t sub_255F6DA10(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_280AE6000 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef LDCreateMobileAssetType()
{
  v0 = *MEMORY[0x277CBECE8];
  if (qword_280AE6018 != -1)
  {
    dispatch_once(&qword_280AE6018, &unk_286807EE0);
  }

  v1 = qword_280AE6048;

  return CFStringCreateCopy(v0, v1);
}

uint64_t sub_255F6DB10()
{
  v0 = @"/System/Library/LinguisticData/";
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/Info.plist", v0];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v1];

  return [v2 objectForKey:@"MobileAssetProperties"];
}

uint64_t sub_255F6DB7C()
{
  result = [objc_msgSend(sub_255F6DB10() objectForKey:{@"MobileAssetType", "copy"}];
  qword_280AE6048 = result;
  return result;
}

uint64_t sub_255F6DBAC()
{
  result = [sub_255F6DB10() objectForKey:@"AssetLocaleMap"];
  if (result)
  {
    result = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:result copyItems:1];
    qword_280AE5FF0 = result;
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}