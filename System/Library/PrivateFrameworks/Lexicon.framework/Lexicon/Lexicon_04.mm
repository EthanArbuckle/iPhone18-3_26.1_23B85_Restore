uint64_t sub_1B5D195C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !(*(*a2 + 8))(a2))
  {
    return 0;
  }

  v6 = *(a1 + 568);
  v7 = *(a1 + 576);
  v8 = (a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, a2, a3);
}

uint64_t sub_1B5D19698(uint64_t a1, char *a2)
{
  v4 = sub_1B5D11D28();
  sub_1B5CE410C(__p, a2);
  *(a1 + 8) = sub_1B5D1274C(v4, __p);
  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  pthread_mutex_lock(v4 + 1);
  v5 = *(a1 + 8);
  if (!*(v5 + 8))
  {
    v6 = sub_1B5CE410C(__p, a2);
    if ((v45 & 0x80u) == 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = sub_1B5D129DC(v5, v7, "r");
    v9 = v8;
    if ((v45 & 0x80000000) == 0)
    {
      if (v8)
      {
        goto LABEL_9;
      }

LABEL_29:
      v39 = sub_1B5D02C64(*(a1 + 8) + 48);
      v40 = sub_1B5CE410C(__p, v39);
      if ((v45 & 0x80u) == 0)
      {
        v41 = v40;
      }

      else
      {
        v41 = __p[0];
      }

      if ((v45 & 0x80u) == 0)
      {
        v42 = v45;
      }

      else
      {
        v42 = __p[1];
      }

      sub_1B5CE599C((a1 + 56), v41, v42);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      pthread_mutex_unlock(v4 + 1);
      goto LABEL_38;
    }

    operator delete(__p[0]);
    if ((v9 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_9:
  pthread_mutex_unlock(v4 + 1);
  v10 = *(a1 + 8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *v11;
  if ((32 * *v11) + 0x40000 != v12)
  {
    if (setjmp((a1 + 344)) != 1)
    {
      std::ios_base::clear((a1 + 56 + *(*(a1 + 56) - 24)), 0);
      v31 = sub_1B5CE599C((a1 + 56), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/char_property.cpp", 76);
      v32 = sub_1B5CE599C(v31, "(", 1);
      v33 = MEMORY[0x1B8C87F00](v32, 91);
      v34 = sub_1B5CE599C(v33, ") [", 3);
      v35 = sub_1B5CE599C(v34, "fsize == cmmap_->size()", 23);
      v36 = sub_1B5CE599C(v35, "] ", 2);
      v37 = sub_1B5CE599C(v36, "invalid file size: ", 19);
      v38 = strlen(a2);
      sub_1B5CE599C(v37, a2, v38);
      longjmp((a1 + 344), 1);
    }

LABEL_38:
    v43 = sub_1B5D11D28();
    sub_1B5D11DFC(v43, *(a1 + 8));
    result = 0;
    *(a1 + 8) = 0;
    return result;
  }

  v14 = v11 + 1;
  v15 = *(a1 + 16);
  *(a1 + 24) = v15;
  if (v13)
  {
    v16 = v13;
    v17 = v14;
    do
    {
      v18 = v15;
      v19 = *(a1 + 32);
      if (v18 >= v19)
      {
        v21 = *(a1 + 16);
        v22 = (v18 - v21) >> 3;
        v23 = v22 + 1;
        if ((v22 + 1) >> 61)
        {
          sub_1B5D04FA0();
        }

        v24 = v19 - v21;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          sub_1B5D0F384(v25);
        }

        *(8 * v22) = v17;
        v20 = 8 * v22 + 8;
        v26 = *(a1 + 16);
        v27 = *(a1 + 24) - v26;
        v28 = (8 * v22 - v27);
        memcpy(v28, v26, v27);
        v29 = *(a1 + 16);
        *(a1 + 16) = v28;
        *(a1 + 24) = v20;
        *(a1 + 32) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v18 = v17;
        v20 = (v18 + 1);
      }

      v15 = v20;
      *(a1 + 24) = v20;
      v17 += 8;
      v14 = v17;
      --v16;
    }

    while (v16);
  }

  *(a1 + 40) = v14;
  return 1;
}

void sub_1B5D199DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D19A08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void LXLexiconRepositoryCreateView()
{
  v0 = *MEMORY[0x1E695E480];
  if (qword_1ED833C28 != -1)
  {
    dispatch_once(&qword_1ED833C28, &unk_1F2D578B0);
  }

  *(_CFRuntimeCreateInstance() + 16) = &unk_1F2D559E8;
  operator new();
}

void sub_1B5D1A03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::mutex::unlock(&qword_1ED833928);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D1A104()
{
  if ((atomic_load_explicit(&qword_1ED833968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED833968))
  {
    xmmword_1ED8338F8 = 0u;
    xmmword_1ED833918 = 0u;
    xmmword_1ED8338D8 = 0u;
    *&qword_1ED8338E8 = 0u;
    LODWORD(xmmword_1ED8338F8) = 1065353216;
    *(&xmmword_1ED8338F8 + 8) = 0u;
    *&qword_1ED833910 = 0u;
    DWORD2(xmmword_1ED833918) = 1065353216;
    qword_1ED833928 = 850045863;
    unk_1ED833930 = 0u;
    unk_1ED833940 = 0u;
    unk_1ED833950 = 0u;
    qword_1ED833960 = 0;

    __cxa_guard_release(&qword_1ED833968);
  }
}

uint64_t sub_1B5D1A19C()
{
  qword_1ED833B90 = 0;
  *algn_1ED833B98 = "LXLexicon";
  qword_1ED833BA0 = 0;
  unk_1ED833BA8 = 0;
  qword_1ED833BB0 = sub_1B5D1A1F0;
  unk_1ED833BB8 = 0u;
  unk_1ED833BC8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833B80 = result;
  return result;
}

void LXLexiconRepositoryAddOrUpdate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = LXLexiconCopyName(a1);
  v20 = v3;
  sub_1B5D1A104();
  sub_1B5CE4DD0(v3, __p);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::lock(&qword_1ED833928);
  v22[0] = __p;
  v4 = sub_1B5D4C084(__p);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v4[6];
  v4[5] = v2;
  v4[6] = v1;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = qword_1ED8338E8;
  if (qword_1ED8338E8)
  {
    while (1)
    {
      v7 = v6[6];
      if (!v7 || *(v7 + 8) == -1)
      {
        break;
      }

      v8 = *v6;
LABEL_40:
      v6 = v8;
      if (!v8)
      {
        goto LABEL_41;
      }
    }

    v9 = *(&xmmword_1ED8338D8 + 1);
    v10 = v6[1];
    v11 = vcnt_s8(*(&xmmword_1ED8338D8 + 8));
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      if (v10 >= *(&xmmword_1ED8338D8 + 1))
      {
        v10 %= *(&xmmword_1ED8338D8 + 1);
      }
    }

    else
    {
      v10 &= *(&xmmword_1ED8338D8 + 1) - 1;
    }

    v8 = *v6;
    v12 = *(xmmword_1ED8338D8 + 8 * v10);
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12 != v6);
    if (v13 == &qword_1ED8338E8)
    {
      goto LABEL_55;
    }

    v14 = v13[1];
    if (v11.u32[0] > 1uLL)
    {
      if (v14 >= *(&xmmword_1ED8338D8 + 1))
      {
        v14 %= *(&xmmword_1ED8338D8 + 1);
      }
    }

    else
    {
      v14 &= *(&xmmword_1ED8338D8 + 1) - 1;
    }

    v15 = *v6;
    if (v14 != v10)
    {
LABEL_55:
      if (v8)
      {
        v16 = v8[1];
        if (v11.u32[0] > 1uLL)
        {
          if (v16 >= *(&xmmword_1ED8338D8 + 1))
          {
            v16 %= *(&xmmword_1ED8338D8 + 1);
          }
        }

        else
        {
          v16 &= *(&xmmword_1ED8338D8 + 1) - 1;
        }

        v15 = *v6;
        if (v16 == v10)
        {
          goto LABEL_33;
        }
      }

      *(xmmword_1ED8338D8 + 8 * v10) = 0;
      v15 = *v6;
    }

    if (!v15)
    {
LABEL_39:
      *v13 = v15;
      *v6 = 0;
      --qword_1ED8338F0;
      v22[0] = v6;
      v22[1] = &xmmword_1ED8338D8;
      v23 = 1;
      memset(v24, 0, sizeof(v24));
      sub_1B5D4CC50(v22);
      goto LABEL_40;
    }

LABEL_33:
    v17 = *(v15 + 8);
    if (v11.u32[0] > 1uLL)
    {
      if (v17 >= v9)
      {
        v17 %= v9;
      }
    }

    else
    {
      v17 &= v9 - 1;
    }

    if (v17 != v10)
    {
      *(xmmword_1ED8338D8 + 8 * v17) = v13;
      v15 = *v6;
    }

    goto LABEL_39;
  }

LABEL_41:
  v21[0] = v2;
  v21[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1B5D4C534(__p, v21);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::mutex::unlock(&qword_1ED833928);
    std::__shared_weak_count::__release_weak(v1);
  }

  else
  {
    std::mutex::unlock(&qword_1ED833928);
  }

  if (v19 < 0)
  {
    operator delete(__p[0]);
    if (!v3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v3)
  {
LABEL_50:
    CFRelease(v3);
  }

LABEL_51:
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1B5D1A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::mutex::unlock(&qword_1ED833928);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1B5CE5794(&a16, 0);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t LXCompileUnigramsFileWithError(const __CFString *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a1 && CFStringGetLength(a1))
  {
    atomic_store((a3 & 0x100000) != 0, byte_1EB90CC20);
    atomic_store((a3 & 0x80000) == 0, byte_1EB90C7D0);
    LODWORD(v29[0]) = 0x100000;
    WORD2(v29[0]) = 0;
    BYTE6(v29[0]) = 1;
    v29[1] = 0;
    sub_1B5CDCAAC(v29, "Unigrams", 0, 8u);
    v30 = 0x100000;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0x100000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39[0] = 0;
    v40 = 0x100000;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v6 = getenv("BUILT_PRODUCTS_DIR");
    sub_1B5D5C9B0(valuePtr, v6);
    v7 = getenv("WRAPPER_NAME");
    sub_1B5D5C9B0(v69, v7);
    if (v69[0])
    {
      v8 = *valuePtr == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    if (v8)
    {
      LODWORD(__dst) = 0x100000;
      WORD2(__dst) = 0;
      BYTE6(__dst) = 1;
      v68 = 0;
      sub_1B5CDCAAC(&__dst, "Output", 0, 6u);
    }

    else
    {
      sub_1B5D5DCB4(v64, valuePtr, "/");
      sub_1B5D5DD0C(&__dst, v64, v69);
    }

    sub_1B5D5CBBC(&v30, &__dst);
    if (v68 && BYTE6(__dst) == 1)
    {
      free(v68);
    }

    if (v9 && v66 && v65 == 1)
    {
      free(v66);
    }

    v12 = getenv("SRCROOT");
    sub_1B5D5C9B0(&__dst, v12);
    v13 = getenv("TEXTINPUT_LANGUAGE");
    sub_1B5D5C9B0(&v62, v13);
    v14 = getenv("PRECOMPILED_DATA");
    sub_1B5D5C9B0(&v60, v14);
    sub_1B5D5DCB4(v48, &__dst, "/");
    sub_1B5D5DD0C(v51, v48, &v60);
    sub_1B5D5DCB4(&v54, v51, "/");
    sub_1B5D5DD0C(buf, &v54, &v62);
    sub_1B5D5CBBC(&v35, buf);
    if (*&v57[4] && v57[2] == 1)
    {
      free(*&v57[4]);
    }

    if (v55 && BYTE6(v54) == 1)
    {
      free(v55);
    }

    if (v53 && v52 == 1)
    {
      free(v53);
    }

    if (v50 && v49 == 1)
    {
      free(v50);
    }

    if (v38)
    {
      v15 = v38;
    }

    else
    {
      v15 = v39;
    }

    v16 = mkpath_np(v15, 0x1EDu);
    v17 = v16;
    if (v16)
    {
      if (v16 != 17)
      {
        v18 = atomic_load(byte_1EB90C7D0);
        if (v18)
        {
          v19 = atomic_load(byte_1EB90CC20);
          if (v19)
          {
            v20 = v38;
            v21 = strerror(v16);
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = v39;
            }

            printf("couldn't create directory '%s': %s (%d)", v22, v21, v17);
            putchar(10);
          }

          else
          {
            v23 = sub_1B5D32914();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = v38;
              v25 = strerror(v17);
              if (v24)
              {
                v26 = v24;
              }

              else
              {
                v26 = v39;
              }

              *buf = 136315650;
              *v57 = v26;
              *&v57[8] = 2080;
              *&v57[10] = v25;
              v58 = 1024;
              v59 = v17;
              _os_log_impl(&dword_1B5CDB000, v23, OS_LOG_TYPE_ERROR, "couldn't create directory '%s': %s (%d)", buf, 0x1Cu);
            }
          }
        }
      }
    }

    v27 = getenv("DERIVED_SOURCES_DIR");
    sub_1B5D5C9B0(buf, v27);
    if (*buf)
    {
      sub_1B5D5CABC(&v54, buf);
    }

    else
    {
      LODWORD(v54) = 0x100000;
      WORD2(v54) = 0;
      BYTE6(v54) = 1;
      v55 = 0;
      sub_1B5CDCAAC(&v54, "Deps", 0, 4u);
    }

    sub_1B5D5CBBC(&v40, &v54);
    if (v55 && BYTE6(v54) == 1)
    {
      free(v55);
    }

    if (*&v57[4] && v57[2] == 1)
    {
      free(*&v57[4]);
    }

    if (v61 && BYTE6(v60) == 1)
    {
      free(v61);
    }

    if (v63 && BYTE6(v62) == 1)
    {
      free(v63);
    }

    if (v68 && BYTE6(__dst) == 1)
    {
      free(v68);
    }

    if (v71 && v70 == 1)
    {
      free(v71);
    }

    if (v73)
    {
      if (valuePtr[6] == 1)
      {
        free(v73);
      }
    }

    v46 = 0;
    v47 = 0;
    v45 = a3 | 0x10;
    operator new();
  }

  if (a4)
  {
    v10 = sub_1B5D4E9A0(@"missing source path", 0);
    result = 0;
    *a4 = v10;
  }

  else
  {
    result = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5D1B8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1B5CE5794(va, 0);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1B5D1B8E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D1B900(uint64_t a1)
{
  v2 = *(a1 + 2008);
  if (v2)
  {
    *(a1 + 2016) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1984);
  if (v3)
  {
    *(a1 + 1992) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1936);
  if (v4 && *(a1 + 1934) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 1904);
  if (v5 && *(a1 + 1902) == 1)
  {
    free(v5);
  }

  v6 = *(a1 + 1856);
  if (v6)
  {
    *(a1 + 1864) = v6;
    operator delete(v6);
  }

  sub_1B5D1BB0C(a1 + 1816);
  sub_1B5D1BB70(a1 + 1776);
  *(a1 + 328) = &unk_1F2D558B8;
  sub_1B5D1BBBC(a1 + 1720);
  v7 = *(a1 + 1712);
  if (v7)
  {
    sub_1B5CDD904(v7);
  }

  *(a1 + 328) = &unk_1F2D559C0;
  v8 = *(a1 + 1680);
  if (v8 && *(a1 + 1678) == 1)
  {
    free(v8);
  }

  sub_1B5D1BBBC(a1 + 1624);
  sub_1B5D1BBF8(a1 + 288);
  v9 = *(a1 + 280);
  if (v9)
  {
    sub_1B5D1BC34((v9 + 24));
  }

  v10 = *(a1 + 272);
  if (v10)
  {
    sub_1B5D1BCD4(v10);
  }

  v11 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 256);
  if (v12)
  {
    sub_1B5CDD904(v12);
  }

  v13 = *(a1 + 216);
  if (v13 && *(a1 + 214) == 1)
  {
    free(v13);
  }

  v14 = *(a1 + 184);
  if (v14 && *(a1 + 182) == 1)
  {
    free(v14);
  }

  v15 = *(a1 + 152);
  if (v15 && *(a1 + 150) == 1)
  {
    free(v15);
  }

  v16 = *(a1 + 120);
  if (v16 && *(a1 + 118) == 1)
  {
    free(v16);
  }

  v17 = *(a1 + 88);
  if (v17 && *(a1 + 86) == 1)
  {
    free(v17);
  }

  v18 = *(a1 + 56);
  if (v18 && *(a1 + 54) == 1)
  {
    free(v18);
  }

  v19 = *(a1 + 24);
  if (v19 && *(a1 + 22) == 1)
  {
    free(v19);
  }

  return a1;
}

uint64_t sub_1B5D1BB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1B5D1BB70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t sub_1B5D1BBBC(uint64_t a1)
{
  sub_1B5D1C09C(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1B5D1BBF8(uint64_t a1)
{
  sub_1B5D1C01C(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

atomic_uint *sub_1B5D1BC34(atomic_uint *result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    v3 = (result - 6);
    v4 = *(result - 3);
    if (v4)
    {
      v5 = *(result - 2);
      v6 = *(result - 3);
      if (v5 != v4)
      {
        do
        {
          v8 = *(v5 - 8);
          v5 -= 8;
          v7 = v8;
          if (v8)
          {
            sub_1B5D1BE14(v7 + 84);
          }
        }

        while (v5 != v4);
        v6 = *v3;
      }

      *(v2 - 2) = v4;
      operator delete(v6);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D1BCD4(uint64_t result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (result && add == 1)
  {
    v9[1] = v2;
    v9[2] = v1;
    v9[3] = v3;
    v10 = v4;
    v6 = result;
    v9[0] = (result + 72);
    sub_1B5D1BD90(v9);
    if (*(v6 + 48) >= 0xFu)
    {
      v7 = *(v6 + 56);
      if (v7)
      {
        MEMORY[0x1B8C880C0](v7, 0x1000C8077774924);
      }
    }

    v8 = *(v6 + 32);
    if (v8)
    {
      sub_1B5D1BC34(v8 + 24);
    }

    v9[0] = (v6 + 8);
    sub_1B5D1BD90(v9);

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D1BD90(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
        if (v6)
        {
          sub_1B5D1BCD4();
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D1BE14(uint64_t result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    v16[1] = v2;
    v16[2] = v1;
    v16[3] = v3;
    v17 = v4;
    v5 = result;
    v6 = *(result + 236);
    if (v6)
    {
      sub_1B5CDD904(v6);
    }

    v16[0] = (v5 + 196);
    sub_1B5D1BF88(v16);
    v16[0] = (v5 + 172);
    sub_1B5D1BF88(v16);
    v7 = *(v5 + 156);
    if (v7)
    {
      sub_1B5D1BC34(v7 + 24);
    }

    v8 = *(v5 + 148);
    if (v8)
    {
      sub_1B5D1BC34(v8 + 24);
    }

    v9 = *(v5 + 140);
    if (v9)
    {
      sub_1B5D1BCD4(v9);
    }

    v10 = *(v5 + 116);
    if (v10)
    {
      *(v5 + 124) = v10;
      operator delete(v10);
    }

    if (*(v5 + 92) >= 0xFu)
    {
      v11 = *(v5 + 100);
      if (v11)
      {
        MEMORY[0x1B8C880C0](v11, 0x1000C8077774924);
      }
    }

    if (*(v5 + 68) >= 0xFu)
    {
      v12 = *(v5 + 76);
      if (v12)
      {
        MEMORY[0x1B8C880C0](v12, 0x1000C8077774924);
      }
    }

    if (*(v5 + 52) >= 0xFu)
    {
      v13 = *(v5 + 60);
      if (v13)
      {
        MEMORY[0x1B8C880C0](v13, 0x1000C8077774924);
      }
    }

    v14 = *(v5 + 28);
    if (v14 && *(v5 + 26) == 1)
    {
      free(v14);
    }

    v15 = *(v5 - 76);
    if (v15 && *(v5 - 78) == 1)
    {
      free(v15);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

void sub_1B5D1BF88(void ***a1)
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
        v6 = *(v4 - 3);
        if (v6 && *(v4 - 26) == 1)
        {
          free(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D1C01C(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[4];
      if (v3)
      {
        sub_1B5D1BC34((v3 + 24));
      }

      if (*(v2 + 8) >= 0xFu)
      {
        v4 = v2[3];
        if (v4)
        {
          MEMORY[0x1B8C880C0](v4, 0x1000C8077774924);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void sub_1B5D1C09C(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      if (*(v2 + 8) >= 0xFu)
      {
        v3 = v2[3];
        if (v3)
        {
          MEMORY[0x1B8C880C0](v3, 0x1000C8077774924);
        }
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void sub_1B5D1C10C(uint64_t a1)
{
  sub_1B5CDDF24(a1);
  *(a1 + 1432) = 0u;

  sub_1B5D1C150(a1 + 1392);
}

void sub_1B5D1C150(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1B5D1C09C(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1B5D1C1AC(uint64_t a1)
{
  *a1 = &unk_1F2D558B8;
  sub_1B5D1BBBC(a1 + 1392);
  v2 = *(a1 + 1384);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  *a1 = &unk_1F2D559C0;
  v3 = *(a1 + 1352);
  if (v3 && *(a1 + 1350) == 1)
  {
    free(v3);
  }

  sub_1B5D1BBBC(a1 + 1296);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D1C25C(uint64_t a1)
{
  *a1 = &unk_1F2D558B8;
  sub_1B5D1BBBC(a1 + 1392);
  v2 = *(a1 + 1384);
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  *a1 = &unk_1F2D559C0;
  v3 = *(a1 + 1352);
  if (v3 && *(a1 + 1350) == 1)
  {
    free(v3);
  }

  sub_1B5D1BBBC(a1 + 1296);
  return a1;
}

void LXCompileStemSuffixTokenIDConversionMap(const __CFURL *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = sub_1B5CE52C0(a1, 0);
  operator new();
}

void sub_1B5D1C6E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, __int128 buf)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      sub_1B5D4DCF0(&a19);
      sub_1B5D4DD24(&a20);
      sub_1B5CE57CC(&a21, 0);
      if (a2 == 1)
      {
        v32 = __cxa_begin_catch(a1);
        if (qword_1EB90CA38 != -1)
        {
          dispatch_once(&qword_1EB90CA38, &unk_1F2D578F0);
        }

        v33 = qword_1EB90CA30;
        if (os_log_type_enabled(qword_1EB90CA30, OS_LOG_TYPE_ERROR))
        {
          v34 = (*(*v32 + 16))(v32);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v34;
          _os_log_error_impl(&dword_1B5CDB000, v33, OS_LOG_TYPE_ERROR, "Failed to compile the stem-suffix tokenID conversion map: %s", &buf, 0xCu);
        }

        __cxa_end_catch();
        JUMPOUT(0x1B5D1C598);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

os_log_t sub_1B5D1C968()
{
  result = os_log_create("com.apple.Lexicon", "StemSuffixTokenIDConverter");
  qword_1EB90CA30 = result;
  return result;
}

CFStringRef LXUnigramsCompilerCopyVersion()
{
  v31[2] = *MEMORY[0x1E69E9840];
  sub_1B5CF7CDC(v19);
  v0 = MEMORY[0x1B8C87F10](&v20, 3);
  v1 = sub_1B5CE599C(v0, ".", 1);
  MEMORY[0x1B8C87F10](v1, 21);
  if ((v27 & 0x10) != 0)
  {
    v3 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v3 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v2 = 0;
      v18 = 0;
      goto LABEL_14;
    }

    locale = v22[1].__locale_;
    v3 = v22[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1B5D114C8();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  v18 = v3 - locale;
  if (v2)
  {
    memmove(&__dst, locale, v2);
  }

LABEL_14:
  *(&__dst + v2) = 0;
  if (v18 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1B5D5C9B0(v29, p_dst);
  if (v18 < 0)
  {
    operator delete(__dst);
  }

  v19[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v20 = v6;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v28);
  if (v30)
  {
    v7 = v30;
  }

  else
  {
    v7 = v31;
  }

  v8 = strlen(v7);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1B5D114C8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(v15, v7, v8);
  }

  *(v15 + v9) = 0;
  if ((v16 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v15[1];
  }

  v12 = sub_1B5CDFA10(v10, v11);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v30 && v29[6] == 1)
  {
    free(v30);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1B5D1CD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 96);
  if (v23)
  {
    if (*(v21 - 98) == 1)
    {
      free(v23);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t LXUnigramsCompilerGetSupportedTries()
{
  if (qword_1EB90CA28 != -1)
  {
    dispatch_once(&qword_1EB90CA28, &unk_1F2D578D0);
  }

  return qword_1EB90CA20;
}

void sub_1B5D1CDEC()
{
  v31[1] = *MEMORY[0x1E69E9840];
  qword_1EB90CA20 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v29 = xmmword_1B5DC571C;
  v30 = unk_1B5DC572C;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_1B5CFE668(&v26, &v29, v31, 8uLL);
  v0 = v26;
  v1 = v27;
  if (v26 != v27)
  {
    do
    {
      v25 = *v0;
      sub_1B5CFE4CC(&v25, __p);
      v2 = v21;
      if (v21 >= v22)
      {
        v4 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
        v5 = v4 + 1;
        if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1B5D04FA0();
        }

        if (0x5555555555555556 * ((v22 - v20) >> 3) > v5)
        {
          v5 = 0x5555555555555556 * ((v22 - v20) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 3) >= 0x555555555555555)
        {
          v6 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v6 = v5;
        }

        v31[0] = &v20;
        if (v6)
        {
          sub_1B5CE5E20(&v20, v6);
        }

        v7 = 8 * ((v21 - v20) >> 3);
        v8 = *__p;
        *(v7 + 16) = v24;
        *v7 = v8;
        __p[1] = 0;
        v24 = 0;
        __p[0] = 0;
        v9 = 24 * v4 + 24;
        v10 = (24 * v4 - (v21 - v20));
        memcpy((v7 - (v21 - v20)), v20, v21 - v20);
        v11 = v20;
        v12 = v22;
        v20 = v10;
        v21 = v9;
        v22 = 0;
        *&v30 = v11;
        *(&v30 + 1) = v12;
        *&v29 = v11;
        *(&v29 + 1) = v11;
        sub_1B5CE5E78(&v29);
        v21 = v9;
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v3 = *__p;
        *(v21 + 2) = v24;
        *v2 = v3;
        v21 = v2 + 24;
      }

      ++v0;
    }

    while (v0 != v1);
    v0 = v26;
  }

  if (v0)
  {
    v27 = v0;
    operator delete(v0);
  }

  v13 = v20;
  v14 = v21;
  while (v13 != v14)
  {
    v15 = v13[23];
    if (v15 < 0)
    {
      v16 = *v13;
      v15 = *(v13 + 1);
    }

    else
    {
      v16 = v13;
    }

    v17 = qword_1EB90CA20;
    v18 = sub_1B5CDFA10(v16, v15);
    CFArrayAppendValue(v17, v18);
    v13 += 24;
  }

  *&v29 = &v20;
  sub_1B5CE5D7C(&v29);
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D1D054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  __p = &a9;
  sub_1B5CE5D7C(&__p);
  _Unwind_Resume(a1);
}

void sub_1B5D1E10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, const void *a33, const void *a34, __int16 a35)
{
  sub_1B5D0DD30(&STACK[0x3F8]);
  MEMORY[0x1B8C880C0](v35, 0x1000C8077774924);
  sub_1B5CFBD94(&STACK[0x458], MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C88080](&STACK[0x5F8]);
  sub_1B5D0DB30(&STACK[0x2B8]);
  MEMORY[0x1B8C88080](a20);
  sub_1B5D0DA64(&STACK[0x690]);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_1B5CE5794(&a33, 0);
  sub_1B5CE5794(&a34, 0);
  sub_1B5D0C498(&a35);
  _Unwind_Resume(a1);
}

uint64_t LXCreateWordModerationLexicon(CFDictionaryRef theDict, CFErrorRef *a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E480];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"dataFile");
    if (Value)
    {
      v6 = *v4;
      Copy = CFStringCreateCopy(v6, Value);
      v15 = Copy;
      cf = 0;
      v17[0] = 0;
LABEL_7:
      v9 = sub_1B5CDFCFC(theDict);
      v17[0] = v9;
      if (v9)
      {
        Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v11 = MEMORY[0x1B8C87840](v9);
        CFDictionaryAddValue(Mutable, @"locale", v11);
        cf = LXLexiconCreate(Mutable, a2);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      goto LABEL_10;
    }
  }

  v6 = *v4;
  v8 = CFLocaleCreate(v6, @"root");
  v17[0] = &unk_1F2D5B360;
  v17[3] = v17;
  Copy = sub_1B5CDFEBC(0, v8);
  sub_1B5DA8570(v17);
  if (v8)
  {
    CFRelease(v8);
  }

  v15 = Copy;
  cf = 0;
  v17[0] = 0;
  if (theDict)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (!Copy || !CFStringGetLength(Copy))
  {
    if (a2)
    {
      Instance = 0;
      *a2 = sub_1B5D4E9A0(@"Could not determine the location of the word moderation lexicon file, or one was not provided.", 0);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (qword_1ED833C28 != -1)
  {
    dispatch_once(&qword_1ED833C28, &unk_1F2D57910);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1B5D50360((Instance + 16), v17[0], v15, 0, 0);
  *(Instance + 16) = &unk_1F2D5B3E0;
  *(Instance + 30280) = &unk_1F2D58190;
  *(Instance + 30288) = uspoof_open();
  *(Instance + 30296) = 0;
  if (cf)
  {
    CFRetain(cf);
    sub_1B5D1E6A8((Instance + 30296), cf);
  }

  if (((*(*(Instance + 16) + 16))(Instance + 16, a2) & 1) == 0)
  {
    CFRelease(Instance);
LABEL_20:
    Instance = 0;
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17[0])
  {
    CFRelease(v17[0]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return Instance;
}

void sub_1B5D1E608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1B5CE56B8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D1E6A8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5D1E6E0(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_1B5D1E718()
{
  qword_1ED833B90 = 0;
  *algn_1ED833B98 = "LXLexicon";
  qword_1ED833BA0 = 0;
  unk_1ED833BA8 = 0;
  qword_1ED833BB0 = sub_1B5D1A1F0;
  unk_1ED833BB8 = 0u;
  unk_1ED833BC8 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED833B80 = result;
  return result;
}

void sub_1B5D1E76C(uint64_t a1)
{
  sub_1B5D1E7A4(a1);

  JUMPOUT(0x1B8C880F0);
}

uint64_t sub_1B5D1E7A4(uint64_t a1)
{
  *a1 = &unk_1F2D56460;
  v2 = a1 + 48;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  *(a1 + 48) = *MEMORY[0x1E69E54E8];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 56) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x1B8C88080](a1 + 160);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    (*(*v5 + 336))(v5);
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  return a1;
}

uint64_t sub_1B5D1E97C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_1B5D1E9A8(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 32) |= dword_1B5DC47D8[a2];
  }

  return result;
}

uint64_t sub_1B5D1E9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (v1 >> 1) & 1;
  }
}

double sub_1B5D1E9E4(uint64_t a1, float a2)
{
  result = a2;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1B5D1E9FC(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t sub_1B5D1EA28(uint64_t a1)
{
  v1 = *(*sub_1B5D1EA70(a1) + 136);

  return v1();
}

uint64_t sub_1B5D1EA70(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    operator new();
  }

  return *(a1 + 24);
}

BOOL sub_1B5D1EB20(uint64_t a1)
{
  v1 = (*(*a1 + 312))(a1);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 20) == 9;
    if (*(v1 + 20) == 9)
    {
      break;
    }

    v1 = *(v1 + 40);
    if (!v1)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B5D1EBF0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 8) + 8) + 80);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  if (v4 != v3)
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_1B5CDD904(v6);
      }

      if (v7 == a2)
      {
        break;
      }

      v4 += 2;
      if (v4 == v3)
      {
        v4 = v3;
        break;
      }
    }

    v3 = *(v2 + 16);
  }

  if (v4 == v3)
  {
    return 0;
  }

  v8 = *(*v4 + 656);
  if (v8 != 255)
  {
    v9 = *(v2 + 1360);
    v10 = *(v2 + 1368);
    v11 = *(v2 + 1360);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = ((v10 - v11) << 9) - 1;
    }

    v13 = *(v2 + 1384);
    v14 = *(v2 + 1392) + v13;
    if (v12 == v14)
    {
      if (v13 < 0x1000)
      {
        v16 = *(v2 + 1376);
        v17 = *(v2 + 1352);
        if (v10 - v11 < (v16 - v17))
        {
          operator new();
        }

        if (v16 == v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v16 - v17) >> 2;
        }

        sub_1B5D04F58(v18);
      }

      *(v2 + 1384) = v13 - 4096;
      v24 = *v11;
      *(v2 + 1360) = v11 + 8;
      sub_1B5D083D4((v2 + 1352), &v24);
      v11 = *(v2 + 1360);
      v14 = *(v2 + 1392) + *(v2 + 1384);
    }

    *(*&v11[(v14 >> 9) & 0x7FFFFFFFFFFFF8] + (v14 & 0xFFF)) = v8;
    ++*(v2 + 1392);
    v3 = *(v2 + 16);
  }

  if (v4 + 2 == v3)
  {
    v21 = v4;
  }

  else
  {
    do
    {
      v19 = *(v4 + 1);
      v4[2] = 0;
      v4[3] = 0;
      v20 = v4[1];
      *v4 = v19;
      if (v20)
      {
        sub_1B5CDD904(v20);
      }

      v21 = v4 + 2;
      v22 = v4 + 4;
      v4 += 2;
    }

    while (v22 != v3);
    v3 = *(v2 + 16);
  }

  while (v3 != v21)
  {
    v23 = *(v3 - 1);
    if (v23)
    {
      sub_1B5CDD904(v23);
    }

    v3 -= 2;
  }

  *(v2 + 16) = v21;
  return 1;
}

void sub_1B5D1F1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B5D1F1FC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 8) + 8) + 80);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 != v5)
  {
    while (1)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_1B5CDD904(v6);
      }

      if (v7 == a2)
      {
        break;
      }

      v4 += 2;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = *(v3 + 16);
  }

  if (v4 == v5)
  {
    v9 = a2;
    operator new();
  }

  return 0;
}

uint64_t sub_1B5D1F3BC(uint64_t a1)
{
  v1 = *(*(*(a1 + 8) + 8) + 80);
  v2 = v1[1];
  if (v2 != v1[2])
  {
    do
    {
      v3 = v1[4];
      v4 = v1[5];
      if (v3 != v4)
      {
        do
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            v7 = *v2;
            sub_1B5CDD904(v5);
            if (v7 == v6)
            {
              goto LABEL_9;
            }
          }

          else if (*v2 == v6)
          {
            goto LABEL_9;
          }

          v3 += 2;
        }

        while (v3 != v4);
        v3 = v4;
LABEL_9:
        v4 = v1[5];
      }

      if (v3 == v4)
      {
        v2 += 2;
        v12 = v1[2];
      }

      else
      {
        v8 = v1[2];
        if (v2 + 2 == v8)
        {
          v12 = v2;
        }

        else
        {
          v9 = v2;
          do
          {
            v10 = *(v9 + 1);
            v9[2] = 0;
            v9[3] = 0;
            v11 = v9[1];
            *v9 = v10;
            if (v11)
            {
              sub_1B5CDD904(v11);
            }

            v12 = v9 + 2;
            v13 = v9 + 4;
            v9 += 2;
          }

          while (v13 != v8);
          v8 = v1[2];
        }

        while (v8 != v12)
        {
          v14 = *(v8 - 1);
          if (v14)
          {
            sub_1B5CDD904(v14);
          }

          v8 -= 2;
        }

        v1[2] = v12;
      }
    }

    while (v2 != v12);
  }

  sub_1B5D05DDC(v1 + 4);
  return 1;
}

void sub_1B5D1F4F0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  std::mutex::lock((v1 + 16));
  if (*(v1 + 8))
  {
    *(v1 + 8) = 2;
  }

  std::mutex::unlock((v1 + 16));
}

uint64_t sub_1B5D1F540(uint64_t a1)
{
  v1 = *(*(*(a1 + 8) + 8) + 80);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = 0xFFFFFFFFLL;
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 2;
    v6 = *(v5 + 576);
    if (result == v6)
    {
      v7 = result;
    }

    else
    {
      v7 = -1;
    }

    if (result == -1)
    {
      v7 = v6;
    }

    if (v6 == -1)
    {
      result = result;
    }

    else
    {
      result = v7;
    }
  }

  return result;
}

uint64_t sub_1B5D1F584(uint64_t a1, int a2)
{
  v2 = *(*(*(a1 + 8) + 8) + 80);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; *(v5 + 576) = v7)
  {
    v6 = *v3;
    v3 += 2;
    v5 = v6;
    if (a2 >= ((*(v6 + 616) - *(v6 + 608)) >> 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }
  }

  return 0;
}

uint64_t sub_1B5D1F5E8(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v5 = *(*(*(a1 + 8) + 8) + 80);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  if (v6 != v7)
  {
    v9 = *(a2 + 64);
    while (*(*v6 + 656) != *(a2 + 123))
    {
      v6 += 16;
      if (v6 == v7)
      {
        return *a4;
      }
    }

    (*(**v6 + 168))(v15);
    v10 = v16;
    v12 = v15[0];
    v11 = v15[1];
    if (v16 >= 0)
    {
      v13 = v15;
    }

    else
    {
      v13 = v15[0];
    }

    if (v16 >= 0)
    {
      v11 = v16;
    }

    memcpy(&unk_1EB90C8A0, v13, 2 * v11);
    *a3 = &unk_1EB90C8A0;
    *a4 *= 2;
    if (v10 < 0)
    {
      operator delete(v12);
    }
  }

  return *a4;
}

unint64_t sub_1B5D1F6E0(uint64_t a1, void *__src, size_t __n, int a4, int a5, unsigned int a6, void *__dst, unint64_t a8)
{
  result = 0;
  if (__n && a4)
  {
    if (a6)
    {
      v12 = *(*(*(a1 + 8) + 8) + 80);
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      while (1)
      {
        if (v13 == v14)
        {
          result = 0;
          goto LABEL_12;
        }

        if (*(*v13 + 656) == a5)
        {
          break;
        }

        v13 += 2;
      }

      result = (*(**v13 + 96))(*v13, (a6 >> 4) & 8 | (a6 >> 2) & 4 | (a6 >> 15) & 0x10 | 1, __src, __n, a4 & 0xFFFFFFF, __dst);
LABEL_12:
      if ((result > a8) | result & 1)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else if (a8 >= __n)
    {
      memcpy(__dst, __src, __n);
      return __n;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B5D1F7E4(uint64_t a1)
{
  v1 = sub_1B5D1EA70(a1);
  (*(*v1 + 200))(v1);
  return 0;
}

uint64_t sub_1B5D1F824(uint64_t a1)
{
  v2 = sub_1B5D1EA70(a1);
  (**v2)(v2);
  v3 = sub_1B5D1EA70(a1);
  v4 = (*(*v3 + 200))(v3);
  v5 = v4[2];
  v5[4] = 0;
  v5[5] = 0;
  v6 = v5[1];
  v7 = v5[2];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        v10 = *(v9 - 8);
        if (v10)
        {
          v11 = (v9 + (v10 << 7) - 24);
          v12 = -128 * v10;
          do
          {
            sub_1B5D05220(v11, 0);
            v11 -= 16;
            v12 += 128;
          }

          while (v12);
        }

        MEMORY[0x1B8C880C0](v9 - 16, 0x1070C80FE750B47);
        v6 = v5[1];
        v7 = v5[2];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
  }

  v5[2] = v6;
  v13 = v4[4];
  if (v13)
  {
    v13[4] = 0;
    v13[5] = 0;
    v14 = v13[1];
    v15 = v13[2];
    if (v15 != v14)
    {
      v16 = 0;
      do
      {
        v17 = *(v14 + 8 * v16);
        if (v17)
        {
          MEMORY[0x1B8C880C0](v17, 0x1020C80EDCEB4C7);
          v14 = v13[1];
          v15 = v13[2];
        }

        ++v16;
      }

      while (v16 < (v15 - v14) >> 3);
    }

    v13[2] = v14;
  }

  v18 = v4[6];
  if (v18)
  {
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
  }

  v19 = v4[8];
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v4[8] = 0;
  return 0;
}

uint64_t sub_1B5D1F9E0(uint64_t a1, const UChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(*a1 + 280))(a1) <= 0)
  {
    if (setjmp((a1 + 336)) != 1)
    {
      std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
      v16 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tagger.cpp", 69);
      v17 = sub_1B5CE599C(v16, "(", 1);
      v18 = MEMORY[0x1B8C87F00](v17, 355);
      v19 = sub_1B5CE599C(v18, ") [", 3);
      v20 = sub_1B5CE599C(v19, "lattice_level() >= 1", 20);
      v21 = sub_1B5CE599C(v20, "] ", 2);
      sub_1B5CE599C(v21, "use -l option to obtain N-Best results. e.g., mecab -N10 -l1", 60);
      longjmp((a1 + 336), 1);
    }

    return 0;
  }

  if (a4)
  {
    v14 = sub_1B5D1EA70(a1);
    v15 = (*(*v14 + 152))(v14);
  }

  else
  {
    v15 = (*(*a1 + 24))(a1, a2, a3, a5, a6, a7);
  }

  v22 = v15;
  if (!v15)
  {
    return 0;
  }

  v23 = sub_1B5D1EA70(a1);
  (*(*v23 + 144))(v23, v22);
  First = u_strFindFirst(a2, a3 >> 1, "\t", 1);
  if (First)
  {
    v25 = First - a2;
  }

  else
  {
    v25 = 0;
  }

  if (First)
  {
    v26 = -16;
  }

  else
  {
    v26 = -8;
  }

  v27 = sub_1B5D1EA70(a1);
  v28 = (*(*v27 + 200))(v27);
  v29 = sub_1B5D100B8(v28);
  sub_1B5D21BA4(v29, v22, v25 + a4, v26 + a3);
  return 1;
}

uint64_t sub_1B5D1FC70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if ((*(*a1 + 280))(a1) < 1)
  {
    return 0;
  }

  v12 = sub_1B5D1EA70(a1);
  v13 = v12;
  if (a5)
  {
    v14 = (*(*v12 + 152))(v12);
    goto LABEL_44;
  }

  sub_1B5D203BC(a1);
  if ((a6 & 2) == 0)
  {
    (**v13)(v13);
  }

  if (!a4)
  {
    a4 = 2 * (*(*a2 + 24))(a2);
  }

  (*(*v13 + 80))(v13, a3, a4);
  v15 = *(a1[1] + 8);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v53 = sub_1B5D05790;
  v54 = &unk_1E7C20548;
  v55 = v15;
  std::mutex::lock((v15 + 16));
  *(v15 + 8) = 1;
  std::mutex::unlock((v15 + 16));
  if (((*(*v13 + 168))(v13, 2) & 1) != 0 || (*(*v13 + 168))(v13, 8))
  {
    *(v15 + 120) = sub_1B5D05258;
    *(v15 + 128) = 0;
  }

  if ((*(*v13 + 168))(v13, 4))
  {
    sub_1B5D04490(v13);
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  v17 = (*(*v13 + 64))(v13);
  v49 = (*(*v13 + 88))(v13);
  v18 = (*(*v13 + 40))(v13);
  v51 = (*(*v13 + 32))(v13);
  v19 = (*(*v13 + 200))(v13);
  v20 = (*(*a2 + 24))(a2);
  v21 = *(v15 + 80);
  v22 = sub_1B5D05010(*(v19 + 16));
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = *(v21 + 136);
  *(v22 + 48) = "BOS/EOS";
  *(v22 + 56) = v23;
  *(v22 + 124) = 2;
  *v18 = v22;
  v24 = sub_1B5D04ED0(v22);
  *(v15 + 112) = v24;
  v50 = v17;
  if (v24 != -1)
  {
    if (!v24)
    {
      goto LABEL_41;
    }

    v24 = 0;
  }

  v25 = 2 * v20;
  *(v15 + 116) = v24;
  v26 = (v15 + 116);
  if (2 * v20)
  {
    if (*(v15 + 8) != 2)
    {
      v27 = 0;
      do
      {
        if (v18[v27])
        {
          if (v27 || !*v51)
          {
            v28 = *(v15 + 80);
            if (v50)
            {
              v29 = sub_1B5D0713C(v28, a2, v27, (v50 + v27), v50 + v49, v19, a6);
            }

            else
            {
              v29 = sub_1B5D0713C(v28, a2, v27, 0, 0, v19, a6);
            }

            v51[v27] = v29;
          }

          v30 = *(v15 + 120);
          v31 = *(v15 + 128);
          v32 = (v15 + (v31 >> 1));
          if (v31)
          {
            v30 = *(*v32 + v30);
          }

          if (!v30(v32, v27))
          {
            break;
          }

          if (*v26 != -1 && *v26 >= *(v15 + 112))
          {
            goto LABEL_35;
          }
        }

        v27 += 2;
        if (v25 <= v27)
        {
          goto LABEL_35;
        }
      }

      while (*(v15 + 8) != 2);
    }
  }

  else
  {
LABEL_35:
    v33 = *(v15 + 80);
    v34 = sub_1B5D05010(*(v19 + 16));
    *(v34 + 96) = 0u;
    *(v34 + 112) = 0u;
    *(v34 + 64) = 0u;
    *(v34 + 80) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *v34 = 0u;
    *(v34 + 16) = 0u;
    v35 = *(v33 + 136);
    *(v34 + 48) = "BOS/EOS";
    *(v34 + 56) = v35;
    *(v34 + 124) = 3;
    v51[v25] = v34;
    if (!v18[v25])
    {
      goto LABEL_52;
    }

    v36 = *(v15 + 120);
    v37 = *(v15 + 128);
    v38 = (v15 + (v37 >> 1));
    if (v37)
    {
      v36 = *(*v38 + v36);
    }

    if (v36(v38, v25, v34, v18, v19, v15 + 116))
    {
LABEL_52:
      if ((*(*v13 + 168))(v13, 32, v34))
      {
        sub_1B5D04DB4(v13);
      }

      else
      {
        v47 = (*(*v13 + 24))(v13);
        v48 = *v47;
        if (*v47)
        {
          do
          {
            v48[1] = v47;
            v47 = v48;
            v48 = *v48;
          }

          while (v48);
        }
      }

      v39 = 1;
      goto LABEL_42;
    }
  }

LABEL_41:
  v39 = 0;
LABEL_42:
  a5 = 0;
  v53(v52);
  if (!v39)
  {
    return 0;
  }

  v14 = (*(*v13 + 16))(v13);
LABEL_44:
  v40 = v14;
  if (v14)
  {
    v41 = sub_1B5D1EA70(a1);
    (*(*v41 + 144))(v41, v40);
    v42 = sub_1B5D1EA70(a1);
    v43 = (*(*v42 + 200))(v42);
    v44 = sub_1B5D100B8(v43);
    v45 = (*(*a2 + 24))(a2);
    sub_1B5D21BA4(v44, v40, a5, 2 * v45);
    return 1;
  }

  return 0;
}

uint64_t sub_1B5D203BC(uint64_t a1)
{
  v2 = sub_1B5D1EA70(a1);
  (*(*v2 + 176))(v2, *(a1 + 32));
  v3 = sub_1B5D1EA70(a1);
  v4.n128_u64[0] = *(a1 + 40);
  v4.n128_f32[0] = v4.n128_f64[0];
  v5 = *(*v3 + 112);

  return v5(v4);
}

uint64_t sub_1B5D20448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 280))(a1) < 1)
  {
    return 0;
  }

  if (a4)
  {
    v10 = sub_1B5D1EA70(a1);
    v11 = (*(*v10 + 152))(v10);
  }

  else
  {
    v11 = (*(*a1 + 16))(a1, a2, a3, a5);
  }

  v12 = v11;
  if (!v11)
  {
    return 0;
  }

  v13 = sub_1B5D1EA70(a1);
  (*(*v13 + 144))(v13, v12);
  v14 = sub_1B5D1EA70(a1);
  v15 = (*(*v14 + 200))(v14);
  v16 = sub_1B5D100B8(v15);
  sub_1B5D21BA4(v16, v12, a4, a3);
  return 1;
}

uint64_t sub_1B5D205B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 8);
  result = (*(*a2 + 64))(a2);
  if (result)
  {
    v7 = (*(*a2 + 32))(a2);
    v8 = (*(*a2 + 200))(a2);
    v9 = (*(*a2 + 88))(a2);
    v10 = (*(*a2 + 64))(a2);
    v11 = v10 + v9;
    v12 = *(v5 + 80);
    v13 = sub_1B5D05010(*(v8 + 16));
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 124) = 2;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    v14 = *(v12 + 136);
    *(v13 + 48) = v10;
    *(v13 + 56) = v14;
    *v7 = v13;
    result = sub_1B5D07E40(*(v5 + 80), v10, (v10 + v9), v8, a3);
    if (result)
    {
      v7[2] = result;
      v15 = *(v5 + 80);
      v16 = sub_1B5D05010(*(v8 + 16));
      *(v16 + 96) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 124) = 3;
      *v16 = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0u;
      v17 = *(v15 + 136);
      *(v16 + 48) = v11;
      *(v16 + 56) = v17;
      v7[v9 + 2] = v16;
      v18 = v7[2];
      for (*(v13 + 8) = v18; v18; v18 = *(v18 + 24))
      {
        *(v18 + 8) = v7[*(v18 + 96) + 2];
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1B5D207AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = sub_1B5D1EA70(a1);
    sub_1B5D203BC(a1);
    if ((a4 & 2) == 0)
    {
      (**v8)(v8);
    }

    (*(*v8 + 80))(v8, a2, a3);
    if (sub_1B5D0354C(*(*(a1 + 8) + 8), v8, a4))
    {
      return (*(*v8 + 16))(v8);
    }
  }

  else if (setjmp((a1 + 336)) != 1)
  {
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v9 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tagger.cpp", 69);
    v10 = sub_1B5CE599C(v9, "(", 1);
    v11 = MEMORY[0x1B8C87F00](v10, 173);
    v12 = sub_1B5CE599C(v11, ") [", 3);
    v13 = sub_1B5CE599C(v12, "str", 3);
    v14 = sub_1B5CE599C(v13, "] ", 2);
    sub_1B5CE599C(v14, "NULL pointer is given", 21);
    longjmp((a1 + 336), 1);
  }

  return 0;
}

uint64_t sub_1B5D20994(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = sub_1B5D1EA70(a1);
    sub_1B5D203BC(a1);
    if ((a4 & 2) == 0)
    {
      (**v8)(v8);
    }

    (*(*v8 + 80))(v8, a2, a3);
    if (sub_1B5D0354C(*(*(a1 + 8) + 8), v8, a4))
    {
      return (*(*v8 + 16))(v8);
    }
  }

  else if (setjmp((a1 + 336)) != 1)
  {
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v9 = sub_1B5CE599C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/tagger.cpp", 69);
    v10 = sub_1B5CE599C(v9, "(", 1);
    v11 = MEMORY[0x1B8C87F00](v10, 140);
    v12 = sub_1B5CE599C(v11, ") [", 3);
    v13 = sub_1B5CE599C(v12, "str", 3);
    v14 = sub_1B5CE599C(v13, "] ", 2);
    sub_1B5CE599C(v14, "NULL pointer is given", 21);
    longjmp((a1 + 336), 1);
  }

  return 0;
}

uint64_t sub_1B5D20B6C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 24))(a2);
  v3 = *v2;
  if (*v2)
  {
    do
    {
      v3[1] = v2;
      v2 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_1B5D20BC4(uint64_t a1, void *a2)
{
  if (*(a1 + 8) && (v2 = *(*(*(a1 + 16) + 8) + 80)) != 0)
  {
    return sub_1B5D084D8(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5D20BE8(uint64_t a1)
{
  *a1 = &unk_1F2D56460;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0x3FE8000000000000;
  sub_1B5D0218C((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void sub_1B5D20C4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 336))(v3);
  }

  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1B5D20CC0(uint64_t a1, const char *a2)
{
  v67[19] = *MEMORY[0x1E69E9840];
  v3 = sub_1B5D0D7DC(v65);
  if ((*(v3 + *(v65[0] - 24) + 32) & 5) != 0)
  {
    if (setjmp((a1 + 416)) != 1)
    {
      std::ios_base::clear((a1 + 128 + *(*(a1 + 128) - 24)), 0);
      v43 = sub_1B5CE599C((a1 + 128), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/param.cpp", 68);
      v44 = sub_1B5CE599C(v43, "(", 1);
      v45 = MEMORY[0x1B8C87F00](v44, 138);
      v46 = sub_1B5CE599C(v45, ") [", 3);
      v47 = sub_1B5CE599C(v46, "ifs", 3);
      v48 = sub_1B5CE599C(v47, "] ", 2);
      v49 = sub_1B5CE599C(v48, "no such file or directory: ", 27);
      v50 = strlen(a2);
      sub_1B5CE599C(v49, a2, v50);
      longjmp((a1 + 416), 1);
    }

    v4 = 0;
    goto LABEL_76;
  }

  memset(&v63, 0, sizeof(v63));
  v5 = MEMORY[0x1E69E9830];
  v6 = v65[0];
  while (1)
  {
LABEL_5:
    std::ios_base::getloc((v65 + *(v6 - 24)));
    v7 = std::locale::use_facet(&v62, MEMORY[0x1E69E5318]);
    v8 = (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v62);
    MEMORY[0x1B8C87E10](v9);
    if (v62.__r_.__value_.__s.__data_[0] != 1)
    {
      goto LABEL_22;
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      *v63.__r_.__value_.__l.__data_ = 0;
      v63.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v63.__r_.__value_.__s.__data_[0] = 0;
      *(&v63.__r_.__value_.__s + 23) = 0;
    }

    v10 = 0;
    while (1)
    {
      v11 = *&v66[*(v65[0] - 24) + 24];
      v12 = v11[3];
      if (v12 != v11[4])
      {
        v13 = v11[3];
        v11[3] = v12 + 1;
        v14 = *v12;
        goto LABEL_13;
      }

      v15 = (*(*v11 + 80))(v11);
      v14 = v15;
      if (v15 == -1)
      {
        break;
      }

LABEL_13:
      if (v8 == v14)
      {
        v17 = 0;
        goto LABEL_21;
      }

      std::string::push_back(&v63, v14);
      v16 = ++v10;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = v16;
        if (v63.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
        {
          v17 = 4;
          goto LABEL_21;
        }
      }
    }

    if (v10)
    {
      v17 = 2;
    }

    else
    {
      v17 = 6;
    }

LABEL_21:
    std::ios_base::clear((v65 + *(v65[0] - 24)), *&v66[*(v65[0] - 24) + 16] | v17);
LABEL_22:
    v18 = (*&v66[*(v65[0] - 24) + 16] & 5) != 0;
    if ((*&v66[*(v65[0] - 24) + 16] & 5) != 0)
    {
      goto LABEL_73;
    }

    if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v6 = v65[0];
      if (v63.__r_.__value_.__l.__size_)
      {
        v19 = *v63.__r_.__value_.__l.__data_;
        goto LABEL_28;
      }

      continue;
    }

    v6 = v65[0];
    if (*(&v63.__r_.__value_.__s + 23))
    {
      v19 = v63.__r_.__value_.__s.__data_[0];
LABEL_28:
      v6 = v65[0];
      if (v19 != 59)
      {
        v6 = v65[0];
        if (v19 != 35)
        {
          break;
        }
      }
    }
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v63.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v21 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
    v22 = memchr(v21, 61, size);
    if (v22)
    {
      v23 = v22;
      if (v22 - v21 != -1)
      {
        v24 = v22 - v21 + 1;
        do
        {
          v25 = v24;
          v26 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v63.__r_.__value_.__l.__size_;
          }

          if (v24 >= v26)
          {
            break;
          }

          v27 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
          v28 = v27->__r_.__value_.__s.__data_[v25];
          v29 = (v28 & 0x80000000) != 0 ? __maskrune(v28, 0x4000uLL) : *(v5 + 4 * v28 + 60) & 0x4000;
          v30 = v29;
          v24 = v25 + 1;
        }

        while (v30);
        v31 = &v23[~v21];
        while (1)
        {
          v32 = v31;
          v33 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
          if (v31 < 0)
          {
            break;
          }

          if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v63;
          }

          else
          {
            v34 = v63.__r_.__value_.__r.__words[0];
          }

          v35 = v34->__r_.__value_.__s.__data_[v32];
          if ((v35 & 0x80000000) != 0)
          {
            v36 = __maskrune(v35, 0x4000uLL);
          }

          else
          {
            v36 = *(v5 + 4 * v35 + 60) & 0x4000;
          }

          v37 = v36;
          v31 = v32 - 1;
          if (!v37)
          {
            v38 = v32 + 1;
            v33 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
            goto LABEL_61;
          }
        }

        v38 = v31 + 1;
LABEL_61:
        if ((v33 & 0x80u) == 0)
        {
          v39 = v33;
        }

        else
        {
          v39 = v63.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v62, &v63, v25, v39 - v25, &__p);
        std::string::basic_string(&__p, &v63, 0, v38, &v64);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_1B5D153D8(a1, p_p, &v62, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        v6 = v65[0];
        goto LABEL_5;
      }
    }
  }

  if (setjmp((a1 + 416)) != 1)
  {
    std::ios_base::clear((a1 + 128 + *(*(a1 + 128) - 24)), 0);
    v51 = sub_1B5CE599C((a1 + 128), "/Library/Caches/com.apple.xbs/Sources/Lexicon/Source/MeCab/param.cpp", 68);
    v52 = sub_1B5CE599C(v51, "(", 1);
    v53 = MEMORY[0x1B8C87F00](v52, 146);
    v54 = sub_1B5CE599C(v53, ") [", 3);
    v55 = sub_1B5CE599C(v54, "pos != std::string::npos", 24);
    v56 = sub_1B5CE599C(v55, "] ", 2);
    v57 = sub_1B5CE599C(v56, "format error: ", 14);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v63;
    }

    else
    {
      v58 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v63.__r_.__value_.__l.__size_;
    }

    sub_1B5CE599C(v57, v58, v59);
    longjmp((a1 + 416), 1);
  }

LABEL_73:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  v4 = v18;
LABEL_76:
  v65[0] = *MEMORY[0x1E69E54C8];
  *(v65 + *(v65[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C87DF0](v66);
  std::istream::~istream();
  MEMORY[0x1B8C88080](v67);
  v41 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B5D21490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  __cxa_end_catch();
  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = sub_1B5D1530C(&a26);
  MEMORY[0x1B8C88080](v27 + 424);
  _Unwind_Resume(a1);
}

void sub_1B5D2149C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1B5CE56B8(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B5D214DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  v33 = sub_1B5D1530C(&a32);
  MEMORY[0x1B8C88080](v33 + 424);
  _Unwind_Resume(a1);
}

void sub_1B5D21518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale(&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  v27 = sub_1B5D1530C(&a26);
  MEMORY[0x1B8C88080](v27 + 424);
  _Unwind_Resume(a1);
}

void sub_1B5D21554(uint64_t a1, char *a2, unsigned int *a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  sub_1B5CE410C(v27, a2);
  v5 = *a3;
  sub_1B5CF7CDC(v31);
  memset(&v30, 0, sizeof(v30));
  v6 = MEMORY[0x1B8C87F00](&v32, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    goto LABEL_33;
  }

  MEMORY[0x1B8C87E10](&v37, v31, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    *v30.__r_.__value_.__l.__data_ = 0;
    v30.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    v30.__r_.__value_.__s.__data_[0] = 0;
    *(&v30.__r_.__value_.__s + 23) = 0;
  }

  v7 = (v31 + *(v31[0] - 24));
  width = v7->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v9 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v9 = v7->__width_;
  }

  if (width >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v7);
  v11 = std::locale::use_facet(&v29, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v29);
  if (!v10)
  {
    v19 = v31[0];
    *(&v34[-1].__locale_ + *(v31[0] - 24)) = 0;
    v18 = 4;
    goto LABEL_30;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(&v34[1].__locale_ + *(v31[0] - 24));
    v14 = v13[3];
    if (v14 == v13[4])
    {
      break;
    }

    LOBYTE(v15) = *v14;
LABEL_18:
    if ((v15 & 0x80) == 0 && (*(&v11[1].~facet + (v15 & 0x7F)) & 0x4000) != 0)
    {
      v18 = 0;
      goto LABEL_28;
    }

    std::string::push_back(&v30, v15);
    v16 = *(&v34[1].__locale_ + *(v31[0] - 24));
    v17 = v16[3];
    if (v17 == v16[4])
    {
      (*(*v16 + 80))(v16);
    }

    else
    {
      v16[3] = v17 + 1;
    }

    if (v10 == ++v12)
    {
      v18 = 0;
      v12 = 1;
      goto LABEL_28;
    }
  }

  v15 = (*(*v13 + 72))(v13);
  if (v15 != -1)
  {
    goto LABEL_18;
  }

  v18 = 2;
LABEL_28:
  v19 = v31[0];
  *(&v34[-1].__locale_ + *(v31[0] - 24)) = 0;
  if (!v12)
  {
    v18 |= 4u;
  }

LABEL_30:
  std::ios_base::clear((v31 + *(v19 - 24)), *(&v34[0].__locale_ + *(v19 - 24)) | v18);
LABEL_31:
  if ((*(&v34[0].__locale_ + *(v31[0] - 24)) & 5) != 0 || (sub_1B5D0317C(v31), (*(&v34[0].__locale_ + *(v31[0] - 24)) & 2) == 0))
  {
LABEL_33:
    operator new();
  }

  v38[0] = v30.__r_.__value_.__l.__size_;
  v25 = v30.__r_.__value_.__r.__words[0];
  *(v38 + 7) = *(&v30.__r_.__value_.__r.__words[1] + 7);
  v26 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v31[0] = *MEMORY[0x1E69E54D8];
  v20 = *(MEMORY[0x1E69E54D8] + 72);
  *(v31 + *(v31[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v32 = v20;
  v33 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v34);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C88080](&v36);
  v31[0] = v27;
  v21 = sub_1B5D1558C(a1 + 8, v27);
  v22 = v21;
  if (*(v21 + 79) < 0)
  {
    operator delete(v21[7]);
  }

  v23 = v38[0];
  v22[7] = v25;
  v22[8] = v23;
  *(v22 + 71) = *(v38 + 7);
  *(v22 + 79) = v26;
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B5D21A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a2)
  {
    std::locale::~locale(&a16);
    __cxa_begin_catch(exception_object);
    v25 = a24;
    *(&a24 + *(a24 - 24) + 32) |= 1u;
    if ((*(&a24 + *(v25 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x1B5D217DCLL);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D21BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 2;
  v8 = a1[2];
  v9[8] = 0;
  v9[9] = 0;
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  do
  {
    v10 = a2;
    a2 = *(a2 + 8);
  }

  while (a2);
  sub_1B5D21CE4(v9 + 4);
  v12 = v11;
  *v11 = v10;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  a1[1] = a3;
  v14 = a1[3];
  v13 = a1[4];
  if (v14 >= v13)
  {
    v16 = (v14 - *v9) >> 3;
    if ((v16 + 1) >> 61)
    {
      sub_1B5D04FA0();
    }

    v17 = v13 - *v9;
    v18 = v17 >> 2;
    if (v17 >> 2 <= (v16 + 1))
    {
      v18 = v16 + 1;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      sub_1B5D051D8(v19);
    }

    v20 = (8 * v16);
    *v20 = v12;
    v15 = 8 * v16 + 8;
    v21 = a1[2];
    v22 = a1[3] - v21;
    v23 = v20 - v22;
    memcpy(v20 - v22, v21, v22);
    v24 = a1[2];
    a1[2] = v23;
    a1[3] = v15;
    a1[4] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v14 = v11;
    v15 = (v14 + 1);
  }

  a1[3] = v15;
  v25 = a1[2];

  return sub_1B5D21E2C(v25, v15, (v15 - v25) >> 3);
}

double sub_1B5D21CE4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[4];
  if (v3 == v2)
  {
    v3 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v4 = a1[1];
  if (v1 == (a1[2] - v4) >> 3)
  {
    is_mul_ok(v2, 0x28uLL);
    operator new[]();
  }

  v5 = *(v4 + 8 * v1);
  a1[4] = v3 + 1;
  v6 = v5 + 40 * v3;
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t sub_1B5D21E2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 16);
    if (*(*v4 + 16) > v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 16) > v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t sub_1B5D21E88(char *a1)
{
  if ((atomic_load_explicit(&qword_1EB90CA58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CA58))
  {
    operator new();
  }

  v2 = qword_1EB90CA50;
  pthread_mutex_lock((qword_1EB90CA50 + 8));
  if ((atomic_load_explicit(&qword_1EB90CA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB90CA48))
  {
    operator new();
  }

  sub_1B5D0E3A4(qword_1EB90CA40, a1);

  return pthread_mutex_unlock((v2 + 8));
}

void sub_1B5D21F8C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C880F0](v1, 0x10B3C4049531B19);
  __cxa_guard_abort(&qword_1EB90CA58);
  _Unwind_Resume(a1);
}

void sub_1B5D21FD4(void *a1)
{
  *a1 = &unk_1F2D57940;
  v1 = a1[2];
  if (v1)
  {
    sub_1B5CDD904(v1);
  }

  JUMPOUT(0x1B8C880F0);
}

void *sub_1B5D22040(void *a1)
{
  *a1 = &unk_1F2D57940;
  v2 = a1[2];
  if (v2)
  {
    sub_1B5CDD904(v2);
  }

  return a1;
}

uint64_t sub_1B5D2208C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 8);
  *(a2 + 1);
  v4 = *a2;
  if (*(a3 + 1))
  {
    v5 = *(a3 + 1);
  }

  v6 = *a3;
  result = ucol_strcollUTF8();
  if ((result + 1) >= 3)
  {
    __assert_rtn("compareInCollation", "ICUCollatorWrapper.cpp", 128, "false && invalid return value from ucol_strcollUTF8()");
  }

  return result;
}

void sub_1B5D22140(uint64_t a1@<X0>, UChar32 a2@<W1>, _WORD *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", 73, "c != 0");
  }

  src = a2;
  *pErrorCode = 0;
  u_strFromUTF32(dest, 2, pErrorCode, &src, 1, &pErrorCode[1]);
  if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (qword_1EB90CB20 != -1)
    {
      dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
    }

    v6 = qword_1EB90CB18;
    if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
    {
      v11 = u_errorName(pErrorCode[1]);
      *buf = 67109378;
      v18 = a2;
      v19 = 2080;
      v20 = v11;
      _os_log_error_impl(&dword_1B5CDB000, v6, OS_LOG_TYPE_ERROR, "u_strFromUTF32 failed to convert %u (%s)", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if (!*(a1 + 8))
  {
LABEL_7:
    *a3 = 0;
    goto LABEL_8;
  }

  SortKey = ucol_getSortKey();
  if (SortKey >= 9)
  {
    operator new[]();
  }

  if (SortKey)
  {
    v10 = SortKey - 1;
    if (buf[v10])
    {
      __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", 110, "keyBuffer[key_len - 1] == 0");
    }

    sub_1B5CDD214(a3, v10, buf, SortKey - 1);
  }

  else
  {
    if (qword_1EB90CB20 != -1)
    {
      dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
    }

    v9 = qword_1EB90CB18;
    if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
    {
      *v15 = 67109120;
      v16 = pErrorCode[0];
      _os_log_error_impl(&dword_1B5CDB000, v9, OS_LOG_TYPE_ERROR, "ucol_getSortKey failed compute collation key of string (len=%d)", v15, 8u);
    }

    *a3 = 0;
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B5D22414(uint64_t (***a1)(void, unsigned __int16 *, void), unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    v2 = a2 + 8;
  }

  return (**a1)(a1, v2, *a2);
}

void sub_1B5D22450(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    *a4 = 0;
    goto LABEL_39;
  }

  v5 = a3;
  sub_1B5D22848(&__p, a3);
  *pErrorCode = 0;
  u_strFromUTF8(__p, (v29 - __p) >> 1, pErrorCode, a2, v5, &pErrorCode[1]);
  v8 = pErrorCode[1];
  if (pErrorCode[1] == U_BUFFER_OVERFLOW_ERROR)
  {
    v9 = pErrorCode[0];
    v10 = __p;
    v11 = v29;
    v12 = (v29 - __p) >> 1;
    if (pErrorCode[0] <= v12)
    {
      if (pErrorCode[0] >= v12)
      {
LABEL_17:
        pErrorCode[1] = U_ZERO_ERROR;
        u_strFromUTF8(v10, (v11 - v10) >> 1, pErrorCode, a2, v5, &pErrorCode[1]);
        v8 = pErrorCode[1];
        goto LABEL_18;
      }

      v11 = __p + 2 * pErrorCode[0];
    }

    else
    {
      v13 = pErrorCode[0] - v12;
      if (v13 > (v30 - v29) >> 1)
      {
        if ((pErrorCode[0] & 0x80000000) == 0)
        {
          if (v30 - __p > pErrorCode[0])
          {
            v9 = v30 - __p;
          }

          if ((v30 - __p) >= 0x7FFFFFFFFFFFFFFELL)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v9;
          }

          sub_1B5D0DF78(v14);
        }

        sub_1B5D04FA0();
      }

      bzero(v29, 2 * v13);
      v11 += 2 * v13;
    }

    v29 = v11;
    goto LABEL_17;
  }

LABEL_18:
  if (v8 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    goto LABEL_19;
  }

  if (pErrorCode[0] > ((v29 - __p) >> 1))
  {
    __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", 40, "ustr_len <= ustr.size()");
  }

  if (!*(a1 + 8))
  {
LABEL_19:
    *a4 = 0;
    goto LABEL_37;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (pErrorCode[0])
  {
    if ((pErrorCode[0] & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1B5D04FA0();
  }

  v15 = 0;
  v16 = 0;
  SortKey = ucol_getSortKey();
  if (SortKey)
  {
    sub_1B5D228D4(&v24, SortKey);
    v18 = *(a1 + 8);
    v16 = v24;
    v15 = v25;
    SortKey = ucol_getSortKey();
  }

  if (!SortKey)
  {
    if (qword_1EB90CB20 != -1)
    {
      dispatch_once(&qword_1EB90CB20, &unk_1F2D59740);
    }

    v20 = qword_1EB90CB18;
    if (os_log_type_enabled(qword_1EB90CB18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = pErrorCode[0];
      _os_log_error_impl(&dword_1B5CDB000, v20, OS_LOG_TYPE_ERROR, "ucol_getSortKey failed compute collation key of string (len=%d)", buf, 8u);
    }

    *a4 = 0;
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v15 - v16 < SortKey)
  {
    v22 = "key_len <= key.size()";
    v23 = 60;
    goto LABEL_43;
  }

  v19 = SortKey - 1;
  if (v16[v19])
  {
    v22 = "key[key_len - 1] == 0";
    v23 = 61;
LABEL_43:
    __assert_rtn("computeSortKey", "ICUCollatorWrapper.cpp", v23, v22);
  }

  sub_1B5CDD214(a4, v19, v16, v19);
LABEL_36:
  v25 = v16;
  operator delete(v16);
LABEL_37:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

LABEL_39:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B5D2280C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1B5D22848(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_1B5D0DF78(a2);
    }

    sub_1B5D04FA0();
  }

  return result;
}

void sub_1B5D228B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D228D4(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1B5D04FA0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

id sub_1B5D22A0C(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v44 = a1;
  if (v44)
  {
    v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v44, "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v44;
    v1 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (!v1)
    {
      goto LABEL_37;
    }

    v2 = *v48;
    v3 = *MEMORY[0x1E695D9B0];
    v4 = *MEMORY[0x1E695D9E8];
    v41 = *MEMORY[0x1E695D9E8];
    v42 = *MEMORY[0x1E695D978];
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v48 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * v5);
        v7 = CFGetTypeID(v6);
        if (v7 == CFLocaleGetTypeID())
        {
          v8 = v6;
          v9 = MEMORY[0x1E695DF58];
          v10 = [v8 localeIdentifier];
          v11 = [v9 componentsFromLocaleIdentifier:v10];

          v12 = [v11 objectForKeyedSubscript:v3];
          LODWORD(v10) = v12 == 0;

          if (!v10)
          {
            v13 = [v8 localeIdentifier];
            if ([v13 hasPrefix:@"zh_CN"])
            {

              goto LABEL_13;
            }

            v15 = [v8 localeIdentifier];
            v16 = [v15 hasPrefix:@"zh-CN"];

            if (v16)
            {
LABEL_13:
              v17 = objc_alloc(MEMORY[0x1E695DF58]);
              v18 = @"zh-Hans-CN";
              goto LABEL_14;
            }

            v20 = [v8 localeIdentifier];
            if ([v20 hasPrefix:@"zh_HK"])
            {

              goto LABEL_22;
            }

            v21 = [v8 localeIdentifier];
            v22 = [v21 hasPrefix:@"zh-HK"];

            if (v22)
            {
LABEL_22:
              v17 = objc_alloc(MEMORY[0x1E695DF58]);
              v18 = @"zh-Hant-HK";
              goto LABEL_14;
            }

            v23 = [v8 localeIdentifier];
            if ([v23 hasPrefix:@"zh_TW"])
            {

              goto LABEL_26;
            }

            v24 = [v8 localeIdentifier];
            v25 = [v24 hasPrefix:@"zh-TW"];

            if (v25)
            {
LABEL_26:
              v17 = objc_alloc(MEMORY[0x1E695DF58]);
              v18 = @"zh-Hant-TW";
              goto LABEL_14;
            }

            v26 = [v8 localeIdentifier];
            if ([v26 hasPrefix:@"yue_HK"])
            {

LABEL_30:
              v17 = objc_alloc(MEMORY[0x1E695DF58]);
              v18 = @"yue-Hant-HK";
LABEL_14:
              v14 = [v17 initWithLocaleIdentifier:{v18, v41}];
LABEL_15:
              v19 = v14;
            }

            else
            {
              v27 = [v8 localeIdentifier];
              v28 = [v27 hasPrefix:@"yue-HK"];

              if (v28)
              {
                goto LABEL_30;
              }

              v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v29 = [v11 objectForKeyedSubscript:v3];
              [v43 setObject:v29 forKeyedSubscript:v3];

              v30 = [v11 objectForKeyedSubscript:v42];
              LOBYTE(v29) = v30 == 0;

              if ((v29 & 1) == 0)
              {
                v31 = [v11 objectForKeyedSubscript:v42];
                [v43 setObject:v31 forKeyedSubscript:v42];
              }

              v32 = [v11 objectForKeyedSubscript:{v41, v41}];
              v33 = v32 == 0;

              if (!v33)
              {
                v34 = [v11 objectForKeyedSubscript:v41];
                [v43 setObject:v34 forKeyedSubscript:v41];
              }

              v35 = MEMORY[0x1E695DF58];
              v36 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v43];
              v37 = [v35 canonicalLanguageIdentifierFromString:v36];

              v19 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v37];
            }

            [v45 addObject:v19];
            goto LABEL_17;
          }

          v14 = v8;
          goto LABEL_15;
        }

LABEL_17:
        ++v5;
      }

      while (v1 != v5);
      v38 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      v1 = v38;
      if (!v38)
      {
LABEL_37:

        goto LABEL_39;
      }
    }
  }

  v45 = 0;
LABEL_39:

  v39 = *MEMORY[0x1E69E9840];

  return v45;
}

void *sub_1B5D22FF4(void *result, CFStringRef theString)
{
  if (theString)
  {
    CFStringGetLength(theString);
    operator new[]();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t *sub_1B5D23138(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1B5D23F18((v2 + 136), 0);
    sub_1B5D1E6E0((v2 + 128), 0);
    v6 = (v2 + 104);
    sub_1B5D23F50(&v6);
    v6 = (v2 + 80);
    sub_1B5D1BF88(&v6);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      *(v2 + 40) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      *(v2 + 16) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C880F0);
  }

  return result;
}

uint64_t sub_1B5D23204(uint64_t result)
{
  v1 = result;
  v2 = *(result + 14352);
  if (v2 != -1)
  {
    result = (off_1F2D57988[v2])(&v3, result);
  }

  *(v1 + 14352) = -1;
  return result;
}

uint64_t *sub_1B5D2325C(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1488);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1472);
  *(a2 + 1472) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1464), 0);
  *(a2 + 88) = &unk_1F2D559C0;
  v5 = *(a2 + 1440);
  if (v5 && *(a2 + 1438) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1384);
  *(a2 + 40) = &unk_1F2D5B7D0;
  sub_1B5D132A8((a2 + 48), 0);
  sub_1B5D13120(a2 + 56);
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23364(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1504);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1488);
  *(a2 + 1488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1480), 0);
  *(a2 + 104) = &unk_1F2D559C0;
  v5 = *(a2 + 1456);
  if (v5 && *(a2 + 1454) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1400);
  sub_1B5DB7F4C((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23440(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1504);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1488);
  *(a2 + 1488) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1480), 0);
  *(a2 + 104) = &unk_1F2D559C0;
  v5 = *(a2 + 1456);
  if (v5 && *(a2 + 1454) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1400);
  sub_1B5DB7200((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D2351C(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 2048);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 2032);
  *(a2 + 2032) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 2024), 0);
  *(a2 + 648) = &unk_1F2D559C0;
  v5 = *(a2 + 2000);
  if (v5 && *(a2 + 1998) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1944);
  sub_1B5DB4DE8((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D235F8(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1480);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1464);
  *(a2 + 1464) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1456), 0);
  *(a2 + 80) = &unk_1F2D559C0;
  v5 = *(a2 + 1432);
  if (v5 && *(a2 + 1430) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1376);
  sub_1B5DB387C((a2 + 40));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D236D4(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1544);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1528);
  *(a2 + 1528) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1520), 0);
  *(a2 + 144) = &unk_1F2D559C0;
  v5 = *(a2 + 1496);
  if (v5 && *(a2 + 1494) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1440);
  *(a2 + 40) = &unk_1F2D5E170;
  sub_1B5D752BC((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D237D0(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1520);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1504);
  *(a2 + 1504) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1496), 0);
  *(a2 + 120) = &unk_1F2D559C0;
  v5 = *(a2 + 1472);
  if (v5 && *(a2 + 1470) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1416);
  *(a2 + 40) = &unk_1F2D5DF18;
  sub_1B5D0C050(*(a2 + 104));
  *(a2 + 48) = &unk_1F2D56850;
  sub_1B5D132A8((a2 + 56), 0);
  sub_1B5D13120(a2 + 64);
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23900(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1536);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1520);
  *(a2 + 1520) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1512), 0);
  *(a2 + 136) = &unk_1F2D559C0;
  v5 = *(a2 + 1488);
  if (v5 && *(a2 + 1486) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1432);
  *(a2 + 40) = &unk_1F2D5DC98;
  sub_1B5D0C050(*(a2 + 120));
  sub_1B5D6E2D4((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23A04(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1536);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1520);
  *(a2 + 1520) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1512), 0);
  *(a2 + 136) = &unk_1F2D559C0;
  v5 = *(a2 + 1488);
  if (v5 && *(a2 + 1486) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1432);
  *(a2 + 40) = &unk_1F2D5D658;
  sub_1B5D0C050(*(a2 + 120));
  sub_1B5D5FA24((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23B08(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 2080);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 2064);
  *(a2 + 2064) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 2056), 0);
  *(a2 + 680) = &unk_1F2D559C0;
  v5 = *(a2 + 2032);
  if (v5 && *(a2 + 2030) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1976);
  *(a2 + 40) = &unk_1F2D5D178;
  sub_1B5D0C050(*(a2 + 664));
  sub_1B5D63158((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23C0C(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1576);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1560);
  *(a2 + 1560) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1552), 0);
  *(a2 + 176) = &unk_1F2D559C0;
  v5 = *(a2 + 1528);
  if (v5 && *(a2 + 1526) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1472);
  *(a2 + 40) = &unk_1F2D5C620;
  sub_1B5D0C050(*(a2 + 160));
  *(a2 + 48) = &unk_1F2D5C6F8;
  sub_1B5D752BC((a2 + 56));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23D30(uint64_t a1, uint64_t a2)
{
  sub_1B5DB1C80(a2);
  v3 = *(a2 + 1512);
  if (v3)
  {
    sub_1B5CDD904(v3);
  }

  v4 = *(a2 + 1496);
  *(a2 + 1496) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1B5CE29CC((a2 + 1488), 0);
  *(a2 + 112) = &unk_1F2D559C0;
  v5 = *(a2 + 1464);
  if (v5 && *(a2 + 1462) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a2 + 1408);
  *(a2 + 40) = &unk_1F2D5CC38;
  sub_1B5D0C050(*(a2 + 96));
  sub_1B5D6E334((a2 + 48));
  sub_1B5CE10F4((a2 + 32), 0);

  return sub_1B5CE10F4((a2 + 24), 0);
}

uint64_t *sub_1B5D23E34(uint64_t a1, uint64_t a2)
{
  v3.n128_f64[0] = sub_1B5D93B50(a2);
  v4 = *(a2 + 14344);
  if (v4)
  {
    sub_1B5CDD904(v4);
  }

  v5 = *(a2 + 14320);
  *(a2 + 14320) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, v3);
  }

  sub_1B5CE29CC((a2 + 14312), 0);
  *(a2 + 12920) = &unk_1F2D559C0;
  v6 = *(a2 + 14272);
  if (v6 && *(a2 + 14270) == 1)
  {
    free(v6);
  }

  sub_1B5D1BBBC(a2 + 14216);
  sub_1B5CE10F4((a2 + 8), 0);

  return sub_1B5CE10F4(a2, 0);
}

void sub_1B5D23F18(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1B5D23F50(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v7 = *(v6 - 8);
        v6 -= 8;
        if (v7 >= 0xF)
        {
          v8 = *(v4 - 1);
          if (v8)
          {
            MEMORY[0x1B8C880C0](v8, 0x1000C8077774924);
          }
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B5D24008()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::exception::~exception);
}

uint64_t sub_1B5D240C0(uint64_t a1)
{
  v1 = *(a1 + 14352);
  if (v1 == -1 || (v10 = &v9, (off_1F2D57EF0[v1])(&v10, a1), v3 = *(a1 + 28712), v3 == -1))
  {
    sub_1B5D24008();
  }

  v10 = &v9;
  (off_1F2D57EF0[v3])(&v10, a1 + 14360);
  sub_1B5CDDF24(a1 + 28744);
  v4 = *(a1 + 28728);
  *(a1 + 28720) = 0u;
  if (v4)
  {
    sub_1B5CDD904(v4);
  }

  sub_1B5D23138((a1 + 30120), 0);
  sub_1B5D23138((a1 + 30120), 0);
  *(a1 + 28744) = &unk_1F2D559C0;
  v5 = *(a1 + 30096);
  if (v5 && *(a1 + 30094) == 1)
  {
    free(v5);
  }

  sub_1B5D1BBBC(a1 + 30040);
  v6 = *(a1 + 28736);
  *(a1 + 28736) = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *(a1 + 28728);
  if (v7)
  {
    sub_1B5CDD904(v7);
  }

  sub_1B5D23204(a1 + 14360);
  sub_1B5D23204(a1);
  return a1;
}

uint64_t sub_1B5D2422C(uint64_t a1)
{
  v1 = *(a1 + 14352);
  if (v1 == -1)
  {
    sub_1B5D24008();
  }

  v4 = &v3;
  return (off_1F2D57D30[v1])(&v4, a1);
}

double sub_1B5D24278@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB1B64(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D2441C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24440@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB0DF4(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D245E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24608@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB0DF4(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D247AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D247D0@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DB0364(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24974(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24998@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAFB68(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24B3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24B60@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAF414(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24D04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24D28@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAECBC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D24ECC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D24EF0@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAE0FC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D25094(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D250B8@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAE0FC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D2525C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D25280@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAD92C(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D25424(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D25448@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DAD1DC(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D255EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D25610@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 16);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 20) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 12);
  if (!v8)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 654, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 24);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  result = sub_1B5DACA8C(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "LXWordTrie.cpp", 670, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D257B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

double sub_1B5D257D8@<D0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 20) != 1)
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 12904);
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  v5 = **a1;
  v6 = *(a2 + 14304);
  v7 = v5 - v6;
  if (v5 < v6 || *(a2 + 14308) + v6 <= v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 14300);
  if (!v8)
  {
    __assert_rtn("word_with_id", "TIWordTrie.cpp", 878, "m_word_id_map_offset > 0");
  }

  if ((v4 & 0x20000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  v10 = (v8 + v7 * v9);
  v11 = *(a2 + 8);
  v12 = *v11;
  v13 = v11[1];
  if ((v4 & 0x20000) != 0)
  {
    if (v13 >= v10)
    {
      if (v10 + 4 > v13 && v13 != 0 || v12 == 0)
      {
        goto LABEL_31;
      }

      v16 = bswap32(*(v12 + v10));
      goto LABEL_28;
    }

LABEL_34:
    __assert_rtn("InputStream", "TIDataFile.cpp", 314, "m_offset <= m_size");
  }

  if (v13 < v10)
  {
    goto LABEL_34;
  }

  if (v10 + 3 > v13 && v13 != 0 || v12 == 0)
  {
    goto LABEL_31;
  }

  v16 = (*(v12 + v10) << 16) | (*(v12 + v10 + 1) << 8) | *(v12 + v10 + 2);
LABEL_28:
  if (!v16)
  {
LABEL_31:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0;
    *(a3 + 2) = 16;
    *(a3 + 6) = 0;
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 37) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *&result = 0xFFFFFFFFLL;
    *(a3 + 64) = 0xFFFFFFFFLL;
    *(a3 + 76) = 0;
    return result;
  }

  v20[0] = 0;
  sub_1B5D93A40(a3, a2, v16, &v21, v20);
  if (*(a3 + 60) != v5)
  {
    __assert_rtn("word_with_id", "TIWordTrie.cpp", 893, "result.word_id() == word_id");
  }

  return result;
}

void sub_1B5D2597C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (*(v1 + 6) == 1)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D25A00(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = a4;
  v67 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v42 = *(a4 + 14352);
    if (v42 != -1)
    {
      v59[0] = &v57;
      (off_1F2D57A58[v42])(&v63, v59, a4);
      v59[0] = &v63;
      v59[1] = a2;
      v60 = 0;
      v43 = *(v5 + 14352);
      if (v43 == -1 || (v57 = v59, (off_1F2D57CC8[v43])(&v57, v5), v66 == -1))
      {
        sub_1B5D24008();
      }

      v59[0] = &v57;
      if ((off_1F2D57AC0[v66])(v59, &v63))
      {
        v35 = sub_1B5D262F8(a1, &v63, a2, v5);
      }

      else
      {
        v35 = 0;
      }

      v44 = &v63;
      goto LABEL_91;
    }

LABEL_96:
    sub_1B5D24008();
  }

  v6 = *(a4 + 14352);
  if (v6 == -1)
  {
    goto LABEL_96;
  }

  v63 = &v57;
  (off_1F2D57A58[v6])(v59, &v63, a4);
  v57 = 0;
  v58 = 0uLL;
  v9 = *a2;
  if (v9 <= 0xE)
  {
    v10 = a2 + 2;
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (*a2)
  {
    v11 = 0;
    v51 = a3;
    v52 = &v10[v9];
    v48 = v5;
    do
    {
      v12 = *v10;
      v14 = v57;
      v13 = v58;
      if (v57 != v58)
      {
        do
        {
          sub_1B5D89300(v14, a3, v12);
          v14 += 96;
        }

        while (v14 != v13);
        v14 = v57;
        v13 = v58;
      }

      while (1)
      {
        if (v14 == v13)
        {
          v14 = v13;
          goto LABEL_15;
        }

        if (!sub_1B5D8939C(v14))
        {
          break;
        }

        v14 += 96;
      }

      if (v14 != v13)
      {
        for (i = v14 + 96; i != v13; i += 96)
        {
          if (sub_1B5D8939C(i))
          {
            sub_1B5D87A08(v14, i);
            v14 += 96;
          }
        }
      }

LABEL_15:
      v15 = v58;
      if (v14 != v58)
      {
        while (v15 != v14)
        {
          v15 -= 96;
          sub_1B5D27078(v15);
        }

        *&v58 = v14;
      }

      if (v61 == -1)
      {
        goto LABEL_92;
      }

      v63 = &v54;
      if ((off_1F2D57AC0[v61])(&v63, v59))
      {
        v63 = v59;
        LOBYTE(v64) = v12;
        v16 = *(v5 + 14352);
        if (v16 == -1)
        {
          goto LABEL_92;
        }

        v54.n128_u64[0] = &v63;
        (off_1F2D57B28[v16])(&v54, v5);
      }

      v54.n128_u64[0] = v59;
      v17 = *(v5 + 14352);
      if (v17 == -1)
      {
LABEL_92:
        sub_1B5D24008();
      }

      v63 = &v54;
      ++v11;
      if ((off_1F2D57B90[v17])(&v63, v5))
      {
        v54.n128_u16[0] = 1;
        v54.n128_u8[2] = 32;
        v63 = v59;
        v64 = &v54;
        v18 = *(v5 + 14352);
        if (v18 == -1)
        {
          sub_1B5D24008();
        }

        v62 = &v63;
        (off_1F2D57BF8[v18])(&v55, &v62, v5);
        v50 = v10;
        if (v54.n128_u16[0] >= 0xFu && v54.n128_u64[1])
        {
          MEMORY[0x1B8C880C0](v54.n128_u64[1], 0x1000C8077774924);
        }

        v19 = v55;
        v20 = v56;
        while (v19 != v20)
        {
          LODWORD(v62) = 0;
          if (sub_1B5D4D8B8(a5, *(v19 + 60), &v62, 0))
          {
            sub_1B5D4DA24(&v54, a5, v62);
            if (v54.n128_u16[0])
            {
              v21 = v58;
              if (v58 >= *(&v58 + 1))
              {
                v23 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 5) + 1;
                if (v23 > 0x2AAAAAAAAAAAAAALL)
                {
                  sub_1B5D04FA0();
                }

                if (0x5555555555555556 * ((*(&v58 + 1) - v57) >> 5) > v23)
                {
                  v23 = 0x5555555555555556 * ((*(&v58 + 1) - v57) >> 5);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v58 + 1) - v57) >> 5) >= 0x155555555555555)
                {
                  v24 = 0x2AAAAAAAAAAAAAALL;
                }

                else
                {
                  v24 = v23;
                }

                v66 = &v57;
                if (v24)
                {
                  if (v24 <= 0x2AAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_1B5CE5968();
                }

                v63 = 0;
                v64 = (32 * ((v58 - v57) >> 5));
                v65 = v64;
                sub_1B5D877EC(v64, a3, v59, v11, 0, &v54, 0.0);
                *&v65 = v65 + 96;
                v26 = v57;
                v25 = v58;
                v27 = (v57 + v64 - v58);
                if (v57 != v58)
                {
                  v28 = v11;
                  v29 = 0;
                  v30 = v57;
                  v31 = v57 + v64 - v58;
                  do
                  {
                    sub_1B5D87910(v31, v30);
                    v30 += 96;
                    v31 += 96;
                    v29 -= 96;
                  }

                  while (v30 != v25);
                  v11 = v28;
                  a3 = v51;
                  do
                  {
                    sub_1B5D27078(v26);
                    v26 += 96;
                  }

                  while (v26 != v25);
                }

                v32 = v57;
                v33 = *(&v58 + 1);
                v57 = v27;
                v53 = v65;
                v58 = v65;
                *&v65 = v32;
                *(&v65 + 1) = v33;
                v63 = v32;
                v64 = v32;
                sub_1B5D270D0(&v63);
                v22 = v53;
              }

              else
              {
                sub_1B5D877EC(v58, a3, v59, v11, 0, &v54, 0.0);
                v22 = v21 + 96;
              }

              *&v58 = v22;
              if (v54.n128_u16[0] >= 0xFu && v54.n128_u64[1])
              {
                MEMORY[0x1B8C880C0](v54.n128_u64[1], 0x1000C8077774924);
              }
            }
          }

          v19 += 88;
        }

        v63 = &v55;
        sub_1B5D26264(&v63);
        v5 = v48;
        v10 = v50;
      }

      ++v10;
    }

    while (v10 != v52);
  }

  if (v61 == -1)
  {
    sub_1B5D24008();
  }

  v63 = &v54;
  if (!(off_1F2D57AC0[v61])(&v63, v59) || (v35 = sub_1B5D262F8(a1, v59, a2, v5), !v35))
  {
    v37 = v57;
    v36 = v58;
    if (v57 == v58)
    {
LABEL_81:
      v35 = 0;
    }

    else
    {
      while ((sub_1B5D8939C(v37) & 1) == 0)
      {
LABEL_80:
        v37 += 96;
        if (v37 == v36)
        {
          goto LABEL_81;
        }
      }

      sub_1B5D8ACC0(&v55, v37, a3, a2);
      v38 = v55;
      v39 = v56;
      while (1)
      {
        if (v38 == v39)
        {
          v63 = &v55;
          sub_1B5D26264(&v63);
          goto LABEL_80;
        }

        sub_1B5D33704(&v63, v38);
        v40 = sub_1B5D5DD60(&v63, a1);
        if (v64)
        {
          v41 = BYTE6(v63) == 1;
        }

        else
        {
          v41 = 0;
        }

        if (v41)
        {
          free(v64);
        }

        if (v40)
        {
          break;
        }

        v38 += 88;
      }

      v35 = *(v38 + 60);
      v63 = &v55;
      sub_1B5D26264(&v63);
    }
  }

  v63 = &v57;
  sub_1B5D2641C(&v63);
  v44 = v59;
LABEL_91:
  sub_1B5D264A0(v44);
  v45 = *MEMORY[0x1E69E9840];
  return v35;
}

void sub_1B5D26134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  a20 = &a23;
  sub_1B5D2641C(&a20);
  sub_1B5D264A0(&a26);
  _Unwind_Resume(a1);
}

void sub_1B5D26264(void ***a1)
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
        v6 = *(v4 - 10);
        if (v6 && *(v4 - 82) == 1)
        {
          free(v6);
        }

        v4 -= 88;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D262F8(unsigned __int16 *a1, void **a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v4 = *(a4 + 14352);
  if (v4 == -1)
  {
    sub_1B5D24008();
  }

  v14 = &v15;
  (off_1F2D57BF8[v4])(v13, &v14, a4);
  v6 = v13[0];
  v7 = v13[1];
  while (1)
  {
    if (v6 == v7)
    {
      v10 = 0;
      goto LABEL_14;
    }

    sub_1B5D33704(&v15, v6);
    v8 = sub_1B5D5DD60(&v15, a1);
    if (v16 && BYTE6(v15) == 1)
    {
      free(v16);
    }

    if (v8)
    {
      break;
    }

    v6 += 88;
  }

  v10 = *(v6 + 60);
LABEL_14:
  v15 = v13;
  sub_1B5D26264(&v15);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B5D2641C(void ***a1)
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
        v4 = sub_1B5D27078(v4 - 96);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1B5D264A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_1F2D57C60[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

float sub_1B5D264F8(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *(v3 + 12) != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DB1680(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D265D4(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 11)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAF788(v3, *(a2 + 64), *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D266B0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != 0xFFFFFFFFLL && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DB075C(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D2679C(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAFED4(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D26878(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 8)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAF788(v3, *(a2 + 64), *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D26954(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAF028(v3, a2, *(v10 + v5));
    i = i * 0.0;
  }

  return i;
}

float sub_1B5D26A30(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *(v3 + 12) != -1 && v5 < v6; i = i * sub_1B5DAE958(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26B08(unsigned int ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3[8] != 5)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAC73C(v3, a2, *(v10 + v5));
    i = i * v11;
  }

  return i;
}

float sub_1B5D26BE0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != 0xFFFFFFFFLL && v5 < v6; i = i * sub_1B5DADC08(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26CC8(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; i = i * sub_1B5DAD5C8(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26DA0(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; i = i * sub_1B5DACE78(v3, a2, *(v10 + v5++)))
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }
  }

  return i;
}

float sub_1B5D26E78(unsigned int ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3[8] != 1)
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "LXWordTrie.cpp", 71, "from_depth <= to_depth");
  }

  for (i = 1.0; *v3 != -1 && v5 < v6; ++v5)
  {
    if (*v4 <= 0xEu)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = *(v4 + 1);
    }

    sub_1B5DAC73C(v3, a2, *(v10 + v5));
    i = i * v11;
  }

  return i;
}

float sub_1B5D26F50(char ***a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 8))
  {
    sub_1B5D24008();
  }

  v4 = v2[1];
  v5 = *(v2 + 4);
  v6 = *v4;
  if (v5 > v6)
  {
    __assert_rtn("advance_to_sort_key", "TIWordTrie.cpp", 220, "from_depth <= to_depth");
  }

  v7 = 1.0;
  if ((*v3 & 0x80000000) == 0 && v5 < v6)
  {
    do
    {
      if (*v4 <= 0xEu)
      {
        v9 = (v4 + 2);
      }

      else
      {
        v9 = *(v4 + 1);
      }

      v7 = v7 * sub_1B5D93028(v3, a2, *(v9 + v5));
      if (*v3 < 0)
      {
        break;
      }

      ++v5;
    }

    while (v5 < v6);
  }

  return v7;
}

void sub_1B5D2702C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void sub_1B5D27054(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_1B5D27078(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    v3 = sub_1B5D27078();
    MEMORY[0x1B8C880F0](v3, 0x1032C40198927B0);
  }

  sub_1B5D264A0(a1 + 40);
  sub_1B5D264A0(a1);
  return a1;
}

uint64_t sub_1B5D270D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1B5D27078(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B5D27120(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v20 = 0;
  v8 = *a2 != 1 || *(v4 + 12) == -1 || *v6 == 0;
  if (v8 || (sub_1B5DB144C(a2 + 5, v4, &v20) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v4 + 9) == 1)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v20 & 0x3FFFFFFF;
  if ((v20 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DB14C0((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v26, (a2 + 11), v6);
      if (v26[0])
      {
        sub_1B5D5CABC(v27, v26);
        BYTE4(v30) = 0;
        *(&v30 + 5) = 0;
        v31 = 0u;
        *&v32 = 0xFFFFFFFFLL;
        BYTE8(v32) = 0;
        HIDWORD(v32) = 0;
        v33 = 0;
        LODWORD(v30) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v31) = -1;
        }

        sub_1B5D5CABC(&v21, v27);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v25 = v33;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_29;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v21 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB1B64(v27, a2, v9, &v21, v6);
      v13 = *&v30;
      if (v27[0])
      {
        sub_1B5DACBA8(a3, v27);
      }

      if (v29)
      {
        v14 = v28 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v29);
      }

      v12 = v12 + v13;
      v9 = v21;
      if (!v21)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D27454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D274FC(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 11)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v20 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAF530(a2 + 5, v4, &v20) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v20 & 0x3FFFFFFF;
  if ((v20 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DB0F10((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v26, (a2 + 104), v6);
      if (v26[0])
      {
        sub_1B5D5CABC(v27, v26);
        BYTE4(v30) = 0;
        *(&v30 + 5) = 0;
        v31 = 0u;
        *&v32 = 0xFFFFFFFFLL;
        BYTE8(v32) = 0;
        HIDWORD(v32) = 0;
        v33 = 0;
        LODWORD(v30) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v31) = -1;
        }

        sub_1B5D5CABC(&v21, v27);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v25 = v33;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_29;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v21 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB0DF4(v27, a2, v9, &v21, v6);
      v13 = *&v30;
      if (v27[0])
      {
        sub_1B5DACBA8(a3, v27);
      }

      if (v29)
      {
        v14 = v28 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v29);
      }

      v12 = v12 + v13;
      v9 = v21;
      if (!v21)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D2782C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D278D4(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v20 = 0;
  v8 = *a2 != 1 || *v4 == 0xFFFFFFFFLL || *v6 == 0;
  if (v8 || (sub_1B5DB0480(a2 + 5, v4, &v20) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v20 & 0x3FFFFFFF;
  if ((v20 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DB0518((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v26, (a2 + 13), v6);
      if (v26[0])
      {
        sub_1B5D5CABC(v27, v26);
        BYTE4(v30) = 0;
        *(&v30 + 5) = 0;
        v31 = 0u;
        *&v32 = 0xFFFFFFFFLL;
        BYTE8(v32) = 0;
        HIDWORD(v32) = 0;
        v33 = 0;
        LODWORD(v30) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v31) = -1;
        }

        sub_1B5D5CABC(&v21, v27);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v25 = v33;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_29;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v21 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB0DF4(v27, a2, v9, &v21, v6);
      v13 = *&v30;
      if (v27[0])
      {
        sub_1B5DACBA8(a3, v27);
      }

      if (v29)
      {
        v14 = v28 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v29);
      }

      v12 = v12 + v13;
      v9 = v21;
      if (!v21)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D27C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D27CB0(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v20 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAFC84((a2 + 40), v4, &v20) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v20 & 0x3FFFFFFF;
  if ((v20 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DAFD14((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v26, (a2 + 648), v6);
      if (v26[0])
      {
        sub_1B5D5CABC(v27, v26);
        BYTE4(v30) = 0;
        *(&v30 + 5) = 0;
        v31 = 0u;
        *&v32 = 0xFFFFFFFFLL;
        BYTE8(v32) = 0;
        HIDWORD(v32) = 0;
        v33 = 0;
        LODWORD(v30) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v31) = -1;
        }

        sub_1B5D5CABC(&v21, v27);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v25 = v33;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_29;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v21 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DB0364(v27, a2, v9, &v21, v6);
      v13 = *&v30;
      if (v27[0])
      {
        sub_1B5DACBA8(a3, v27);
      }

      if (v29)
      {
        v14 = v28 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v29);
      }

      v12 = v12 + v13;
      v9 = v21;
      if (!v21)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D27FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28088(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 8)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v20 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAF530(a2 + 5, v4, &v20) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v20 & 0x3FFFFFFF;
  if ((v20 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DAF5C8((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v26, (a2 + 80), v6);
      if (v26[0])
      {
        sub_1B5D5CABC(v27, v26);
        BYTE4(v30) = 0;
        *(&v30 + 5) = 0;
        v31 = 0u;
        *&v32 = 0xFFFFFFFFLL;
        BYTE8(v32) = 0;
        HIDWORD(v32) = 0;
        v33 = 0;
        LODWORD(v30) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v31) = -1;
        }

        sub_1B5D5CABC(&v21, v27);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v25 = v33;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_29;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v21 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAFB68(v27, a2, v9, &v21, v6);
      v13 = *&v30;
      if (v27[0])
      {
        sub_1B5DACBA8(a3, v27);
      }

      if (v29)
      {
        v14 = v28 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v29);
      }

      v12 = v12 + v13;
      v9 = v21;
      if (!v21)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D283B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28460(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  v20 = 0;
  v8 = *a2 != 1 || *v4 == -1 || *v6 == 0;
  if (v8 || (sub_1B5DAEDD8(a2 + 5, v4, &v20) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  v9 = v20 & 0x3FFFFFFF;
  if ((v20 & 0x3FFFFFFF) == 0)
  {
    if ((sub_1B5DAEE68((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v26, (a2 + 18), v6);
      if (v26[0])
      {
        sub_1B5D5CABC(v27, v26);
        BYTE4(v30) = 0;
        *(&v30 + 5) = 0;
        v31 = 0u;
        *&v32 = 0xFFFFFFFFLL;
        BYTE8(v32) = 0;
        HIDWORD(v32) = 0;
        v33 = 0;
        LODWORD(v30) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v31) = -1;
        }

        sub_1B5D5CABC(&v21, v27);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v25 = v33;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_28:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_29;
  }

  v10 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v10 == 1)
  {
    v11 = 0;
    v21 = v9;
    v12 = 0.0;
    do
    {
      sub_1B5DAF414(v27, a2, v9, &v21, v6);
      v13 = *&v30;
      if (v27[0])
      {
        sub_1B5DACBA8(a3, v27);
      }

      if (v29)
      {
        v14 = v28 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        free(v29);
      }

      v12 = v12 + v13;
      v9 = v21;
      if (!v21)
      {
        break;
      }
    }

    while (v11++ < 0xFF);
    v16 = *a3;
    v17 = a3[1];
    v18 = v17 - *a3;
    if (v18 == 88)
    {
      *(v16 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v18 >> 3)) >= 2)
    {
      if (v12 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v16 != v17)
      {
        *(v16 + 32) = *(v16 + 32) / v12;
        v16 += 88;
      }
    }
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B5D28790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  v31 = *(v29 + 8);
  if (v31 && BYTE6(a29) == 1)
  {
    free(v31);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28838(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 6)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *(v4 + 12) == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  *v26 = 0;
  if (!sub_1B5D137A8(a2 + 6, v4, v26) || (~*v26 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (*(v4 + 9) == 1)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((*v26 & 0x400000) != 0 || (v10 = *v26 & 0x1FFFFF, (*v26 & 0x1FFFFF) == 0))
  {
    if ((*v26 & 0x400000) != 0 || (sub_1B5DAE718((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 15), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_12;
  }

  v11 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v11 == 1)
  {
    v12 = 0;
    v20 = v10;
    v13 = 0.0;
    do
    {
      sub_1B5DAECBC(v26, a2, v10, &v20, v6);
      v14 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v15 = v27 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v28);
      }

      v13 = v13 + v14;
      v10 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v12++ < 0xFF);
    v17 = *a3;
    v18 = a3[1];
    v19 = v18 - *a3;
    if (v19 == 88)
    {
      *(v17 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v19 >> 3)) >= 2)
    {
      if (v13 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v17 != v18)
      {
        *(v17 + 32) = *(v17 + 32) / v13;
        v17 += 88;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D28B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D28C28(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 5)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v26 = 0;
  if (!sub_1B5D6EE88(a2 + 6, v4, &v26) || (~v26 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v26 & 0x400000) != 0 || (v10 = v26 & 0x1FFFFF, (v26 & 0x1FFFFF) == 0))
  {
    if ((v26 & 0x400000) != 0 || (sub_1B5DAE218((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 136), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(&v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, &v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_12;
  }

  v11 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v11 == 1)
  {
    v12 = 0;
    v20 = v10;
    v13 = 0.0;
    do
    {
      sub_1B5DAE0FC(&v26, a2, v10, &v20, v6);
      v14 = *&v29;
      if (v26)
      {
        sub_1B5DACBA8(a3, &v26);
      }

      if (v28)
      {
        v15 = v27 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v28);
      }

      v13 = v13 + v14;
      v10 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v12++ < 0xFF);
    v17 = *a3;
    v18 = a3[1];
    v19 = v18 - *a3;
    if (v19 == 88)
    {
      *(v17 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v19 >> 3)) >= 2)
    {
      if (v13 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v17 != v18)
      {
        *(v17 + 32) = *(v17 + 32) / v13;
        v17 += 88;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D28F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29014(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 4)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == 0xFFFFFFFFLL || *v6 == 0)
  {
    goto LABEL_11;
  }

  *v26 = 0;
  if (!sub_1B5D600EC(a2 + 6, v4, v26) || (~*v26 & 0xFFFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((*v26 & 0x400000) != 0 || (v10 = *v26 & 0x1FFFFF, (*v26 & 0x1FFFFF) == 0))
  {
    if ((*v26 & 0x400000) != 0 || (sub_1B5DADA48((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 17), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_12;
  }

  v11 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v11 == 1)
  {
    v12 = 0;
    v20 = v10;
    v13 = 0.0;
    do
    {
      sub_1B5DAE0FC(v26, a2, v10, &v20, v6);
      v14 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v15 = v27 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v28);
      }

      v13 = v13 + v14;
      v10 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v12++ < 0xFF);
    v17 = *a3;
    v18 = a3[1];
    v19 = v18 - *a3;
    if (v19 == 88)
    {
      *(v17 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v19 >> 3)) >= 2)
    {
      if (v13 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v17 != v18)
      {
        *(v17 + 32) = *(v17 + 32) / v13;
        v17 += 88;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D2935C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29404(uint64_t **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 3)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  *v26 = 0;
  if (!sub_1B5D64DE0((a2 + 48), v4, v26) || (~*v26 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((*v26 & 0x400000) != 0 || (v10 = *v26 & 0x1FFFFF, (*v26 & 0x1FFFFF) == 0))
  {
    if ((*v26 & 0x400000) != 0 || (sub_1B5DAD388((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 680), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_12;
  }

  v11 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v11 == 1)
  {
    v12 = 0;
    v20 = v10;
    v13 = 0.0;
    do
    {
      sub_1B5DAD92C(v26, a2, v10, &v20, v6);
      v14 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v15 = v27 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v28);
      }

      v13 = v13 + v14;
      v10 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v12++ < 0xFF);
    v17 = *a3;
    v18 = a3[1];
    v19 = v18 - *a3;
    if (v19 == 88)
    {
      *(v17 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v19 >> 3)) >= 2)
    {
      if (v13 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v17 != v18)
      {
        *(v17 + 32) = *(v17 + 32) / v13;
        v17 += 88;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D29748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D297F0(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 32) != 2)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  *v26 = 0;
  if (!sub_1B5D7601C(a2 + 6, v4, v26) || (~*v26 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((*v26 & 0x400000) != 0 || (v10 = *v26 & 0x1FFFFF, (*v26 & 0x1FFFFF) == 0))
  {
    if ((*v26 & 0x400000) != 0 || (sub_1B5DACCB8((a2 + 5), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 22), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (*(a2 + 6))
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_12;
  }

  v11 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v11 == 1)
  {
    v12 = 0;
    v20 = v10;
    v13 = 0.0;
    do
    {
      sub_1B5DAD1DC(v26, a2, v10, &v20, v6);
      v14 = *&v29;
      if (v26[0])
      {
        sub_1B5DACBA8(a3, v26);
      }

      if (v28)
      {
        v15 = v27 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v28);
      }

      v13 = v13 + v14;
      v10 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v12++ < 0xFF);
    v17 = *a3;
    v18 = a3[1];
    v19 = v18 - *a3;
    if (v19 == 88)
    {
      *(v17 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v19 >> 3)) >= 2)
    {
      if (v13 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v17 != v18)
      {
        *(v17 + 32) = *(v17 + 32) / v13;
        v17 += 88;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D29B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29BDC(unsigned int ***a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (v4[8] != 1)
  {
    sub_1B5D24008();
  }

  v6 = (*a1)[1];
  if (*a2 != 1 || *v4 == -1 || *v6 == 0)
  {
    goto LABEL_11;
  }

  v26 = 0;
  if (!sub_1B5D6EE88(a2 + 6, v4, &v26) || (~v26 & 0x7FFFFF) == 0)
  {
    goto LABEL_11;
  }

  if (!*v4)
  {
    __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 531, "!cursor.is_root()");
  }

  if ((v26 & 0x400000) != 0 || (v10 = v26 & 0x1FFFFF, (v26 & 0x1FFFFF) == 0))
  {
    if ((v26 & 0x400000) != 0 || (sub_1B5DAC57C((a2 + 40), v4) & 1) == 0)
    {
      sub_1B5D80088(v25, (a2 + 112), v6);
      if (v25[0])
      {
        sub_1B5D5CABC(&v26, v25);
        BYTE4(v29) = 0;
        *(&v29 + 5) = 0;
        v30 = 0u;
        *&v31 = 0xFFFFFFFFLL;
        BYTE8(v31) = 0;
        HIDWORD(v31) = 0;
        v32 = 0;
        LODWORD(v29) = 1065353216;
        if (a2[6])
        {
          HIDWORD(v30) = -1;
        }

        sub_1B5D5CABC(&v20, &v26);
        v21 = v29;
        v22 = v30;
        v23 = v31;
        v24 = v32;
        a3[1] = 0;
        a3[2] = 0;
        *a3 = 0;
        sub_1B5D93924();
      }

      __assert_rtn("derive_words_at_cursor", "LXWordTrie.cpp", 542, "!derived_base_form.is_empty()");
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_12;
  }

  v11 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v11 == 1)
  {
    v12 = 0;
    v20 = v10;
    v13 = 0.0;
    do
    {
      sub_1B5DACA8C(&v26, a2, v10, &v20, v6);
      v14 = *&v29;
      if (v26)
      {
        sub_1B5DACBA8(a3, &v26);
      }

      if (v28)
      {
        v15 = v27 == 1;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        free(v28);
      }

      v13 = v13 + v14;
      v10 = v20;
      if (!v20)
      {
        break;
      }
    }

    while (v12++ < 0xFF);
    v17 = *a3;
    v18 = a3[1];
    v19 = v18 - *a3;
    if (v19 == 88)
    {
      *(v17 + 32) = 1065353216;
    }

    else if ((0x2E8BA2E8BA2E8BA3 * (v19 >> 3)) >= 2)
    {
      if (v13 <= 0.0)
      {
        __assert_rtn("derive_words_at_offset", "LXWordTrie.cpp", 616, "termination_prob > 0");
      }

      while (v17 != v18)
      {
        *(v17 + 32) = *(v17 + 32) / v13;
        v17 += 88;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B5D29F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a30 && BYTE6(a29) == 1)
  {
    free(a30);
  }

  if (a26)
  {
    if (a25 == 1)
    {
      free(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5D29FC8(char ***a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  if (*(v4 + 8))
  {
    sub_1B5D24008();
  }

  if (*(a2 + 20) != 1)
  {
    goto LABEL_17;
  }

  if (*v4 < 0)
  {
    goto LABEL_17;
  }

  v6 = (*a1)[1];
  if (!*v6)
  {
    goto LABEL_17;
  }

  v7 = *v4;
  v8 = *(v4 + 2);
  if ((HIBYTE(v8) & 3) >= (v7 + 1))
  {
    goto LABEL_17;
  }

  if (!(v7 | v8))
  {
    if (!v4[24])
    {
      __assert_rtn("derive_words_at_cursor", "TIWordTrie.cpp", 788, "!cursor.is_root()");
    }

    goto LABEL_8;
  }

  if ((v8 & 0x20000000) == 0 || (v9 = *(v4 + 4) & 0x7FFFFFFF) == 0)
  {
    if ((v8 & 0x10000000) != 0)
    {
      goto LABEL_18;
    }

    if ((v8 & 0xFFFFFF) != 0)
    {
LABEL_17:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      v11 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_8:
    if (!v4[20])
    {
      goto LABEL_17;
    }

LABEL_18:
    sub_1B5D80088(v25, a2 + 12920, v6);
    if (!v25[0])
    {
      __assert_rtn("derive_words_at_cursor", "TIWordTrie.cpp", 798, "!derived_base_form.is_empty()");
    }

    sub_1B5D5CABC(v20, v25);
    BYTE4(v21) = 0;
    *(&v21 + 5) = 0;
    v22 = 0u;
    *&v23 = 0xFFFFFFFFLL;
    BYTE8(v23) = 0;
    HIDWORD(v23) = 0;
    v24 = 0;
    LODWORD(v21) = 1065353216;
    if ((*(a2 + 12906) & 1) == 0)
    {
LABEL_31:
      sub_1B5D5CABC(v15, v20);
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      sub_1B5D93924();
    }

    v12 = *(v4 + 2);
    if ((v12 & 0xFFFFFF) != 0)
    {
      if ((v12 & 0x10000000) == 0)
      {
        v13 = 0;
LABEL_30:
        HIDWORD(v22) = v13;
        goto LABEL_31;
      }

      LODWORD(v14) = *(v4 + 4);
    }

    else
    {
      v14 = *(v4 + 2);
      if ((v12 & 0x10000000) == 0)
      {
        v13 = 0;
        if ((v14 & 0xFF00000000) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    if ((v14 & 0x8000) != 0)
    {
      v13 = v14 & 0x7F00 | BYTE2(v14);
    }

    else
    {
      v13 = BYTE1(v14);
    }

    goto LABEL_30;
  }

  v10 = *MEMORY[0x1E69E9840];

  sub_1B5D93724(a3, a2, v9, v6);
}

void sub_1B5D2A288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, void *a26)
{
  if (a13 && a12 == 1)
  {
    free(a13);
  }

  if (a26 && a25 == 1)
  {
    free(a26);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    if (*(v26 - 82) == 1)
    {
      free(v28);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1B5D2A2F8(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 12)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if (*(v3 + 12) == -1 || (*(v3 + 9) & 1) != 0)
  {
    return 0;
  }

  result = sub_1B5DB144C((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A368(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 11)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAF530((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A3D4(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 10)
  {
    sub_1B5D24008();
  }

  v6 = 0;
  if (*v3)
  {
    v4 = *v3 == 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  result = sub_1B5DB0480((a2 + 40), v3, &v6);
  if (result)
  {
    return (HIBYTE(v6) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A444(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 9)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAFC84(a2 + 40, v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A4B0(unsigned int ***a1, uint64_t a2)
{
  v3 = **a1;
  if (v3[8] != 8)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAF530((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}

uint64_t sub_1B5D2A51C(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (*(v3 + 32) != 7)
  {
    sub_1B5D24008();
  }

  v5 = 0;
  if ((*v3 + 1) < 2)
  {
    return 0;
  }

  result = sub_1B5DAEDD8((a2 + 40), v3, &v5);
  if (result)
  {
    return (HIBYTE(v5) >> 6) & 1;
  }

  return result;
}