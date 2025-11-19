CFURLRef CEM::copyResourceURLFromFrameworkBundle(CEM *this, const __CFString *a2, const __CFString *a3, __CFString *a4, const __CFLocale *a5)
{
  FrameworkBundle = CEM::createFrameworkBundle(this);
  if (!FrameworkBundle)
  {
    return 0;
  }

  v11 = FrameworkBundle;
  if (a4)
  {
    v12 = CEM::copyPreferredLocaleIdentifierFromFrameworkBundleWithLocale(FrameworkBundle, a4, v10);
    if (v12)
    {
      v13 = CFBundleCopyResourceURLForLocalization(v11, this, a2, a3, v12);
      CFRelease(v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = CFBundleCopyResourceURL(FrameworkBundle, this, a2, a3);
  }

  CFRelease(v11);
  return v13;
}

void sub_1D2AFCC2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFBundle *>::reset(va);
  _Unwind_Resume(a1);
}

void sub_1D2AFCFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int16 buf, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Block_object_dispose(&buf, 8);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf = 0;
      _os_log_error_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to load emoji.bitmap", &buf, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1D2AFCF0CLL);
  }

  MEMORY[0x1D38A8C00](v35, v34);
  _Unwind_Resume(a1);
}

uint64_t CEM::createFrameworkBundle(CEM *this)
{
  if (CEM::createFrameworkBundle(void)::onceToken != -1)
  {
    dispatch_once(&CEM::createFrameworkBundle(void)::onceToken, &__block_literal_global_36);
  }

  CFRetain(CEM::createFrameworkBundle(void)::frameworkBundle);
  return CEM::createFrameworkBundle(void)::frameworkBundle;
}

void ___ZN3CEM21createFrameworkBundleEv_block_invoke()
{
  Mutable = CFStringCreateMutable(0, 1024);
  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "/", 0x8000100u);
  CFStringAppend(Mutable, v2);
  CFStringAppend(Mutable, @"/System/Library/PrivateFrameworks/CoreEmoji.framework");
  CFRelease(v2);
  v3 = CFURLCreateWithFileSystemPath(v1, Mutable, kCFURLPOSIXPathStyle, 1u);
  CEM::createFrameworkBundle(void)::frameworkBundle = CFBundleCreate(v1, v3);
  if (!CEM::createFrameworkBundle(void)::frameworkBundle)
  {
    __assert_rtn("createFrameworkBundle_block_invoke", "CEMUtilityFunctions.cpp", 276, "frameworkBundle && CoreEmoji framework bundle could not be found.");
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1D2AFD250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void ___ZN3CEM24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIhEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke(void *a1)
{
  if (CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<unsigned char>>::getCache(void)::onceToken != -1)
  {
    dispatch_once(&CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<unsigned char>>::getCache(void)::onceToken, &__block_literal_global_100);
  }

  v2 = CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<unsigned char>>::getCache(void)::cache;
  v3 = a1[6];
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v3);
  v5 = v2[1];
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & v4;
    }

    v10 = *(*v2 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v6)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, v3))
            {
              v13 = v11[6];
              if (v13 && (v13 = std::__shared_weak_count::lock(v13)) != 0)
              {
                v14 = v11[5];
              }

              else
              {
                v14 = 0;
              }

              v15 = *(a1[5] + 8);
              v16 = *(v15 + 48);
              *(v15 + 40) = v14;
              *(v15 + 48) = v13;
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              break;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= *&v5)
              {
                v12 %= *&v5;
              }
            }

            else
            {
              v12 &= *&v5 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v17 = (*(a1[4] + 16))();
    operator new();
  }
}

void sub_1D2AFD978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void CEMEnumerateEmojiTokensInStringWithBlock(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  if (sharedEmojiData(void)::onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
    if (!a1)
    {
      return;
    }
  }

  v6 = sharedEmojiData(void)::data;
  if (sharedEmojiData(void)::data)
  {

    CEM::EmojiToken::enumerateEmojiTokensInStringWithBlock(a1, a2, a3, 0, v6);
  }
}

const __CFString *CEMStringContainsEmoji(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    Length = CFStringGetLength(theString);
    CEMEnumerateEmojiTokensInStringWithBlock(v1, 0, Length);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

void sub_1D2AFDB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CEM::EmojiToken::enumerateEmojiTokensInStringWithBlock(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 **a5)
{
  theString = a1;
  v51 = a2;
  v52 = a3;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    result = 0;
  }

  else
  {
    result = CFStringGetCStringPtr(a1, 0x600u);
  }

  v53 = 0;
  v54 = 0;
  v50 = result;
  if (a3 < 1)
  {
    return result;
  }

  v8 = 0;
  v46 = a5;
  do
  {
    v9 = 0;
    v10 = a5[4];
    v11 = a3;
    if (a3 <= v8)
    {
      v11 = v8;
    }

    v45 = v11;
    v12 = -v8;
    v13 = v8 + 64;
    v14 = 0x100000000;
    v43 = v8;
    v15 = 0;
    do
    {
      v16 = v8 >= 4 ? 4 : v8;
      if (v45 == v8)
      {
        break;
      }

      v17 = v9;
      if (v8 < 0)
      {
        v9 = 0;
        v19 = v46;
      }

      else
      {
        v18 = v52;
        v19 = v46;
        if (v52 <= v8)
        {
          v9 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v20 = &CharactersPtr[v51];
LABEL_17:
            v9 = v20[v8];
            goto LABEL_20;
          }

          if (!v50)
          {
            if (v54 <= v8 || (v29 = v53, v53 > v8))
            {
              v30 = v16 + v12;
              v31 = v13 - v16;
              v32 = v8 - v16;
              v33 = v32 + 64;
              if (v32 + 64 >= v52)
              {
                v33 = v52;
              }

              v53 = v32;
              v54 = v33;
              if (v52 >= v31)
              {
                v18 = v31;
              }

              v55.location = v32 + v51;
              v55.length = v18 + v30;
              CFStringGetCharacters(theString, v55, buffer);
              v29 = v53;
            }

            v20 = &buffer[-v29];
            goto LABEL_17;
          }

          v9 = *(v50 + v51 + v8);
        }
      }

LABEL_20:
      result = CEM::EmojiData::advance(v19, v10, v14, v9);
      if ((v21 & 0x100000000) == 0)
      {
        break;
      }

      v10 = result;
      v14 = v21;
      if ((CEM::EmojiData::isValidIndex(v19, v21) & 1) != 0 || (v9 >> 10 == 55 ? (v22 = (v17 << 10) + v9 - 56613888) : (v22 = v9), !CEM::EmojiData::isLegacyUnqualifiedEmojiCodepoint(v22)))
      {
        v26 = 0;
        goto LABEL_30;
      }

      v23 = v8 + 1;
      if (v8 + 1 >= a3)
      {
        goto LABEL_51;
      }

      if (v8 >= -1)
      {
        v27 = v52;
        v25 = v46;
        if (v52 <= v23)
        {
          v24 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v28 = &CharactersPtr[v51];
          }

          else
          {
            if (v50)
            {
              v24 = *(v50 + v51 + v8 + 1);
              goto LABEL_49;
            }

            if (v54 <= v23 || (v41 = v53, v53 > v23))
            {
              if (v23 >= 4)
              {
                v42 = v8 - 3;
              }

              else
              {
                v42 = 0;
              }

              if (v42 + 64 < v52)
              {
                v27 = v42 + 64;
              }

              v53 = v42;
              v54 = v27;
              v56.length = v27 - v42;
              v56.location = v51 + v42;
              CFStringGetCharacters(theString, v56, buffer);
              v41 = v53;
            }

            v28 = &buffer[-v41];
          }

          v24 = v28[v8 + 1];
        }
      }

      else
      {
        v24 = 0;
        v25 = v46;
      }

LABEL_49:
      v34 = v24;
      CEM::EmojiData::advance(v25, v10, v14, v24);
      v26 = 0;
      if (v34 != 65039 && (v35 & 0x100000000) == 0)
      {
LABEL_51:
        v36 = CEM::EmojiData::advance(v46, v10, v14, 0xFE0Fu);
        v38 = HIDWORD(v37);
        v39 = v37 != 0;
        v40 = v37 & 0xFFFFFFFF0000FFFFLL | (((v37 - 0x10000) >> 16) << 16);
        if ((v38 & v39) != 0)
        {
          v14 = v40;
          v10 = v36;
        }

        v26 = (v14 & 0x100000000) == 0;
      }

LABEL_30:
      result = CEM::EmojiData::isValidIndex(v46, v14);
      if (result)
      {
        v15 = WORD1(v14);
      }

      ++v8;
      --v12;
      ++v13;
    }

    while (!v26);
    if (v15)
    {
      operator new();
    }

    a5 = v46;
    v8 = v43 + 1;
  }

  while (v43 + 1 < a3);
  return result;
}

void sub_1D2AFDFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CEM::EmojiData::advance(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4)
{
  v4 = a2;
  if (a4 && (a3 & 0x100000000) != 0)
  {
    v5 = a2 + 2;
    v6 = *a2;
    v7 = &a2[2 * v6 + 2];
    while (v6)
    {
      v8 = v6 >> 1;
      v9 = &v5[2 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v6 += ~(v6 >> 1);
      if (v11 < a4)
      {
        v5 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    if (v5 != v7 && *v5 == a4)
    {
      v4 = *(a1 + 32) + 2 * (v5[1] & 0x7FFF);
      *(v4 + 2);
    }
  }

  return v4;
}

{
  v4 = a4;
  v5 = a1;
  if (HIWORD(a4))
  {
    v6 = CEM::EmojiData::advance(a1, a2, a3, ((a4 >> 10) - 10304));
    v8 = v7;
    a4 = v4 & 0x3FF | 0xDC00;
    a1 = v5;
    a2 = v6;
    a3 = v8;
  }

  else
  {
    a4 = a4;
  }

  return CEM::EmojiData::advance(a1, a2, a3, a4);
}

void sub_1D2AFE3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (*(v16 + 63) < 0)
  {
    operator delete(*(v16 + 40));
  }

  if (*(v16 + 39) < 0)
  {
    operator delete(*(v16 + 16));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1D38A8C30](v16, 0x1012C403EBA5055);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    std::string::__assign_external((*(*(v15 + 32) + 8) + 40), v21);
    __cxa_end_catch();
    JUMPOUT(0x1D2AFE2C0);
  }

  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t *std::unique_ptr<CEM::ReadOnlyFile<unsigned char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    OnlyFile = CEM::ReadOnlyFile<unsigned char>::~ReadOnlyFile(v2);
    MEMORY[0x1D38A8C30](OnlyFile, 0x1012C403EBA5055);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__shared_ptr_pointer<CEM::ReadOnlyFile<unsigned char> *,std::shared_ptr<CEM::ReadOnlyFile<unsigned char>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<unsigned char>,CEM::ReadOnlyFile<unsigned char>>,std::allocator<CEM::ReadOnlyFile<unsigned char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CEM::ReadOnlyFile<unsigned char>::~ReadOnlyFile(result);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

uint64_t CEM::ReadOnlyFile<unsigned char>::~ReadOnlyFile(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
      if (*(a1 + 64) != 2)
      {
        goto LABEL_10;
      }

      v3 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      v4 = open(v3, 2);
      v5 = v4;
      v2 = *a1;
      if ((v4 & 0x80000000) == 0)
      {
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x1D38A8C00](v2, 0x1000C8077774924);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void ___ZL15sharedEmojiDatav_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFLocale *a5)
{
  v5 = CEM::copyResourceURLFromFrameworkBundle(@"emoji", @"dat", 0, 0, a5);
  v7 = CEM::copyResourceURLFromFrameworkBundle(@"emojimeta", @"dat", 0, 0, v6);
  if (v5)
  {
    operator new();
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1D2AFECCC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v11 = v9;
  MEMORY[0x1D38A8C30](v11, 0x1070C408606C210);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      a9 = 0;
      _os_log_error_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to load emoji data", &a9, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1D2AFECA4);
  }

  _Unwind_Resume(a1);
}

void sub_1D2AFF094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Block_object_dispose(&a24, 8);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void ___ZN3CEM24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileItEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke(void *a1)
{
  if (CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<unsigned short>>::getCache(void)::onceToken != -1)
  {
    dispatch_once(&CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<unsigned short>>::getCache(void)::onceToken, &__block_literal_global_16);
  }

  v2 = CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<unsigned short>>::getCache(void)::cache;
  v3 = a1[6];
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v3);
  v5 = v2[1];
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & v4;
    }

    v10 = *(*v2 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v6)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, v3))
            {
              v13 = v11[6];
              if (v13 && (v13 = std::__shared_weak_count::lock(v13)) != 0)
              {
                v14 = v11[5];
              }

              else
              {
                v14 = 0;
              }

              v15 = *(a1[5] + 8);
              v16 = *(v15 + 48);
              *(v15 + 40) = v14;
              *(v15 + 48) = v13;
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              break;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= *&v5)
              {
                v12 %= *&v5;
              }
            }

            else
            {
              v12 &= *&v5 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v17 = (*(a1[4] + 16))();
    operator new();
  }
}

void sub_1D2AFF800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1D2AFFBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (*(v16 + 63) < 0)
  {
    operator delete(*(v16 + 40));
  }

  if (*(v16 + 39) < 0)
  {
    operator delete(*(v16 + 16));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1D38A8C30](v16, 0x1012C403EBA5055);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    std::string::__assign_external((*(*(v15 + 32) + 8) + 40), v21);
    __cxa_end_catch();
    JUMPOUT(0x1D2AFFA84);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<CEM::ReadOnlyFile<unsigned short>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    OnlyFile = CEM::ReadOnlyFile<unsigned short>::~ReadOnlyFile(v2);
    MEMORY[0x1D38A8C30](OnlyFile, 0x1012C403EBA5055);
  }

  return a1;
}

uint64_t CEMStringIsSingleEmoji(CFStringRef theString)
{
  if (sharedEmojiData(void)::onceToken != -1)
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
  }

  result = 0;
  if (theString)
  {
    if (sharedEmojiData(void)::data)
    {
      CEM::EmojiData::advance(sharedEmojiData(void)::data, *(sharedEmojiData(void)::data + 32), 0x100000000, theString);
      return v4 & (v3 != 0);
    }
  }

  return result;
}

void CEM::ReadOnlyFile<char>::open(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4002000000;
  v16 = __Block_byref_object_copy__54;
  v17 = __Block_byref_object_dispose__55;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN3CEM12ReadOnlyFileIcE4openERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcb_block_invoke;
  v11[3] = &unk_1E8404B38;
  v11[5] = a2;
  v11[6] = a3;
  v12 = 1;
  v11[4] = &v13;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3802000000;
  v25 = __Block_byref_object_copy__43;
  v27 = 0;
  v28 = 0;
  v26 = __Block_byref_object_dispose__44;
  {
    v6 = a2;
    a2 = v6;
    if (v7)
    {
      CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getQueue(void)::attributes = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      a2 = v6;
    }
  }

  {
    v8 = a2;
    a2 = v8;
    if (v9)
    {
      CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getQueue(void)::queue = dispatch_queue_create("com.apple.NLPUtils.SingletonResourceManager", CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getQueue(void)::attributes);
      a2 = v8;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN3CEM24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke;
  block[3] = &unk_1E8404B60;
  block[5] = &v22;
  block[6] = a2;
  block[4] = v11;
  dispatch_sync(CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getQueue(void)::queue, block);
  v4 = v23[6];
  *a1 = v23[5];
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v22, 8);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v5 = *(v14 + 63);
  if (v5 < 0)
  {
    v5 = v14[6];
  }

  if (v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    CEM::ResourceCreationException::ResourceCreationException(exception, (v14 + 5));
  }

  _Block_object_dispose(&v13, 8);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_1D2B00044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Block_object_dispose(&a19, 8);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN3CEM24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS_12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPS9_vE_block_invoke(void *a1)
{
  if (CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getCache(void)::onceToken != -1)
  {
    dispatch_once(&CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getCache(void)::onceToken, &__block_literal_global_60);
  }

  v2 = CEM::SingletonResourceManager<std::string,CEM::ReadOnlyFile<char>>::getCache(void)::cache;
  v3 = a1[6];
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v3);
  v5 = v2[1];
  if (v5)
  {
    v6 = v4;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= *&v5)
      {
        v9 = v4 % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & v4;
    }

    v10 = *(*v2 + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v6)
          {
            if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, v3))
            {
              v13 = v11[6];
              if (v13 && (v13 = std::__shared_weak_count::lock(v13)) != 0)
              {
                v14 = v11[5];
              }

              else
              {
                v14 = 0;
              }

              v15 = *(a1[5] + 8);
              v16 = *(v15 + 48);
              *(v15 + 40) = v14;
              *(v15 + 48) = v13;
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              break;
            }
          }

          else
          {
            if (v8 > 1)
            {
              if (v12 >= *&v5)
              {
                v12 %= *&v5;
              }
            }

            else
            {
              v12 &= *&v5 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v17 = (*(a1[4] + 16))();
    operator new();
  }
}

void sub_1D2B006D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<CEM::ReadOnlyFile<unsigned char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1D2B00A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  if (*(v16 + 63) < 0)
  {
    operator delete(*(v16 + 40));
  }

  if (*(v16 + 39) < 0)
  {
    operator delete(*(v16 + 16));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1D38A8C30](v16, 0x1012C403EBA5055);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = (*(*v20 + 16))(v20);
    std::string::__assign_external((*(*(v15 + 32) + 8) + 40), v21);
    __cxa_end_catch();
    JUMPOUT(0x1D2B00950);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<CEM::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    OnlyFile = CEM::ReadOnlyFile<char>::~ReadOnlyFile(v2);
    MEMORY[0x1D38A8C30](OnlyFile, 0x1012C403EBA5055);
  }

  return a1;
}

unsigned __int16 *CEM::EmojiData::advance(uint64_t a1, unsigned __int16 *a2, uint64_t a3, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  theStringa = theString;
  range.location = 0;
  range.length = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v40 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v43 = 0;
  v44 = 0;
  v41 = CStringPtr;
  if (Length >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 64;
    while (1)
    {
      if (v13 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v13;
      }

      v16 = range.length;
      if (range.length <= v13)
      {
        v18 = 0;
      }

      else
      {
        if (v40)
        {
          v17 = &v40[range.location];
LABEL_11:
          v18 = v17[v13];
          goto LABEL_13;
        }

        if (!v41)
        {
          if (v44 <= v13 || v12 > v13)
          {
            v22 = v15 + v11;
            v23 = v14 - v15;
            v24 = v13 - v15;
            v25 = v24 + 64;
            if (v24 + 64 >= range.length)
            {
              v25 = range.length;
            }

            v43 = v24;
            v44 = v25;
            if (range.length >= v23)
            {
              v16 = v23;
            }

            v45.location = v24 + range.location;
            v45.length = v16 + v22;
            CFStringGetCharacters(theStringa, v45, v38);
            v12 = v43;
          }

          v17 = &v38[-v12];
          goto LABEL_11;
        }

        v18 = v41[range.location + v13];
      }

LABEL_13:
      a2 = CEM::EmojiData::advance(a1, a2, a3, v18);
      a3 = v19;
      if ((v19 & 0x100000000) != 0)
      {
        --v11;
        ++v14;
        if (Length - 1 != v13++)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v12 = 0;
LABEL_30:
  if (!Length)
  {
    v28 = 0;
    goto LABEL_55;
  }

  v26 = Length - 1;
  if (Length == 1)
  {
    if (range.length < 1)
    {
      v27 = 0;
    }

    else if (v40)
    {
      v27 = v40[range.location];
    }

    else if (v41)
    {
      v27 = v41[range.location];
    }

    else
    {
      if (v44 < 1 || v12 >= 1)
      {
        if (range.length >= 0x40uLL)
        {
          v32.length = 64;
        }

        else
        {
          v32.length = range.length;
        }

        v43 = 0;
        v44 = v32.length;
        v32.location = range.location;
        CFStringGetCharacters(theStringa, v32, v38);
        v12 = v43;
      }

      v27 = v38[-v12];
    }

    v28 = v27;
    goto LABEL_55;
  }

  v29 = Length - 2;
  if (Length < 2 || (v30 = range.length, range.length <= v29))
  {
    v31 = 0;
LABEL_41:
    v28 = v31;
    goto LABEL_55;
  }

  if (v40)
  {
    v31 = v40[range.location + v29];
  }

  else if (v41)
  {
    v31 = v41[range.location + v29];
  }

  else
  {
    if (v44 <= v29 || v12 > v29)
    {
      v34 = Length - 6;
      if (v29 < 4)
      {
        v34 = 0;
      }

      if ((v34 + 64) < range.length)
      {
        v30 = v34 + 64;
      }

      v43 = v34;
      v44 = v30;
      v46.length = v30 - v34;
      v46.location = range.location + v34;
      CFStringGetCharacters(theStringa, v46, v38);
      v12 = v43;
    }

    v31 = v38[v29 - v12];
  }

  if (v31 >> 10 != 54)
  {
    goto LABEL_41;
  }

  v35 = range.length;
  if (range.length >= Length)
  {
    if (v40)
    {
      v36 = v40[range.location + v26];
    }

    else if (v41)
    {
      v36 = v41[range.location + v26];
    }

    else
    {
      if (v44 < Length || v12 >= Length)
      {
        v37 = Length - 5;
        if (Length < 5)
        {
          v37 = 0;
        }

        if ((v37 + 64) < range.length)
        {
          v35 = v37 + 64;
        }

        v43 = v37;
        v44 = v35;
        v47.length = v35 - v37;
        v47.location = range.location + v37;
        CFStringGetCharacters(theStringa, v47, v38);
        v12 = v43;
      }

      v36 = v38[v26 - v12];
    }
  }

  else
  {
    v36 = 0;
  }

  v28 = (v31 << 10) + v36 - 56613888;
LABEL_55:
  if ((a3 & 0x10000FFFFLL) == 0x100000000 && CEM::EmojiData::isLegacyUnqualifiedEmojiCodepoint(v28))
  {
    return CEM::EmojiData::advance(a1, a2, a3, 0xFE0Fu);
  }

  return a2;
}

uint64_t CEMCreateEmojiLocaleData(CFLocaleIdentifier localeIdentifier)
{
  if (localeIdentifier)
  {
    if (sharedEmojiData(void)::onceToken != -1)
    {
      dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
    }

    v2 = sharedEmojiData(void)::data;
    sharedMonochromeSymbolData(localeIdentifier);
    if (v2)
    {
      operator new();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "A valid, non-null locale identifier is required to initialize a CEMEmojiLocaleDataRef.", buf, 2u);
  }

  return 0;
}

void sub_1D2B01644(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1D2B0109CLL);
}

const __CFString *sharedMonochromeSymbolData(const __CFString *localeIdentifier)
{
  if (!localeIdentifier)
  {
    return localeIdentifier;
  }

  v1 = CFLocaleCreate(*MEMORY[0x1E695E480], localeIdentifier);
  Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6F0]);
  if (CFStringCompare(Value, @"zh", 0) == kCFCompareEqualTo || CFStringCompare(Value, @"yue", 0) == kCFCompareEqualTo)
  {
    v3 = 1;
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = CFStringCompare(Value, @"ja", 0) == kCFCompareEqualTo;
  if (v1)
  {
LABEL_7:
    CFRelease(v1);
  }

LABEL_8:
  if (!v3)
  {
    return 0;
  }

  if (sharedMonochromeSymbolData(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&sharedMonochromeSymbolData(__CFString const*)::onceToken, &__block_literal_global_68);
  }

  return sharedMonochromeSymbolData(__CFString const*)::data;
}

void sub_1D2B01920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *CEM::getUTF8StringFromCFString(void *this, CFStringRef theString)
{
  v2 = this;
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(theString);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return std::string::basic_string[abi:ne200100]<0>(v2, CStringPtr);
  }

  else
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  return this;
}

int64x2_t cedar::da<unsigned int,-1,-2,true,1,0ul>::_initialize(uint64_t a1)
{
  cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::node>((a1 + 8), 256, 256);
  cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<char>((a1 + 16), 4, 0);
  cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<int>((a1 + 24), 1, 0);
  cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo>((a1 + 32), 256, 0);
  cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>((a1 + 40), 1, 0);
  v2 = 0;
  **(a1 + 8) = 0xFFFFFFFF00000000;
  v3 = 0xFFFFFFFE00000000;
  for (i = 8; i != 2048; i += 8)
  {
    v5 = v2;
    if (i == 2040)
    {
      v6 = 0xFFFFFFFF00000000;
    }

    else
    {
      v6 = v3;
    }

    if (!v2)
    {
      v5 = 4294967041;
    }

    *(*(a1 + 8) + i) = v6 | v5;
    v3 -= 0x100000000;
    --v2;
  }

  *(a1 + 60) = 0x10000000100;
  *(*(a1 + 40) + 16) = 1;
  **(a1 + 16) = 4;
  *(a1 + 68) = 0x100000004;
  *a1 = 0;
  result = xmmword_1D2B27F70;
  v8 = xmmword_1D2B27F80;
  v9 = xmmword_1D2B276C0;
  v10 = xmmword_1D2B276B0;
  v11 = (a1 + 94);
  v12 = 264;
  v13 = vdupq_n_s64(0x101uLL);
  v14 = vdupq_n_s64(8uLL);
  do
  {
    v15 = vdupq_n_s64(1uLL);
    v16 = vaddq_s64(v10, v15);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v10)), *result.i8), *result.i8).u8[0])
    {
      *(v11 - 7) = v16.i16[0];
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v10)), *&result), *&result).i8[1])
    {
      *(v11 - 6) = v16.i16[4];
    }

    v17 = vaddq_s64(v9, v15);
    if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v9))), *&result).i8[2])
    {
      *(v11 - 5) = v17.i16[0];
      *(v11 - 4) = v17.i16[4];
    }

    v18 = vaddq_s64(v8, v15);
    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v8)), *&result)).i32[1])
    {
      *(v11 - 3) = v18.i16[0];
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&v8)), *&result)).i8[5])
    {
      *(v11 - 2) = v18.i16[4];
    }

    v19 = vaddq_s64(result, v15);
    if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x101uLL), *&result)))).i8[6])
    {
      *(v11 - 1) = v19.i16[0];
      *v11 = v19.i16[4];
    }

    v8 = vaddq_s64(v8, v14);
    v9 = vaddq_s64(v9, v14);
    v10 = vaddq_s64(v10, v14);
    v11 += 8;
    result = vaddq_s64(result, v14);
    v12 -= 8;
  }

  while (v12);
  return result;
}

void cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::node>(void **a1, int a2, int a3)
{
  v6 = 8 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x100004000313F17uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_vtugBvdxMMs26f2vE9i212NYH3IivqaKdpjSE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  {
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::node>(cedar::da<unsigned int,-1,-2,true,1,0ul>::node *&,int,int)::T0 = 0;
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::node>(cedar::da<unsigned int,-1,-2,true,1,0ul>::node *&,int,int)::T0;
    v10 = (v6 - 8 * a3 - 8) >> 3;
    v11 = vdupq_n_s64(v10);
    v12 = (*a1 + 8 * a3 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v8), xmmword_1D2B276B0)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v8 += 2;
      v12 += 2;
    }

    while (((v10 + 2) & 0x3FFFFFFFFFFFFFFELL) != v8);
  }
}

void cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<char>(void **a1, int a2, int a3)
{
  v6 = a2;
  v7 = malloc_type_realloc(*a1, a2, 0x100004077774924uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_vtugBvdxMMs26f2vE9i212NYH3IivqaKdpjSE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if (a3 != a2)
  {
    v8 = &v7[a3];

    bzero(v8, v6 - a3);
  }
}

void cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<int>(void **a1, int a2, int a3)
{
  v6 = 4 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x100004052888210uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_vtugBvdxMMs26f2vE9i212NYH3IivqaKdpjSE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  if (a3 != a2)
  {
    v8 = &v7[4 * a3];

    bzero(v8, v6 - 4 * a3);
  }
}

void cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo>(void **a1, int a2, int a3)
{
  v6 = 2 * a2;
  v7 = malloc_type_realloc(*a1, v6, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_vtugBvdxMMs26f2vE9i212NYH3IivqaKdpjSE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v7;
  {
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo>(cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo *&,int,int)::T0 = 0;
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo>(cedar::da<unsigned int,-1,-2,true,1,0ul>::ninfo *&,int,int)::T0;
    v10 = (v6 - 2 * a3 - 2) >> 1;
    v11 = vdupq_n_s64(v10);
    v12 = (v10 & 0x7FFFFFFFFFFFFFF8) + 8;
    v13 = (*a1 + 2 * a3 + 8);
    do
    {
      v14 = vdupq_n_s64(v8);
      v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1D2B276B0)));
      if (vuzp1_s8(vuzp1_s16(v15, *v11.i8), *v11.i8).u8[0])
      {
        *(v13 - 4) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v11), *&v11).i8[1])
      {
        *(v13 - 3) = v9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1D2B276C0)))), *&v11).i8[2])
      {
        *(v13 - 2) = v9;
        *(v13 - 1) = v9;
      }

      v16 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1D2B27F80)));
      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i32[1])
      {
        *v13 = v9;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i8[5])
      {
        v13[1] = v9;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_1D2B27F70))))).i8[6])
      {
        v13[2] = v9;
        v13[3] = v9;
      }

      v8 += 8;
      v13 += 8;
    }

    while (v12 != v8);
  }
}

__n128 cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>(void **a1, int a2, int a3)
{
  v6 = malloc_type_realloc(*a1, 20 * a2, 0x1000040A86A77D5uLL);
  if (!v6)
  {
    free(*a1);
    fprintf(*MEMORY[0x1E69E9848], "cedar: %s [%d]: %s", "/AppleInternal/Library/BuildRoots/4~B_vtugBvdxMMs26f2vE9i212NYH3IivqaKdpjSE/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/trie/cedarpp.h", 770, "memory reallocation failed\n");
    exit(1);
  }

  *a1 = v6;
  {
    *&cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>(cedar::da<unsigned int,-1,-2,true,1,0ul>::block *&,int,int)::T0 = 0;
    DWORD2(cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>(cedar::da<unsigned int,-1,-2,true,1,0ul>::block *&,int,int)::T0) = 16843008;
    *(&cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>(cedar::da<unsigned int,-1,-2,true,1,0ul>::block *&,int,int)::T0 + 12) = 0;
  }

  if (a3 != a2)
  {
    v8 = (*a1 + 20 * a3);
    v9 = 20 * a2 - 20 * a3;
    do
    {
      result = cedar::da<unsigned int,-1,-2,true,1,0ul>::_realloc_array<cedar::da<unsigned int,-1,-2,true,1,0ul>::block>(cedar::da<unsigned int,-1,-2,true,1,0ul>::block *&,int,int)::T0;
      v8[1].n128_u32[0] = dword_1ED6F2C08;
      *v8 = result;
      v8 = (v8 + 20);
      v9 -= 20;
    }

    while (v9);
  }

  return result;
}

uint64_t createEmojiSearchTrie(void *a1, CFLocaleRef locale, int a3)
{
  Value = CFLocaleGetValue(locale, *MEMORY[0x1E695E6F0]);
  v7 = CFLocaleGetValue(locale, *MEMORY[0x1E695E6D0]);
  if (Value && (v9 = v7, CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo))
  {
    if (v9)
    {
      v10 = CFStringCompare(v9, @"US", 0) == kCFCompareEqualTo;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (a3 && (CFStringCompare(Value, @"zh", 0) == kCFCompareEqualTo || CFStringCompare(Value, @"yue", 0) == kCFCompareEqualTo || CFStringCompare(Value, @"ja", 0) == kCFCompareEqualTo))
  {
    if (CFStringCompare(Value, @"ja", 0))
    {
      v12 = @"StaticAssets/zh.shared";
    }

    else
    {
      v12 = @"StaticAssets/ja";
    }

    v13 = CEM::copyResourceURLFromFrameworkBundle(@"LocaleData", @"dat", v12, 0, v11);
    if (CFURLResourceIsReachable(v13, 0))
    {
      operator new();
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (v10)
  {
    if (CEM::copyResourceURLFromFrameworkBundle(@"LocaleData-en", @"dat", 0, 0, v8))
    {
      operator new();
    }
  }

  else if (CEM::copyResourceURLFromFrameworkBundle(@"LocaleData", @"dat", 0, locale, v8) || (a3 ? (v15 = @"FindReplace") : (v15 = @"CharacterPicker"), CEM::copyResourceURLFromFrameworkBundle(v15, @"dat", 0, locale, v14)))
  {
    operator new();
  }

  result = CFStringCompare(Value, @"en", 0);
  if (!result)
  {
    result = CEM::copyResourceURLFromFrameworkBundle(@"LocaleData-en", @"dat", 0, 0, v17);
    if (result)
    {
      operator new();
    }
  }

  *a1 = 0;
  return result;
}

void sub_1D2B02638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1D38A8C30](v2, 0x10F2C40A1E3B818);
  nlp::CFScopedPtr<__CFURL const*>::reset(va);
  _Unwind_Resume(a1);
}

void CEM::EmojiSearchTrie::EmojiSearchTrie(CEM::EmojiSearchTrie *this, const __CFLocale *a2, const __CFURL *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = &unk_1F4E073A8;
  *(this + 6) = 0;
  internal::marisa::Trie::Trie(this + 4);
  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  CEM::getFileSystemRepresentationFromCFURL(__p, a3);
}

void sub_1D2B028A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      if (*(v16 + 119) < 0)
      {
        operator delete(*v17);
      }

      v21 = *(v16 + 88);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      trie::MarisaTrie<unsigned int,char>::~MarisaTrie(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

uint64_t trie::MarisaTrie<unsigned int,char>::load(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 0xF)
  {
    if (*a2 == 0x2065766F6C206557 && *(a2 + 7) == 0x2E61736972614D20)
    {
      internal::marisa::Trie::map((a1 + 16), a2, a3);
      return 1;
    }
  }

  else if (a3 < 4)
  {
    return 0;
  }

  v7 = a2 + 4;
  v8 = *a2;
  internal::marisa::Trie::map((a1 + 16), a2 + 4, v8);
  *(a1 + 24) = &v7[v8];
  *(a1 + 32) = (a3 - v8 - 4) >> 2;
  return 1;
}

internal::marisa::grimoire::trie::LoudsTrie **internal::marisa::Trie::map(internal::marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000029;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:41: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_1F4E071E8;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    v11[2] = 0x80000002CLL;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:44: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  internal::marisa::grimoire::io::Mapper::Mapper(v12);
  internal::marisa::grimoire::io::Mapper::open(v12, a2, a3);
  internal::marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  internal::marisa::grimoire::io::Mapper::~Mapper(v12);
  return internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_1D2B02B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

__n128 internal::marisa::grimoire::io::Mapper::open(internal::marisa::grimoire::io::Mapper *this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x200000050;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:80: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *this;
  v4 = *(this + 1);
  *this = a2;
  *(this + 1) = -1;
  *(this + 2) = a3;
  *(this + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(this + 8);
  *(this + 8) = -1;
  v9 = v5;
  internal::marisa::grimoire::io::Mapper::~Mapper(v8);
  return result;
}

internal::marisa::grimoire::trie::LoudsTrie *internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(internal::marisa::grimoire::trie::LoudsTrie *this)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 345) = 0u;
  *(this + 393) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 297) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 441) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 601) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 505) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 649) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 697) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 90) = 0;
  *(this + 182) = 0;
  *(this + 92) = 0;
  internal::marisa::grimoire::trie::Tail::Tail((this + 744));
  *(this + 1048) = 0;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1000) = 0u;
  *(this + 66) = 0u;
  *(this + 134) = 3;
  *(this + 135) = 0x100000000200;
  *(this + 272) = 0x20000;
  internal::marisa::grimoire::io::Mapper::Mapper(this + 1096);
  return this;
}

void sub_1D2B02D8C(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x1D38A8C00](v8, 0x1000C8077774924);
  }

  internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v4);
  internal::marisa::grimoire::trie::Tail::~Tail((v1 + 93));
  if (*v6)
  {
    MEMORY[0x1D38A8C00](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x1D38A8C00](*v5, 0x1000C8077774924);
  }

  internal::marisa::grimoire::vector::BitVector::~BitVector(v3);
  internal::marisa::grimoire::vector::BitVector::~BitVector(v2);
  internal::marisa::grimoire::vector::BitVector::~BitVector(v1);
  _Unwind_Resume(a1);
}

void internal::marisa::grimoire::io::Mapper::~Mapper(internal::marisa::grimoire::io::Mapper *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if (v3 != -1)
  {
    close(v3);
  }
}

uint64_t internal::marisa::grimoire::io::Mapper::Mapper(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = -1;
  return this;
}

double internal::marisa::grimoire::trie::Tail::Tail(internal::marisa::grimoire::trie::Tail *this)
{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  return result;
}

void internal::marisa::grimoire::trie::LoudsTrie::map(internal::marisa::grimoire::trie::LoudsTrie *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::trie::Header::map(v4, a2);
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  internal::marisa::grimoire::trie::LoudsTrie::map_(v4, a2);
  internal::marisa::grimoire::io::Mapper::swap(v5, a2);
  internal::marisa::grimoire::trie::LoudsTrie::swap(this, v4);
  internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v4);
}

_BYTE *internal::marisa::grimoire::trie::Header::map(internal::marisa::grimoire::trie::Header *this, internal::marisa::grimoire::io::Mapper *a2)
{
  result = internal::marisa::grimoire::io::Mapper::map_data(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = internal::marisa::grimoire::trie::Header::get_header(void)::buf[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
  }

  return result;
}

uint64_t internal::marisa::grimoire::io::Mapper::map_data(internal::marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000073;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:115: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = *(this + 2);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000074;
    v8 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:116: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *this = v2 + a2;
  *(this + 2) = v5;
  return v2;
}

uint64_t internal::marisa::grimoire::vector::BitVector::map_(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  *(this + 6) = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (*(this + 6) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:134: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(this + 7) = v4;
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map(this + 4, a2);
  internal::marisa::grimoire::vector::Vector<unsigned int>::map(this + 7, a2);

  return internal::marisa::grimoire::vector::Vector<unsigned int>::map(this + 10, a2);
}

double internal::marisa::grimoire::trie::LoudsTrie::map_(internal::marisa::grimoire::trie::LoudsTrie *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::vector::BitVector::map(this, a2);
  internal::marisa::grimoire::vector::BitVector::map((this + 208), a2);
  internal::marisa::grimoire::vector::BitVector::map((this + 416), a2);
  internal::marisa::grimoire::vector::Vector<unsigned char>::map(this + 39, a2);
  internal::marisa::grimoire::vector::FlatVector::map((this + 672), a2);
  internal::marisa::grimoire::trie::Tail::map((this + 744), a2);
  if (*(this + 59) && !*(this + 96))
  {
    v4 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v5 = v4;
    if (v4)
    {
      internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
    }

    v10 = *(this + 125);
    *(this + 125) = v5;
    internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v10);
    v6 = *(this + 125);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F4E071E8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x800000249;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:585: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    internal::marisa::grimoire::trie::LoudsTrie::map_(v6, a2);
  }

  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::map(this + 63, a2);
  *(this + 132) = *(this + 129) - 1;
  *(this + 133) = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v7 = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  internal::marisa::grimoire::trie::Config::parse_(&v10, v7);
  *(this + 134) = v10;
  result = v11;
  *(this + 135) = v11;
  *(this + 272) = v12;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  internal::marisa::grimoire::io::Mapper::map<unsigned long long>(this, (a1 + 16), v4 >> 3);
  internal::marisa::grimoire::io::Mapper::seek(this, 0);
  *(a1 + 24) = v5;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned long long>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B034F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::BitVector::map(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  internal::marisa::grimoire::vector::BitVector::map_(v4, a2);
  internal::marisa::grimoire::vector::BitVector::swap(this, v4);
  if (v9)
  {
    MEMORY[0x1D38A8C00](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x1D38A8C00](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x1D38A8C00](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x1D38A8C00](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t internal::marisa::grimoire::io::Mapper::seek(internal::marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000059;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:89: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (*(this + 2) < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x90000005ALL;
    v4 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.cc:90: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return internal::marisa::grimoire::io::Mapper::map_data(this, a2);
}

uint64_t internal::marisa::grimoire::io::Mapper::map<unsigned long long>(internal::marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = internal::marisa::grimoire::io::Mapper::map_data(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x10000007ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:122: MARISA_STATE_ERROR: fixed_";
  }

  *(result + 40) = 1;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  internal::marisa::grimoire::io::Mapper::map<internal::marisa::grimoire::vector::RankIndex>(this, (a1 + 16), v5);
  internal::marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v5;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B039AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::io::Mapper::map<internal::marisa::grimoire::vector::RankIndex>(internal::marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = internal::marisa::grimoire::io::Mapper::map_data(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned int>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned int>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B03B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned int>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000D2;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:210: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  internal::marisa::grimoire::io::Mapper::map<unsigned int>(this, (a1 + 16), v4 >> 2);
  internal::marisa::grimoire::io::Mapper::seek(this, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::io::Mapper::map<unsigned int>(internal::marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x20000001FLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:31: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h";
    exception[2] = 0x700000020;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/mapper.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = internal::marisa::grimoire::io::Mapper::map_data(a1, 4 * a3);
  *a2 = result;
  return result;
}

uint64_t *internal::marisa::grimoire::vector::BitVector::swap(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::vector::BitVector *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 8, a2 + 8);
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 14, a2 + 14);

  return internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 20, a2 + 20);
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned char>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned char>::map_(uint64_t a1, internal::marisa::grimoire::io::Mapper *this)
{
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  *(a1 + 16) = internal::marisa::grimoire::io::Mapper::map_data(this, v4);
  internal::marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v4;

  return internal::marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned char>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B03F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *internal::marisa::grimoire::vector::FlatVector::map_(internal::marisa::grimoire::vector::FlatVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  v4 = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h";
    exception[2] = 0xA00000084;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/flat-vector.h:132: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  *(this + 6) = v4;
  *(this + 14) = *internal::marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  result = internal::marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  *(this + 8) = *result;
  return result;
}

uint64_t internal::marisa::grimoire::vector::FlatVector::map(internal::marisa::grimoire::vector::FlatVector *this, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  internal::marisa::grimoire::vector::FlatVector::map_(v9, a2);
  v3 = *this;
  *this = v9[0];
  v9[0] = v3;
  v4 = *(this + 2);
  *(this + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(this + 24);
  *(this + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(this + 40);
  *(this + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(this + 6);
  *(this + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(this + 14);
  *(this + 14) = v11;
  v11 = v6;
  v7 = *(this + 8);
  *(this + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B040E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::vector::Vector<char>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B041A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::Tail::map(internal::marisa::grimoire::trie::Tail *this, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  internal::marisa::grimoire::vector::Vector<char>::map(v8, a2);
  internal::marisa::grimoire::vector::BitVector::map(v9, a2);
  v4 = *this;
  *this = v8[0];
  v8[0] = v4;
  v5 = *(this + 2);
  *(this + 2) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(this + 24);
  *(this + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  internal::marisa::grimoire::vector::BitVector::swap((this + 48), v9);
  if (v14)
  {
    MEMORY[0x1D38A8C00](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x1D38A8C00](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x1D38A8C00](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x1D38A8C00](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1D38A8C00](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

internal::marisa::grimoire::trie::LoudsTrie **internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(internal::marisa::grimoire::trie::LoudsTrie **a1)
{
  v2 = *a1;
  if (v2)
  {
    internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v2);
    MEMORY[0x1D38A8C30]();
  }

  return a1;
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::map(__int128 *a1, internal::marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B043E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::Config::parse_(internal::marisa::grimoire::trie::Config *this, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000034;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:52: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
  }

  if ((a2 & 0x7F) != 0)
  {
    *this = a2 & 0x7F;
  }

  internal::marisa::grimoire::trie::Config::parse_cache_level(this, a2);
  internal::marisa::grimoire::trie::Config::parse_tail_mode(this, a2);

  return internal::marisa::grimoire::trie::Config::parse_node_order(this, a2);
}

uint64_t internal::marisa::grimoire::trie::Config::parse_cache_level(uint64_t this, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000060;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:96: MARISA_CODE_ERROR: undefined cache level";
  }

LABEL_11:
  *(this + 8) = v3;
  return this;
}

uint64_t internal::marisa::grimoire::trie::Config::parse_tail_mode(uint64_t this, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F4E071E8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000075;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:117: MARISA_CODE_ERROR: undefined tail mode";
    }

    v2 = 0x2000;
  }

  *(this + 12) = v2;
  return this;
}

uint64_t internal::marisa::grimoire::trie::Config::parse_node_order(uint64_t this, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F4E071E8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008ALL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/config.h:138: MARISA_CODE_ERROR: undefined node order";
    }

    v2 = 0x10000;
  }

  *(this + 16) = v2;
  return this;
}

uint64_t *internal::marisa::grimoire::trie::LoudsTrie::swap(internal::marisa::grimoire::trie::LoudsTrie *this, internal::marisa::grimoire::trie::LoudsTrie *a2)
{
  internal::marisa::grimoire::vector::BitVector::swap(this, a2);
  internal::marisa::grimoire::vector::BitVector::swap((this + 208), (a2 + 208));
  internal::marisa::grimoire::vector::BitVector::swap((this + 416), (a2 + 416));
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 78, a2 + 78);
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 84, a2 + 84);
  v4 = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v4;
  LODWORD(v4) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v4;
  v5 = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v5;
  internal::marisa::grimoire::trie::Tail::swap((this + 744), (a2 + 744));
  v6 = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v6;
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this + 126, a2 + 126);
  v7 = *(this + 132);
  *(this + 132) = *(a2 + 132);
  *(a2 + 132) = v7;
  v8 = *(this + 133);
  *(this + 133) = *(a2 + 133);
  *(a2 + 133) = v8;
  v9 = *(this + 134);
  *(this + 134) = *(a2 + 134);
  *(a2 + 134) = v9;
  v10 = *(this + 135);
  *(this + 135) = *(a2 + 135);
  *(a2 + 135) = v10;
  LODWORD(v9) = *(this + 272);
  *(this + 272) = *(a2 + 272);
  *(a2 + 272) = v9;

  return internal::marisa::grimoire::io::Mapper::swap(this + 137, (a2 + 1096));
}

uint64_t *internal::marisa::grimoire::io::Mapper::swap(uint64_t *this, internal::marisa::grimoire::io::Mapper *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v4 = this[1];
  v3 = this[2];
  v5 = *(a2 + 2);
  this[1] = *(a2 + 1);
  this[2] = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v3;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return this;
}

uint64_t *internal::marisa::grimoire::trie::Tail::swap(internal::marisa::grimoire::trie::Tail *this, internal::marisa::grimoire::trie::Tail *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);

  return internal::marisa::grimoire::vector::BitVector::swap((this + 48), (a2 + 48));
}

void internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(internal::marisa::grimoire::trie::LoudsTrie *this)
{
  internal::marisa::grimoire::io::Mapper::~Mapper((this + 1096));
  v2 = *(this + 126);
  if (v2)
  {
    MEMORY[0x1D38A8C00](v2, 0x1000C8077774924);
  }

  internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 125);
  v3 = *(this + 119);
  if (v3)
  {
    MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  v4 = *(this + 113);
  if (v4)
  {
    MEMORY[0x1D38A8C00](v4, 0x1000C8077774924);
  }

  v5 = *(this + 107);
  if (v5)
  {
    MEMORY[0x1D38A8C00](v5, 0x1000C8077774924);
  }

  v6 = *(this + 99);
  if (v6)
  {
    MEMORY[0x1D38A8C00](v6, 0x1000C8077774924);
  }

  v7 = *(this + 93);
  if (v7)
  {
    MEMORY[0x1D38A8C00](v7, 0x1000C8077774924);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x1D38A8C00](v8, 0x1000C8077774924);
  }

  v9 = *(this + 78);
  if (v9)
  {
    MEMORY[0x1D38A8C00](v9, 0x1000C8077774924);
  }

  v10 = *(this + 72);
  if (v10)
  {
    MEMORY[0x1D38A8C00](v10, 0x1000C8077774924);
  }

  v11 = *(this + 66);
  if (v11)
  {
    MEMORY[0x1D38A8C00](v11, 0x1000C8077774924);
  }

  v12 = *(this + 60);
  if (v12)
  {
    MEMORY[0x1D38A8C00](v12, 0x1000C8077774924);
  }

  v13 = *(this + 52);
  if (v13)
  {
    MEMORY[0x1D38A8C00](v13, 0x1000C8077774924);
  }

  v14 = *(this + 46);
  if (v14)
  {
    MEMORY[0x1D38A8C00](v14, 0x1000C8077774924);
  }

  v15 = *(this + 40);
  if (v15)
  {
    MEMORY[0x1D38A8C00](v15, 0x1000C8077774924);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x1D38A8C00](v16, 0x1000C8077774924);
  }

  v17 = *(this + 26);
  if (v17)
  {
    MEMORY[0x1D38A8C00](v17, 0x1000C8077774924);
  }

  v18 = *(this + 20);
  if (v18)
  {
    MEMORY[0x1D38A8C00](v18, 0x1000C8077774924);
  }

  v19 = *(this + 14);
  if (v19)
  {
    MEMORY[0x1D38A8C00](v19, 0x1000C8077774924);
  }

  v20 = *(this + 8);
  if (v20)
  {
    MEMORY[0x1D38A8C00](v20, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1D38A8C00](*this, 0x1000C8077774924);
  }
}

uint64_t *std::unique_ptr<CEM::EmojiSearchTrie>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

    v3 = *(v2 + 88);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    trie::MarisaTrie<unsigned int,char>::~MarisaTrie((v2 + 16));

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

void nlp::CFScopedPtr<__CFDictionary const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFStringTokenizer *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t _CFInit_EmojiLocaleDataWrapper(uint64_t result)
{
  *(result + 16) = &unk_1F4E07048;
  *(result + 24) = 0;
  return result;
}

uint64_t *std::unique_ptr<CEM::EmojiLocaleData>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 816));
    CEM::AdaptationController::~AdaptationController((v2 + 136));
    std::unique_ptr<CEM::LocalizedStringTable>::reset[abi:ne200100]((v2 + 112), 0);
    std::unique_ptr<CEM::LocalizedStringTable>::reset[abi:ne200100]((v2 + 104), 0);
    std::unique_ptr<CEM::LocalizedStringTable>::reset[abi:ne200100]((v2 + 96), 0);
    std::unique_ptr<CEM::TextToSpeechStrings>::reset[abi:ne200100]((v2 + 88), 0);
    std::unique_ptr<CEM::VoiceoverStrings>::reset[abi:ne200100]((v2 + 80), 0);
    std::unique_ptr<CEM::LocalizedStringTable>::reset[abi:ne200100]((v2 + 72), 0);
    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    nlp::CFScopedPtr<__CFStringTokenizer *>::reset((v2 + 40), 0);
    nlp::CFScopedPtr<__CFLocale const*>::reset((v2 + 32), 0);
    nlp::CFScopedPtr<__CFDictionary const*>::reset((v2 + 24), 0);
    std::unique_ptr<CEM::EmojiSearchTrie>::reset[abi:ne200100]((v2 + 16), 0);
    std::unique_ptr<CEM::EmojiSearchTrie>::reset[abi:ne200100]((v2 + 8), 0);
    std::unique_ptr<CEM::EmojiSearchTrie>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
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

uint64_t CEMEmojiTokenCreateWithString(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (sharedEmojiData(void)::onceToken != -1)
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
  }

  v4 = sharedEmojiData(void)::data;
  v5 = a2 ? MEMORY[0x1D38A8770](*(*(a2 + 24) + 32)) : 0;
  v6 = sharedMonochromeSymbolData(v5);
  if (!v4)
  {
    return 0;
  }

  v7 = v6;
  CEM::EmojiData::advance(v4, *(v4 + 32), 0x100000000, a1);
  v9 = v8 & 0x100000000;
  v10 = v8;
  if ((BYTE4(v8) & (v8 != 0)) == 0 && v7)
  {
    CEM::EmojiData::advance(v7, *(v7 + 32), 0x100000000, a1);
    v9 = v8 & 0x100000000;
    v10 = v8;
  }

  if (!v10 || v9 == 0)
  {
    return 0;
  }

  return CEMEmojiTokenCreateWithIndex(v8, a2);
}

uint64_t CEMEmojiTokenCreateWithIndex(unsigned int a1, uint64_t a2)
{
  if (sharedEmojiData(void)::onceToken != -1)
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
  }

  v4 = sharedEmojiData(void)::data;
  if (a2)
  {
    v5 = MEMORY[0x1D38A8770](*(*(a2 + 24) + 32));
  }

  else
  {
    v5 = 0;
  }

  v6 = sharedMonochromeSymbolData(v5);
  if (v6 && (v7 = WORD2(v6[1].info), v8 = a1 >= v7, v9 = a1 - v7, v9 != 0 && v8) && WORD1(v6[1].info) >= v9 || v4)
  {
    if (a2)
    {
      v10 = *(a2 + 24);
    }

    operator new();
  }

  return 0;
}

uint64_t CEM::EmojiToken::EmojiToken(uint64_t a1, unsigned int a2, CEM::EmojiData *this, uint64_t a4)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 22) = a2;
  *(a1 + 40) = this;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  if (!CEM::EmojiData::isValidIndex(this, a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "not an emoji");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E84048B0, MEMORY[0x1E69E5298]);
  }

  String = CEM::EmojiData::createString(*(a1 + 40), a2);
  nlp::CFScopedPtr<__CFString const*>::reset(v6, String);
  v8 = *(a1 + 40);
  v9 = *(v8 + 44);
  if (a2 <= v9)
  {
    LOBYTE(v11) = 0;
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
  }

  else
  {
    if (*(v8 + 42) >= (a2 - v9))
    {
      v10 = *(**(v8 + 16) + 16 * (~v9 + a2) + 12) >> 4;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 16) = v10;
    if (*(v8 + 42) >= (a2 - v9))
    {
      v12 = *(**(v8 + 16) + 16 * (~v9 + a2) + 13);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 20) = v12;
    if (*(v8 + 42) >= (a2 - v9))
    {
      v13 = *(**(v8 + 16) + 16 * (~v9 + a2) + 16);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 24) = v13;
    if (*(v8 + 42) >= (a2 - v9))
    {
      v14 = *(**(v8 + 16) + 16 * (~v9 + a2) + 12) & 0xF;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 28) = v14;
    if (*(v8 + 42) >= (a2 - v9))
    {
      v11 = (*(**(v8 + 16) + 16 * (~v9 + a2) + 10) >> 2) & 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  *(a1 + 32) = v11;
  return a1;
}

void sub_1D2B050D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
  _Unwind_Resume(a1);
}

uint64_t CEM::EmojiData::isValidIndex(CEM::EmojiData *this, unsigned int a2)
{
  v2 = *(this + 22);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 == 0 || !v3 || *(this + 21) < v4)
  {
    return 0;
  }

  if (*(this + 20) != a2 || (result = CEM::shouldShowTaiwanFlagEmoji(this), result))
  {
    if ((a2 & 0x8000) != 0)
    {
      return 1;
    }

    result = _os_feature_enabled_impl();
    if (a2 < 0xF6B || result)
    {
      return 1;
    }
  }

  return result;
}

CFStringRef CEM::EmojiData::createString(CEM::EmojiData *this, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (!v2 || (v4 = *(this + 22), a2 <= v4) || *(this + 21) < (a2 - v4))
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  result = CFStringCreateWithCString(*MEMORY[0x1E695E480], (*v2 + *(*v2 + 16 * (~v4 + a2) + 18)), 0x8000100u);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_error_impl(&dword_1D2AFC000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failed to create CFString for emoji at index %d", v7, 8u);
    }

    goto LABEL_7;
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CEM::EmojiToken::createWrapper(uint64_t *a1, const void *a2)
{
  CFAllocatorGetDefault();
  {
    unk_1ED6F2BC0 = 0u;
    unk_1ED6F2BB0 = 0u;
    _CFGetTypeID_EmojiTokenWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  v7 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(Instance + 32);
  *(v5 + 24) = v7;
  *(v5 + 32) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (a2)
  {
    nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::acquire((v5 + 40), a2);
  }

  return v5;
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(a1, cf);
  }
}

void *_CFInit_EmojiTokenWrapper(void *result)
{
  result[2] = &unk_1F4E07088;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *trie::CedarMinimalPrefixTrie<unsigned int,char>::~CedarMinimalPrefixTrie(void *a1)
{
  *a1 = &unk_1F4E06BE0;
  cedar::da<unsigned int,-1,-2,true,1,0ul>::clear((a1 + 1), 0);
  return a1;
}

void CEM::AdaptationController::~AdaptationController(CEM::AdaptationController *this)
{
  trie::CedarMinimalPrefixTrie<unsigned int,char>::~CedarMinimalPrefixTrie(this + 8);
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    CEM::AdaptationDatabaseController::~AdaptationDatabaseController(v2);
    MEMORY[0x1D38A8C30]();
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void cedar::da<unsigned int,-1,-2,true,1,0ul>::clear(uint64_t a1, int a2)
{
  if (*(a1 + 76))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      free(v4);
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  if (a2)
  {
    cedar::da<unsigned int,-1,-2,true,1,0ul>::_initialize(a1);
  }

  *(a1 + 76) = 0;
}

void *trie::MarisaTrie<unsigned int,char>::~MarisaTrie(void *a1)
{
  *a1 = &unk_1F4E073A8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  internal::marisa::Trie::~Trie((a1 + 2));
  return a1;
}

void EmojiLocaleDataWrapper::~EmojiLocaleDataWrapper(EmojiLocaleDataWrapper *this)
{
  *this = &unk_1F4E07048;
  std::unique_ptr<CEM::EmojiLocaleData>::reset[abi:ne200100](this + 1, 0);
}

{
  *this = &unk_1F4E07048;
  std::unique_ptr<CEM::EmojiLocaleData>::reset[abi:ne200100](this + 1, 0);

  JUMPOUT(0x1D38A8C30);
}

void EmojiTokenWrapper::~EmojiTokenWrapper(const void **this)
{
  *this = &unk_1F4E07088;
  nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(this + 3, 0);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_1F4E07088;
  nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(this + 3, 0);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1D38A8C30);
}

CEM::LocalizedStringTable *std::unique_ptr<CEM::LocalizedStringTable>::reset[abi:ne200100](CEM::LocalizedStringTable **a1, CEM::LocalizedStringTable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CEM::LocalizedStringTable::~LocalizedStringTable(result);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

uint64_t *std::unique_ptr<CEM::TextToSpeechStrings>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

CEM::LocalizedStringTable ***std::unique_ptr<CEM::VoiceoverStrings>::reset[abi:ne200100](CEM::LocalizedStringTable ***result, CEM::LocalizedStringTable **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<CEM::LocalizedStringTable>::reset[abi:ne200100](v2, 0);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void CEMEnumerateEmojiTokensInStringWithLocaleAndBlock(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sharedEmojiData(void)::onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&sharedEmojiData(void)::onceToken, &__block_literal_global_59);
    if (!a1)
    {
      return;
    }
  }

  v8 = sharedEmojiData(void)::data;
  if (sharedEmojiData(void)::data)
  {

    CEM::EmojiToken::enumerateEmojiTokensInStringWithBlock(a1, a2, a3, a4, v8);
  }
}

uint64_t std::__shared_ptr_pointer<CEM::ReadOnlyFile<char> *,std::shared_ptr<CEM::ReadOnlyFile<char>>::__shared_ptr_default_delete<CEM::ReadOnlyFile<char>,CEM::ReadOnlyFile<char>>,std::allocator<CEM::ReadOnlyFile<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    CEM::ReadOnlyFile<char>::~ReadOnlyFile(result);

    JUMPOUT(0x1D38A8C30);
  }

  return result;
}

uint64_t CEM::ReadOnlyFile<char>::~ReadOnlyFile(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
      if (*(a1 + 64) != 2)
      {
        goto LABEL_10;
      }

      v3 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      v4 = open(v3, 2);
      v5 = v4;
      v2 = *a1;
      if ((v4 & 0x80000000) == 0)
      {
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x1D38A8C00](v2, 0x1000C8077774924);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

internal::marisa::grimoire::trie::LoudsTrie **internal::marisa::Trie::build(internal::marisa::grimoire::trie::LoudsTrie **a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v8 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v8)
  {
    v13 = 0;
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x800000014;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:20: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v9 = v8;
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v8);
  v13 = v9;
  internal::marisa::grimoire::trie::LoudsTrie::build(v9, a2, a3, a4);
  v10 = *a1;
  *a1 = v9;
  v13 = v10;
  return internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void internal::marisa::Trie::write(internal::marisa::grimoire::trie::LoudsTrie ***a1, uint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000064;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:100: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::io::Writer::Writer(v5);
  internal::marisa::grimoire::io::Writer::open(v5, a2);
  internal::marisa::grimoire::trie::LoudsTrie::write(*a1, v5);
  internal::marisa::grimoire::io::Writer::~Writer(v5);
}

uint64_t internal::marisa::Trie::get_payload(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000006DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:109: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return internal::marisa::grimoire::trie::LoudsTrie::get_payload(v4, a2, a3);
}

uint64_t internal::marisa::Trie::lookup(internal::marisa::grimoire::vector::BitVector **a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000073;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:115: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return internal::marisa::grimoire::trie::LoudsTrie::lookup(v5, a2, a3, a4);
}

uint64_t internal::marisa::Trie::common_prefix_search(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000007FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:127: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return internal::marisa::grimoire::trie::LoudsTrie::common_prefix_search(v5, a2, a3, a4);
}

void internal::marisa::Trie::predictive_search(internal::marisa::grimoire::vector::BitVector **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:134: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::predictive_search(v6, a2, a3, a4, a5);
}

void internal::marisa::Trie::advance(internal::marisa::grimoire::vector::BitVector **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x10000008CLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:140: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::advance(v6, a2, a3, a4, a5);
}

void internal::marisa::Trie::enumerate_entries(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000093;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:147: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries(v5, a2, a3, a4);
}

void internal::marisa::Trie::enumerate_children(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc";
    exception[2] = 0x100000099;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/trie.cc:153: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  internal::marisa::grimoire::trie::LoudsTrie::enumerate_children(v4, a2, a3);
}

void internal::marisa::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1D38A8C30);
}

uint64_t internal::marisa::grimoire::io::Writer::Writer(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void internal::marisa::grimoire::io::Writer::~Writer(FILE **this)
{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

FILE *internal::marisa::grimoire::io::Writer::open(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t internal::marisa::grimoire::io::Writer::seek(uint64_t this, size_t __nitems)
{
  v2 = __nitems;
  v3 = this;
  __buf[128] = *MEMORY[0x1E69E9840];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x10000004FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:79: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        this = internal::marisa::grimoire::io::Writer::write_data(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      this = internal::marisa::grimoire::io::Writer::write_data(this, __buf, __nitems);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t internal::marisa::grimoire::io::Writer::write_data(uint64_t this, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = this;
  v6 = *this;
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000076;
    v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:118: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(this + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        this = write(*(v5 + 8), v4, v7);
        if (this <= 0)
        {
          break;
        }

        v4 += this;
        v3 -= this;
        if (!v3)
        {
          return this;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F4E071E8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000084;
      v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:132: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F4E071E8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000089;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:137: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      this = fflush(*v5);
      if (this)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F4E071E8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x90000008ALL;
        v9 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:138: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      this = *(this + 16);
      if (this)
      {
        this = std::ostream::write();
        if ((*(this + *(*this - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_1F4E071E8;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008FLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.cc:143: MARISA_IO_ERROR: !stream_->write(static_cast<const char*>(data), static_cast<std::streamsize>(size))";
        }
      }
    }
  }

  return this;
}

void internal::marisa::grimoire::vector::BitVector::~BitVector(internal::marisa::grimoire::vector::BitVector *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x1D38A8C00](v2, 0x1000C8077774924);
  }

  v3 = *(this + 14);
  if (v3)
  {
    MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x1D38A8C00](v4, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1D38A8C00](*this, 0x1000C8077774924);
  }
}

void internal::marisa::grimoire::trie::LoudsTrie::build(internal::marisa::grimoire::trie::LoudsTrie *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v7 = 3;
  v8 = 0x100000000200;
  v9 = 0x20000;
  internal::marisa::grimoire::trie::Config::parse_(&v7, a4);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(&v7);
  internal::marisa::grimoire::trie::LoudsTrie::build_(&v7, a2, a3, v10);
  internal::marisa::grimoire::trie::LoudsTrie::swap(a1, &v7);
  internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(&v7);
}

void sub_1D2B065E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  internal::marisa::grimoire::trie::LoudsTrie::~LoudsTrie(va);
  _Unwind_Resume(a1);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  memset(v35, 0, 41);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::resize(v35, (a2[1] - *a2) >> 4);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&v35[0] + 1) + v10;
      v13 = (v8 + v9);
      v15 = *v13;
      v14 = v13[1];
      *v12 = v15;
      *(v12 + 8) = v14;
      *(v12 + 12) = 1065353216;
      ++v11;
      v8 = *a2;
      v10 += 24;
      v9 += 16;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  v33 = 0u;
  memset(v34, 0, 25);
  internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::Key>(a1, v35, &v33, a4, 1);
  memset(v32, 0, 41);
  internal::marisa::grimoire::vector::Vector<std::pair<unsigned int,unsigned int>>::resize(v32, v34[1]);
  v16 = *(&v32[1] + 1);
  if (*(&v32[1] + 1))
  {
    v17 = 0;
    v18 = *(&v33 + 1);
    v19 = (*(&v32[0] + 1) + 4);
    do
    {
      *(v19 - 1) = *(v18 + 4 * v17);
      *v19 = v17++;
      v19 += 2;
    }

    while (v16 != v17);
  }

  v20 = v33;
  v33 = 0u;
  memset(v34, 0, 25);
  if (v20)
  {
    MEMORY[0x1D38A8C00](v20, 0x1000C8077774924);
    v16 = *(&v32[1] + 1);
  }

  v21 = 126 - 2 * __clz(v16);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(*(&v32[0] + 1), (*(&v32[0] + 1) + 8 * v16), &v36, v22, 1);
  if (*(&v32[1] + 1))
  {
    v23 = 0;
    v24 = 0;
    do
    {
      for (i = *(&v32[0] + 1); ; i = *(&v32[0] + 1))
      {
        v26 = *(i + 8 * v23);
        if (v24 >= v26)
        {
          break;
        }

        internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 0);
        ++v24;
      }

      if (v24 == v26)
      {
        internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 1);
        ++v24;
      }

      ++v23;
    }

    while (v23 < *(&v32[1] + 1));
  }

  else
  {
    v24 = 0;
  }

  while (v24 < *(a1 + 648))
  {
    internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 0);
    ++v24;
  }

  internal::marisa::grimoire::vector::BitVector::push_back((a1 + 208), 0);
  internal::marisa::grimoire::vector::BitVector::build((a1 + 208), 0, 1);
  if (a3)
  {
    std::vector<unsigned long>::resize(a3, (a2[1] - *a2) >> 4);
    if (a2[1] != *a2)
    {
      v27 = 0;
      v28 = 0;
      v29 = *(&v32[0] + 1);
      do
      {
        v30 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 208), *(v29 + v27));
        v29 = *(&v32[0] + 1);
        *(*a3 + 8 * *(*(&v32[0] + 1) + v27 + 4)) = v30;
        ++v28;
        v27 += 8;
      }

      while (v28 < (a2[1] - *a2) >> 4);
    }
  }

  if (*&v32[0])
  {
    MEMORY[0x1D38A8C00](*&v32[0], 0x1000C8077774924);
  }

  if (v33)
  {
    MEMORY[0x1D38A8C00](v33, 0x1000C8077774924);
  }

  result = *&v35[0];
  if (*&v35[0])
  {
    return MEMORY[0x1D38A8C00](*&v35[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B068BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a15)
  {
    MEMORY[0x1D38A8C00](a15, v21);
  }

  if (a21)
  {
    MEMORY[0x1D38A8C00](a21, v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::write(internal::marisa::grimoire::trie::LoudsTrie **this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::io::Writer::write_data(a2, "We love Marisa.", 0x10uLL);

  return internal::marisa::grimoire::trie::LoudsTrie::write_(this, a2);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::write_(internal::marisa::grimoire::trie::LoudsTrie **this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::BitVector::write_(this, a2);
  internal::marisa::grimoire::vector::BitVector::write_((this + 26), a2);
  internal::marisa::grimoire::vector::BitVector::write_((this + 52), a2);
  internal::marisa::grimoire::vector::Vector<unsigned char>::write_((this + 78), a2);
  internal::marisa::grimoire::vector::FlatVector::write_((this + 84), a2);
  internal::marisa::grimoire::trie::Tail::write((this + 93), a2);
  v4 = this[125];
  if (v4)
  {
    internal::marisa::grimoire::trie::LoudsTrie::write_(v4, a2);
  }

  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::write_((this + 126), a2);
  __buf = this[133];
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  v6 = *(this + 271) | *(this + 268) | *(this + 272);
  return internal::marisa::grimoire::io::Writer::write_data(a2, &v6, 4uLL);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::get_payload(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    return 0;
  }

  v5 = *a2;
  if (((*(*(a1 + 224) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  *a3 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 208), v5);
  return 1;
}

void internal::marisa::grimoire::trie::LoudsTrie::predictive_search(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  memset(&__p, 0, sizeof(__p));
  while (v13 < a3)
  {
    if ((internal::marisa::grimoire::trie::LoudsTrie::predictive_find_child(this, a2, a3, &v13, &v14, &__p) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __p.__r_.__value_.__r.__words[1];
  }

  internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(this, v14, &__p, &v12, a4, (v10 - a3) & ~((v10 - a3) >> 31), a5);
LABEL_8:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D2B06B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::predictive_find_child(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, std::string *a6)
{
  v12 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(this + 132);
  v13 = (*(this + 128) + 12 * v12);
  if (*a5 != *v13)
  {
    v15 = internal::marisa::grimoire::vector::BitVector::select0(this, *a5);
    v16 = *(this + 2);
    if ((*(v16 + (((v15 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + 1)))
    {
      v17 = v15 - *a5;
      *a5 = v17;
      v18 = v15 + 2;
      v19 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(this + 54) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
        {
          if (v19 == 0xFFFFFFFFLL)
          {
            v19 = internal::marisa::grimoire::vector::BitVector::rank1((this + 416), v17);
            v17 = *a5;
          }

          else
          {
            ++v19;
          }

          v21 = *a4;
          v22 = *(this + 90);
          v23 = v22 * v19;
          v24 = (v22 * v19) & 0x3F;
          v25 = v24 + v22;
          v26 = (*(this + 86) + 8 * ((v22 * v19) >> 6));
          v27 = *v26;
          if (v25 > 0x40)
          {
            v28 = ((2 * v26[1]) << ~v23) | (v27 >> v23);
          }

          else
          {
            v28 = v27 >> v24;
          }

          v29 = *(*(this + 80) + v17) | ((*(this + 182) & v28) << 8);
          v30 = *(this + 125);
          if (v30)
          {
            if (internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v30, a2, a3, a4, v29, a6))
            {
              return 1;
            }
          }

          else if (internal::marisa::grimoire::trie::Tail::prefix_match(this + 93, a2, a3, a4, v29, a6))
          {
            return 1;
          }

          if (*a4 != v21)
          {
            return 0;
          }

          v17 = *a5;
          v16 = *(this + 2);
        }

        else
        {
          v20 = *(*(this + 80) + v17);
          if (v20 == *(a2 + *a4))
          {
            std::string::push_back(a6, v20);
            ++*a4;
            return 1;
          }
        }

        *a5 = ++v17;
        v31 = *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18;
        ++v18;
        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v14 = v13[2];
  if (v14 > 0xFFFFFEFF)
  {
    std::string::push_back(a6, v14);
    ++*a4;
    goto LABEL_25;
  }

  v32 = *(this + 125);
  if (v32)
  {
    if (internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v32, a2, a3, a4, v14, a6))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!internal::marisa::grimoire::trie::Tail::prefix_match(this + 93, a2, a3, a4, v14, a6))
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(this + 128) + 12 * v12 + 4);
  return 1;
}

unint64_t internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(unint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, int a6, uint64_t a7)
{
  if ((*a4 & 1) == 0)
  {
    v11 = result;
    if ((a7 & 0x80000000) != 0 || a6 <= a7)
    {
      if (((*(*(result + 224) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0 || ((v12 = internal::marisa::grimoire::vector::BitVector::rank1((result + 208), a2), v13 = *(a3 + 23), v13 >= 0) ? (v14 = a3) : (v14 = *a3), v13 >= 0 ? (v15 = *(a3 + 23)) : (v15 = *(a3 + 8)), result = std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(a5, v12, v14, v15, a4), (*a4 & 1) == 0))
      {
        v16 = *(a3 + 23) >= 0 ? *(a3 + 23) : *(a3 + 8);
        result = internal::marisa::grimoire::vector::BitVector::select0(v11, a2);
        if ((*a4 & 1) == 0)
        {
          v17 = result;
          v18 = -a2;
          v19 = 0xFFFFFFFFLL;
          do
          {
            if (((*(*(v11 + 16) + (((v17 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v17 + 1)) & 1) == 0)
            {
              break;
            }

            if ((*(*(v11 + 432) + (((v18 + v17) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 + v17)))
            {
              if (v19 == 0xFFFFFFFFLL)
              {
                v19 = internal::marisa::grimoire::vector::BitVector::rank1((v11 + 416), v18 + v17);
              }

              else
              {
                ++v19;
              }

              v20 = *(v11 + 720);
              v21 = v20 * v19;
              v22 = (v20 * v19) & 0x3F;
              v23 = v22 + v20;
              v24 = (*(v11 + 688) + 8 * ((v20 * v19) >> 6));
              v25 = *v24;
              v26 = v23 > 0x40 ? ((2 * v24[1]) << ~v21) | (v25 >> v21) : v25 >> v22;
              v27 = *(*(v11 + 640) + v18 + v17) | ((*(v11 + 728) & v26) << 8);
              v28 = *(v11 + 1000);
              if (v28)
              {
                internal::marisa::grimoire::trie::LoudsTrie::restore_(v28, a3, v27);
              }

              else
              {
                internal::marisa::grimoire::trie::Tail::restore((v11 + 744), a3, v27);
              }
            }

            else
            {
              std::string::push_back(a3, *(*(v11 + 640) + v18 + v17));
            }

            v29 = *(a3 + 23);
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(a3 + 8);
            }

            internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(v11, v18 + v17, a3, a4, a5, (v29 - v16 + a6), a7);
            v30 = *(a3 + 23);
            v31 = v30;
            v32 = a3 + v30;
            if (v31 >= 0)
            {
              v33 = a3;
            }

            else
            {
              v32 = *a3 + *(a3 + 8);
              v33 = *a3;
            }

            result = std::string::erase(a3, v16, v32 - (v16 + v33));
            ++v17;
          }

          while (*a4 != 1);
        }
      }
    }
  }

  return result;
}

void internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a2 + 31);
    v10 = *(a2 + 16);
    v9 = *(a2 + 31);
LABEL_8:
    v20 = 0;
    v12 = *(a2 + 8) + v10;
    v13 = a2 + 8 + v8;
    if (v9 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v9 >= 0)
    {
      v15 = a2 + 8;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    std::string::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<char const*>>,std::reverse_iterator<std::__wrap_iter<char const*>>>(&__p, v14, v14, v15, v15, v14 - v15);
    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = v18;
    }

    internal::marisa::grimoire::trie::LoudsTrie::enumerate_entries_DFS(a1, *a2, &__p, &v20, a3, v16, a4);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v8 = *(a2 + 31);
  v9 = v8;
  v10 = *(a2 + 16);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 31);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  if (v11 <= a4)
  {
    goto LABEL_8;
  }
}

void sub_1D2B0717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v7, v8, a5);
}

void internal::marisa::grimoire::trie::LoudsTrie::enumerate_children(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v5 = *(a2 + 31);
  v6 = v5;
  v7 = *(a2 + 16);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    v35 = *a2;
    p_p = &__p;
    if (v6 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 8), v7);
    }

    else
    {
      __p = *(a2 + 8);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      v32 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
      v33 = --__p.__r_.__value_.__l.__size_;
    }

    else
    {
      v32 = __p.__r_.__value_.__s.__data_[SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1];
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
      *(&__p.__r_.__value_.__s + 23) = v33 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v33] = 0;
    std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)>::operator()(a3, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = internal::marisa::grimoire::vector::BitVector::select0(a1, *a2);
    v11 = v10 - *a2;
    v12 = 0xFFFFFFFFLL;
    do
    {
      ++v10;
      if (((*(*(a1 + 16) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        break;
      }

      memset(&v34, 0, sizeof(v34));
      if ((*(*(a1 + 432) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        if (v12 == 0xFFFFFFFFLL)
        {
          v12 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), v11);
        }

        else
        {
          ++v12;
        }

        v13 = *(a1 + 720);
        v14 = v13 * v12;
        v15 = (v13 * v12) & 0x3F;
        v16 = v15 + v13;
        v17 = (*(a1 + 688) + 8 * ((v13 * v12) >> 6));
        v18 = *v17;
        if (v16 > 0x40)
        {
          v19 = ((2 * v17[1]) << ~v14) | (v18 >> v14);
        }

        else
        {
          v19 = v18 >> v15;
        }

        v20 = *(*(a1 + 640) + v11) | ((*(a1 + 728) & v19) << 8);
        v21 = *(a1 + 1000);
        if (v21)
        {
          internal::marisa::grimoire::trie::LoudsTrie::restore_(v21, &v34, v20);
        }

        else
        {
          internal::marisa::grimoire::trie::Tail::restore((a1 + 744), &v34, v20);
        }

        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v34;
        }

        else
        {
          v23 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v34.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v24 = (v23 + size - 1);
          if (v24 > v23)
          {
            v25 = &v23->__r_.__value_.__s.__data_[1];
            do
            {
              v26 = *(v25 - 1);
              *(v25 - 1) = v24->__r_.__value_.__s.__data_[0];
              v24->__r_.__value_.__s.__data_[0] = v26;
              v24 = (v24 - 1);
            }

            while (v25++ < v24);
          }
        }
      }

      else
      {
        std::string::push_back(&v34, *(*(a1 + 640) + v11));
      }

      __p = v34;
      memset(&v34, 0, sizeof(v34));
      v35 = v11;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v30 = __p.__r_.__value_.__r.__words[0];
        v28 = *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1);
        v29 = --__p.__r_.__value_.__l.__size_;
      }

      else
      {
        v28 = *(&v35 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7);
        v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
        *(&__p.__r_.__value_.__s + 23) = v29 & 0x7F;
        v30 = &__p;
      }

      v30->__r_.__value_.__s.__data_[v29] = 0;
      std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)>::operator()(a3, v28);
      v31 = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while ((v31 & 1) == 0);
  }
}

void sub_1D2B074F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(char,internal::marisa::Cursor const&,BOOL &)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::lookup(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  while (v9 < a3)
  {
    if ((internal::marisa::grimoire::trie::LoudsTrie::find_child(this, a2, a3, &v9, &v10) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*(this + 28) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
  {
    *a4 = internal::marisa::grimoire::vector::BitVector::rank1((this + 208), v10);
    return 1;
  }

  return 0;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::find_child(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v10 = (*(a2 + *a4) ^ (32 * *a5) ^ *a5) & *(this + 132);
  v11 = (*(this + 128) + 12 * v10);
  if (*a5 != *v11)
  {
    v13 = internal::marisa::grimoire::vector::BitVector::select0(this, *a5);
    v14 = *(this + 2);
    if ((*(v14 + (((v13 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v13 + 1)))
    {
      v15 = v13 - *a5;
      *a5 = v15;
      v16 = v13 + 2;
      v17 = 0xFFFFFFFFLL;
      while (1)
      {
        if ((*(*(this + 54) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15))
        {
          if (v17 == 0xFFFFFFFFLL)
          {
            v17 = internal::marisa::grimoire::vector::BitVector::rank1((this + 416), v15);
            v15 = *a5;
          }

          else
          {
            ++v17;
          }

          v18 = *a4;
          v19 = *(this + 90);
          v20 = v19 * v17;
          v21 = (v19 * v17) & 0x3F;
          v22 = v21 + v19;
          v23 = (*(this + 86) + 8 * ((v19 * v17) >> 6));
          v24 = *v23;
          if (v22 > 0x40)
          {
            v25 = ((2 * v23[1]) << ~v20) | (v24 >> v20);
          }

          else
          {
            v25 = v24 >> v21;
          }

          v26 = *(*(this + 80) + v15) | ((*(this + 182) & v25) << 8);
          v27 = *(this + 125);
          if (v27)
          {
            if (internal::marisa::grimoire::trie::LoudsTrie::match_(v27, a2, a3, a4, v26))
            {
              return 1;
            }
          }

          else if (internal::marisa::grimoire::trie::Tail::match(this + 93, a2, a3, a4, v26))
          {
            return 1;
          }

          if (*a4 != v18)
          {
            return 0;
          }

          v15 = *a5;
          v14 = *(this + 2);
        }

        else if (*(*(this + 80) + v15) == *(a2 + *a4))
        {
          ++*a4;
          return 1;
        }

        *a5 = ++v15;
        v28 = *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16;
        ++v16;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v12 = v11[2];
  if (v12 > 0xFFFFFEFF)
  {
    ++*a4;
    goto LABEL_25;
  }

  v29 = *(this + 125);
  if (v29)
  {
    if (internal::marisa::grimoire::trie::LoudsTrie::match_(v29, a2, a3, a4, v12))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((internal::marisa::grimoire::trie::Tail::match(this + 93, a2, a3, a4, v12) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *a5 = *(*(this + 128) + 12 * v10 + 4);
  return 1;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::common_prefix_search(uint64_t this, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = this;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  if ((**(this + 224) & 1) == 0 || (v8 = internal::marisa::grimoire::vector::BitVector::rank1((this + 208), 0), this = std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(a4, v8, a2, 0, &v12), (v12 & 1) == 0))
  {
    if (a3)
    {
      this = internal::marisa::grimoire::trie::LoudsTrie::find_child(v7, a2, a3, &v10, &v11);
      if (this)
      {
        do
        {
          if ((*(v7[28] + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
          {
            v9 = internal::marisa::grimoire::vector::BitVector::rank1((v7 + 26), v11);
            this = std::function<void ()(unsigned long,std::string_view,BOOL &)>::operator()(a4, v9, a2, v10, &v12);
            if (v12)
            {
              break;
            }
          }

          if (v10 >= a3)
          {
            break;
          }

          this = internal::marisa::grimoire::trie::LoudsTrie::find_child(v7, a2, a3, &v10, &v11);
        }

        while ((this & 1) != 0);
      }
    }
  }

  return this;
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::realloc(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 24 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v8 += 24;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::Key>(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (a2[3])
  {
    internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::Key>(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  internal::marisa::grimoire::vector::BitVector::build((a1 + 416), 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  internal::marisa::grimoire::vector::FlatVector::build((a1 + 672), v18);
  internal::marisa::grimoire::trie::LoudsTrie::fill_cache(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1D38A8C00](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B07BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void internal::marisa::grimoire::vector::Vector<std::pair<unsigned int,unsigned int>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 8 * v6), 8 * (v2 - v6));
  }

  a1[3] = v2;
}

uint64_t *internal::marisa::grimoire::vector::BitVector::push_back(uint64_t *this, int a2)
{
  v2 = this[6];
  if (v2 == 0xFFFFFFFF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0x70000003ALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/bit-vector.h:58: MARISA_SIZE_ERROR: size_ == MARISA_UINT32_MAX";
  }

  v4 = this;
  v5 = this[3];
  if (v2 == v5 << 6)
  {
    v7 = 0;
    this = internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(this, v5 + 1, &v7);
    v2 = v4[6];
  }

  if (a2)
  {
    *(v4[1] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    ++v4[7];
  }

  v4[6] = v2 + 1;
  return this;
}

uint64_t internal::marisa::grimoire::vector::BitVector::build(internal::marisa::grimoire::vector::BitVector *this, uint64_t a2, uint64_t a3)
{
  memset(v8, 0, 41);
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v8[3] = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  internal::marisa::grimoire::vector::BitVector::build_index(v8, this, a2, a3);
  internal::marisa::grimoire::vector::Vector<unsigned long long>::shrink(this);
  v4 = v8[0];
  v8[0] = *this;
  *this = v4;
  v5 = *&v8[1];
  *&v8[1] = *(this + 2);
  *(this + 2) = v5;
  v6 = *(&v8[1] + 8);
  *(&v8[1] + 8) = *(this + 24);
  *(this + 24) = v6;
  LOBYTE(v5) = BYTE8(v8[2]);
  BYTE8(v8[2]) = *(this + 40);
  *(this + 40) = v5;
  internal::marisa::grimoire::vector::BitVector::swap(this, v8);
  if (v13)
  {
    MEMORY[0x1D38A8C00](v13, 0x1000C8077774924);
  }

  if (v11)
  {
    MEMORY[0x1D38A8C00](v11, 0x1000C8077774924);
  }

  if (v9)
  {
    MEMORY[0x1D38A8C00](v9, 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1D38A8C00](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::resize(&v26, a2[3]);
    v9 = a2[3];
    if (v9)
    {
      v10 = (*(&v26 + 1) + 8);
      v11 = (a2[1] + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 + v13 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    internal::marisa::grimoire::trie::Tail::build((a1 + 744), &v26, a3, *(a4 + 12));
    result = v26;
    if (v26)
    {
      return MEMORY[0x1D38A8C00]();
    }
  }

  else
  {
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::resize(&v26, a2[3]);
    if (a2[3])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(&v26 + 1) + v16;
        v19 = a2[1] + v16;
        v20 = *(v19 + 8);
        *v18 = *v19 + v20;
        *(v18 + 8) = v20;
        *(v18 + 12) = *(v19 + 12);
        ++v17;
        v16 += 24;
      }

      while (v17 < a2[3]);
    }

    v21 = *a2;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 25) = 0u;
    if (v21)
    {
      MEMORY[0x1D38A8C00](v21, 0x1000C8077774924);
    }

    v22 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v23 = v22;
    if (v22)
    {
      internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v22);
    }

    v28 = *(a1 + 1000);
    *(a1 + 1000) = v23;
    internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v28);
    v24 = *(a1 + 1000);
    if (!v24)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F4E071E8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001EBLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:491: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::ReverseKey>(v24, &v26, a3, a4, a5 + 1);
    result = v26;
    if (v26)
    {
      return MEMORY[0x1D38A8C00]();
    }
  }

  return result;
}

void sub_1D2B080EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1D38A8C20](v9, MEMORY[0x1E69E5398]);
  if (a9)
  {
    MEMORY[0x1D38A8C00]();
  }

  _Unwind_Resume(a1);
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 59)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::realloc(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = (v3[1] + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::ReverseKey>(a1, a2, a3, a4, a5);
  memset(v18, 0, 41);
  if (*(a2 + 24))
  {
    internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::ReverseKey>(a1, a2, v18, a4, a5);
  }

  v9 = *(a1 + 1000);
  if (v9)
  {
    v10 = v9[268] + 1;
    v11 = v9[271] | v9[272];
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v10 | v11);
  }

  else
  {
    if (*(a1 + 840))
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 4096;
    }

    v13 = *(a4 + 16) | *(a4 + 8) | v12;
    v19 = 3;
    v20 = 0x100000000200;
    v21 = 0x20000;
    internal::marisa::grimoire::trie::Config::parse_(&v19, v13 | 1);
  }

  *(a1 + 1072) = v19;
  *(a1 + 1080) = v20;
  *(a1 + 1088) = v21;
  internal::marisa::grimoire::vector::BitVector::build((a1 + 416), 0, 0);
  if (*(&v18[1] + 1))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      do
      {
        v16 = *(*(a1 + 432) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
        ++v15;
      }

      while ((v16 & 1) == 0);
      *(*(a1 + 632) + v15 - 1) = *(*(&v18[0] + 1) + 4 * v14);
      *(*(&v18[0] + 1) + 4 * v14++) >>= 8;
    }

    while (v14 < *(&v18[1] + 1));
  }

  internal::marisa::grimoire::vector::FlatVector::build((a1 + 672), v18);
  internal::marisa::grimoire::trie::LoudsTrie::fill_cache(a1);
  result = *&v18[0];
  if (*&v18[0])
  {
    return MEMORY[0x1D38A8C00](*&v18[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B08378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_next_trie<internal::marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*a4 == a5)
  {
    memset(v20, 0, 41);
    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Entry>::resize(v20, *(a2 + 24));
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (*(&v20[0] + 1) + 8);
      v11 = (*(a2 + 8) + 8);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v11 += 6;
        *(v10 - 1) = v12 - 1;
        *v10 = v13;
        v10 += 4;
        --v9;
      }

      while (v9);
    }

    internal::marisa::grimoire::trie::Tail::build((a1 + 744), v20, a3, *(a4 + 12));
    result = *&v20[0];
    if (*&v20[0])
    {
      return MEMORY[0x1D38A8C00](*&v20[0], 0x1000C8077774924);
    }
  }

  else
  {
    v16 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v17 = v16;
    if (v16)
    {
      internal::marisa::grimoire::trie::LoudsTrie::LoudsTrie(v16);
    }

    *&v20[0] = *(a1 + 1000);
    *(a1 + 1000) = v17;
    internal::marisa::scoped_ptr<internal::marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v20);
    v18 = *(a1 + 1000);
    if (!v18)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F4E071E8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x8000001FDLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:509: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    return internal::marisa::grimoire::trie::LoudsTrie::build_trie<internal::marisa::grimoire::trie::ReverseKey>(v18, a2, a3, a4, a5 + 1);
  }

  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::realloc(result, a2);
  }

  v6 = v3[3];
  v7 = v2 - v6;
  if (v2 > v6)
  {
    v8 = 12 * v6;
    do
    {
      v9 = v3[1] + v8;
      *v9 = 0;
      *(v9 + 8) = 0x800000;
      v8 += 12;
      --v7;
    }

    while (v7);
  }

  v3[3] = v2;
  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::fill_cache(uint64_t this)
{
  v1 = *(this + 1032);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 1016) + v3;
      v6 = *(v5 + 4);
      if (v6)
      {
        *(v5 + 8) = *(*(v2 + 632) + v6);
        v7 = *(v2 + 1016);
        if ((*(*(v2 + 432) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
        {
          this = internal::marisa::grimoire::vector::BitVector::rank1((v2 + 416), v6);
          v8 = *(v2 + 720);
          v9 = v8 * this;
          v10 = (v8 * this) & 0x3F;
          v11 = v10 + v8;
          v12 = (*(v2 + 688) + 8 * ((v8 * this) >> 6));
          v13 = *v12;
          if (v11 > 0x40)
          {
            v14 = ((2 * v12[1]) << ~v9) | (v13 >> v9);
          }

          else
          {
            v14 = v13 >> v10;
          }

          v15 = (*(v2 + 728) & v14) << 8;
        }

        else
        {
          v15 = -256;
        }

        *(v7 + v3 + 8) = *(v7 + v3 + 8) | v15;
        v1 = *(v2 + 1032);
      }

      else
      {
        *v5 = -1;
      }

      v3 += 12;
    }
  }

  return this;
}

void internal::marisa::grimoire::trie::LoudsTrie::advance(internal::marisa::grimoire::vector::BitVector *this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*a4 == 0xFFFFFFFFLL)
  {
    MEMORY[0xFFFFFFFF] = 0xFFFFFFFFLL;
    if (*(a4 + 31) < 0)
    {
      v9 = *(a4 + 8);
      v10 = *(a4 + 16);

      std::string::__init_copy_ctor_external(0x100000007, v9, v10);
    }

    else
    {
      MEMORY[0x100000007] = *(a4 + 8);
      MEMORY[0x100000017] = *(a4 + 24);
    }

    return;
  }

  v27 = *a4;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __p = *(a4 + 8);
  }

  v26 = 0;
  if (!a3)
  {
LABEL_20:
    *a5 = v27;
    v14 = (a5 + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *v14 = __p;
    }

    goto LABEL_46;
  }

  v11 = 0;
  while ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    v26 = v11 + 1;
    if (*(a2 + v11) != *(&v27 + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7))
    {
LABEL_27:
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_46;
    }

    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
    --*(&__p.__r_.__value_.__s + 23);
    ++v11;
    p_p = &__p;
LABEL_19:
    p_p->__r_.__value_.__s.__data_[v12] = 0;
    if (v11 >= a3)
    {
      goto LABEL_20;
    }
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    v26 = v11 + 1;
    p_p = __p.__r_.__value_.__r.__words[0];
    if (*(a2 + v11) != *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1))
    {
      goto LABEL_27;
    }

    v12 = --__p.__r_.__value_.__l.__size_;
    ++v11;
    goto LABEL_19;
  }

LABEL_23:
  memset(&__str, 0, sizeof(__str));
  while (v26 < a3)
  {
    if ((internal::marisa::grimoire::trie::LoudsTrie::predictive_find_child(this, a2, a3, &v26, &v27, &__str) & 1) == 0)
    {
      *a5 = 0xFFFFFFFFLL;
      a5[1] = 0;
      a5[2] = 0;
      a5[3] = 0;
      goto LABEL_44;
    }
  }

  std::string::basic_string(&v24, &__str, v26 - v11, 0xFFFFFFFFFFFFFFFFLL, &v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v24;
  v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  size = v24.__r_.__value_.__l.__size_;
  v16 = v24.__r_.__value_.__r.__words[0];
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = (v16 + size - 1);
  if (size)
  {
    v19 = v18 > v16;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = &v16->__r_.__value_.__s.__data_[1];
    do
    {
      v21 = *(v20 - 1);
      *(v20 - 1) = v18->__r_.__value_.__s.__data_[0];
      v18->__r_.__value_.__s.__data_[0] = v21;
      v18 = (v18 - 1);
    }

    while (v20++ < v18);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  *a5 = v27;
  v23 = (a5 + 1);
  if (v15 < 0)
  {
    std::string::__init_copy_ctor_external(v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v23 = __p;
  }

LABEL_44:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D2B089CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void internal::marisa::grimoire::trie::LoudsTrie::restore_(uint64_t a1, std::string *a2, unint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a1 + 1056) & a3;
      v7 = *(a1 + 1024) + 12 * v6;
      if (a3 != *(v7 + 4))
      {
        break;
      }

      v8 = *(v7 + 8);
      if (v8 <= 0xFFFFFEFF)
      {
        v18 = *(a1 + 1000);
        if (v18)
        {
          internal::marisa::grimoire::trie::LoudsTrie::restore_(v18, a2, v8);
        }

        else
        {
          internal::marisa::grimoire::trie::Tail::restore((a1 + 744), a2, v8);
        }
      }

      else
      {
        std::string::push_back(a2, v8);
      }

      a3 = *(*(a1 + 1024) + 12 * v6);
      if (!a3)
      {
        return;
      }
    }

    v9 = *(*(a1 + 640) + a3);
    if ((*(*(a1 + 432) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
    {
      v10 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), a3);
      v11 = *(a1 + 720);
      v12 = v11 * v10;
      v13 = (v11 * v10) & 0x3F;
      v14 = v13 + v11;
      v15 = (*(a1 + 688) + 8 * ((v11 * v10) >> 6));
      v16 = *v15;
      v17 = v14 > 0x40 ? ((2 * v15[1]) << ~v12) | (v16 >> v12) : v16 >> v13;
      v19 = v9 | ((*(a1 + 728) & v17) << 8);
      v20 = *(a1 + 1000);
      if (v20)
      {
        internal::marisa::grimoire::trie::LoudsTrie::restore_(v20, a2, v19);
      }

      else
      {
        internal::marisa::grimoire::trie::Tail::restore((a1 + 744), a2, v19);
      }
    }

    else
    {
      std::string::push_back(a2, v9);
    }

    if (a3 <= *(a1 + 1064))
    {
      break;
    }

    a3 = internal::marisa::grimoire::vector::BitVector::select1(a1, a3) + ~a3;
  }
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::match_(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  while (1)
  {
    while (1)
    {
      v10 = *(a1 + 1056) & a5;
      v11 = *(a1 + 1024) + 12 * v10;
      if (a5 == *(v11 + 4))
      {
        break;
      }

      if (((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        if (*(*(a1 + 640) + a5) != *(a2 + *a4))
        {
          return 0;
        }

        ++*a4;
        goto LABEL_27;
      }

      v13 = *(a1 + 1000);
      v14 = *(*(a1 + 640) + a5);
      v15 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), a5);
      v16 = *(a1 + 720);
      v17 = v16 * v15;
      v18 = (v16 * v15) & 0x3F;
      v19 = v18 + v16;
      v20 = (*(a1 + 688) + 8 * ((v16 * v15) >> 6));
      v21 = *v20;
      if (v13)
      {
        if (v19 > 0x40)
        {
          v22 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v22 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v22) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((internal::marisa::grimoire::trie::LoudsTrie::match_(v26, a2, a3, a4, v25) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v19 > 0x40)
        {
          v24 = ((2 * v20[1]) << ~v17) | (v21 >> v17);
        }

        else
        {
          v24 = v21 >> v18;
        }

        v25 = v14 | ((*(a1 + 728) & v24) << 8);
      }

      if ((internal::marisa::grimoire::trie::Tail::match((a1 + 744), a2, a3, a4, v25) & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      if (*a4 >= a3)
      {
        return 0;
      }

      a5 = internal::marisa::grimoire::vector::BitVector::select1(a1, a5) + ~a5;
    }

    v12 = *(v11 + 8);
    if (v12 <= 0xFFFFFEFF)
    {
      v23 = *(a1 + 1000);
      if (v23)
      {
        if ((internal::marisa::grimoire::trie::LoudsTrie::match_(v23, a2, a3, a4, v12) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((internal::marisa::grimoire::trie::Tail::match((a1 + 744), a2, a3, a4, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + *a4) != v12)
      {
        return 0;
      }

      ++*a4;
    }

    a5 = *(*(a1 + 1024) + 12 * v10);
    if (!a5)
    {
      return 1;
    }

    if (*a4 >= a3)
    {
      return 0;
    }
  }
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t a5, std::string *a6)
{
  while (1)
  {
    v12 = *(a1 + 1056) & a5;
    v13 = *(a1 + 1024) + 12 * v12;
    if (a5 != *(v13 + 4))
    {
      v15 = *(*(a1 + 640) + a5);
      if ((*(*(a1 + 432) + ((a5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a5))
      {
        v16 = internal::marisa::grimoire::vector::BitVector::rank1((a1 + 416), a5);
        v17 = *(a1 + 720);
        v18 = v17 * v16;
        v19 = (v17 * v16) & 0x3F;
        v20 = v19 + v17;
        v21 = (*(a1 + 688) + 8 * ((v17 * v16) >> 6));
        v22 = *v21;
        if (v20 > 0x40)
        {
          v23 = ((2 * v21[1]) << ~v18) | (v22 >> v18);
        }

        else
        {
          v23 = v22 >> v19;
        }

        v25 = v15 | ((*(a1 + 728) & v23) << 8);
        v26 = *(a1 + 1000);
        if (v26)
        {
          if ((internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v26, a2, a3, a4, v25, a6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!internal::marisa::grimoire::trie::Tail::prefix_match((a1 + 744), a2, a3, a4, v25, a6))
        {
          return 0;
        }
      }

      else
      {
        if (v15 != *(a2 + *a4))
        {
          return 0;
        }

        std::string::push_back(a6, v15);
        ++*a4;
      }

      if (a5 <= *(a1 + 1064))
      {
        return 1;
      }

      a5 = internal::marisa::grimoire::vector::BitVector::select1(a1, a5) + ~a5;
      goto LABEL_22;
    }

    v14 = *(v13 + 8);
    if (v14 > 0xFFFFFEFF)
    {
      if (*(a2 + *a4) != v14)
      {
        return 0;
      }

      std::string::push_back(a6, v14);
      ++*a4;
      goto LABEL_21;
    }

    v24 = *(a1 + 1000);
    if (!v24)
    {
      break;
    }

    if ((internal::marisa::grimoire::trie::LoudsTrie::prefix_match_(v24, a2, a3, a4, v14, a6) & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    a5 = *(*(a1 + 1024) + 12 * v12);
    if (!a5)
    {
      return 1;
    }

LABEL_22:
    if (*a4 >= a3)
    {
      internal::marisa::grimoire::trie::LoudsTrie::restore_(a1, a6, a5);
      return 1;
    }
  }

  if (internal::marisa::grimoire::trie::Tail::prefix_match((a1 + 744), a2, a3, a4, v14, a6))
  {
    goto LABEL_21;
  }

  return 0;
}

void internal::marisa::grimoire::trie::Tail::~Tail(internal::marisa::grimoire::trie::Tail *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x1D38A8C00](v2, 0x1000C8077774924);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x1D38A8C00](v4, 0x1000C8077774924);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x1D38A8C00](v5, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1D38A8C00](*this, 0x1000C8077774924);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E84048A0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (v6 < a2)
  {
    v7 = 2 * v6;
    if (v6 >> 60)
    {
      v7 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v6 > a2 >> 1)
    {
      a2 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(result, a2);
  }

  v8 = v5[3];
  v9 = v4 - v8;
  if (v4 > v8)
  {
    v10 = 0;
    v11 = *a3;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = v5[1] + 8 * v8;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_1D2B276B0)));
      if (v14.i8[0])
      {
        *(v13 + 8 * v10) = v11;
      }

      if (v14.i8[4])
      {
        *(v13 + 8 * v10 + 8) = v11;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  v5[3] = v4;
  return result;
}

void *internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](8 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

void *internal::marisa::grimoire::vector::Vector<unsigned long long>::shrink(void *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
  }

  v2 = result[3];
  if (v2 != result[4])
  {

    return internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(result, v2);
  }

  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 60)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned long long>::realloc(result, a2);
  }

  v3[3] = v2;
  return result;
}

void internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::realloc(a1, a2);
  }

  v6 = a1[3];
  if (v2 > v6)
  {
    bzero((a1[1] + 12 * v6), 12 * (v2 - v6));
  }

  a1[3] = v2;
}

_DWORD *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](12 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6;
      v7[2] = *(v6 + 2);
      *v7 = v8;
      v7 += 3;
      v6 = (v6 + 12);
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned int>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 61)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(result, a2);
  }

  v3[3] = v2;
  return result;
}

_DWORD *internal::marisa::grimoire::vector::Vector<unsigned int>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](4 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::BitVector::write_(internal::marisa::grimoire::vector::BitVector *this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::write_(this, a2);
  __buf = *(this + 6);
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  v5 = *(this + 7);
  internal::marisa::grimoire::io::Writer::write_data(a2, &v5, 4uLL);
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::write_(this + 64, a2);
  internal::marisa::grimoire::vector::Vector<unsigned int>::write_(this + 112, a2);
  return internal::marisa::grimoire::vector::Vector<unsigned int>::write_(this + 160, a2);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned long long>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = 8 * *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<unsigned long long>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, 0);
}

uint64_t internal::marisa::grimoire::io::Writer::write<unsigned long long>(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
  }

  v3 = 8 * a3;

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, v3);
}

uint64_t internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::vector::RankIndex>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = 12 * *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<internal::marisa::grimoire::vector::RankIndex>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, 4 * (*(a1 + 24) & 1));
}

uint64_t internal::marisa::grimoire::io::Writer::write<internal::marisa::grimoire::vector::RankIndex>(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
  }

  v3 = 12 * a3;

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, v3);
}

uint64_t internal::marisa::grimoire::vector::Vector<unsigned int>::write_(uint64_t a1, internal::marisa::grimoire::io::Writer *this)
{
  __buf = 4 * *(a1 + 24);
  internal::marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  internal::marisa::grimoire::io::Writer::write<unsigned int>(this, *(a1 + 16), *(a1 + 24));
  return internal::marisa::grimoire::io::Writer::seek(this, 4 * (*(a1 + 24) & 1));
}

uint64_t internal::marisa::grimoire::io::Writer::write<unsigned int>(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x200000021;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:33: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000022;
    v6 = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/io/writer.h:34: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v6;
  }

  v3 = 4 * a3;

  return internal::marisa::grimoire::io::Writer::write_data(a1, a2, v3);
}

uint64_t internal::marisa::grimoire::vector::FlatVector::write_(internal::marisa::grimoire::vector::FlatVector *this, internal::marisa::grimoire::io::Writer *a2)
{
  internal::marisa::grimoire::vector::Vector<unsigned long long>::write_(this, a2);
  LODWORD(__buf) = *(this + 6);
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(this + 14);
  internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  __buf = *(this + 8);
  return internal::marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<char const*>>,std::reverse_iterator<std::__wrap_iter<char const*>>>(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (a6 > 0x16)
  {
    operator new();
  }

  result[23] = a6;
  while (a3 != a5)
  {
    v8 = *--a3;
    *v7++ = v8;
  }

  *v7 = 0;
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

char *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](24 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = result + 16;
    v7 = (a1[1] + 16);
    do
    {
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 2) = *(v7 - 2);
      *(v6 - 1) = *(v7 - 1);
      v8 = *v7;
      v7 += 6;
      *v6 = v8;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_current_trie<internal::marisa::grimoire::trie::Key>(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 8);
  if (v10)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v10 - 1);
    v14 = xmmword_1D2B276C0;
    v15 = xmmword_1D2B276B0;
    v16 = (v11 + 64);
    v17 = vdupq_n_s64(4uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(v18, *v13.i8).u8[0])
      {
        *(v16 - 12) = v12;
      }

      if (vuzp1_s16(v18, *&v13).i8[2])
      {
        *(v16 - 6) = v12 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
      {
        *v16 = v12 + 2;
        v16[6] = v12 + 3;
      }

      v12 += 4;
      v14 = vaddq_s64(v14, v17);
      v15 = vaddq_s64(v15, v17);
      v16 += 24;
    }

    while (((v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
  }

  v19 = internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v11, v11 + 24 * v10, 0);
  v20 = 256;
  if (a5 != 1)
  {
    v20 = 1;
  }

  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < v19 / *(a4 + 8));
  internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Cache>::resize(a1 + 126, v21);
  a1[132] = v21 - 1;
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  LOBYTE(v71[0]) = 0;
  internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, v71);
  internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
  v61 = a3;
  v62 = a5;
  memset(v71, 0, 41);
  v70 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  memset(v68, 0, 25);
  v65.n128_u64[0] = *(a2 + 24) << 32;
  v65.n128_u32[2] = 0;
  std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, &v65);
  v22 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v63 = a4;
    do
    {
      v23 = a1[58];
      v24 = (*(*(&v69[0] + 1) + 8 * (v70 / 0x155)) + 12 * (v70 % 0x155));
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      *&v70 = v70 + 1;
      *(&v70 + 1) = v22 - 1;
      if (v70 >= 0x2AA)
      {
        operator delete(**(&v69[0] + 1));
        *(&v69[0] + 1) += 8;
        *&v70 = v70 - 341;
      }

      v28 = v23 - v22;
      if (v25 < v26)
      {
        while (1)
        {
          v29 = *(a2 + 8) + 24 * v25;
          if (*(v29 + 8) != v27)
          {
            break;
          }

          *(v29 + 12) = v28;
          v25 = (v25 + 1);
          if (v26 == v25)
          {
            goto LABEL_51;
          }
        }
      }

      if (v25 != v26)
      {
        v30 = v67;
        v67 = 0u;
        memset(v68, 0, 25);
        if (v30)
        {
          MEMORY[0x1D38A8C00](v30, 0x1000C8077774924);
        }

        v31 = *(a2 + 8);
        v32 = *(v31 + 24 * v25 + 12);
        v33 = v25 + 1;
        if (v25 + 1 < v26)
        {
          v64 = v23;
          v34 = v32;
          v35 = 24 * v25;
          v36 = (v25 << 32) + 0x100000000;
          do
          {
            if (*(*(v31 + v35) + v27) != *(*(v31 + v35 + 24) + v27))
            {
              *&v37 = v34;
              v65.n128_u64[0] = v36 + v25;
              v65.n128_u64[1] = v27 | (v37 << 32);
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
              v31 = *(a2 + 8);
              v34 = 0.0;
              LODWORD(v25) = v33;
            }

            v34 = v34 + *(v31 + v35 + 36);
            ++v33;
            v35 += 24;
            v36 += 0x100000000;
          }

          while (v26 != v33);
          v32 = v34;
          a4 = v63;
          v23 = v64;
        }

        v65.n128_u32[0] = v25;
        v65.n128_u32[1] = v26;
        v65.n128_u64[1] = v27 | (LODWORD(v32) << 32);
        v38 = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(&v67, &v65);
        if (*(a4 + 16) == 0x20000)
        {
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,std::greater<internal::marisa::grimoire::trie::WeightedRange>>(*(&v67 + 1), (*(&v67 + 1) + 16 * v68[1]), &v65, v38);
        }

        v39 = v68[1];
        if (v23 == v22)
        {
          a1[133] = v68[1];
        }

        if (v39)
        {
          v40 = 0;
          do
          {
            v41 = (*(&v67 + 1) + 16 * v40);
            v42 = *(v41 + 2);
            v43 = *(a2 + 8) + 24 * *v41;
            v44 = *(v43 + 8);
            v45 = v42 + 1;
            if (v42 + 1 >= v44)
            {
              v46 = *(v41 + 2);
              LODWORD(v44) = v42 + 1;
            }

            else
            {
              v46 = v44 - 1;
              v47 = *(v41 + 2);
              do
              {
                v48 = v47;
                v47 = v45;
                v49 = (*(a2 + 8) + 24 * *v41);
                v50 = *v41;
                while (++v50 < *(v41 + 1))
                {
                  v51 = *v49;
                  v52 = v49[3];
                  v49 += 3;
                  if (*(v51 + v47) != *(v52 + v47))
                  {
                    v46 = v48;
                    LODWORD(v44) = v47;
                    goto LABEL_45;
                  }
                }

                v45 = v47 + 1;
              }

              while (v47 + 1 != v44);
            }

LABEL_45:
            v53 = v41[3];
            v54 = a1[127] + 12 * (((32 * v28) ^ v28 ^ *(*v43 + v42)) & a1[132]);
            if (*(v54 + 8) < v53)
            {
              v55 = a1[81];
              *v54 = v28;
              *(v54 + 4) = v55;
              *(v54 + 8) = v53;
              v42 = *(v41 + 2);
            }

            if (v46 == v42)
            {
              v65.n128_u8[0] = *(*(*(a2 + 8) + 24 * *v41) + v46);
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 0);
            }

            else
            {
              v65.n128_u8[0] = 0;
              internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(a1 + 78, &v65);
              internal::marisa::grimoire::vector::BitVector::push_back(a1 + 52, 1);
              v65 = 0uLL;
              v66 = 0;
              v56 = *(v41 + 2);
              v65.n128_u64[0] = *(*(a2 + 8) + 24 * *v41) + v56;
              v65.n128_u64[1] = (v44 - v56);
              v65.n128_f32[3] = v41[3];
              internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::push_back(v71, &v65);
            }

            *(v41 + 2) = v44;
            std::deque<internal::marisa::grimoire::trie::Range>::push_back(v69, v41);
            internal::marisa::grimoire::vector::BitVector::push_back(a1, 1);
            ++v40;
          }

          while (v40 < v68[1]);
        }
      }

LABEL_51:
      internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
      v22 = *(&v70 + 1);
    }

    while (*(&v70 + 1));
  }

  internal::marisa::grimoire::vector::BitVector::push_back(a1, 0);
  internal::marisa::grimoire::vector::BitVector::build(a1, v62 == 1, 1);
  internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(a1 + 624);
  internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::Key>(a1, a2, v61);
  v57 = *a2;
  *a2 = v71[0];
  v71[0] = v57;
  v58 = *(a2 + 16);
  *(a2 + 16) = *&v71[1];
  *&v71[1] = v58;
  v59 = *(a2 + 24);
  *(a2 + 24) = *(&v71[1] + 8);
  *(&v71[1] + 8) = v59;
  LOBYTE(v58) = *(a2 + 40);
  *(a2 + 40) = BYTE8(v71[2]);
  BYTE8(v71[2]) = v58;
  if (v67)
  {
    MEMORY[0x1D38A8C00](v67, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](v69);
  result = *&v71[0];
  if (*&v71[0])
  {
    return MEMORY[0x1D38A8C00](*&v71[0], 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B0A290(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a11)
  {
    MEMORY[0x1D38A8C00](a11, 0x1000C8077774924);
  }

  std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](va);
  v19 = *(v16 - 144);
  if (v19)
  {
    MEMORY[0x1D38A8C00](v19, 0x1000C8077774924);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc";
    exception[2] = 0x8000001D3;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/trie/louds-trie.cc:467: MARISA_MEMORY_ERROR: std::bad_alloc";
  }

  _Unwind_Resume(a1);
}

uint64_t internal::marisa::grimoire::vector::FlatVector::build(__int128 *a1, uint64_t a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  internal::marisa::grimoire::vector::FlatVector::build_(v9, a2);
  v3 = *a1;
  *a1 = v9[0];
  v9[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(a1 + 6);
  *(a1 + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(a1 + 14);
  *(a1 + 14) = v11;
  v11 = v6;
  v7 = *(a1 + 8);
  *(a1 + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1D38A8C00](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B0A46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *internal::marisa::grimoire::vector::Vector<unsigned char>::push_back(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<unsigned char>::realloc(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

__n128 internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::push_back(uint64_t *a1, __n128 *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 59)
    {
      v7 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::realloc(a1, v8);
    v4 = a1[3];
  }

  result = *a2;
  *(a1[1] + 16 * v4) = *a2;
  ++a1[3];
  return result;
}

uint64_t *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::push_back(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 > 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::Key>::realloc(result, v8);
    v4 = v3[3];
  }

  v9 = v3[1] + 24 * v4;
  *v9 = *a2;
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 12) = *(a2 + 12);
  *(v9 + 16) = *(a2 + 16);
  ++v3[3];
  return result;
}

_BYTE *internal::marisa::grimoire::vector::Vector<unsigned char>::shrink(_BYTE *result)
{
  if (result[40] == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F4E071E8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000072;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/TrieUtils/src/third_party/marisa/lib/marisa/grimoire/vector/vector.h:114: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return internal::marisa::grimoire::vector::Vector<unsigned char>::realloc(result, v2);
  }

  return result;
}

uint64_t internal::marisa::grimoire::trie::LoudsTrie::build_terminals<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  memset(v13, 0, 41);
  internal::marisa::grimoire::vector::Vector<unsigned int>::resize(v13, *(a2 + 24));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(&v13[0] + 1);
    v7 = (*(a2 + 16) + 16);
    do
    {
      *(v6 + 4 * *v7) = *(v7 - 1);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(&v13[0] + 1);
  }

  v8 = *a3;
  v9 = *&v13[1];
  *a3 = *&v13[0];
  *(a3 + 1) = v6;
  v13[0] = v8;
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;
  *&v13[1] = v10;
  v11 = *(a3 + 24);
  *(a3 + 24) = *(&v13[1] + 8);
  *(&v13[1] + 8) = v11;
  LOBYTE(v10) = *(a3 + 40);
  *(a3 + 40) = BYTE8(v13[2]);
  result = v8;
  BYTE8(v13[2]) = v10;
  if (v8)
  {
    return MEMORY[0x1D38A8C00](v8, 0x1000C8077774924);
  }

  return result;
}

void sub_1D2B0A778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1D38A8C00](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    v10 = internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Key>(v9, v9 + 24 * (v6 / 0x30uLL), v4 - 24, a3);
    v11 = v10;
    v12 = v9;
    v5 = v4;
    v13 = v9;
    v14 = v4;
    while (v12 < v5)
    {
      v15 = *(v12 + 8);
      v16 = a3 >= v15 ? -1 : *(*v12 + a3);
      if (v16 > v10)
      {
        break;
      }

      if (v16 == v10)
      {
        v17 = *v12;
        *v12 = *v13;
        *(v12 + 8) = *(v13 + 8);
        v18 = *(v12 + 12);
        *(v12 + 12) = *(v13 + 12);
        *(v12 + 16) = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v15;
        *(v13 + 12) = v18;
        v13 += 24;
      }

LABEL_11:
      v12 += 24;
    }

    if (v12 < v5)
    {
      v19 = v5 - 24;
      do
      {
        v5 = v19;
        v20 = *(v19 + 8);
        if (a3 >= v20)
        {
          v21 = -1;
        }

        else
        {
          v21 = *(*v5 + a3);
        }

        if (v21 < v10)
        {
          break;
        }

        if (v21 == v10)
        {
          v22 = *(v14 - 24);
          v14 -= 24;
          v23 = *v5;
          *v5 = v22;
          *(v5 + 8) = *(v14 + 8);
          v24 = *(v5 + 12);
          *(v5 + 12) = *(v14 + 12);
          *(v5 + 16) = *(v14 + 16);
          *v14 = v23;
          *(v14 + 8) = v20;
          *(v14 + 12) = v24;
        }

        v19 = v5 - 24;
      }

      while (v12 < v5);
    }

    if (v12 < v5)
    {
      v25 = *v12;
      v26 = *(v12 + 16);
      *v12 = *v5;
      v27 = *(v12 + 8);
      *(v12 + 8) = *(v5 + 8);
      *(v12 + 12) = *(v5 + 12);
      *(v12 + 16) = *(v5 + 16);
      *v5 = v25;
      *(v5 + 8) = v27;
      *(v5 + 16) = v26;
      goto LABEL_11;
    }

    if (v13 > v9)
    {
      v28 = 0;
      do
      {
        v29 = v13 + v28;
        v30 = v12 + v28;
        v31 = *(v13 + v28 - 24);
        v32 = *(v13 + v28 - 8);
        *(v29 - 24) = *(v12 + v28 - 24);
        v33 = *(v13 + v28 - 16);
        *(v29 - 16) = *(v12 + v28 - 16);
        *(v29 - 12) = *(v12 + v28 - 12);
        *(v29 - 8) = *(v12 + v28 - 8);
        *(v30 - 24) = v31;
        *(v30 - 16) = v33;
        *(v30 - 8) = v32;
        v28 -= 24;
      }

      while (v13 + v28 > v9);
      v12 += v28;
    }

    while (v14 < v4)
    {
      v34 = *v14;
      v35 = *(v14 + 16);
      *v14 = *v5;
      v36 = *(v14 + 8);
      *(v14 + 8) = *(v5 + 8);
      *(v14 + 12) = *(v5 + 12);
      *(v14 + 16) = *(v5 + 16);
      *v5 = v34;
      *(v5 + 8) = v36;
      *(v5 + 16) = v35;
      v14 += 24;
      v5 += 24;
    }

    v37 = v12 - v8;
    v38 = v5 - v12;
    if (v37 <= (v5 - v12))
    {
      v39 = v4 - v5;
      if ((v4 - v5) <= v38)
      {
        if (v37 == 24)
        {
          ++v7;
        }

        else if (v37 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v9, v12, a3);
        }

        if (v39 == 24)
        {
          ++v7;
        }

        else if (v39 >= 25)
        {
          v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v5, v4, a3);
        }

        if (v38 == 24)
        {
          ++v7;
        }

        else if (v38 >= 25)
        {
          if (v11 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_60;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v12;
        goto LABEL_60;
      }
    }

    if (v38 == 24)
    {
      goto LABEL_32;
    }

    if (v38 >= 25)
    {
      if (v10 == -1)
      {
LABEL_32:
        ++v7;
      }

      else
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v12, v5, a3 + 1);
      }
    }

    v40 = v4 - v5;
    if (v37 >= (v4 - v5))
    {
      if (v40 == 24)
      {
        ++v7;
      }

      else if (v40 >= 25)
      {
        v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v5, v4, a3);
      }

      v4 = v12;
      v5 = v9;
    }

    else if (v37 == 24)
    {
      ++v7;
    }

    else if (v37 >= 25)
    {
      v7 += internal::marisa::grimoire::algorithm::details::sort<internal::marisa::grimoire::trie::Key *>(v9, v12, a3);
    }

LABEL_60:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_64:
  if (v6 >= 25)
  {
    v7 += internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Key *>(v5, v4, a3);
  }

  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::median<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 8) <= a4)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*a1 + a4);
  }

  if (*(a2 + 8) <= a4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *(*a2 + a4);
  }

  if (*(a3 + 8) <= a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*a3 + a4);
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (v7 >= v6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t internal::marisa::grimoire::algorithm::details::insertion_sort<internal::marisa::grimoire::trie::Key *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 24;
  if (a1 + 24 >= a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v3;
    if (v3 <= a1)
    {
      v15 = 0;
    }

    else
    {
      while (1)
      {
        v9 = v8 - 24;
        v10 = internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Key>(v8 - 24, v8, a3);
        if (v10 < 1)
        {
          break;
        }

        v11 = *(v8 - 24);
        v12 = *(v8 - 8);
        *(v8 - 24) = *v8;
        v13 = *(v8 + 8);
        *(v8 - 8) = *(v8 + 16);
        *v8 = v11;
        v14 = *(v8 - 16);
        *(v8 - 16) = v13;
        *(v8 + 8) = v14;
        *(v8 + 16) = v12;
        v8 -= 24;
        if (v9 <= a1)
        {
          v10 = 1;
          break;
        }
      }

      v15 = v10 != 0;
    }

    v7 += v15;
    v3 += 24;
  }

  while (v3 < a2);
  return v7;
}

uint64_t internal::marisa::grimoire::algorithm::details::compare<internal::marisa::grimoire::trie::Key>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 - a3;
  if (v3 <= a3)
  {
LABEL_6:
    if (v3 < v4)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v3 == v4)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v6 = v4 - a3;
    v7 = (*a1 + a3);
    v8 = (*a2 + a3);
    while (v6)
    {
      v9 = *v7;
      v10 = *v8;
      result = (v9 - v10);
      if (v9 != v10)
      {
        return result;
      }

      --v6;
      ++v7;
      ++v8;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

_BYTE *internal::marisa::grimoire::vector::Vector<unsigned char>::realloc(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

void *std::deque<internal::marisa::grimoire::trie::Range>::push_back(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = 341 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<internal::marisa::grimoire::trie::Range>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v9 = *(v6 + 8 * (v8 / 0x155)) + 12 * (v8 % 0x155);
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  ++v3[5];
  return result;
}

void *std::deque<internal::marisa::grimoire::trie::Range>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_back<internal::marisa::grimoire::trie::Range *&>(a1, &v10);
}

void sub_1D2B0B048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_back<internal::marisa::grimoire::trie::Range *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_front<internal::marisa::grimoire::trie::Range *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_back<internal::marisa::grimoire::trie::Range *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<internal::marisa::grimoire::trie::Range *>::emplace_front<internal::marisa::grimoire::trie::Range *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<internal::marisa::grimoire::trie::Range *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *internal::marisa::grimoire::vector::Vector<internal::marisa::grimoire::trie::WeightedRange>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](16 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1D38A8C00);
  }

  return result;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,std::greater<internal::marisa::grimoire::trie::WeightedRange>>(__n128 *a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  v7 = a2 - a1;
  if (v7 < 129)
  {
    v13 = 0;
    v9 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E69E5398];
    v9 = a2 - a1;
    while (1)
    {
      v10 = operator new(16 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        v13 = 0;
        v9 = v11;
        goto LABEL_8;
      }
    }

    v13 = v10;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2, a3, v7, v13, v9, a4);
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_1D2B0B680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      a7.n128_u32[0] = a2[-1].n128_u32[3];
      if (a7.n128_f32[0] > a1->n128_f32[3])
      {
        a7 = *a1;
        *a1 = a2[-1];
        a2[-1] = a7;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        v17.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, v14, a3, v15, a5, a7);
        v18.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13], v17);

        a7.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*>(a5, &a5[v13], &a5[v13], &a5[a4], a1, v18);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, v14, a3, v15, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        a7.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6, v16).n128_u64[0];
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2);
    }
  }

  return a7.n128_f64[0];
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 28);
        v6 = *(v4 + 12);
        v4 = v2;
        if (v5 > v6)
        {
          v10 = *v2;
          v11 = *(v2 + 8);
          v7 = v3;
          while (1)
          {
            *(result + v7 + 16) = *(result + v7);
            if (!v7)
            {
              break;
            }

            v8 = *(result + v7 - 4);
            v7 -= 16;
            if (v5 <= v8)
            {
              v9 = result + v7 + 16;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v10;
          *(v9 + 8) = v11;
          *(v9 + 12) = v5;
        }

        v2 = v4 + 16;
        v3 += 16;
      }

      while (v4 + 16 != a2);
    }
  }

  return result;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 1;
      if (a2[-1].n128_f32[3] <= a1->n128_f32[3])
      {
        *a5 = *a1;
        a6 = *v10;
      }

      else
      {
        *a5 = *v10;
        a6 = *a1;
      }

      a5[1] = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      a6.n128_f64[0] = std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*>(a1, &a1[a4 >> 1], &a1[a4 >> 1], a2, a5, v12);
    }

    else
    {

      a6.n128_u64[0] = std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2, a5).n128_u64[0];
    }
  }

  return a6.n128_f64[0];
}

double std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  while (a1 != a2)
  {
    if (a3 == a4)
    {
      while (a1 != a2)
      {
        v9 = *a1++;
        a6.n128_u64[0] = v9.n128_u64[0];
        *a5++ = v9;
      }

      return a6.n128_f64[0];
    }

    if (a3->n128_f32[3] <= a1->n128_f32[3])
    {
      v7 = *a1++;
      a6 = v7;
    }

    else
    {
      v6 = *a3++;
      a6 = v6;
    }

    *a5++ = a6;
  }

  while (a3 != a4)
  {
    v8 = *a3++;
    a6.n128_u64[0] = v8.n128_u64[0];
    *a5++ = v8;
  }

  return a6.n128_f64[0];
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      result.n128_u32[0] = a2->n128_u32[3];
      v13 = -a5;
      while (1)
      {
        v14 = &a1[v12];
        if (result.n128_f32[0] > a1[v12].n128_f32[3])
        {
          break;
        }

        ++v12;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v39 = a3;
      v40 = a8;
      if (-v13 >= v10)
      {
        if (v13 == -1)
        {
          v43 = a1[v12];
          a1[v12] = *a2;
          result = v43;
          *a2 = v43;
          return result;
        }

        v26 = v16 / 2;
        v20 = &a1[v16 / 2 + v12];
        if (a3 == a2)
        {
          v18 = a2;
        }

        else
        {
          v27 = a3 - a2;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[v27 >> 1];
            v30 = v29->n128_f32[3];
            v31 = v29 + 1;
            v27 += ~(v27 >> 1);
            if (v30 > v20->n128_f32[3])
            {
              v18 = v31;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = v18 - a2;
      }

      else
      {
        v17 = v10 / 2;
        v18 = &a2[v10 / 2];
        if (v14 == a2)
        {
          v25 = &a1[v12];
          v20 = &a1[v12];
        }

        else
        {
          v19 = (a2 - a1 - v12 * 16) >> 4;
          v20 = &a1[v12];
          do
          {
            v21 = v19 >> 1;
            v22 = &v20[v19 >> 1];
            v23 = v22->n128_f32[3];
            v24 = v22 + 1;
            v19 += ~(v19 >> 1);
            if (v18->n128_f32[3] > v23)
            {
              v19 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          while (v19);
          v25 = v20;
        }

        v26 = (v25 - a1 - v12 * 16) >> 4;
      }

      a5 = -(v26 + v13);
      v32 = v10 - v17;
      v33 = v17;
      v34 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,internal::marisa::grimoire::trie::WeightedRange *>(v20, a2, v18);
      v35 = v33;
      v36 = v34;
      if (v26 + v35 >= v10 - (v26 + v35) - v13)
      {
        v38 = v35;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(v34, v18, v39, a4, a5, v32, a7, v40);
        v18 = v20;
        v32 = v38;
        a5 = v26;
        a8 = v40;
        a3 = v36;
      }

      else
      {
        v37 = v26;
        a8 = v40;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(v14, v20, v34, a4, v37, v35, a7, v40);
        v14 = v36;
        a3 = v39;
      }

      v10 = v32;
      a1 = v14;
      a2 = v18;
      if (!v32)
      {
        return result;
      }
    }

    result.n128_u64[0] = std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(a1, a2, a3, a4, a5, v10, a7, result).n128_u64[0];
  }

  return result;
}

__n128 std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    result = *a1;
    *a3 = *a1;
    v4 = a1 + 1;
    if (&a1[1] != a2)
    {
      v5 = 0;
      v6 = a3;
      do
      {
        v7 = a1;
        v8 = v6;
        a1 = v4;
        v9 = ++v6;
        if (v7[1].n128_f32[3] > v8->n128_f32[3])
        {
          *v6 = *v8;
          v9 = a3;
          if (v8 != a3)
          {
            v10 = v5;
            while (1)
            {
              v9 = (a3 + v10);
              if (v7[1].n128_f32[3] <= *(&a3->n128_f32[-1] + v10))
              {
                break;
              }

              *v9 = v9[-1];
              v10 -= 16;
              if (!v10)
              {
                v9 = a3;
                break;
              }
            }
          }
        }

        result = *a1;
        *v9 = *a1;
        v4 = a1 + 1;
        v5 += 16;
      }

      while (&a1[1] != a2);
    }
  }

  return result;
}

__n128 std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<internal::marisa::grimoire::trie::WeightedRange> &,internal::marisa::grimoire::trie::WeightedRange*>(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t __src, __n128 result)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v14 = -__src;
      v15 = __src;
      v16 = a1;
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 4;
        v14 -= 16;
      }

      while (v16 != a2);
      while (a2 != a3)
      {
        if (a2->n128_f32[3] <= *(__src + 12))
        {
          v19 = *__src;
          __src += 16;
          result = v19;
        }

        else
        {
          v18 = *a2++;
          result = v18;
        }

        *a1++ = result;
        if (v15 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v14));
    }
  }

  else if (a2 != a3)
  {
    v8 = 0;
    do
    {
      result = a2[v8];
      *(__src + v8 * 16) = result;
      ++v8;
    }

    while (&a2[v8] != a3);
    v9 = (__src + v8 * 16);
    while (a2 != a1)
    {
      v10 = v9[-1].n128_f32[3];
      v11 = a2[-1].n128_f32[3];
      v12 = v10 <= v11;
      if (v10 <= v11)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = a2 - 1;
      }

      result = *v13;
      a3[-1] = *v13;
      --a3;
      if (v12)
      {
        --v9;
      }

      else
      {
        --a2;
      }

      if (v9 == __src)
      {
        return result;
      }
    }

    if (v9 != __src)
    {
      v20 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        result = v9[-1];
        a3[v20--] = result;
        --v9;
      }

      while (v9 != __src);
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *,internal::marisa::grimoire::trie::WeightedRange *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v9 = *__src;
      v6 = a3 - a2;
      memmove(__src, __src + 16, a3 - a2);
      v4 = &__src[v6];
      *v4 = v9;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v10 = *(a3 - 1);
      v7 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        memmove(__src + 16, __src, v7);
      }

      *__src = v10;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,internal::marisa::grimoire::trie::WeightedRange *>(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 4;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 4)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 16;
      v7 = a1 + 16;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 16;
        v9 = v6 == a3;
        v6 += 16;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 4;
    v11 = (a2 - a1) >> 4;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[16 * v11];
    do
    {
      v14 = *(v13 - 1);
      v13 -= 16;
      v15 = &v13[v3];
      v16 = v13;
      do
      {
        v17 = v16;
        v16 = v15;
        *v17 = *v15;
        v18 = __OFSUB__(v4, (a3 - v15) >> 4);
        v20 = v4 - ((a3 - v15) >> 4);
        v19 = (v20 < 0) ^ v18;
        v15 = &a1[16 * v20];
        if (v19)
        {
          v15 = v16 + v3;
        }
      }

      while (v15 != v13);
      *v16 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t std::deque<internal::marisa::grimoire::trie::Range>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 341;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<internal::marisa::grimoire::trie::Range *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<internal::marisa::grimoire::trie::Range *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t internal::marisa::grimoire::vector::FlatVector::build_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 > v5)
      {
        v5 = v8;
      }

      --v7;
    }

    while (v7);
    v10 = 32 - __clz(v5);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 != 0;
  v13 = (v11 * v4 + 63) >> 6;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  result = internal::marisa::grimoire::vector::Vector<unsigned long long>::resize(a1, v14);
  if (v14)
  {
    *(*(a1 + 8) + 8 * *(a1 + 24) - 8) = 0;
  }

  *(a1 + 48) = v11;
  if (v11)
  {
    *(a1 + 56) = 0xFFFFFFFF >> -v11;
  }

  v16 = *(a2 + 24);
  *(a1 + 64) = v16;
  if (v16)
  {
    v17 = 0;
    do
    {
      result = internal::marisa::grimoire::vector::FlatVector::set(a1, v17, *(*(a2 + 16) + 4 * v17));
      ++v17;
    }

    while (v17 < *(a2 + 24));
  }

  return result;
}

uint64_t internal::marisa::grimoire::vector::FlatVector::set(uint64_t this, uint64_t a2, int a3)
{
  v3 = *(this + 48);
  v4 = (v3 * a2) & 0x3F;
  v5 = *(this + 56);
  v6 = (*(this + 8) + 8 * ((v3 * a2) >> 6));
  v7 = v5 & a3;
  *v6 = *v6 & ~(v5 << (v3 * a2)) | (v7 << (v3 * a2));
  if ((v4 + v3) >= 0x41)
  {
    v6[1] = v6[1] & ~(v5 >> -v4) | (v7 >> -v4);
  }

  return this;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,std::pair<unsigned int,unsigned int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = (v39 + 1);
                      *v55 = v71;
                      v74 = (v55 + 1);
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = (v55 + 1);
                  v73 = (v15 + 1);
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}