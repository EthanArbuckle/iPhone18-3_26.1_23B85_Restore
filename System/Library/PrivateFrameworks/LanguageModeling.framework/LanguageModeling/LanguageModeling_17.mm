void sub_1AE6F886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1AE636D70(va);
  _Unwind_Resume(a1);
}

void sub_1AE6F889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 16 * (v3 >> 1));
    v7 = v6[1];
    v8 = *(a2 - 8);
    if (v7 < v8)
    {
      v9 = (a2 - 16);
      v10 = *(a2 - 16);
      *(a2 - 16) = 0;
      do
      {
        v11 = v6;
        v12 = *v6;
        *v6 = 0.0;
        if (*v9)
        {
          CFRelease(*v9);
          v7 = *(v11 + 1);
        }

        *v9 = v12;
        v9[1] = v7;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 16 * v5);
        v7 = v6[1];
        v9 = v11;
      }

      while (v7 < v8);
      if (*v11)
      {
        CFRelease(*v11);
      }

      *v11 = v10;
      *(v11 + 1) = v8;
    }
  }
}

void sub_1AE6F8960(void *a1)
{
  sub_1AE6F8998(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6F8998(void *a1)
{
  *a1 = &unk_1F242E2A8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v5 = a1[5];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 2);
        v4 -= 2;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }

        *v4 = 0;
      }

      while (v4 != v3);
      v5 = a1[5];
    }

    a1[6] = v3;
    operator delete(v5);
  }

  v8 = a1[3];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[3] = 0;
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  return a1;
}

uint64_t sub_1AE6F8AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK2LM22TransientLanguageModel26insertPredictionsForPrefixEPK10__CFStringlRNSt3__114priority_queueINS_13TransientItemENS4_6vectorIS6_NS4_9allocatorIS6_EEEENS_17TransientItemLessEEE13LMLexiconTypeE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK2LM22TransientLanguageModel26insertPredictionsForPrefixEPK10__CFStringlRNSt3__114priority_queueINS_13TransientItemENS4_6vectorIS6_NS4_9allocatorIS6_EEEENS_17TransientItemLessEEE13LMLexiconTypeE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK2LM22TransientLanguageModel26insertPredictionsForPrefixEPK10__CFStringlRNSt3__114priority_queueINS_13TransientItemENS4_6vectorIS6_NS4_9allocatorIS6_EEEENS_17TransientItemLessEEE13LMLexiconTypeE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK2LM22TransientLanguageModel26insertPredictionsForPrefixEPK10__CFStringlRNSt3__114priority_queueINS_13TransientItemENS4_6vectorIS6_NS4_9allocatorIS6_EEEENS_17TransientItemLessEEE13LMLexiconTypeE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE6F8B10(uint64_t a1, CFStringRef *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a3;
  Length = CFStringGetLength(*a2);
  v7.location = **(a1 + 8);
  if (Length - v7.location >= 1)
  {
    v7.length = Length - v7.location;
    v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v4, v7);
    v25 = v8;
    if (v8)
    {
      v9 = v8;
      if (!CFStringGetLength(v8))
      {
        goto LABEL_27;
      }

      v10 = *(a1 + 16);
      v12 = v10[1];
      v11 = v10[2];
      if (v12 >= v11)
      {
        v14 = (v12 - *v10) >> 4;
        if ((v14 + 1) >> 60)
        {
          sub_1AE5CBB70();
        }

        v15 = v11 - *v10;
        v16 = v15 >> 3;
        if (v15 >> 3 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          if (!(v17 >> 60))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v18 = (16 * v14);
        *v18 = CFRetain(v9);
        v18[1] = v5;
        v19 = *v10;
        v20 = v10[1];
        v21 = v18 + *v10 - v20;
        if (*v10 != v20)
        {
          v22 = *v10;
          v23 = (v18 + *v10 - v20);
          do
          {
            v24 = *v22;
            *v22 = 0;
            *v23 = v24;
            v23[1] = v22[1];
            v22 += 2;
            v23 += 2;
          }

          while (v22 != v20);
          do
          {
            if (*v19)
            {
              CFRelease(*v19);
            }

            *v19 = 0;
            v19 += 2;
          }

          while (v19 != v20);
          v19 = *v10;
        }

        v13 = (v18 + 2);
        *v10 = v21;
        v10[1] = (v18 + 2);
        v10[2] = 0;
        if (v19)
        {
          operator delete(v19);
          v13 = (v18 + 2);
        }

        v9 = v25;
      }

      else
      {
        *v12 = CFRetain(v9);
        v12[1] = v5;
        v13 = (v12 + 2);
        v10[1] = (v12 + 2);
      }

      v10[1] = v13;
      sub_1AE6F889C(*v10, v13, (v13 - *v10) >> 4);
      if (v9)
      {
LABEL_27:
        CFRelease(v9);
      }
    }
  }
}

void sub_1AE6F8D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10)
{
  sub_1AE6F8D3C(&a10);
  sub_1AE636D70(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F8D3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v7 = *(v3 - 2);
      v6 = v3 - 2;
      v5 = v7;
      *(a1 + 16) = v6;
      v8 = v6;
      if (v7)
      {
        CFRelease(v5);
        v8 = *(a1 + 16);
      }

      *v6 = 0;
      v3 = v8;
    }

    while (v8 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1AE6F8DB8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242E358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_1AE6F8E54(void *a1, int a2, uint64_t a3, uint64_t a4, double *a5)
{
  if ((a2 & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = v8[2];
  if (!*&v9)
  {
    return 0;
  }

  v11 = a1[8];
  v12 = vcnt_s8(v9);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = a1[8];
    if (*&v9 <= v11)
    {
      v13 = v11 % *&v9;
    }
  }

  else
  {
    v13 = (*&v9 - 1) & v11;
  }

  v14 = *(*&v8[1] + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (!v15)
  {
    return 0;
  }

  if (v12.u32[0] < 2uLL)
  {
    v16 = *&v9 - 1;
    while (1)
    {
      v18 = v15[1];
      if (v18 == v11)
      {
        if (v15[2] == v11)
        {
          goto LABEL_25;
        }
      }

      else if ((v18 & v16) != v13)
      {
        return 0;
      }

      v5 = 0;
      v15 = *v15;
      if (!v15)
      {
        return v5;
      }
    }
  }

  while (1)
  {
    v17 = v15[1];
    if (v17 == v11)
    {
      break;
    }

    if (v17 >= *&v9)
    {
      v17 %= *&v9;
    }

    if (v17 != v13)
    {
      return 0;
    }

LABEL_14:
    v5 = 0;
    v15 = *v15;
    if (!v15)
    {
      return v5;
    }
  }

  if (v15[2] != v11)
  {
    goto LABEL_14;
  }

LABEL_25:
  v19 = LXLexiconCopyEntryForTokenID();
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  UsageCount = LXEntryGetUsageCount();
  v5 = UsageCount != 0;
  if (UsageCount)
  {
    LXEntryGetProbability();
    *a5 = *(a1[6] + 464) + v22;
  }

  CFRelease(v20);
  return v5;
}

void sub_1AE6F8FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE67C310(va);
  _Unwind_Resume(a1);
}

void sub_1AE6F8FD8(void *a1)
{
  *a1 = &unk_1F242E270;
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6F90D4(void *a1)
{
  *a1 = &unk_1F242E270;
  v2 = a1[7];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_1AE6F91B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN2LM16TransientLexiconEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN2LM16TransientLexiconEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN2LM16TransientLexiconEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN2LM16TransientLexiconEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE6F9210(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1AE6F9240(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE6F9734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE71F48C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6F974C(void *a1)
{
  v1 = a1[2];
  v2 = v1[2];
  if (v2)
  {
    v3 = a1[8];
    v4 = vcnt_s8(v2);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a1[8];
      if (*&v2 <= v3)
      {
        v5 = v3 % *&v2;
      }
    }

    else
    {
      v5 = (*&v2 - 1) & v3;
    }

    v6 = *(*&v1[1] + 8 * v5);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        if (v4.u32[0] < 2uLL)
        {
          while (1)
          {
            v9 = v7[1];
            if (v9 == v3)
            {
              if (v7[2] == v3)
              {
                return 1;
              }
            }

            else if ((v9 & (*&v2 - 1)) != v5)
            {
              goto LABEL_22;
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v8 = v7[1];
          if (v8 == v3)
          {
            if (v7[2] == v3)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= *&v2)
            {
              v8 %= *&v2;
            }

            if (v8 != v5)
            {
              break;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }

LABEL_22:
    v10 = a1[9];
    v11 = vcnt_s8(v2);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = a1[9];
      if (*&v2 <= v10)
      {
        v12 = v10 % *&v2;
      }
    }

    else
    {
      v12 = (*&v2 - 1) & v10;
    }

    v13 = *(*&v1[1] + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (v14)
      {
        if (v11.u32[0] < 2uLL)
        {
          v15 = *&v2 - 1;
          while (1)
          {
            v16 = v14[1];
            if (v16 == v10)
            {
              if (v14[2] == v10)
              {
                return 1;
              }
            }

            else if ((v16 & v15) != v12)
            {
              return 0;
            }

            v14 = *v14;
            if (!v14)
            {
              return 0;
            }
          }
        }

        do
        {
          v18 = v14[1];
          if (v18 == v10)
          {
            if (v14[2] == v10)
            {
              return 1;
            }
          }

          else
          {
            if (v18 >= *&v2)
            {
              v18 %= *&v2;
            }

            if (v18 != v12)
            {
              return 0;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  return 0;
}

uint64_t sub_1AE6F990C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 80);
    *(a1 + 120) = *(a1 + 112);
    if (a3)
    {
      v9 = 4 * a3;
      if (v5)
      {
        do
        {
          v10 = *a2++;
          v11 = sub_1AE77CD58(v5, v10);
          sub_1AE6FA0D0(v11, a1 + 112, v6, v7);
          v9 -= 4;
        }

        while (v9);
      }

      else
      {
        do
        {
          v12 = *a2++;
          sub_1AE6FA0D0(v12, a1 + 112, v6, v7);
          v9 -= 4;
        }

        while (v9);
      }
    }
  }

  else
  {
    *buf = 1;
    v14 = (a1 + 112);
    v13 = *(a1 + 112);
    v15 = *(a1 + 128);
    if (v15 == v13)
    {
      if (v15)
      {
        *(a1 + 120) = v13;
        operator delete(v13);
        *v14 = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
      }

      operator new();
    }

    v16 = *(a1 + 120);
    v17 = v16 - v13;
    if (v16 == v13)
    {
      if (v17 != 4)
      {
        v18 = &buf[v17];
        v19 = &buf[v13 + 4] - &buf[v16] - 4;
        if (v19 < 0x1C)
        {
          goto LABEL_20;
        }

        if (2 * v13 - &buf[v16] < 0x20)
        {
          goto LABEL_20;
        }

        v20 = (v19 >> 2) + 1;
        v21 = 4 * (v20 & 0x7FFFFFFFFFFFFFF8);
        v18 += v21;
        v22 = v16 + 4;
        v23 = &buf[(v16 + 4) - v13];
        v24 = v20 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v25 = *v23;
          *(v22 - 1) = *(v23 - 1);
          *v22 = v25;
          v22 += 2;
          v23 += 32;
          v24 -= 8;
        }

        while (v24);
        v16 = (v16 + v21);
        if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_20:
          v26 = v18 - 4;
          do
          {
            v27 = *(v26 + 1);
            v26 += 4;
            *v16++ = v27;
          }

          while (v26 != buf);
        }
      }

      *(a1 + 120) = v16;
    }

    else
    {
      *v13 = 1;
      *(a1 + 120) = v13 + 1;
    }
  }

  if (*(a1 + 112) != *(a1 + 120))
  {
    v28 = (*(**(a1 + 32) + 16))(*(a1 + 32));
    if (v28 < 2)
    {
      operator new();
    }

    if (v28 == 2)
    {
      operator new();
    }

    if (qword_1EB5E0E60 != -1)
    {
      dispatch_once(&qword_1EB5E0E60, &unk_1F242E428);
    }

    v30 = qword_1EB5E0E58;
    if (os_log_type_enabled(qword_1EB5E0E58, OS_LOG_TYPE_ERROR))
    {
      v31 = (*(**(a1 + 32) + 16))(*(a1 + 32));
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_1AE5C8000, v30, OS_LOG_TYPE_ERROR, "unknown montreal model type in instance of MontrealTokenIDMapper: %d", buf, 8u);
    }

    __assert_rtn("createPredictionEnumerator", "NeuralLanguageModelAdapter.cpp", 189, "false");
  }

  return 0;
}

void sub_1AE6FA010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1AE622290(va);
  MEMORY[0x1B2706400](v9, v10);
  _Unwind_Resume(a1);
}

void sub_1AE6FA0D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v16 = *MEMORY[0x1E69E9840];
  v7 = a1 - 12;
  v8 = a1;
  if ((a1 - 12) <= 0x1E)
  {
    v8 = a1;
    if ((0x515B8843u >> v7))
    {
      v8 = dword_1AE7A0E08[v7];
    }
  }

  if (a4 || (v8 - 4) > 0x3D || ((1 << (v8 - 4)) & 0x380000400000020FLL) == 0)
  {
    if ((*(*a3 + 16))(a3) && (*(*a3 + 16))(a3) != 1)
    {
LABEL_19:
      (*(*a3 + 48))(a3);
      MEMORY[0x1EEE9AC00]();
      v11 = &v14[-v10];
      v12 = (*(*a3 + 32))(a3, v8, &v14[-v10]);
      if (v12)
      {
        v13 = v12;
        do
        {
          sub_1AE6369B4(a2, v11++);
          --v13;
        }

        while (v13);
      }

      return;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v9 = 2;
        goto LABEL_24;
      }

      if (v6 != 120)
      {
        goto LABEL_19;
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        v9 = 1;
LABEL_24:
        v15 = v9;
        sub_1AE6369B4(a2, &v15);
        return;
      }

      goto LABEL_19;
    }

    sub_1AE6369B4(a2, &dword_1AE7A0E04);
  }
}

os_log_t sub_1AE6FA334()
{
  result = os_log_create("com.apple.LanguageModeling", "NeuralLanguageModelAdapter");
  qword_1EB5E0E58 = result;
  return result;
}

uint64_t sub_1AE6FA364(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, double *a5)
{
  *a5 = 0.0;
  LOBYTE(v5) = a2 == 1;
  if (!a4)
  {
    return v5 & 1;
  }

  v6 = a5;
  v8 = a2;
  v10 = a1 + 112;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 80);
  *(a1 + 120) = *(a1 + 112);
  v14 = 4 * a4;
  if (v11)
  {
    do
    {
      v15 = *a3++;
      v16 = sub_1AE77CD58(v11, v15);
      sub_1AE6FA0D0(v16, v10, v12, v13);
      v14 -= 4;
    }

    while (v14);
  }

  else
  {
    do
    {
      v17 = *a3++;
      sub_1AE6FA0D0(v17, v10, v12, v13);
      v14 -= 4;
    }

    while (v14);
  }

  if (*(a1 + 112) == *(a1 + 120))
  {
LABEL_116:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v21 = (a1 + 88);
    *(a1 + 96) = *(a1 + 88);
    v22 = (a1 + 96);
    v23 = *(a1 + 32);
    goto LABEL_107;
  }

  v103 = 0;
  v104 = 0;
  v105 = 0;
  v18 = *(v5 + 80);
  v19 = *(v5 + 88);
  if (v18 != v19)
  {
    while (1)
    {
      v20 = *v18;
      if ((*(**v18 + 112))(*v18, v8))
      {
        break;
      }

      if (++v18 == v19)
      {
        goto LABEL_28;
      }
    }

    v24 = (*(*v20 + 88))(v20, v8);
    if (v24 <= 70)
    {
      v25 = 126;
      if (v24 == 68)
      {
        goto LABEL_27;
      }

      if (v24 != 69)
      {
        if (v24 != 70)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (v24 > 126)
      {
        if (v24 == 127)
        {
          v25 = 127;
          goto LABEL_27;
        }

        v25 = v24;
        if (v24 != 128)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }

      if (v24 != 71)
      {
        v25 = v24;
        if (v24 != 72)
        {
LABEL_24:
          v25 = 0;
        }

LABEL_27:
        LODWORD(v106) = v25;
        sub_1AE6369B4(&v103, &v106);
        goto LABEL_28;
      }
    }

    v25 = 123;
    goto LABEL_27;
  }

LABEL_28:
  if ((*(v5 + 128) & 1) == 0)
  {
    v35 = *(v5 + 56);
    v34 = *(v5 + 64);
    if (v34 - v35 != 8)
    {
      v79 = 0;
      do
      {
        v80 = *(v5 + 16);
        v81 = *(v35 + 8 * v79);
        v82 = (v80 + 16 * v81);
        ++v79;
        v83 = *(v35 + 8 * v79);
        v84 = 16 * v83;
        if (v83 != v81)
        {
          v85 = (v84 - 16 * v81) >> 4;
          do
          {
            v86 = v85 >> 1;
            v87 = &v82[4 * (v85 >> 1)];
            v89 = *v87;
            v88 = v87 + 4;
            v85 += ~(v85 >> 1);
            if (v89 < v8)
            {
              v82 = v88;
            }

            else
            {
              v85 = v86;
            }
          }

          while (v85);
        }

        if (v82 != (v80 + v84) && *v82 == v8)
        {
          sub_1AE6369B4(&v103, v82 + 1);
          v35 = *(v5 + 56);
          v34 = *(v5 + 64);
        }
      }

      while (((v34 - v35) >> 3) - 1 > v79);
    }

    v32 = v103;
    v33 = v104;
    if (v103 != v104)
    {
      v101 = v6;
      goto LABEL_40;
    }

LABEL_86:
    v78 = 0;
    goto LABEL_102;
  }

  v27 = *(v5 + 16);
  v26 = *(v5 + 24);
  while (v26)
  {
    v28 = v26 >> 1;
    v29 = &v27[4 * (v26 >> 1)];
    v31 = *v29;
    v30 = v29 + 4;
    v26 += ~(v26 >> 1);
    if (v31 < v8)
    {
      v27 = v30;
    }

    else
    {
      v26 = v28;
    }
  }

  sub_1AE6369B4(&v103, v27 + 1);
  if (v27 == (*(v5 + 16) + 16 * *(v5 + 24)))
  {
    v78 = 0;
    v32 = v103;
    goto LABEL_102;
  }

  v32 = v103;
  if (*v27 != v8)
  {
    goto LABEL_86;
  }

  v101 = v6;
  v33 = v104;
LABEL_40:
  v102 = v32;
  if (v32 == v33)
  {
    LOBYTE(v5) = 1;
    v36 = 0.0;
  }

  else
  {
    v36 = 0.0;
    v37 = v32;
    while (1)
    {
      v38 = *v37;
      v39 = *(a1 + 48);
      v40 = *(a1 + 32);
      *(a1 + 96) = *(a1 + 88);
      v41 = v39 ? sub_1AE77CD58(v39, v38) : v38;
      sub_1AE6FA0D0(v41, a1 + 88, v40, 1);
      v42 = *(a1 + 48);
      v44 = *(v42 + 80);
      v43 = *(v42 + 88);
      while (v44 != v43)
      {
        v45 = *v44;
        if ((*(**v44 + 112))(*v44, v8) && ((*(*v45 + 88))(v45, v8) == 68 || (*(*v45 + 88))(v45, v8) == 69))
        {
          v46 = *(v42 + 104);
          v47 = (*(*v45 + 96))(v45, v8) + v46;
          goto LABEL_77;
        }

        ++v44;
      }

      if (*(v42 + 128) == 1)
      {
        v48 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v49)
        {
          v50 = *(v42 + 16);
          v51 = *(v42 + 24);
          do
          {
            v52 = v51 >> 1;
            v53 = &v50[2 * (v51 >> 1)];
            v55 = *v53;
            v54 = (v53 + 4);
            v51 += ~(v51 >> 1);
            if (v55 < v8)
            {
              v50 = v54;
            }

            else
            {
              v51 = v52;
            }
          }

          while (v51);
          v48 += 2 * v49;
        }

        else
        {
          v50 = *(v42 + 16);
        }
      }

      else
      {
        v57 = *(v42 + 112);
        v56 = *(v42 + 120);
        if (v57)
        {
          v58 = 4 * v57;
          v59 = *(v42 + 120);
          v60 = (v56 + 4 * v57);
          while (*v59 != v38)
          {
            ++v59;
            v58 -= 4;
            if (!v58)
            {
              v59 = v60;
              break;
            }
          }
        }

        else
        {
          v59 = *(v42 + 120);
        }

        v61 = v59 - v56;
        v62 = *(v42 + 16);
        v63 = (*(v42 + 56) + 2 * v61);
        v64 = *v63;
        v65 = v63[1];
        v66 = 16 * *v63;
        v50 = (v62 + v66);
        v67 = 16 * v65;
        if (v65 != v64)
        {
          v68 = (v67 - v66) >> 4;
          do
          {
            v69 = v68 >> 1;
            v70 = &v50[2 * (v68 >> 1)];
            v72 = *v70;
            v71 = (v70 + 4);
            v68 += ~(v68 >> 1);
            if (v72 < v8)
            {
              v50 = v71;
            }

            else
            {
              v68 = v69;
            }
          }

          while (v68);
        }

        v48 = (v62 + v67);
      }

      v47 = 0.0;
      if (v50 != v48 && *v50 == v8)
      {
        v47 = v50[1];
      }

LABEL_77:
      if (*(a1 + 88) == *(a1 + 96))
      {
        break;
      }

      v107 = 0.0;
      v106 = 0;
      if (((*(**(a1 + 16) + 24))(*(a1 + 16), a1 + 88, v10, &v107, &v106) & 1) == 0)
      {
        break;
      }

      v73 = v107;
      v74 = log10f(v107);
      if (v73 <= 0.0)
      {
        v75 = -10.0;
      }

      else
      {
        v75 = v74;
      }

      v77 = *(a1 + 88);
      for (i = *(a1 + 96); v77 != i; ++v77)
      {
        sub_1AE6369B4(v10, v77);
      }

      v36 = __exp10(v47 + v75) + v36;
      if (++v37 == v33)
      {
        LOBYTE(v5) = 1;
        goto LABEL_101;
      }
    }

    LOBYTE(v5) = 0;
  }

LABEL_101:
  v90 = log10(v36);
  v6 = v101;
  v32 = v102;
  *v101 = *v101 + v90;
  v78 = 1;
LABEL_102:
  if (v32)
  {
    v104 = v32;
    operator delete(v32);
  }

  if ((v78 & 1) == 0)
  {
    v21 = (a1 + 88);
    *(a1 + 96) = *(a1 + 88);
    v22 = (a1 + 96);
    v91 = *(a1 + 48);
    v23 = *(a1 + 32);
    if (v91)
    {
      v92 = *(a1 + 32);
      v93 = sub_1AE77CD58(v91, v8);
      v23 = v92;
      v8 = v93;
    }

LABEL_107:
    sub_1AE6FA0D0(v8, v21, v23, 1);
    v94 = *v21;
    if (*v21 != *v22)
    {
      while (*v94 != 3)
      {
        if (++v94 == *v22)
        {
          LODWORD(v106) = 0;
          v103 = 0;
          v95 = (*(**(a1 + 16) + 24))(*(a1 + 16), v21, v10, &v106, &v103);
          LOBYTE(v5) = v95;
          if (v95)
          {
            v96 = *&v106;
            v97 = log10f(*&v106);
            if (v96 <= 0.0)
            {
              v97 = -10.0;
            }

            *v6 = v97;
            v98 = *v21;
            for (j = *v22; v98 != j; ++v98)
            {
              sub_1AE6369B4(v10, v98);
            }
          }

          return v5 & 1;
        }
      }
    }

    goto LABEL_116;
  }

  return v5 & 1;
}

void sub_1AE6FAACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6FAB14(void *a1)
{
  sub_1AE6FAB4C(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6FAB4C(void *a1)
{
  *a1 = &unk_1F242E3E8;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[3];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

unint64_t sub_1AE6FAC88(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  (*(**(a1 + 32) + 48))(*(a1 + 32));
  MEMORY[0x1EEE9AC00]();
  v5 = (v9 - v4);
  result = (*(**(a1 + 32) + 32))(*(a1 + 32), a2, v9 - v4);
  if (result)
  {
    if (*v5 == 3)
    {
      return 1;
    }

    else
    {
      v7 = 0;
      while (result - 1 != v7)
      {
        v8 = v5[++v7];
        if (v8 == 3)
        {
          return v7 < result;
        }
      }

      v7 = result;
      return v7 < result;
    }
  }

  return result;
}

void sub_1AE6FADC0(void *a1)
{
  *a1 = &unk_1F242E458;
  v2 = a1[1];
  if (v2)
  {
    sub_1AE680828(a1[2], v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6FAE7C(void *a1)
{
  *a1 = &unk_1F242E458;
  v2 = a1[1];
  if (v2)
  {
    sub_1AE680828(a1[2], v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_1AE6FAF18(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1AE5CC314(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AE6F722C(a1, i[2]);
  }

  return a1;
}

void *sub_1AE6FB04C(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
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

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
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

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1AE6FB348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6F71B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6FB360(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
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

uint64_t sub_1AE6FB3E4(uint64_t a1)
{
  v2 = *(a1 + 24);
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

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1AE6FB430(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  __p = 0;
  p_p = &__p;
  v37 = 0x2000000000;
  v2 = qword_1EB5E0A80;
  v38 = qword_1EB5E0A80;
  if (!qword_1EB5E0A80)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v32 = sub_1AE6FBB68;
    v33 = &unk_1E7A2E5C0;
    v34 = &__p;
    sub_1AE6FBB68(&buf);
    v2 = p_p[3];
  }

  _Block_object_dispose(&__p, 8);
  if (!v2)
  {
    dlerror();
    abort_report_np();
LABEL_63:
    __break(1u);
LABEL_64:
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
LABEL_58:
    v26 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1AE5C8000, v26, OS_LOG_TYPE_ERROR, "Unable to load network model", &buf, 2u);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    sub_1AE5CC990(&buf, "MRLEmbeddingMemoryModelCreate returned nullptr");
    sub_1AE64FB94(exception, &buf);
    __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
  }

  sub_1AE66A174(&v29, *v2);
  sub_1AE6FBCB0(&p_buf, v29, a1);
  __p = 0;
  p_p = &__p;
  v37 = 0x2000000000;
  v3 = qword_1EB5E0A90;
  v38 = qword_1EB5E0A90;
  if (!qword_1EB5E0A90)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v32 = sub_1AE6FBD94;
    v33 = &unk_1E7A2E620;
    v34 = &__p;
    sub_1AE6FBD94(&buf);
    v3 = p_p[3];
  }

  _Block_object_dispose(&__p, 8);
  if (!v3)
  {
    dlerror();
    abort_report_np();
    goto LABEL_63;
  }

  sub_1AE66A174(&v28, *v3);
  sub_1AE6FBCB0(&v41, v28, (a1 + 8));
  v30[0] = &p_buf;
  v30[1] = 2;
  v4 = sub_1AE66A370(v30);
  v30[2] = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (p_buf)
  {
    CFRelease(p_buf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  __p = 0;
  p_p = &__p;
  v37 = 0x2000000000;
  v5 = off_1EB5E0A98;
  v38 = off_1EB5E0A98;
  if (!off_1EB5E0A98)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v32 = sub_1AE6FBEDC;
    v33 = &unk_1E7A2E648;
    v34 = &__p;
    sub_1AE6FBEDC(&buf);
    v5 = p_p[3];
  }

  _Block_object_dispose(&__p, 8);
  if (!v5)
  {
    dlerror();
    abort_report_np();
    goto LABEL_63;
  }

  v6 = v5(v4, 0);
  if (!v6)
  {
    if (qword_1ED9ACA10 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_64;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 96) = v6;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  p_p = 0;
  v37 = 0;
  __p = 0;
  p_buf = &__p;
  LOBYTE(v40) = 0;
  if (v8)
  {
    if (v8 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v32 = 0;
  buf = 0uLL;
  p_buf = &buf;
  LOBYTE(v40) = 0;
  if (v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v10 = 0;
  v11 = (a1 + 64);
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 64);
    if (v13 != v12)
    {
      v15 = *(a1 + 72);
      do
      {
        v18 = *(v15 - 3);
        v15 -= 3;
        v17 = v18;
        if (v18)
        {
          v19 = *(v13 - 2);
          v16 = v17;
          if (v19 != v17)
          {
            do
            {
              v20 = *(v19 - 1);
              v19 -= 3;
              if (v20 < 0)
              {
                operator delete(*v19);
              }
            }

            while (v19 != v17);
            v16 = *v15;
          }

          *(v13 - 2) = v17;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = *v11;
    }

    *(a1 + 72) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v10 = *(&buf + 1);
  }

  v21 = v32;
  *(a1 + 64) = buf;
  *(a1 + 72) = v10;
  *(a1 + 80) = v21;
  v32 = 0;
  buf = 0uLL;
  v22 = __p;
  if (__p)
  {
    v23 = p_p;
    v24 = __p;
    if (p_p != __p)
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = __p;
    }

    p_p = v22;
    operator delete(v24);
  }

  *(a1 + 88) = 1;
  CFRelease(v4);
}

void sub_1AE6FBA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  sub_1AE62A408(&a17);
  _Unwind_Resume(a1);
}

void *sub_1AE6FBB68(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6FC0F0;
    v6[4] = &unk_1E7A2E5F8;
    v6[5] = v6;
    v7 = xmmword_1E7A2E5E0;
    v8 = 0;
    qword_1EB5E0AC0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AC0;
    if (qword_1EB5E0AC0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AC0;
LABEL_5:
  result = dlsym(v2, "kMRLEmbeddingMemoryModelEmbeddingDimensionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB5E0A80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6FBCB0(void *a1, CFTypeRef cf, uint64_t *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1AE6FBD5C(_Unwind_Exception *a1)
{
  sub_1AE620B3C(v2);
  sub_1AE620B70(v1);
  _Unwind_Resume(a1);
}

void *sub_1AE6FBD94(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6FC0F0;
    v6[4] = &unk_1E7A2E5F8;
    v6[5] = v6;
    v7 = xmmword_1E7A2E5E0;
    v8 = 0;
    qword_1EB5E0AC0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AC0;
    if (qword_1EB5E0AC0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AC0;
LABEL_5:
  result = dlsym(v2, "kMRLEmbeddingMemoryModelSizeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EB5E0A90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6FBEDC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6FC0F0;
    v6[4] = &unk_1E7A2E5F8;
    v6[5] = v6;
    v7 = xmmword_1E7A2E5E0;
    v8 = 0;
    qword_1EB5E0AC0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AC0;
    if (qword_1EB5E0AC0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AC0;
LABEL_5:
  result = dlsym(v2, "MRLEmbeddingMemoryModelCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0A98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ****sub_1AE6FC024(void ****a1)
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
        v6 = v2[1];
        do
        {
          v9 = *(v6 - 3);
          v6 -= 3;
          v8 = v9;
          if (v9)
          {
            v10 = *(v4 - 2);
            v7 = v8;
            if (v10 != v8)
            {
              do
              {
                v11 = *(v10 - 1);
                v10 -= 3;
                if (v11 < 0)
                {
                  operator delete(*v10);
                }
              }

              while (v10 != v8);
              v7 = *v6;
            }

            *(v4 - 2) = v8;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1AE6FC0F0()
{
  result = _sl_dlopen();
  qword_1EB5E0AC0 = result;
  return result;
}

void *sub_1AE6FC164(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6FC0F0;
    v6[4] = &unk_1E7A2E5F8;
    v6[5] = v6;
    v7 = xmmword_1E7A2E5E0;
    v8 = 0;
    qword_1EB5E0AC0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AC0;
    if (qword_1EB5E0AC0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AC0;
LABEL_5:
  result = dlsym(v2, "MRLEmbeddingMemoryModelAddEmbedding");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE6FC2AC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AC0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE6FC0F0;
    v6[4] = &unk_1E7A2E5F8;
    v6[5] = v6;
    v7 = xmmword_1E7A2E5E0;
    v8 = 0;
    qword_1EB5E0AC0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AC0;
    if (qword_1EB5E0AC0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AC0;
LABEL_5:
  result = dlsym(v2, "MRLEmbeddingMemoryModelGetOutputDistances");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0A88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

unint64_t sub_1AE6FC3F4(CFDictionaryRef *a1, CFStringRef *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(*a2, @"com.apple.LanguageModeling");
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AE6FCC4C(v4);
    v8 = v7;
    CFRelease(v5);
    if (v8)
    {
      sub_1AE5F2968(v31);
      v9 = *a2;
      if (!v9 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v9)))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not convert");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      sub_1AE5CAD24(__p, v9);
      v11 = sub_1AE5DB608(&v32, "Overriding configuration key='", 30);
      if ((v30 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v30 & 0x80u) == 0)
      {
        v13 = v30;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = sub_1AE5DB608(v11, v12, v13);
      v15 = sub_1AE5DB608(v14, "' with user preferences value='", 31);
      v16 = MEMORY[0x1B2706120](v15, v6);
      sub_1AE5DB608(v16, "'", 1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v17 = qword_1ED9AC9E0;
      if (!os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      if ((v41 & 0x10) != 0)
      {
        v20 = v40;
        if (v40 < v37)
        {
          v40 = v37;
          v20 = v37;
        }

        v21 = &v36;
      }

      else
      {
        if ((v41 & 8) == 0)
        {
          v18 = 0;
          v28 = 0;
LABEL_33:
          *(&__dst + v18) = 0;
          p_dst = &__dst;
          if (v28 < 0)
          {
            p_dst = __dst;
          }

          *buf = 136315138;
          v44 = p_dst;
          _os_log_impl(&dword_1AE5C8000, v17, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
          if (v28 < 0)
          {
            operator delete(__dst);
          }

LABEL_37:
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }

          v31[0] = *MEMORY[0x1E69E54D8];
          v24 = *(MEMORY[0x1E69E54D8] + 72);
          *(v31 + *(v31[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
          v32 = v24;
          v33 = MEMORY[0x1E69E5548] + 16;
          if (v39 < 0)
          {
            operator delete(v38);
          }

          v33 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v34);
          std::iostream::~basic_iostream();
          MEMORY[0x1B2706340](&v42);
          return v6;
        }

        v21 = v35;
        v20 = v35[2];
      }

      v22 = *v21;
      v18 = v20 - *v21;
      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      if (v18 >= 0x17)
      {
        operator new();
      }

      v28 = v20 - *v21;
      if (v18)
      {
        memmove(&__dst, v22, v18);
      }

      goto LABEL_33;
    }
  }

  if (!*a1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE6FCCD0();
  }

  if (!*a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*a1, *a2);
  if (Value)
  {
    return sub_1AE6FCC4C(Value);
  }

  else
  {
    return 0;
  }
}

void sub_1AE6FC880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1AE644C5C(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6FC8FC(void *a1, uint64_t a2)
{
  if ((a2 + 4) > a1[1])
  {
    sub_1AE5F2968(v15);
    v5 = sub_1AE5DB608(v16, "(file_size=", 11);
    v6 = MEMORY[0x1B2706120](v5, a1[1]);
    v7 = sub_1AE5DB608(v6, ", offset=", 9);
    v8 = MEMORY[0x1B2706120](v7, a2);
    v9 = sub_1AE5DB608(v8, ", object_size=", 14);
    v10 = MEMORY[0x1B2706120](v9, 4);
    sub_1AE5DB608(v10, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, v15);
    v12 = sub_1AE67B590(&v14, "attempted to read beyond the end of the mapped file ", &__dst);
    MEMORY[0x1B2705EC0](exception, &v14, v12);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *a1 + a2;
}

void sub_1AE6FCA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

unint64_t sub_1AE6FCA84(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 - a2;
  if (v3 <= a2)
  {
    sub_1AE5F2968(v19);
    v11 = sub_1AE5DB608(v20, "(file_size=", 11);
    v12 = MEMORY[0x1B2706120](v11, a1[1]);
    v13 = sub_1AE5DB608(v12, ", offset=", 9);
    v14 = MEMORY[0x1B2706120](v13, a2);
    sub_1AE5DB608(v14, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, v19);
    v16 = sub_1AE67B590(&v18, "attempted to read beyond the end of the mapped file ", &__dst);
    MEMORY[0x1B2705EC0](exception, &v18, v16);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = *a1;
  v6 = v4 >> 2;
  if (v6 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v6;
  }

  if (result)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    sub_1AE6ADB38();
  }

  return result;
}

void sub_1AE6FCB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t sub_1AE6FCC0C(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    munmap(*result, *(result + 8));
    result = v1;
  }

  *(result + 8) = 0;
  return result;
}

unint64_t sub_1AE6FCC4C(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return sub_1AE6662EC(a1);
  }

  v4 = CFBooleanGetTypeID();
  if (v4 == CFGetTypeID(a1))
  {
    return CFBooleanGetValue(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE6FCCDC(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v3 = *(a1 + 44);
  v4 = 0;
  if (a3)
  {
    v5 = &a2[a3];
    v6 = *(a1 + 96);
    while (v3 > v4)
    {
      v7 = (*(a1 + 80) + 12 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v9 + v8 - 1;
      if (v8 > v10)
      {
        goto LABEL_19;
      }

      v11 = *a2;
      while (1)
      {
        v12 = ((v10 + v8) / 2);
        if (*(a1 + 48) <= v12)
        {
          __assert_rtn("getEdge", "Network.h", 203, "edgeIdx < getNrOfEdges()");
        }

        v13 = *(v6 + 16 * v12 + 8);
        if (v13 == v11)
        {
          break;
        }

        if (v13 <= v11)
        {
          v8 = v12 + 1;
          if (v12 >= v10)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v10 = v12 - 1;
          if (v8 >= v12)
          {
            goto LABEL_19;
          }
        }
      }

      if (v10 + v8 <= -2)
      {
LABEL_19:
        if (qword_1EB5E0E78 != -1)
        {
          dispatch_once(&qword_1EB5E0E78, &unk_1F242E488);
        }

        v15 = qword_1EB5E0E70;
        if (os_log_type_enabled(qword_1EB5E0E70, OS_LOG_TYPE_ERROR))
        {
          sub_1AE6F4D20(__p, v19);
          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315138;
          v21 = v16;
          _os_log_error_impl(&dword_1AE5C8000, v15, OS_LOG_TYPE_ERROR, "Failed to find node for prefix: [%s]", buf, 0xCu);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        __assert_rtn("nodeForPrefix", "Network.cpp", 235, "false && Failed to find node for prefix");
      }

      v4 = *(v6 + 16 * v12 + 4);
      if (++a2 == v5)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    __assert_rtn("getNode", "Network.h", 215, "n < getNrOfNodes()");
  }

LABEL_15:
  if (v3 <= v4)
  {
    goto LABEL_18;
  }

  return *(a1 + 80) + 12 * v4;
}

os_log_t sub_1AE6FCEF0()
{
  result = os_log_create("com.apple.LanguageModeling", "FragmentModelFST");
  qword_1EB5E0E70 = result;
  return result;
}

uint64_t sub_1AE6FCF20(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) | 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *(a2 + 96);
        v11 = *(a2 + 176);
      }

      else
      {
        v10 = *(a2 + 96);
        v11 = *(a2 + 176);
        if (*(v11 + 4 * *(v10 + 16 * *v8 + 8)) > *(v11 + 4 * *(v10 + 16 * v8[1] + 8)))
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      v14 = v10 + 16 * v13;
      v16 = *(v14 + 8);
      v15 = (v14 + 8);
      if (*(v11 + 4 * *(v10 + 16 * v12 + 8)) <= *(v11 + 4 * v16))
      {
        do
        {
          *a4 = v12;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v17 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v18 = v17 + 2;
          if (v18 < a3 && *(v11 + 4 * *(v10 + 16 * *v8 + 8)) > *(v11 + 4 * *(v10 + 16 * v8[1] + 8)))
          {
            ++v8;
            v7 = v18;
          }

          v12 = *v8;
        }

        while (*(v11 + 4 * *(v10 + 16 * v12 + 8)) <= *(v11 + 4 * *v15));
        *a4 = v13;
      }
    }
  }

  return result;
}

void sub_1AE6FD044(void *a1, unint64_t a2)
{
  v3 = a1[2];
  v5 = a1[3];
  v4 = (a1 + 2);
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v3) >> 3);
  if (v6 >= a1[1])
  {
    if (v3 == v5)
    {
      __assert_rtn("worst", "PriorityQueue.h", 55, "!m_predictions.empty()");
    }

    v15 = *(a2 + 8);
    if (v15 >= *(v3 + 8))
    {
      v16 = a1[2];
      do
      {
        v17 = v6 >> 1;
        v18 = v16 + 40 * (v6 >> 1);
        v19 = *(v18 + 8);
        v20 = (v18 + 40);
        v6 += ~(v6 >> 1);
        if (v15 < v19)
        {
          v6 = v17;
        }

        else
        {
          v16 = v20;
        }
      }

      while (v6);
      v21 = (v3 + 40);
      if (v21 != v16)
      {
        v22 = v21;
        v23 = v21;
        while (1)
        {
          v24 = *(v21 - 40);
          v25 = *(v21 - 1);
          v26 = *(v21 - 24);
          *(v21 - 2) = 0;
          *(v21 - 1) = 0;
          *(v21 - 3) = 0;
          *(v21 - 40) = *v23;
          *(v21 - 24) = v23[1];
          *(v21 - 1) = *(v23 + 4);
          *v23 = v24;
          v23[1] = v26;
          *(v23 + 4) = v25;
          v23 = (v23 + 40);
          if (v23 == v16)
          {
            break;
          }

          if (v21 == v22)
          {
            v22 = v23;
          }

          v21 = (v21 + 40);
        }

        if (v21 != v22)
        {
          v33 = v22;
          while (1)
          {
            v34 = v21[1];
            v72 = *v21;
            v35 = *(v21 + 4);
            *(v21 + 3) = 0;
            *(v21 + 4) = 0;
            *(v21 + 2) = 0;
            *v21 = *v33;
            v21[1] = v33[1];
            *(v21 + 4) = *(v33 + 4);
            *v33 = v72;
            v33[1] = v34;
            *(v33 + 4) = v35;
            v21 = (v21 + 40);
            v33 = (v33 + 40);
            v36 = v21 == v22;
            if (v33 == v16)
            {
              if (v21 == v22)
              {
                break;
              }

              v33 = (v22 + 40);
              while (1)
              {
                v37 = v21[1];
                v73 = *v21;
                v38 = *(v21 + 4);
                *(v21 + 3) = 0;
                *(v21 + 4) = 0;
                *(v21 + 2) = 0;
                *v21 = *v22;
                v21[1] = v22[1];
                *(v21 + 4) = *(v22 + 4);
                *v22 = v73;
                v22[1] = v37;
                *(v22 + 4) = v38;
                v21 = (v21 + 40);
                v36 = v21 == v22;
                if (v33 != v16)
                {
                  break;
                }

                if (v21 == v22)
                {
                  goto LABEL_45;
                }
              }
            }

            if (v36)
            {
              v22 = v33;
            }
          }
        }
      }

LABEL_45:
      *(v16 - 40) = *a2;
      if ((v16 - 40) != a2)
      {
        v39 = *(a2 + 16);
        v40 = *(a2 + 24);
        v41 = (v40 - v39) >> 2;
        v42 = v16 - 3;
LABEL_69:

        sub_1AE6A4FB0(v42, v39, v40, v41);
      }
    }
  }

  else
  {
    if (v5 == v3)
    {
      v14 = v5 - v3;
      v9 = a1[3];
    }

    else
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v3) >> 3);
      v9 = a1[2];
      do
      {
        v10 = v8 >> 1;
        v11 = v9 + 40 * (v8 >> 1);
        v12 = *(v11 + 8);
        v13 = v11 + 40;
        v8 += ~(v8 >> 1);
        if (*(a2 + 8) < v12)
        {
          v8 = v10;
        }

        else
        {
          v9 = v13;
        }
      }

      while (v8);
      v14 = v9 - v3;
    }

    v27 = (v3 + v14);
    v28 = a1[4];
    if (v5 >= v28)
    {
      v30 = v6 + 1;
      if (v6 + 1 > 0x666666666666666)
      {
        sub_1AE5CBB70();
      }

      v31 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v3) >> 3);
      if (2 * v31 > v30)
      {
        v30 = 2 * v31;
      }

      if (v31 >= 0x333333333333333)
      {
        v32 = 0x666666666666666;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        if (v32 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v46 = 8 * (v14 >> 3);
      if (!(0xCCCCCCCCCCCCCCCDLL * (v14 >> 3)))
      {
        if (v14 < 1)
        {
          if (v14)
          {
            v56 = 0x999999999999999ALL * (v14 >> 3);
          }

          else
          {
            v56 = 1;
          }

          if (v56 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v46 -= 40 * ((0xCCCCCCCCCCCCCCCDLL * (v14 >> 3) + 1) >> 1);
      }

      v57 = *a2;
      *(v46 + 16) = 0;
      *v46 = v57;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0;
      v59 = *(a2 + 16);
      v58 = *(a2 + 24);
      if (v58 != v59)
      {
        if (((v58 - v59) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v60 = a1[3];
      v61 = v27;
      if (v60 != v27)
      {
        v62 = v27;
        v63 = v46 + 40;
        do
        {
          *v63 = *v62;
          *(v63 + 24) = 0;
          *(v63 + 32) = 0;
          *(v63 + 16) = 0;
          *(v63 + 16) = v62[1];
          *(v63 + 32) = *(v62 + 4);
          *(v62 + 2) = 0;
          *(v62 + 3) = 0;
          *(v62 + 4) = 0;
          v62 = (v62 + 40);
          v63 += 40;
        }

        while (v62 != v60);
        v64 = v27;
        do
        {
          v65 = *(v64 + 2);
          if (v65)
          {
            *(v64 + 3) = v65;
            operator delete(v65);
          }

          v64 = (v64 + 40);
        }

        while (v64 != v60);
        v61 = a1[3];
      }

      v66 = v61 + v46 - v9 + 40;
      a1[3] = v27;
      v67 = a1[2];
      v68 = &v67[v46 / 8] - v9;
      if (v67 != v27)
      {
        v69 = a1[2];
        v70 = v68;
        do
        {
          *v70 = *v69;
          *(v70 + 3) = 0;
          *(v70 + 4) = 0;
          *(v70 + 2) = 0;
          *(v70 + 1) = *(v69 + 16);
          *(v70 + 4) = *(v69 + 32);
          *(v69 + 16) = 0;
          *(v69 + 24) = 0;
          *(v69 + 32) = 0;
          v69 += 40;
          v70 += 40;
        }

        while (v69 != v27);
        do
        {
          v71 = v67[2];
          if (v71)
          {
            v67[3] = v71;
            operator delete(v71);
          }

          v67 += 5;
        }

        while (v67 != v27);
        v67 = *v4;
      }

      a1[2] = v68;
      a1[3] = v66;
      a1[4] = 0;
      if (v67)
      {
        operator delete(v67);
      }
    }

    else if (v27 == v5)
    {
      v43 = *a2;
      *(v5 + 16) = 0;
      *v5 = v43;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      v45 = *(a2 + 16);
      v44 = *(a2 + 24);
      if (v44 != v45)
      {
        if (((v44 - v45) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      a1[3] = v5 + 40;
    }

    else
    {
      if (v5 < 0x28)
      {
        v29 = a1[3];
      }

      else
      {
        v29 = v5 + 40;
        *v5 = *(v5 - 40);
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
        *(v5 + 16) = 0;
        *(v5 + 16) = *(v5 - 24);
        *(v5 + 32) = *(v5 - 8);
        *(v5 - 24) = 0;
        *(v5 - 16) = 0;
        *(v5 - 8) = 0;
      }

      a1[3] = v29;
      if (v5 != (v27 + 40))
      {
        v47 = 0;
        v48 = v14 + v3 - v5 + 40;
        do
        {
          v49 = v5 + v47;
          v50 = v5 + v47;
          v52 = (v5 + v47 - 24);
          v51 = *v52;
          *(v5 + v47 - 40) = *(v5 + v47 - 80);
          if (v51)
          {
            *(v50 - 16) = v51;
            operator delete(v51);
            *v52 = 0;
            *(v5 + v47 - 16) = 0;
            *(v5 + v47 - 8) = 0;
          }

          *v52 = *(v49 - 64);
          *(v50 - 8) = *(v49 - 48);
          *(v49 - 64) = 0;
          *(v49 - 56) = 0;
          *(v49 - 48) = 0;
          v47 -= 40;
        }

        while (v48 != v47);
        v29 = a1[3];
      }

      v53 = v29 <= a2 || v27 > a2;
      v54 = 40;
      if (v53)
      {
        v54 = 0;
      }

      v55 = a2 + v54;
      *v27 = *v55;
      if (v27 != v55)
      {
        v39 = *(v55 + 16);
        v40 = *(v55 + 24);
        v41 = (v40 - v39) >> 2;
        v42 = (v27 + 1);
        goto LABEL_69;
      }
    }
  }
}

void sub_1AE6FD724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE6B1D90(va);
  _Unwind_Resume(a1);
}

void **sub_1AE6FD770(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AE6FD7E4(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      sub_1AE5CBB70();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void sub_1AE6FD8F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 224);
  v144 = a1 + 224;
  v5 = *(a1 + 232);
  if (v4 != v5)
  {
    v7 = (a1 + 200);
    v6 = *(a1 + 200);
    v8 = *(a1 + 248);
    v9 = *(a1 + 208);
    v145 = (a1 + 208);
    if ((v8 & 0x8000000000000000) != 0)
    {
      if (v6 != v9)
      {
        goto LABEL_274;
      }
    }

    else if (v6 != v9)
    {
      if (v8 < (v5 - v4) >> 5)
      {
        v10 = 0;
        v11 = (v9 - v6) >> 5;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = (v9 - v6) >> 5;
        }

        v13 = v4 + 32 * v8;
        v14 = (v6 + 16);
        while (v11 != v10)
        {
          v16 = *(v13 + 8);
          v15 = *(v13 + 16);
          v17 = *(v14 - 1);
          if ((v17 >= v15 + v16 || *v14 + v17 > v15 + v16) && (v17 != v16 || *v14 != v15))
          {
            v11 = v10;
            goto LABEL_18;
          }

          ++v10;
          v14 += 4;
          if (v12 == v10)
          {
            __assert_rtn("flushAccumulatedTokens", "LMStreamTokenizer.cpp", 290, "internalTokenIndex < m_internalTokens.size()");
          }
        }

        goto LABEL_18;
      }

LABEL_274:
      __assert_rtn("flushAccumulatedTokens", "LMStreamTokenizer.cpp", 274, "externalTokenIndexInBounds");
    }

LABEL_275:
    __assert_rtn("flushAccumulatedTokens", "LMStreamTokenizer.cpp", 273, "!m_internalTokens.empty()");
  }

  v7 = (a1 + 200);
  v6 = *(a1 + 200);
  v9 = *(a1 + 208);
  v145 = (a1 + 208);
  if (v6 == v9)
  {
    goto LABEL_275;
  }

  v11 = 0;
LABEL_18:
  v18 = *(v6 + 32 * v11 + 8);
  v19 = *(v9 - 24);
  v20 = *(v9 - 16);
  v21 = v20 + v19;
  if (v18 >= v20 + v19)
  {
    v37 = 0;
    v38 = 0;
    v40 = 0;
    v22 = 0;
    v39 = 1;
    goto LABEL_62;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = (*(a1 + 256) + 4 * v18);
  v30 = v19 + v20 - v18;
  do
  {
    v32 = *v29++;
    v31 = v32;
    if (v32 > 5)
    {
      if ((v31 - 11) < 2)
      {
        v27 = 0;
        v25 = 1;
      }

      else
      {
        if (v31 == 7)
        {
          goto LABEL_47;
        }

        if (v26 == 1)
        {
          v36 = 2;
        }

        else
        {
          v36 = v26;
        }

        v27 = 0;
        if (v31 == 6)
        {
          ++v28;
          v22 = 1;
          v26 = v36;
        }
      }
    }

    else
    {
      if (v31 > 3)
      {
        if (v31 == 4)
        {
          if (++v27 >= 3)
          {
            v26 = 3;
          }
        }

        else
        {
          if (v31 != 5)
          {
            v27 = 0;
            goto LABEL_52;
          }

LABEL_47:
          v27 = 0;
        }

        v22 = 1;
        goto LABEL_52;
      }

      if (v26 == 2)
      {
        v33 = 3;
      }

      else
      {
        v33 = v26;
      }

      if (v26)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1;
      }

      if (v31 == 2)
      {
        v35 = 1;
      }

      else
      {
        v35 = v24;
      }

      v27 = 0;
      if (v31 == 1)
      {
        v23 = 1;
      }

      else
      {
        v24 = v35;
      }

      if (v31 == 1)
      {
        v26 = v34;
      }
    }

LABEL_52:
    v37 = v28 > 1;
    if ((v23 & 1) != 0 && (v22 & 1) != 0 && (v24 & 1) != 0 && (v25 & 1) != 0 && v28 >= 2)
    {
      v37 = 1;
      v24 = 1;
      v40 = 1;
      v22 = 1;
      goto LABEL_61;
    }

    --v30;
  }

  while (v30);
  v40 = v23;
LABEL_61:
  v38 = v26 == 3;
  v39 = v24 ^ 1;
LABEL_62:
  v141 = v39;
  LOBYTE(v41) = 0;
  v160 = 0;
  v161 = &v160;
  v162 = 0x3802000000;
  v163 = sub_1AE6FEAB8;
  v164 = nullsub_85;
  v165 = xmmword_1AE79A570;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2000000000;
  v159 = 0;
  v142 = v40;
  v143 = 0;
  if ((v40 & 1) == 0 || (v22 & 1) == 0)
  {
    goto LABEL_143;
  }

  if (v18 >= v21)
  {
    v42 = 0;
    v41 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    while (1)
    {
      v43 = *(*(a1 + 176) + v18);
      if (v43 != 64 && v43 != 35)
      {
        break;
      }

      v41 = v43 == 64;
      v42 = v43 == 35;
      if (v21 == ++v18)
      {
        v18 = v21;
        break;
      }
    }
  }

  v143 = v42;
  v44 = -1;
  if (!v42 && !v41 || *(a1 + 8))
  {
    v47 = v21;
    if (v37)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (v18 < v21)
    {
      v45 = v18;
      v46 = v18;
      while (1)
      {
        v48 = *(*(a1 + 256) + 4 * v46);
        if ((v48 - 1) >= 3)
        {
          if (v48 == 15)
          {
            goto LABEL_77;
          }

          v49 = *(*(a1 + 176) + v46);
          if (v49 == 95)
          {
            v47 = v21;
          }

          else
          {
            v47 = v45;
          }

          if (v49 != 95)
          {
            goto LABEL_78;
          }
        }

        v45 = v46 + 1;
LABEL_77:
        v47 = v21;
LABEL_78:
        ++v46;
        v21 = v47;
        if (v46 >= v47)
        {
          goto LABEL_89;
        }
      }
    }

    v47 = v21;
LABEL_89:
    if (v47 <= v18)
    {
      v44 = -1;
      if (v37)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v44 = v18 - 1;
      *&v165 = v18 - 1;
      *(&v165 + 1) = v47 - v18 + 1;
      if (!v37)
      {
        goto LABEL_115;
      }

LABEL_93:
      v50 = v18;
      if (v47 > v18)
      {
        v50 = v18;
        while (*(*(a1 + 256) + 4 * v50) != 1)
        {
          if (v47 == ++v50)
          {
            goto LABEL_115;
          }
        }
      }

      v51 = v50;
      if (v50 < v47)
      {
        v51 = v50;
        while (*(*(a1 + 256) + 4 * v51) == 1)
        {
          if (v47 == ++v51)
          {
            goto LABEL_115;
          }
        }
      }

      v52 = v47 - 2;
      if (v51 < v47 - 2)
      {
        v53 = *(a1 + 256);
        if (*(v53 + 4 * v51) == 6 && *(v53 + 4 + 4 * v51) == 1)
        {
          v54 = v51 + 2;
          if (*(v53 + 4 * (v51 + 2)) == 6)
          {
            if (v54 < v52)
            {
              v55 = (v53 + 4 * v51 + 16);
              do
              {
                if (*(v55 - 1) != 1)
                {
                  break;
                }

                if (*v55 != 6)
                {
                  break;
                }

                v54 += 2;
                v55 += 2;
              }

              while (v54 < v52);
            }

            if (v54 >= v47 - 1 || *(v53 + 4 * v54 + 4) != 1)
            {
              *&v165 = v50;
              *(&v165 + 1) = v54 - v50 + 1;
              v44 = v50;
            }
          }
        }
      }
    }
  }

LABEL_115:
  if (v44 != -1 || !v38)
  {
    goto LABEL_143;
  }

  theString = CFStringCreateWithBytesNoCopy(0, (*(a1 + 176) + v18), v47 - v18, *(a1 + 16), 0, *MEMORY[0x1E695E498]);
  if (!theString)
  {
    goto LABEL_143;
  }

  if ((atomic_load_explicit(&qword_1ED9AC718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC718))
  {
    sub_1AE6E367C();
    __cxa_guard_release(&qword_1ED9AC718);
  }

  v147[0] = MEMORY[0x1E69E9820];
  v147[1] = 0x40000000;
  v148 = sub_1AE6FEAC8;
  v149 = &unk_1E7A2E6E0;
  v152 = a1;
  v153 = theString;
  v154 = v18;
  v155 = v47;
  v150 = &v160;
  v151 = &v156;
  Length = CFStringGetLength(theString);
  std::mutex::lock(&qword_1ED9AC6D0);
  v57 = qword_1ED9AC710;
  if (!qword_1ED9AC710)
  {
LABEL_142:
    std::mutex::unlock(&qword_1ED9AC6D0);
    CFRelease(theString);
LABEL_143:
    v74 = *v7;
    if (v11 < (*v145 - *v7) >> 5)
    {
      v75 = 0;
      v76 = v161[5];
      v77 = v161[6] + v76;
      v78 = 32 * v11;
      do
      {
        v83 = v161[5];
        if (v83 != -1)
        {
          v84 = v74 + v78;
          v85 = *(v84 + 8);
          v86 = *(v84 + 16);
          v87 = v161[6];
          v88 = v86 + v85;
          v89 = v87 + v83 <= v85 || v88 <= v83;
          v92 = v89 || v85 < v83 || v88 > v87 + v83;
          if (((v92 | v75) & 1) == 0)
          {
            v93 = *(a1 + 232);
            if (v93 == *(a1 + 224) || ((v94 = *(v93 - 24), v95 = *(v93 - 16) + v94, v76 < v95) ? (v96 = v94 < v77) : (v96 = 0), !v96))
            {
              LODWORD(v167) = 0;
              *(&v167 + 1) = v83;
              v168 = v87;
              v169 = -1;
              sub_1AE6FD7E4(v144, &v167);
              v75 = 1;
              goto LABEL_148;
            }

            sub_1AE6FEB50(a1, v95, v77 - v95, 0);
            v75 = 1;
          }

          if (!v92)
          {
            goto LABEL_148;
          }

          v74 = *v7;
        }

        v97 = *(a1 + 232);
        if (*(a1 + 224) == v97)
        {
          v79 = *(v74 + v78 + 8);
        }

        else
        {
          v98 = *(v97 - 24);
          v99 = *(v97 - 16) + v98;
          v79 = *(v74 + v78 + 8);
          if (v79 < v99)
          {
            v100 = *(v74 + v78 + 16);
            if (v100 + v79 <= v99)
            {
              goto LABEL_148;
            }

            if (v98 < v100 + v79)
            {
              v82 = 0;
              v81 = v79 - v99 + v100;
              v79 = v99;
              goto LABEL_147;
            }
          }
        }

        v80 = v74 + v78;
        v81 = *(v80 + 16);
        v82 = *v80;
LABEL_147:
        sub_1AE6FEB50(a1, v79, v81, v82);
LABEL_148:
        ++v11;
        v74 = *v7;
        v78 += 32;
      }

      while (v11 < (*v145 - *v7) >> 5);
    }

    v101 = v142 | v141;
    v102 = *MEMORY[0x1E695E6F0];
    v146 = v41;
    while (1)
    {
      v104 = *(a1 + 248);
      v105 = *(a1 + 224);
      if (v104 >= ((*(a1 + 232) - v105) >> 5) - 1)
      {
        _Block_object_dispose(&v156, 8);
        _Block_object_dispose(&v160, 8);
        return;
      }

      v106 = v104 + 1;
      *(a1 + 248) = v106;
      v107 = (v105 + 32 * v106);
      v109 = *(v107 + 1);
      v108 = *(v107 + 2);
      v110 = *(a1 + 256);
      v111 = *(a1 + 264);
      v112 = v108 + v109 - 1;
      v113 = v108 + v109 < 1 || v111 == v110;
      if (!v113 && (v111 - v110) >> 2 > v112)
      {
        if (v108 + v109 != 1)
        {
          while (*(v110 + 4 * v112) == 15)
          {
            v89 = v112-- <= 1;
            if (v89)
            {
              v112 = 0;
              break;
            }
          }
        }

        v115 = *(v110 + 4 * v112);
        if (v115 == 15)
        {
          v115 = 0;
        }
      }

      else
      {
        v115 = 0;
      }

      *(v107 + 3) = *(a1 + 184) - *(a1 + 176);
      if (*v107)
      {
        v116 = 0;
      }

      else
      {
        v116 = (v115 - 11) >= 3;
      }

      if (v116)
      {
        if (v108 == v161[6] && v109 == v161[5])
        {
          if (v41)
          {
            v103 = 64;
LABEL_179:
            *v107 = v103;
            goto LABEL_180;
          }

          if (*(v157 + 24) == 1)
          {
            v103 = 5;
            goto LABEL_179;
          }

          if (v143)
          {
            v103 = 63;
            goto LABEL_179;
          }
        }

        else
        {
          if (v115 == 8 || v115 == 5)
          {
            goto LABEL_211;
          }

          if ((v101 & 1) == 0)
          {
            Value = CFLocaleGetValue(*a1, v102);
            if (CFStringCompare(Value, @"en", 0) && CFStringCompare(Value, @"es", 0) && CFStringCompare(Value, @"fr", 0))
            {
              *v107 = 3;
LABEL_258:
              LOBYTE(v41) = v146;
              goto LABEL_180;
            }

            v120 = v101;
            v121 = *(v107 + 2);
            if (v121 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1AE5DB4F0();
            }

            v122 = v102;
            v123 = (*(v107 + 1) + *(a1 + 176));
            if (v121 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v168) = *(v107 + 2);
            if (v121)
            {
              v124 = v123;
              v131 = &v167;
              do
              {
                v132 = *v124++;
                *v131 = v132;
                v131 = (v131 + 1);
              }

              while (v124 != &v123[v121]);
            }

            else
            {
              v131 = &v167;
            }

            *v131 = 0;
            v133 = SHIBYTE(v168);
            if (SHIBYTE(v168) < 0)
            {
              if (*(&v167 + 1) == 1)
              {
                v134 = *v167;
                if (v134 == 48)
                {
                  goto LABEL_247;
                }

                goto LABEL_252;
              }
            }

            else if (SHIBYTE(v168) == 1)
            {
              v134 = v167;
              if (v167 == 48)
              {
LABEL_247:
                if (CFStringCompare(Value, @"fr", 0))
                {
                  v135 = 131;
                }

                else
                {
                  v135 = 130;
                }

                goto LABEL_255;
              }

LABEL_252:
              if (v134 == 49)
              {
                v135 = 130;
LABEL_255:
                *v107 = v135;
                if (v133 < 0)
                {
                  operator delete(v167);
                }

                v102 = v122;
                v101 = v120;
                goto LABEL_258;
              }
            }

            v135 = 131;
            goto LABEL_255;
          }

          if (v115 > 6)
          {
            if (v115 == 7)
            {
LABEL_235:
              v103 = 7;
              goto LABEL_179;
            }

            if (v115 == 10)
            {
              v103 = 499;
              goto LABEL_179;
            }
          }

          else
          {
            if (v115 == 1)
            {
              goto LABEL_180;
            }

            if (v115 == 6)
            {
              if (v108 != 1)
              {
                goto LABEL_235;
              }

LABEL_211:
              *v107 = 6;
              goto LABEL_180;
            }
          }

          v125 = CFLocaleGetValue(*a1, v102);
          if (CFStringCompare(v125, @"ja", 0) && CFStringCompare(v125, @"zh", 0))
          {
            v126 = v101;
            v127 = *(v107 + 2);
            if (v127 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_1AE5DB4F0();
            }

            v128 = v102;
            v129 = (*(v107 + 1) + *(a1 + 176));
            if (v127 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v168) = *(v107 + 2);
            if (v127)
            {
              v130 = v129;
              v136 = &v167;
              do
              {
                v137 = *v130++;
                *v136 = v137;
                v136 = (v136 + 1);
              }

              while (v130 != &v129[v127]);
            }

            else
            {
              v136 = &v167;
            }

            *v136 = 0;
            v102 = v128;
            *v107 = sub_1AE7004D8(&v167);
            v101 = v126;
            if (SHIBYTE(v168) < 0)
            {
              operator delete(v167);
            }

            LOBYTE(v41) = v146;
          }
        }
      }

LABEL_180:
      (*(a2 + 16))(a2, *(a1 + 176) + *(v107 + 1), *(v107 + 2), *v107);
    }
  }

  v171 = 0;
  v172 = &v171;
  v173 = 0x2000000000;
  v58 = off_1ED9AC5F0;
  v174 = off_1ED9AC5F0;
  if (!off_1ED9AC5F0)
  {
    *&v167 = MEMORY[0x1E69E9820];
    *(&v167 + 1) = 0x40000000;
    v168 = sub_1AE6E3870;
    v169 = &unk_1E7A2E2E8;
    v170 = &v171;
    sub_1AE6E3870(&v167);
    v58 = v172[3];
  }

  _Block_object_dispose(&v171, 8);
  if (!v58)
  {
    goto LABEL_269;
  }

  v58(v57, theString, 0, Length);
  v59 = qword_1ED9AC710;
  v171 = 0;
  v172 = &v171;
  v173 = 0x2000000000;
  v60 = off_1ED9AC5E0;
  v174 = off_1ED9AC5E0;
  if (!off_1ED9AC5E0)
  {
    *&v167 = MEMORY[0x1E69E9820];
    *(&v167 + 1) = 0x40000000;
    v168 = sub_1AE6E39B8;
    v169 = &unk_1E7A2E310;
    v170 = &v171;
    sub_1AE6E39B8(&v167);
    v60 = v172[3];
  }

  _Block_object_dispose(&v171, 8);
  if (!v60)
  {
LABEL_269:
    dlerror();
    abort_report_np();
    goto LABEL_279;
  }

  v61 = v60(v59, 1);
  v62 = v61;
  v166 = 0;
  if (!v61)
  {
LABEL_138:
    v72 = qword_1ED9AC710;
    v171 = 0;
    v172 = &v171;
    v173 = 0x2000000000;
    v73 = off_1ED9AC610;
    v174 = off_1ED9AC610;
    if (!off_1ED9AC610)
    {
      *&v167 = MEMORY[0x1E69E9820];
      *(&v167 + 1) = 0x40000000;
      v168 = sub_1AE6E3D90;
      v169 = &unk_1E7A2E388;
      v170 = &v171;
      sub_1AE6E3D90(&v167);
      v73 = v172[3];
    }

    _Block_object_dispose(&v171, 8);
    if (!v73)
    {
      goto LABEL_271;
    }

    v73(v72);
    goto LABEL_142;
  }

  Count = CFArrayGetCount(v61);
  v139 = Count - 1;
  theArray = v62;
  if (Count < 1)
  {
LABEL_137:
    CFRelease(theArray);
    goto LABEL_138;
  }

  v64 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v64);
    v171 = 0;
    v172 = &v171;
    v173 = 0x2000000000;
    v66 = off_1ED9AC5E8;
    v174 = off_1ED9AC5E8;
    if (!off_1ED9AC5E8)
    {
      *&v167 = MEMORY[0x1E69E9820];
      *(&v167 + 1) = 0x40000000;
      v168 = sub_1AE6E3B00;
      v169 = &unk_1E7A2E338;
      v170 = &v171;
      sub_1AE6E3B00(&v167);
      v66 = v172[3];
    }

    _Block_object_dispose(&v171, 8);
    if (!v66)
    {
      break;
    }

    v67 = v66(ValueAtIndex);
    v69 = v68;
    v171 = 0;
    v172 = &v171;
    v173 = 0x2000000000;
    v70 = off_1ED9AC5F8;
    v174 = off_1ED9AC5F8;
    if (!off_1ED9AC5F8)
    {
      *&v167 = MEMORY[0x1E69E9820];
      *(&v167 + 1) = 0x40000000;
      v168 = sub_1AE6E3C48;
      v169 = &unk_1E7A2E360;
      v170 = &v171;
      sub_1AE6E3C48(&v167);
      v70 = v172[3];
    }

    _Block_object_dispose(&v171, 8);
    if (!v70)
    {
      break;
    }

    v71 = v70(ValueAtIndex);
    v148(v147, v67, v69, v71, &v166);
    if ((v166 & 1) == 0)
    {
      v113 = v139 == v64++;
      if (!v113)
      {
        continue;
      }
    }

    goto LABEL_137;
  }

LABEL_271:
  dlerror();
  abort_report_np();
LABEL_279:
  __break(1u);
}

void sub_1AE6FE9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  __cxa_guard_abort(&qword_1ED9AC718);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1AE6FEAB8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1AE6FEAC8(uint64_t result, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  if (a4 == 1)
  {
    v6 = result;
    result = sub_1AE6931A0(*(result + 56), a2, a3, (*(*(result + 48) + 176) + *(result + 64)), *(result + 72) - *(result + 64), *(*(result + 48) + 16));
    v7 = *(v6[4] + 8);
    *(v7 + 40) = result;
    *(v7 + 48) = v8;
    *(*(v6[4] + 8) + 40) += v6[8];
    *(*(v6[5] + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_1AE6FEB50(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = a2;
  if (!a3)
  {
    LODWORD(v52) = a4;
    *(&v52 + 1) = a2;
    v53 = xmmword_1AE799EF0;
    sub_1AE6FD7E4(a1 + 224, &v52);
    return;
  }

  status = U_ZERO_ERROR;
  utext_openUTF8((a1 + 32), (*(a1 + 176) + a2), a3, &status);
  if (status > U_ZERO_ERROR)
  {
    goto LABEL_3;
  }

  ubrk_setUText();
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    LODWORD(v52) = a4;
    *(&v52 + 1) = v5;
    *&v53 = a3;
    *(&v53 + 1) = -1;
    sub_1AE6FD7E4(a1 + 224, &v52);
    return;
  }

  v8 = ubrk_first();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v5 + a3;
  while (v8 != -1)
  {
    v14 = v5 + v8;
    v15 = *(a1 + 256);
    v16 = *(a1 + 264);
    v17 = -1;
    v18 = (v16 - v15) >> 2;
    if (v16 != v15 && (v14 & 0x8000000000000000) == 0 && v18 > v14)
    {
      v17 = v5 + v8;
      while (*(v15 + 4 * v17) == 15)
      {
        if (v18 == ++v17)
        {
          v17 = (v16 - v15) >> 2;
          break;
        }
      }
    }

    v19 = 0;
    if (v17 >= v5 && v17 <= v13)
    {
      v19 = *(v15 + 4 * v17);
    }

    v20 = -1;
    if ((v17 & 0x8000000000000000) == 0 && v16 != v15)
    {
      v21 = v17 + 1;
      if (v18 > v21)
      {
        v20 = v21;
        while (*(v15 + 4 * v20) == 15)
        {
          if (v18 == ++v20)
          {
            v20 = (v16 - v15) >> 2;
            break;
          }
        }
      }
    }

    v22 = 0;
    if (v20 >= v5 && v20 <= v13)
    {
      v22 = *(v15 + 4 * v20);
    }

    v23 = v14 - 1;
    if (v16 == v15 || v14 < 1 || v18 <= v23)
    {
      goto LABEL_41;
    }

    if (v14 == 1)
    {
LABEL_39:
      v24 = 0;
    }

    else
    {
      v24 = v14 - 1;
      while (*(v15 + 4 * v24) == 15)
      {
        if (v24-- <= 1)
        {
          goto LABEL_39;
        }
      }
    }

    if (*(v15 + 4 * v24) == 15)
    {
LABEL_41:
      v24 = -1;
    }

    v26 = 0;
    if (v24 >= v5 && v24 <= v13)
    {
      v26 = *(v15 + 4 * v24);
    }

    if (v11)
    {
      goto LABEL_8;
    }

    if (v26 == 13 && v19 == 13)
    {
      v27 = v8 - v12;
      if (v10 < v9)
      {
        goto LABEL_49;
      }

      v28 = v10;
      v29 = v10 >> 2;
      v30 = v29 + 1;
      if ((v29 + 1) >> 62)
      {
        sub_1AE5CBB70();
      }

      if (v9 >> 1 > v30)
      {
        v30 = v9 >> 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v31 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      if (v31)
      {
        if (!(v31 >> 62))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      goto LABEL_128;
    }

    if (v19 == 3 && (v26 - 1) <= 1 && (v22 - 1) < 2)
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (v8 < 1)
    {
      goto LABEL_105;
    }

    if (v19 && v19 != 9)
    {
      if (v26 > 7)
      {
        if (v26 > 12)
        {
          if (v26 == 13)
          {
            v33 = v19 == 13;
            goto LABEL_100;
          }

          if (v26 == 14)
          {
            v32 = v19 != 1 && (v19 - 15) < 0xFFFFFFFC;
LABEL_103:
            if (v19 != 3 && !v32)
            {
LABEL_105:
              if (v26 == 2 && (v22 == 9 || !v22))
              {
                v36 = v8 >= v13 ? v13 : v8;
                if (v5 < v36)
                {
                  v37 = 0;
                  v38 = v36 - v5;
                  v39 = (v15 + 4 * v5);
                  while (1)
                  {
                    v41 = *v39++;
                    v40 = v41;
                    if ((v41 - 1) > 1)
                    {
                      break;
                    }

                    v37 |= v40 == 1;
                    if (!--v38)
                    {
                      if ((v37 & 1) == 0)
                      {
                        break;
                      }

                      v42 = v8 - v12;
                      if (v10 < v9)
                      {
                        v11 = 0;
                        *v10 = v42;
                        v10 += 4;
                        goto LABEL_50;
                      }

                      v28 = v10;
                      v46 = v10 >> 2;
                      v47 = (v10 >> 2) + 1;
                      if (v47 >> 62)
                      {
                        sub_1AE5CBB70();
                      }

                      if (v9 >> 1 > v47)
                      {
                        v47 = v9 >> 1;
                      }

                      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v48 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v48 = v47;
                      }

                      if (v48)
                      {
                        if (!(v48 >> 62))
                        {
                          operator new();
                        }

                        sub_1AE5CB09C();
                      }

                      v45 = 0;
                      *(4 * v46) = v42;
                      v10 = 4 * v46 + 4;
                      goto LABEL_129;
                    }
                  }
                }
              }

LABEL_8:
              v11 = 0;
              goto LABEL_9;
            }

            goto LABEL_118;
          }
        }

        else
        {
          if (v26 == 8)
          {
            v33 = v19 == 8;
LABEL_100:
            v32 = !v33;
            goto LABEL_103;
          }

          if (v26 == 11)
          {
            v33 = (v19 & 0xFFFFFFFD) == 12;
            goto LABEL_100;
          }
        }
      }

      else if (v26 > 3)
      {
        if (v26 == 4)
        {
          v32 = (v19 - 4) < 0xFFFFFFFE;
          goto LABEL_103;
        }

        if (v26 == 6)
        {
          v33 = (v19 & 0xFFFFFFFB) == 2;
          goto LABEL_100;
        }
      }

      else
      {
        if (v26 == 1)
        {
          v32 = v19 != 14 && (v19 - 4) < 0xFFFFFFFD;
          goto LABEL_103;
        }

        if (v26 == 2)
        {
          v32 = (v19 - 11) < 3;
          goto LABEL_103;
        }
      }
    }

    if (v19 == 3 && v26 == 3 && *(*(a1 + 176) + v14) == *(*(a1 + 176) + v23))
    {
      goto LABEL_8;
    }

LABEL_118:
    v27 = v8 - v12;
    if (v10 < v9)
    {
LABEL_49:
      v11 = 0;
      *v10 = v27;
      v10 += 4;
LABEL_50:
      v12 = v8;
      goto LABEL_9;
    }

    v28 = v10;
    v29 = v10 >> 2;
    v43 = v29 + 1;
    if ((v29 + 1) >> 62)
    {
      sub_1AE5CBB70();
    }

    if (v9 >> 1 > v43)
    {
      v43 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v31 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v43;
    }

    if (v31)
    {
      if (!(v31 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

LABEL_128:
    v44 = (4 * v29);
    v45 = 4 * v31;
    *v44 = v27;
    v10 = (v44 + 1);
LABEL_129:
    memcpy(0, 0, v28);
    v11 = 0;
    v12 = v8;
    v9 = v45;
LABEL_9:
    v8 = ubrk_next();
  }

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v50 = *i;
      LODWORD(v52) = 0;
      *(&v52 + 1) = v5;
      *&v53 = v50;
      *(&v53 + 1) = -1;
      sub_1AE6FD7E4(a1 + 224, &v52);
      v5 += v50;
    }
  }

LABEL_3:
  utext_close((a1 + 32));
}

void sub_1AE6FF198(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6FF1DC(uint64_t a1, uint64_t **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 72);
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  (*(*v4 + 224))(v4, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    if (*v6)
    {
      sub_1AE774A30(v6);
      if (*v6)
      {
        MEMORY[0x1B2706400](*v6, 0x1010C4006136809);
      }
    }

    MEMORY[0x1B2706400](v6, 0x20C4093837F09);
  }

  std::mutex::unlock((a1 + 8));
}

void sub_1AE6FF2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE688744(va);
  std::mutex::unlock((v2 + 8));
  _Unwind_Resume(a1);
}

void sub_1AE6FF2BC(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 216))(*(a1 + 72));

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_1AE6FF33C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = (*(**(a1 + 72) + 208))(*(a1 + 72), a2);
  std::mutex::unlock((a1 + 8));
  return v4;
}

void sub_1AE6FF3B8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 200))(*(a1 + 72), a2);

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_1AE6FF438(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 192))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

void sub_1AE6FF4AC(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 184))(*(a1 + 72));

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_1AE6FF524(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = (*(**(a1 + 72) + 176))(*(a1 + 72), a2);
  std::mutex::unlock((a1 + 8));
  return v4;
}

void sub_1AE6FF5A0(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 168))(*(a1 + 72));

  std::mutex::unlock((a1 + 8));
}

void sub_1AE6FF618(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 160))(*(a1 + 72), a2);

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_1AE6FF698(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = (*(**(a1 + 72) + 152))(*(a1 + 72), a2);
  std::mutex::unlock((a1 + 8));
  return v4;
}

uint64_t sub_1AE6FF714(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 144))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

void sub_1AE6FF788(uint64_t a1, float a2)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 136))(*(a1 + 72), a2);

  std::mutex::unlock((a1 + 8));
}

void sub_1AE6FF810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 128))(*(a1 + 72), a2, a3, a4);

  std::mutex::unlock((a1 + 8));
}

void sub_1AE6FF8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 120))(*(a1 + 72), a2, a3, a4, a5);

  std::mutex::unlock((a1 + 8));
}

void sub_1AE6FF950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 112))(*(a1 + 72), a2, a3, a4);

  std::mutex::unlock((a1 + 8));
}

void sub_1AE6FF9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 104))(*(a1 + 72), a2, a3, a4, a5, a6, a7);

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_1AE6FFAB8(uint64_t a1, uint64_t a2, float a3)
{
  std::mutex::lock((a1 + 8));
  v6 = (*(**(a1 + 72) + 96))(*(a1 + 72), a2, a3);
  std::mutex::unlock((a1 + 8));
  return v6;
}

uint64_t sub_1AE6FFB44(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = (*(**(a1 + 72) + 88))(*(a1 + 72), a2);
  std::mutex::unlock((a1 + 8));
  return v4;
}

float sub_1AE6FFBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  v6 = (*(**(a1 + 72) + 80))(*(a1 + 72), a2, a3);
  std::mutex::unlock((a1 + 8));
  return v6;
}

uint64_t sub_1AE6FFC54(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = (*(**(a1 + 72) + 72))(*(a1 + 72), a2);
  std::mutex::unlock((a1 + 8));
  return v4;
}

uint64_t sub_1AE6FFCD0(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 64))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

uint64_t sub_1AE6FFD44(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = (*(**(a1 + 72) + 56))(*(a1 + 72), a2);
  std::mutex::unlock((a1 + 8));
  return v4;
}

float sub_1AE6FFDC0(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 48))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

uint64_t sub_1AE6FFE3C(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 40))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

uint64_t sub_1AE6FFEB0(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 32))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

uint64_t sub_1AE6FFF24(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = (*(**(a1 + 72) + 24))(*(a1 + 72));
  std::mutex::unlock((a1 + 8));
  return v2;
}

void sub_1AE6FFF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((a1 + 8));
  (*(**(a1 + 72) + 16))(*(a1 + 72), a2, a3);

  std::mutex::unlock((a1 + 8));
}

void sub_1AE700028(uint64_t a1)
{
  *a1 = &unk_1F242E4B8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((a1 + 8));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE7000C0(uint64_t a1)
{
  *a1 = &unk_1F242E4B8;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

CFStringRef sub_1AE700138(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 56);
  v2 = a1 + 56;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v12 = (v5 + 40);
    if (*(v5 + 63) < 0)
    {
      v12 = *v12;
    }

    return CFStringCreateWithCString(0, v12, 0x8000100u);
  }

  else
  {
LABEL_9:
    if (a2 > 5)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = "";
      while (dword_1E7A2E700[v9] != a2)
      {
        v9 += 4;
        if (v9 == 328)
        {
          goto LABEL_21;
        }
      }

      v10 = *&dword_1E7A2E700[v9 + 2];
LABEL_21:
      v13 = strlen(v10);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      v18 = v13;
      if (v13)
      {
        memmove(&__dst, v10, v13);
      }

      *(&__dst + v14) = 0;
      if (v18 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      result = CFStringCreateWithCString(0, p_dst, 0x8000100u);
      if (v18 < 0)
      {
        v16 = result;
        operator delete(__dst);
        return v16;
      }
    }
  }

  return result;
}

void sub_1AE7002F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_1AE700314@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 56);
  result = a1 + 56;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = result;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != result && *(v7 + 32) <= a2)
  {
    v12 = (v7 + 40);
    if (*(v7 + 63) < 0)
    {
      v12 = *v12;
    }
  }

  else
  {
LABEL_9:
    if (a2 > 0x1F3)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }

    v11 = 0;
    v12 = "";
    while (dword_1E7A2E700[v11] != a2)
    {
      v11 += 4;
      if (v11 == 328)
      {
        goto LABEL_18;
      }
    }

    v12 = *&dword_1E7A2E700[v11 + 2];
  }

LABEL_18:
  result = strlen(v12);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v13 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = result;
  if (result)
  {
    result = memmove(a3, v12, result);
  }

  *(a3 + v13) = 0;
  return result;
}

void sub_1AE700468(uint64_t a1)
{
  *a1 = &unk_1F2431CD0;
  sub_1AE673AE4(*(a1 + 56));
  sub_1AE627688(*(a1 + 32));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE7004D8(__int128 *a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_1AE5DBF1C(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v1 = &dword_1E7A2E700;
  v2 = HIBYTE(v10);
  v3 = 1312;
  v4 = v9;
  do
  {
    v5 = strlen(*(v1 + 1));
    v6 = v5;
    if ((v2 & 0x80) != 0)
    {
      if (v5 != *(&v4 + 1))
      {
        goto LABEL_6;
      }

      v7 = v4;
      if (*(&v4 + 1) == -1)
      {
        sub_1AE61F754();
      }
    }

    else
    {
      if (v5 != v2)
      {
        goto LABEL_6;
      }

      v7 = &v9;
    }

    if (!memcmp(v7, *(v1 + 1), v6))
    {
      goto LABEL_14;
    }

LABEL_6:
    v1 += 4;
    v3 -= 16;
  }

  while (v3);
  v1 = &dword_1E7A2EC20;
LABEL_14:
  if ((v2 & 0x80) != 0)
  {
    operator delete(v4);
    if (v1 == &dword_1E7A2EC20)
    {
      return 0;
    }

    return *v1;
  }

  else
  {
    if (v1 != &dword_1E7A2EC20)
    {
      return *v1;
    }

    return 0;
  }
}

uint64_t sub_1AE7005E4(uint64_t a1)
{
  *a1 = &unk_1F2431CD0;
  sub_1AE673AE4(*(a1 + 56));
  sub_1AE627688(*(a1 + 32));
  return a1;
}

CFStringRef LMLanguageModelCreateStringForSpecialTokenID(unsigned int a1)
{
  if (a1 > 0x1F3)
  {
    return 0;
  }

  v1 = 0;
  v2 = "";
  while (dword_1E7A2E700[v1] != a1)
  {
    v1 += 4;
    if (v1 == 328)
    {
      goto LABEL_8;
    }
  }

  v2 = *&dword_1E7A2E700[v1 + 2];
LABEL_8:
  v4 = strlen(v2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memmove(&__dst, v2, v4);
  }

  *(&__dst + v5) = 0;
  if (v9 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  result = CFStringCreateWithCString(0, p_dst, 0x8000100u);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__dst);
    return v7;
  }

  return result;
}

void sub_1AE70077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE700798(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = *(a1 + 80);
  if (a2)
  {
    *a2 = *(v3 + 32);
  }

  if (a3)
  {
    *a3 = *(v3 + 44);
  }

  return *(v3 + 40);
}

BOOL sub_1AE7007BC(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 64);
  v3 = *(a1 + 80);
  if (v3 != (a1 + 64))
  {
    v4 = v3[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v3[2];
        v6 = *v5 == v3;
        v3 = v5;
      }

      while (!v6);
    }

    goto LABEL_53;
  }

  v30 = (a1 + 64);
  v5 = (a1 + 64);
  v7 = *(a1 + 24);
  if (*(a1 + 32) != v7)
  {
    v8 = 0;
    v31 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    while (!(*(**(v7 + 8 * v8) + 16))(*(v7 + 8 * v8)))
    {
LABEL_10:
      ++v8;
      v7 = *(a1 + 24);
      if (v8 >= (*(a1 + 32) - v7) >> 3)
      {
        goto LABEL_51;
      }
    }

    v9 = 0;
    while (1)
    {
      v34 = v31;
      v35 = 0;
      v36 = 0;
      v37 = 1;
      v38 = xmmword_1AE79A550;
      v39 = 0;
      v40 = 0xFFEFFFFFFFFFFFFFLL;
      v41 = xmmword_1AE79A560;
      v42 = 0;
      v43 = 0;
      v33 = 0;
      v10 = (*(**(v7 + 8 * v8) + 24))(*(v7 + 8 * v8), 0, &v33);
      v32 = v10;
      if (*(a1 + 48) == 1 && ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1 == v8)
      {
        v33 = 5;
      }

      if (v10 - 3 <= 0x1F0 && (v10 - 68 > 0x3C || ((0x7FFFFFFFFFFFFE0uLL >> (v10 - 68)) & 1) != 0))
      {
        goto LABEL_46;
      }

      v11 = *(a1 + 8);
      v12 = v11[23];
      if (v11[24] - v12 == 16)
      {
        if (sub_1AE670588(v11, &v32, 1, 0, 0, 0, 1, *v12))
        {
          goto LABEL_46;
        }

        v11 = *(a1 + 8);
      }

      if (v33 == 5)
      {
        v13 = v11[58];
        v14 = v32;
        if (qword_1ED9AC8F8 != -1)
        {
          v26 = v13;
          v27 = v32;
          dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
          v14 = v27;
          v13 = v26;
        }

        *(&v47 + 1) = 0;
        v15 = sub_1AE70A62C(v13, v14, 0, 0, &v34, 1, &v46, 0);
        if (*(&v47 + 1) == &v46)
        {
          (*(**(&v47 + 1) + 32))(*(&v47 + 1));
          if (v15)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*(&v47 + 1))
          {
            (*(**(&v47 + 1) + 40))(*(&v47 + 1));
          }

          if (v15)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v16 = v32;
        if (qword_1ED9AC8F8 != -1)
        {
          v28 = v11;
          dispatch_once(&qword_1ED9AC8F8, &unk_1F242FFB8);
          v11 = v28;
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0;
        if (sub_1AE66C188(v11, v16 | (v16 << 32), &v46, &v34, qword_1ED9AC900, 1, 1, v44, 0))
        {
LABEL_35:
          v17 = *v5;
          if (!*v5)
          {
LABEL_45:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v18 = v17;
              v19 = *(v17 + 32);
              v20 = *(v17 + 40);
              v21 = v32 < v20;
              if (*v34.i64 != v19)
              {
                v21 = *v34.i64 > v19;
              }

              if (!v21)
              {
                break;
              }

              v17 = *v18;
              if (!*v18)
              {
                goto LABEL_45;
              }
            }

            v22 = v20 < v32;
            if (*v34.i64 != v19)
            {
              v22 = v19 > *v34.i64;
            }

            if (!v22)
            {
              break;
            }

            v17 = v18[1];
            if (!v17)
            {
              goto LABEL_45;
            }
          }
        }
      }

LABEL_46:
      v23 = (*(**(v7 + 8 * v8) + 16))(*(v7 + 8 * v8));
      if (v9++ >= 0x63)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_51:
  v2 = v30;
  if (*(a1 + 72))
  {
    v5 = *(a1 + 56);
  }

LABEL_53:
  *(a1 + 80) = v5;
  return v5 != v2;
}

void sub_1AE700C98(uint64_t a1)
{
  sub_1AE700CD0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE700CD0(uint64_t a1)
{
  *a1 = &unk_1F242E618;
  sub_1AE673B40(*(a1 + 64));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
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
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 16);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

uint64_t sub_1AE700DD0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  if (a2)
  {
    v13 = result;
    result = sub_1AE6F974C(a2);
    if (result)
    {
      if (a4)
      {
        if (a4 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = a4;
        }

        v18 = a5 + 4 * a6;
        do
        {
          if (v14 == 1)
          {
            if (!a6)
            {
              __assert_rtn("lastContextTokenIsCommonStaticWord", "LMCompositeCompletionEnumerator.cpp", 118, "context.size() >= 1");
            }

            if (*(v13 + 89) == 1)
            {
              if (*(v13 + 88))
              {
                return result;
              }
            }

            else
            {
              v16 = *(v18 - 4);
              if (v16 != 1)
              {
                result = sub_1AE78148C(v16, *(v13 + 8));
                if (result)
                {
                  return result;
                }
              }
            }
          }

          result = sub_1AE6F7A28(a2, a3, a4, a7, v14);
          v17 = result;
          if (result)
          {
            if ((*(*result + 16))(result))
            {
              operator new();
            }

            result = (*(*v17 + 8))(v17);
          }
        }

        while (v14-- > 1);
      }
    }
  }

  return result;
}

void sub_1AE701278(_Unwind_Exception *a1)
{
  operator delete(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1AE7012DC(uint64_t a1)
{
  sub_1AE700CD0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE701318(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_11:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = *(v2 + 32);
      v7 = *(v2 + 40);
      v8 = v4 < v7;
      if (v3 != v6)
      {
        v8 = v3 > v6;
      }

      if (!v8)
      {
        break;
      }

      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    v9 = v7 < v4;
    if (v3 != v6)
    {
      v9 = v6 > v3;
    }

    if (!v9)
    {
      return result;
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_11;
    }
  }
}

void sub_1AE701418(uint64_t a1)
{
  sub_1AE700CD0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE701454(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 24);
  if (v2 != (a1 + 24))
  {
    do
    {
      if (v2[5])
      {
        v4 = sub_1AE701454();
        MEMORY[0x1B2706400](v4, 0x1020C40562D3801);
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_1AE673B40(*(a1 + 24));
  return a1;
}

uint64_t sub_1AE7014FC(_DWORD *a1, int a2)
{
  v2 = (4 * a2 - 559038737);
  if (a2 < 4)
  {
    v4 = 4 * a2 - 559038737;
    v3 = v4;
    if (a2 <= 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (a2 != 2)
    {
      LODWORD(v2) = a1[2] + v2;
    }

    v3 += a1[1];
    goto LABEL_11;
  }

  v3 = 4 * a2 - 559038737;
  v4 = v3;
  do
  {
    v5 = a1[1] + v3;
    v6 = a1[2] + v2;
    v7 = (*a1 + v4 - v6) ^ __ROR4__(v6, 28);
    v8 = v6 + v5;
    v9 = (v5 - v7) ^ __ROR4__(v7, 26);
    v10 = v7 + v8;
    v11 = (v8 - v9) ^ __ROR4__(v9, 24);
    v12 = v9 + v10;
    v13 = (v10 - v11) ^ __ROR4__(v11, 16);
    v14 = v11 + v12;
    v15 = (v12 - v13) ^ __ROR4__(v13, 13);
    v4 = v13 + v14;
    v2 = (v14 - v15) ^ __ROR4__(v15, 28);
    v3 = v15 + v4;
    a2 -= 3;
    a1 += 3;
  }

  while (a2 > 3);
  if (a2 > 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!a2)
  {
    return v2;
  }

LABEL_11:
  HIDWORD(v17) = v3;
  LODWORD(v17) = v3;
  v18 = (v2 ^ v3) - (v17 >> 18);
  HIDWORD(v17) = v18;
  LODWORD(v17) = v18;
  v19 = ((*a1 + v4) ^ v18) - (v17 >> 21);
  HIDWORD(v17) = v19;
  LODWORD(v17) = v19;
  v20 = (v19 ^ v3) - (v17 >> 7);
  HIDWORD(v17) = v20;
  LODWORD(v17) = v20;
  v21 = (v20 ^ v18) - (v17 >> 16);
  HIDWORD(v17) = v21;
  LODWORD(v17) = v21;
  HIDWORD(v17) = (v21 ^ v19) - (v17 >> 28);
  LODWORD(v17) = HIDWORD(v17);
  HIDWORD(v17) = (HIDWORD(v17) ^ v20) - (v17 >> 18);
  LODWORD(v17) = HIDWORD(v17);
  return (HIDWORD(v17) ^ v21) - (v17 >> 8);
}

uint64_t sub_1AE701624(uint64_t result)
{
  if (*(result + 72))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  v3 = *(v2 + 3);
  *(result + 48) = 0;
  v4 = *(v2 + 8);
  if (v4 == 5)
  {
    v13 = *v2;
    v14 = *(v2 + 56);
    v15 = *(*v2 + 15) && *(v13 + 23) && *(v13 + 27) != 0;
    v16 = *(v13 + 35) && *(v13 + 43) && *(v13 + 47) != 0;
    v17 = 0;
    v18 = 0;
    v19 = v13 + 55;
    v20 = 16 * v14;
    if (v3 + 1 > 1)
    {
      v21 = v3 + 1;
    }

    else
    {
      v21 = 1;
    }

    do
    {
      v22 = *(v19 + (v18 >> 2));
      if ((v18 & 3) != 0)
      {
        LOBYTE(v22) = v22 >> (2 * (v18 & 3));
      }

      if ((v22 & 3) != 0)
      {
        *(result + 48) = ++v17;
      }

      ++v18;
    }

    while (v21 != v18);
    v23 = *(result + 16);
    v24 = (result + 16);
    v25 = 0xCCCCCCCCCCCCCCCDLL * (*(result + 24) - v23);
    v56 = v15;
    v57 = v14;
    v55 = v16;
    if (v17 <= v25)
    {
      if (v17 < v25)
      {
        *(result + 24) = v23 + 5 * v17;
      }
    }

    else
    {
      sub_1AE701AA0(result + 16, v17 - v25);
      v16 = v55;
      v15 = v56;
      v14 = v57;
    }

    v30 = 0;
    v31 = 0;
    while (1)
    {
      v37 = *(v19 + (v31 >> 2));
      if ((v31 & 3) != 0)
      {
        LOBYTE(v37) = v37 >> (2 * (v31 & 3));
      }

      v38 = v37 & 3;
      if (v38 <= 1)
      {
        if (!v38)
        {
          goto LABEL_44;
        }

        v34 = (v1[1] + 57);
        goto LABEL_42;
      }

      if (v38 == 2)
      {
        if (!v15)
        {
          goto LABEL_61;
        }

        v39 = *v1[1];
        if (v14)
        {
          if (v31 < v20)
          {
            v40 = 0;
            v41 = v31;
            if (!v31)
            {
              goto LABEL_72;
            }

            do
            {
LABEL_64:
              v43 = *(v19 + ((v31 - v41) >> 2));
              v44 = v41 - 1;
              if (v44 >= 0xF)
              {
                v45 = 15;
              }

              else
              {
                v45 = v44;
              }

              v46 = v45 + 1;
              do
              {
                if ((v43 & 3) == 2)
                {
                  ++v40;
                }

                v43 >>= 2;
                --v46;
              }

              while (v46);
              v41 = v44 - v45;
            }

            while (v41);
            goto LABEL_72;
          }

          v40 = *(v39 + *(v13 + 15) + 4 * (v31 / v20 - 1));
          v41 = v31 % v20;
          if (v31 % v20)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v40 = cmph_search_packed();
          v16 = v55;
          v15 = v56;
          v14 = v57;
          v39 = *v1[1];
        }

LABEL_72:
        v34 = (v39 + *(v13 + 23) + 2 * v40);
        goto LABEL_42;
      }

      if (!v16)
      {
LABEL_61:
        v35 = 0;
        goto LABEL_43;
      }

      v33 = *v1[1];
      if (v14)
      {
        if (v31 >= v20)
        {
          v32 = *(v33 + *(v13 + 35) + 4 * (v31 / v20 - 1));
          v42 = v31 % v20;
          if (v31 % v20)
          {
            do
            {
LABEL_74:
              v47 = *(v19 + ((v31 - v42) >> 2));
              v48 = v42 - 1;
              if (v48 >= 0xF)
              {
                v49 = 15;
              }

              else
              {
                v49 = v48;
              }

              v50 = v49 + 1;
              do
              {
                if ((~v47 & 3) == 0)
                {
                  ++v32;
                }

                v47 >>= 2;
                --v50;
              }

              while (v50);
              v42 = v48 - v49;
            }

            while (v42);
          }
        }

        else
        {
          v32 = 0;
          v42 = v31;
          if (v31)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v32 = cmph_search_packed();
        v16 = v55;
        v15 = v56;
        v14 = v57;
        v33 = *v1[1];
      }

      v34 = (v33 + *(v13 + 43) + 6 * v32 + 4);
LABEL_42:
      v35 = *v34;
LABEL_43:
      v36 = *v24 + 5 * v30;
      *v36 = v31;
      *(v36 + 4) = v35;
      ++v30;
LABEL_44:
      if (++v31 > v3)
      {
        goto LABEL_83;
      }
    }
  }

  if (v4 == 3)
  {
    v5 = 0;
    v6 = *v2;
    if (v3 + 1 > 1)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = 7;
    v9 = v7;
    do
    {
      if (*(v6 + v8))
      {
        *(result + 48) = ++v5;
      }

      v8 += 6;
      --v9;
    }

    while (v9);
    v10 = *(result + 16);
    v11 = (result + 16);
    v12 = 0xCCCCCCCCCCCCCCCDLL * (*(result + 24) - v10);
    if (v5 <= v12)
    {
      if (v5 < v12)
      {
        *(result + 24) = v10 + 5 * v5;
      }
    }

    else
    {
      sub_1AE701AA0(result + 16, v5 - v12);
      v6 = *v1[1];
    }

    v26 = 0;
    v27 = 0;
    v28 = (v6 + 11);
    do
    {
      if (*(v28 - 1))
      {
        v29 = *v11 + 5 * v27;
        *v29 = v26;
        *(v29 + 4) = *v28;
        ++v27;
      }

      ++v26;
      v28 += 6;
    }

    while (v7 != v26);
  }

LABEL_83:
  v51 = v1[2];
  v52 = v1[3];
  v53 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v52 - v51));
  if (v52 == v51)
  {
    v54 = 0;
  }

  else
  {
    v54 = v53;
  }

  return sub_1AE701C44(v51, v52, v54, 1);
}

void sub_1AE701AA0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * (v3 - v4) >= a2)
  {
    if (a2)
    {
      v10 = 5 * ((5 * a2 - 5) / 5) + 5;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 - *a1) + a2;
    if (v6 >= 0x3333333333333334)
    {
      sub_1AE5CBB70();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * (v3 - v5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    v8 = v7 >= 0x1999999999999999;
    v9 = 0x3333333333333333;
    if (!v8)
    {
      v9 = v6;
    }

    if (v9)
    {
      if (v9 < 0x3333333333333334)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = (v4 - *a1);
    v12 = 5 * ((5 * a2 - 5) / 5) + 5;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    memcpy(v14, v5, v13);
    *a1 = v14;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1AE701C44(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 5);
  v9 = (a2 - 10);
  v216 = (a2 - 6);
  v10 = (a2 - 15);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xCCCCCCCCCCCCCCCDLL * (a2 - v11);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v131 = *(a2 - 1);
        v132 = *(v11 + 4);
        if (v131 <= v132 && (v131 != v132 || *v8 >= *v11))
        {
          return result;
        }

LABEL_224:
        v260 = *(v11 + 4);
        v237 = *v11;
        v133 = *v8;
        *(v11 + 4) = *(a2 - 1);
        *v11 = v133;
        v128 = v237;
        v129 = v260;
LABEL_225:
        *(a2 - 1) = v129;
        *v8 = v128;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return sub_1AE7030B8(v11, (v11 + 5), (v11 + 10), (a2 - 5));
    }

    if (v13 == 5)
    {
      result = sub_1AE7030B8(v11, (v11 + 5), (v11 + 10), (v11 + 15));
      v134 = *(a2 - 1);
      v135 = *(v11 + 19);
      if (v134 <= v135 && (v134 != v135 || *v8 >= *(v11 + 15)))
      {
        return result;
      }

      v136 = *(v11 + 15);
      v137 = *(v11 + 19);
      v138 = *(a2 - 1);
      *(v11 + 15) = *v8;
      *(v11 + 19) = v138;
      *(a2 - 1) = v137;
      *v8 = v136;
      v139 = *(v11 + 19);
      v140 = *(v11 + 14);
      if (v139 <= v140 && (v139 != v140 || *(v11 + 15) >= *(v11 + 10)))
      {
        return result;
      }

      v141 = *(v11 + 14);
      v142 = *(v11 + 10);
      *(v11 + 10) = *(v11 + 15);
      *(v11 + 14) = *(v11 + 19);
      *(v11 + 15) = v142;
      *(v11 + 19) = v141;
      v143 = *(v11 + 14);
      v144 = *(v11 + 9);
      if (v143 <= v144 && (v143 != v144 || *(v11 + 10) >= *(v11 + 5)))
      {
        return result;
      }

      v145 = *(v11 + 9);
      v146 = *(v11 + 5);
      *(v11 + 5) = *(v11 + 10);
      *(v11 + 9) = *(v11 + 14);
      *(v11 + 10) = v146;
      *(v11 + 14) = v145;
      goto LABEL_312;
    }

LABEL_10:
    if (v12 <= 119)
    {
      v147 = v11 + 5;
      v149 = v11 == a2 || v147 == a2;
      if (a4)
      {
        if (v149)
        {
          return result;
        }

        v150 = 0;
        v151 = v11;
        while (2)
        {
          v153 = v151;
          v151 = v147;
          v154 = *(v153 + 9);
          v155 = *(v153 + 4);
          if (v154 > v155)
          {
            v156 = *v151;
            goto LABEL_244;
          }

          if (v154 == v155)
          {
            v156 = *v151;
            if (*v151 < *v153)
            {
LABEL_244:
              *v151 = *v153;
              *(v151 + 4) = *(v153 + 4);
              v152 = v11;
              if (v153 != v11)
              {
                v157 = v150;
                while (1)
                {
                  v158 = v11 + v157;
                  v159 = (v11 + v157 - 5);
                  v160 = *(v11 + v157 - 1);
                  if (v154 <= v160)
                  {
                    if (v154 != v160)
                    {
                      v152 = v11 + v157;
                      goto LABEL_240;
                    }

                    if (v156 >= *v159)
                    {
                      break;
                    }
                  }

                  v153 -= 5;
                  *v158 = *v159;
                  *(v158 + 4) = *(v11 + v157 - 1);
                  v157 -= 5;
                  if (!v157)
                  {
                    v152 = v11;
                    goto LABEL_240;
                  }
                }

                v152 = v153;
              }

LABEL_240:
              *v152 = v156;
              *(v152 + 4) = v154;
            }
          }

          v147 = v151 + 5;
          v150 += 5;
          if (v151 + 5 == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v149)
      {
        return result;
      }

      while (2)
      {
        v210 = v7;
        v7 = v147;
        v211 = *(v210 + 9);
        v212 = *(v210 + 4);
        if (v211 <= v212)
        {
          if (v211 == v212)
          {
            v213 = *v7;
            if (*v7 < *v210)
            {
              goto LABEL_326;
            }
          }
        }

        else
        {
          v213 = *v7;
          do
          {
            do
            {
LABEL_326:
              v214 = v210;
              *(v210 + 5) = *v210;
              *(v210 + 9) = *(v210 + 4);
              v210 -= 5;
              v215 = *(v214 - 1);
            }

            while (v211 > v215);
          }

          while (v211 == v215 && v213 < *v210);
          *v214 = v213;
          *(v214 + 4) = v211;
        }

        v147 = v7 + 5;
        if (v7 + 5 == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v161 = (v13 - 2) >> 1;
      v162 = v161;
      do
      {
        v164 = v162;
        if (v161 >= v162)
        {
          v165 = (2 * v162) | 1;
          v166 = (v11 + 5 * v165);
          if (2 * v164 + 2 < v13)
          {
            v167 = *(v166 + 4);
            v168 = *(v166 + 9);
            if (v167 > v168 || v167 == v168 && *v166 < *(v166 + 5))
            {
              v166 = (v166 + 5);
              v165 = 2 * v164 + 2;
            }
          }

          v169 = v11 + 5 * v164;
          v170 = *(v166 + 4);
          v171 = *(v169 + 4);
          v172 = v170 == v171;
          if (v170 <= v171)
          {
            v173 = *v169;
            if (!v172 || *v166 >= v173)
            {
              v174 = *v166;
              result = *(v166 + 4);
              *(v169 + 4) = result;
              *v169 = v174;
              if (v161 >= v165)
              {
                while (1)
                {
                  v176 = 2 * v165;
                  v165 = (2 * v165) | 1;
                  v163 = (v11 + 5 * v165);
                  v177 = v176 + 2;
                  if (v177 < v13)
                  {
                    result = *(v163 + 4);
                    v178 = *(v163 + 9);
                    if (result > v178 || result == v178 && (result = *v163, result < *(v163 + 5)))
                    {
                      v163 = (v163 + 5);
                      v165 = v177;
                    }
                  }

                  v179 = *(v163 + 4);
                  if (v179 > v171 || v179 == v171 && *v163 < v173)
                  {
                    break;
                  }

                  v175 = *v163;
                  result = *(v163 + 4);
                  *(v166 + 4) = result;
                  *v166 = v175;
                  v166 = v163;
                  if (v161 < v165)
                  {
                    goto LABEL_258;
                  }
                }
              }

              v163 = v166;
LABEL_258:
              *v163 = v173;
              *(v163 + 4) = v171;
            }
          }
        }

        v162 = v164 - 1;
      }

      while (v164);
      v180 = 0xCCCCCCCCCCCCCCCDLL * v12;
      while (2)
      {
        v182 = 0;
        v261 = *(v11 + 4);
        v238 = *v11;
        v183 = v11;
        do
        {
          v185 = v183;
          v186 = v183 + 5 * v182;
          v183 = (v186 + 5);
          v187 = 2 * v182;
          v182 = (2 * v182) | 1;
          v188 = v187 + 2;
          if (v188 < v180)
          {
            v189 = (v186 + 10);
            result = v186[9];
            v190 = v186[14];
            if (result > v190 || result == v190 && (result = *v189, *v183 < result))
            {
              v183 = v189;
              v182 = v188;
            }
          }

          v184 = *v183;
          *(v185 + 4) = *(v183 + 4);
          *v185 = v184;
        }

        while (v182 <= ((v180 - 2) >> 1));
        a2 -= 5;
        if (v183 == a2)
        {
          *(v183 + 4) = v261;
          *v183 = v238;
        }

        else
        {
          v191 = *a2;
          *(v183 + 4) = *(a2 + 4);
          *v183 = v191;
          *(a2 + 4) = v261;
          *a2 = v238;
          v192 = v183 - v11 + 5;
          if (v192 >= 6)
          {
            v193 = -2 - 0x3333333333333333 * v192;
            v194 = v193 >> 1;
            v195 = v11 + 5 * (v193 >> 1);
            v196 = *(v195 + 4);
            v197 = *(v183 + 4);
            if (v196 > v197)
            {
              v198 = *v183;
              goto LABEL_297;
            }

            if (v196 == v197)
            {
              v198 = *v183;
              if (*v195 < *v183)
              {
LABEL_297:
                v199 = *v195;
                result = *(v195 + 4);
                *(v183 + 4) = result;
                *v183 = v199;
                if (v193 >= 2)
                {
                  while (1)
                  {
                    v202 = v194 - 1;
                    v194 = (v194 - 1) >> 1;
                    v200 = v11 + 5 * v194;
                    v203 = *(v200 + 4);
                    if (v203 <= v197 && (v203 != v197 || *v200 >= v198))
                    {
                      break;
                    }

                    v201 = *v200;
                    result = *(v200 + 4);
                    *(v195 + 4) = result;
                    *v195 = v201;
                    v195 = v11 + 5 * v194;
                    if (v202 <= 1)
                    {
                      goto LABEL_299;
                    }
                  }
                }

                v200 = v195;
LABEL_299:
                *v200 = v198;
                *(v200 + 4) = v197;
              }
            }
          }
        }

        if (v180-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v14 = 5 * (v13 >> 1);
    v15 = v11 + v14;
    if (v12 >= 0x281)
    {
      v16 = *(v15 + 4);
      v17 = *(v11 + 4);
      if (v16 > v17 || v16 == v17 && *v15 < *v11)
      {
        v18 = *(a2 - 1);
        if (v18 > v16 || v18 == v16 && *v8 < *v15)
        {
          v240 = *(v11 + 4);
          v217 = *v11;
          v19 = *v8;
          *(v11 + 4) = *(a2 - 1);
          *v11 = v19;
        }

        else
        {
          v246 = *(v11 + 4);
          v223 = *v11;
          v34 = *v15;
          *(v11 + 4) = *(v15 + 4);
          *v11 = v34;
          *(v15 + 4) = v246;
          *v15 = v223;
          v35 = *(a2 - 1);
          if (v35 <= v246 && (v35 != v246 || *v8 >= *v15))
          {
            goto LABEL_34;
          }

          v240 = *(v15 + 4);
          v217 = *v15;
          v36 = *v8;
          *(v15 + 4) = *(a2 - 1);
          *v15 = v36;
        }

        *(a2 - 1) = v240;
        *v8 = v217;
        goto LABEL_34;
      }

      v24 = *(a2 - 1);
      if (v24 > v16 || v24 == v16 && *v8 < *v15)
      {
        v242 = *(v15 + 4);
        v219 = *v15;
        v25 = *v8;
        *(v15 + 4) = *(a2 - 1);
        *v15 = v25;
        *(a2 - 1) = v242;
        *v8 = v219;
        v26 = *(v15 + 4);
        v27 = *(v11 + 4);
        if (v26 > v27 || v26 == v27 && *v15 < *v11)
        {
          v243 = *(v11 + 4);
          v220 = *v11;
          v28 = *v15;
          *(v11 + 4) = *(v15 + 4);
          *v11 = v28;
          *(v15 + 4) = v243;
          *v15 = v220;
        }
      }

LABEL_34:
      v37 = v14 + v11 - 5;
      v38 = *(v14 + v11 - 1);
      v39 = *(v11 + 9);
      if (v38 > v39 || v38 == v39 && *v37 < *(v11 + 5))
      {
        v40 = *v216;
        if (v40 > v38 || v40 == v38 && *v9 < *v37)
        {
          v41 = *(v11 + 5);
          v42 = *(v11 + 9);
          v43 = *(a2 - 6);
          *(v11 + 5) = *v9;
          *(v11 + 9) = v43;
        }

        else
        {
          v54 = *(v11 + 5);
          v55 = *(v11 + 9);
          v56 = *(v14 + v11 - 1);
          *(v11 + 5) = *v37;
          *(v11 + 9) = v56;
          *(v14 + v11 - 1) = v55;
          *v37 = v54;
          v57 = *v216;
          if (v57 <= v55 && (v57 != v55 || *v9 >= *v37))
          {
            goto LABEL_52;
          }

          v249 = *(v14 + v11 - 1);
          v226 = *v37;
          v58 = *v9;
          *(v14 + v11 - 1) = *(a2 - 6);
          *v37 = v58;
          v41 = v226;
          v42 = v249;
        }

        *(a2 - 6) = v42;
        *v9 = v41;
        goto LABEL_52;
      }

      v44 = *v216;
      if (v44 > v38 || v44 == v38 && *v9 < *v37)
      {
        v247 = *(v14 + v11 - 1);
        v224 = *v37;
        v45 = *v9;
        *(v14 + v11 - 1) = *(a2 - 6);
        *v37 = v45;
        *(a2 - 6) = v247;
        *v9 = v224;
        v46 = *(v14 + v11 - 1);
        v47 = *(v11 + 9);
        if (v46 > v47 || v46 == v47 && *v37 < *(v11 + 5))
        {
          v48 = *(v11 + 5);
          v49 = *(v11 + 9);
          v50 = *(v14 + v11 - 1);
          *(v11 + 5) = *v37;
          *(v11 + 9) = v50;
          *(v14 + v11 - 1) = v49;
          *v37 = v48;
        }
      }

LABEL_52:
      v59 = v14 + v11;
      v60 = *(v59 + 9);
      v61 = *(v11 + 14);
      if (v60 > v61 || v60 == v61 && *(v59 + 5) < *(v11 + 10))
      {
        v62 = *(a2 - 11);
        if (v62 > v60 || v62 == v60 && *v10 < *(v59 + 5))
        {
          v63 = *(v11 + 10);
          v64 = *(v11 + 14);
          v65 = *(a2 - 11);
          *(v11 + 10) = *v10;
          *(v11 + 14) = v65;
        }

        else
        {
          v73 = *(v11 + 10);
          v74 = *(v11 + 14);
          v75 = *(v59 + 9);
          *(v11 + 10) = *(v59 + 5);
          *(v11 + 14) = v75;
          *(v59 + 9) = v74;
          *(v59 + 5) = v73;
          v76 = *(a2 - 11);
          if (v76 <= v74 && (v76 != v74 || *v10 >= *(v59 + 5)))
          {
            goto LABEL_65;
          }

          v251 = *(v59 + 9);
          v228 = *(v59 + 5);
          v77 = *v10;
          *(v59 + 9) = *(a2 - 11);
          *(v59 + 5) = v77;
          v63 = v228;
          v64 = v251;
        }

        *(a2 - 11) = v64;
        *v10 = v63;
        goto LABEL_65;
      }

      v66 = *(a2 - 11);
      if (v66 > v60 || v66 == v60 && *v10 < *(v59 + 5))
      {
        v250 = *(v59 + 9);
        v227 = *(v59 + 5);
        v67 = *v10;
        *(v59 + 9) = *(a2 - 11);
        *(v59 + 5) = v67;
        *(a2 - 11) = v250;
        *v10 = v227;
        v68 = *(v59 + 9);
        v69 = *(v11 + 14);
        if (v68 > v69 || v68 == v69 && *(v59 + 5) < *(v11 + 10))
        {
          v70 = *(v11 + 10);
          v71 = *(v11 + 14);
          v72 = *(v59 + 9);
          *(v11 + 10) = *(v59 + 5);
          *(v11 + 14) = v72;
          *(v59 + 9) = v71;
          *(v59 + 5) = v70;
        }
      }

LABEL_65:
      v78 = *(v15 + 4);
      v79 = *(v37 + 4);
      if (v78 <= v79 && (v78 != v79 || *v15 >= *v37))
      {
        v81 = *(v59 + 9);
        if (v81 > v78 || v81 == v78 && *(v59 + 5) < *v15)
        {
          v253 = *(v15 + 4);
          v230 = *v15;
          *v15 = *(v59 + 5);
          *(v15 + 4) = *(v59 + 9);
          *(v59 + 9) = v253;
          *(v59 + 5) = v230;
          v82 = *(v15 + 4);
          v83 = *(v37 + 4);
          if (v82 > v83 || v82 == v83 && *v15 < *v37)
          {
            v254 = *(v37 + 4);
            v231 = *v37;
            *v37 = *v15;
            *(v37 + 4) = *(v15 + 4);
            *(v15 + 4) = v254;
            *v15 = v231;
          }
        }

        goto LABEL_78;
      }

      v80 = *(v59 + 9);
      if (v80 > v78 || v80 == v78 && *(v59 + 5) < *v15)
      {
        v252 = *(v37 + 4);
        v229 = *v37;
        *v37 = *(v59 + 5);
        *(v37 + 4) = *(v59 + 9);
      }

      else
      {
        v255 = *(v37 + 4);
        v232 = *v37;
        *v37 = *v15;
        *(v37 + 4) = *(v15 + 4);
        *(v15 + 4) = v255;
        *v15 = v232;
        v84 = *(v59 + 9);
        if (v84 <= v255 && (v84 != v255 || *(v59 + 5) >= *v15))
        {
          goto LABEL_78;
        }

        v252 = *(v15 + 4);
        v229 = *v15;
        *v15 = *(v59 + 5);
        *(v15 + 4) = *(v59 + 9);
      }

      *(v59 + 9) = v252;
      *(v59 + 5) = v229;
LABEL_78:
      v256 = *(v11 + 4);
      v233 = *v11;
      v85 = *v15;
      *(v11 + 4) = *(v15 + 4);
      *v11 = v85;
      *(v15 + 4) = v256;
      *v15 = v233;
      goto LABEL_79;
    }

    v20 = *(v11 + 4);
    v21 = *(v15 + 4);
    if (v20 <= v21 && (v20 != v21 || *v11 >= *v15))
    {
      v29 = *(a2 - 1);
      if (v29 > v20 || v29 == v20 && *v8 < *v11)
      {
        v244 = *(v11 + 4);
        v221 = *v11;
        v30 = *v8;
        *(v11 + 4) = *(a2 - 1);
        *v11 = v30;
        *(a2 - 1) = v244;
        *v8 = v221;
        v31 = *(v11 + 4);
        v32 = *(v15 + 4);
        if (v31 > v32 || v31 == v32 && *v11 < *v15)
        {
          v245 = *(v15 + 4);
          v222 = *v15;
          v33 = *v11;
          *(v15 + 4) = *(v11 + 4);
          *v15 = v33;
          *(v11 + 4) = v245;
          *v11 = v222;
        }
      }

      goto LABEL_79;
    }

    v22 = *(a2 - 1);
    if (v22 > v20 || v22 == v20 && *v8 < *v11)
    {
      v241 = *(v15 + 4);
      v218 = *v15;
      v23 = *v8;
      *(v15 + 4) = *(a2 - 1);
      *v15 = v23;
    }

    else
    {
      v248 = *(v15 + 4);
      v225 = *v15;
      v51 = *v11;
      *(v15 + 4) = *(v11 + 4);
      *v15 = v51;
      *(v11 + 4) = v248;
      *v11 = v225;
      v52 = *(a2 - 1);
      if (v52 <= v248 && (v52 != v248 || *v8 >= *v11))
      {
        goto LABEL_79;
      }

      v241 = *(v11 + 4);
      v218 = *v11;
      v53 = *v8;
      *(v11 + 4) = *(a2 - 1);
      *v11 = v53;
    }

    *(a2 - 1) = v241;
    *v8 = v218;
LABEL_79:
    --a3;
    if (a4)
    {
      v86 = *v11;
      v87 = *(v11 + 4);
LABEL_85:
      for (i = v11 + 5; ; i += 5)
      {
        v90 = *(i + 4);
        if (v90 <= v87 && (v90 != v87 || *i >= v86))
        {
          break;
        }
      }

      if (i - 5 == v11)
      {
        v93 = a2;
        if (i < a2)
        {
          v95 = *(a2 - 1);
          v93 = (a2 - 5);
          if (v95 <= v87)
          {
            v92 = (a2 - 6);
            v93 = (a2 - 5);
            while (1)
            {
              v106 = (v92 + 1);
              if (v95 == v87)
              {
                if (*v106 < v86 || i >= v106)
                {
                  goto LABEL_96;
                }
              }

              else if (i >= v106)
              {
                break;
              }

              v93 -= 5;
              v105 = *v92;
              v92 -= 5;
              v95 = v105;
              if (v105 > v87)
              {
                goto LABEL_96;
              }
            }
          }
        }
      }

      else
      {
        v91 = *(a2 - 1);
        v92 = (a2 - 6);
        v93 = (a2 - 5);
        if (v91 <= v87)
        {
          do
          {
            if (v91 == v87 && *(v92 + 1) < v86)
            {
              break;
            }

            v94 = *v92;
            v92 -= 5;
            v91 = v94;
          }

          while (v94 <= v87);
LABEL_96:
          v93 = v92 + 1;
        }
      }

      v11 = i;
      if (i < v93)
      {
        v11 = i;
        v96 = v93;
        do
        {
          while (1)
          {
            v257 = *(v11 + 4);
            v234 = *v11;
            v97 = *v96;
            *(v11 + 4) = v96[4];
            *v11 = v97;
            v96[4] = v257;
            *v96 = v234;
            v98 = v11 + 5;
            do
            {
              do
              {
                v11 = v98;
                v99 = *(v98 + 4);
                v98 += 5;
              }

              while (v99 > v87);
            }

            while (v99 == v87 && *v11 < v86);
            v100 = *(v96 - 1);
            if (v100 <= v87)
            {
              break;
            }

            v96 -= 5;
            if (v11 >= v96)
            {
              goto LABEL_112;
            }
          }

          v101 = v96 - 6;
          do
          {
            if (v100 == v87 && *(v101 + 1) < v86)
            {
              break;
            }

            v102 = *v101;
            v101 -= 5;
            v100 = v102;
          }

          while (v102 <= v87);
          v96 = v101 + 1;
        }

        while (v11 < v96);
      }

LABEL_112:
      if (v11 - 5 != v7)
      {
        v103 = *(v11 - 5);
        *(v7 + 4) = *(v11 - 1);
        *v7 = v103;
      }

      *(v11 - 5) = v86;
      *(v11 - 1) = v87;
      if (i < v93)
      {
        goto LABEL_117;
      }

      v104 = sub_1AE7032F8(v7, v11 - 5);
      result = sub_1AE7032F8(v11, a2);
      if (result)
      {
        a2 = v11 - 5;
        if (v104)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v104)
      {
LABEL_117:
        result = sub_1AE701C44(v7, v11 - 5, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v88 = *(v11 - 1);
      v87 = *(v11 + 4);
      v86 = *v11;
      if (v88 > v87)
      {
        goto LABEL_85;
      }

      if (v88 == v87 && *(v11 - 5) < v86)
      {
        v87 = *(v11 - 1);
        goto LABEL_85;
      }

      v108 = *(a2 - 1);
      if (v87 > v108 || v87 == v108 && v86 < *v8)
      {
        v109 = *(v11 + 9);
        if (v87 <= v109)
        {
          v111 = (v11 + 14);
          do
          {
            if (v87 == v109 && v86 < *(v111 - 9))
            {
              break;
            }

            v112 = *v111;
            v111 += 5;
            v109 = v112;
          }

          while (v87 <= v112);
          v11 = (v111 - 9);
        }

        else
        {
          v11 += 5;
        }
      }

      else
      {
        for (v11 += 5; v11 < a2; v11 += 5)
        {
          v110 = *(v11 + 4);
          if (v87 > v110 || v87 == v110 && v86 < *v11)
          {
            break;
          }
        }
      }

      v113 = a2;
      if (v11 < a2)
      {
        for (j = (a2 - 6); v87 > v108 || v87 == v108 && v86 < *(j + 1); j -= 5)
        {
          v115 = *j;
          v108 = v115;
        }

        v113 = j + 1;
      }

      while (v11 < v113)
      {
        v258 = *(v11 + 4);
        v235 = *v11;
        v116 = *v113;
        *(v11 + 4) = v113[4];
        *v11 = v116;
        v113[4] = v258;
        *v113 = v235;
        v117 = *(v11 + 9);
        if (v87 <= v117)
        {
          v118 = (v11 + 14);
          do
          {
            if (v87 == v117 && v86 < *(v118 - 9))
            {
              break;
            }

            v119 = *v118;
            v118 += 5;
            v117 = v119;
          }

          while (v87 <= v119);
          v11 = (v118 - 9);
        }

        else
        {
          v11 += 5;
        }

        v120 = v113 - 5;
        do
        {
          do
          {
            v113 = v120;
            v121 = v120[4];
            v120 -= 5;
          }

          while (v87 > v121);
        }

        while (v87 == v121 && v86 < *v113);
      }

      if (v11 - 5 != v7)
      {
        v122 = *(v11 - 5);
        *(v7 + 4) = *(v11 - 1);
        *v7 = v122;
      }

      a4 = 0;
      *(v11 - 5) = v86;
      *(v11 - 1) = v87;
    }
  }

  v123 = *(v11 + 9);
  v124 = *(v11 + 4);
  if (v123 <= v124 && (v123 != v124 || *(v11 + 5) >= *v11))
  {
    v204 = *(a2 - 1);
    if (v204 <= v123 && (v204 != v123 || *v8 >= *(v11 + 5)))
    {
      return result;
    }

    v205 = *(v11 + 5);
    v206 = *(v11 + 9);
    v207 = *(a2 - 1);
    *(v11 + 5) = *v8;
    *(v11 + 9) = v207;
    *(a2 - 1) = v206;
    *v8 = v205;
LABEL_312:
    v208 = *(v11 + 9);
    v209 = *(v11 + 4);
    if (v208 > v209 || v208 == v209 && *(v11 + 5) < *v11)
    {
      v262 = *(v11 + 4);
      v239 = *v11;
      *v11 = *(v11 + 5);
      *(v11 + 4) = *(v11 + 9);
      *(v11 + 5) = v239;
      *(v11 + 9) = v262;
    }

    return result;
  }

  v125 = *(a2 - 1);
  if (v125 > v123 || v125 == v123 && *v8 < *(v11 + 5))
  {
    goto LABEL_224;
  }

  v259 = *(v11 + 4);
  v236 = *v11;
  *v11 = *(v11 + 5);
  *(v11 + 4) = *(v11 + 9);
  *(v11 + 5) = v236;
  *(v11 + 9) = v259;
  v126 = *(a2 - 1);
  v127 = *(v11 + 9);
  if (v126 > v127 || v126 == v127 && *v8 < *(v11 + 5))
  {
    v128 = *(v11 + 5);
    v129 = *(v11 + 9);
    v130 = *(a2 - 1);
    *(v11 + 5) = *v8;
    *(v11 + 9) = v130;
    goto LABEL_225;
  }

  return result;
}

int *sub_1AE7030B8(int *result, int *a2, int *a3, int *a4)
{
  v4 = *(a2 + 4);
  v5 = *(result + 4);
  if (v4 > v5 || v4 == v5 && *a2 < *result)
  {
    v6 = *(a3 + 4);
    if (v6 > v4 || v6 == v4 && *a3 < *a2)
    {
      v7 = *(result + 4);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
    }

    else
    {
      v19 = *(result + 4);
      v20 = *result;
      v21 = *(a2 + 4);
      *result = *a2;
      *(result + 4) = v21;
      *a2 = v20;
      *(a2 + 4) = v19;
      v22 = *(a3 + 4);
      v23 = *(a2 + 4);
      if (v22 <= v23 && (v22 != v23 || *a3 >= *a2))
      {
        goto LABEL_14;
      }

      v7 = *(a2 + 4);
      v8 = *a2;
      v24 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v24;
    }

    *a3 = v8;
    *(a3 + 4) = v7;
  }

  else
  {
    v10 = *(a3 + 4);
    if (v10 > v4 || v10 == v4 && *a3 < *a2)
    {
      v11 = *(a2 + 4);
      v12 = *a2;
      v13 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v13;
      *a3 = v12;
      *(a3 + 4) = v11;
      v14 = *(a2 + 4);
      v15 = *(result + 4);
      if (v14 > v15 || v14 == v15 && *a2 < *result)
      {
        v16 = *(result + 4);
        v17 = *result;
        v18 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v18;
        *a2 = v17;
        *(a2 + 4) = v16;
      }
    }
  }

LABEL_14:
  v25 = *(a4 + 4);
  v26 = *(a3 + 4);
  if (v25 > v26 || v25 == v26 && *a4 < *a3)
  {
    v27 = *(a3 + 4);
    v28 = *a3;
    v29 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v29;
    *a4 = v28;
    *(a4 + 4) = v27;
    v30 = *(a3 + 4);
    v31 = *(a2 + 4);
    if (v30 > v31 || v30 == v31 && *a3 < *a2)
    {
      v32 = *(a2 + 4);
      v33 = *a2;
      v34 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v34;
      *a3 = v33;
      *(a3 + 4) = v32;
      v35 = *(a2 + 4);
      v36 = *(result + 4);
      if (v35 > v36 || v35 == v36 && *a2 < *result)
      {
        v37 = *(result + 4);
        v38 = *result;
        v39 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v39;
        *a2 = v38;
        *(a2 + 4) = v37;
      }
    }
  }

  return result;
}

BOOL sub_1AE7032F8(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = a2 - 5;
        v26 = *(a1 + 9);
        v27 = *(a1 + 4);
        if (v26 <= v27 && (v26 != v27 || *(a1 + 5) >= *a1))
        {
          v38 = *(a2 - 1);
          if (v38 > v26 || v38 == v26 && *v3 < *(a1 + 5))
          {
            v39 = *(a1 + 9);
            v40 = *(a1 + 5);
            v41 = *(a2 - 1);
            *(a1 + 5) = *v3;
            *(a1 + 9) = v41;
            *v3 = v40;
            *(a2 - 1) = v39;
            v42 = *(a1 + 9);
            v43 = *(a1 + 4);
            if (v42 > v43 || v42 == v43 && *(a1 + 5) < *a1)
            {
              v44 = *(a1 + 4);
              v45 = *a1;
              *a1 = *(a1 + 5);
              *(a1 + 4) = *(a1 + 9);
              *(a1 + 5) = v45;
              *(a1 + 9) = v44;
            }
          }

          return 1;
        }

        v28 = *(a2 - 1);
        if (v28 <= v26 && (v28 != v26 || *v3 >= *(a1 + 5)))
        {
          v52 = *(a1 + 4);
          v53 = *a1;
          *a1 = *(a1 + 5);
          *(a1 + 4) = *(a1 + 9);
          *(a1 + 5) = v53;
          *(a1 + 9) = v52;
          v54 = *(a2 - 1);
          v55 = *(a1 + 9);
          if (v54 <= v55 && (v54 != v55 || *v3 >= *(a1 + 5)))
          {
            return 1;
          }

          v29 = *(a1 + 9);
          v30 = *(a1 + 5);
          v56 = *(a2 - 1);
          *(a1 + 5) = *v3;
          *(a1 + 9) = v56;
          goto LABEL_19;
        }

LABEL_18:
        v29 = *(a1 + 4);
        v30 = *a1;
        v31 = *(v3 + 4);
        *a1 = *v3;
        *(a1 + 4) = v31;
LABEL_19:
        *v3 = v30;
        *(v3 + 4) = v29;
        return 1;
      case 4:
        sub_1AE7030B8(a1, (a1 + 5), (a1 + 10), (a2 - 5));
        return 1;
      case 5:
        v6 = a2 - 5;
        sub_1AE7030B8(a1, (a1 + 5), (a1 + 10), (a1 + 15));
        v9 = *(a2 - 1);
        v10 = *(a1 + 19);
        if (v9 > v10 || v9 == v10 && *v6 < *(a1 + 15))
        {
          v11 = *(a1 + 19);
          v12 = *(a1 + 15);
          v13 = *(v6 + 4);
          *(a1 + 15) = *v6;
          *(a1 + 19) = v13;
          *v6 = v12;
          *(v6 + 4) = v11;
          v14 = *(a1 + 19);
          v15 = *(a1 + 14);
          if (v14 > v15 || v14 == v15 && *(a1 + 15) < *(a1 + 10))
          {
            v16 = *(a1 + 14);
            v17 = *(a1 + 10);
            *(a1 + 10) = *(a1 + 15);
            *(a1 + 14) = *(a1 + 19);
            *(a1 + 15) = v17;
            *(a1 + 19) = v16;
            v18 = *(a1 + 14);
            v19 = *(a1 + 9);
            if (v18 > v19 || v18 == v19 && *(a1 + 10) < *(a1 + 5))
            {
              v20 = *(a1 + 9);
              v21 = *(a1 + 5);
              *(a1 + 5) = *(a1 + 10);
              *(a1 + 9) = *(a1 + 14);
              *(a1 + 10) = v21;
              *(a1 + 14) = v20;
              v22 = *(a1 + 9);
              v23 = *(a1 + 4);
              if (v22 > v23 || v22 == v23 && *(a1 + 5) < *a1)
              {
                v24 = *(a1 + 4);
                v25 = *a1;
                *a1 = *(a1 + 5);
                *(a1 + 4) = *(a1 + 9);
                *(a1 + 5) = v25;
                *(a1 + 9) = v24;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = a2 - 5;
      v4 = *(a2 - 1);
      v5 = *(a1 + 4);
      if (v4 <= v5 && (v4 != v5 || *v3 >= *a1))
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  v32 = a1 + 10;
  v33 = *(a1 + 9);
  v34 = *(a1 + 4);
  if (v33 <= v34 && (v33 != v34 || *(a1 + 5) >= *a1))
  {
    v46 = *(a1 + 14);
    if (v46 > v33 || v46 == v33 && *v32 < *(a1 + 5))
    {
      v47 = *(a1 + 9);
      v48 = *(a1 + 5);
      *(a1 + 5) = *v32;
      *(a1 + 9) = *(a1 + 14);
      *v32 = v48;
      *(a1 + 14) = v47;
      v49 = *(a1 + 9);
      if (v49 > v34 || v49 == v34 && *(a1 + 5) < *a1)
      {
        v50 = *(a1 + 4);
        v51 = *a1;
        *a1 = *(a1 + 5);
        *(a1 + 4) = *(a1 + 9);
        *(a1 + 5) = v51;
        *(a1 + 9) = v50;
      }
    }

    goto LABEL_46;
  }

  v35 = *(a1 + 14);
  if (v35 > v33 || v35 == v33 && *v32 < *(a1 + 5))
  {
    v36 = *(a1 + 4);
    v37 = *a1;
    *a1 = *v32;
    *(a1 + 4) = *(a1 + 14);
  }

  else
  {
    v57 = *(a1 + 4);
    v58 = *a1;
    *a1 = *(a1 + 5);
    *(a1 + 4) = *(a1 + 9);
    *(a1 + 5) = v58;
    *(a1 + 9) = v57;
    v59 = *(a1 + 9);
    if (v35 <= v59 && (v35 != v59 || *v32 >= *(a1 + 5)))
    {
      goto LABEL_46;
    }

    v36 = *(a1 + 9);
    v37 = *(a1 + 5);
    *(a1 + 5) = *v32;
    *(a1 + 9) = *(a1 + 14);
  }

  *v32 = v37;
  *(a1 + 14) = v36;
LABEL_46:
  v60 = a1 + 15;
  if (a1 + 15 == a2)
  {
    return 1;
  }

  v61 = 0;
  v62 = 0;
  while (2)
  {
    v63 = *(v60 + 4);
    v64 = *(v32 + 4);
    if (v63 <= v64)
    {
      if (v63 != v64)
      {
        goto LABEL_50;
      }

      v65 = *v60;
      if (*v60 >= *v32)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v65 = *v60;
    }

    *v60 = *v32;
    *(v60 + 4) = *(v32 + 4);
    v66 = v61;
    while (1)
    {
      v67 = a1 + v66;
      v68 = *(a1 + v66 + 9);
      if (v63 <= v68)
      {
        break;
      }

LABEL_54:
      v32 -= 5;
      *(v67 + 10) = *(v67 + 5);
      *(v67 + 14) = *(v67 + 9);
      v66 -= 5;
      if (v66 == -10)
      {
        v32 = a1;
        goto LABEL_49;
      }
    }

    if (v63 == v68)
    {
      if (v65 >= *(v67 + 5))
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    }

    v32 = a1 + v66 + 10;
LABEL_49:
    *v32 = v65;
    *(v32 + 4) = v63;
    if (++v62 != 8)
    {
LABEL_50:
      v32 = v60;
      v61 += 5;
      v60 += 5;
      if (v60 == a2)
      {
        return 1;
      }

      continue;
    }

    return v60 + 5 == a2;
  }
}

BOOL sub_1AE703880(uint64_t a1, unsigned int a2, unint64_t a3, int a4, int a5, int a6, unsigned int *a7)
{
  if (!a4)
  {
    return 0;
  }

  v7 = HIDWORD(a3);
  v8 = a1 + a3;
  LODWORD(v9) = a4 + HIDWORD(a3) - 1;
  *a7 = HIDWORD(a3);
  if (a1)
  {
    v10 = a6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    if (!a2)
    {
LABEL_17:
      v9 = HIDWORD(a3);
      v17 = a2;
      goto LABEL_23;
    }

    *a7 = v9;
    return 0;
  }

  v12 = (HIDWORD(a3) * a5) & 0x1F;
  v13 = (v8 + 4 * ((HIDWORD(a3) * a5) >> 5));
  v14 = *v13 >> (BYTE4(a3) * a5);
  if ((v12 + a6) >= 0x21)
  {
    v14 |= v13[1] << -v12;
  }

  v15 = v14 & (0xFFFFFFFF >> -a6);
  if (v15 > a2)
  {
    return 0;
  }

  if (v15 == a2)
  {
    goto LABEL_17;
  }

  *a7 = v9;
  v18 = (v9 * a5) & 0x1F;
  v19 = (v8 + 4 * ((v9 * a5) >> 5));
  v20 = *v19 >> (v9 * a5);
  if ((v18 + a6) >= 0x21)
  {
    v20 |= v19[1] << -v18;
  }

  v17 = v20 & (0xFFFFFFFF >> -a6);
  if (v17 < a2)
  {
    return 0;
  }

  if (v17 == a2)
  {
    LODWORD(v7) = a4 + HIDWORD(a3) - 1;
  }

LABEL_23:
  if (v7 + 1 >= v9)
  {
    return v17 == a2;
  }

  while (1)
  {
    v21 = (v9 + v7) >> 1;
    *a7 = v21;
    if (v11)
    {
      break;
    }

    v22 = (v21 * a5) & 0x1F;
    v23 = (v8 + 4 * ((v21 * a5) >> 5));
    v24 = *v23 >> (v21 * a5);
    if ((v22 + a6) >= 0x21)
    {
      v24 |= v23[1] << -v22;
    }

    v17 = v24 & (0xFFFFFFFF >> -a6);
    if (v17 <= a2)
    {
      goto LABEL_32;
    }

    LODWORD(v9) = (v9 + v7) >> 1;
LABEL_26:
    if (v7 + 1 >= v9)
    {
      return v17 == a2;
    }
  }

  v17 = 0;
LABEL_32:
  if (v17 != a2)
  {
    if (v17 < a2)
    {
      LODWORD(v7) = (v9 + v7) >> 1;
    }

    goto LABEL_26;
  }

  v17 = a2;
  return v17 == a2;
}

uint64_t sub_1AE703A1C(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = 0;
  if (a1 && a4)
  {
    v7 = a3 + a5 * a2;
    v8 = (a1 + 4 * (v7 >> 5));
    v9 = *v8 >> v7;
    if ((v7 & 0x1F) + a4 >= 0x21)
    {
      v9 |= v8[1] << -(v7 & 0x1F);
    }

    return v9 & (0xFFFFFFFF >> -a4);
  }

  return result;
}

uint64_t sub_1AE703A74(uint64_t result)
{
  if (*(result + 72) != 1)
  {
    return result;
  }

  v1 = *(result + 56);
  v2 = *(result + 40);
  if (!v2 || v1 < 2)
  {
    return result;
  }

  v4 = *(result + 8);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v5 + v1) & 0x7FFF;
  }

  else
  {
    v6 = 0;
  }

  v74 = *(v4 + 3);
  v7 = v6 & 0x1F;
  v8 = *(v4 + 16) - (v6 & 0x1F);
  v9 = -1 << v8;
  v10 = *(v4 + 36);
  v11 = ((v6 >> 10) + 5 * v10 + 7) >> 3;
  v12 = (v6 >> 10) + 8;
  if (v10 <= 2)
  {
    v12 = 0;
  }

  v13 = v10 > 3;
  v14 = 2;
  if (v13)
  {
    v14 = v11;
  }

  v15 = (v6 >> 5) & 0x1F;
  v16 = v7 + v12 + 8;
  v17 = v5 + v2 + v14;
  if (v15)
  {
    v18 = v7 > 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    if (v5)
    {
      v19 = v15 * ~v9;
      v20 = v19 & 0x1F;
      v21 = (v17 + 4 * (v19 >> 5));
      v22 = *v21 >> v19;
      if ((v20 + v15) >= 0x21)
      {
        v22 |= v21[1] << -v20;
      }

      LODWORD(v23) = v22 & (0xFFFFFFFF >> -v15);
      *(result + 48) = v23;
    }

    else
    {
      LODWORD(v23) = 0;
      *(result + 48) = 0;
    }
  }

  else if (v7 == 1)
  {
    *(result + 48) = 0;
    if (v5)
    {
      v24 = 0;
      LODWORD(v23) = 0;
      if ((v74 + 1) > 1)
      {
        v25 = v74 + 1;
      }

      else
      {
        v25 = 1;
      }

      do
      {
        if ((*(v17 + 4 * (v24 >> 5)) >> v24))
        {
          LODWORD(v23) = v23 + 1;
          *(result + 48) = v23;
        }

        v24 += v16;
        --v25;
      }

      while (v25);
    }

    else
    {
      LODWORD(v23) = 0;
    }
  }

  else
  {
    LODWORD(v23) = *(result + 48);
  }

  v23 = v23;
  v26 = *(result + 16);
  v27 = *(result + 24);
  v28 = 0xCCCCCCCCCCCCCCCDLL * &v27[-v26];
  v29 = v23 - v28;
  if (v23 > v28)
  {
    v30 = *(result + 32);
    v73 = -1 << v8;
    if (0xCCCCCCCCCCCCCCCDLL * (v30 - v27) < v29)
    {
      v31 = 0xCCCCCCCCCCCCCCCDLL * (v30 - v26);
      if (2 * v31 > v23)
      {
        v23 = 2 * v31;
      }

      if (v31 >= 0x1999999999999999)
      {
        v23 = 0x3333333333333333;
      }

      if (v23 < 0x3333333333333334)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v56 = 5 * ((5 * v29 - 5) / 5) + 5;
    v57 = result;
    v58 = v18;
    v59 = v8;
    bzero(v27, v56);
    v8 = v59;
    result = v57;
    v60 = &v27[v56];
    v9 = v73;
    *(v57 + 24) = v60;
    if (!v58)
    {
      goto LABEL_64;
    }

    goto LABEL_44;
  }

  if (v23 < v28)
  {
    *(result + 24) = v26 + 5 * v23;
  }

  if (v18)
  {
LABEL_44:
    v32 = 0;
    v33 = 0;
    v34 = 0xFFFFFFFF >> -v15;
    v35 = v17 + (((v15 << v8) + 7) >> 3);
    while (1)
    {
      if (v33)
      {
        if (v5)
        {
          v36 = (v33 - 1) * v15;
          v37 = v36 & 0x1F;
          v38 = (v17 + 4 * (v36 >> 5));
          v39 = *v38 >> v36;
          if ((v37 + v15) >= 0x21)
          {
            v39 |= v38[1] << -v37;
          }

          v40 = v39 & v34;
          goto LABEL_54;
        }
      }

      else if (v5)
      {
        v40 = 0;
LABEL_54:
        v41 = (v33 * v15) & 0x1F;
        v42 = (v17 + 4 * ((v33 * v15) >> 5));
        v43 = *v42 >> (v33 * v15);
        if ((v41 + v15) >= 0x21)
        {
          v43 |= v42[1] << -v41;
        }

        v44 = v43 & v34;
        v45 = (v43 & v34) - v40;
        if (v44 > v40)
        {
          v46 = *(result + 16);
          v47 = v44 + v32 - v40;
          v48 = v16 * v40;
          do
          {
            v49 = (v35 + 4 * (v48 >> 5));
            v50 = *v49 >> v48;
            if ((v48 & 0x1F) + v7 >= 0x21)
            {
              v50 |= v49[1] << -(v48 & 0x1F);
            }

            v51 = v50 & (0xFFFFFFFF >> -v7) | (v33 << v7);
            v52 = v46 + 5 * v32;
            *v52 = v51;
            v53 = (v7 + v48) & 0x1F;
            v54 = (v35 + 4 * ((v7 + v48) >> 5));
            v55 = *v54 >> (v7 + v48);
            if (v53 >= 0x19)
            {
              v55 |= v54[1] << -v53;
            }

            *(v52 + 4) = v55;
            ++v32;
            v48 += v16;
            --v45;
          }

          while (v45);
          v32 = v47;
        }
      }

      if (++v33 == -v9)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_64:
  if (v7 == 1 && v5)
  {
    v61 = 0;
    v62 = 0;
    v63 = 1;
    if ((v74 + 1) > 1)
    {
      v64 = v74 + 1;
    }

    else
    {
      v64 = 1;
    }

    do
    {
      if ((*(v17 + 4 * ((v63 - 1) >> 5)) >> (v63 - 1)))
      {
        v65 = *(result + 16) + 5 * v61;
        *v65 = v62;
        v66 = (v17 + 4 * (v63 >> 5));
        v67 = *v66 >> v63;
        if ((v63 & 0x1F) >= 0x19)
        {
          v67 |= v66[1] << -(v63 & 0x1F);
        }

        *(v65 + 4) = v67;
        ++v61;
      }

      ++v62;
      v63 += v16;
    }

    while (v64 != v62);
  }

LABEL_74:
  v69 = *(result + 16);
  v68 = *(result + 24);
  v70 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v68 - v69));
  if (v68 == v69)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70;
  }

  v72 = *(result + 16);

  return sub_1AE701C44(v72, v68, v71, 1);
}

uint64_t sub_1AE704040(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 < 2)
  {
    return result;
  }

  v2 = *(result + 40);
  if (!v2)
  {
    return result;
  }

  v3 = *(result + 48);
  if (!v3)
  {
    return result;
  }

  v4 = *(result + 56);
  if (v4 < 2)
  {
    return result;
  }

  v5 = *(result + 8);
  v6 = *v5;
  v7 = *(v5 + 16);
  if (v1 + 1 >= *(v5 + 36))
  {
    v11 = v7 + 8;
  }

  else
  {
    v8 = (v6 + v4);
    v9 = *v8;
    if (v1 == 2)
    {
      v10 = v9 >> 15;
    }

    else
    {
      v12 = 5 * v1 + ((v9 >> 10) & 0x1F) + 5;
      v13 = v12 & 0x1F;
      v14 = &v8[v12 >> 5];
      v10 = *v14 >> v12;
      if (v13 >= 0x1C)
      {
        v10 |= v14[1] << -v13;
      }
    }

    v11 = v7 + (v10 & 0x1F) + 16;
  }

  v15 = *(result + 16);
  v16 = *(result + 24);
  v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 - v15);
  v18 = v3 - v17;
  if (v3 <= v17)
  {
    if (v3 < v17)
    {
      *(result + 24) = v15 + 5 * v3;
    }
  }

  else
  {
    v19 = *(result + 32);
    if (0xCCCCCCCCCCCCCCCDLL * (v19 - v16) < v18)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v19 - v15);
      if (2 * v20 > v3)
      {
        v3 = 2 * v20;
      }

      v21 = v20 >= 0x1999999999999999;
      v22 = 0x3333333333333333;
      if (!v21)
      {
        v22 = v3;
      }

      if (v22 < 0x3333333333333334)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v23 = result;
    bzero(*(result + 24), 5 * ((5 * v18 - 5) / 5) + 5);
    result = v23;
    *(v23 + 24) = v16 + 5 * ((5 * v18 - 5) / 5) + 5;
    v3 = *(v23 + 48);
    v15 = *(v23 + 16);
    if (!v3)
    {
      goto LABEL_35;
    }
  }

  v24 = v6 + v2;
  v25 = *(result + 44);
  if (v7)
  {
    v26 = (v15 + 4);
    v27 = v11 * v25;
    do
    {
      v28 = (v24 + 4 * (v27 >> 5));
      v29 = *v28 >> v27;
      if ((v27 & 0x1F) + v7 >= 0x21)
      {
        v29 |= v28[1] << -(v27 & 0x1F);
      }

      *(v26 - 1) = v29 & (0xFFFFFFFF >> -v7);
      v30 = (v7 + v27) & 0x1F;
      v31 = (v24 + 4 * ((v7 + v27) >> 5));
      v32 = *v31 >> (v7 + v27);
      if (v30 >= 0x19)
      {
        v32 |= v31[1] << -v30;
      }

      *v26 = v32;
      v26 += 5;
      v27 += v11;
      --v3;
    }

    while (v3);
  }

  else
  {
    v33 = (v15 + 4);
    v34 = v11 * v25;
    do
    {
      *(v33 - 1) = 0;
      v35 = (v24 + 4 * (v34 >> 5));
      v36 = *v35 >> v34;
      if ((v34 & 0x1F) >= 0x19)
      {
        v36 |= v35[1] << -(v34 & 0x1F);
      }

      *v33 = v36;
      v33 += 5;
      v34 += v11;
      --v3;
    }

    while (v3);
  }

LABEL_35:
  v37 = *(result + 24);
  v38 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v37 - v15));
  if (v37 == v15)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  return sub_1AE701C44(v15, v37, v39, 1);
}

uint64_t sub_1AE7043EC(uint64_t result)
{
  if (!*(result + 72))
  {
    return result;
  }

  v1 = *(result + 40);
  if (!v1)
  {
    return result;
  }

  v2 = *(result + 48);
  if (!v2)
  {
    return result;
  }

  v4 = *(result + 8);
  v3 = *(result + 16);
  v5 = *(v4 + 10);
  v6 = *(v4 + 48);
  v7 = *v4;
  v8 = *(result + 24);
  v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 - v3);
  v10 = v2 - v9;
  if (v2 <= v9)
  {
    if (v2 < v9)
    {
      *(result + 24) = v3 + 5 * v2;
    }
  }

  else
  {
    v11 = *(result + 32);
    if (0xCCCCCCCCCCCCCCCDLL * (v11 - v8) < v10)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 - v3);
      if (2 * v12 > v2)
      {
        v2 = 2 * v12;
      }

      v13 = v12 >= 0x1999999999999999;
      v14 = 0x3333333333333333;
      if (!v13)
      {
        v14 = v2;
      }

      if (v14 < 0x3333333333333334)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v15 = result;
    bzero(*(result + 24), 5 * ((5 * v10 - 5) / 5) + 5);
    result = v15;
    *(v15 + 24) = v8 + 5 * ((5 * v10 - 5) / 5) + 5;
    v2 = *(v15 + 48);
    v3 = *(v15 + 16);
    if (!v2)
    {
      goto LABEL_25;
    }
  }

  v16 = v6 + 8;
  v17 = v7 + v1;
  v18 = *(result + 44);
  if (v6)
  {
    v19 = (v3 + 4);
    v20 = v18 * v16;
    do
    {
      v21 = (v17 + 4 * (v20 >> 5));
      v22 = *v21 >> v20;
      if ((v20 & 0x1F) + v6 >= 0x21)
      {
        v22 |= v21[1] << -(v20 & 0x1F);
      }

      *(v19 - 1) = (v22 & (0xFFFFFFFF >> -v6)) + v5;
      v23 = (v6 + v20) & 0x1F;
      v24 = (v17 + 4 * ((v6 + v20) >> 5));
      v25 = *v24 >> (v6 + v20);
      if (v23 >= 0x19)
      {
        v25 |= v24[1] << -v23;
      }

      *v19 = v25;
      v19 += 5;
      v20 += v16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v26 = v18 * v16;
    v27 = (v3 + 4);
    do
    {
      *(v27 - 1) = v5;
      *v27 = *(v17 + 4 * (v26 >> 5)) >> (v26 & 0x18);
      v27 += 5;
      v26 += v16;
      --v2;
    }

    while (v2);
  }

LABEL_25:
  v28 = *(result + 24);
  v29 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v28 - v3));
  if (v28 == v3)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  return sub_1AE701C44(v3, v28, v30, 1);
}

uint64_t sub_1AE7048D0(uint64_t *a1, unsigned int *a2, unsigned int a3, _BYTE *a4)
{
  v4 = a1;
  v62 = 0;
  v61 = 0;
  v5 = *a1;
  v6 = *(v5 + 32);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      if (a3 >= 2 && *(v5 + 36) >= a3)
      {
        v27 = a2[a3 - 1];
        if (*(v5 + 40) <= v27 && v27 <= *(v5 + 44))
        {
          v28 = 0;
          v29 = *(v5 + 12);
          do
          {
            v30 = a2[v28];
            v31 = v28 + 2;
            ++v28;
          }

          while (v30 <= v29 && v31 < a3);
          if (v30 <= v29)
          {
            v33 = a4;
            v34 = v4;
            v35 = a2;
            v36 = a3;
            v37 = sub_1AE7057B4(v5, a2, a3, &v63);
            a4 = v33;
            if (v37)
            {
              v38 = *v34;
              v39 = v35[v36 - 1];
              v40 = v63;
              v41 = v64;
              v42 = *(*v34 + 48);
              v43 = v42 + 8;
              v65 = 0;
              v44 = *v38;
              v45 = sub_1AE703880(*v38, v39 - *(v38 + 10), v63, v64, v42 + 8, v42, &v65);
              a4 = v33;
              if (v33 && v45)
              {
                v46 = (v43 * v41 + 7) >> 3;
                v47 = (v42 + v65 * v43) >> 3;
                if ((v42 + v65 * v43) >> 3 >= v46)
                {
                  LOBYTE(v50) = 0;
                }

                else
                {
                  v48 = v44 + v40;
                  v49 = (v42 + v65 * v43) & 7;
                  v50 = *(v48 + v47) >> ((v42 + v65 * v43) & 7);
                  v51 = v47 + 1;
                  if (((v42 + v65 * v43) & 7) != 0 && v51 < v46)
                  {
                    do
                    {
                      if (v49 >= 8)
                      {
                        v53 = 8;
                      }

                      else
                      {
                        v53 = v49;
                      }

                      v50 |= ((0xFFu >> (8 - v53)) & *(v48 + v51)) << (8 - v49);
                      v49 -= v53;
                      if (!v49)
                      {
                        break;
                      }

                      ++v51;
                    }

                    while (v51 < v46);
                  }
                }

                *v33 = v50;
                v33[1] = 0;
              }

              if (v45)
              {
                return 0;
              }
            }
          }
        }
      }

      goto LABEL_76;
    }

    if (v6 != 5 || a3 == 0)
    {
      goto LABEL_76;
    }

    if (a3 != 1)
    {
      goto LABEL_62;
    }

    if (sub_1AE705AD8(v5, *a2, 0, a4))
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 != 3 || a3 == 0)
      {
        goto LABEL_76;
      }

      if (a3 == 1)
      {
        if (*(v5 + 12) >= *a2)
        {
          v8 = *v5 + 6 * *a2;
          v10 = *(v8 + 7);
          v9 = v8 + 7;
          if (v10)
          {
            result = 0;
            if (a4)
            {
              *a4 = *(v9 + 4);
            }

            return result;
          }
        }

        return 2;
      }

LABEL_62:
      if (*(v5 + 36) >= a3)
      {
        v54 = a4;
        v55 = v4;
        v56 = a2;
        v57 = a3;
        v58 = sub_1AE704F44(v5, a2, a3, &v63, &v62, &v61);
        a4 = v54;
        if (v58)
        {
          if (sub_1AE7050D4(*v55, v56[v57 - 1], v57, v63, v64, v62, 0, v54))
          {
            return 0;
          }

          if (v54)
          {
            *v54 = 0;
            v54[1] = v61;
          }

          return 1;
        }
      }

      goto LABEL_76;
    }

    LOWORD(v63) = 0;
    v13 = *(v5 + 36);
    v14 = a3 - 1;
    v15 = a3 - 1 < v13;
    if (a3 - 1 < v13 && a3 >= 2)
    {
      v17 = *(v5 + 12);
      v18 = 2;
      v19 = a2;
      do
      {
        v20 = *v19++;
        v15 = v20 <= v17;
      }

      while (v20 <= v17 && v18++ < a3);
    }

    if (!v15)
    {
      goto LABEL_76;
    }

    if (a2[v14] > *(v5 + 12) || (v22 = a4, v23 = v4, v24 = a2, v25 = a3, v26 = sub_1AE704C6C(v5, a2, a3, &v63), a2 = v24, a3 = v25, a4 = v22, v4 = v23, !v26))
    {
      if (a3 >= 2)
      {
        v59 = a4;
        v60 = sub_1AE704C6C(*v4, a2, v14, &v63);
        a4 = v59;
        if (v60)
        {
          if (v59)
          {
            *v59 = 0;
            v59[1] = BYTE1(v63);
          }

          return 1;
        }
      }

LABEL_76:
      if (a4)
      {
        *a4 = 0;
      }

      return 2;
    }

    result = 0;
    if (v22)
    {
      *v22 = v63;
    }
  }

  return result;
}

uint64_t sub_1AE704C6C(uint64_t *a1, _DWORD *a2, int a3, _BYTE *a4)
{
  v4 = *a1 + 20 * (a3 - 1);
  v6 = *(v4 + 7);
  v5 = v4 + 7;
  if (!v6 || !*(v5 + 4) || !*(v5 + 8) || !*(v5 + 12))
  {
    return 0;
  }

  v8 = *(v5 + 17);
  v9 = 0xFFFFFFFF >> -v8;
  v10 = *(v5 + 18) + v8 + *(v5 + 19);
  v14 = cmph_search_packed();
  v15 = 0;
  v16 = *a1;
  v17 = *(v5 + 8);
  v18 = *(v5 + 12);
  v19 = v16 + v17;
  v20 = *(v5 + 17);
  v21 = (v10 * v14);
  v22 = v21 >> 3;
  if ((v21 >> 3) < v18 && v20 != 0)
  {
    v24 = 8 - (v21 & 7);
    if ((v21 & 7) + v20 <= 8)
    {
      v24 = *(v5 + 17);
    }

    v15 = (*(v19 + v22) >> (v21 & 7)) & (0xFFu >> (8 - v24));
    v25 = v20 - v24;
    if (v20 != v24 && v22 + 1 < v18)
    {
      v27 = v17 + v16 + 1;
      do
      {
        if (v25 >= 8)
        {
          v28 = 8;
        }

        else
        {
          v28 = v25;
        }

        v15 |= ((0xFFu >> (8 - v28)) & *(v27 + v22)) << (v20 - v25);
        v25 -= v28;
        if (!v25)
        {
          break;
        }

        v29 = v22 + 2;
        ++v22;
      }

      while (v29 < v18);
    }
  }

  if (v15 != (sub_1AE7014FC(a2, a3) & v9))
  {
    return 0;
  }

  if (a4)
  {
    v30 = *(v5 + 18);
    if (*(v5 + 18) && (v31 = (v21 + v20) >> 3, (v21 + v20) >> 3 < v18))
    {
      v32 = (v21 + v20) & 7;
      if ((v32 + v30) <= 8)
      {
        v33 = *(v5 + 18);
      }

      else
      {
        v33 = 8 - v32;
      }

      v34 = (*(v19 + v31) >> v32) & (0xFFu >> (8 - v33));
      v35 = v30 - v33;
      if (v35)
      {
        for (i = v31 + 1; i < v18; ++i)
        {
          if (v35 >= 8)
          {
            v37 = 8;
          }

          else
          {
            v37 = v35;
          }

          v34 |= ((0xFFu >> (8 - v37)) & *(v19 + i)) << (v30 - v35);
          v35 -= v37;
          if (!v35)
          {
            break;
          }
        }
      }
    }

    else
    {
      LOBYTE(v34) = 0;
    }

    *a4 = v34;
    v39 = *(v5 + 19);
    if (*(v5 + 19) && (v40 = (v21 + v20 + v30), v41 = v40 >> 3, (v40 >> 3) < v18))
    {
      v42 = v40 & 7;
      if ((v42 + v39) <= 8)
      {
        v43 = *(v5 + 19);
      }

      else
      {
        v43 = 8 - v42;
      }

      v44 = (*(v19 + v41) >> v42) & (0xFFu >> (8 - v43));
      v45 = v39 - v43;
      if (v45)
      {
        for (j = v41 + 1; j < v18; ++j)
        {
          if (v45 >= 8)
          {
            v47 = 8;
          }

          else
          {
            v47 = v45;
          }

          v44 |= ((0xFFu >> (8 - v47)) & *(v19 + j)) << (v39 - v45);
          v45 -= v47;
          if (!v45)
          {
            break;
          }
        }
      }
    }

    else
    {
      LOBYTE(v44) = 0;
    }

    a4[1] = v44;
  }

  return 1;
}

uint64_t sub_1AE704F44(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  if (a3 < 2 || *(a1 + 36) < a3)
  {
    return 0;
  }

  v28[10] = v6;
  v28[11] = v7;
  v27 = 0;
  if (a3 == 2)
  {
    v9 = *(a1 + 32);
    if (v9 == 5)
    {
      v22 = a5;
      v23 = a6;
      LODWORD(v28[0]) = 0;
      result = sub_1AE705AD8(a1, *a2, v28, &v25);
      if (!result)
      {
        return result;
      }

      v24 = v28[0];
      if (a4)
      {
        *(a4 + 8) = 0;
        *a4 = v24;
        *(a4 + 4) = 0;
      }

      v27 = v24;
      a6 = v23;
      a5 = v22;
      if (!v22)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v9 == 3)
    {
      if (*(a1 + 12) < *a2)
      {
        return 0;
      }

      v10 = *a1 + 6 * *a2;
      v13 = *(v10 + 7);
      v12 = v10 + 7;
      v11 = v13;
      if (!v13)
      {
        return 0;
      }

      v26 = *(v12 + 5);
      if (a4)
      {
        *(a4 + 8) = 0;
        *a4 = v11;
        *(a4 + 4) = 0;
      }

      v27 = v11;
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v15 = a5;
  v16 = a6;
  v18 = a3 - 1;
  result = sub_1AE704F44();
  if (!result)
  {
    return result;
  }

  result = sub_1AE7050D4(a1, a2[a3 - 2], v18, v28[0], v28[1], v27, a4, &v25);
  a6 = v16;
  a5 = v15;
  if (!result)
  {
    return result;
  }

  if (v15)
  {
LABEL_16:
    *a5 = v27;
  }

LABEL_17:
  if (a6)
  {
    *a6 = v26;
  }

  return 1;
}

uint64_t sub_1AE7050D4(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5, unsigned int a6, uint64_t a7, _BYTE *a8)
{
  result = 0;
  if (a3 < 2 || a6 < 2 || !a4)
  {
    return result;
  }

  v116 = v8;
  v117 = v9;
  v12 = *(a1 + 16);
  v13 = *a1;
  if (a3 != 2)
  {
    v14 = v12 + 8;
    v15 = *(a1 + 36);
    v112 = v12 + 8;
    if (v15 > a3)
    {
      if (v13)
      {
        v27 = (v13 + a6);
        v28 = *v27;
        if (a3 == 3)
        {
          v19 = (v28 >> 15) & 0x1F;
        }

        else
        {
          v46 = ((v28 >> 10) & 0x1F) + 5 * a3;
          v47 = &v27[v46 >> 5];
          v48 = *v47 >> v46;
          if ((v46 & 0x1F) >= 0x1C)
          {
            v48 |= v47[1] << -(v46 & 0x1F);
          }

          v19 = v48 & 0x1F;
        }
      }

      else
      {
        v19 = 0;
      }

      v16 = a3;
      v17 = a8;
      v18 = a7;
      v14 = v12 + v19 + 16;
    }

    else
    {
      v16 = a3;
      v17 = a8;
      v18 = a7;
      v19 = 0;
    }

    v114 = 0;
    v49 = a4;
    v51 = sub_1AE703880(v13, a2, a4, a5, v14, v12, &v114);
    result = 0;
    if (v51)
    {
      v52 = v18;
      if (v17)
      {
        if (v13)
        {
          v53 = v114 * v14;
          v54 = (v114 * v14 + v12) & 0x1F;
          v55 = (v13 + v49 + 4 * ((v114 * v14 + v12) >> 5));
          v56 = *v55 >> (v114 * v14 + v12);
          if (v54 >= 0x19)
          {
            v56 |= v55[1] << -v54;
          }

          *v17 = v56;
          v17[1] = 0;
          v57 = v17 + 1;
          if (v15 <= v16)
          {
            return 1;
          }

          v58 = v19 + v112 + v53;
          v59 = (v13 + v49 + 4 * (v58 >> 5));
          v60 = *v59 >> v58;
          if ((v58 & 0x1F) >= 0x19)
          {
            v60 |= v59[1] << -(v58 & 0x1F);
          }
        }

        else
        {
          *v17 = 0;
          v57 = v17 + 1;
          if (v15 <= v16)
          {
            return 1;
          }

          LOBYTE(v60) = 0;
        }

        *v57 = v60;
        if (!v18)
        {
          return 1;
        }
      }

      else
      {
        result = 1;
        if (!v18 || v15 <= v16)
        {
          return result;
        }
      }

      v18[1] = 0;
      *v18 = ((v14 * HIDWORD(a5) + 7) >> 3) + v49;
      if (v19)
      {
        v61 = v114;
        if (v114)
        {
          v62 = sub_1AE703A1C(v13 + v49, v14, v112, v19, v114 - 1);
          v52 = v18;
        }

        else
        {
          v62 = 0;
        }

        v52[1] = v62;
        if (v13)
        {
          v86 = v12 + 8;
          v87 = v112 + v61 * v14;
          v88 = v87 & 0x1F;
          v89 = (v13 + v49 + 4 * (v87 >> 5));
          v90 = *v89 >> v87;
          if ((v88 + v19) >= 0x21)
          {
            v90 |= v89[1] << -v88;
          }

          v91 = v90 & (0xFFFFFFFF >> -v19);
        }

        else
        {
          v91 = 0;
          v86 = v12 + 8;
        }

        v52[2] = v91 - v62;
        if (HIDWORD(a5))
        {
          v93 = v13 + v49;
          v94 = v52;
          v92 = sub_1AE703A1C(v93, v14, v86, v19, HIDWORD(a5) - 1);
          v52 = v94;
        }

        else
        {
          v92 = 0;
        }

        v52[3] = v92;
      }

      return 1;
    }

    return result;
  }

  v115 = 0;
  if (a4 < 2)
  {
    return 0;
  }

  v20 = (v13 + a4);
  if (v13)
  {
    v21 = *v20 & 0x1F;
    v22 = (*v20 >> 5) & 0x1F;
    v23 = (*v20 >> 10) & 0x1F;
    if (v23)
    {
      v24 = *v20 >> 20;
      if (v23 >= 0xD)
      {
        v24 = *v20 >> 20;
      }

      v25 = 0;
      v26 = v24 & (0xFFFFFFFF >> -v23);
      goto LABEL_19;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
  }

  v26 = 0;
  v25 = 1;
LABEL_19:
  v29 = *(a1 + 12);
  v30 = *(a1 + 36);
  LODWORD(a1) = (v23 + 5 * v30 + 7) >> 3;
  if (v30 <= 3)
  {
    a1 = 2;
  }

  else
  {
    a1 = a1;
  }

  v31 = v21 + 8;
  v32 = v21 + 8 + v23;
  v33 = v32 + 8;
  if (v30 >= 3)
  {
    v34 = v32 + 8;
  }

  else
  {
    v34 = v21 + 8;
  }

  v35 = a1 + a4;
  v36 = v20 + a1;
  if (v22 && v21 >= 2)
  {
    v37 = a2 >> v21;
    v38 = v12 - v21;
    v39 = ~(-1 << (v12 - v21));
    if (a2 >> v21 > v39)
    {
      return 0;
    }

    if (v37)
    {
      if (!v13)
      {
        return 0;
      }

      v40 = (v37 - 1) * v22;
      v41 = v40 & 0x1F;
      v42 = &v36[4 * (v40 >> 5)];
      v43 = *v42 >> v40;
      if ((v41 + v22) >= 0x21)
      {
        v43 |= *(v42 + 1) << -v41;
      }

      v44 = v43 & (0xFFFFFFFF >> -v22);
    }

    else
    {
      v44 = 0;
      if (!v13)
      {
        return 0;
      }
    }

    v63 = v37 * v22;
    v64 = v63 & 0x1F;
    v65 = &v36[4 * (v63 >> 5)];
    v66 = *v65 >> v63;
    if ((v64 + v22) >= 0x21)
    {
      v66 |= *(v65 + 1) << -v64;
    }

    v67 = 0xFFFFFFFF >> -v22;
    v68 = v66 & v67;
    v69 = v68 >= v44;
    v70 = v68 - v44;
    if (v70 == 0 || !v69)
    {
      return 0;
    }

    v109 = v25;
    v110 = v26;
    v111 = a7;
    v113 = a8;
    v71 = v22 * v39;
    v72 = (v22 * v39) >> 5;
    v73 = (v22 * v39) & 0x1F;
    v74 = &v36[4 * v72];
    v75 = *v74 >> v71;
    if ((v73 + v22) >= 0x21)
    {
      v75 |= *(v74 + 1) << -v73;
    }

    v107 = v75;
    v106 = ((v22 << v38) + 7) >> 3;
    v108 = (v35 + v106);
    if (!sub_1AE703880(v13, ~(-1 << v21) & a2, v108 | (v44 << 32), v70, v34, v21, &v115))
    {
      return 0;
    }

    v45 = v107 & v67;
    v36 += v106;
    a7 = v111;
    a8 = v113;
    v25 = v109;
    v26 = v110;
    v35 = v108;
  }

  else
  {
    if (v21 != 1)
    {
      return 0;
    }

    result = 0;
    v115 = a2;
    if (!v13 || v29 < a2)
    {
      return result;
    }

    if (((*&v36[4 * ((v34 * a2) >> 5)] >> (v34 * a2)) & 1) == 0)
    {
      return 0;
    }

    v45 = v29 + 1;
  }

  if (a8)
  {
    if (v36)
    {
      v76 = v115;
      v77 = v21 + v115 * v34;
      v78 = v77 & 0x1F;
      v79 = &v36[4 * (v77 >> 5)];
      v80 = *v79 >> v77;
      if (v78 >= 0x19)
      {
        v80 |= *(v79 + 1) << -v78;
      }

      *a8 = v80;
      a8[1] = 0;
      v81 = a8 + 1;
      if (v30 < 3)
      {
        return 1;
      }

      v82 = v32 + v76 * v33;
      v83 = v82 & 0x1F;
      v84 = &v36[4 * (v82 >> 5)];
      v85 = *v84 >> v82;
      if (v83 >= 0x19)
      {
        v85 |= *(v84 + 1) << -v83;
      }
    }

    else
    {
      *a8 = 0;
      v81 = a8 + 1;
      if (v30 < 3)
      {
        return 1;
      }

      LOBYTE(v85) = 0;
    }

    *v81 = v85;
    if (!a7)
    {
      return 1;
    }

    goto LABEL_94;
  }

  result = 1;
  if (a7 && v30 >= 3)
  {
LABEL_94:
    *(a7 + 8) = 0;
    *a7 = ((v45 * v34 + 7) >> 3) + v35;
    if ((v25 & 1) == 0)
    {
      v95 = v115;
      if (v115)
      {
        if (v36)
        {
          v96 = v31 + (v115 - 1) * v33;
          v97 = v96 & 0x1F;
          v98 = &v36[4 * (v96 >> 5)];
          v99 = *v98 >> v96;
          if (v97 + v23 >= 0x21)
          {
            v99 |= *(v98 + 1) << -v97;
          }

          v100 = v99 & (0xFFFFFFFF >> -v23);
          *(a7 + 4) = v100;
          goto LABEL_101;
        }

        v100 = 0;
        v101 = 0;
      }

      else
      {
        v100 = 0;
        v101 = 0;
        if (v36)
        {
LABEL_101:
          v102 = v31 + v95 * v33;
          v103 = v102 & 0x1F;
          v104 = &v36[4 * (v102 >> 5)];
          v105 = *v104 >> v102;
          if (v103 + v23 >= 0x21)
          {
            v105 |= *(v104 + 1) << -v103;
          }

          v101 = v105 & (0xFFFFFFFF >> -v23);
        }
      }

      *(a7 + 8) = v101 - v100;
      *(a7 + 12) = v26;
    }

    return 1;
  }

  return result;
}