void sub_1AE662C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

void sub_1AE662D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1AE6315E0(&a24);
  sub_1AE6315E0(&a29);
  sub_1AE631694(&a35);
  sub_1AE622258(&a27);
  JUMPOUT(0x1AE662EA8);
}

void sub_1AE662E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1AE63109C(va);
  JUMPOUT(0x1AE662E38);
}

void sub_1AE662E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, const void *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  sub_1AE66D210(&a35);
  if (a74 < 0)
  {
    operator delete(__p);
    if ((a72 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a70 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a72 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a71);
  if ((a70 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a64 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a65);
  if ((a64 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a59);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a53);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a47);
  if ((a46 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  operator delete(a41);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_10:
    sub_1AE66A268(&a34);
    if (a16 < 0)
    {
      operator delete(a11);
    }

    sub_1AE65B3A0(&a17);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a27);
  goto LABEL_10;
}

uint64_t sub_1AE662F44(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 == *(a1 + 192))
  {
    operator new();
  }

  return *v1;
}

void sub_1AE663094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE65B1F4(va);
  *(v2 + 192) = v3;
  _Unwind_Resume(a1);
}

void sub_1AE6630C8(uint64_t a1, CFDictionaryRef ***a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  sub_1AE66A074(v63, *a1);
  *(a1 + 145) = 0;
  sub_1AE68DD78(buf, a2, 50);
  v6 = (a1 + 56);
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 56);
    if (v8 != v7)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v7);
      v9 = *v6;
    }

    *(a1 + 64) = v7;
    operator delete(v9);
    *v6 = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v12 = *buf;
  *(a1 + 56) = *buf;
  v13 = *&buf[8];
  *(a1 + 64) = *&buf[8];
  if (v12 == v13 && *a2 != a2[1])
  {
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v14 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
    {
      v58 = v63;
      if (v64 < 0)
      {
        v58 = v63[0];
      }

      *buf = 136315138;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_1AE5C8000, v14, OS_LOG_TYPE_ERROR, "Failed to load default blocklist for locale: %s", buf, 0xCu);
    }
  }

  if (*a3 != *(a3 + 8))
  {
    sub_1AE68DD78(buf, a3, 52);
    v15 = (a1 + 80);
    v16 = *(a1 + 80);
    if (v16)
    {
      v17 = *(a1 + 88);
      v18 = *(a1 + 80);
      if (v17 != v16)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            (*(*v19 + 8))(v19);
          }
        }

        while (v17 != v16);
        v18 = *v15;
      }

      *(a1 + 88) = v16;
      operator delete(v18);
      *v15 = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }

    v21 = *buf;
    *(a1 + 80) = *buf;
    v22 = *&buf[8];
    *(a1 + 88) = *&buf[8];
    if (v21 == v22)
    {
      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      v23 = qword_1ED9AC948;
      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
      {
        v59 = v63;
        if (v64 < 0)
        {
          v59 = v63[0];
        }

        *buf = 136315138;
        *&buf[4] = v59;
        _os_log_error_impl(&dword_1AE5C8000, v23, OS_LOG_TYPE_ERROR, "Failed to load quickpath blocklist for locale: %s", buf, 0xCu);
      }
    }
  }

  v61 = a1;
  *(a1 + 144) = 0;
  memset(buf, 0, sizeof(buf));
  v24 = *a2;
  v25 = a2[1];
  if (*a2 != v25)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *v24;
      LODWORD(valuePtr[0]) = 0;
      Value = CFDictionaryGetValue(*v28, @"Type");
      CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
      if (LODWORD(valuePtr[0]) == 50)
      {
        v30 = v27;
        v31 = v27 >> 4;
        if ((v31 + 1) >> 60)
        {
          sub_1AE5CBB70();
        }

        if (v31 != -1)
        {
          if (!((v31 + 1) >> 60))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        MEMORY[0xFFFFFFFFFFFFFFF0] = *v24;
        if (MEMORY[0xFFFFFFFFFFFFFFF8])
        {
          atomic_fetch_add_explicit((MEMORY[0xFFFFFFFFFFFFFFF8] + 8), 1uLL, memory_order_relaxed);
        }

        v27 = 16 * v31 + 16;
        memcpy(0, 0, v30);
        *buf = 0;
        v26 = 0;
        *&buf[8] = v27;
      }

      v24 += 2;
    }

    while (v24 != v25);
    if (v27)
    {
      allocator = *MEMORY[0x1E695E480];
      v32 = "d && An Info.plist file was unable to be read from the bundle";
      v33 = "_getInfoDictionary";
      while (1)
      {
        v34 = CFDictionaryGetValue(**v26, @"URL");
        v65 = CFRetain(v34);
        cf = CFBundleCreate(allocator, v65);
        InfoDictionary = CFBundleGetInfoDictionary(cf);
        if (!InfoDictionary)
        {
          break;
        }

        v36 = CFDictionaryGetValue(InfoDictionary, @"Contents");
        if (!v36)
        {
          v60 = 229;
          v33 = "_getContents";
          v32 = "(contents != 0) && There should files contained within the blocklist bundle";
LABEL_125:
          __assert_rtn(v33, "BlocklistBundle.cpp", v60, v32);
        }

        v37 = 0;
        do
        {
          if (v37 >= CFArrayGetCount(v36))
          {
            LOBYTE(v85) = 0;
            LOBYTE(v86) = 0;
            goto LABEL_50;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v36, v37);
          LODWORD(valuePtr[0]) = 0;
          v39 = CFDictionaryGetValue(ValueAtIndex, @"Type");
          CFNumberGetValue(v39, kCFNumberIntType, valuePtr);
          ++v37;
        }

        while (LODWORD(valuePtr[0]) != 53);
        v40 = sub_1AE6F0B98(&v65, ValueAtIndex);
        valuePtr[0] = v40;
        *(&v85 + 1) = 0;
        *&v85 = CFRetain(v40);
        LOBYTE(v86) = 1;
        if (!v40 || (CFRelease(v40), (v86 & 1) != 0))
        {
          operator new();
        }

LABEL_50:
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
        if (v65)
        {
          CFRelease(v65);
        }

        v26 += 2;
        if (v26 == v27)
        {
          v26 = *buf;
          goto LABEL_55;
        }
      }

      v60 = 218;
      goto LABEL_125;
    }

LABEL_55:
    if (v26)
    {
      v41 = *&buf[8];
      v42 = v26;
      if (*&buf[8] != v26)
      {
        do
        {
          v43 = *(v41 - 1);
          if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
          }

          v41 -= 2;
        }

        while (v41 != v26);
        v42 = *buf;
      }

      *&buf[8] = v26;
      operator delete(v42);
    }
  }

  buf[23] = 7;
  strcpy(buf, "hi-Latn");
  v74 = 7;
  strcpy(v73, "gu-Latn");
  v76 = 7;
  strcpy(v75, "mr-Latn");
  v78 = 7;
  strcpy(v77, "te-Latn");
  v80 = 7;
  strcpy(v79, "ta-Latn");
  v82 = 7;
  strcpy(v81, "pa-Latn");
  v84 = 7;
  strcpy(v83, "bn-Latn");
  v85 = 0u;
  v86 = 0u;
  v87 = 1065353216;
  sub_1AE64AA10(&v85, buf);
  sub_1AE64AA10(&v85, v73);
  sub_1AE64AA10(&v85, v75);
  sub_1AE64AA10(&v85, v77);
  sub_1AE64AA10(&v85, v79);
  sub_1AE64AA10(&v85, v81);
  sub_1AE64AA10(&v85, v83);
  if (v84 < 0)
  {
    operator delete(v83[0]);
    if ((v82 & 0x80000000) == 0)
    {
LABEL_66:
      if ((v80 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_100;
    }
  }

  else if ((v82 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v81[0]);
  if ((v80 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(v79[0]);
  if ((v78 & 0x80000000) == 0)
  {
LABEL_68:
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(v77[0]);
  if ((v76 & 0x80000000) == 0)
  {
LABEL_69:
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_103:
    operator delete(v73[0]);
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_104;
  }

LABEL_102:
  operator delete(v75[0]);
  if (v74 < 0)
  {
    goto LABEL_103;
  }

LABEL_70:
  if ((buf[23] & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_104:
  operator delete(*buf);
LABEL_71:
  v44 = sub_1AE70D964(&v85, v63);
  v45 = v86;
  if (v86)
  {
    do
    {
      v54 = *v45;
      if (*(v45 + 39) < 0)
      {
        v55 = v45;
        operator delete(v45[2]);
        v45 = v55;
      }

      operator delete(v45);
      v45 = v54;
    }

    while (v54);
  }

  v46 = v85;
  *&v85 = 0;
  if (v46)
  {
    operator delete(v46);
  }

  if (v44)
  {
    *(v61 + 145) = 1;
    sub_1AE66A174(__p, *MEMORY[0x1E69ABFE8]);
    v47 = *v61;
    if (*v61)
    {
      CFRetain(*v61);
    }

    err = v47;
    v48 = *__p;
    if (*__p)
    {
      CFRetain(*__p);
    }

    *&v85 = v48;
    *(&v85 + 1) = v47;
    err = 0;
    *buf = &v85;
    *&buf[8] = 1;
    v49 = sub_1AE66A370(buf);
    v65 = v49;
    if (*(&v85 + 1))
    {
      CFRelease(*(&v85 + 1));
    }

    if (v85)
    {
      CFRelease(v85);
    }

    if (*__p)
    {
      CFRelease(*__p);
    }

    err = 0;
    v50 = LXTransliterationCreate();
    v51 = *(v61 + 136);
    if (v51)
    {
      CFRelease(v51);
    }

    *(v61 + 136) = v50;
    if (!err)
    {
      goto LABEL_113;
    }

    v52 = CFErrorCopyDescription(err);
    valuePtr[1] = v52;
    CFRelease(err);
    sub_1AE5CC874(v52, buf);
    sub_1AE66A074(&v85, *v61);
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v53 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
    {
      v56 = &v85;
      if (SBYTE7(v86) < 0)
      {
        v56 = v85;
      }

      v57 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v57 = *buf;
      }

      *__p = 136315394;
      *&__p[4] = v56;
      v70 = 2080;
      v71 = v57;
      _os_log_error_impl(&dword_1AE5C8000, v53, OS_LOG_TYPE_ERROR, "Failed to load transliteration lexicon for locale: %s, Error: %s", __p, 0x16u);
      if ((SBYTE7(v86) & 0x80000000) == 0)
      {
LABEL_92:
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_111;
      }
    }

    else if ((SBYTE7(v86) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    operator delete(v85);
    if ((buf[23] & 0x80000000) == 0)
    {
LABEL_93:
      if (!v52)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

LABEL_111:
    operator delete(*buf);
    if (!v52)
    {
LABEL_113:
      CFRelease(v49);
      goto LABEL_114;
    }

LABEL_112:
    CFRelease(v52);
    goto LABEL_113;
  }

LABEL_114:
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }
}

void sub_1AE663D0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE664060(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE663F58);
  }

  JUMPOUT(0x1AE663F68);
}

void sub_1AE66406C(void *a1)
{
  v1 = a1[23];
  for (i = a1[24]; v1 != i; v1 += 2)
  {
    v3 = *v1;
    v5 = *(*v1 + 8);
    v4 = *(*v1 + 16);
    v6 = v4 - v5;
    if (v4 != v5)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v14 = v3[4];
    if (v14)
    {
      v3[5] = v14;
      operator delete(v14);
    }

    v3[4] = 0;
    v3[5] = v6;
    v3[6] = v6;
    v7 = a1[29];
    if ((*(v7 + 361) & 1) == 0 && (*(v7 + 360) & 1) == 0)
    {
      v8 = *v1;
      v9 = *(*v1 + 8);
      if (*(*v1 + 16) != v9)
      {
        v10 = 0;
        do
        {
          v11 = *(v9 + 8 * v10);
          if (v11 && __dynamic_cast(v11, &unk_1F2431580, &unk_1F242B200, 0))
          {
            v20[0] = 0;
            v20[1] = v20;
            v20[2] = 0x2000000000;
            v20[3] = 0;
            v16 = 0;
            v17 = &v16;
            v18 = 0x2000000000;
            v19 = 0;
            RootCursor = LXLexiconCreateRootCursor();
            LXCursorEnumerateEntriesRecursivelyWithPolicy();
            v13 = v17[3];
            if (RootCursor)
            {
              CFRelease(RootCursor);
            }

            _Block_object_dispose(&v16, 8);
            _Block_object_dispose(v20, 8);
            v8 = *v1;
            *(*(*v1 + 32) + 8 * v10) = v13;
          }

          ++v10;
          v9 = *(v8 + 8);
        }

        while (v10 < (*(v8 + 16) - v9) >> 3);
      }
    }
  }
}

void sub_1AE6642C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AE6642F8(void *a1)
{
  if (!a1[68])
  {
    operator new();
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v1 = a1[23];
  v2 = a1[24];
  if (v1 != v2)
  {
    v3 = 0;
    do
    {
      sub_1AE66A074(__p, **v1);
      if (v3 < v63)
      {
        v4 = *__p;
        *(v3 + 16) = v67;
        *v3 = v4;
        v3 += 24;
      }

      else
      {
        v5 = v61;
        v6 = v3 - v61;
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v61) >> 3);
        v8 = v7 + 1;
        if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        if (0x5555555555555556 * ((v63 - v61) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v63 - v61) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v63 - v61) >> 3) >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        if (v9)
        {
          if (v9 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v10 = 24 * v7;
        *v10 = *__p;
        *(v10 + 16) = v67;
        __p[1] = 0;
        v67 = 0;
        __p[0] = 0;
        v3 = 24 * v7 + 24;
        v11 = (v10 - v6);
        memcpy((v10 - v6), v5, v6);
        v61 = v11;
        v63 = 0;
        if (v5)
        {
          operator delete(v5);
          v62 = v3;
          if (SHIBYTE(v67) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_7;
        }
      }

      v62 = v3;
LABEL_7:
      v1 += 2;
    }

    while (v1 != v2);
  }

  v12 = a1[68];
  sub_1AE65569C(&v59, &v61);
  if ((v12 + 40) != &v59)
  {
    sub_1AE67C3E4((v12 + 40), v59, v60, 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3));
  }

  v13 = *(v12 + 8);
  if (v13)
  {
    bzero(*v12, 8 * v13);
    v14 = *(v12 + 16);
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    if (v14)
    {
      do
      {
        v16 = *v14;
        sub_1AE659D30((v14 + 5));
        if (*(v14 + 39) < 0)
        {
          operator delete(v14[2]);
        }

        operator delete(v14);
        v14 = v16;
      }

      while (v16);
    }
  }

  v15 = *(v12 + 40);
  v58 = *(v12 + 48);
  if (v15 != v58)
  {
LABEL_32:
    if (*(v15 + 23) < 0)
    {
      sub_1AE5DBF1C(__dst, *v15, *(v15 + 1));
    }

    else
    {
      v17 = *v15;
      v70 = *(v15 + 2);
      *__dst = v17;
    }

    if (SHIBYTE(v70) < 0)
    {
      sub_1AE5DBF1C(v64, __dst[0], __dst[1]);
    }

    else
    {
      *v64 = *__dst;
      v65 = v70;
    }

    sub_1AE70F7A8();
    if (v70 >= 0)
    {
      v18 = __dst;
    }

    else
    {
      v18 = __dst[0];
    }

    if (v70 >= 0)
    {
      v19 = HIBYTE(v70);
    }

    else
    {
      v19 = __dst[1];
    }

    v20 = sub_1AE5DA928(&v71, v18, v19);
    v21 = v20;
    v22 = *(v12 + 8);
    if (!*&v22)
    {
      goto LABEL_83;
    }

    v23 = vcnt_s8(v22);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = v20;
      if (v20 >= *&v22)
      {
        v24 = v20 % *&v22;
      }
    }

    else
    {
      v24 = (*&v22 - 1) & v20;
    }

    v25 = *(*v12 + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_83:
      operator new();
    }

    if (v70 >= 0)
    {
      v27 = HIBYTE(v70);
    }

    else
    {
      v27 = __dst[1];
    }

    if (v70 >= 0)
    {
      v28 = __dst;
    }

    else
    {
      v28 = __dst[0];
    }

    if (v23.u32[0] < 2uLL)
    {
      while (1)
      {
        v33 = v26[1];
        if (v33 == v21)
        {
          v34 = *(v26 + 39);
          v35 = v34;
          if ((v34 & 0x80u) != 0)
          {
            v34 = v26[3];
          }

          if (v34 == v27)
          {
            v36 = v35 >= 0 ? v26 + 2 : v26[2];
            if (!memcmp(v36, v28, v27))
            {
              goto LABEL_84;
            }
          }
        }

        else if ((v33 & (*&v22 - 1)) != v24)
        {
          goto LABEL_83;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_83;
        }
      }
    }

    while (1)
    {
      v29 = v26[1];
      if (v29 == v21)
      {
        v30 = *(v26 + 39);
        v31 = v30;
        if ((v30 & 0x80u) != 0)
        {
          v30 = v26[3];
        }

        if (v30 == v27)
        {
          v32 = v31 >= 0 ? v26 + 2 : v26[2];
          if (!memcmp(v32, v28, v27))
          {
LABEL_84:
            if (v26 + 5 != __p)
            {
              *(v26 + 18) = v68;
              v37 = v67;
              v38 = v26[6];
              if (v38 && (bzero(v26[5], 8 * v38), v39 = v26[7], v26[7] = 0, v26[8] = 0, v39))
              {
                while (v37)
                {
                  if (v39 != v37)
                  {
                    v40 = v37[39];
                    if (v39[39] < 0)
                    {
                      if (v40 >= 0)
                      {
                        v42 = v37 + 16;
                      }

                      else
                      {
                        v42 = *(v37 + 2);
                      }

                      if (v40 >= 0)
                      {
                        v43 = v37[39];
                      }

                      else
                      {
                        v43 = *(v37 + 3);
                      }

                      sub_1AE621B84((v39 + 16), v42, v43);
                    }

                    else if (v37[39] < 0)
                    {
                      sub_1AE621AB4(v39 + 16, *(v37 + 2), *(v37 + 3));
                    }

                    else
                    {
                      v41 = *(v37 + 1);
                      *(v39 + 4) = *(v37 + 4);
                      *(v39 + 1) = v41;
                    }

                    sub_1AE67C3E4(v39 + 5, *(v37 + 5), *(v37 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v37 + 6) - *(v37 + 5)) >> 3));
                  }

                  v44 = *v39;
                  sub_1AE712E50((v26 + 5), v39);
                  v37 = *v37;
                  v39 = v44;
                  if (!v44)
                  {
                    goto LABEL_102;
                  }
                }

                do
                {
                  v45 = *v39;
                  v46 = *(v39 + 5);
                  if (v46)
                  {
                    v47 = *(v39 + 6);
                    v48 = *(v39 + 5);
                    if (v47 != v46)
                    {
                      do
                      {
                        v49 = *(v47 - 1);
                        v47 -= 3;
                        if (v49 < 0)
                        {
                          operator delete(*v47);
                        }
                      }

                      while (v47 != v46);
                      v48 = *(v39 + 5);
                    }

                    *(v39 + 6) = v46;
                    operator delete(v48);
                  }

                  if (v39[39] < 0)
                  {
                    operator delete(*(v39 + 2));
                  }

                  operator delete(v39);
                  v39 = v45;
                }

                while (v45);
              }

              else
              {
LABEL_102:
                if (v37)
                {
                  operator new();
                }
              }
            }

            sub_1AE659D30(__p);
            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64[0]);
              if (SHIBYTE(v70) < 0)
              {
                goto LABEL_106;
              }
            }

            else if (SHIBYTE(v70) < 0)
            {
LABEL_106:
              operator delete(__dst[0]);
            }

            v15 = (v15 + 24);
            if (v15 == v58)
            {
              break;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v29 >= *&v22)
        {
          v29 %= *&v22;
        }

        if (v29 != v24)
        {
          goto LABEL_83;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_83;
      }
    }
  }

  v50 = v59;
  if (v59)
  {
    v51 = v60;
    v52 = v59;
    if (v60 != v59)
    {
      do
      {
        v53 = *(v51 - 1);
        v51 -= 3;
        if (v53 < 0)
        {
          operator delete(*v51);
        }
      }

      while (v51 != v50);
      v52 = v59;
    }

    v60 = v50;
    operator delete(v52);
  }

  v54 = v61;
  if (v61)
  {
    v55 = v62;
    while (v55 != v54)
    {
      v56 = *(v55 - 1);
      v55 -= 3;
      if (v56 < 0)
      {
        operator delete(*v55);
      }
    }

    operator delete(v54);
  }
}

void sub_1AE664C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_1AE645234(&a11);
  sub_1AE645234(&a14);
  _Unwind_Resume(a1);
}

void sub_1AE664CBC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1AE7134C0(v1);
  __cxa_rethrow();
}

void sub_1AE664CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  __cxa_end_catch();
  sub_1AE659D30(&a23);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_1AE645234(&a11);
  sub_1AE645234(&a14);
  _Unwind_Resume(a1);
}

void sub_1AE664CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_1AE71355C((v33 - 120));
  sub_1AE659D30(&a23);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_1AE645234(&a11);
  sub_1AE645234(&a14);
  _Unwind_Resume(a1);
}

void sub_1AE665E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE696D18();
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6B751C(&a45);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_1AE6B751C(&a23);
  sub_1AE6B756C(&buf);
  v62 = *a10;
  *a10 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  MEMORY[0x1B2706400](a10, 0x1020C405F07FB98);
  MEMORY[0x1B2706400](a11, 0x1020C40AF0ADC4FLL);
  v63 = __cxa_begin_catch(exception_object);
  if (a2 == 2)
  {
    v64 = v63;
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v65 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
    {
      v66 = *(a9 + 32);
      if (*(v66 + 23) < 0)
      {
        v66 = *v66;
      }

      v67 = (*(*v64 + 16))(v64);
      LODWORD(buf) = 136315394;
      *(&buf + 4) = v66;
      WORD6(buf) = 2080;
      *(&buf + 14) = v67;
      v68 = "failed to create the FST Grammar from file=%s [%s]";
      v69 = v65;
      v70 = 22;
LABEL_21:
      _os_log_impl(&dword_1AE5C8000, v69, OS_LOG_TYPE_DEFAULT, v68, &buf, v70);
    }
  }

  else
  {
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v71 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *(a9 + 32);
      if (*(v72 + 23) < 0)
      {
        v72 = *v72;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v72;
      v68 = "failed to create the FST grammar from file=%s [unknown exception]";
      v69 = v71;
      v70 = 12;
      goto LABEL_21;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1AE665BC8);
}

unint64_t sub_1AE6662EC(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

void sub_1AE66652C(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1[6])
  {
    __assert_rtn("loadDynamicData", "LMCompositeLanguageModel.cpp", 768, "!m_dynamicData");
  }

  v2 = a1[29];
  if (!*(v2 + 184))
  {
    sub_1AE68D680(&v7, a1[52]);
  }

  v3 = a1[33];
  if (v3)
  {
    std::mutex::lock(v2);
    v5 = *(v2 + 64);
    v4 = *(v2 + 72);
    if (v5 != v4)
    {
      do
      {
        if (*v5 == v3 + 120)
        {
          goto LABEL_9;
        }

        v5 += 8;
      }

      while (v5 != v4);
      v5 = *(v2 + 72);
    }

LABEL_9:
    if (v4 != v5)
    {
      v6 = v4 - (v5 + 8);
      if (v4 != v5 + 8)
      {
        memmove(v5, v5 + 8, v4 - (v5 + 8));
      }

      *(v2 + 72) = &v5[v6];
    }

    std::mutex::unlock(v2);
  }

  sub_1AE68D87C(&valuePtr, a1[52]);
}

void sub_1AE668A10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_objecta, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int16 a27, uint64_t a28, uint64_t a29, const void *a30, const void *a31, const void *a32, const void *a33)
{
  std::__shared_weak_count::~__shared_weak_count(v33);
  operator delete(v35);
  sub_1AE7321C0(&a30);
  sub_1AE6883BC(&a31);
  sub_1AE7321F8(&a32);
  sub_1AE6883BC(&a33);
  sub_1AE75FF64(&a17);
  if (a2 == 1)
  {
    v36 = __cxa_begin_catch(a1);
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v37 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
    {
      v38 = (*(*v36 + 16))(v36);
      LODWORD(STACK[0x220]) = 136315138;
      STACK[0x224] = v38;
      _os_log_impl(&dword_1AE5C8000, v37, OS_LOG_TYPE_DEFAULT, "failed to create a static lexicon for migration: %s", &STACK[0x220], 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1AE6676A8);
  }

  sub_1AE66926C(&a27);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE669218(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE5D4684(v2);
    MEMORY[0x1B2706400](v4, 0x1072C40AE5FB29CLL);
    return v3;
  }

  return v1;
}

uint64_t sub_1AE66926C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = sub_1AE5D4684(v2);
    MEMORY[0x1B2706400](v3, 0x1072C40AE5FB29CLL);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 8) = 0;
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  return a1;
}

__n128 sub_1AE6692DC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1AE6692EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1AE669368(void *a1)
{
  if ((atomic_load_explicit(&qword_1ED9AC9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC9F8))
  {
    xmmword_1ED9AC988 = 0u;
    *&qword_1ED9AC998 = 0u;
    dword_1ED9AC9A8 = 1065353216;
    __cxa_guard_release(&qword_1ED9AC9F8);
  }

  v2 = a1[6];
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = a1[6];
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = v2[1];
  }

  v6 = sub_1AE5DA928(&v28, v4, v5);
  v7 = *(&xmmword_1ED9AC988 + 1);
  if (*(&xmmword_1ED9AC988 + 1))
  {
    v8 = v6;
    v9 = vcnt_s8(*(&xmmword_1ED9AC988 + 8));
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6;
      if (v6 >= *(&xmmword_1ED9AC988 + 1))
      {
        v10 = v6 % *(&xmmword_1ED9AC988 + 1);
      }
    }

    else
    {
      v10 = (*(&xmmword_1ED9AC988 + 1) - 1) & v6;
    }

    v11 = *(xmmword_1ED9AC988 + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = *(v2 + 23);
        if (v13 >= 0)
        {
          v14 = *(v2 + 23);
        }

        else
        {
          v14 = v2[1];
        }

        if (v13 < 0)
        {
          v2 = *v2;
        }

        if (v9.u32[0] < 2uLL)
        {
          v15 = *(&xmmword_1ED9AC988 + 1) - 1;
          while (1)
          {
            v20 = v12[1];
            if (v20 == v8)
            {
              v21 = *(v12 + 39);
              v22 = v21;
              if (v21 < 0)
              {
                v21 = v12[3];
              }

              if (v21 == v14)
              {
                v23 = v22 >= 0 ? (v12 + 2) : v12[2];
                if (!memcmp(v23, v2, v14))
                {
                  goto LABEL_45;
                }
              }
            }

            else if ((v20 & v15) != v10)
            {
              goto LABEL_52;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_52;
            }
          }
        }

        do
        {
          v16 = v12[1];
          if (v16 == v8)
          {
            v17 = *(v12 + 39);
            v18 = v17;
            if (v17 < 0)
            {
              v17 = v12[3];
            }

            if (v17 == v14)
            {
              v19 = v18 >= 0 ? (v12 + 2) : v12[2];
              if (!memcmp(v19, v2, v14))
              {
LABEL_45:
                v24 = v12[6];
                if (v24 && (v24 = std::__shared_weak_count::lock(v24)) != 0)
                {
                  v25 = v12[5];
                }

                else
                {
                  v25 = 0;
                }

                v26 = *(a1[5] + 8);
                v27 = *(v26 + 48);
                *(v26 + 40) = v25;
                *(v26 + 48) = v24;
                if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v27->__on_zero_shared)(v27);
                  std::__shared_weak_count::__release_weak(v27);
                }

                break;
              }
            }
          }

          else
          {
            if (v16 >= v7)
            {
              v16 %= v7;
            }

            if (v16 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_52:
  if (!*(*(a1[5] + 8) + 40))
  {
    v28 = (*(a1[4] + 16))();
    operator new();
  }
}

void sub_1AE669BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10)
{
  sub_1AE669CF4(&a10);
  if (a9)
  {
    std::__shared_weak_count::__release_weak(a9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE669C48(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 8));
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      MEMORY[0x1B2706400](v3, 0x1020C405F07FB98);
    }

    MEMORY[0x1B2706400](v1, 0x1020C40AF0ADC4FLL);
    return v2;
  }

  return result;
}

uint64_t *sub_1AE669CF4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AE669D58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM10FSTGrammarEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM10FSTGrammarEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM10FSTGrammarEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM10FSTGrammarEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE669DB4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::mutex::~mutex((v1 + 8));
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = *v2;
      *v2 = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      MEMORY[0x1B2706400](v2, 0x1020C405F07FB98);
    }

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE669E64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE669EC8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242ACF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE669F64(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242ACA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE66A000(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242AC50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE66A074(_BYTE *a1, uint64_t a2)
{
  v3 = MEMORY[0x1B2705500](a2);
  sub_1AE66A174(&cf, v3);
  v4 = cf;
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    goto LABEL_8;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not convert");
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE5CAD24(a1, v4);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1AE66A148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1AE63109C(&a10);
  _Unwind_Resume(a1);
}

void *sub_1AE66A174(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1AE66A208(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE621E54(v1);
  _Unwind_Resume(a1);
}

const void **sub_1AE66A234(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE66A268(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1AE66A2A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE66A2D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1AE66A2FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F24315D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

CFDictionaryRef sub_1AE66A370(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v2 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v2;
}

void sub_1AE66A638(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE66A690(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

const void **sub_1AE66A6D4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE66A70C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 8) = 0;
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE66A758(uint64_t a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (a5 <= (v8 - v9) >> 4)
    {
      v14 = v9 - a2;
      v15 = (v9 - a2) >> 4;
      if (v15 >= a5)
      {
        v21 = &v9[-16 * a5];
        if (v21 >= v9)
        {
          v23 = *(a1 + 8);
        }

        else
        {
          v22 = &v9[-16 * a5];
          v23 = *(a1 + 8);
          do
          {
            *v23++ = *v22;
            *v22 = 0;
            *(v22 + 1) = 0;
            v22 += 16;
          }

          while (v22 < v9);
        }

        *(a1 + 8) = v23;
        if (v9 != &a2[16 * a5])
        {
          v36 = (v9 - 8);
          v37 = (&a2[16 * a5] - v9);
          v38 = v21 - 16;
          do
          {
            v39 = *v38;
            *v38 = 0;
            *(v38 + 1) = 0;
            v40 = *v36;
            *(v36 - 1) = v39;
            if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v40->__on_zero_shared)(v40);
              std::__shared_weak_count::__release_weak(v40);
            }

            v36 -= 2;
            v38 -= 16;
            v37 += 16;
          }

          while (v37);
        }

        v41 = &v6[2 * a5];
        do
        {
          v43 = *v6;
          v42 = v6[1];
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          v44 = *(v7 + 1);
          *v7 = v43;
          *(v7 + 1) = v42;
          if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
          }

          v6 += 2;
          v7 += 16;
        }

        while (v6 != v41);
      }

      else
      {
        v16 = (a3 + v14);
        if ((a3 + v14) == a4)
        {
          v17 = *(a1 + 8);
        }

        else
        {
          v34 = (a3 + v14);
          v17 = *(a1 + 8);
          do
          {
            v35 = v34[1];
            *v17 = *v34;
            *(v17 + 1) = v35;
            if (v35)
            {
              atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
            }

            v34 += 2;
            v17 += 16;
          }

          while (v34 != a4);
        }

        *(a1 + 8) = v17;
        if (v15 >= 1)
        {
          v18 = &v17[-16 * a5];
          if (v18 >= v9)
          {
            v20 = v17;
          }

          else
          {
            v19 = &v17[-16 * a5];
            v20 = v17;
            do
            {
              *v20 = *v19;
              v20 += 16;
              *v19 = 0;
              *(v19 + 1) = 0;
              v19 += 16;
            }

            while (v19 < v9);
          }

          *(a1 + 8) = v20;
          if (v17 != &a2[16 * a5])
          {
            v45 = (v17 - 8);
            v46 = &a2[16 * a5] - v17;
            v47 = v18 - 16;
            do
            {
              v48 = *v47;
              *v47 = 0;
              *(v47 + 1) = 0;
              v49 = *v45;
              *(v45 - 1) = v48;
              if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v49->__on_zero_shared)(v49);
                std::__shared_weak_count::__release_weak(v49);
              }

              v45 -= 2;
              v47 -= 16;
              v46 += 16;
            }

            while (v46);
          }

          if (v9 != v7)
          {
            do
            {
              v51 = *v6;
              v50 = v6[1];
              if (v50)
              {
                atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
              }

              v52 = *(v7 + 1);
              *v7 = v51;
              *(v7 + 1) = v50;
              if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v52->__on_zero_shared)(v52);
                std::__shared_weak_count::__release_weak(v52);
              }

              v6 += 2;
              v7 += 16;
            }

            while (v6 != v16);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + (&v9[-*a1] >> 4);
      if (v11 >> 60)
      {
        sub_1AE5CBB70();
      }

      v12 = v8 - v10;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 60))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v24 = 16 * ((a2 - v10) >> 4);
      v25 = (v24 + 16 * a5);
      v26 = v24;
      do
      {
        v27 = v6[1];
        *v26 = *v6;
        *(v26 + 1) = v27;
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        v26 += 16;
        v6 += 2;
      }

      while (v26 != v25);
      v28 = *(a1 + 8) - a2;
      memcpy(v25, a2, v28);
      v30 = &v25[v28];
      *(a1 + 8) = v7;
      v31 = *a1;
      v32 = &v7[-*a1];
      v33 = v24 - v32;
      memcpy((v24 - v32), *a1, v32);
      *a1 = v33;
      *(a1 + 8) = v30;
      *(a1 + 16) = 0;
      if (v31)
      {

        operator delete(v31);
      }
    }
  }
}

void sub_1AE66B6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
    if ((v46 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a40);
      v50 = *(v47 + 136);
      if (v50)
      {
        v45[7].__shared_weak_owners_ = v50;
        operator delete(v50);
      }

      v51 = *a18;
      if (*a18)
      {
        v45[6].__shared_weak_owners_ = v51;
        operator delete(v51);
      }

      sub_1AE5F6784(v47 + 72);
      sub_1AE749810(a12);
      shared_weak_owners = v45[2].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        v45[3].__vftable = shared_weak_owners;
        operator delete(shared_weak_owners);
      }

      v53 = *v47;
      if (*v47)
      {
        v45[2].__vftable = v53;
        operator delete(v53);
      }

      sub_1AE6FCC0C(a15);
      std::__shared_weak_count::~__shared_weak_count(v45);
      operator delete(v54);
      _Unwind_Resume(a1);
    }
  }

  else if (!v46)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v48);
  goto LABEL_8;
}

uint64_t sub_1AE66B860(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1AE66B8D8(void *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v2 = 0x666666666666666;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    sub_1AE758394();
  }

  sub_1AE5CBB70();
}

void sub_1AE66BA50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE66BC0C(va);
  _Unwind_Resume(a1);
}

void *sub_1AE66BA64(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = result[1];
  *result = a2;
  result[1] = a3;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1AE66BAE4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1AE5CBB70();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1AE66BC0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_1AE65994C(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE66BC64(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[14];
  a1[14] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[13];
  a1[13] = 0;
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v8;
      operator delete(v8);
    }

    MEMORY[0x1B2706400](v7, 0x1080C409A65DFB4);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[9] = v9;
    operator delete(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  result = a1[3];
  if (result)
  {
    result = munmap(result, a1[4]);
  }

  a1[4] = 0;
  return result;
}

void sub_1AE66BD38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242AC00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE66BDB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM10ParametersEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM10ParametersEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM10ParametersEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM10ParametersEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

std::mutex *sub_1AE66BE0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AE6318C4(result);

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE66BE50(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE66C098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v12 + 8))(v12);
  sub_1AE622290(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  MEMORY[0x1B2706400](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE66C0F4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v5;
  v6 = *(a3 + 48);
  v9 = *(a3 + 32);
  v10 = v6;
  v12 = 0;
  return sub_1AE66C188(a1, a2 | (a2 << 32), v8, a4, a5, 1, 1, v11, v9);
}

uint64_t sub_1AE66C188(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __n128 a9)
{
  v99 = *MEMORY[0x1E69E9840];
  v96 = a5;
  v14 = a3[1];
  if (v14)
  {
    v15 = *a3;
    v16 = *a3 + 4 * v14;
    v17 = v16 + 4;
    v18 = -4 * v14;
    while (v18)
    {
      v19 = *(v17 - 8);
      v17 -= 4;
      v18 += 4;
      if (v19 == 1)
      {
        v20 = (v16 - v17) >> 2;
        v14 = v20 + 1;
        v15 = v16 + 4 * ~v20;
        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  a3[1] = v14;
  v21 = a3[3];
  if (v21 >= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = a3[3];
  }

  a3[2] = a3[2] + 4 * v21 - 4 * v22;
  a3[3] = v22;
  v23 = a3[5];
  if (v23 >= v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = a3[5];
  }

  a3[4] = a3[4] + 4 * v23 - 4 * v24;
  a3[5] = v24;
  v25 = a3[7];
  if (v25 < v14)
  {
    v14 = a3[7];
  }

  a3[6] = a3[6] + 4 * v25 - 4 * v14;
  a3[7] = v14;
  if (*(a8 + 24) || !*(a1 + 248) && *(a1 + 136) == *(a1 + 128) && *(a1 + 160) == *(a1 + 152))
  {
    v87 = 0;
  }

  else
  {
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    v87 = 1;
    *(a4 + 32) = 1;
    *(a4 + 40) = xmmword_1AE79A550;
    *(a4 + 56) = 0;
    *(a4 + 64) = xmmword_1AE79A550;
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    a9.n128_u64[1] = 0xFFEFFFFFFFFFFFFFLL;
    *a4 = xmmword_1AE79A560;
  }

  if (*(a1 + 288))
  {
    v26 = a6;
  }

  else
  {
    v26 = 0;
  }

  if (*(a1 + 296))
  {
    v27 = a6;
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 304))
  {
    v28 = a6;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 232);
  if (*(v29 + 192) == 1)
  {
    v88 = a6 & ~*(v29 + 419);
    v30 = *(a1 + 280);
    if (v30)
    {
      goto LABEL_32;
    }

LABEL_36:
    v89 = 0;
    if (a2 == 1)
    {
      goto LABEL_33;
    }

LABEL_37:
    if ((a2 & 0x80000000) != 0)
    {
      v32 = v27;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == 1)
    {
      __p[0] = 0;
      if (sub_1AE6F8E54(*(a1 + 296), a2, a3, a4, __p))
      {
        goto LABEL_63;
      }
    }

    v31 = a2 >> 31;
    if ((a2 & 0x80000000) != 0)
    {
      v33 = v28;
    }

    else
    {
      v33 = 0;
    }

    if (v33 == 1)
    {
      v97[0] = 0.0;
      if (sub_1AE6F8E54(*(a1 + 304), a2, a3, a4, v97))
      {
        goto LABEL_59;
      }

      v35 = *(a1 + 24);
      v34 = *(a1 + 32);
      if (v35 != v34)
      {
        v36 = 0;
        do
        {
          if ((*(**v35 + 80))(*v35, a2))
          {
            (*(**v35 + 56))(__p);
            v95 = 0.0;
            if (*(*(a1 + 232) + 192) == 1)
            {
              v37 = *(a1 + 304);
              if (v37)
              {
                v38 = (*(**(v37 + 16) + 24))(*(v37 + 16), __p, &v95);
                if (v38)
                {
                  v36 = sub_1AE6F8E54(*(a1 + 304), v38, a3, a4, v97);
                }
              }
            }

            if (SBYTE7(v92) < 0)
            {
              operator delete(__p[0]);
            }
          }

          ++v35;
        }

        while (v35 != v34);
        if (v36)
        {
LABEL_59:
          v40 = v97[0];
          if (v97[0] > *a4)
          {
            *(a4 + 8) = 0xFFEFFFFFFFFFFFFFLL;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v39 = 1;
            *(a4 + 32) = 1;
            *(a4 + 40) = xmmword_1AE79A550;
            *(a4 + 56) = 0;
            *(a4 + 64) = xmmword_1AE79A550;
LABEL_64:
            *a4 = v40;
            *(a4 + 80) = v40;
            *(a4 + 88) = 0x3FF0000000000000;
            *(a4 + 96) = 0;
            return v39;
          }
        }
      }
    }

    goto LABEL_61;
  }

  v88 = 0;
  v30 = *(a1 + 280);
  if (!v30)
  {
    goto LABEL_36;
  }

LABEL_32:
  v89 = a6 & ~(*(**(v30 + 8) + 24))(*(v30 + 8));
  if (a2 != 1)
  {
    goto LABEL_37;
  }

LABEL_33:
  if (!a3[1])
  {
    return 1;
  }

  v31 = a2 >> 31;
LABEL_61:
  if ((v26 & v31) == 1)
  {
    __p[0] = 0;
    if (sub_1AE6F8E54(*(a1 + 288), a2, a3, a4, __p))
    {
LABEL_63:
      *(a4 + 8) = 0xFFEFFFFFFFFFFFFFLL;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v39 = 1;
      *(a4 + 32) = 1;
      *(a4 + 40) = xmmword_1AE79A550;
      *(a4 + 56) = 0;
      *(a4 + 64) = xmmword_1AE79A550;
      v40 = *__p;
      goto LABEL_64;
    }
  }

  v95 = 0.0;
  v41 = *(a1 + 232);
  v42 = v41[84];
  v43 = v41[51];
  v44 = v41[62];
  v45 = (v43 + v42) + v44;
  v46 = 1.0;
  if (v89)
  {
    v46 = 1.0 - v41[81];
  }

  if (v45 > 0.0)
  {
    v47 = 1.0 / v45;
    v41[84] = (v46 * v42) * v47;
    v43 = (v46 * v43) * v47;
    v41[51] = v43;
    v41[62] = (v46 * v44) * v47;
  }

  v48 = a8;
  v49 = v41[85];
  v50 = v41[63];
  v51 = v50 + v49;
  if ((v50 + v49) > 0.0)
  {
    v41[85] = v49 / v51;
    v41[63] = v50 / v51;
  }

  v52 = 0.0;
  if (!v88)
  {
    v58 = 0.0;
    v59 = 0.0;
    if (!v89)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v53 = *(a1 + 272);
  if (v53)
  {
    v54 = 248;
    if (a3[3] < 2)
    {
      v54 = 252;
    }

    v55 = *(v53[3] + v54);
    v56 = v53[7];
    if (v56)
    {
      std::mutex::lock((v56 + 96));
      v57 = *(v56 + 40);
      std::mutex::unlock((v56 + 96));
    }

    else
    {
      v57 = 0;
    }

    v85 = (*(*v53 + 32))(v53);
    if (v57 < v85)
    {
      v55 = ((v57 / v85) * (v57 / v85)) * v55;
    }

    v58 = v55;
    v41 = *(a1 + 232);
    v43 = v41[51];
  }

  else
  {
    v58 = 0.0;
  }

  v59 = v43;
  if (v89)
  {
LABEL_78:
    v52 = v41[81];
  }

LABEL_79:
  if (v87)
  {
    v60 = *(a1 + 128);
    v61 = *(a1 + 136);
    if (v60 == v61)
    {
      v62 = 0;
      v39 = 1;
      v63 = 0.0;
    }

    else
    {
      v62 = 0;
      v63 = 0.0;
      LODWORD(v39) = 1;
      do
      {
        __p[0] = 0;
        LOWORD(__p[1]) = 0;
        v39 = v39 & (*(**v60 + 16))(*v60, a2, *a3, a3[1], &v95, __p, v96);
        if (__p[0] > v62)
        {
          v62 = __p[0];
        }

        if (v39 == 1)
        {
          *a4 = *a4 + v95 * *(*v60 + 8);
        }

        if (*(a1 + 160) != *(a1 + 152))
        {
          v97[0] = 0.0;
          (*(**v60 + 16))(*v60, a2, 0, 0, v97, 0, v96);
          v63 = v97[0] + v63;
        }

        v60 += 2;
      }

      while (v60 != v61);
    }

    v64 = *(a1 + 152);
    v65 = *(a1 + 160);
    while (v64 != v65)
    {
      v39 = v39 & (*(**v64 + 16))(*v64, a2, *a3, a3[1], &v95, 0, v96);
      if (v39 == 1)
      {
        *a4 = *a4 + v95 * *(*v64 + 8);
      }

      ++v64;
    }

    v66 = *(a1 + 248);
    if (v66)
    {
      if ((v39 & (*(*v66 + 16))(v66, a2, *a3, a3[1], &v95, 0, v96)) == 1)
      {
        *a4 = *a4 + v95 * *(*(a1 + 248) + 8);
        v39 = 1;
      }

      else
      {
        v39 = 0;
      }
    }

    if (*(a1 + 160) != *(a1 + 152) && *(a1 + 136) != *(a1 + 128))
    {
      *a4 = *a4 - v63;
    }

    *(a4 + 56) = 1;
  }

  else
  {
    v62 = 0;
    v39 = 1;
  }

  a9.n128_u64[0] = *a4;
  if (*a4 < 0.0)
  {
    *(a4 + 40) = a9.n128_u64[0];
    *(a4 + 48) = 0x3FF0000000000000;
    *(a4 + 8) = a9.n128_u64[0];
  }

  v67 = *(v48 + 24);
  if (!v67)
  {
    if (*(a1 + 248))
    {
      v68 = *(a3 + 1);
      *__p = *a3;
      v92 = v68;
      v69 = *(a3 + 3);
      v93 = *(a3 + 2);
      v94 = v69;
      v98 = 0;
      operator new();
    }

    v98 = 0;
    if (!v88)
    {
      goto LABEL_126;
    }

    goto LABEL_114;
  }

  if (v67 == v48)
  {
    v98 = v97;
    (*(*v67 + 24))(v67, v97, a9);
    if (!v88)
    {
      goto LABEL_126;
    }

LABEL_114:
    v70 = *a4;
    __p[0] = 0;
    v71 = 0.0;
    if (v59 > 0.0)
    {
      v72 = *(a1 + 264);
      if (v72)
      {
        if (sub_1AE77FA28(v72, HIDWORD(a2), a3[2], a3[3], __p, v97, a7))
        {
          v71 = *__p * v59;
        }
      }
    }

    __x = 0.0;
    if (v58 > 0.0)
    {
      v73 = *(a1 + 272);
      if (v73)
      {
        if (sub_1AE77FA28(v73, HIDWORD(a2), a3[2], a3[3], &__x, v97, a7))
        {
          v71 = __x * v58 + v71;
          if (__x * v58 > 0.0)
          {
            *(a4 + 64) = log10(__x);
          }
        }
      }
    }

    v74 = 1.0 - (v58 + v59 + v52);
    *(a4 + 72) = v58;
    if (v71 > 0.0)
    {
      *(a4 + 24) = 1;
    }

    *(a4 + 40) = v70;
    *(a4 + 48) = v74;
    *(a4 + 8) = v70;
    v75 = __exp10(v70);
    *a4 = log10(v71 + v75 * v74);
    goto LABEL_126;
  }

  v98 = (*(*v67 + 16))(v67, a9);
  if (v88)
  {
    goto LABEL_114;
  }

LABEL_126:
  __p[0] = 0;
  if (v89)
  {
    if (*(a1 + 280))
    {
      if (sub_1AE66CD78(a1, HIDWORD(a2)))
      {
        if (sub_1AE77FA28(*(a1 + 280), HIDWORD(a2), a3[2], a3[3], __p, v97, a7))
        {
          v76 = *__p * v52;
          v77 = __exp10(*a4);
          *a4 = log10(v77 + v76);
          if (v76 > 0.0)
          {
            *(a4 + 25) = 1;
          }
        }
      }
    }
  }

  v78 = *(a1 + 336);
  if (v78 && ((*(*v78 + 16))(v78, a2, *a3, a3[1]) & 1) == 0)
  {
    v79 = (*(**(a1 + 336) + 24))(*(a1 + 336));
    *a4 = *a4 - v79;
    *(a4 + 96) = *(a4 + 96) + v79;
  }

  v81 = *(a1 + 24);
  v80 = *(a1 + 32);
  if (v81 != v80)
  {
    while (1)
    {
      v82 = (*(**v81 + 80))(*v81, a2);
      if (v82 && v82 != a2)
      {
        break;
      }

      if (++v81 == v80)
      {
        goto LABEL_142;
      }
    }

    *a4 = *a4 + -3.0;
    *(a4 + 96) = *(a4 + 96) + 3.0;
  }

LABEL_142:
  *(a4 + 16) = v62;
  if (v98 == v97)
  {
    (*(*v98 + 32))(v98);
  }

  else if (v98)
  {
    (*(*v98 + 40))();
  }

  return v39;
}

uint64_t sub_1AE66CD78(void *a1, uint64_t a2)
{
  if (!a1[11])
  {
    return 0;
  }

  sub_1AE657E48(a1, a2, &__p);
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (p_p)
  {
    if (v9 >= 0)
    {
      v3 = HIBYTE(v9);
    }

    else
    {
      v3 = v8;
    }

    v11 = CFStringCreateWithBytes(0, p_p, v3, 0x8000100u, 0);
    if (!v11)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v11 = 0;
  if (v9 < 0)
  {
LABEL_11:
    operator delete(__p);
  }

LABEL_12:
  __p = 0;
  v8 = &__p;
  v9 = 0x2000000000;
  v10 = 0;
  LXLemmatizerEnumerateLemmasforString();
  v4 = *(v8 + 24);
  _Block_object_dispose(&__p, 8);
  if (v11)
  {
    CFRelease(v11);
  }

  return v4;
}

void sub_1AE66CEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_1AE621E54((v19 - 24));
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE66CF48(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if ((a3 - 1) <= 2)
  {
    *a4 = 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_1AE66CF78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK2LM22CompositeLanguageModel22conditionalProbabilityENS_11SingleTokenENS_13ContextTokensERNS_18CompositeScoreInfoEPNS_6LoggerEbbRKNSt3__18functionIFdmEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK2LM22CompositeLanguageModel22conditionalProbabilityENS_11SingleTokenENS_13ContextTokensERNS_18CompositeScoreInfoEPNS_6LoggerEbbRKNSt3__18functionIFdmEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK2LM22CompositeLanguageModel22conditionalProbabilityENS_11SingleTokenENS_13ContextTokensERNS_18CompositeScoreInfoEPNS_6LoggerEbbRKNSt3__18functionIFdmEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK2LM22CompositeLanguageModel22conditionalProbabilityENS_11SingleTokenENS_13ContextTokensERNS_18CompositeScoreInfoEPNS_6LoggerEbbRKNSt3__18functionIFdmEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_1AE66CFE4(uint64_t a1, void *a2, __n128 a3)
{
  v4 = *(*(a1 + 88) + 248);
  v5 = v4[3];
  a3.n128_u64[0] = 1.0;
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = v6 - *a2;
    if (v6 != *a2)
    {
      v8 = *(a1 + 8);
      if ((v8 - 5) > 0x3B || ((1 << (v8 - 5)) & 0xC00000000040005) == 0)
      {
        v10 = *(a1 + 16);
        v11 = **(a1 + 80);
        v16 = 0.0;
        v12 = (*(*v5 + 16))(v5, v8, 0, 0, &v16, 0, v11, a3);
        a3.n128_u64[0] = 1.0;
        if (v12)
        {
          v15 = 0.0;
          v13 = (*(*v4 + 16))(v4, v8, v10, v7, &v15, 0, v11, 1.0);
          a3.n128_u64[0] = 1.0;
          if (v13)
          {
            a3.n128_f64[0] = __exp10(v15 - v16);
          }
        }
      }
    }
  }

  return a3.n128_f64[0];
}

__n128 sub_1AE66D124(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242AD80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1AE66D210(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

unint64_t sub_1AE66D27C(_BYTE *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE66D320();
  }

  return sub_1AE5CAD24(a1, a2);
}

uint64_t sub_1AE66D32C(void *a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v2 = a1[29];
  if ((*(v2 + 361) & 1) == 0 && (*(v2 + 360) & 1) == 0)
  {
    v5 = a1[23];
    v6 = a1[24];
    if (v5 == v6)
    {
      v3 = 0;
    }

    else
    {
      while (1)
      {
        v8 = *(*v5 + 8);
        if (*(*v5 + 16) != v8)
        {
          break;
        }

        v3 = 0;
        v5 += 16;
        v4 = 1;
        if (v5 == v6)
        {
          return v3 | (v4 << 8);
        }
      }

      v13[0] = *MEMORY[0x1E69AC018];
      if (!(*(**v8 + 24))(*v8, a2, v13))
      {
        v9 = *(a2 + 23);
        v10 = a2;
        if (v9 < 0)
        {
          v10 = *a2;
          if (!*a2)
          {
            goto LABEL_13;
          }

          v9 = *(a2 + 8);
        }

        if (!CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

LABEL_13:
        v13[4] = 0.0;
        operator new();
      }

      v3 = v13[0] > **(*v5 + 32);
    }

    v4 = 1;
    return v3 | (v4 << 8);
  }

  v3 = 0;
  v4 = 0;
  return v3 | (v4 << 8);
}

void sub_1AE66D6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE66D708(uint64_t a1)
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

uint64_t sub_1AE66D794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK2LM22CompositeLanguageModel29isCommonWordFromStaticLexiconENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK2LM22CompositeLanguageModel29isCommonWordFromStaticLexiconENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK2LM22CompositeLanguageModel29isCommonWordFromStaticLexiconENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK2LM22CompositeLanguageModel29isCommonWordFromStaticLexiconENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

CFComparisonResult sub_1AE66D800(uint64_t a1, const __CFString **a2, int *a3, double *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v12.length = CFStringGetLength(v8);
  v12.location = 0;
  result = CFStringCompareWithOptionsAndLocale(v8, v5, v12, 0x81uLL, ***(a1 + 16));
  if (v6)
  {
    v10 = result == kCFCompareEqualTo;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(a1 + 24);
    if (*v11 < v7)
    {
      *v11 = v7;
      **(a1 + 32) = v6;
    }
  }

  return result;
}

__n128 sub_1AE66D8A0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242AE10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE66D94C(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0.0;
    v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v9 = xmmword_1AE79A550;
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = 1;
      v17 = xmmword_1AE79A550;
      v18 = 0;
      v19 = xmmword_1AE79A550;
      v20 = 0xFFEFFFFFFFFFFFFFLL;
      v21 = 0;
      v22 = 0;
      v10 = *(a2 + 4 * v7);
      if (qword_1ED9AC8F8 != -1)
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      }

      v23[0] = a2;
      v23[1] = v7;
      v23[2] = a2;
      v23[3] = v7;
      v23[4] = a2;
      v23[5] = v7;
      v23[6] = a2;
      v23[7] = v7;
      v25 = 0;
      result = sub_1AE66C188(v6, v10 | (v10 << 32), v23, &v13, qword_1ED9AC900, 1, 1, v24, v9);
      if (result)
      {
        v8 = *v13.i64 + v8;
      }

      ++v7;
    }

    while (a3 != v7);
  }

  else
  {
    v8 = 0.0;
  }

  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

void sub_1AE66DAD4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    v4 = *a2 + 4 * v2;
    v5 = v4 + 4;
    v6 = -4 * v2;
    do
    {
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = *(v5 - 8);
      v5 -= 4;
      v6 += 4;
    }

    while (v7 != 1);
    v8 = (v4 - v5) >> 2;
    v2 = v8 + 1;
    v3 = v4 + 4 * ~v8;
  }

  else
  {
    v3 = 0;
  }

LABEL_7:
  *a2 = v3;
  a2[1] = v2;
  v9 = a2[3];
  if (v9 >= v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = a2[3];
  }

  a2[2] = a2[2] + 4 * v9 - 4 * v10;
  a2[3] = v10;
  v11 = a2[5];
  if (v11 >= v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = a2[5];
  }

  a2[4] = a2[4] + 4 * v11 - 4 * v12;
  a2[5] = v12;
  v13 = a2[7];
  if (v13 < v2)
  {
    v2 = a2[7];
  }

  a2[6] = a2[6] + 4 * v13 - 4 * v2;
  a2[7] = v2;
  operator new();
}

void sub_1AE66FC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, void **a34, char a35)
{
  v37 = *(v35 - 240);
  *(v35 - 240) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *a33;
  if (*a33)
  {
    a23[25] = v38;
    operator delete(v38);
  }

  sub_1AE673B40(*a34);
  v39 = *(a13 + 24);
  if (v39)
  {
    a23[15] = v39;
    operator delete(v39);
  }

  v40 = *a13;
  if (*a13)
  {
    a23[12] = v40;
    operator delete(v40);
  }

  sub_1AE70C3B8(a32);
  sub_1AE71DB5C(*a22);
  sub_1AE622290(a21);
  sub_1AE622290(&a35);
  MEMORY[0x1B2706400](a23, 0x10B1C40598E04D2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE66FF64(void *a1, __int128 *a2)
{
  v4 = a1[23];
  v5 = a1[24];
  while (1)
  {
    if (v4 == v5)
    {
      v9 = a1[29];
      if (*(v9 + 192) != 1)
      {
LABEL_20:
        v14 = *(v9 + 358);

        return sub_1AE70DB1C(a2, v14);
      }

      v10 = a1[6];
      v11 = *(v10 + 560);
      v12 = *(v10 + 568);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11 && (result = (*(*v11 + 24))(v11, a2, 0), result))
      {
        v13 = 0;
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = 0;
        v13 = 1;
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = result;
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
        result = v15;
        if (!v13)
        {
          return result;
        }

        goto LABEL_18;
      }

LABEL_17:
      if (!v13)
      {
        return result;
      }

LABEL_18:
      if (result)
      {
        return result;
      }

      v9 = a1[29];
      goto LABEL_20;
    }

    v6 = *(*v4 + 8);
    v7 = *(*v4 + 16);
    if (v6 != v7)
    {
      break;
    }

LABEL_2:
    v4 += 16;
  }

  while (1)
  {
    result = (*(**v6 + 24))(*v6, a2, 0);
    if (result)
    {
      return result;
    }

    if (++v6 == v7)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1AE670120(uint64_t a1, const __CFString *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 232);
  if (*(v3 + 192) != 1)
  {
    return 0;
  }

  if (*(v3 + 356) == 1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    sub_1AE70EE04(__p, *(a1 + 184), *(a1 + 192));
    a1 = v4;
    a2 = v5;
    a3 = v6;
  }

  else
  {
    memset(__p, 0, sizeof(__p));
  }

  result = sub_1AE70DD74(a2, a3, *(a1 + 48), __p, *(a1 + 176), 0);
  if (__p[0])
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_1AE6701E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6701FC(void *a1, const __CFString *a2)
{
  v2 = a1[29];
  if (*(v2 + 192) == 1 && *(v2 + 359) == 1)
  {
    v5 = (a1 + 39);
    if (!a1[39])
    {
      operator new();
    }

    if (!a1[40])
    {
      operator new();
    }

    v6 = sub_1AE6589E8(a1, a2, 0);
    v12 = v6;
    v7 = a1[6];
    if (*(v7 + 328) <= v6 && *(v7 + 332) >= v6)
    {
      v8 = a1[34];
      if (v8)
      {
        v13 = 0.0;
        v9 = *(v8 + 24);
        if (*(v9 + 401))
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        (*(**(v8 + 8) + 104))(*(v8 + 8), &v12, 1, v9 + 88, v10, &v13, 0);
        if (v13 == 0.0)
        {
          v11 = v5;
        }

        else
        {
          v11 = (a1 + 40);
        }

        sub_1AE6917BC(*v11, a2);
      }
    }
  }
}

void sub_1AE670408(void *a1, CFStringRef theString)
{
  v2 = a1[23];
  v3 = a1[24];
  if (v2 != v3)
  {
    v6 = 0;
    do
    {
LABEL_4:
      v7 = *(*v2 + 8);
      v8 = *(*v2 + 16);
      if (v7 != v8)
      {
        while (1)
        {
          v6 = (*(**v7 + 16))(*v7, theString, 0);
          if (v6)
          {
            break;
          }

          if (++v7 == v8)
          {
            v6 = 0;
            v2 += 16;
            if (v2 != v3)
            {
              goto LABEL_4;
            }

            return;
          }
        }
      }

      v2 += 16;
    }

    while (v2 != v3);
    if (v6 && *(a1[29] + 359) == 1)
    {
      v9 = a1[41];
      if (!v9)
      {
        operator new();
      }

      sub_1AE6917BC(v9, theString);
    }
  }
}

uint64_t sub_1AE670588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  if (!a3)
  {
    return 0;
  }

  if (!a7)
  {
    v23 = a8[11];
    v24 = a8[10];
    if (v24 != v23)
    {
      while (((*(**v24 + 16))(*v24, a2, a3, a4, a5, a6) & 1) == 0)
      {
        if (++v24 == v23)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v14 = a8[7];
  v15 = a8[8];
  if (v14 != v15)
  {
    while (((*(**v14 + 16))(*v14, a2, a3, a4, a5, a6) & 1) == 0)
    {
      if (++v14 == v15)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  std::recursive_mutex::lock((a1 + 480));
  if (*(*(a1 + 232) + 192) == 1)
  {
    v16 = *(a1 + 48);
    v17 = *(v16 + 560);
    v18 = *(v16 + 568);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = (*(*v17 + 224))(v17, *(a2 + 4 * a3 - 4));
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v20 = v19;
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v19 = v20;
      }
    }

    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  std::recursive_mutex::unlock((a1 + 480));
  return v21;
}

void sub_1AE670778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE622290(&a9);
  std::recursive_mutex::unlock((v9 + 480));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE670794(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 232) + 192) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 560);
  v4 = *(v2 + 568);
  if (!v4 || (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v3)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v8 = a1;
  v9 = a2;
  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  a1 = v8;
  a2 = v9;
  if (!v3)
  {
    return 0;
  }

LABEL_6:
  if (*(*(a1 + 232) + 192) == 1)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 560);
      v7 = *(v5 + 568);
      v17 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if ((*(*(a1 + 232) + 192) & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v6 = 0;
      v17 = 0;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(v11 + 560);
      v13 = *(v11 + 568);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    v17 = 0;
  }

LABEL_19:
  v13 = 0;
  v12 = 0;
LABEL_20:
  v14 = (*(*v12 + 24))(v12, a2, 0);
  result = (*(*v6 + 208))(v6, v14);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = result;
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    result = v15;
  }

  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = result;
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      return v16;
    }
  }

  return result;
}

void sub_1AE6709C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1AE622290(&a9);
  sub_1AE622290(&a11);
  _Unwind_Resume(a1);
}

void sub_1AE6709E4(void *a1, int a2, double *a3, uint64_t a4, _DWORD *a5, unint64_t a6)
{
  if (!a6)
  {
    a5 = 0;
    if (a2 == 2)
    {
      return;
    }

LABEL_9:
    if ((*(a1[29] + 192) & 1) == 0)
    {
      return;
    }

    if (!a2)
    {
      v13 = a1[33];
      if (v13)
      {
        v23 = 10;
        strcpy(__p, "selfSender");
        v14 = a2;
        v15 = a3;
        v16 = a5;
        v17 = a6;
        sub_1AE77F47C(v13, 0, 0, a4, a5, a6, __p);
        a5 = v16;
        a2 = v14;
        a6 = v17;
        a3 = v15;
      }
    }

    v18 = a1[34];
    if (v18)
    {
      v23 = 10;
      strcpy(__p, "selfSender");
      sub_1AE77F47C(v18, a2, a3, a4, a5, a6, __p);
    }

    sub_1AE657E48(a1, a4, __p);
    if (v23 < 0)
    {
      if (!__p[1])
      {
        goto LABEL_25;
      }
    }

    else if (!v23)
    {
      return;
    }

    v19 = a1[6];
    v20 = *(v19 + 560);
    v21 = *(v19 + 568);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v20 + 184))(v20, __p, a4, 1.0);
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }
    }

    if ((v23 & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(__p[0]);
    return;
  }

  v8 = &a5[a6];
  v9 = v8 + 1;
  v10 = -4 * a6;
  while (v10)
  {
    v11 = *(v9 - 2);
    --v9;
    v10 += 4;
    if (v11 == 1)
    {
      v12 = v8 - v9;
      a6 = v12 + 1;
      a5 = &v8[~v12];
      break;
    }
  }

  if (a2 != 2)
  {
    goto LABEL_9;
  }
}

void sub_1AE670BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1AE622290(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE670C10(void *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a5)
  {
    a4 = 0;
    if (a2 == 2)
    {
      return;
    }

LABEL_9:
    if ((*(a1[29] + 192) & 1) == 0)
    {
      return;
    }

    if (!a2)
    {
      v12 = a1[33];
      if (v12)
      {
        v13 = a4;
        v14 = a5;
        sub_1AE77F8C4(v12, a3, a4, a5);
        a4 = v13;
        a5 = v14;
      }
    }

    v15 = a1[34];
    if (v15)
    {
      sub_1AE77F8C4(v15, a3, a4, a5);
    }

    sub_1AE657E48(a1, a3, __p);
    if (v20 < 0)
    {
      if (!__p[1])
      {
        goto LABEL_25;
      }
    }

    else if (!v20)
    {
      return;
    }

    v16 = a1[6];
    v17 = *(v16 + 560);
    v18 = *(v16 + 568);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v17 + 184))(v17, __p, a3, -1.0);
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(__p[0]);
    return;
  }

  v7 = a4 + 4 * a5;
  v8 = v7 + 4;
  v9 = -4 * a5;
  while (v9)
  {
    v10 = *(v8 - 8);
    v8 -= 4;
    v9 += 4;
    if (v10 == 1)
    {
      v11 = (v7 - v8) >> 2;
      a5 = v11 + 1;
      a4 = v7 + 4 * ~v11;
      break;
    }
  }

  if (a2 != 2)
  {
    goto LABEL_9;
  }
}

void sub_1AE670DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1AE622290(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE670DDC(void *a1, uint64_t a2)
{
  sub_1AE657E48(a1, a2, __p);
  if (v16 < 0)
  {
    if (!__p[1])
    {
      goto LABEL_26;
    }
  }

  else if (!v16)
  {
    return;
  }

  if (*(a1[29] + 192) == 1)
  {
    v4 = a1[6];
    v5 = *(v4 + 560);
    v6 = *(v4 + 568);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 192))(v5, __p, a2, 1);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = a1[29];
    v8 = a1[6];
    v9 = *(v8 + 560);
    v10 = *(v8 + 568);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v7 + 192) == 1 && (*(*v9 + 200))(v9, a2) >= *(v7 + 392))
    {
      v11 = (*(*v9 + 208))(v9, a2) < *(v7 + 396);
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = 0;
      if (!v10)
      {
LABEL_19:
        if (v11)
        {
LABEL_20:
          v12 = a1[6];
          v13 = *(v12 + 560);
          v14 = *(v12 + 568);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v13 + 216))(v13, a2);
          if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (v11)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_26:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE671074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1AE622290(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1AE6710A0(uint64_t *a1, const __CFString *a2, CFIndex a3, CFIndex a4)
{
  v19.location = a3;
  v19.length = a4;
  sub_1AE70EE04(&__p, a1[23], a1[24]);
  if (!a2)
  {
    v9 = 0;
    v6 = __p;
    if (!__p)
    {
      return v9;
    }

    goto LABEL_26;
  }

  v6 = __p;
  if (!a1[34] || (v18 = v21, __p == v21))
  {
    v9 = 0;
    if (!__p)
    {
      return v9;
    }

LABEL_26:
    v21 = v6;
    operator delete(v6);
    return v9;
  }

  v17 = __p;
  v7 = __p;
LABEL_13:
  v10 = *v7;
  v11 = *(*v7 + 8);
  v12 = v19;
  if (v11)
  {
    CFStringTokenizerSetString(v11, a2, v12);
  }

  else
  {
    *(v10 + 8) = CFStringTokenizerCreate(0, a2, v12, 0, *(v10 + 16));
  }

  v13 = 0;
  while (CFStringTokenizerAdvanceToNextToken(*(v10 + 8)))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(v10 + 8));
    if (*(v10 + 36) == 1)
    {
      if (*v10)
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        v26 = 1;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = sub_1AE685F18;
        v22[3] = &unk_1E7A2DD38;
        v22[4] = &v23;
        v22[5] = v10;
        sub_1AE61D734(a2, CurrentTokenRange.location, CurrentTokenRange.length, v22);
        v15 = *(v24 + 24);
        _Block_object_dispose(&v23, 8);
        if (v15 != 1)
        {
          v9 = 0;
LABEL_12:
          v7 += 8;
          if (v7 == v18)
          {
            goto LABEL_23;
          }

          goto LABEL_13;
        }
      }
    }

    ++v13;
  }

  v9 = *(v10 + 24) != 2 || v13 > 5;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_23:
  v6 = v17;
  if (v17)
  {
    goto LABEL_26;
  }

  return v9;
}

void sub_1AE671288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    v22 = a1;
    operator delete(__p);
    a1 = v22;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6712C0(uint64_t *a1, unsigned int *a2, unint64_t a3)
{
  sub_1AE70EE04(&__p, a1[23], a1[24]);
  if (!a1[34])
  {
    v14 = 0;
LABEL_20:
    if (!__p)
    {
      return v14;
    }

LABEL_21:
    operator delete(__p);
    return v14;
  }

  if (__p != v17)
  {
    v6 = 1.0 / a3;
    v7 = __p;
    while (1)
    {
      if (a3)
      {
        v8 = 0;
        v9 = 0;
        v10 = *v7;
        v11 = 4 * a3;
        v12 = a2;
        do
        {
          v13 = *v12;
          if (!*v12 || *(v10 + 28) <= v13 && v13 <= *(v10 + 32))
          {
            ++v8;
          }

          if (v13 - 10 < 0x35)
          {
            ++v9;
          }

          ++v12;
          v11 -= 4;
        }

        while (v11);
        v14 = ((v6 * v8) < 0.15) & ((v6 * v9) < 0.2);
        if ((v6 * v8) < 0.15 && (v6 * v9) < 0.2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = 0;
      }

      if (++v7 == v17)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = 0;
  if (__p)
  {
    goto LABEL_21;
  }

  return v14;
}

void *sub_1AE671408(void *result)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(result[29] + 192) == 1)
  {
    if (result[33])
    {
      v1 = result[6];
      std::mutex::lock((v1 + 664));
      sub_1AE6F143C(*(v1 + 24), 11, @"cache");
      sub_1AE5D40B8(*(v1 + 24), @"cache");
      sub_1AE61D968();
    }

    if (result[35])
    {
      v2 = result[6];
      std::mutex::lock((v2 + 664));
      sub_1AE6F143C(*(v2 + 24), 39, @"recency");
      sub_1AE5D40B8(*(v2 + 24), @"recency");
      sub_1AE61D968();
    }
  }

  return result;
}

void sub_1AE671608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    if (qword_1EB5E0C38 != -1)
    {
      dispatch_once(&qword_1EB5E0C38, &unk_1F242B4F0);
    }

    v19 = qword_1EB5E0C30;
    if (os_log_type_enabled(qword_1EB5E0C30, OS_LOG_TYPE_ERROR))
    {
      v20 = (*(*v18 + 16))(v18);
      LODWORD(__p) = 136315138;
      *(&__p + 4) = v20;
      _os_log_error_impl(&dword_1AE5C8000, v19, OS_LOG_TYPE_ERROR, "recency flush failed: %s", &__p, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x1AE6715D0);
  }

  std::mutex::unlock(v15);
  _Unwind_Resume(a1);
}

void sub_1AE6717F8(void *a1)
{
  if (*(a1[29] + 192) == 1)
  {
    v2 = a1[6];
    v3 = *(v2 + 560);
    v4 = *(v2 + 568);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 240))(v3);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a1[35];
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = a1[35];
      if (!v5)
      {
        return;
      }
    }

    v6 = *(**(v5 + 8) + 168);

    v6();
  }
}

uint64_t *sub_1AE671920(uint64_t *result, char a2)
{
  if ((a2 & 0x10) != 0)
  {
LABEL_10:
    v7 = result[35];
    if (v7)
    {
      v8 = *(**(v7 + 8) + 168);

      return v8();
    }

    return result;
  }

  if ((*(result[29] + 192) & 1) == 0)
  {
    if ((a2 & 2) != 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v2 = result[33];
  if (v2)
  {
    v3 = result;
    v4 = a2;
    (*(**(v2 + 8) + 168))(*(v2 + 8));
    a2 = v4;
    result = v3;
  }

  if ((a2 & 2) == 0)
  {
    v5 = result;
    sub_1AE6887B8(result[6]);
    v6 = v5[58];
    if (v6)
    {
      std::recursive_mutex::lock(v5[58]);
      sub_1AE6887B8(v6[2].__m_.__sig);
      std::recursive_mutex::unlock(v6);
    }

    result = v5;
    goto LABEL_10;
  }

  return result;
}

void sub_1AE671A48(uint64_t a1)
{
  if (*(*(a1 + 232) + 192) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      sub_1AE689200(v2);
      v3 = *(a1 + 464);
      if (v3)
      {
        std::recursive_mutex::lock(*(a1 + 464));
        sub_1AE689200(v3[2].__m_.__sig);
        std::recursive_mutex::unlock(v3);
      }
    }

    v4 = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(a1 + 264);
    if (v5)
    {
      v6 = *(a1 + 232);
      std::mutex::lock(v6);
      v8 = *(v6 + 64);
      v7 = *(v6 + 72);
      if (v8 != v7)
      {
        while (*v8 != v5 + 120)
        {
          v8 += 8;
          if (v8 == v7)
          {
            v8 = *(v6 + 72);
            break;
          }
        }
      }

      if (v7 != v8)
      {
        v9 = v7 - (v8 + 8);
        if (v7 != v8 + 8)
        {
          memmove(v8, v8 + 8, v7 - (v8 + 8));
        }

        *(v6 + 72) = &v8[v9];
      }

      std::mutex::unlock(v6);
      v10 = *(a1 + 264);
      *(a1 + 264) = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    v11 = *(a1 + 272);
    *(a1 + 272) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(a1 + 280);
    *(a1 + 280) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(a1 + 472);
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    if (v13)
    {
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    *(*(a1 + 232) + 192) = 0;
  }
}

void sub_1AE671C60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AE657E48(*(a1 + 32), a2, __p);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (SHIBYTE(v8) < 0)
  {
    if (__p[1])
    {
      goto LABEL_4;
    }
  }

  else if (HIBYTE(v8))
  {
LABEL_4:
    *a3 = *__p;
    *(a3 + 16) = v8;
    return;
  }

  (*(*v6 + 24))(v6, a2);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE671D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE671D2C(void *a1, CFStringRef theString1, _DWORD *a3, uint64_t a4)
{
  v5 = a1[29];
  if (*(v5 + 192) == 1)
  {
    if (!a1[35])
    {
      v15 = a1[6];
      if (v15)
      {
        if (*(v5 + 324) > 0.0)
        {
          sub_1AE68A2B0(__p, v15, (a1 + 29));
        }
      }
    }

    if (theString1 && a4)
    {
      for (i = 0; a4 != i; ++i)
      {
        v10 = a1[35];
        if (v10)
        {
          v11 = a3[i];
          sub_1AE5CC874(theString1, __p);
          sub_1AE77F47C(v10, 2, 0, v11, a3, i, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (CFStringCompare(theString1, kLMAdaptationContextSelfSender, 0) == kCFCompareEqualTo || !sub_1AE66CD78(a1, a3[i]))
        {
          continue;
        }

        v12 = a1[6];
        v13 = *(v12 + 560);
        v14 = *(v12 + 568);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1AE657E48(a1, a3[i], __p);
        (*(*v13 + 232))(v13, __p, a3[i]);
        if (v17 < 0)
        {
          operator delete(__p[0]);
          if (v14)
          {
LABEL_18:
            if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
            }
          }
        }

        else if (v14)
        {
          goto LABEL_18;
        }
      }
    }
  }
}

void sub_1AE671F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1AE622290(&a10);
  _Unwind_Resume(a1);
}

void sub_1AE671F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE671F84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1AE5CBB70();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1AE672088(void *a1, uint64_t a2, int64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if ((a3 - 1) < 2)
    {
      v4 = a1[36];
      if (!v4)
      {
        v5 = a1[2];
        *buf = a1[1];
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            sub_1AE66BE8C();
          }
        }

        goto LABEL_24;
      }

      goto LABEL_12;
    }

    if (!a3)
    {
      operator new();
    }

LABEL_25:
    v10 = a3;
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v11 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1AE5C8000, v11, OS_LOG_TYPE_ERROR, "Unknown external lexicon type: %ld", buf, 0xCu);
    }

    __assert_rtn("addLexicon", "LMCompositeLanguageModel.cpp", 2355, "false && Unknown external lexicon type");
  }

  if ((a3 - 3) >= 2)
  {
    if (a3 != 5)
    {
      goto LABEL_25;
    }

    v8 = a1[38];
    if (v8)
    {
      v7 = *(v8 + 16);
      a3 = 5;
LABEL_13:

      sub_1AE6F927C(v7, a2, a3);
    }

    v9 = a1[2];
    *buf = a1[1];
    if (v9 && std::__shared_weak_count::lock(v9))
    {
      sub_1AE66BE8C();
    }
  }

  else
  {
    v4 = a1[37];
    if (v4)
    {
LABEL_12:
      v7 = *(v4 + 16);
      goto LABEL_13;
    }

    v6 = a1[2];
    *buf = a1[1];
    if (v6 && std::__shared_weak_count::lock(v6))
    {
      sub_1AE66BE8C();
    }
  }

LABEL_24:
  sub_1AE657DFC();
}

void sub_1AE6725F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AE622290(va);
  _Unwind_Resume(a1);
}

void sub_1AE672614(_Unwind_Exception *a1)
{
  sub_1AE67BD64((v1 + 24));
  sub_1AE67BE08(v4);
  sub_1AE67BE40(v3);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1AE672654(void *a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 - 1 < 2)
  {
    v2 = a1[36];
    if (!v2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a2 - 3 < 2)
  {
    v2 = a1[37];
    if (!v2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a2 != 5)
  {
    v5 = a2;
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v4 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = v5;
      _os_log_error_impl(&dword_1AE5C8000, v4, OS_LOG_TYPE_ERROR, "Unknown external lexicon type: %ld", buf, 0xCu);
    }

    __assert_rtn("removeLexicon", "LMCompositeLanguageModel.cpp", 2378, "false && Unknown external lexicon type");
  }

  v2 = a1[38];
  if (v2)
  {
    a2 = 5;
LABEL_10:
    v3 = (*(v2 + 16) + 8);

    sub_1AE71F280(v3, a2);
  }
}

void sub_1AE6727C4(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[16];
  v3 = a1[17];
  if (v2 != v3)
  {
    while (mlock(*(*v2 + 112), *(*v2 + 120)))
    {
      v4 = *__error();
      v5 = std::generic_category();
      *&v17.__val_ = v4;
      v17.__cat_ = v5;
      if (!v4)
      {
        goto LABEL_8;
      }

LABEL_3:
      v2 += 16;
      if (v2 == v3)
      {
        goto LABEL_15;
      }
    }

    v6 = std::system_category();
    *&v17.__val_ = 0;
    v17.__cat_ = v6;
LABEL_8:
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v7 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v16, &v17);
      v8 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v16.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v19 = "mlock";
      v20 = 2080;
      v21 = v8;
      _os_log_impl(&dword_1AE5C8000, v7, OS_LOG_TYPE_DEFAULT, "%s: mlock() failed: %s", buf, 0x16u);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_3;
  }

LABEL_15:
  v9 = a1[23];
  v10 = a1[24];
  while (v9 != v10)
  {
    v11 = *(*v9 + 8);
    v12 = *(*v9 + 16);
    while (v11 != v12)
    {
      v13 = *v11++;
      (*(*v13 + 72))(v13);
    }

    v9 += 16;
  }

  v14 = a1[31];
  if (v14)
  {
    v15 = *(**(*(v14 + 16) + 16) + 80);

    v15();
  }
}

void sub_1AE672A24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

void sub_1AE672A30(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[16];
  v3 = a1[17];
  if (v2 != v3)
  {
    while (munlock(*(*v2 + 112), *(*v2 + 120)))
    {
      v4 = *__error();
      v5 = std::generic_category();
      *&v17.__val_ = v4;
      v17.__cat_ = v5;
      if (!v4)
      {
        goto LABEL_8;
      }

LABEL_3:
      v2 += 16;
      if (v2 == v3)
      {
        goto LABEL_15;
      }
    }

    v6 = std::system_category();
    *&v17.__val_ = 0;
    v17.__cat_ = v6;
LABEL_8:
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v7 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v16, &v17);
      v8 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v16.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v19 = "munlock";
      v20 = 2080;
      v21 = v8;
      _os_log_impl(&dword_1AE5C8000, v7, OS_LOG_TYPE_DEFAULT, "%s: munlock() failed: %s", buf, 0x16u);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_3;
  }

LABEL_15:
  v9 = a1[23];
  v10 = a1[24];
  while (v9 != v10)
  {
    v11 = *(*v9 + 8);
    v12 = *(*v9 + 16);
    while (v11 != v12)
    {
      v13 = *v11++;
      (*(*v13 + 80))(v13);
    }

    v9 += 16;
  }

  v14 = a1[31];
  if (v14)
  {
    v15 = *(**(*(v14 + 16) + 16) + 88);

    v15();
  }
}

void sub_1AE672C90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

const void **sub_1AE672C9C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE672F74(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v5 = *(v2 + 80);
  v3 = v2 + 80;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 28);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v3 && *(v6 + 28) <= a2)
    {
      v10 = *(v6 + 32);
      if (v10)
      {
        return v10;
      }
    }
  }

  v12 = *(a1 + 144);
  v15 = *(v12 + 104);
  v13 = v12 + 104;
  v14 = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = v13;
  do
  {
    v17 = *(v14 + 28);
    v8 = v17 >= a2;
    v18 = v17 < a2;
    if (v8)
    {
      v16 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v16 != v13 && *(v16 + 28) <= a2)
  {
    return *(v16 + 32);
  }

  else
  {
    return 0;
  }
}

off_t sub_1AE6730C0(uint64_t a1)
{
  v2 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v2 = *v2;
  }

  if (stat(v2, &v4) >= 0)
  {
    return 0;
  }

  else
  {
    return v4.st_size;
  }
}

uint64_t sub_1AE67312C(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 136) + 16))(*(a1 + 136));
  v5 = *(a1 + 144);
  v11 = 0;
  v6 = *(v5 + 24);
  v7 = (v5 + 32);
  if (v6 != (v5 + 32))
  {
    do
    {
      result = (*(a2 + 16))(a2, *(v6 + 8), &v11, 1.0);
      if (v11)
      {
        break;
      }

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

    while (v9 != v7);
  }

  return result;
}

void sub_1AE6733EC(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = *(a1 + 120);
    if (v3)
    {
      v4 = a1 + 120;
      do
      {
        v5 = *(v3 + 32);
        v6 = v5 >= a2;
        v7 = v5 < a2;
        if (v6)
        {
          v4 = v3;
        }

        v3 = *(v3 + 8 * v7);
      }

      while (v3);
      if (v4 != a1 + 120 && *(v4 + 32) <= a2)
      {
        if (*(v4 + 63) < 0)
        {
          v32 = *(v4 + 40);
          v33 = *(v4 + 48);

          sub_1AE5DBF1C(a3, v32, v33);
        }

        else
        {
          v8 = *(v4 + 40);
          *(a3 + 16) = *(v4 + 56);
          *a3 = v8;
        }

        return;
      }
    }
  }

  if (*(a1 + 72) > a2 || *(a1 + 76) < a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v9 = *(a1 + 136);
  v12 = *(v9 + 24);
  v10 = v9 + 24;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_23;
  }

  v14 = v10;
  do
  {
    v15 = *(v11 + 28);
    v6 = v15 >= a2;
    v16 = v15 < a2;
    if (v6)
    {
      v14 = v11;
    }

    v11 = *(v11 + 8 * v16);
  }

  while (v11);
  if (v14 == v10 || *(v14 + 28) > a2)
  {
LABEL_23:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
LABEL_24:
    v17 = *(a1 + 144);
    v20 = *(v17 + 32);
    v18 = v17 + 32;
    v19 = v20;
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v18;
    do
    {
      v22 = *(v19 + 32);
      v6 = v22 >= a2;
      v23 = v22 < a2;
      if (v6)
      {
        v21 = v19;
      }

      v19 = *(v19 + 8 * v23);
    }

    while (v19);
    if (v21 != v18 && *(v21 + 32) <= a2)
    {
      if (*(v21 + 63) < 0)
      {
        sub_1AE5DBF1C(&v36, *(v21 + 40), *(v21 + 48));
      }

      else
      {
        v36 = *(v21 + 40);
        v37 = *(v21 + 56);
      }
    }

    else
    {
LABEL_32:
      v36 = 0uLL;
      v37 = 0;
    }

    v24 = a3;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
      v24 = a3;
    }

    *v24 = v36;
    *(v24 + 16) = v37;
    return;
  }

  v25 = a1;
  v26 = a2;
  v27 = *(*(a1 + 136) + 40);
  v28 = *(v14 + 32);
  v29 = strlen((v27 + v28));
  if (v29 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v30 = v29;
  if (v29 >= 0x17)
  {
    operator new();
  }

  v31 = a3;
  *(a3 + 23) = v29;
  if (v29)
  {
    memmove(a3, (v27 + v28), v29);
    v31 = a3;
  }

  *(a3 + v30) = 0;
  v34 = *(v31 + 23);
  v35 = *(v31 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  a2 = v26;
  a1 = v25;
  if (!v35)
  {
    goto LABEL_24;
  }
}

void sub_1AE67367C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE673698(uint64_t *a1, const void **a2, double *a3)
{
  v4 = a2;
  v6 = *(a1[17] + 8);
  v13 = 0;
  v7 = *(a2 + 2);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  sub_1AE74EEE8(v6, a2, v8, &v13 + 1, &v13);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    *a3 = *&v13;
  }

  result = HIDWORD(v13);
  if (!HIDWORD(v13))
  {
LABEL_8:
    v11 = sub_1AE63148C((a1 + 11), v4);
    if (a1 + 12 == v11 && (v12 = a1[18], v11 = sub_1AE63148C(v12, v4), (v12 + 8) == v11))
    {
      return 0;
    }

    else
    {
      return *(v11 + 14);
    }
  }

  return result;
}

uint64_t sub_1AE673760(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  sub_1AE5CC874(a2, __p);
  result = (*(*a1 + 24))(a1, __p, a3);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_1AE6737E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE673800(uint64_t a1)
{
  sub_1AE673838(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE673838(uint64_t a1)
{
  *a1 = &unk_1F242AF10;
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    v3 = sub_1AE673940(v2);
    MEMORY[0x1B2706400](v3, 0x10A0C404AAAD15CLL);
  }

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1AE673AE4(*(a1 + 120));
  sub_1AE627688(*(a1 + 96));
  v5 = *(a1 + 80);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  *(a1 + 80) = 0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
LABEL_9:
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(a1 + 16));
  v7 = *(a1 + 8);
  if (v7)
  {
LABEL_13:
    CFRelease(v7);
  }

LABEL_14:
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_1AE673940(uint64_t a1)
{
  sub_1AE673B40(*(a1 + 104));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3 == v2)
  {
    v4 = (a1 + 88);
    v3 = *(a1 + 56);
  }

  else
  {
    v4 = (a1 + 88);
    v5 = *(a1 + 80);
    v6 = &v2[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * v5 + -4080 * (v5 / 0x66);
    v9 = v2[(*(a1 + 88) + v5) / 0x66] + 40 * *(a1 + 88) + 40 * v5 + -4080 * ((*(a1 + 88) + v5) / 0x66);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = *(a1 + 56);
      v3 = *(a1 + 64);
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 64);
      v2 = (*(a1 + 56) + 8);
      *(a1 + 56) = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 51;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 102;
LABEL_17:
    *(a1 + 80) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 56);
    v14 = *(a1 + 64);
    if (v14 != v15)
    {
      *(a1 + 64) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    operator delete(v16);
  }

  sub_1AE673AE4(*(a1 + 32));
  sub_1AE627688(*(a1 + 8));
  return a1;
}

void sub_1AE673AE4(char *a1)
{
  if (a1)
  {
    sub_1AE673AE4(*a1);
    sub_1AE673AE4(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void sub_1AE673B40(void *a1)
{
  if (a1)
  {
    sub_1AE673B40(*a1);
    sub_1AE673B40(a1[1]);

    operator delete(a1);
  }
}

int32x2_t *sub_1AE673B94(int32x2_t *a1, CFTypeRef cf, __int128 *a3, __int128 *a4, unsigned int *a5)
{
  *a1 = &unk_1F242AF10;
  a1[1] = 0;
  v92 = &a1[1];
  if (*(a3 + 23) < 0)
  {
    sub_1AE5DBF1C(&a1[2], *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    a1[4] = a3[1];
    *a1[2].i8 = v9;
  }

  if (*(a4 + 23) < 0)
  {
    v11 = a1;
    sub_1AE5DBF1C(&a1[5], *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    v11 = a1;
    a1[7] = a4[1];
    *a1[5].i8 = v10;
  }

  v11[12] = 0;
  v11[10] = 0;
  v11[11] = &v11[12];
  v11[16] = 0;
  v11[15] = 0;
  v11[13] = 0;
  v11[14] = &v11[15];
  v12 = v11[1];
  v11[17] = 0;
  v11[18] = 0;
  v93 = v11 + 18;
  v94 = v11 + 17;
  if (v12 != cf)
  {
    CFRetain(cf);
    if (*v92)
    {
      CFRelease(*v92);
    }

    *v92 = cf;
  }

  v13 = *a5;
  a1[8] = *a5;
  a1[9].i32[0] = v13.i32[1];
  a1[9].i32[1] = v13.i32[0];
  vcvtpd_u64_f64(log2(v13.u32[1]));
  v14 = sub_1AE5D471C(cf, 0);
  if (!v14)
  {
    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  theDict = v14;
  if (CFDictionaryGetCount(v14))
  {
    Value = CFDictionaryGetValue(theDict, @"Version");
    v16 = Value;
    LODWORD(valuePtr) = 0;
    if (Value && (v17 = CFGetTypeID(Value), v17 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
      v18 = valuePtr;
      if (valuePtr == 1)
      {
        v19 = CFDictionaryGetValue(theDict, @"dynamicRangeMin");
        v20 = v19;
        LODWORD(valuePtr) = 0;
        if (v19 && (v21 = CFGetTypeID(v19), v21 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
          v22 = valuePtr;
        }

        else
        {
          v22 = 0;
        }

        v23 = CFDictionaryGetValue(theDict, @"dynamicRangeMax");
        v24 = v23;
        LODWORD(valuePtr) = 0;
        if (v23 && (v25 = CFGetTypeID(v23), v25 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
          v26 = valuePtr;
        }

        else
        {
          v26 = 0;
        }

        a1[9].i32[0] = v22;
        a1[9].i32[1] = v26;
        v27 = CFDictionaryGetValue(theDict, @"dynamicLimitsMin");
        v28 = v27;
        LODWORD(valuePtr) = 0;
        if (v27 && (v29 = CFGetTypeID(v27), v29 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
          v30 = valuePtr;
        }

        else
        {
          v30 = 0;
        }

        v31 = CFDictionaryGetValue(theDict, @"dynamicLimitsMax");
        v32 = v31;
        LODWORD(valuePtr) = 0;
        if (v31 && (v33 = CFGetTypeID(v31), v33 == CFNumberGetTypeID()))
        {
          CFNumberGetValue(v32, kCFNumberIntType, &valuePtr);
          v34 = valuePtr;
        }

        else
        {
          v34 = 0;
        }

        a1[8].i32[0] = v30;
        a1[8].i32[1] = v34;
        if (v30 != *a5 || v34 != a5[1])
        {
          exception = __cxa_allocate_exception(0x20uLL);
          sub_1AE693A80("dynamicids resource file is incompatible with the parameters the client has set (dynamicIDLimits [%d, %d], expected dynamicIDLimits [%d, %d])", &v99, *a5, a5[1], a1[8].u32[0], a1[8].u32[1]);
          sub_1AE660DB0(exception, &v99.st_dev);
          __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
        }

        vcvtpd_u64_f64(log2(v34));
        goto LABEL_36;
      }
    }

    else
    {
      v18 = 0;
    }

    v90 = __cxa_allocate_exception(0x20uLL);
    sub_1AE693A80("dynamicids resource file is incompatible (version %d, expected version %d)", &v99, v18, 1);
    sub_1AE660DB0(v90, &v99.st_dev);
    __cxa_throw(v90, &unk_1F2432910, sub_1AE64FC40);
  }

LABEL_36:
  if (*(a3 + 23) >= 0)
  {
    v35 = a3;
  }

  else
  {
    v35 = *a3;
  }

  v36 = open_dprotected_np(v35, 0, 3, 0, 0);
  if ((v36 & 0x80000000) == 0)
  {
    fcntl(v36, 64, 3);
    operator new();
  }

  if (*(a4 + 23) >= 0)
  {
    v37 = a4;
  }

  else
  {
    v37 = *a4;
  }

  v38 = open_dprotected_np(v37, 0, 3, 0, 0);
  if ((v38 & 0x80000000) == 0)
  {
    fcntl(v38, 64, 3);
    operator new();
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!*v94)
  {
    operator new();
  }

  if (!*v93)
  {
    operator new();
  }

  v39 = *v94;
  memset(&v99, 0, 24);
  v40 = *(*&v39 + 16);
  v41 = (*&v39 + 24);
  if (v40 != (*&v39 + 24))
  {
    do
    {
      sub_1AE6369B4(&v99, v40 + 7);
      v46 = v40[1];
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
          v47 = v40[2];
          v48 = *v47 == v40;
          v40 = v47;
        }

        while (!v48);
      }

      v40 = v47;
    }

    while (v47 != v41);
  }

  v42 = *v93;
  memset(v98, 0, sizeof(v98));
  v43 = 0uLL;
  v44 = *(*&v42 + 24);
  v45 = (*&v42 + 32);
  if (v44 != (*&v42 + 32))
  {
    do
    {
      sub_1AE6369B4(v98, v44 + 8);
      v49 = v44[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v44[2];
          v48 = *v50 == v44;
          v44 = v50;
        }

        while (!v48);
      }

      v44 = v50;
    }

    while (v50 != v45);
    v43 = *v98;
  }

  v51 = v43;
  sub_1AE6462C4(&v99, v99.st_ino, v43, *(&v43 + 1), (*(&v43 + 1) - v43) >> 2);
  v52 = *&v99.st_dev;
  st_ino = v99.st_ino;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v60 = a1;
  v61 = a1[9].u32[0];
  if (st_ino != v52)
  {
    v62 = a1[9].u32[1];
    if (v61 <= v62)
    {
      if (v62 < *(st_ino - 4))
      {
        if (qword_1ED9AC8F8 != -1)
        {
          dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
        }

        sub_1AE731C2C(qword_1ED9AC900, v54, "Inconsistency in dynamic word id ranges: %d, expected max (%d)", v55, v56, v57, v58, v59, *(st_ino - 4));
        v60 = a1;
        a1[9].i32[1] = *(st_ino - 4);
        v61 = a1[9].u32[0];
      }
    }

    else
    {
      v61 = *v52;
      a1[9].i32[0] = *v52;
      a1[9].i32[1] = *(st_ino - 4);
    }

    if (st_ino != v52 && v61 > *v52)
    {
      if (qword_1ED9AC8F8 != -1)
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      }

      sub_1AE731C2C(qword_1ED9AC900, v54, "Inconsistency in dynamic word id ranges: %d, expected min (%d)", v55, v56, v57, v58, v59, *v52);
      v61 = *v52;
      v60 = a1;
      a1[9].i32[0] = *v52;
    }
  }

  if (v61 < v60[8].i32[0] || (v63 = v60[9].u32[1], v63 > v60[8].i32[1]))
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    sub_1AE731C2C(qword_1ED9AC900, v54, "Unexpected dynamic word id ranges: (dynamicIDRanges [%d, %d], dynamicIDLimits [%d, %d])", v55, v56, v57, v58, v59, v60[9].i32[0]);
    v64 = *v94;
    v65 = *(*v94 + 40);
    *(*&v64 + 48) = v65;
    v66 = *(*&v64 + 56);
    if (v65 >= v66)
    {
      operator new();
    }

    *v65 = 0;
    v67 = *(*&v64 + 24);
    *(*&v64 + 48) = v65 + 1;
    sub_1AE673B40(v67);
    *(*&v64 + 24) = 0;
    *(*&v64 + 32) = 0;
    *(*&v64 + 16) = *&v64 + 24;
    *(*&v64 + 64) = 0;
    v68 = *(*&v64 + 8);
    if (v68)
    {
      v69 = *(v68 + 2080) - 1;
      *(v68 + 2080) = v69;
      if (!v69)
      {
        v70 = *(v68 + 2084);
        if (v70)
        {
          if (*(v68 + 2096))
          {
            munmap(v70, *(v68 + 2072));
          }
        }

        else
        {
          sub_1AE74C314(v68);
        }

        free(v68);
      }
    }

    v74 = malloc_type_calloc(1uLL, 0x83CuLL, 0x105004056F6A631uLL);
    if (v74)
    {
      *(v74 + 129) = 0u;
      *(v74 + 520) = 1;
      *(v74 + 2084) = 0;
      *(v74 + 2092) = 64;
    }

    *(*&v64 + 8) = v74;
    v75 = *v93;
    v76 = (*v93 + 32);
    sub_1AE673AE4(*v76);
    *(*&v75 + 24) = v76;
    *(*&v75 + 40) = 0;
    *v76 = 0;
    sub_1AE627688(*(*&v75 + 8));
    **&v75 = *&v75 + 8;
    *(*&v75 + 16) = 0;
    *(*&v75 + 8) = 0;
    v77 = *(*&v75 + 56);
    v78 = *(*&v75 + 64);
    if (v78 == v77)
    {
      v79 = (*&v75 + 88);
      v78 = *(*&v75 + 56);
    }

    else
    {
      v79 = (*&v75 + 88);
      v80 = *(*&v75 + 80);
      v81 = &v77[v80 / 0x66];
      v82 = *v81;
      v83 = *v81 + 40 * v80 + -4080 * (v80 / 0x66);
      v84 = v77[(*(*&v75 + 88) + v80) / 0x66] + 40 * *(*&v75 + 88) + 40 * v80 + -4080 * ((*(*&v75 + 88) + v80) / 0x66);
      if (v83 != v84)
      {
        do
        {
          if (*(v83 + 23) < 0)
          {
            operator delete(*v83);
            v82 = *v81;
          }

          v83 += 40;
          if (v83 - v82 == 4080)
          {
            v85 = v81[1];
            ++v81;
            v82 = v85;
            v83 = v85;
          }
        }

        while (v83 != v84);
        v77 = *(*&v75 + 56);
        v78 = *(*&v75 + 64);
      }
    }

    *v79 = 0;
    v86 = v78 - v77;
    if (v86 >= 3)
    {
      do
      {
        operator delete(*v77);
        v87 = *(*&v75 + 64);
        v77 = (*(*&v75 + 56) + 8);
        *(*&v75 + 56) = v77;
        v86 = (v87 - v77) >> 3;
      }

      while (v86 > 2);
    }

    if (v86 == 1)
    {
      v88 = 51;
    }

    else
    {
      if (v86 != 2)
      {
LABEL_123:
        a1[9] = vrev64_s32(a1[8]);
        goto LABEL_124;
      }

      v88 = 102;
    }

    *(*&v75 + 80) = v88;
    goto LABEL_123;
  }

  v71 = v63 + 1;
  if (st_ino != v52)
  {
    do
    {
      v72 = v71;
      v73 = *(st_ino - 4);
      st_ino -= 4;
      v71 = v73;
      if (v73 + 1 < v72)
      {
        operator new();
      }
    }

    while (st_ino != v52);
    v61 = a1[9].u32[0];
  }

  if (v61 < v71)
  {
    operator new();
  }

LABEL_124:
  if (v51)
  {
    operator delete(v51);
  }

  if (v52)
  {
    operator delete(v52);
  }

  return a1;
}

uint64_t *sub_1AE676444(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE673940(v2);
    MEMORY[0x1B2706400](v4, 0x10A0C404AAAD15CLL);
    return v3;
  }

  return v1;
}

void sub_1AE676524(void *a1)
{
  sub_1AE61F018(v1);
  MEMORY[0x1B2706400](v1, 0x1032C40D90104AELL);
  sub_1AE6090F0(a1);
}

void sub_1AE676620(void *a1)
{
  sub_1AE61F018(v1);
  MEMORY[0x1B2706400](v1, 0x1032C40D90104AELL);
  sub_1AE6090F0(a1);
}

void *language_modeling::v1::InlineCompletion::InlineCompletion(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *language_modeling::v1::InlineCompletion::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    if (*(v3 + 287) < 0)
    {
      operator delete(*(v3 + 264));
    }

    v5 = sub_1AE61F018(v3);
    MEMORY[0x1B2706400](v5, 0x1032C40D90104AELL);
    return v4;
  }

  return result;
}

void language_modeling::v1::InlineCompletion::~InlineCompletion(language_modeling::v1::InlineCompletion *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 287) < 0)
    {
      operator delete(*(v1 + 264));
    }

    v2 = sub_1AE61F018(v1);
    MEMORY[0x1B2706400](v2, 0x1032C40D90104AELL);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 287) < 0)
    {
      operator delete(*(v1 + 264));
    }

    v2 = sub_1AE61F018(v1);
    MEMORY[0x1B2706400](v2, 0x1032C40D90104AELL);
  }
}

__int128 **language_modeling::v1::InlineCompletion::string@<X0>(__int128 **this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 23) < 0)
  {
    return sub_1AE5DBF1C(a2, *v2, *(v2 + 1));
  }

  v3 = *v2;
  *(a2 + 16) = *(v2 + 2);
  *a2 = v3;
  return this;
}

uint64_t *language_modeling::v1::InlineCompletion::prefix@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 231) < 0)
  {
    return sub_1AE5DBF1C(a2, *(v2 + 208), *(v2 + 216));
  }

  v3 = *(v2 + 208);
  *(a2 + 16) = *(v2 + 224);
  *a2 = v3;
  return this;
}

uint64_t *language_modeling::v1::InlineCompletion::log@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 287) < 0)
  {
    return sub_1AE5DBF1C(a2, *(v2 + 264), *(v2 + 272));
  }

  v3 = (v2 + 264);
  v4 = *v3;
  *(a2 + 16) = *(v3 + 2);
  *a2 = v4;
  return this;
}

void sub_1AE676998(void *a1)
{
  v2 = *(a1[21] + 248);
  if (v2)
  {
    (*(**(*(v2 + 16) + 16) + 72))(*(*(v2 + 16) + 16));
  }

  v3 = a1[55];
  v4 = a1[56];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 72))(v3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1AE676AA8(uint64_t a1)
{
  sub_1AE672A30(*(a1 + 168));
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 88))(v2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1AE676B88(uint64_t a1)
{
  sub_1AE6727C4(*(a1 + 168));
  v2 = *(a1 + 440);
  v3 = *(a1 + 448);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 80))(v2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1AE676C68(uint64_t a1)
{
  v2 = *(a1 + 168);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE671920(*(a1 + 168), 0);

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE676CD0(uint64_t a1, void *cf)
{
  if (!cf)
  {
    __assert_rtn("removeVocabulary", "TokenIDLanguageModel.cpp", 325, "vocabulary");
  }

  v3 = *(a1 + 168);
  v4 = cf[3];
  v6 = v3[3];
  v5 = v3[4];
  if (v6 != v5)
  {
    while (*v6 != v4)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = v3[4];
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v7 = v5 - (v6 + 8);
    if (v5 != v6 + 8)
    {
      memmove(v6, v6 + 8, v5 - (v6 + 8));
    }

    v3[4] = &v6[v7];
    v8 = v3[31];
    if (v8)
    {
      (*(**(*(v8 + 16) + 16) + 104))(*(*(v8 + 16) + 16), v4);
    }
  }

  CFRelease(cf);
}

void sub_1AE676DD0(uint64_t a1, size_t *a2)
{
  v2 = *(a1 + 168);
  v3 = sub_1AE6EA980(a2);

  sub_1AE672654(v2, v3);
}

void sub_1AE676E10(uint64_t a1, uint64_t a2, size_t *a3)
{
  v4 = *(a1 + 168);
  v5 = sub_1AE6EA980(a3);

  sub_1AE672088(v4, a2, v5);
}

void sub_1AE676E64(void *a1, const void *a2)
{
  sub_1AE661F24(a1[21], a2);
  sub_1AE6EAE20((a1 + 13));
  v3 = a1[65];
  if (v3)
  {
    if (*v3 != v3[1])
    {
      sub_1AE6770B4(&v4, a1);
    }
  }
}

void sub_1AE677070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  language_modeling::v1::LinguisticContext::~LinguisticContext(va);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6770B4(uint64_t a1, void *a2)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = strlen(language_modeling::v1::kEnvironmentSessionTypeKey);
  if (v3 <= 0x7FFFFFFFFFFFFFF7)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v20 = v3;
      if (v3)
      {
        memmove(&__dst, language_modeling::v1::kEnvironmentSessionTypeKey, v3);
      }

      *(&__dst + v4) = 0;
      v21[0] = 3;
      v22 = 0;
      v5 = strlen(language_modeling::v1::kEnvironmentAppIdentifierKey);
      if (v5 <= 0x7FFFFFFFFFFFFFF7)
      {
        v6 = v5;
        if (v5 < 0x17)
        {
          v24 = v5;
          if (v5)
          {
            memmove(&v23, language_modeling::v1::kEnvironmentAppIdentifierKey, v5);
          }

          *(&v23 + v6) = 0;
          v25 = 0x746C7561666564;
          *v26 = v29[0];
          *&v26[7] = *(v29 + 7);
          v27 = 7;
          memset(v29, 0, 15);
          v28 = 1;
          v17[0] = 0;
          v17[1] = 0;
          v16 = v17;
          sub_1AE632038(&v16, v17, &__dst);
          sub_1AE632038(&v16, v17, &v23);
          if (v28 != -1)
          {
            (off_1F242B138[v28])(v18, &v25);
          }

          v28 = -1;
          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 != -1)
          {
            (off_1F242B138[v22])(v18, v21);
          }

          v22 = -1;
          if (v20 < 0)
          {
            operator delete(__dst);
          }

          v7 = a2[1];
          v9 = *(v7 + 144);
          v8 = *(v7 + 152);
          v15[11] = v9;
          v15[12] = v8;
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          v10 = a2[56];
          v15[9] = a2[55];
          v15[10] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = a2[58];
          v15[7] = a2[57];
          v15[8] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = a2[60];
          v15[5] = a2[59];
          v15[6] = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          v13 = a2[62];
          v15[3] = a2[61];
          v15[4] = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v14 = a2[64];
          v15[1] = a2[63];
          v15[2] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          sub_1AE6ECC60(v15, (a2 + 13), &v16);
        }

        operator new();
      }

      sub_1AE5DB4F0();
    }

    operator new();
  }

  sub_1AE5DB4F0();
}

void sub_1AE677824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, unsigned int *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  if (a32)
  {
    (*(*a32 + 8))(a32);
  }

  sub_1AE622290(&a33);
  sub_1AE622290(&a35);
  sub_1AE622290(&a37);
  sub_1AE622290(v38 - 112);
  sub_1AE622290(v38 - 224);
  MEMORY[0x1B2706400](v37, 0x10F3C403524454CLL);
  sub_1AE622290(&a17);
  sub_1AE622290(&a19);
  sub_1AE622290(&a21);
  sub_1AE622290(&a23);
  sub_1AE622290(&a25);
  sub_1AE622290(&a27);
  sub_1AE632494(a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE677950(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    (off_1F242B138[v2])(&v4, a1 + 24);
  }

  *(a1 + 48) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE6779CC(void *a1, uint64_t a2)
{
  v2 = a1[56];
  v7[9] = a1[55];
  v7[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a1[58];
  v7[7] = a1[57];
  v7[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[60];
  v7[5] = a1[59];
  v7[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[62];
  v7[3] = a1[61];
  v7[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[64];
  v7[1] = a1[63];
  v7[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1AE6ECC60(v7, (a1 + 13), a2);
}

void sub_1AE677E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va4, a9);
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  va_copy(va3, va2);
  v19 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  va_copy(va4, va3);
  v22 = va_arg(va4, void);
  v24 = va_arg(va4, void);
  v12 = *(v10 - 136);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  sub_1AE622290(v10 - 128);
  sub_1AE622290(v10 - 112);
  sub_1AE622290(v10 - 96);
  sub_1AE622290(v10 - 80);
  sub_1AE622290(v10 - 64);
  MEMORY[0x1B2706400](v9, 0x10F3C403524454CLL);
  sub_1AE622290(va);
  sub_1AE622290(va1);
  sub_1AE622290(va2);
  sub_1AE622290(va3);
  sub_1AE622290(va4);
  _Unwind_Resume(a1);
}

char *sub_1AE677F64@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[103] < 0)
  {
    return sub_1AE5DBF1C(a2, *(result + 10), *(result + 11));
  }

  *a2 = *(result + 5);
  *(a2 + 16) = *(result + 12);
  return result;
}

void sub_1AE677F8C(uint64_t a1)
{
  sub_1AE677FC4(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE677FC4(uint64_t a1)
{
  *a1 = &unk_1F242B058;
  v2 = *(a1 + 528);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1AE6780F8(a1 + 416);
  sub_1AE6206F4(*(a1 + 400));
  sub_1AE6782A0(a1 + 104);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      operator delete(*(a1 + 32));
      v3 = *(a1 + 16);
      if (!v3)
      {
        return a1;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v3 = *(a1 + 16);
  if (!v3)
  {
    return a1;
  }

LABEL_12:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_1AE6780F8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 80);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 64);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 48);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 32);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_16;
  }

  if (*(a1 + 23) < 0)
  {
LABEL_16:
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE6782A0(uint64_t a1)
{
  *a1 = &unk_1F242DCC8;
  v2 = *(a1 + 264);
  if (v2)
  {
    *(a1 + 272) = v2;
    operator delete(v2);
  }

  sub_1AE678458((a1 + 192));
  sub_1AE6206F4(*(a1 + 176));
  v3 = *(a1 + 144);
  if (v3)
  {
    do
    {
      v11 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v11;
    }

    while (v11);
  }

  v4 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    do
    {
      v12 = *v5;
      v13 = *(v5 + 5);
      *(v5 + 5) = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      if (v5[39] < 0)
      {
        operator delete(*(v5 + 2));
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  v6 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v7)
  {
    v8 = sub_1AE5CA370(v7);
    MEMORY[0x1B2706400](v8, 0x10F0C4069D522A4);
  }

  v9 = *(a1 + 72);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_26:
    operator delete(*(a1 + 16));
    return a1;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(a1 + 63) < 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (*(a1 + 39) < 0)
  {
    goto LABEL_26;
  }

  return a1;
}

void ***sub_1AE678458(void ***a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v7 = a1[3];
  if (v7)
  {
    a1[4] = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

void sub_1AE678524(uint64_t a1, const __CFDictionary *a2, __int128 *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F242B058;
  v6 = *a3;
  *(a1 + 8) = *a3;
  v7 = *(a3 + 1);
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a3;
    v8 = *(a3 + 1);
    v95 = *a3;
    v96 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v95 = v6;
    v96 = 0;
  }

  sub_1AE68CF18(__p, *v6, 46);
  v9 = *__p;
  v11 = **__p;
  v10 = *(*__p + 8);
  v90 = **__p;
  v91 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *&__p[8];
  if (*&__p[8] == v9)
  {
    v14 = v9;
  }

  else
  {
    do
    {
      v13 = *(v12 - 1);
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v12 -= 16;
    }

    while (v12 != v9);
    v14 = *__p;
    v11 = v90;
  }

  *&__p[8] = v9;
  operator delete(v14);
  if (v11)
  {
    v15 = sub_1AE72BE00(*v11);
    v16 = v91;
    if (!v91)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = 0;
    v16 = v91;
    if (!v91)
    {
      goto LABEL_21;
    }
  }

  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_21:
  if (v96 && !atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v96->__on_zero_shared)(v96);
    std::__shared_weak_count::__release_weak(v96);
  }

  *(a1 + 24) = v15;
  v17 = *a3;
  v18 = *(a3 + 1);
  v93 = *a3;
  v94 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *(a1 + 24);
  }

  sub_1AE68CF18(&v90, *v17, 46);
  v19 = **v90;
  if (v19)
  {
    CFRetain(**v90);
    cf = v19;
    v20 = CFGetTypeID(v19);
    if (v20 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (cf)
    {
      __dst = (a1 + 32);
      v21 = sub_1AE6310D0(cf, language_modeling::v1::kUseForConditionalProbabilityKey);
      if (v21)
      {
        v22 = sub_1AE6311E0(v21);
        if (v22 >= 0x100u && (v22 & 1) != 0)
        {
          if (v15)
          {
            if (qword_1ED9AC5A8 != -1)
            {
              dispatch_once(&qword_1ED9AC5A8, &unk_1F242B118);
            }

            v23 = qword_1ED9AC5B0;
            if (os_log_type_enabled(qword_1ED9AC5B0, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315650;
              *&__p[4] = "determineModelType";
              *&__p[12] = 2080;
              *&__p[14] = language_modeling::v1::kLanguageModelTypeToucan;
              v102 = 2080;
              v103 = language_modeling::v1::kUseForConditionalProbabilityKey;
              _os_log_impl(&dword_1AE5C8000, v23, OS_LOG_TYPE_DEFAULT, "%s: Running model type %s since LD has set key %s to true and the architecture is not LSTM based", __p, 0x20u);
            }

            v24 = language_modeling::v1::kLanguageModelTypeToucan;
            v25 = strlen(language_modeling::v1::kLanguageModelTypeToucan);
            if (v25 <= 0x7FFFFFFFFFFFFFF7)
            {
              v26 = v25;
              if (v25 >= 0x17)
              {
                operator new();
              }

              goto LABEL_88;
            }
          }

          else
          {
            if (qword_1ED9AC5A8 != -1)
            {
              dispatch_once(&qword_1ED9AC5A8, &unk_1F242B118);
            }

            v48 = qword_1ED9AC5B0;
            if (os_log_type_enabled(qword_1ED9AC5B0, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315650;
              *&__p[4] = "determineModelType";
              *&__p[12] = 2080;
              *&__p[14] = language_modeling::v1::kLanguageModelTypeToucanCPU;
              v102 = 2080;
              v103 = language_modeling::v1::kUseForConditionalProbabilityKey;
              _os_log_impl(&dword_1AE5C8000, v48, OS_LOG_TYPE_DEFAULT, "%s: Running model type %s since LD has set key %s to true and the architecture is LSTM based", __p, 0x20u);
            }

            v24 = language_modeling::v1::kLanguageModelTypeToucanCPU;
            v49 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
            if (v49 <= 0x7FFFFFFFFFFFFFF7)
            {
              v26 = v49;
              if (v49 >= 0x17)
              {
                operator new();
              }

LABEL_88:
              *(a1 + 55) = v26;
              if (v26)
              {
                memmove(__dst, v24, v26);
              }

              *(__dst + v26) = 0;
              v60 = cf;
              if (cf)
              {
                goto LABEL_144;
              }

LABEL_145:
              v63 = v90;
              if (v90)
              {
                v64 = v91;
                v65 = v90;
                if (v91 != v90)
                {
                  do
                  {
                    shared_weak_owners = v64[-1].__shared_weak_owners_;
                    if (shared_weak_owners && !atomic_fetch_add(&shared_weak_owners->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (shared_weak_owners->__on_zero_shared)(shared_weak_owners);
                      std::__shared_weak_count::__release_weak(shared_weak_owners);
                    }

                    v64 = (v64 - 16);
                  }

                  while (v64 != v63);
                  v65 = v90;
                }

                v91 = v63;
                operator delete(v65);
              }

              v67 = v94;
              if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v67->__on_zero_shared)(v67);
                std::__shared_weak_count::__release_weak(v67);
              }

              v68 = MEMORY[0x1B2705500](*(*(a1 + 8) + 8));
              v69 = v68;
              if (v68)
              {
                CFRetain(v68);
                *__p = v69;
                v70 = CFGetTypeID(v69);
                if (v70 != CFStringGetTypeID())
                {
                  v87 = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x1B2705EB0](v87, "Could not construct");
                  __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v71 = *__p;
                if (*__p)
                {
                  TypeID = CFStringGetTypeID();
                  if (TypeID == CFGetTypeID(v71))
                  {
                    sub_1AE5CAD24((a1 + 56), v71);
                    if (*__p)
                    {
                      CFRelease(*__p);
                    }

                    sub_1AE7700A8((a1 + 80), (a1 + 56));
                    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
                    *__p = MutableCopy;
                    v74 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
                    v75 = v74;
                    v76 = *(a1 + 55);
                    if ((v76 & 0x8000000000000000) != 0)
                    {
                      v80 = *(a1 + 40);
                      if (v74 != v80)
                      {
                        v78 = language_modeling::v1::kLanguageModelTypeToucan;
                        v76 = *(a1 + 40);
                        if (strlen(language_modeling::v1::kLanguageModelTypeToucan) != v80)
                        {
LABEL_185:
                          v83 = *__p;
                          v92 = *a3;
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          sub_1AE6ED890(a1 + 104, v83, &v92);
                        }

                        goto LABEL_177;
                      }

                      if (v74 == -1)
                      {
                        sub_1AE61F754();
                      }

                      v77 = *__dst;
                    }

                    else
                    {
                      v77 = (a1 + 32);
                      if (v75 != v76)
                      {
                        v78 = language_modeling::v1::kLanguageModelTypeToucan;
                        v79 = strlen(language_modeling::v1::kLanguageModelTypeToucan);
LABEL_171:
                        v81 = (a1 + 32);
                        if (v79 != v76)
                        {
                          goto LABEL_185;
                        }

                        goto LABEL_179;
                      }
                    }

                    if (!memcmp(v77, language_modeling::v1::kLanguageModelTypeToucanCPU, v75))
                    {
                      goto LABEL_183;
                    }

                    v78 = language_modeling::v1::kLanguageModelTypeToucan;
                    v79 = strlen(language_modeling::v1::kLanguageModelTypeToucan);
                    if ((v76 & 0x80000000) == 0)
                    {
                      goto LABEL_171;
                    }

                    v76 = *(a1 + 40);
                    if (v79 != v76)
                    {
                      goto LABEL_185;
                    }

LABEL_177:
                    if (v76 == -1)
                    {
                      sub_1AE61F754();
                    }

                    v81 = *__dst;
LABEL_179:
                    if (memcmp(v81, v78, v76))
                    {
                      goto LABEL_185;
                    }

                    if (qword_1ED9AC530 != -1)
                    {
                      dispatch_once(&qword_1ED9AC530, &unk_1F242D9B0);
                    }

                    if (byte_1EB5E0A58 != 1)
                    {
                      sub_1AE5CF628(__dst, language_modeling::v1::kLanguageModelTypeTokenID);
                      goto LABEL_185;
                    }

LABEL_183:
                    v82 = *MEMORY[0x1E695E4C0];
                    CFDictionarySetValue(MutableCopy, kLMLanguageModelUseMontrealKey, *MEMORY[0x1E695E4C0]);
                    CFDictionarySetValue(MutableCopy, kLMLanguageModelUseLegacyStaticNgramModelsKey, v82);
                    goto LABEL_185;
                  }

                  v86 = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x1B2705EB0](v86, "Could not convert");
LABEL_193:
                  __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              else
              {
                *__p = 0;
              }

              v86 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x1B2705EB0](v86, "Could not construct");
              goto LABEL_193;
            }
          }

          sub_1AE5DB4F0();
        }
      }

      v27 = strlen(language_modeling::v1::kLanguageModelForConditionalProbabilityKey);
      if (language_modeling::v1::kLanguageModelForConditionalProbabilityKey)
      {
        v28 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelForConditionalProbabilityKey, v27, 0x8000100u, 0);
        *__p = v28;
        if (!v28)
        {
          v29 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](v29, "Could not construct");
          __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v28 = 0;
        *__p = 0;
      }

      Value = CFDictionaryGetValue(a2, v28);
      if (*__p)
      {
        CFRelease(*__p);
      }

      sub_1AE67ADB0(&__s1, Value);
      v31 = strlen(language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey);
      if (language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey)
      {
        v32 = CFStringCreateWithBytes(0, language_modeling::v1::kLanguageModelForConditionalProbabilityUserSettingKey, v31, 0x8000100u, 0);
        *__p = v32;
        if (!v32)
        {
          v33 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](v33, "Could not construct");
          __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        v32 = 0;
        *__p = 0;
      }

      v34 = CFDictionaryGetValue(a2, v32);
      if (*__p)
      {
        CFRelease(*__p);
      }

      sub_1AE67ADB0(buf, v34);
      v35 = language_modeling::v1::kLanguageModelTypeToucan;
      v36 = strlen(language_modeling::v1::kLanguageModelTypeToucan);
      v37 = v36;
      v38 = v99;
      if ((v99 & 0x8000000000000000) != 0)
      {
        if (v36 != v98)
        {
          v40 = language_modeling::v1::kLanguageModelTypeToucanCPU;
          v38 = v98;
          if (strlen(language_modeling::v1::kLanguageModelTypeToucanCPU) != v98)
          {
            goto LABEL_117;
          }

          goto LABEL_67;
        }

        if (v36 == -1)
        {
          sub_1AE61F754();
        }

        v39 = __s1;
      }

      else
      {
        if (v36 != v99)
        {
          v40 = language_modeling::v1::kLanguageModelTypeToucanCPU;
          if (strlen(language_modeling::v1::kLanguageModelTypeToucanCPU) != v99)
          {
            goto LABEL_117;
          }

LABEL_63:
          p_s1 = &__s1;
          goto LABEL_69;
        }

        v39 = &__s1;
      }

      if (!memcmp(v39, language_modeling::v1::kLanguageModelTypeToucan, v37))
      {
        goto LABEL_70;
      }

      v40 = language_modeling::v1::kLanguageModelTypeToucanCPU;
      v41 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
      if ((v38 & 0x80000000) == 0)
      {
        if (v41 != v38)
        {
          goto LABEL_117;
        }

        goto LABEL_63;
      }

      v38 = v98;
      if (v41 != v98)
      {
        goto LABEL_117;
      }

LABEL_67:
      if (v38 == -1)
      {
        sub_1AE61F754();
      }

      p_s1 = __s1;
LABEL_69:
      if (memcmp(p_s1, v40, v38))
      {
        goto LABEL_117;
      }

LABEL_70:
      v43 = v106;
      if ((v106 & 0x8000000000000000) != 0)
      {
        if (v37 != v105)
        {
          v45 = language_modeling::v1::kLanguageModelTypeToucanDisabled;
          v43 = v105;
          if (strlen(language_modeling::v1::kLanguageModelTypeToucanDisabled) != v105)
          {
LABEL_103:
            if (qword_1ED9AC530 != -1)
            {
              dispatch_once(&qword_1ED9AC530, &unk_1F242D9B0);
            }

            if (byte_1EB5E0A58 == 1)
            {
              if (!cf)
              {
                v88 = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x1B2705EB0](v88, "Could not construct");
                __cxa_throw(v88, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              v54 = sub_1AE6310D0(cf, language_modeling::v1::kSupportsConditionalProbabilityKey);
              if (v54)
              {
                v55 = sub_1AE6311E0(v54);
                if (v55 >= 0x100u && (v55 & 1) != 0)
                {
                  if (qword_1ED9AC5A8 != -1)
                  {
                    dispatch_once(&qword_1ED9AC5A8, &unk_1F242B118);
                  }

                  v56 = qword_1ED9AC5B0;
                  if (os_log_type_enabled(qword_1ED9AC5B0, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 136315650;
                    *&__p[4] = "determineModelType";
                    *&__p[12] = 2080;
                    *&__p[14] = language_modeling::v1::kLanguageModelTypeToucanCPU;
                    v102 = 2080;
                    v103 = language_modeling::v1::kSupportsConditionalProbabilityKey;
                    _os_log_impl(&dword_1AE5C8000, v56, OS_LOG_TYPE_DEFAULT, "%s: Running model type %s since device is H13ANE and LD has set key %s to true", __p, 0x20u);
                  }

                  v51 = language_modeling::v1::kLanguageModelTypeToucanCPU;
                  v57 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
                  if (v57 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_194;
                  }

                  v53 = v57;
                  if (v57 >= 0x17)
                  {
                    operator new();
                  }

                  goto LABEL_123;
                }
              }
            }

LABEL_117:
            if (qword_1ED9AC5A8 != -1)
            {
              dispatch_once(&qword_1ED9AC5A8, &unk_1F242B118);
            }

            v58 = qword_1ED9AC5B0;
            if (os_log_type_enabled(qword_1ED9AC5B0, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "determineModelType";
              *&__p[12] = 2080;
              *&__p[14] = language_modeling::v1::kLanguageModelTypeTokenID;
              _os_log_impl(&dword_1AE5C8000, v58, OS_LOG_TYPE_DEFAULT, "%s: Falling back to default model type %s", __p, 0x16u);
            }

            v51 = language_modeling::v1::kLanguageModelTypeTokenID;
            v59 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
            if (v59 <= 0x7FFFFFFFFFFFFFF7)
            {
              v53 = v59;
              if (v59 >= 0x17)
              {
                operator new();
              }

              goto LABEL_123;
            }

LABEL_194:
            sub_1AE5DB4F0();
          }

          goto LABEL_100;
        }

        if (v37 == -1)
        {
          sub_1AE61F754();
        }

        v44 = *buf;
      }

      else
      {
        if (v37 != v106)
        {
          v45 = language_modeling::v1::kLanguageModelTypeToucanDisabled;
          if (strlen(language_modeling::v1::kLanguageModelTypeToucanDisabled) != v106)
          {
            goto LABEL_103;
          }

LABEL_81:
          v47 = buf;
LABEL_102:
          if (memcmp(v47, v45, v43))
          {
            goto LABEL_103;
          }

          if (qword_1ED9AC5A8 != -1)
          {
            dispatch_once(&qword_1ED9AC5A8, &unk_1F242B118);
          }

          v61 = qword_1ED9AC5B0;
          if (os_log_type_enabled(qword_1ED9AC5B0, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "determineModelType";
            *&__p[12] = 2080;
            *&__p[14] = language_modeling::v1::kLanguageModelTypeTokenID;
            _os_log_impl(&dword_1AE5C8000, v61, OS_LOG_TYPE_DEFAULT, "%s: Running model type %s since user toggled internal preference", __p, 0x16u);
          }

          v51 = language_modeling::v1::kLanguageModelTypeTokenID;
          v62 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
          if (v62 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_194;
          }

          v53 = v62;
          if (v62 >= 0x17)
          {
            operator new();
          }

LABEL_123:
          *(a1 + 55) = v53;
          if (v53)
          {
            memmove(__dst, v51, v53);
          }

          *(__dst + v53) = 0;
          if (v106 < 0)
          {
            operator delete(*buf);
            if ((v99 & 0x80000000) == 0)
            {
LABEL_129:
              v60 = cf;
              if (!cf)
              {
                goto LABEL_145;
              }

              goto LABEL_144;
            }
          }

          else if ((v99 & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          operator delete(__s1);
          v60 = cf;
          if (!cf)
          {
            goto LABEL_145;
          }

LABEL_144:
          CFRelease(v60);
          goto LABEL_145;
        }

        v44 = buf;
      }

      if (!memcmp(v44, v35, v37))
      {
        if (qword_1ED9AC5A8 != -1)
        {
          dispatch_once(&qword_1ED9AC5A8, &unk_1F242B118);
        }

        v50 = qword_1ED9AC5B0;
        if (os_log_type_enabled(qword_1ED9AC5B0, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "determineModelType";
          *&__p[12] = 2080;
          *&__p[14] = language_modeling::v1::kLanguageModelTypeToucanCPU;
          _os_log_impl(&dword_1AE5C8000, v50, OS_LOG_TYPE_DEFAULT, "%s: Running model type %s since user toggled internal preference", __p, 0x16u);
        }

        v51 = language_modeling::v1::kLanguageModelTypeToucanCPU;
        v52 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
        if (v52 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_194;
        }

        v53 = v52;
        if (v52 >= 0x17)
        {
          operator new();
        }

        goto LABEL_123;
      }

      v45 = language_modeling::v1::kLanguageModelTypeToucanDisabled;
      v46 = strlen(language_modeling::v1::kLanguageModelTypeToucanDisabled);
      if ((v43 & 0x80000000) == 0)
      {
        if (v46 != v43)
        {
          goto LABEL_103;
        }

        goto LABEL_81;
      }

      v43 = v105;
      if (v46 != v105)
      {
        goto LABEL_103;
      }

LABEL_100:
      if (v43 == -1)
      {
        sub_1AE61F754();
      }

      v47 = *buf;
      goto LABEL_102;
    }
  }

  else
  {
    cf = 0;
  }

  v84 = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x1B2705EB0](v84, "Could not construct");
  __cxa_throw(v84, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AE67A16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AE67A568(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v4 = a2;
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
    a2 = v4;
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 4) = 0;
  *(__dst + 3) = __dst + 32;
  *(__dst + 5) = 0;
  v5 = *(a2 + 3);
  v6 = (a2 + 2);
  if (v5 != (a2 + 2))
  {
    do
    {
      if (!*sub_1AE620BA4(__dst + 3, __dst + 4, &v12, &v11, v5 + 4))
      {
        sub_1AE67ACD8();
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }

  return __dst;
}

void sub_1AE67A6B0(_Unwind_Exception *a1)
{
  sub_1AE6206F4(*(v1 + 32));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE67A6D4(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  if (!a1[2])
  {
    goto LABEL_16;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = v6[1] ? v6[1] : v6;
  v43 = v9;
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v41 = *(v10 + 1);
        if (!v41)
        {
          break;
        }

        do
        {
          v10 = v41;
          v41 = *v41;
        }

        while (v41);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v42 = v10;
  if (a2 != a3)
  {
    v13 = a2;
    while (1)
    {
      if (v9 != v13)
      {
        v14 = *(v13 + 55);
        if (*(v9 + 55) < 0)
        {
          if (v14 >= 0)
          {
            v16 = v13 + 4;
          }

          else
          {
            v16 = v13[4];
          }

          if (v14 >= 0)
          {
            v17 = *(v13 + 55);
          }

          else
          {
            v17 = v13[5];
          }

          sub_1AE621B84((v9 + 4), v16, v17);
        }

        else if ((*(v13 + 55) & 0x80) != 0)
        {
          sub_1AE621AB4(v9 + 32, v13[4], v13[5]);
        }

        else
        {
          v15 = *(v13 + 2);
          v9[6] = v13[6];
          *(v9 + 2) = v15;
        }

        v18 = *(v13 + 79);
        if (*(v9 + 79) < 0)
        {
          if (v18 >= 0)
          {
            v20 = v13 + 7;
          }

          else
          {
            v20 = v13[7];
          }

          if (v18 >= 0)
          {
            v21 = *(v13 + 79);
          }

          else
          {
            v21 = v13[8];
          }

          sub_1AE621B84((v9 + 7), v20, v21);
        }

        else if ((*(v13 + 79) & 0x80) != 0)
        {
          sub_1AE621AB4(v9 + 56, v13[7], v13[8]);
        }

        else
        {
          v19 = *(v13 + 7);
          v9[9] = v13[9];
          *(v9 + 7) = v19;
        }
      }

      v22 = *v8;
      v23 = a1 + 1;
      v24 = a1 + 1;
      if (*v8)
      {
        v25 = *(v43 + 55);
        if (v25 >= 0)
        {
          v26 = v43 + 4;
        }

        else
        {
          v26 = v43[4];
        }

        if (v25 >= 0)
        {
          v27 = *(v43 + 55);
        }

        else
        {
          v27 = v43[5];
        }

        while (1)
        {
          v23 = v22;
          v30 = v22[4];
          v28 = v22 + 4;
          v29 = v30;
          v31 = *(v28 + 23);
          if (v31 >= 0)
          {
            v32 = v28;
          }

          else
          {
            v32 = v29;
          }

          if (v31 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = v28[1];
          }

          if (v33 >= v27)
          {
            v34 = v27;
          }

          else
          {
            v34 = v33;
          }

          v35 = memcmp(v26, v32, v34);
          if (v35)
          {
            if (v35 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v22 = v23[1];
            if (!v22)
            {
              v24 = v23 + 1;
              break;
            }
          }

          else
          {
            if (v27 >= v33)
            {
              goto LABEL_64;
            }

LABEL_50:
            v22 = *v23;
            v24 = v23;
            if (!*v23)
            {
              break;
            }
          }
        }
      }

      *v43 = 0;
      v43[1] = 0;
      v43[2] = v23;
      *v24 = v43;
      v36 = **a1;
      if (v36)
      {
        *a1 = v36;
      }

      sub_1AE5DC4B4(a1[1], v43);
      a1[2] = (a1[2] + 1);
      v9 = v42;
      v43 = v42;
      if (v42)
      {
        v10 = *(v42 + 2);
        if (v10)
        {
          v37 = *v10;
          if (*v10 == v42)
          {
            *v10 = 0;
            while (1)
            {
              v40 = *(v10 + 1);
              if (!v40)
              {
                break;
              }

              do
              {
                v10 = v40;
                v40 = *v40;
              }

              while (v40);
            }
          }

          else
          {
            for (*(v10 + 1) = 0; v37; v37 = *(v10 + 1))
            {
              do
              {
                v10 = v37;
                v37 = *v37;
              }

              while (v37);
            }
          }
        }

        v42 = v10;
        v38 = v13[1];
        if (v38)
        {
          do
          {
LABEL_77:
            v4 = v38;
            v38 = *v38;
          }

          while (v38);
          goto LABEL_81;
        }
      }

      else
      {
        v10 = 0;
        v38 = v13[1];
        if (v38)
        {
          goto LABEL_77;
        }
      }

      do
      {
        v4 = v13[2];
        v39 = *v4 == v13;
        v13 = v4;
      }

      while (!v39);
LABEL_81:
      if (v9)
      {
        v13 = v4;
        if (v4 != a3)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_1AE6206F4(v9);
  if (v10)
  {
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    sub_1AE6206F4(v10);
  }

LABEL_16:
  if (v4 != a3)
  {
    sub_1AE67ACD8();
  }
}

void sub_1AE67AB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE67AC88(va);
  _Unwind_Resume(a1);
}

void sub_1AE67AB44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = sub_1AE61F018(v5);
          MEMORY[0x1B2706400](v7, 0x1032C4057ACE4D0);
        }
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void sub_1AE67ABE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242B158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

os_log_t sub_1AE67AC58()
{
  result = os_log_create("com.apple.LanguageModeling", "ToucanLanguageModel");
  qword_1ED9AC5B0 = result;
  return result;
}

uint64_t sub_1AE67AC88(uint64_t a1)
{
  sub_1AE6206F4(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1AE6206F4(v2);
  }

  return a1;
}

void sub_1AE67AD84(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_1AE620F48(v1);
  _Unwind_Resume(a1);
}

void sub_1AE67ADB0(uint64_t a1, const __CFString *a2)
{
  if (a2 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    sub_1AE621740(__p, a2);
    v7 = 1;
    if (SHIBYTE(v6) < 0)
    {
      sub_1AE5DBF1C(a1, __p[0], __p[1]);
      if ((v7 & 1) != 0 && SHIBYTE(v6) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a1 = *__p;
      *(a1 + 16) = v6;
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v7 = 0;
    *(a1 + 23) = 0;
    *a1 = 0;
  }
}

void sub_1AE67AEF4()
{
  v0[4] = *MEMORY[0x1E69E9840];
  v0[0] = &unk_1F2431440;
  v0[3] = v0;
  sub_1AE75ED9C();
}

void sub_1AE67AFE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6B35B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE67B004(uint64_t a1, __int128 *a2, void *a3)
{
  v6 = *(a1 + 256);
  if (v6 < 1)
  {
LABEL_19:
    ++*(a1 + 272);
    v42[0] = 0;
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 1);
    }

    v22 = sub_1AE61D700(v20, v21);
    v43 = 0;
    v44 = &v43;
    v46 = 0;
    v45 = 0x2000000000;
    v42[1] = MEMORY[0x1E69E9820];
    v42[2] = 0x40000000;
    v42[3] = sub_1AE75EA84;
    v42[4] = &unk_1E7A2FDF8;
    v42[5] = &v43;
    v42[6] = v22;
    v42[7] = v42;
    LXLexiconEnumerateEntriesForString();
    v23 = *(v44 + 6);
    _Block_object_dispose(&v43, 8);
    v24 = *v42;
    if (v22)
    {
      CFRelease(v22);
    }

    v18 = *(a1 + 224);
    v25 = *(a1 + 232);
    if (v18 != v25)
    {
      while (*v18 != v23 || v18[1] != v24)
      {
        v18 += 2;
        if (v18 == v25)
        {
          goto LABEL_35;
        }
      }
    }

    if (v18 == v25)
    {
LABEL_35:
      v27 = *(a1 + 256);
      v28 = *(a1 + 152);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - v28) >> 3) <= v27)
      {
        if (v27 < 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = 0;
          v30 = *(a1 + 200);
          v31 = *v30;
          for (i = 1; i != v27; ++i)
          {
            v33 = v30[i];
            if (v31 > v33)
            {
              v29 = i;
            }

            if (v31 >= v33)
            {
              v31 = v30[i];
            }
          }
        }
      }

      else
      {
        *(a1 + 256) = v27 + 1;
        v29 = v27;
      }

      v34 = v29;
      v35 = v28 + 24 * v29;
      if (v35 != a2)
      {
        v36 = *(a2 + 23);
        if (*(v35 + 23) < 0)
        {
          if (v36 >= 0)
          {
            v38 = a2;
          }

          else
          {
            v38 = *a2;
          }

          if (v36 >= 0)
          {
            v39 = *(a2 + 23);
          }

          else
          {
            v39 = *(a2 + 1);
          }

          sub_1AE621B84(v35, v38, v39);
        }

        else if ((*(a2 + 23) & 0x80) != 0)
        {
          sub_1AE621AB4(v35, *a2, *(a2 + 1));
        }

        else
        {
          v37 = *a2;
          *(v35 + 16) = *(a2 + 2);
          *v35 = v37;
        }
      }

      v18 = (*(a1 + 176) + 16 * v34);
      *v18 = v23;
      v18[1] = v24;
      v40 = *(a1 + 248) + 1;
      *(a1 + 248) = v40;
      *(*(a1 + 200) + 8 * v34) = v40;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 152);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    if (v9 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    while (1)
    {
      v12 = *(v8 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v8 + 8);
      }

      if (v12 == v10)
      {
        v14 = v13 >= 0 ? v8 : *v8;
        if (!memcmp(v14, v11, v10))
        {
          break;
        }
      }

      ++v7;
      v8 += 24;
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }

    ++*(a1 + 264);
    v15 = *(a1 + 200);
    v16 = *(a1 + 248);
    if (*(v15 + 8 * v7) != v16)
    {
      v17 = v16 + 1;
      *(a1 + 248) = v17;
      *(v15 + 8 * v7) = v17;
    }

    v18 = (*(a1 + 176) + 16 * v7);
  }

  result = *v18;
  if (a3)
  {
    if (result)
    {
      *a3 = *(v18 + 1);
    }
  }

  return result;
}

void sub_1AE67B314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE67B334()
{
  v2 = 0;
  v3 = &v2;
  v5 = 0;
  v4 = 0x2000000000;
  LXLexiconEnumerateEntriesForString();
  v0 = *(v3 + 6);
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1AE67B3F4(void *a1)
{
  sub_1AE67B42C(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE67B42C(void *a1)
{
  *a1 = &unk_1F242B1A8;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    a1[23] = v4;
    operator delete(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    v6 = a1[20];
    v7 = a1[19];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = a1[19];
    }

    a1[20] = v5;
    operator delete(v7);
  }

  v9 = a1[12];
  if (v9)
  {
    a1[13] = v9;
    operator delete(v9);
  }

  v10 = a1[9];
  if (v10)
  {
    a1[10] = v10;
    operator delete(v10);
  }

  v11 = a1[6];
  if (v11)
  {
    a1[7] = v11;
    operator delete(v11);
  }

  v12 = a1[3];
  if (v12)
  {
    v13 = a1[4];
    v14 = a1[3];
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = a1[3];
    }

    a1[4] = v12;
    operator delete(v14);
  }

  v16 = a1[2];
  if (v16)
  {
    CFRelease(v16);
  }

  a1[2] = 0;
  v17 = a1[1];
  if (v17)
  {
    CFRelease(v17);
  }

  a1[1] = 0;
  return a1;
}

__n128 sub_1AE67B590(std::string *a1, char *__s, std::string *a3)
{
  v6 = strlen(__s);
  v7 = std::string::insert(a3, 0, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AE67B5F4()
{
  v7 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED9AC968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC968))
  {
    sub_1AE5CC990(__p, "StaticTokenIDCacheSize");
    qword_1ED9AC7E8 = sub_1AE6F78A4(__p);
    byte_1ED9AC7D0 = v2;
    if (v6 < 0)
    {
      operator delete(*__p);
    }

    __cxa_guard_release(&qword_1ED9AC968);
  }

  if (byte_1ED9AC7D0 != 1)
  {
    return 100;
  }

  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v0 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "StaticTokenIDCacheSize";
    v4 = 2048;
    v5 = qword_1ED9AC7E8;
    _os_log_impl(&dword_1AE5C8000, v0, OS_LOG_TYPE_DEFAULT, "Setting configuration value %s=%zu (overridden by user preferences)", __p, 0x16u);
  }

  return qword_1ED9AC7E8;
}

void sub_1AE67B754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ED9AC968);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE67B784(uint64_t result, unint64_t a2, uint64_t *a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(result + 24) = 0u;
  *(result + 56) = 0u;
  *(result + 40) = 0u;
  v4 = *a3;
  v3 = a3[1];
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  return result;
}