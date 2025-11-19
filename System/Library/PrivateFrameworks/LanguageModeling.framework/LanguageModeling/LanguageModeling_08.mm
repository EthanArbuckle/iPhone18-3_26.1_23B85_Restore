void sub_1AE64EA1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1AE64EC9C(va1);
  sub_1AE64ED38(va);
  _Unwind_Resume(a1);
}

void sub_1AE64EA38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE64EC9C(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void *sub_1AE64EA58(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x1B2706400](v5, 0x1000C4065B674BELL);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_1AE64EADC(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v12 = *(v10 - 3);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 2) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE64EBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNSt3__16vectorINS3_INS0_14SanitizedTokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNSt3__16vectorINS3_INS0_14SanitizedTokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNSt3__16vectorINS3_INS0_14SanitizedTokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNSt3__16vectorINS3_INS0_14SanitizedTokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ***sub_1AE64EC9C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            MEMORY[0x1B2706400](v6, 0x1000C4065B674BELL);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1AE64ED38(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v10 = *--v8;
            v9 = v10;
            *v8 = 0;
            if (v10)
            {
              MEMORY[0x1B2706400](v9, 0x1000C4065B674BELL);
            }
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE64EE00(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          v9 = *(v3 - 2);
          do
          {
            v11 = *(v9 - 3);
            v9 -= 24;
            v10 = v11;
            if (v11)
            {
              *(v8 - 2) = v10;
              operator delete(v10);
            }

            v8 = v9;
          }

          while (v9 != v6);
          v5 = *v4;
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE64EEB4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_1AE64EF24(uint64_t a1@<X0>, uint64_t *a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  __p = 0;
  v27 = 0;
  v28 = 0;
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v5 + v6 + 8) - *(v5 + v6);
      if (v9)
      {
        if (((v9 >> 5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v10 = __p;
      v11 = v7 - __p;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - __p) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      if (0x5555555555555556 * (-__p >> 3) > v13)
      {
        v13 = 0x5555555555555556 * (-__p >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-__p >> 3) >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (v14 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v15 = 24 * v12;
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v7 = 24 * v12 + 24;
      v16 = (v15 - v11);
      memcpy((v15 - v11), v10, v11);
      __p = v16;
      v28 = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v27 = v7;
      ++v8;
      v5 = *a2;
      v6 += 24;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  sub_1AE64C5BC(a4, a1, a2, &__p, a3);
  v17 = __p;
  if (__p)
  {
    v18 = v27;
    v19 = __p;
    if (v27 != __p)
    {
      v20 = v27;
      do
      {
        v22 = *(v20 - 3);
        v20 -= 24;
        v21 = v22;
        if (v22)
        {
          *(v18 - 2) = v21;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = __p;
    }

    v27 = v17;
    operator delete(v19);
  }
}

void sub_1AE64F2E4(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1 != a1[1])
  {
    operator new();
  }
}

void sub_1AE64F574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    JUMPOUT(0x1AE64F580);
  }

  sub_1AE64EA58(v20);
  _Unwind_Resume(a1);
}

void sub_1AE64F58C(void *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  JUMPOUT(0x1AE64F5A8);
}

void sub_1AE64F5B0(void *a1)
{
  v1 = ((a1[1] - *a1) >> 3) + 1;
  if (!(v1 >> 61))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 2 > v1)
    {
      v1 = v2 >> 2;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      v3 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v1;
    }

    if (v3)
    {
      if (!(v3 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    operator new();
  }

  sub_1AE5CBB70();
}

BOOL sub_1AE64F7D4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v5 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
  v6 = *(v4 + 23);
  if (v6 < 0)
  {
    if (v5 != v4[1])
    {
LABEL_8:
      v7 = a2[23];
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a2 + 1);
      }

      if (!v7)
      {
        return 0;
      }

      if (v8 < 0)
      {
        a2 = *a2;
      }

      v9 = v7 - 1;
      v10 = MEMORY[0x1E69E9830];
      do
      {
        v13 = *a2;
        if (v13 < 0)
        {
          v11 = __maskrune(*a2, 0x4000uLL);
        }

        else
        {
          v11 = *(v10 + 4 * v13 + 60) & 0x4000;
        }

        ++a2;
        if (v11)
        {
          v12 = v9 == 0;
        }

        else
        {
          v12 = 1;
        }

        --v9;
      }

      while (!v12);
      return v11 == 0;
    }

    if (v5 == -1)
    {
      sub_1AE61F754();
    }

    v4 = *v4;
  }

  else if (v5 != v6)
  {
    goto LABEL_8;
  }

  if (memcmp(v4, language_modeling::v1::kLanguageModelTypeTokenID, v5))
  {
    goto LABEL_8;
  }

  v15 = *(a1 + 176);

  return sub_1AE79328C(v15, a2);
}

void sub_1AE64F904(uint64_t a1)
{
  sub_1AE64F93C(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE64F93C(uint64_t a1)
{
  *a1 = &unk_1F242A2B8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 168);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 152);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 136);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 120);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(a1 + 104);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(*(a1 + 56));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_25:
    operator delete(*(a1 + 24));
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (*(a1 + 79) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*(a1 + 47) < 0)
  {
    goto LABEL_25;
  }

  return a1;
}

void *sub_1AE64FB94(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2432938;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

os_log_t sub_1AE64FC10()
{
  result = os_log_create("com.apple.LanguageModeling", "ToucanAutoCorrection");
  qword_1ED9AC548 = result;
  return result;
}

void sub_1AE64FC40(uint64_t a1)
{
  *a1 = &unk_1F2432938;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

uint64_t sub_1AE64FCB4(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1AE64FCD0(std::exception *this)
{
  this->__vftable = &unk_1F2432938;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE64FD44(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, __int128 *a8, uint64_t a9, uint64_t *a10, void *a11, uint64_t a12)
{
  v83 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F242A2B8;
  *(a1 + 8) = a2;
  v16 = atomic_load(word_1ED9AC550);
  if (v16 == 0xFFFF)
  {
    atomic_store(0, word_1ED9AC550);
  }

  *(a1 + 16) = atomic_fetch_add(word_1ED9AC550, 1u);
  if (*(a8 + 23) < 0)
  {
    sub_1AE5DBF1C((a1 + 24), *a8, *(a8 + 1));
  }

  else
  {
    v17 = *a8;
    *(a1 + 40) = *(a8 + 2);
    *(a1 + 24) = v17;
  }

  v18 = strlen(language_modeling::v1::kEnvironmentSessionTypeKey);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v81 = v18;
  if (v18)
  {
    memmove(&__dst, language_modeling::v1::kEnvironmentSessionTypeKey, v18);
  }

  *(&__dst + v19) = 0;
  v20 = sub_1AE63148C(a9, &__dst);
  v21 = (a9 + 8);
  if ((a9 + 8) == v20)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    sub_1AE64FB94(exception, &__p);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  v76 = a5;
  if (*(v20 + 20))
  {
    sub_1AE631594();
  }

  v22 = *(v20 + 14);
  if (v81 < 0)
  {
    operator delete(__dst);
  }

  *(a1 + 48) = v22;
  v23 = strlen(language_modeling::v1::kEnvironmentRecipientIdentifierKey);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v23;
  if (v23)
  {
    memmove(&__p, language_modeling::v1::kEnvironmentRecipientIdentifierKey, v23);
  }

  __p.__r_.__value_.__s.__data_[v24] = 0;
  v25 = sub_1AE63148C(a9, &__p.__r_.__value_.__l.__data_);
  if (v21 == v25)
  {
    strcpy((a1 + 56), "DefaultRecipientID");
    *(a1 + 79) = 18;
  }

  else
  {
    if (*(v25 + 20) != 1)
    {
      sub_1AE631594();
    }

    if (*(v25 + 79) < 0)
    {
      sub_1AE5DBF1C((a1 + 56), v25[7], v25[8]);
    }

    else
    {
      v26 = *(v25 + 7);
      *(a1 + 72) = v25[9];
      *(a1 + 56) = v26;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v27 = strlen(language_modeling::v1::kQueryCaseNormalizationForCPKey);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v28 = v27;
  v75 = a6;
  if (v27 >= 0x17)
  {
    operator new();
  }

  v81 = v27;
  v29 = a7;
  if (v27)
  {
    memmove(&__dst, language_modeling::v1::kQueryCaseNormalizationForCPKey, v27);
  }

  *(&__dst + v28) = 0;
  v30 = strlen(language_modeling::v1::kCaseNormalizationCapitalizeWordWithEmptyContext);
  if (v30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    operator new();
  }

  *(&v79.__r_.__value_.__s + 23) = v30;
  if (v30)
  {
    memmove(&v79, language_modeling::v1::kCaseNormalizationCapitalizeWordWithEmptyContext, v30);
  }

  v79.__r_.__value_.__s.__data_[v31] = 0;
  v32 = sub_1AE63148C(a9, &__dst);
  if (v21 == v32)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __p = v79;
      goto LABEL_51;
    }

    v33 = &v79;
    p_size = &v79.__r_.__value_.__l.__size_;
  }

  else
  {
    if (*(v32 + 20) != 1)
    {
      sub_1AE631594();
    }

    v33 = (v32 + 7);
    if ((*(v32 + 79) & 0x80000000) == 0)
    {
      *&__p.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v32[9];
      goto LABEL_51;
    }

    p_size = (v32 + 8);
  }

  sub_1AE5DBF1C(&__p, v33->__r_.__value_.__l.__data_, *p_size);
LABEL_51:
  v35 = strlen(language_modeling::v1::kCaseNormalizationCapitalizeWordWithEmptyContext);
  v36 = v35;
  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v35 != -1)
    {
      p_p = &__p;
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_56;
    }

LABEL_152:
    sub_1AE61F754();
  }

  if (v35 == -1)
  {
    goto LABEL_152;
  }

  size = __p.__r_.__value_.__l.__size_;
  p_p = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  if (size >= v36)
  {
    v40 = v36;
  }

  else
  {
    v40 = size;
  }

  v41 = memcmp(p_p, language_modeling::v1::kCaseNormalizationCapitalizeWordWithEmptyContext, v40) == 0;
  v42 = size == v36 && v41;
  if ((v37 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_82:
    operator delete(v79.__r_.__value_.__l.__data_);
    if ((v81 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_83;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_82;
  }

LABEL_64:
  if ((v81 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_83:
  operator delete(__dst);
LABEL_65:
  *(a1 + 80) = v42;
  v43 = strlen(language_modeling::v1::kNonZeroProbabilitiesForUNKKey);
  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v44 = v43;
  if (v43 >= 0x17)
  {
    operator new();
  }

  v81 = v43;
  if (v43)
  {
    memmove(&__dst, language_modeling::v1::kNonZeroProbabilitiesForUNKKey, v43);
  }

  *(&__dst + v44) = 0;
  v45 = strlen(language_modeling::v1::kZeroProbabilitiesForUNK);
  if (v45 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v46 = v45;
  if (v45 >= 0x17)
  {
    operator new();
  }

  *(&v79.__r_.__value_.__s + 23) = v45;
  if (v45)
  {
    memmove(&v79, language_modeling::v1::kZeroProbabilitiesForUNK, v45);
  }

  v79.__r_.__value_.__s.__data_[v46] = 0;
  v47 = sub_1AE63148C(a9, &__dst);
  if (v21 == v47)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __p = v79;
      goto LABEL_89;
    }

    v48 = &v79;
    v49 = &v79.__r_.__value_.__l.__size_;
  }

  else
  {
    if (*(v47 + 20) != 1)
    {
      sub_1AE631594();
    }

    v48 = (v47 + 7);
    if ((*(v47 + 79) & 0x80000000) == 0)
    {
      *&__p.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v47[9];
      goto LABEL_89;
    }

    v49 = (v47 + 8);
  }

  sub_1AE5DBF1C(&__p, v48->__r_.__value_.__l.__data_, *v49);
LABEL_89:
  v50 = strlen(language_modeling::v1::kNonZeroProbabilitiesForUNK);
  v51 = v50;
  v52 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v50 != -1)
    {
      v53 = &__p;
      v54 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_94;
    }

LABEL_155:
    sub_1AE61F754();
  }

  if (v50 == -1)
  {
    goto LABEL_155;
  }

  v54 = __p.__r_.__value_.__l.__size_;
  v53 = __p.__r_.__value_.__r.__words[0];
LABEL_94:
  if (v54 >= v51)
  {
    v55 = v51;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v53, language_modeling::v1::kNonZeroProbabilitiesForUNK, v55) == 0;
  v57 = v54 == v51 && v56;
  if ((v52 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

LABEL_114:
    operator delete(v79.__r_.__value_.__l.__data_);
    if ((v81 & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_115;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_114;
  }

LABEL_102:
  if ((v81 & 0x80000000) == 0)
  {
    goto LABEL_103;
  }

LABEL_115:
  operator delete(__dst);
LABEL_103:
  *(a1 + 81) = v57;
  v58 = strlen(language_modeling::v1::kMaxStaticCandidatesCountKey);
  if (v58 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v59 = v58;
  if (v58 >= 0x17)
  {
    operator new();
  }

  v81 = v58;
  if (v58)
  {
    memmove(&__dst, language_modeling::v1::kMaxStaticCandidatesCountKey, v58);
  }

  *(&__dst + v59) = 0;
  std::to_string(&v79, 6uLL);
  v60 = sub_1AE63148C(a9, &__dst);
  if (v21 == v60)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __p = v79;
      goto LABEL_121;
    }

    v61 = &v79;
    v62 = &v79.__r_.__value_.__l.__size_;
  }

  else
  {
    if (*(v60 + 20) != 1)
    {
      sub_1AE631594();
    }

    v61 = (v60 + 7);
    if ((*(v60 + 79) & 0x80000000) == 0)
    {
      *&__p.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v60[9];
      goto LABEL_121;
    }

    v62 = (v60 + 8);
  }

  sub_1AE5DBF1C(&__p, v61->__r_.__value_.__l.__data_, *v62);
LABEL_121:
  v63 = std::stoi(&__p, 0, 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  else if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  operator delete(v79.__r_.__value_.__l.__data_);
LABEL_123:
  if (v81 < 0)
  {
    operator delete(__dst);
  }

  *(a1 + 88) = v63;
  *(a1 + 96) = *a3;
  v64 = a3[1];
  *(a1 + 104) = v64;
  if (v64)
  {
    atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = *a4;
  v65 = a4[1];
  *(a1 + 120) = v65;
  if (v65)
  {
    atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = *v76;
  v66 = v76[1];
  *(a1 + 136) = v66;
  if (v66)
  {
    atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = *v75;
  v67 = v75[1];
  *(a1 + 152) = v67;
  if (v67)
  {
    atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = *v29;
  v68 = v29[1];
  *(a1 + 168) = v68;
  if (v68)
  {
    atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
  }

  v69 = *a10;
  *a10 = 0;
  *(a1 + 176) = v69;
  *(a1 + 184) = a12;
  *(a1 + 192) = *a11;
  v70 = a11[1];
  *(a1 + 200) = v70;
  if (v70)
  {
    atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
  }

  if (qword_1ED9AC540 != -1)
  {
    dispatch_once(&qword_1ED9AC540, &unk_1F242A3A0);
  }

  v71 = qword_1ED9AC548;
  if (os_log_type_enabled(qword_1ED9AC548, OS_LOG_TYPE_INFO))
  {
    v72 = *(a1 + 8);
    if (*(v72 + 23) < 0)
    {
      v72 = *v72;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v72;
    _os_log_impl(&dword_1AE5C8000, v71, OS_LOG_TYPE_INFO, "Model type selected for conditional probablity: %s", &__p, 0xCu);
  }

  return a1;
}

void sub_1AE6507E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      if (*(v30 + 47) < 0)
      {
        operator delete(*(v30 + 24));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

const void **sub_1AE650924(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const void **sub_1AE65095C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

const __CFArray *sub_1AE650994(const __CFLocale *a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LDEnumerateAssetDataItems();
  v2 = v21[3];
  _Block_object_dispose(&v20, 8);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LDEnumerateAssetDataItems();
  v3 = v21[3];
  _Block_object_dispose(&v20, 8);
  Value = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F8]);
  CFRetain(a1);
  v5 = MEMORY[0x1E695E480];
  if (Value && CFStringCompare(Value, @"Latn", 0) == kCFCompareEqualTo)
  {
    v6 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
    v7 = CFLocaleCreate(*v5, v6);
    CFRelease(a1);
    a1 = v7;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  LDEnumerateAssetDataItems();
  v8 = v21[3];
  _Block_object_dispose(&v20, 8);
  if (CFArrayGetCount(v3) || CFArrayGetCount(v8))
  {
    Count = CFArrayGetCount(v2);
    v10 = CFArrayGetCount(v3);
    v11 = CFArrayGetCount(v8);
    v12 = v10 + Count;
    v13 = *v5;
    MutableCopy = CFArrayCreateMutableCopy(*v5, v12 + v11, v2);
    for (i = 0; i < CFArrayGetCount(v3); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      v17 = CFURLCreateCopyAppendingPathComponent(v13, ValueAtIndex, @"morpheme.dat", 0);
      v20 = v17;
      CFArrayAppendValue(MutableCopy, v17);
      if (v17)
      {
        CFRelease(v17);
      }
    }

    v24.length = CFArrayGetCount(v8);
    v24.location = 0;
    CFArrayAppendArray(MutableCopy, v8, v24);
    v18 = v2;
    v2 = MutableCopy;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    if (v8)
    {
LABEL_12:
      CFRelease(v8);
    }
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v2;
}

void sub_1AE650D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1AE622258(va);
  sub_1AE65095C(va1);
  sub_1AE65095C(va2);
  _Unwind_Resume(a1);
}

const void **sub_1AE650E5C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE650E94(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    __assert_rtn("convertAssetBundleType", "LMLinguisticData.cpp", 120, "false && unsupported LinguisticData asset type");
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_1AE650EE4(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a5[1];
  v8[0] = *a5;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_1AE737AFC(a1, a2, v9, v8, a6, v7, 0);
}

void sub_1AE651008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_1AE622290(&a9);
  sub_1AE622290(&a11);
  sub_1AE622290(&a13);
  _Unwind_Resume(a1);
}

void sub_1AE651054(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242AA40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6510CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM21MontrealTokenIDMapperEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM21MontrealTokenIDMapperEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM21MontrealTokenIDMapperEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM21MontrealTokenIDMapperEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE651128(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE651158(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE651198(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  result = a1[3];
  if (result)
  {
    result = munmap(result, a1[4]);
  }

  a1[4] = 0;
  return result;
}

void sub_1AE651200(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242A9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE651274(char *a1)
{
  if (a1)
  {
    sub_1AE651274(*a1);
    sub_1AE651274(*(a1 + 1));
    sub_1AE627688(*(a1 + 8));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_1AE6512D8(uint64_t a1)
{
  if (*a1)
  {
    sub_1AE72AEF0((a1 + 48));
    v2 = sqlite3_close(*a1);
    v3 = v2;
    if (v2)
    {
      if (qword_1ED9AC8F8 != -1)
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      }

      v4 = qword_1ED9AC900;
      sqlite3_errmsg(*a1);
      sub_1AE731C2C(v4, v5, "Failed to close database, error code: %d  error message: %s\n", v6, v7, v8, v9, v10, v3);
    }
  }

  sub_1AE72AEF0((a1 + 48));
  sub_1AE673B40(*(a1 + 80));
  sub_1AE673B40(*(a1 + 56));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1AE6513A8(uint64_t a1)
{
  v2 = (a1 + 104);
  sub_1AE651274(*(a1 + 104));
  *(a1 + 96) = v2;
  *(a1 + 112) = 0;
  *v2 = 0;
  sub_1AE627688(*(a1 + 128));
  v3 = *(a1 + 152);
  *(a1 + 120) = a1 + 128;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_1AE627688(v3);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = a1 + 152;
  v4 = (a1 + 168);
  v5 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v5 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!stat(v5, &v25))
  {
    v7 = *(a1 + 191);
    if ((v7 & 0x80u) == 0)
    {
      v8 = *(a1 + 191);
    }

    else
    {
      v8 = *(a1 + 176);
    }

    if (v8 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v8 + 4 >= 0x17)
    {
      operator new();
    }

    memset(&v25, 0, 24);
    HIBYTE(v25.st_gid) = v8 + 4;
    if (v8)
    {
      if ((v7 & 0x80u) == 0)
      {
        v9 = (a1 + 168);
      }

      else
      {
        v9 = v4->__pn_.__r_.__value_.__r.__words[0];
      }

      memmove(&v25, v9, v8);
    }

    strcpy(&v25 + v8, "-wal");
    if ((v7 & 0x80u) == 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = *(a1 + 176);
    }

    if (v10 + 4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AE5DB4F0();
    }

    if (v10 + 4 >= 0x17)
    {
      operator new();
    }

    memset(&__p, 0, sizeof(__p));
    *(&__p.__pn_.__r_.__value_.__s + 23) = v10 + 4;
    if (v10)
    {
      if ((v7 & 0x80u) == 0)
      {
        v11 = (a1 + 168);
      }

      else
      {
        v11 = v4->__pn_.__r_.__value_.__r.__words[0];
      }

      memmove(&__p, v11, v10);
    }

    strcpy(&__p + v10, "-shm");
    if ((v7 & 0x80) != 0)
    {
      v4 = v4->__pn_.__r_.__value_.__r.__words[0];
    }

    if (remove(v4, v6) < 0)
    {
      if (qword_1ED9AC8F8 != -1)
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
      }

      sub_1AE731C2C(qword_1ED9AC900, v12, "failed to remove dynamic languagelikelihood model", v13, v14, v15, v16, v17, v23);
    }

    st_gid_high = SHIBYTE(v25.st_gid);
    v19 = *&v25.st_dev;
    if ((v25.st_gid & 0x80000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = *&v25.st_dev;
    }

    remove(v20, v12);
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      remove(&__p, v21);
      if ((st_gid_high & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_37;
    }

    v22 = __p.__pn_.__r_.__value_.__r.__words[0];
    remove(__p.__pn_.__r_.__value_.__l.__data_, v21);
    operator delete(v22);
    if (st_gid_high < 0)
    {
LABEL_37:
      operator delete(v19);
    }
  }
}

void sub_1AE651660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1AE6516AC(sqlite3 **a1)
{
  sub_1AE652064(a1, "DROP TABLE IF EXISTS LangMatrix");
  sub_1AE652064(a1, "DROP TABLE IF EXISTS RecipientByLangMatrix");
  sub_1AE652064(a1, "DROP TABLE IF EXISTS OfflineAdaptationTimeByApp");
  sub_1AE652064(a1, "DROP TABLE IF EXISTS MetaData");
  sub_1AE652064(a1, "DROP TABLE IF EXISTS EmojiByApp");
  sub_1AE652064(a1, "CREATE TABLE RecipientByLangMatrix (RecipientId TEXT, Language TEXT, CharCount, PRIMARY KEY(RecipientId, Language))");
  sub_1AE652064(a1, "CREATE TABLE OfflineAdaptationTimeByApp (ApplicationId TEXT PRIMARY KEY, Time DOUBLE)");
  sub_1AE652064(a1, "CREATE TABLE MetaData (MetaData TEXT PRIMARY KEY, Value TEXT)");
  sub_1AE652064(a1, "CREATE TABLE EmojiByApp (ApplicationId TEXT PRIMARY KEY, Count INT, Time DOUBLE)");
  operator new();
}

void *sub_1AE65194C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void *sub_1AE651AB8(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE651C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE652008(va);
  _Unwind_Resume(a1);
}

void *sub_1AE651C68(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE651DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6276E4(va);
  _Unwind_Resume(a1);
}

void *sub_1AE651E0C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE651FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6276E4(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_1AE651FB4(unint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE6F1A98(v2);
    MEMORY[0x1B2706400](v4, 0x1020C4055CCDE27);
    return v3;
  }

  return v1;
}

uint64_t *sub_1AE652008(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1AE627688(*(v1 + 64));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE652064(sqlite3 **a1, const char *a2)
{
  v2 = a2;
  result = sqlite3_exec(*a1, a2, 0, 0, 0);
  if (result)
  {
    v5 = result;
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    v6 = qword_1ED9AC900;
    sqlite3_errmsg(*a1);
    sub_1AE731C2C(v6, v7, "Could not execute SQL %s, error message: %s\n", v8, v9, v10, v11, v12, v2);
    if (v5 == 26 || (result = v5, v5 == 11))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_1AE6522FC(exception, 1);
      __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
    }
  }

  return result;
}

uint64_t sub_1AE65215C(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F242DF08;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1AE5CF670((a1 + 8), off_1E7A2D930[a2 - 1], qword_1AE79C1C0[a2 - 1]);
  return a1;
}

void sub_1AE6521D4(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_1AE6521F8(uint64_t a1)
{
  *a1 = &unk_1F242DF08;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

uint64_t sub_1AE65226C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1AE652288(std::exception *this)
{
  this->__vftable = &unk_1F242DF08;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6522FC(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F242DF08;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1AE5CF670((a1 + 8), off_1E7A2D930[a2 - 1], qword_1AE79C1C0[a2 - 1]);
  return a1;
}

void sub_1AE652374(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

sqlite3 *sub_1AE652398(uint64_t a1, int a2)
{
  ppDb = 0;
  v4 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v4 = *v4;
  }

  if (sqlite3_open(v4, &ppDb))
  {
    v5 = 0;
    result = ppDb;
    if (!ppDb)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a2)
  {
    p_ppDb = a1;
  }

  else
  {
    p_ppDb = &ppDb;
  }

  v8 = *p_ppDb;
  if (a2)
  {
    v9 = &ppDb;
  }

  else
  {
    v9 = a1;
  }

  v10 = *v9;
  if (a2 && *(a1 + 41) == 1)
  {
    v11 = *v9;
    v12 = v8;
    sqlite3_exec(ppDb, "PRAGMA journal_mode = WAL;", 0, 0, 0);
    v10 = v11;
    v8 = v12;
  }

  v13 = sqlite3_backup_init(v10, "main", v8, "main");
  if (v13)
  {
    v14 = v13;
    sqlite3_backup_step(v13, -1);
    sqlite3_backup_finish(v14);
  }

  v5 = sqlite3_errcode(ppDb) == 0;
  result = ppDb;
  if (ppDb)
  {
LABEL_5:
    result = sqlite3_close(result);
  }

LABEL_6:
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE6522FC(exception, 3);
    __cxa_throw(exception, &unk_1F242DEE0, sub_1AE6521F8);
  }

  return result;
}

void sub_1AE6524E4(uint64_t a1)
{
  v2 = sub_1AE652064(a1, "BEGIN IMMEDIATE");
  v9 = v2;
  if ((v2 == 0) != (v2 != 5))
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    sub_1AE731C2C(qword_1ED9AC900, v3, "Could not begin transaction, error %d", v4, v5, v6, v7, v8, v9);
  }

  if (*(a1 + 40) == 1)
  {
    sub_1AE6516AC(*(a1 + 8));
  }

  v10 = sub_1AE652064(a1, "COMMIT");
  v17 = v10;
  if (v10)
  {
    if (qword_1ED9AC8F8 != -1)
    {
      dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
    }

    sub_1AE731C2C(qword_1ED9AC900, v11, "Could not commit transaction, error %d", v12, v13, v14, v15, v16, v17);
  }
}

void sub_1AE6525EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE652600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE652600(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    sub_1AE652064(*result, "ROLLBACK");
    return v1;
  }

  return result;
}

void sub_1AE652648(uint64_t a1, const void **a2, void *a3)
{
  v140 = *MEMORY[0x1E69E9840];
  v126 = a3;
  if (*(a1 + 208) == 1)
  {
    v3 = *(a1 + 96);
    v4 = (a1 + 104);
    if (v3 != (a1 + 104))
    {
      v130 = (a1 + 104);
      do
      {
        *(&v136 + 7) = 0;
        *&v136 = 0;
        memset(__p, 0, sizeof(__p));
        v135 = 0;
        v5 = v3[7];
        v6 = v3 + 8;
        if (v5 == v3 + 8)
        {
          v9 = 0;
          v10 = 0;
LABEL_72:
          if (SHIBYTE(__p[2]) < 0)
          {
            goto LABEL_78;
          }

LABEL_73:
          if (v10 < 0)
          {
            goto LABEL_79;
          }

          goto LABEL_74;
        }

        v131 = v3 + 7;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = v7;
          if (*(v5 + 14) > v7)
          {
            if (__p != v5 + 4)
            {
              v12 = *(v5 + 55);
              if (SHIBYTE(__p[2]) < 0)
              {
                if (v12 >= 0)
                {
                  v13 = v5 + 4;
                }

                else
                {
                  v13 = v5[4];
                }

                if (v12 >= 0)
                {
                  v14 = *(v5 + 55);
                }

                else
                {
                  v14 = v5[5];
                }

                sub_1AE621B84(__p, v13, v14);
              }

              else if ((*(v5 + 55) & 0x80) != 0)
              {
                sub_1AE621AB4(__p, v5[4], v5[5]);
              }

              else
              {
                *__p = *(v5 + 2);
                __p[2] = *(v5 + 6);
              }
            }

            v11 = *(v5 + 14);
            v135 = *(v5 + 14);
          }

          if (v11 <= v8)
          {
            v7 = v11;
            v17 = v5[1];
            if (!v17)
            {
              do
              {
LABEL_28:
                v18 = v5[2];
                v101 = *v18 == v5;
                v5 = v18;
              }

              while (!v101);
              goto LABEL_7;
            }
          }

          else
          {
            *&v138 = v136;
            *(&v138 + 7) = *(&v136 + 7);
            v15 = __p[0];
            *&v136 = __p[1];
            *(&v136 + 7) = *(&__p[1] + 7);
            v16 = HIBYTE(__p[2]);
            __p[0] = v9;
            __p[1] = v138;
            *(&__p[1] + 7) = *(&v138 + 7);
            HIBYTE(__p[2]) = v10;
            v135 = v8;
            v7 = v8;
            v10 = v16;
            v9 = v15;
            v8 = v11;
            v17 = v5[1];
            if (!v17)
            {
              goto LABEL_28;
            }
          }

          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
LABEL_7:
          v5 = v18;
        }

        while (v18 != v6);
        if (v8 < 2001 || v7 <= 0 || v7 / v8 >= 0.05)
        {
          goto LABEL_72;
        }

        v19 = __p[0];
        if (SHIBYTE(__p[2]) >= 0)
        {
          v19 = __p;
        }

        v132 = v3[8];
        __s1 = v19;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v20 = HIBYTE(__p[2]);
        }

        else
        {
          v20 = __p[1];
        }

        if (!v3[8])
        {
LABEL_76:
          operator new();
        }

LABEL_40:
        v21 = v132;
        while (1)
        {
          v22 = v21;
          v23 = v21 + 4;
          v24 = v21[4];
          v25 = *(v23 + 23);
          v26 = v25 >= 0 ? v23 : v24;
          v27 = v25 >= 0 ? *(v23 + 23) : v23[1];
          v28 = (v27 >= v20 ? v20 : v27);
          v29 = memcmp(__s1, v26, v28);
          if (v29)
          {
            if (v29 < 0)
            {
              goto LABEL_41;
            }
          }

          else if (v20 < v27)
          {
LABEL_41:
            v21 = *v22;
            if (!*v22)
            {
              goto LABEL_76;
            }

            continue;
          }

          v30 = memcmp(v26, __s1, v28);
          if (v30)
          {
            if (v30 < 0)
            {
              goto LABEL_61;
            }
          }

          else if (v27 < v20)
          {
LABEL_61:
            v21 = *(v22 + 1);
            if (!v21)
            {
              goto LABEL_76;
            }

            continue;
          }

          if (v22[14] < 2001)
          {
            break;
          }

          v21 = v132;
          v31 = *v131;
          if (*v131 != v6)
          {
            do
            {
              *(v31 + 14) = (*(v31 + 14) * 0.95);
              v32 = v31[1];
              if (v32)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v33 = v31[2];
                  v101 = *v33 == v31;
                  v31 = v33;
                }

                while (!v101);
              }

              v31 = v33;
            }

            while (v33 != v6);
            goto LABEL_40;
          }
        }

        *(a1 + 192) = 1;
        v4 = v130;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        operator delete(__p[0]);
        if (v10 < 0)
        {
LABEL_79:
          operator delete(v9);
          v34 = v3[1];
          if (v34)
          {
            goto LABEL_80;
          }

          do
          {
LABEL_82:
            v35 = v3[2];
            v101 = *v35 == v3;
            v3 = v35;
          }

          while (!v101);
          goto LABEL_4;
        }

LABEL_74:
        v34 = v3[1];
        if (!v34)
        {
          goto LABEL_82;
        }

        do
        {
LABEL_80:
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
LABEL_4:
        v3 = v35;
      }

      while (v35 != v4);
    }

    a3 = v126;
    *(a1 + 208) = 0;
  }

  v36 = &v138 + 1;
  *(&v138 + 1) = 0;
  v139 = 0;
  *&v138 = &v138 + 8;
  v37 = *a3;
  v129 = a3 + 1;
  if (*a3 != a3 + 1)
  {
    while (1)
    {
      v39 = *(&v138 + 1);
      v40 = &v138 + 8;
      if (v138 == (&v138 + 8))
      {
        break;
      }

      v41 = *(&v138 + 1);
      v42 = &v138 + 8;
      if (*(&v138 + 1))
      {
        do
        {
          v40 = v41;
          v41 = *(v41 + 1);
        }

        while (v41);
      }

      else
      {
        do
        {
          v40 = *(v42 + 2);
          v101 = *v40 == v42;
          v42 = v40;
        }

        while (v101);
      }

      v43 = v40[55];
      if (v43 >= 0)
      {
        v44 = v40 + 32;
      }

      else
      {
        v44 = *(v40 + 4);
      }

      if (v43 >= 0)
      {
        v45 = v40[55];
      }

      else
      {
        v45 = *(v40 + 5);
      }

      v46 = *(v37 + 55);
      if (v46 >= 0)
      {
        v47 = v37 + 4;
      }

      else
      {
        v47 = v37[4];
      }

      if (v46 >= 0)
      {
        v48 = *(v37 + 55);
      }

      else
      {
        v48 = v37[5];
      }

      if (v48 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v48;
      }

      v50 = memcmp(v44, v47, v49);
      if (v50)
      {
        if (v50 < 0)
        {
          break;
        }
      }

      else if (v45 < v48)
      {
        break;
      }

      if (v39)
      {
        v36 = &v138 + 1;
        while (1)
        {
          v51 = v39;
          v52 = *(v39 + 55);
          v53 = *(v39 + 40);
          if ((v52 & 0x80u) == 0)
          {
            v54 = (v39 + 32);
          }

          else
          {
            v54 = *(v39 + 32);
          }

          if ((v52 & 0x80u) == 0)
          {
            v55 = v52;
          }

          else
          {
            v55 = v53;
          }

          if (v55 >= v48)
          {
            v56 = v48;
          }

          else
          {
            v56 = v55;
          }

          v57 = memcmp(v47, v54, v56);
          if (v57)
          {
            if (v57 < 0)
            {
              goto LABEL_114;
            }

LABEL_128:
            v58 = memcmp(v54, v47, v56);
            if (v58)
            {
              if ((v58 & 0x80000000) == 0)
              {
                break;
              }
            }

            else if (v55 >= v48)
            {
              break;
            }

            v36 = v51 + 1;
            v39 = v51[1];
            if (!v39)
            {
              goto LABEL_140;
            }
          }

          else
          {
            if (v48 >= v55)
            {
              goto LABEL_128;
            }

LABEL_114:
            v39 = *v51;
            v36 = v51;
            if (!*v51)
            {
              goto LABEL_140;
            }
          }
        }
      }

LABEL_137:
      if (!*v36)
      {
LABEL_140:
        operator new();
      }

      v59 = v37[1];
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v37[2];
          v101 = *v60 == v37;
          v37 = v60;
        }

        while (!v101);
      }

      v37 = v60;
      v36 = &v138 + 1;
      if (v60 == v129)
      {
        goto LABEL_87;
      }
    }

    if (v39)
    {
      v36 = v40 + 8;
    }

    goto LABEL_137;
  }

LABEL_87:
  *(&v136 + 1) = 0;
  v137 = 0;
  *&v136 = &v136 + 8;
  v38 = *(a1 + 96);
  v128 = (a1 + 104);
  if (v38 != v128)
  {
    do
    {
      if (v38[7] != v38 + 8)
      {
        operator new();
      }

      v61 = v38[1];
      if (v61)
      {
        do
        {
          v62 = v61;
          v61 = *v61;
        }

        while (v61);
      }

      else
      {
        do
        {
          v62 = v38[2];
          v101 = *v62 == v38;
          v38 = v62;
        }

        while (!v101);
      }

      v38 = v62;
    }

    while (v62 != v128);
  }

  sub_1AE653808(&v136, v126);
  v63 = *v128;
  if (!*v128)
  {
    goto LABEL_299;
  }

  v64 = *(a2 + 23);
  if (v64 >= 0)
  {
    v65 = a2;
  }

  else
  {
    v65 = *a2;
  }

  if (v64 >= 0)
  {
    v66 = *(a2 + 23);
  }

  else
  {
    v66 = a2[1];
  }

  v67 = v128;
  v68 = *v128;
  do
  {
    while (1)
    {
      v69 = *(v68 + 55);
      v70 = v69 >= 0 ? v68 + 4 : v68[4];
      v71 = v69 >= 0 ? *(v68 + 55) : v68[5];
      v72 = v66 >= v71 ? v71 : v66;
      v73 = memcmp(v70, v65, v72);
      if (v73)
      {
        break;
      }

      if (v71 >= v66)
      {
        goto LABEL_177;
      }

LABEL_163:
      v68 = v68[1];
      if (!v68)
      {
        goto LABEL_178;
      }
    }

    if (v73 < 0)
    {
      goto LABEL_163;
    }

LABEL_177:
    v67 = v68;
    v68 = *v68;
  }

  while (v68);
LABEL_178:
  if (v67 == v128)
  {
LABEL_201:
    v84 = 1;
    if (!v63)
    {
      goto LABEL_299;
    }

    goto LABEL_204;
  }

  v74 = *(v67 + 55);
  if (v74 >= 0)
  {
    v75 = v67 + 4;
  }

  else
  {
    v75 = v67[4];
  }

  if (v74 >= 0)
  {
    v76 = *(v67 + 55);
  }

  else
  {
    v76 = v67[5];
  }

  if (v76 >= v66)
  {
    v77 = v66;
  }

  else
  {
    v77 = v76;
  }

  v78 = memcmp(v65, v75, v77);
  if (!v78)
  {
    if (v66 >= v76)
    {
      goto LABEL_192;
    }

    goto LABEL_201;
  }

  if (v78 < 0)
  {
    goto LABEL_201;
  }

LABEL_192:
  v79 = v67[7];
  if (v79 == v67 + 8)
  {
    goto LABEL_201;
  }

  v80 = 0;
  do
  {
    v81 = v79[1];
    v82 = v79;
    if (v81)
    {
      do
      {
        v83 = v81;
        v81 = *v81;
      }

      while (v81);
    }

    else
    {
      do
      {
        v83 = v82[2];
        v101 = *v83 == v82;
        v82 = v83;
      }

      while (!v101);
    }

    v80 += *(v79 + 14);
    v79 = v83;
  }

  while (v83 != v67 + 8);
  v84 = v80 < 1;
  if (!v63)
  {
    goto LABEL_299;
  }

LABEL_204:
  v85 = *(a2 + 23);
  v86 = a2[1];
  if (v85 >= 0)
  {
    v87 = a2;
  }

  else
  {
    v87 = *a2;
  }

  if (v85 >= 0)
  {
    v88 = *(a2 + 23);
  }

  else
  {
    v88 = a2[1];
  }

  v89 = v128;
  while (2)
  {
    while (2)
    {
      v90 = *(v63 + 55);
      if (v90 >= 0)
      {
        v91 = v63 + 4;
      }

      else
      {
        v91 = v63[4];
      }

      if (v90 >= 0)
      {
        v92 = *(v63 + 55);
      }

      else
      {
        v92 = v63[5];
      }

      if (v88 >= v92)
      {
        v93 = v92;
      }

      else
      {
        v93 = v88;
      }

      v94 = memcmp(v91, v87, v93);
      if (v94)
      {
        if ((v94 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_211;
      }

      if (v92 < v88)
      {
LABEL_211:
        v63 = v63[1];
        if (!v63)
        {
          goto LABEL_226;
        }

        continue;
      }

      break;
    }

    v89 = v63;
    v63 = *v63;
    if (v63)
    {
      continue;
    }

    break;
  }

LABEL_226:
  if (v89 != v128)
  {
    v95 = *(v89 + 55);
    v96 = v95 >= 0 ? v89 + 4 : v89[4];
    v97 = v95 >= 0 ? *(v89 + 55) : v89[5];
    v98 = v97 >= v88 ? v88 : v97;
    v99 = memcmp(v87, v96, v98);
    if (v99)
    {
      if (v99 < 0)
      {
        goto LABEL_299;
      }
    }

    else if (v88 < v97)
    {
      goto LABEL_299;
    }

    v100 = v85 >= 0 ? v85 : v86;
    v101 = !v100 || v128 == v89;
    v102 = v101;
    if (!v102 && !v84)
    {
      sub_1AE653808(v89 + 7, &v138);
      __p[1] = 0;
      __p[2] = 0;
      __p[0] = &__p[1];
      v103 = v138;
      if (v138 == (&v138 + 8))
      {
        goto LABEL_289;
      }

      while (1)
      {
        v104 = sub_1AE63148C(v126, v103 + 4);
        if (v129 == v104)
        {
          sub_1AE6274E4(__p, v103 + 4)[7] = 0;
          v106 = v103[1];
          if (v106)
          {
            do
            {
LABEL_257:
              v107 = v106;
              v106 = *v106;
            }

            while (v106);
            goto LABEL_252;
          }
        }

        else
        {
          v105 = v104[7];
          sub_1AE6274E4(__p, v103 + 4)[7] = v105;
          v106 = v103[1];
          if (v106)
          {
            goto LABEL_257;
          }
        }

        do
        {
          v107 = v103[2];
          v101 = *v107 == v103;
          v103 = v107;
        }

        while (!v101);
LABEL_252:
        v103 = v107;
        if (v107 == (&v138 + 8))
        {
          if (__p[2])
          {
            v108 = __p[0];
            if (__p[0] != &__p[1])
            {
              v109 = 0.0;
              v110 = __p[0];
              do
              {
                v111 = v110[1];
                v112 = v110;
                if (v111)
                {
                  do
                  {
                    v113 = v111;
                    v111 = *v111;
                  }

                  while (v111);
                }

                else
                {
                  do
                  {
                    v113 = v112[2];
                    v101 = *v113 == v112;
                    v112 = v113;
                  }

                  while (!v101);
                }

                v109 = *(v110 + 7) + v109;
                v110 = v113;
              }

              while (v113 != &__p[1]);
              if (v109 <= 0.0)
              {
                v117 = 1.0 / __p[2];
                do
                {
                  *(v108 + 7) = v117;
                  v118 = v108[1];
                  if (v118)
                  {
                    do
                    {
                      v119 = v118;
                      v118 = *v118;
                    }

                    while (v118);
                  }

                  else
                  {
                    do
                    {
                      v119 = v108[2];
                      v101 = *v119 == v108;
                      v108 = v119;
                    }

                    while (!v101);
                  }

                  v108 = v119;
                }

                while (v119 != &__p[1]);
              }

              else
              {
                v114 = 1.0 / v109;
                do
                {
                  *(v108 + 7) = *(v108 + 7) * v114;
                  v115 = v108[1];
                  if (v115)
                  {
                    do
                    {
                      v116 = v115;
                      v115 = *v115;
                    }

                    while (v115);
                  }

                  else
                  {
                    do
                    {
                      v116 = v108[2];
                      v101 = *v116 == v108;
                      v108 = v116;
                    }

                    while (!v101);
                  }

                  v108 = v116;
                }

                while (v116 != &__p[1]);
              }
            }
          }

LABEL_289:
          sub_1AE627688(*(v126 + 8));
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *v126 = v129;
          v120 = v138;
          if (v138 != (&v138 + 8))
          {
            do
            {
              v121 = *(v120 + 7);
              v122 = *(sub_1AE6274E4(__p, v120 + 4) + 7);
              *(sub_1AE6274E4(v126, v120 + 4) + 7) = v121 * 0.8 + v122 * 0.2;
              v123 = *(v120 + 1);
              if (v123)
              {
                do
                {
                  v124 = v123;
                  v123 = *v123;
                }

                while (v123);
              }

              else
              {
                do
                {
                  v124 = *(v120 + 2);
                  v101 = *v124 == v120;
                  v120 = v124;
                }

                while (!v101);
              }

              v120 = v124;
            }

            while (v124 != (&v138 + 8));
          }

          sub_1AE627688(__p[1]);
          break;
        }
      }
    }
  }

LABEL_299:
  sub_1AE627688(*(&v136 + 1));
  sub_1AE627688(*(&v138 + 1));
}

void sub_1AE653760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, char a29, char *a30)
{
  sub_1AE627688(a27);
  sub_1AE627688(a30);
  _Unwind_Resume(a1);
}

void *sub_1AE653808(void *result, void *a2)
{
  v2 = result + 1;
  v3 = *result;
  if (*result == result + 1)
  {
    return result;
  }

  v5 = 0;
  v6 = *result;
  do
  {
    v7 = v6[1];
    v8 = v6;
    if (v7)
    {
      do
      {
        v9 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v9 = v8[2];
        v10 = *v9 == v8;
        v8 = v9;
      }

      while (!v10);
    }

    v5 += *(v6 + 14);
    v6 = v9;
  }

  while (v9 != v2);
  if (v5 < 1)
  {
    return result;
  }

  v11 = a2[2];
  if (!v11)
  {
    v31 = 1.0 / v5;
    do
    {
      v32 = *(v3 + 14);
      if (v32 >= 2001)
      {
        v33 = v32 * v31;
        if (v33 > 0.05)
        {
          result = sub_1AE6274E4(a2, v3 + 4);
          *(result + 7) = v33;
        }
      }

      v34 = v3[1];
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
          v35 = v3[2];
          v10 = *v35 == v3;
          v3 = v35;
        }

        while (!v10);
      }

      v3 = v35;
    }

    while (v35 != v2);
    v11 = a2[2];
    if (!v11)
    {
      return result;
    }

LABEL_73:
    v38 = *a2;
    v37 = a2 + 1;
    v36 = v38;
    if (v38 != v37)
    {
      v39 = 0.0;
      v40 = v36;
      do
      {
        v41 = v40[1];
        v42 = v40;
        if (v41)
        {
          do
          {
            v43 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v43 = v42[2];
            v10 = *v43 == v42;
            v42 = v43;
          }

          while (!v10);
        }

        v39 = *(v40 + 7) + v39;
        v40 = v43;
      }

      while (v43 != v37);
      if (v39 <= 0.0)
      {
        do
        {
          *(v36 + 7) = 1.0 / v11;
          v47 = v36[1];
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
              v48 = v36[2];
              v10 = *v48 == v36;
              v36 = v48;
            }

            while (!v10);
          }

          v36 = v48;
        }

        while (v48 != v37);
      }

      else
      {
        v44 = 1.0 / v39;
        do
        {
          *(v36 + 7) = *(v36 + 7) * v44;
          v45 = v36[1];
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
              v46 = v36[2];
              v10 = *v46 == v36;
              v36 = v46;
            }

            while (!v10);
          }

          v36 = v46;
        }

        while (v46 != v37);
      }
    }

    return result;
  }

  v12 = a2 + 1;
  v13 = *a2;
  if (*a2 == a2 + 1)
  {
    goto LABEL_73;
  }

  v49 = a2[2];
  v14 = *v2;
  v15 = 1.0 / v5;
  while (2)
  {
    if (!v14)
    {
      goto LABEL_51;
    }

    v16 = *(v13 + 55);
    if (v16 >= 0)
    {
      v17 = v13 + 4;
    }

    else
    {
      v17 = v13[4];
    }

    if (v16 >= 0)
    {
      v18 = *(v13 + 55);
    }

    else
    {
      v18 = v13[5];
    }

    v19 = v2;
    v20 = v14;
    do
    {
      while (1)
      {
        v21 = *(v20 + 55);
        v22 = v21 >= 0 ? v20 + 4 : v20[4];
        v23 = v21 >= 0 ? *(v20 + 55) : v20[5];
        v24 = v18 >= v23 ? v23 : v18;
        result = memcmp(v22, v17, v24);
        if (result)
        {
          break;
        }

        if (v23 >= v18)
        {
          goto LABEL_37;
        }

LABEL_23:
        v20 = v20[1];
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      if ((result & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

LABEL_37:
      v19 = v20;
      v20 = *v20;
    }

    while (v20);
LABEL_38:
    if (v19 != v2)
    {
      v25 = *(v19 + 55);
      if (v25 >= 0)
      {
        v26 = v19 + 4;
      }

      else
      {
        v26 = v19[4];
      }

      if (v25 >= 0)
      {
        v27 = *(v19 + 55);
      }

      else
      {
        v27 = v19[5];
      }

      if (v27 >= v18)
      {
        v28 = v18;
      }

      else
      {
        v28 = v27;
      }

      result = memcmp(v17, v26, v28);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (v18 >= v27)
      {
LABEL_50:
        *(v13 + 7) = *(v19 + 14) * v15;
      }
    }

LABEL_51:
    v29 = v13[1];
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      do
      {
        v30 = v13[2];
        v10 = *v30 == v13;
        v13 = v30;
      }

      while (!v10);
    }

    v13 = v30;
    if (v30 != v12)
    {
      continue;
    }

    break;
  }

  v11 = v49;
  if (v49)
  {
    goto LABEL_73;
  }

  return result;
}

void sub_1AE653BC8(void *a1)
{
  v1 = a1[1];
  v2 = a1[4];
  if (v1 - *a1 != v2 - a1[3])
  {
    __assert_rtn("pop_back", "LinguisticContextImpl.cpp", 22, "m_tokens.size() == m_sanitizedTokens.size()");
  }

  v4 = (v1 - 32);
  if (*(v1 - 9) < 0)
  {
    operator delete(*v4);
    v2 = a1[4];
  }

  a1[1] = v4;
  v5 = (v2 - 32);
  if (*(v2 - 9) < 0)
  {
    operator delete(*v5);
  }

  a1[4] = v5;
  v6 = a1 + 8;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = v6[3];
    v8 = v6[4];
    v9 = (v8 - v7) >> 2;
    v10 = (a1[1] - *a1) >> 5;
    if (v9 > v10)
    {
      v6[4] = v8 - 4;
      v9 = (v8 - 4 - v7) >> 2;
    }

    if (v9 > v10)
    {
      __assert_rtn("pop_back", "LinguisticContextImpl.cpp", 28, "cache.size() <= m_tokens.size()");
    }
  }

  v11 = a1 + 13;
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    v13 = v11[3];
    v14 = v11[4];
    v12 = (v14 - v13) >> 3;
    v15 = (a1[1] - *a1) >> 5;
    if (v12 > v15)
    {
      v18 = *(v14 - 8);
      v17 = v14 - 8;
      v16 = v18;
      if (v18)
      {
        CFRelease(v16);
        v13 = v11[3];
        v15 = (a1[1] - *a1) >> 5;
      }

      v11[4] = v17;
      v12 = (v17 - v13) >> 3;
    }

    if (v12 > v15)
    {
      __assert_rtn("pop_back", "LinguisticContextImpl.cpp", 33, "wordCache.size() <= m_tokens.size()");
    }
  }

  if (a1[19] != a1[24])
  {
    __assert_rtn("pop_back", "LinguisticContextImpl.cpp", 36, "m_fragmentCaches.size() == m_cumulativeFragmentCounts.size()");
  }

  v19 = a1 + 18;
  while (1)
  {
    v19 = *v19;
    if (!v19)
    {
      break;
    }

    v21 = sub_1AE653E78(a1 + 21, *(v19 + 4));
    v22 = v21[3];
    v20 = v21[4];
    v23 = (a1[1] - *a1) >> 5;
    if (v23 < (v20 - v22) >> 3)
    {
      v24 = v20 - 8;
      v21[4] = v20 - 8;
      if (v22 == v20 - 8)
      {
        v25 = 0;
        v26 = v19 + 4;
        v27 = v19[3];
        v28 = (v19[4] - v27) >> 2;
      }

      else
      {
        v25 = *(v20 - 16);
        v26 = v19 + 4;
        v27 = v19[3];
        v28 = (v19[4] - v27) >> 2;
        if (v25 > v28)
        {
          v29 = v21;
          sub_1AE654188((v19 + 3), v25 - v28);
          v22 = v29[3];
          v20 = v29[4];
          v23 = (a1[1] - *a1) >> 5;
          goto LABEL_21;
        }
      }

      if (v28 > v25)
      {
        *v26 = v27 + 4 * v25;
      }

      v20 = v24;
    }

LABEL_21:
    if (v23 < (v20 - v22) >> 3)
    {
      __assert_rtn("pop_back", "LinguisticContextImpl.cpp", 44, "counts.size() <= m_tokens.size()");
    }
  }
}

uint64_t *sub_1AE653E78(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1AE654174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE629130(va);
  _Unwind_Resume(a1);
}

void sub_1AE654188(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1AE5CBB70();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_1AE6542DC(void *a1, unsigned int a2, uint64_t a3)
{
  v23 = a2;
  v5 = a1[3];
  v6 = (a1[4] - v5) >> 5;
  v24 = &v23;
  v7 = sub_1AE65442C(a1 + 6, a2);
  v24 = &v23;
  v8 = sub_1AE65473C(a1 + 11, v23);
  v10 = v8 + 3;
  v9 = v8[3];
  v11 = v8[4];
  v12 = (v11 - v9) >> 3;
  if (v6 <= v12)
  {
    if (v6 < v12)
    {
      v13 = v8;
      v14 = v9 + 8 * v6;
      while (v11 != v14)
      {
        v16 = *(v11 - 8);
        v11 -= 8;
        v15 = v16;
        if (v16)
        {
          CFRelease(v15);
        }
      }

      v13[4] = v14;
    }
  }

  else
  {
    sub_1AE654A4C((v8 + 3), v6 - v12);
  }

  v17 = (v7[4] - v7[3]) >> 2;
  v18 = v6 > v17;
  v19 = v6 - v17;
  if (v18)
  {
    v20 = 8 * v17;
    v21 = v5 + 32 * v17;
    do
    {
      v22 = *(a3 + 24);
      if (!v22)
      {
        sub_1AE60819C();
      }

      LODWORD(v24) = (*(*v22 + 48))(v22, v21, *v10 + v20, v7 + 3);
      sub_1AE6369B4((v7 + 3), &v24);
      v21 += 32;
      v20 += 8;
      --v19;
    }

    while (v19);
  }
}

uint64_t *sub_1AE65442C(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1AE654728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE629130(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE65473C(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1AE654A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE629020(va);
  _Unwind_Resume(a1);
}

void sub_1AE654A4C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 3)
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + a2;
    if (v8 >> 61)
    {
      sub_1AE5CBB70();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v12 = v6 >> 3;
    v13 = 8 * a2;
    v14 = 8 * v7;
    bzero((8 * v7), 8 * a2);
    if (v5 == v4)
    {
      goto LABEL_28;
    }

    v15 = v4 - v5 - 8;
    v16 = v5;
    v17 = (v14 - 8 * v12);
    if (v15 >= 0x98)
    {
      v18 = 8 * v12;
      if ((v5 + (v15 & 0xFFFFFFFFFFFFFFF8)) == -8 || (v16 = v5, v17 = (v14 - 8 * v12), v5 >= v6 + (v15 & 0xFFFFFFFFFFFFFFF8) - v18 + 8))
      {
        v19 = (v15 >> 3) + 1;
        v16 = &v5[v19 & 0x3FFFFFFFFFFFFFFCLL];
        v20 = (8 * v7 - v18 + 16);
        v21 = v5;
        v22 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = *(v21 + 1);
          *(v20 - 1) = *v21;
          *v20 = v23;
          *v21 = 0uLL;
          *(v21 + 1) = 0uLL;
          v21 += 4;
          v20 += 2;
          v22 -= 4;
        }

        while (v22);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_25;
        }

        v17 = (8 * (v19 & 0x3FFFFFFFFFFFFFFCLL));
      }
    }

    do
    {
      *v17++ = *v16;
      *v16++ = 0;
    }

    while (v16 != v4);
    do
    {
LABEL_25:
      if (*v5)
      {
        CFRelease(*v5);
      }

      ++v5;
    }

    while (v5 != v4);
    v5 = *a1;
LABEL_28:
    *a1 = 0;
    *(a1 + 8) = v14 + v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }

    return;
  }

  if (a2)
  {
    v11 = 8 * a2;
    bzero(*(a1 + 8), 8 * a2);
    v4 = (v4 + v11);
  }

  *(a1 + 8) = v4;
}

void sub_1AE654C9C(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v39 = a4;
  v40 = a2;
  v9 = a1[3];
  v10 = a1[4];
  v41 = a3;
  v42 = &v40;
  v11 = sub_1AE65473C(a1 + 11, a2)[3];
  v42 = &v40;
  v12 = sub_1AE65442C(a1 + 6, v40);
  if ((a3 & 0x100000000) != 0)
  {
    v42 = &v41;
    v13 = sub_1AE65442C(a1 + 6, a3) + 3;
  }

  else
  {
    v13 = 0;
  }

  v42 = &v39;
  v14 = sub_1AE65442C(a1 + 6, a4);
  v15 = v14;
  v17 = v14 + 3;
  v16 = v14[3];
  if (v13)
  {
    v18 = *v13;
    v19 = v13[1];
    if (v19 - *v13 != v14[4] - v16)
    {
      __assert_rtn("_specializeTokenIDs", "LinguisticContextImpl.cpp", 177, "lookups->size() == destination.size()");
    }

    if (v19 != v18)
    {
      v20 = 0;
      do
      {
        if (!*(v18 + 4 * v20))
        {
          v21 = *(a5 + 24);
          if (!v21)
          {
            goto LABEL_37;
          }

          v22 = (*(*v21 + 48))(v21, v9 + 32 * v20, v11 + 8 * v20, v12[3] + 4 * v20);
          v18 = *v13;
          if (v22)
          {
            *(v18 + 4 * v20) = v22;
            *(*v17 + 4 * v20) = v22;
          }
        }

        ++v20;
      }

      while (v20 < (v13[1] - v18) >> 2);
      v16 = *v17;
    }
  }

  v23 = (v10 - v9) >> 5;
  v24 = (v15[4] - v16) >> 2;
  v25 = v12[3];
  v26 = (v12[4] - v25) >> 2;
  if (v26 >= v23)
  {
    v26 = v23;
  }

  if (v24 < v26)
  {
    v27 = 4 * v24;
    if (v13)
    {
      v28 = v9 + 32 * v24;
      for (i = v11 + 8 * v24; ; i += 8)
      {
        v30 = *(a5 + 24);
        if (!v30)
        {
          break;
        }

        v31 = (*(*v30 + 48))(v30, v28, i, v25 + v27);
        LODWORD(v42) = v31;
        sub_1AE6369B4(v13, &v42);
        if (v31)
        {
          v32 = &v42;
        }

        else
        {
          v32 = (v12[3] + v27);
        }

        sub_1AE6369B4(v17, v32);
        ++v24;
        v25 = v12[3];
        v33 = (v12[4] - v25) >> 2;
        if (v33 >= v23)
        {
          v33 = v23;
        }

        v27 += 4;
        v28 += 32;
        if (v24 >= v33)
        {
          return;
        }
      }
    }

    else
    {
      v34 = v9 + 32 * v24;
      for (j = v11 + 8 * v24; ; j += 8)
      {
        v36 = *(a5 + 24);
        if (!v36)
        {
          break;
        }

        LODWORD(v42) = (*(*v36 + 48))(v36, v34, j, v25 + v27);
        if (v42)
        {
          v37 = &v42;
        }

        else
        {
          v37 = (v12[3] + v27);
        }

        sub_1AE6369B4(v17, v37);
        ++v24;
        v25 = v12[3];
        v38 = (v12[4] - v25) >> 2;
        if (v38 >= v23)
        {
          v38 = v23;
        }

        v27 += 4;
        v34 += 32;
        if (v24 >= v38)
        {
          return;
        }
      }
    }

LABEL_37:
    sub_1AE60819C();
  }
}

void sub_1AE654F9C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1AE5CBB70();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t **sub_1AE6550F0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
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
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
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
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_1AE6552A8(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_1AE655680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE64A9A8(va);
  _Unwind_Resume(a1);
}

void *sub_1AE65569C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void sub_1AE6557CC(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  for (i = *(a3 + 24); i != *(a3 + 32); i += 24)
  {
    v6 = sub_1AE6563F0((a2 + 144), i);
    if (v6 && (v6[5] & 0x80000000) == 0)
    {
      operator new();
    }
  }

  for (j = *(a3 + 48); j != *(a3 + 56); j += 32)
  {
    v8 = sub_1AE6563F0((a2 + 144), j);
    if (v8 && (v8[5] & 0x80000000) == 0)
    {
      operator new();
    }
  }

  v9 = *(a2 + 424);
  if (v9)
  {
    sub_1AE6557CC(&__dst, v9, a3);
    v26 = __dst;
    __p = __dst;
    if (*(&__dst + 1) != __dst)
    {
      if (((*(&__dst + 1) - __dst) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v10 = *(a2 + 272);
    if (v10)
    {
      if ((v10 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }
  }

  else
  {
    __p = 0;
  }

  v11 = *(a2 + 272);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v12 = *(a2 + 272);
  v13 = __p;
  if (v12 >= 1)
  {
    v14 = 0;
    v15 = 0.0;
    v16 = fmax(MEMORY[0] + -700.0, 0.0);
    v17 = *(a2 + 424);
    v13 = v26;
    do
    {
      v18 = exp(*v14 - v16);
      if (v17)
      {
        v18 = *(v14 + v26) * v18;
      }

      if (v18 == 0.0)
      {
        __assert_rtn("conditional_probability", "maxent.cpp", 126, "prod != 0");
      }

      *v14 = v18;
      v15 = v18 + v15;
      ++v14;
    }

    while ((8 * v12) != v14);
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(8 * v19) * (1.0 / v15);
      *(8 * v19) = v21;
      if (v21 > *(8 * v20))
      {
        v20 = v19;
      }

      ++v19;
    }

    while (v12 != v19);
    if (v20 < 0)
    {
      __assert_rtn("conditional_probability", "maxent.cpp", 134, "max_label >= 0");
    }
  }

  if ((-1431655765 * ((*(a2 + 120) - *(a2 + 112)) >> 3)) <= 0)
  {
    __assert_rtn("Str", "maxent.h", 235, "id >= 0 && id < (int)id2str.size()");
  }

  v22 = *(a2 + 112);
  if (*(v22 + 23) < 0)
  {
    sub_1AE5DBF1C(&__dst, *v22, *(v22 + 1));
  }

  else
  {
    v23 = *v22;
    v28 = *(v22 + 2);
    __dst = v23;
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = __dst;
  *(a3 + 16) = v28;
  if (v13)
  {
    operator delete(v13);
  }
}

void sub_1AE656200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  operator delete(v20);
  if (v19)
  {
    operator delete(v19);
  }

  sub_1AE65639C(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6562D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 24);
    }

    *(a1 + 32) = v6;
    operator delete(v8);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE65639C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_1AE6563F0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AE5DA928(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
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
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
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
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1AE6565A8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_5:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_1AE65660C(uint64_t a1)
{
  v5 = 0uLL;
  v6 = 0;
  v1 = *(a1 + 184);
  for (i = *(a1 + 192); v1 != i; v1 += 16)
  {
    v2 = *(*v1 + 8);
    if (v2 != *(*v1 + 16))
    {
      (*(**v2 + 56))(&v4);
      operator new();
    }
  }

  operator new();
}

void sub_1AE6569D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(*v7 + 8))(v7);
  sub_1AE656A70(va);
  _Unwind_Resume(a1);
}

void *sub_1AE656A70(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE656B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F242AE90;
  v4[1] = a3;
  v5 = v4;
  sub_1AE656BF4(a1, a2, 0, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1AE656BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE65714C(va);
  _Unwind_Resume(a1);
}

void sub_1AE656BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (*(*a1 + 64))(a1);
  v9 = MEMORY[0x1B2705500](v8);
  if (CFStringCompare(v9, @"zh-Hans", 0))
  {
    if (a3 == 3)
    {
      v10 = *(a1 + 208);
      if (v10 != *(a1 + 216))
      {
        sub_1AE70D440(a2, *v10, 0);
      }
    }

    else
    {
      v11 = *(a1 + 184);
      v12 = *(a1 + 192);
      if (v11 == v12)
      {
LABEL_8:
        if (a3 != 2)
        {
          v13 = *(a1 + 48);
          if (v13)
          {
            v14 = *(v13 + 560);
            v15 = *(v13 + 568);
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v15->__on_zero_shared)(v15);
                std::__shared_weak_count::__release_weak(v15);
              }
            }

            if (v14)
            {
              v16 = *(a1 + 48);
              v17 = *(v16 + 560);
              v18 = *(v16 + 568);
              if (v18)
              {
                atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
              }

              sub_1AE70D440(a2, v17, 1);
            }
          }

          if (a3 != 1)
          {
            v19 = *(a1 + 296);
            if (v19)
            {
              sub_1AE70D440(a2, *(v19 + 16), 5);
            }

            v20 = *(a1 + 304);
            if (v20)
            {
              sub_1AE70D440(a2, *(v20 + 16), 3);
            }

            v21 = *(a1 + 288);
            if (v21)
            {
              sub_1AE70D440(a2, *(v21 + 16), 4);
            }

            v22 = *(a1 + 24);
            v23 = *(a1 + 32);
            if (v22 != v23)
            {
              v24 = MEMORY[0x1E69E5408];
              do
              {
                v39 = 0;
                v25 = (*(**v22 + 72))(*v22, a2, &v39);
                if (v25)
                {
                  v26 = v25;
                  v38 = 0;
                  v27 = *(a2 + 23);
                  v28 = v27 >= 0 ? a2 : *a2;
                  if (v28)
                  {
                    if (v27 >= 0)
                    {
                      v29 = *(a2 + 23);
                    }

                    else
                    {
                      v29 = *(a2 + 8);
                    }

                    v30 = CFStringCreateWithBytes(0, v28, v29, 0x8000100u, 0);
                    cf = v30;
                    if (!v30)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      MEMORY[0x1B2705EB0](exception, "Could not construct");
                      __cxa_throw(exception, v24, MEMORY[0x1E69E5288]);
                    }
                  }

                  else
                  {
                    v30 = 0;
                    cf = 0;
                  }

                  v31 = v39;
                  v32 = *(a1 + 176);
                  if (v32 && CFArrayGetCount(v32))
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
                  }

                  else
                  {
                    ValueAtIndex = *(*(a1 + 416) + 8);
                  }

                  v44 = v30;
                  v43 = v26;
                  v42 = v31;
                  v41 = 2;
                  v40 = ValueAtIndex;
                  v34 = *(a4 + 24);
                  if (!v34)
                  {
                    sub_1AE60819C();
                  }

                  (*(*v34 + 48))(v34, &v44, &v43, &v42, &v41, &v40, &v38);
                  v35 = v38;
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (v35)
                  {
                    break;
                  }
                }

                ++v22;
              }

              while (v22 != v23);
            }
          }
        }
      }

      else
      {
        while ((sub_1AE70D7B4(a2, *(*v11 + 8), *(*v11 + 16)) & 1) == 0)
        {
          v11 += 16;
          if (v11 == v12)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }
}

void sub_1AE65710C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1AE657134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1AE622290(va);
  JUMPOUT(0x1AE657140);
}

uint64_t sub_1AE65714C(uint64_t a1)
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

uint64_t sub_1AE6571D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK2LM22CompositeLanguageModel33enumerateSortkeyEquivalentEntriesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_8functionIFvPK10__CFStringjdRbEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK2LM22CompositeLanguageModel33enumerateSortkeyEquivalentEntriesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_8functionIFvPK10__CFStringjdRbEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK2LM22CompositeLanguageModel33enumerateSortkeyEquivalentEntriesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_8functionIFvPK10__CFStringjdRbEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK2LM22CompositeLanguageModel33enumerateSortkeyEquivalentEntriesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_8functionIFvPK10__CFStringjdRbEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE657244(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  v8 = *a4;
  v9 = *(*(a1 + 8) + 24);
  v13 = *a2;
  v12 = v7;
  v11 = v8;
  if (!v9)
  {
    sub_1AE60819C();
  }

  return (*(*v9 + 48))(v9, &v13, &v12, &v11, a7);
}

uint64_t sub_1AE6572C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242AE90;
  a2[1] = v2;
  return result;
}

void sub_1AE65739C(int a1, int a2, std::__shared_weak_count *this)
{
  if (this)
  {
    if (std::__shared_weak_count::lock(this))
    {
      operator new();
    }
  }

  sub_1AE657DFC();
}

void sub_1AE657C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::recursive_mutex *a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = a25;
  a25 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  sub_1AE622290(&a20);
  v28 = sub_1AE700CD0(v25);
  MEMORY[0x1B2706400](v28, 0x10E1C40525E7390);
  sub_1AE622290(&a18);
  _Unwind_Resume(a1);
}

void sub_1AE657DFC()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void sub_1AE657E48(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 0x1F3)
  {
    v8 = a1[3];
    v9 = a1[4];
    while (v8 != v9)
    {
      (*(**v8 + 56))(*v8, a2);
      if (*(a3 + 23) < 0)
      {
        if (*(a3 + 8))
        {
          return;
        }

        operator delete(*a3);
      }

      else if (*(a3 + 23))
      {
        return;
      }

      ++v8;
    }

    v10 = a1[23];
    v11 = a1[24];
    while (v10 != v11)
    {
      v12 = *(*v10 + 8);
      v13 = *(*v10 + 16);
      while (v12 != v13)
      {
        (*(**v12 + 32))(*v12, a2);
        if (*(a3 + 23) < 0)
        {
          if (*(a3 + 8))
          {
            return;
          }

          operator delete(*a3);
        }

        else if (*(a3 + 23))
        {
          return;
        }

        ++v12;
      }

      v10 += 16;
    }

    if (*(a1[29] + 192) != 1)
    {
      goto LABEL_68;
    }

    v14 = a1[6];
    if (!v14)
    {
LABEL_47:
      v21 = a1[37];
      if (v21 && (a2 & 0x80000000) != 0)
      {
        (*(**(v21 + 16) + 32))(*(v21 + 16), a2);
        if (*(a3 + 23) < 0)
        {
          if (*(a3 + 8))
          {
            return;
          }

          operator delete(*a3);
        }

        else if (*(a3 + 23))
        {
          return;
        }
      }

      v22 = a1[38];
      if (v22 && (a2 & 0x80000000) != 0)
      {
        (*(**(v22 + 16) + 32))(*(v22 + 16), a2);
        if (*(a3 + 23) < 0)
        {
          if (*(a3 + 8))
          {
            return;
          }

          operator delete(*a3);
        }

        else if (*(a3 + 23))
        {
          return;
        }
      }

      v23 = a1[36];
      if (v23 && (a2 & 0x80000000) != 0)
      {
        (*(**(v23 + 16) + 32))(*(v23 + 16), a2);
        if (*(a3 + 23) < 0)
        {
          if (*(a3 + 8))
          {
            return;
          }

          operator delete(*a3);
        }

        else if (*(a3 + 23))
        {
          return;
        }
      }

LABEL_68:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    }

    v15 = *(v14 + 560);
    v16 = *(v14 + 568);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v15)
    {
      (*(*v15 + 32))(v15, a2);
      v17 = *(a3 + 23);
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v17 == 0;
LABEL_43:
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        if (!v18)
        {
          return;
        }

        goto LABEL_47;
      }

      if (*(a3 + 8))
      {
        v18 = 0;
        goto LABEL_43;
      }

      operator delete(*a3);
    }

    v18 = 1;
    goto LABEL_43;
  }

  v5 = 0;
  v6 = "";
  while (dword_1E7A2E700[v5] != a2)
  {
    v5 += 4;
    if (v5 == 328)
    {
      goto LABEL_31;
    }
  }

  v6 = *&dword_1E7A2E700[v5 + 2];
LABEL_31:
  v19 = strlen(v6);
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v19;
  if (v19)
  {
    memmove(a3, v6, v19);
  }

  *(a3 + v20) = 0;
}

uint64_t sub_1AE658250(void *a1, __int128 *a2, void *a3)
{
  LOBYTE(v6[0]) = 0;
  v7 = 0;
  if (a3)
  {
    *a3 = 0;
    result = sub_1AE6582D8(a1, a2, a3, v6);
  }

  else
  {
    result = sub_1AE6582D8(a1, a2, 0, v6);
  }

  if (!result)
  {
    return sub_1AE70DB1C(a2, *(a1[29] + 358));
  }

  return result;
}

void sub_1AE6582C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6588A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6582D8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1[29] + 365) != 1 || (v8 = a1[3], v9 = a1[4], v8 == v9))
  {
LABEL_5:
    if (*(a4 + 16) == 1)
    {
      v12 = *a4;
      v11 = a4[1];
      v32 = v12;
      v33 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      __p = 0;
      v28 = 0;
      v29 = 0;
      p_p = &__p;
      v31 = 0;
      operator new();
    }

    __p = 0;
    v28 = 0;
    v13 = a1[23];
    v14 = a1[24];
    v29 = 0;
    p_p = &__p;
    v31 = 0;
    if (v14 != v13)
    {
      if (((v14 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v15 = a1[29];
    if ((*(v15 + 365) & 1) == 0)
    {
      v16 = a1[3];
      v17 = a1[4];
      if (v16 != v17)
      {
        while (1)
        {
          v18 = (*(**v16 + 72))(*v16, a2, a3);
          if (v18)
          {
            return v18;
          }

          if (++v16 == v17)
          {
            v15 = a1[29];
            break;
          }
        }
      }
    }

    if (*(v15 + 192) != 1)
    {
      return 0;
    }

    v19 = a1[6];
    v20 = *(v19 + 560);
    v21 = *(v19 + 568);
    __p = v20;
    v28 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v20 || (v18 = (*(*v20 + 24))(v20, a2, a3), !v18))
    {
      if (*(a1[29] + 192) != 1)
      {
        goto LABEL_34;
      }

      v22 = a1[37];
      if (v22)
      {
        v18 = (*(**(v22 + 16) + 24))(*(v22 + 16), a2, a3);
        if (v18)
        {
          goto LABEL_28;
        }

        if ((*(a1[29] + 192) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v23 = a1[38];
      if (!v23)
      {
        goto LABEL_32;
      }

      v18 = (*(**(v23 + 16) + 24))(*(v23 + 16), a2, a3);
      if (v18)
      {
        goto LABEL_28;
      }

      if (*(a1[29] + 192))
      {
LABEL_32:
        v25 = a1[36];
        if (v25)
        {
          LODWORD(v25) = (*(**(v25 + 16) + 24))(*(v25 + 16), a2, a3);
        }
      }

      else
      {
LABEL_34:
        LODWORD(v25) = 0;
      }

      v24 = v25 == 0;
      if (v25)
      {
        v18 = v25;
      }

      else
      {
        v18 = 0;
      }

      if (!v21)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_28:
    v24 = 0;
    if (!v21)
    {
      goto LABEL_41;
    }

LABEL_39:
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

LABEL_41:
    if (!v24)
    {
      return v18;
    }

    return 0;
  }

  while (1)
  {
    v10 = (*(**v8 + 72))(*v8, a2, a3);
    if (v10)
    {
      return v10;
    }

    if (++v8 == v9)
    {
      goto LABEL_5;
    }
  }
}

void sub_1AE658860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  sub_1AE658924(va);
  sub_1AE622290(va1);
  _Unwind_Resume(a1);
}

void sub_1AE65887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE658924(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6588A8(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

void ***sub_1AE658924(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1AE6589E8(void *a1, const __CFString *a2, uint64_t a3)
{
  sub_1AE5CC874(a2, &v30);
  if (*(a1[29] + 365) != 1 || (v6 = a1[3], v7 = a1[4], v6 == v7))
  {
LABEL_5:
    __p = 0uLL;
    v9 = a1[23];
    v10 = a1[24];
    v33 = 0;
    p_p = &__p;
    v35 = 0;
    if (v10 != v9)
    {
      if (((v10 - v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v11 = a1[29];
    if ((*(v11 + 365) & 1) == 0)
    {
      v12 = a1[3];
      v13 = a1[4];
      if (v12 != v13)
      {
        while (1)
        {
          result = (*(**v12 + 64))(*v12, a2, a3);
          if (result)
          {
            goto LABEL_38;
          }

          if (++v12 == v13)
          {
            v11 = a1[29];
            break;
          }
        }
      }
    }

    if (*(v11 + 192) != 1)
    {
LABEL_37:
      result = 0;
      goto LABEL_38;
    }

    v14 = a1[6];
    v15 = *(v14 + 560);
    v16 = *(v14 + 568);
    *&__p = v15;
    *(&__p + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v15 || (result = (*(*v15 + 16))(v15, a2, a3), !result))
    {
      if (*(a1[29] + 192) != 1)
      {
        goto LABEL_29;
      }

      v17 = a1[37];
      if (v17)
      {
        result = (*(**(v17 + 16) + 16))(*(v17 + 16), a2, a3);
        if (result)
        {
          goto LABEL_24;
        }

        if ((*(a1[29] + 192) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v18 = a1[38];
      if (v18)
      {
        result = (*(**(v18 + 16) + 16))(*(v18 + 16), a2, a3);
        if (result)
        {
          goto LABEL_24;
        }

        if ((*(a1[29] + 192) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v20 = a1[36];
      if (v20)
      {
        LODWORD(result) = (*(**(v20 + 16) + 16))(*(v20 + 16), a2, a3);
      }

      else
      {
LABEL_29:
        LODWORD(result) = 0;
      }

      v19 = result == 0;
      if (result)
      {
        result = result;
      }

      else
      {
        result = 0;
      }

      if (!v16)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

LABEL_24:
    v19 = 0;
    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v21 = result;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      result = v21;
    }

LABEL_36:
    if (!v19)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  while (1)
  {
    result = (*(**v6 + 64))(*v6, a2, a3);
    if (result)
    {
      break;
    }

    if (++v6 == v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:
  if (v31 < 0)
  {
    v22 = result;
    operator delete(v30);
    result = v22;
    if (v22)
    {
      return result;
    }
  }

  else if (result)
  {
    return result;
  }

  if (*(a1[29] + 358) != 1)
  {
    goto LABEL_51;
  }

  Length = CFStringGetLength(a2);
  if (Length < 1)
  {
    return 3;
  }

  v24 = Length;
  v25 = 1;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v25 - 1);
    v27 = (1 << u_charType(CharacterAtIndex)) & 0xE00;
    if (v27)
    {
      v28 = v25 < v24;
    }

    else
    {
      v28 = 0;
    }

    ++v25;
  }

  while (v28);
  if (v27)
  {
    return 3;
  }

LABEL_51:
  sub_1AE5CC874(a2, &__p);
  result = sub_1AE7004D8(&__p);
  if (SHIBYTE(v33) < 0)
  {
    v29 = result;
    operator delete(__p);
    return v29;
  }

  return result;
}

void sub_1AE658F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  sub_1AE622290(&a19);
  sub_1AE6588A8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE658FF0(uint64_t a1)
{
  sub_1AE659028(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE659028(uint64_t a1)
{
  *a1 = &unk_1F242AA90;
  v2 = *(a1 + 232);
  if (v2)
  {
    v3 = *(a1 + 264);
    if (v3)
    {
      std::mutex::lock(*(a1 + 232));
      v5 = *(v2 + 64);
      v4 = *(v2 + 72);
      if (v5 != v4)
      {
        while (*v5 != v3 + 120)
        {
          v5 += 8;
          if (v5 == v4)
          {
            v5 = *(v2 + 72);
            break;
          }
        }
      }

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
  }

  v7 = *(a1 + 464);
  if (v7)
  {
    sub_1AE707160(v7, a1, 0);
  }

  v8 = *(a1 + 544);
  *(a1 + 544) = 0;
  if (v8)
  {
    sub_1AE6597B0(v8);
  }

  std::recursive_mutex::~recursive_mutex((a1 + 480));
  v9 = *(a1 + 472);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = *(a1 + 456);
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v10 = *(a1 + 456);
  if (v10)
  {
LABEL_19:
    CFRelease(v10);
  }

LABEL_20:
  *(a1 + 456) = 0;
  v11 = *(a1 + 432);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 432) = 0;
  v12 = *(a1 + 424);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *(a1 + 344) = &unk_1F242AD40;
  sub_1AE65988C(*(a1 + 400));
  sub_1AE6598EC(*(a1 + 376));
  v13 = *(a1 + 336);
  *(a1 + 336) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v14)
  {
    CFRelease(*v14);
    v15 = *(v14 + 16);
    if (v15)
    {
    }

    MEMORY[0x1B2706400](v14, 0x10E0C40F5622EBCLL);
  }

  v16 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v16)
  {
    CFRelease(*v16);
    v17 = *(v16 + 16);
    if (v17)
    {
    }

    MEMORY[0x1B2706400](v16, 0x10E0C40F5622EBCLL);
  }

  v18 = *(a1 + 312);
  *(a1 + 312) = 0;
  if (v18)
  {
    CFRelease(*v18);
    v19 = *(v18 + 16);
    if (v19)
    {
    }

    MEMORY[0x1B2706400](v18, 0x10E0C40F5622EBCLL);
  }

  v20 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(a1 + 256);
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(a1 + 240);
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(a1 + 208);
  if (v28)
  {
    v29 = *(a1 + 216);
    v30 = *(a1 + 208);
    if (v29 != v28)
    {
      do
      {
        v32 = *--v29;
        v31 = v32;
        *v29 = 0;
        if (v32)
        {
          (*(*v31 + 8))(v31);
        }
      }

      while (v29 != v28);
      v30 = *(a1 + 208);
    }

    *(a1 + 216) = v28;
    operator delete(v30);
  }

  v33 = *(a1 + 184);
  if (v33)
  {
    v34 = *(a1 + 192);
    v35 = *(a1 + 184);
    if (v34 != v33)
    {
      do
      {
        v36 = *(v34 - 8);
        if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        v34 -= 16;
      }

      while (v34 != v33);
      v35 = *(a1 + 184);
    }

    *(a1 + 192) = v33;
    operator delete(v35);
  }

  v37 = *(a1 + 176);
  if (v37)
  {
    CFRelease(v37);
  }

  *(a1 + 176) = 0;
  v38 = *(a1 + 152);
  if (v38)
  {
    v39 = *(a1 + 160);
    v40 = *(a1 + 152);
    if (v39 != v38)
    {
      do
      {
        v42 = *--v39;
        v41 = v42;
        *v39 = 0;
        if (v42)
        {
          (*(*v41 + 8))(v41);
        }
      }

      while (v39 != v38);
      v40 = *(a1 + 152);
    }

    *(a1 + 160) = v38;
    operator delete(v40);
  }

  v43 = *(a1 + 128);
  if (v43)
  {
    v44 = *(a1 + 136);
    v45 = *(a1 + 128);
    if (v44 != v43)
    {
      do
      {
        v46 = *(v44 - 8);
        if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v46->__on_zero_shared)(v46);
          std::__shared_weak_count::__release_weak(v46);
        }

        v44 -= 16;
      }

      while (v44 != v43);
      v45 = *(a1 + 128);
    }

    *(a1 + 136) = v43;
    operator delete(v45);
  }

  v47 = *(a1 + 120);
  if (v47)
  {
    CFRelease(v47);
  }

  *(a1 + 120) = 0;
  v48 = *(a1 + 96);
  if (v48)
  {
    v49 = *(a1 + 104);
    v50 = *(a1 + 96);
    if (v49 != v48)
    {
      do
      {
        v49 -= 40;
        sub_1AE65994C(v49);
      }

      while (v49 != v48);
      v50 = *(a1 + 96);
    }

    *(a1 + 104) = v48;
    operator delete(v50);
  }

  v51 = *(a1 + 88);
  if (v51)
  {
    CFRelease(v51);
  }

  *(a1 + 88) = 0;
  v52 = *(a1 + 64);
  if (v52)
  {
    v53 = *(a1 + 72);
    v54 = *(a1 + 64);
    if (v53 != v52)
    {
      do
      {
        v55 = *(v53 - 8);
        if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v53 -= 16;
      }

      while (v53 != v52);
      v54 = *(a1 + 64);
    }

    *(a1 + 72) = v52;
    operator delete(v54);
  }

  v56 = *(a1 + 56);
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  v57 = *(a1 + 24);
  if (v57)
  {
    *(a1 + 32) = v57;
    operator delete(v57);
  }

  v58 = *(a1 + 16);
  if (v58)
  {
    std::__shared_weak_count::__release_weak(v58);
  }

  return a1;
}

void sub_1AE6597B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v8 = *v6;
      sub_1AE659D30((v6 + 5));
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v8;
    }

    while (v8);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  JUMPOUT(0x1B2706400);
}

void sub_1AE65988C(void *a1)
{
  if (a1)
  {
    sub_1AE65988C(*a1);
    sub_1AE65988C(a1[1]);
    sub_1AE6206F4(a1[9]);
    sub_1AE6206F4(a1[6]);

    operator delete(a1);
  }
}

void sub_1AE6598EC(void *a1)
{
  if (a1)
  {
    sub_1AE6598EC(*a1);
    sub_1AE6598EC(a1[1]);
    sub_1AE6206F4(a1[8]);
    sub_1AE6206F4(a1[5]);

    operator delete(a1);
  }
}

void *sub_1AE65994C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B2706400](v2, 0x1080C409A65DFB4);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        sub_1AE701454(v6 + 8);
        MEMORY[0x1B2706400](v6, 0x1020C403F824CD1);
        if (*v5)
        {
          free(*v5);
        }
      }

      MEMORY[0x1B2706400](v5, 0x1030C40FC63861FLL);
    }

    MEMORY[0x1B2706400](v4, 0x20C4093837F09);
  }

  result = *a1;
  if (*a1)
  {
    result = munmap(result, *(a1 + 8));
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1AE659A38@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 56);
  result = a1 + 56;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= a2)
    {
      return sub_1AE659A9C(a3, (v6 + 40));
    }
  }

  a3[1] = 0;
  *a3 = a3 + 1;
  a3[5] = 0;
  a3[4] = 0;
  a3[2] = 0;
  a3[3] = a3 + 4;
  return result;
}

uint64_t sub_1AE659A9C(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v5 = (a2 + 1);
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_1AE6205CC(a1, v4, v6 + 4);
      v10 = v6[1];
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
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v5);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  v7 = a2[3];
  v8 = (a2 + 4);
  if (v7 != v8)
  {
    do
    {
      sub_1AE6205CC((a1 + 24), (a1 + 32), v7 + 4);
      v13 = v7[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v7[2];
          v12 = *v14 == v7;
          v7 = v14;
        }

        while (!v12);
      }

      v7 = v14;
    }

    while (v14 != v8);
  }

  return a1;
}

void sub_1AE659BB8(_Unwind_Exception *a1)
{
  sub_1AE6206F4(*v2);
  sub_1AE6206F4(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE659BDC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (v3 + 32 >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v3 + 32 < a2));
  }

  while (v3);
  v6 = v5 + 32;
  if (v5 == v2)
  {
    v7 = 1;
    v8 = 0;
  }

  else
  {
    v7 = v6 >= a2;
    v8 = v6 == a2;
  }

  if (!v8 && v7)
  {
    return 0;
  }

  else
  {
    return *(v5 + 80);
  }
}

void sub_1AE659C20(uint64_t a1)
{
  *a1 = &unk_1F242AD40;
  sub_1AE65988C(*(a1 + 56));
  sub_1AE6598EC(*(a1 + 32));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE659C90(uint64_t a1)
{
  *a1 = &unk_1F242AD40;
  sub_1AE65988C(*(a1 + 56));
  sub_1AE6598EC(*(a1 + 32));
  return a1;
}

uint64_t sub_1AE659CE0(uint64_t a1)
{
  *a1 = &unk_1F242AD40;
  sub_1AE65988C(*(a1 + 56));
  sub_1AE6598EC(*(a1 + 32));
  return a1;
}

uint64_t sub_1AE659D30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        v7 = *(v2 + 6);
        v8 = *(v2 + 5);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 1);
            v7 -= 3;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v2 + 5);
        }

        *(v2 + 6) = v6;
        operator delete(v8);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
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

void sub_1AE659F00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE659F3C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM22CompositeLanguageModelEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM22CompositeLanguageModelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM22CompositeLanguageModelEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM22CompositeLanguageModelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE659F98(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE659FC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE65A004(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    sub_1AE6206F4(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
      return v1;
    }
  }

  return result;
}

uint64_t sub_1AE65A058(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v76 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F242AA90;
  *(a1 + 24) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 360) = -1;
  *(a1 + 344) = &unk_1F242AD40;
  *(a1 + 352) = 0xC0000000C0000000;
  *(a1 + 368) = a1 + 376;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 400;
  *(a1 + 416) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 432) = CFRetain(cf);
  *(a1 + 448) = 50;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  MEMORY[0x1B27061A0](a1 + 480);
  *(a1 + 544) = 0;
  v4 = *(a1 + 416);
  v5 = *(v4 + 8);
  v62 = *(v4 + 16);
  v65 = *(v4 + 17);
  v63 = MEMORY[0x1B2705500](v5);
  v6 = *(a1 + 432);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (!v6 || !kLMLanguageLocalesKey || (Value = CFDictionaryGetValue(v6, kLMLanguageLocalesKey)) == 0 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    buf[0] = 0;
    LOBYTE(v75) = 0;
LABEL_9:
    __p = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_10;
  }

  Count = CFArrayGetCount(Value);
  cfa[0] = 0;
  cfa[1] = 0;
  v10 = Count << 32;
  v70 = 0;
  if (Count << 32)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v48 = 0;
  if (Count >= 1)
  {
    v49 = 0;
    v50 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v49);
      v52 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      CFRetain(ValueAtIndex);
      v53 = CFGetTypeID(v52);
      if (v53 != CFStringGetTypeID())
      {
        CFRelease(v52);
        break;
      }

      *buf = v52;
      buf[8] = 1;
      if (v48 < v70)
      {
        *v48++ = v52;
        cfa[1] = v48;
      }

      else
      {
        v48 = sub_1AE70C960(cfa, buf);
        cfa[1] = v48;
        if ((buf[8] & 1) != 0 && *buf)
        {
          CFRelease(*buf);
        }
      }

      if (v50 == ++v49)
      {
        v10 = v70;
        goto LABEL_106;
      }
    }

    LOBYTE(v75) = 0;
    buf[0] = 0;
    v54 = cfa[0];
    if (cfa[0])
    {
      while (v48 != v54)
      {
        v56 = *--v48;
        v55 = v56;
        if (v56)
        {
          CFRelease(v55);
        }
      }

      operator delete(v54);
    }

    goto LABEL_9;
  }

LABEL_106:
  v61 = cfa[1];
  *buf = *cfa;
  *&buf[16] = v10;
  LOBYTE(v75) = 1;
  sub_1AE628F50(&__p, buf);
  v57 = *buf;
  if (*buf)
  {
    for (i = v61; i != v57; i -= 8)
    {
      v60 = *(i - 1);
      v59 = v60;
      if (v60)
      {
        CFRelease(v59);
      }
    }

    operator delete(v57);
  }

LABEL_10:
  v11 = __p;
  v12 = v67;
  if (__p == v67)
  {
    v13 = 0;
    if (!__p)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v13 = 0;
  do
  {
    v14 = CFLocaleCreate(0, *v11);
    if (v14)
    {
      *buf = v14;
      if (v13 < v73)
      {
        *v13 = v14;
        v13 = (v13 + 8);
        v72 = v13;
      }

      else
      {
        v13 = sub_1AE68AE94(&v71, buf);
        v72 = v13;
        if (*buf)
        {
          CFRelease(*buf);
        }
      }
    }

    else
    {
      if (qword_1ED9AC8F8 == -1)
      {
        v15 = *v11;
        if (!*v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
        v15 = *v11;
        if (!*v11)
        {
LABEL_28:
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      v16 = qword_1ED9AC900;
      v17 = CFStringGetTypeID();
      if (v17 == CFGetTypeID(v15))
      {
        sub_1AE621740(buf, v15);
        v24 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          LOBYTE(v24) = buf[0];
        }
      }

      else
      {
        *buf = 0;
        buf[23] = 0;
        v24 = buf;
      }

      sub_1AE731C2C(v16, v18, "Unable to construct locale: %s", v19, v20, v21, v22, v23, v24);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    ++v11;
  }

  while (v11 != v12);
  v11 = __p;
  if (__p)
  {
LABEL_32:
    v26 = v67;
    v27 = v11;
    if (v67 != v11)
    {
      do
      {
        v29 = *--v26;
        v28 = v29;
        if (v29)
        {
          CFRelease(v28);
        }
      }

      while (v26 != v11);
      v27 = __p;
    }

    v67 = v11;
    operator delete(v27);
    v13 = v72;
  }

LABEL_39:
  v30 = v71;
  if (v71 == v13)
  {
    v31 = 0;
    if (!v71)
    {
LABEL_41:
      v32 = *(a1 + 176);
      if (!v32)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v31 = sub_1AE65ADC4(&v71);
    if (!v30)
    {
      goto LABEL_41;
    }
  }

  for (j = v72; j != v30; j = (j - 8))
  {
    v35 = *(j - 1);
    v34 = v35;
    if (v35)
    {
      CFRelease(v34);
    }
  }

  operator delete(v30);
  v32 = *(a1 + 176);
  if (v32)
  {
LABEL_49:
    CFRelease(v32);
  }

LABEL_50:
  *(a1 + 176) = v31;
  if (v31 && CFArrayGetCount(v31))
  {
    sub_1AE65B084(&v71, *(a1 + 176));
    v36 = v71;
    if (!v71)
    {
      goto LABEL_62;
    }

    v37 = CFArrayGetCount(v71);
    v38 = v37;
    v39 = v71;
    if (v71)
    {
      v40 = CFArrayGetCount(v71);
      if (!v38)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v40 = 0;
      if (!v37)
      {
        goto LABEL_62;
      }
    }

    if (v36 != v39 || v40)
    {
      sub_1AE65B144(cfa, v36, 0);
      operator new();
    }

LABEL_62:
    sub_1AE70C58C(cfa, *(a1 + 176));
    if (v65)
    {
      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      v41 = qword_1ED9AC948;
      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_DEFAULT))
      {
        v42 = cfa;
        if (v70 < 0)
        {
          v42 = cfa[0];
        }

        *buf = 138412802;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = v42;
        *&buf[22] = 2112;
        v75 = cf;
        v43 = "Creating Siri CompositeLanguageModel (%@) for locale(s) (%s):\n%@";
LABEL_82:
        _os_log_impl(&dword_1AE5C8000, v41, OS_LOG_TYPE_DEFAULT, v43, buf, 0x20u);
      }
    }

    else if (v62)
    {
      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      v41 = qword_1ED9AC948;
      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_DEFAULT))
      {
        v44 = cfa;
        if (v70 < 0)
        {
          v44 = cfa[0];
        }

        *buf = 138412802;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        *&buf[22] = 2112;
        v75 = cf;
        v43 = "Creating multilingual CompositeLanguageModel (%@) for locale(s) (%s):\n%@";
        goto LABEL_82;
      }
    }

    else
    {
      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      v41 = qword_1ED9AC948;
      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_DEFAULT))
      {
        v45 = cfa;
        if (v70 < 0)
        {
          v45 = cfa[0];
        }

        *buf = 138412802;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = v45;
        *&buf[22] = 2112;
        v75 = cf;
        v43 = "Creating CompositeLanguageModel (%@) for locale(s) (%s):\n%@";
        goto LABEL_82;
      }
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(cfa[0]);
      v46 = v71;
      if (!v71)
      {
        return a1;
      }
    }

    else
    {
      v46 = v71;
      if (!v71)
      {
        return a1;
      }
    }

    CFRelease(v46);
    return a1;
  }

  if (v5)
  {
    CFRetain(v5);
    v71 = v5;
    memset(buf, 0, sizeof(buf));
    cfa[0] = buf;
    LOBYTE(cfa[1]) = 0;
    operator new();
  }

  return a1;
}

void sub_1AE65AA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef sub_1AE65ADC4(void *a1)
{
  v1 = a1[1];
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  result = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AE65AF38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void ***sub_1AE65AF60(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 1);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            CFRelease(v6);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void **sub_1AE65AFE0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

const void **sub_1AE65B050(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1AE65B084(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFArrayGetTypeID();
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

void sub_1AE65B118(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE65BA8C(v1);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1AE65B144(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE65BA80();
  }

  result = CFRetain(ValueAtIndex);
  *a1 = v7;
  return result;
}

uint64_t *sub_1AE65B1F4(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE65B814(v2);
    MEMORY[0x1B2706400](v4, 0x10E0C405C30B098);
    return v3;
  }

  return v1;
}

void sub_1AE65B248(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      if (!(v5 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(16 * v2) = *a2;
    operator new();
  }

  sub_1AE5CBB70();
}

void sub_1AE65B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1AE65B1F4(&a14);
  sub_1AE65B6C8(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1AE65B3A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE65B3D4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void *sub_1AE65B40C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    CFRelease(*v1);
    v3 = *(v1 + 16);
    if (v3)
    {
    }

    MEMORY[0x1B2706400](v1, 0x10E0C40F5622EBCLL);
    return v2;
  }

  return result;
}

void *sub_1AE65B46C(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

const void **sub_1AE65B4FC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void *sub_1AE65B534(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

const void **sub_1AE65B5C4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void **sub_1AE65B5FC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 40;
        sub_1AE65994C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

const void **sub_1AE65B660(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

os_log_t sub_1AE65B698()
{
  result = os_log_create("com.apple.LanguageModeling", "CompositeLanguageModel");
  qword_1ED9AC948 = result;
  return result;
}

uint64_t sub_1AE65B6C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE65B774(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN2LM23LocaleSpecificResourcesEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN2LM23LocaleSpecificResourcesEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN2LM23LocaleSpecificResourcesEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN2LM23LocaleSpecificResourcesEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE65B7D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AE65B814(result);

    JUMPOUT(0x1B2706400);
  }

  return result;
}

uint64_t sub_1AE65B814(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      CFRelease(v5);
    }

    MEMORY[0x1B2706400](v3, 0x1060C40950A32C8);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 104);
    if (v7 != v6)
    {
      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          (*(*v9 + 8))(v9);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 104);
    }

    *(a1 + 112) = v6;
    operator delete(v8);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = *(a1 + 88);
    v13 = *(a1 + 80);
    if (v12 != v11)
    {
      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          (*(*v14 + 8))(v14);
        }
      }

      while (v12 != v11);
      v13 = *(a1 + 80);
    }

    *(a1 + 88) = v11;
    operator delete(v13);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(a1 + 64);
    v18 = *(a1 + 56);
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
      v18 = *(a1 + 56);
    }

    *(a1 + 64) = v16;
    operator delete(v18);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    *(a1 + 40) = v21;
    operator delete(v21);
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = *(a1 + 16);
    v24 = *(a1 + 8);
    if (v23 != v22)
    {
      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          (*(*v25 + 8))(v25);
        }
      }

      while (v23 != v22);
      v24 = *(a1 + 8);
    }

    *(a1 + 16) = v22;
    operator delete(v24);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  return a1;
}

void sub_1AE65BA44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

const void **sub_1AE65BA8C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE65BAC0(uint64_t a1)
{
  if (*(*(a1 + 416) + 72))
  {
    operator new();
  }

  operator new();
}

void sub_1AE660AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1AE621E54(va);
  JUMPOUT(0x1AE660B7CLL);
}

void sub_1AE660B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1AE63109C(va);
  JUMPOUT(0x1AE660B7CLL);
}

void sub_1AE660B58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE660B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1AE621528(va);
  JUMPOUT(0x1AE660B84);
}

void sub_1AE660B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1AE621CF0(va);
  operator delete(v11);
  JUMPOUT(0x1AE660B8CLL);
}

std::mutex **sub_1AE660D5C(std::mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    sub_1AE6318C4(v2);
    MEMORY[0x1B2706400]();
    return v3;
  }

  return v1;
}

void *sub_1AE660DB0(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2432938;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

__n128 sub_1AE660E2C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1AE660E3C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_1AE660EB8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1AE660EC8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_1AE660F44(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_1AE660F68(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v4);
  }
}

void sub_1AE661038(void *a1, uint64_t a2)
{
  valuePtr[35] = *MEMORY[0x1E69E9840];
  v4 = a1[22];
  if (qword_1ED9AC940 != -1)
  {
    dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
  }

  if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    LODWORD(valuePtr[0]) = 0;
    Value = CFDictionaryGetValue(*v5, @"Type");
    CFNumberGetValue(Value, kCFNumberIntType, valuePtr);
    CFDictionaryGetValue(**a2, @"URL");
    sub_1AE61D968();
  }

  v7 = *a2;
  LODWORD(valuePtr[0]) = 0;
  v8 = CFDictionaryGetValue(*v7, @"Type");
  CFNumberGetValue(v8, kCFNumberIntType, valuePtr);
  v9 = 4;
  switch(LODWORD(valuePtr[0]))
  {
    case 0:
      goto LABEL_45;
    case 1:
    case 5:
      v9 = 6;
      goto LABEL_45;
    case 2:
      sub_1AE662F44(v4);
      operator new();
    case 4:
      if (!*(*(a1[12] + 8) + 40))
      {
        CFDictionaryGetValue(**a2, @"URL");
        sub_1AE66ABCC();
      }

      return;
    case 7:
      v9 = 5;
      goto LABEL_45;
    case 0xA:
    case 0x29:
    case 0x2A:
      sub_1AE66BAE4(*(a1[18] + 8) + 40, a2);
      goto LABEL_7;
    case 0xC:
      v9 = 9;
      goto LABEL_45;
    case 0xD:
      v14 = a1[10];
      goto LABEL_58;
    case 0xE:
      v14 = a1[11];
LABEL_58:
      v12 = *(v14 + 8);
      goto LABEL_59;
    case 0x10:
      valuePtr[0] = CFDictionaryGetValue(**a2, @"URL");
      if (v4[13] < v4[14])
      {
        sub_1AE758394();
      }

      sub_1AE66B8D8(v4 + 12);
    case 0x11:
      v15 = *(v4[52] + 8);
      valuePtr[0] = CFDictionaryGetValue(**a2, @"URL");
      v16 = CFLocaleGetValue(v15, *MEMORY[0x1E695E6F0]);
      if (CFStringCompare(v16, @"de", 0))
      {
        if (CFStringCompare(v16, @"it", 0) == kCFCompareEqualTo || CFStringCompare(v16, @"fr", 0) == kCFCompareEqualTo || CFStringCompare(v16, @"pt", 0) == kCFCompareEqualTo || CFStringCompare(v16, @"es", 0) == kCFCompareEqualTo)
        {
          operator new();
        }

        if (CFStringCompare(v16, @"ru", 0) == kCFCompareEqualTo)
        {
          sub_1AE71E758();
        }

        if (CFStringCompare(v16, @"tr", 0) == kCFCompareEqualTo)
        {
          sub_1AE71E7E8();
        }
      }

      v23 = v4[42];
      v4[42] = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      return;
    case 0x14:
    case 0x30:
      v9 = 7;
      goto LABEL_45;
    case 0x1A:
      v9 = 8;
      goto LABEL_45;
    case 0x1B:
      v9 = 13;
      goto LABEL_45;
    case 0x1D:
      v12 = *(a1[14] + 8);
      if (!*(v12 + 40))
      {
        goto LABEL_59;
      }

      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
      {
        sub_1AE795CE8(valuePtr, **(*(a1[14] + 8) + 40));
      }

      v13 = 278;
      goto LABEL_56;
    case 0x1E:
      v10 = a1[15];
      goto LABEL_48;
    case 0x1F:
      v12 = *(a1[16] + 8);
      if (!*(v12 + 40))
      {
        goto LABEL_59;
      }

      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
      {
        sub_1AE795CE8(valuePtr, **(*(a1[16] + 8) + 40));
      }

      v13 = 290;
      goto LABEL_56;
    case 0x22:
      v10 = a1[17];
LABEL_48:
      v17 = *(v10 + 8);
      v19 = *(v17 + 40);
      v18 = (v17 + 40);
      if (!v19)
      {
        sub_1AE66BA64(v18, *a2, *(a2 + 8));
      }

      return;
    case 0x23:
      if (qword_1ED9AC940 != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      v11 = qword_1ED9AC948;
      if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
      {
        LOWORD(valuePtr[0]) = 0;
        _os_log_error_impl(&dword_1AE5C8000, v11, OS_LOG_TYPE_ERROR, "Skipping unsupported resource: LanguageModelFSTBlocklistResourceType", valuePtr, 2u);
      }

      return;
    case 0x28:
      v9 = 20;
      goto LABEL_45;
    case 0x31:
      v12 = *(a1[21] + 8);
      if (*(v12 + 40))
      {
        if (qword_1ED9AC940 != -1)
        {
          dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
        }

        if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_ERROR))
        {
          sub_1AE795CE8(valuePtr, **(*(a1[21] + 8) + 40));
        }

        v13 = 320;
LABEL_56:
        __assert_rtn("initialize_block_invoke", "LMCompositeLanguageModel.cpp", v13, "false");
      }

LABEL_59:
      v21 = *a2;
      v20 = *(a2 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(v12 + 48);
      *(v12 + 40) = v21;
      *(v12 + 48) = v20;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }

      break;
    case 0x32:
      v9 = 18;
      goto LABEL_45;
    case 0x34:
LABEL_7:
      v9 = 19;
LABEL_45:
      sub_1AE66BAE4(*(a1[v9] + 8) + 40, a2);
      break;
    default:
      return;
  }
}

void sub_1AE661C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, __int128 __p, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
    if ((v54 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v54)
  {
LABEL_8:
    sub_1AE5F2C0C(&a31, MEMORY[0x1E69E54D8]);
    MEMORY[0x1B2706340](&a50);
    sub_1AE6FCC0C(v50 + 24);
    if (a17 < 0)
    {
      operator delete(a12);
    }

    MEMORY[0x1B2706400](v50, 0x10F1C40E875E8CALL);
    if (a2 == 1)
    {
      v57 = __cxa_begin_catch(a1);
      if (*(v53 + 2368) != -1)
      {
        dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
      }

      v58 = *(v52 + 2376);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = (*(*v57 + 16))(v57);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v59;
        _os_log_error_impl(&dword_1AE5C8000, v58, OS_LOG_TYPE_ERROR, "Resource initialization failed: %s", &__p, 0xCu);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE6616F0);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v51);
  goto LABEL_8;
}

void sub_1AE661F24(uint64_t a1, CFTypeRef cf)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(a1 + 176) != cf)
  {
    CFRetain(cf);
    v4 = *(a1 + 176);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 176) = cf;
  }

  v5 = *(a1 + 184);
  v64 = cf;
  for (i = *(a1 + 192); i != v5; i -= 16)
  {
    v7 = *(i - 8);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  *(a1 + 192) = v5;
  sub_1AE65B084(&theArray, cf);
  v8 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v10 = Count;
    v11 = theArray;
    if (theArray)
    {
      v12 = CFArrayGetCount(theArray);
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
      if (!Count)
      {
        goto LABEL_19;
      }
    }

    if (v8 != v11 || v12)
    {
      sub_1AE65B144(cfa, v8, 0);
      operator new();
    }
  }

LABEL_19:
  v13 = *(a1 + 464);
  if (v13)
  {
    sub_1AE707160(v13, a1, *(a1 + 176));
  }

  v14 = *(a1 + 416);
  v15 = *(v14 + 16);
  v16 = *(v14 + 17);
  v17 = MEMORY[0x1B2705500](*(v14 + 8));
  sub_1AE70C58C(v65, v64);
  if (v16)
  {
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v18 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v65;
      if (v66 < 0)
      {
        v19 = v65[0];
      }

      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v19;
      v20 = "Reloading Siri CompositeLanguageModel (%@) for locale(s) (%s)";
LABEL_41:
      _os_log_impl(&dword_1AE5C8000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
    }
  }

  else if (v15)
  {
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v18 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v65;
      if (v66 < 0)
      {
        v21 = v65[0];
      }

      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v21;
      v20 = "Reloading multilingual CompositeLanguageModel (%@) for locale(s) (%s)";
      goto LABEL_41;
    }
  }

  else
  {
    if (qword_1ED9AC940 != -1)
    {
      dispatch_once(&qword_1ED9AC940, &unk_1F242AB30);
    }

    v18 = qword_1ED9AC948;
    if (os_log_type_enabled(qword_1ED9AC948, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v65;
      if (v66 < 0)
      {
        v22 = v65[0];
      }

      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v22;
      v20 = "Reloading CompositeLanguageModel (%@) for locale (%s)";
      goto LABEL_41;
    }
  }

  sub_1AE70D1C4(*(a1 + 416), *(a1 + 432), *(*(a1 + 232) + 344), (a1 + 184));
  sub_1AE66406C(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 432));
  theDict = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, kLMLanguageLocalesKey);
  CFDictionarySetValue(MutableCopy, kLMLanguageModelIgnoreSystemLanguageModelsKey, *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(MutableCopy, kLMLanguageModelIsMultilingualModelKey, *MEMORY[0x1E695E4C0]);
  v24 = *(a1 + 184);
  v25 = *(a1 + 192);
  if (v24 == v25)
  {
    goto LABEL_147;
  }

  do
  {
    sub_1AE66A074(&__p, **v24);
    v83 = 7;
    strcpy(buf, "hi-Latn");
    v85 = 7;
    strcpy(v84, "gu-Latn");
    v87 = 7;
    strcpy(v86, "mr-Latn");
    v89 = 7;
    strcpy(v88, "te-Latn");
    v91 = 7;
    strcpy(v90, "ta-Latn");
    v93 = 7;
    strcpy(v92, "pa-Latn");
    v95 = 7;
    strcpy(v94, "bn-Latn");
    *cfa = 0u;
    v80 = 0u;
    v81 = 1065353216;
    sub_1AE64AA10(cfa, buf);
    sub_1AE64AA10(cfa, v84);
    sub_1AE64AA10(cfa, v86);
    sub_1AE64AA10(cfa, v88);
    sub_1AE64AA10(cfa, v90);
    sub_1AE64AA10(cfa, v92);
    sub_1AE64AA10(cfa, v94);
    if (v95 < 0)
    {
      operator delete(v94[0]);
      if ((v93 & 0x80000000) == 0)
      {
LABEL_47:
        if ((v91 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_66;
      }
    }

    else if ((v93 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    operator delete(v92[0]);
    if ((v91 & 0x80000000) == 0)
    {
LABEL_48:
      if ((v89 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_67;
    }

LABEL_66:
    operator delete(v90[0]);
    if ((v89 & 0x80000000) == 0)
    {
LABEL_49:
      if ((v87 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_68;
    }

LABEL_67:
    operator delete(v88[0]);
    if ((v87 & 0x80000000) == 0)
    {
LABEL_50:
      if (v85 < 0)
      {
        goto LABEL_69;
      }

      goto LABEL_51;
    }

LABEL_68:
    operator delete(v86[0]);
    if (v85 < 0)
    {
LABEL_69:
      operator delete(v84[0]);
      if ((v83 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_70;
    }

LABEL_51:
    if ((v83 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_70:
    operator delete(*buf);
LABEL_52:
    if (sub_1AE70D964(cfa, &__p))
    {
      v26 = v76;
      if ((v76 & 0x80u) != 0)
      {
        v26 = v75;
      }

      if (v26 >= 2)
      {
        v27 = 2;
      }

      else
      {
        v27 = v26;
      }

      v83 = v27;
      if (v26)
      {
        if ((v76 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        memmove(buf, p_p, v27);
        v29 = buf;
        v30 = v83;
        buf[v27] = 0;
        if (v30 < 0)
        {
          v29 = *buf;
          if (!*buf)
          {
            v34 = 0;
            localeIdentifier = 0;
            goto LABEL_88;
          }

          v31 = *&buf[8];
        }

        else
        {
          v31 = v30;
        }
      }

      else
      {
        v31 = 0;
        v29 = buf;
        buf[v27] = 0;
      }

      v32 = CFStringCreateWithBytes(0, v29, v31, 0x8000100u, 0);
      localeIdentifier = v32;
      if (!v32)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (v83 < 0)
      {
        v34 = *buf;
LABEL_88:
        operator delete(v34);
        v32 = localeIdentifier;
      }
    }

    else
    {
      if ((v76 & 0x80u) == 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p;
      }

      if (v32)
      {
        if ((v76 & 0x80u) == 0)
        {
          v33 = v76;
        }

        else
        {
          v33 = v75;
        }

        v32 = CFStringCreateWithBytes(0, v32, v33, 0x8000100u, 0);
        localeIdentifier = v32;
        if (!v32)
        {
          v63 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B2705EB0](v63, "Could not construct");
          __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        localeIdentifier = 0;
      }
    }

    v35 = CFLocaleCreate(0, v32);
    v77 = v35;
    if (localeIdentifier)
    {
      CFRelease(localeIdentifier);
    }

    v36 = v80;
    if (v80)
    {
      do
      {
        v42 = *v36;
        if (*(v36 + 39) < 0)
        {
          v43 = v36;
          operator delete(v36[2]);
          v36 = v43;
        }

        operator delete(v36);
        v36 = v42;
      }

      while (v42);
    }

    v37 = cfa[0];
    cfa[0] = 0;
    if (v37)
    {
      operator delete(v37);
    }

    if (v76 < 0)
    {
      operator delete(__p);
    }

    v38 = theDict;
    CFDictionarySetValue(theDict, kLMLanguageModelLocaleKey, v35);
    sub_1AE5CD66C(buf, v38);
    sub_1AE68CF18(cfa, *buf, 42);
    sub_1AE68CF18(&__p, *buf, 10);
    sub_1AE66A758(cfa, cfa[1], __p, v75, (v75 - __p) >> 4);
    sub_1AE68CF18(&localeIdentifier, *buf, 41);
    sub_1AE66A758(cfa, cfa[1], localeIdentifier, v73, (v73 - localeIdentifier) >> 4);
    sub_1AE68CF18(&v70, *buf, 50);
    sub_1AE68CF18(&v68, *buf, 52);
    sub_1AE66A758(&v68, v69, cfa[0], cfa[1], (cfa[1] - cfa[0]) >> 4);
    sub_1AE66A758(&v70, v71, cfa[0], cfa[1], (cfa[1] - cfa[0]) >> 4);
    sub_1AE6630C8(*v24, &v70, &v68);
    v39 = v68;
    if (v68)
    {
      v40 = v69;
      v41 = v68;
      if (v69 != v68)
      {
        do
        {
          v44 = *(v40 - 1);
          if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
          }

          v40 -= 16;
        }

        while (v40 != v39);
        v41 = v68;
      }

      v69 = v39;
      operator delete(v41);
    }

    v45 = v70;
    if (v70)
    {
      v46 = v71;
      v47 = v70;
      if (v71 != v70)
      {
        do
        {
          v48 = *(v46 - 1);
          if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v48->__on_zero_shared)(v48);
            std::__shared_weak_count::__release_weak(v48);
          }

          v46 -= 16;
        }

        while (v46 != v45);
        v47 = v70;
      }

      v71 = v45;
      operator delete(v47);
    }

    v49 = localeIdentifier;
    if (localeIdentifier)
    {
      v50 = v73;
      v51 = localeIdentifier;
      if (v73 != localeIdentifier)
      {
        do
        {
          v52 = *(v50 - 1);
          if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v52->__on_zero_shared)(v52);
            std::__shared_weak_count::__release_weak(v52);
          }

          v50 -= 16;
        }

        while (v50 != v49);
        v51 = localeIdentifier;
      }

      v73 = v49;
      operator delete(v51);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v75;
      v55 = __p;
      if (v75 != __p)
      {
        do
        {
          v56 = *(v54 - 1);
          if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          v54 -= 16;
        }

        while (v54 != v53);
        v55 = __p;
      }

      v75 = v53;
      operator delete(v55);
    }

    v57 = cfa[0];
    if (cfa[0])
    {
      v58 = cfa[1];
      v59 = cfa[0];
      if (cfa[1] != cfa[0])
      {
        do
        {
          v60 = *(v58 - 1);
          if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
          }

          v58 -= 16;
        }

        while (v58 != v57);
        v59 = cfa[0];
      }

      cfa[1] = v57;
      operator delete(v59);
    }

    sub_1AE631694(buf);
    if (v77)
    {
      CFRelease(v77);
    }

    v24 += 2;
  }

  while (v24 != v25);
  MutableCopy = theDict;
LABEL_147:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (*(*(a1 + 232) + 192) == 1 && *(a1 + 48) && *(a1 + 272) && *(a1 + 184) != *(a1 + 192))
  {
    (*(**(*(a1 + 272) + 8) + 72))(*(*(a1 + 272) + 8), *(a1 + 232) + 88);
    operator new();
  }

  sub_1AE6642F8(a1);
  if (v66 < 0)
  {
    operator delete(v65[0]);
    v61 = theArray;
    if (theArray)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v61 = theArray;
    if (!theArray)
    {
      return;
    }

LABEL_158:
    CFRelease(v61);
  }
}