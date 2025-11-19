void *sub_2438CE560(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v7);
  v4 = *(a1 + 16);
  v9 = 1;
  v10 = v4;
  v8 |= 3u;
  v5 = (*(**(a1 + 128) + 24))(*(a1 + 128));
  v8 |= 4u;
  v11 = v5;
  sub_2438CC90C(a2, v7);
  return sub_2438B35DC(v7);
}

void sub_2438CE5FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

void *sub_2438CE68C(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v7);
  v4 = sub_2438CBC64(*(a1 + 136));
  v5 = v8;
  v9 = v4;
  v10 = 0;
  v8 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v8 = v5 | 7;
    v11 = 1;
  }

  sub_2438CDBD8(a2, v7);
  return sub_2438B3E18(v7);
}

void sub_2438CE704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CE718(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 128) + 32);

  return v3();
}

uint64_t sub_2438CE79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2438CBCDC(a1, a2, a3, a4);
  *v6 = &unk_28569F918;
  v6[16] = 0;
  (*(*a3 + 16))(&v16, a3, 1);
  v7 = v16;
  v16 = 0;
  v14 = v7;
  sub_2438C255C(&v14, &v15);
  v8 = v15;
  v15 = 0;
  v9 = *(a1 + 128);
  *(a1 + 128) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

void sub_2438CE934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[16];
  v12[16] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_2438CC5D8(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CE9C8(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to LongVectorBatch");
LABEL_27:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1B88, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to IntegerColumnStatisticsImpl");
    goto LABEL_27;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = v12[12] + 8 * a3;
  if (*(v12 + 64) == 1)
  {
    v18 = v12[5] + a3;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  v19 = 0;
  do
  {
    *(v17 + v19) = *(v17 + 8 * v19);
    ++v19;
  }

  while (a4 != v19);
LABEL_10:
  (*(**(a1 + 128) + 16))(*(a1 + 128), v17, a4, v18);
  if (a4)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (!v18 || *(v18 + v20))
      {
        if (*(a1 + 80) == 1)
        {
          sub_2438C16E8(*(a1 + 88), *(v17 + 8 * v20));
        }

        ++v21;
        sub_2438ED160(v16, *(v17 + v20), 1);
      }

      ++v20;
    }

    while (a4 != v20);
  }

  else
  {
    v21 = 0;
  }

  result = (*(*v16 + 88))(v16, v21);
  if (v21 < a4)
  {
    v23 = *(*v16 + 104);

    return v23(v16, 1);
  }

  return result;
}

void *sub_2438CECA4(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v7);
  v4 = *(a1 + 16);
  v9 = 1;
  v10 = v4;
  v8 |= 3u;
  v5 = (*(**(a1 + 128) + 32))(*(a1 + 128));
  v8 |= 4u;
  v11 = v5;
  sub_2438CC90C(a2, v7);
  return sub_2438B35DC(v7);
}

void sub_2438CED40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

void *sub_2438CEDCC(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v6);
  v4 = v7;
  v8 = 0;
  v7 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v7 = v4 | 7;
    v9 = 1;
  }

  sub_2438CDBD8(a2, v6);
  return sub_2438B3E18(v6);
}

void sub_2438CEE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CEE50(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 128) + 40);

  return v3();
}

uint64_t sub_2438CEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2438CBCDC(a1, a2, a3, a4);
  *v6 = &unk_28569F9A8;
  v6[16] = 0;
  (*(*a3 + 16))(&v16, a3, 1);
  v7 = v16;
  v16 = 0;
  v14 = v7;
  sub_2438C28A4(&v14, &v15);
  v8 = v15;
  v15 = 0;
  v9 = *(a1 + 128);
  *(a1 + 128) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

void sub_2438CF06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[16];
  v12[16] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_2438CC5D8(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CF100(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to LongVectorBatch");
LABEL_28:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1A48, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to BooleanColumnStatisticsImpl");
    goto LABEL_28;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = v12[12] + 8 * a3;
  if (*(v12 + 64) == 1)
  {
    v18 = v12[5] + a3;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  v19 = 0;
  do
  {
    *(v17 + v19) = *(v17 + 8 * v19);
    ++v19;
  }

  while (a4 != v19);
LABEL_10:
  (*(**(a1 + 128) + 16))(*(a1 + 128), v17, a4, v18);
  if (a4)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (!v18 || *(v18 + v20))
      {
        if (*(a1 + 80) == 1)
        {
          sub_2438C16E8(*(a1 + 88), *(v17 + 8 * v20));
        }

        ++v21;
        if (*(v17 + v20))
        {
          ++v16[7];
        }
      }

      ++v20;
    }

    while (a4 != v20);
  }

  else
  {
    v21 = 0;
  }

  result = (*(*v16 + 64))(v16, v21);
  if (v21 < a4)
  {
    v23 = *(*v16 + 80);

    return v23(v16, 1);
  }

  return result;
}

void *sub_2438CF3E0(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v7);
  v4 = *(a1 + 16);
  v9 = 1;
  v10 = v4;
  v8 |= 3u;
  v5 = (*(**(a1 + 128) + 32))(*(a1 + 128));
  v8 |= 4u;
  v11 = v5;
  sub_2438CC90C(a2, v7);
  return sub_2438B35DC(v7);
}

void sub_2438CF47C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

void *sub_2438CF508(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v6);
  v4 = v7;
  v8 = 0;
  v7 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v7 = v4 | 7;
    v9 = 1;
  }

  sub_2438CDBD8(a2, v6);
  return sub_2438B3E18(v6);
}

void sub_2438CF578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CF58C(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 128) + 40);

  return v3();
}

_BYTE *sub_2438CF610(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_2438CBCDC(a1, a2, a3, a4);
  *v9 = &unk_28569FA38;
  *(v9 + 128) = a5;
  *(v9 + 136) = 0;
  v10 = (v9 + 136);
  v11 = sub_2438FF90C(a4);
  sub_2438DECF0(a1 + 144, v11);
  v12 = operator new(0x18uLL);
  (*(*a3 + 16))(&v18, a3, 1);
  v13 = v18;
  v18 = 0;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = v13;
  v14 = *v10;
  *v10 = v12;
  if (v14)
  {
    sub_2438D8770(v10, v14);
    v15 = v18;
    v18 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (a1[128])
  {
    v16 = 4;
  }

  else
  {
    v16 = 8;
  }

  sub_2438DECAC((a1 + 144), v16);
  if (a1[48] == 1)
  {
    (*(*a1 + 104))(a1);
  }

  return a1;
}

void sub_2438CF774(_Unwind_Exception *a1)
{
  operator delete(v3);
  sub_2438DF490(v1 + 18);
  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    sub_2438D8770(v2, v5);
  }

  sub_2438CC5D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CF7BC(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25A8, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to DoubleVectorBatch");
LABEL_34:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1B38, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to DoubleColumnStatisticsImpl");
    goto LABEL_34;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  if (*(v12 + 64) == 1)
  {
    v17 = (v12[5] + a3);
  }

  else
  {
    v17 = 0;
  }

  if (*(a1 + 128))
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  v31 = a4;
  v19 = 0;
  if (a4)
  {
    v20 = (v12[12] + 8 * a3);
    v21 = *(a1 + 160);
    v22 = v17;
    do
    {
      if (v17 && !*v22)
      {
        goto LABEL_26;
      }

      if (*(a1 + 128) == 1)
      {
        v23 = *v20;
        *&v23 = *v20;
        v24 = vmovn_s32(vshlq_s32(vdupq_lane_s32(*&v23, 0), xmmword_24398CE00));
        v21->i32[0] = vuzp1_s8(v24, v24).u32[0];
      }

      else
      {
        v25 = vld1q_dup_f64(v20);
        *v21 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_s64(v25, xmmword_24398CDD0), vshlq_s64(v25, xmmword_24398CDC0)), vuzp1q_s32(vshlq_s64(v25, xmmword_24398CDF0), vshlq_s64(v25, xmmword_24398CDE0))));
      }

      sub_2438AAED4(*(a1 + 136), v21, v18);
      if (*(a1 + 80) == 1)
      {
        sub_2438C195C(*(a1 + 88), *v20);
      }

      v26 = *v20;
      if (v16[17])
      {
        v27 = (v16 + 40);
        if (*(v16 + 5) <= v26)
        {
          v27 = (v16 + 48);
          if (*(v16 + 6) >= v26)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        *(v16 + 17) = 257;
        *(v16 + 6) = v26;
        v27 = (v16 + 40);
      }

      *v27 = v26;
LABEL_25:
      ++v19;
      *(v16 + 7) = v26 + *(v16 + 7);
LABEL_26:
      ++v20;
      ++v22;
      --a4;
    }

    while (a4);
  }

  result = (*(*v16 + 88))(v16, v19);
  if (v19 < v31)
  {
    v29 = *(*v16 + 104);

    return v29(v16, 1);
  }

  return result;
}

void *sub_2438CFB70(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v7);
  v4 = *(a1 + 16);
  v9 = 1;
  v10 = v4;
  v8 |= 3u;
  v5 = sub_2438AB014(*(a1 + 136));
  v8 |= 4u;
  v11 = v5;
  sub_2438CC90C(a2, v7);
  return sub_2438B35DC(v7);
}

void sub_2438CFBEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

void *sub_2438CFC58(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v6);
  v4 = v7;
  v8 = 0;
  v7 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v7 = v4 | 7;
    v9 = 1;
  }

  sub_2438CDBD8(a2, v6);
  return sub_2438B3E18(v6);
}

void sub_2438CFCC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438CFCDC(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);

  return sub_2438AB09C(v2, v3);
}

uint64_t sub_2438CFD40(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 16);
  v29 = a2;
  v30 = a3;
  v31 = v6;
  v7 = sub_2438D87DC(a1, &v29, &v29);
  if (v8)
  {
    sub_2438D8B38(__p, a3);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (v9 >= v10)
    {
      v12 = *(a1 + 24);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_243980874();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      v33 = a1 + 24;
      if (v16)
      {
        v17 = sub_2438D8BEC(a1 + 24, v16);
      }

      else
      {
        v17 = 0;
      }

      v18 = &v17[24 * v13];
      v19 = &v17[24 * v16];
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = 0;
      *v18 = *__p;
      *(v18 + 2) = v28;
      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      v11 = v18 + 24;
      v20 = *(a1 + 24);
      v21 = *(a1 + 32) - v20;
      v22 = &v18[-v21];
      memcpy(&v18[-v21], v20, v21);
      v23 = *(a1 + 24);
      *(a1 + 24) = v22;
      *(a1 + 32) = v11;
      v24 = *(a1 + 40);
      *(a1 + 40) = v19;
      v31 = v23;
      v32 = v24;
      v29 = v23;
      v30 = v23;
      sub_2438D8C34(&v29);
      v25 = __p[0];
      *(a1 + 32) = v11;
      if (v25)
      {
        __p[1] = v25;
        operator delete(v25);
        v11 = *(a1 + 32);
      }
    }

    else
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = *__p;
      v9[2] = v28;
      v11 = v9 + 3;
      *(a1 + 32) = v9 + 3;
    }

    memcpy(*(v11 - 3), a2, a3);
    *(v7 + 4) = *(*(a1 + 32) - 24);
    *(a1 + 48) += a3;
  }

  return *(v7 + 6);
}

void sub_2438CFF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438CFF1C(void *result, void *a2, uint64_t a3)
{
  v3 = result + 1;
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      sub_2438AAED4(a2, v4[4], v4[5]);
      result = (*(*a3 + 40))(a3, v4[5]);
      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v3);
  }

  return result;
}

void sub_2438CFFC8(void *a1, uint64_t a2)
{
  sub_2438D8CCC(__p, a1[2]);
  v4 = *a1;
  v5 = __p[0];
  if (*a1 != a1 + 1)
  {
    v6 = 0;
    do
    {
      v5[v4[6]] = v6;
      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      ++v6;
      v4 = v8;
    }

    while (v8 != a1 + 1);
  }

  v10 = *a2;
  v11 = *(a2 + 8) - *a2;
  if (v11)
  {
    v12 = v11 >> 3;
    do
    {
      *v10 = v5[*v10];
      ++v10;
      --v12;
    }

    while (v12);
  }

  else if (!v5)
  {
    return;
  }

  __p[1] = v5;
  operator delete(v5);
}

void sub_2438D0090(void *a1, void *a2)
{
  sub_2438C9994(a2, a1[2]);
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      *(*a2 + 8 * v4[6]) = v4 + 4;
      v5 = v4[1];
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
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != a1 + 1);
  }
}

uint64_t sub_2438D0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *sub_2438CBCDC(a1, a2, a3, a4) = &unk_28569FAC8;
  *(a1 + 128) = sub_2438FF784(a4);
  *(a1 + 132) = sub_2438FF8E0(a4) != 0;
  *(a1 + 136) = a3;
  v8 = sub_2438FF8F8(a4);
  *(a1 + 152) = 0u;
  *(a1 + 144) = v8;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 257) = 0u;
  *(a1 + 273) = sub_2438FF924(a4);
  *(a1 + 280) = sub_2438FF83C(a4);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  if ((*(*a2 + 32))(a2) == 8)
  {
    *(a1 + 272) = 1;
  }

  else if (*(a1 + 273))
  {
    sub_2438D0388(a1);
    goto LABEL_6;
  }

  *(a1 + 272) = 1;
  sub_2438D0734(a1);
LABEL_6:
  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  return a1;
}

void sub_2438D0294(_Unwind_Exception *a1)
{
  sub_2438D0970(v3);
  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    sub_2438D8770(v2, v6);
  }

  v7 = v1[22];
  v1[22] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[21];
  v1[21] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v4[1];
  v4[1] = 0;
  if (v9)
  {
    sub_2438D8770(v4 + 8, v9);
  }

  v10 = *v4;
  *v4 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_2438CC5D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D0388(uint64_t a1)
{
  (*(**(a1 + 136) + 16))(&v27);
  v2 = v27;
  v27 = 0;
  v25 = v2;
  v3 = *(a1 + 104);
  sub_2438EBFF0(&v25, 0, *(a1 + 128), *(a1 + 144), &v26);
  v4 = v26;
  v26 = 0;
  v5 = *(a1 + 168);
  *(a1 + 168) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = v26;
    v26 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = v25;
  v25 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  (*(**(a1 + 136) + 16))(&v26);
  v8 = v26;
  v26 = 0;
  v23 = v8;
  v9 = *(a1 + 104);
  sub_2438EBFF0(&v23, 0, *(a1 + 128), *(a1 + 144), &v24);
  v10 = v24;
  v24 = 0;
  v11 = *(a1 + 176);
  *(a1 + 176) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v24;
    v24 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = operator new(0x18uLL);
  (*(**(a1 + 136) + 16))(&v22);
  v15 = v22;
  v22 = 0;
  v14[1] = 0;
  v14[2] = 0;
  *v14 = v15;
  v18 = *(a1 + 184);
  v17 = (a1 + 184);
  v16 = v18;
  *v17 = v14;
  if (v18)
  {
    sub_2438D8770(v17, v16);
    v19 = v22;
    v22 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v26;
  v26 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2438D0680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  v16 = *(v14 - 24);
  *(v14 - 24) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2438D0734(uint64_t a1)
{
  (*(**(a1 + 136) + 16))(&v18);
  v2 = v18;
  v18 = 0;
  v16 = v2;
  v3 = *(a1 + 104);
  sub_2438EBFF0(&v16, 0, *(a1 + 128), *(a1 + 144), &v17);
  v4 = v17;
  v17 = 0;
  v5 = *(a1 + 152);
  *(a1 + 152) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = v17;
    v17 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = v16;
  v16 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = operator new(0x18uLL);
  (*(**(a1 + 136) + 16))(&v15);
  v9 = v15;
  v15 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = v9;
  v12 = *(a1 + 160);
  v11 = (a1 + 160);
  v10 = v12;
  *v11 = v8;
  if (v12)
  {
    sub_2438D8770(v11, v10);
    v13 = v15;
    v15 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2438D090C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2438D0970(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 24);
  sub_2438D7A2C(&v4);
  sub_2438D7A80(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_2438D09C8(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25C0, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringVectorBatch");
LABEL_25:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1BD8, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringColumnStatisticsImpl");
    goto LABEL_25;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = (v12[17] + 8 * a3);
  if (*(v12 + 64) == 1)
  {
    v18 = (v12[5] + a3);
  }

  else
  {
    v18 = 0;
  }

  v19 = v12[12];
  if ((*(a1 + 273) & 1) == 0)
  {
    (*(**(a1 + 152) + 16))(*(a1 + 152), v12[17] + 8 * a3, a4, v18);
  }

  v20 = 0;
  if (a4)
  {
    v21 = v18;
    v22 = a4;
    v23 = (v19 + 8 * a3);
    do
    {
      if (!v18 || *v21)
      {
        v24 = *v17;
        if (*(a1 + 273) == 1)
        {
          v27 = sub_2438CFD40(a1 + 192, *v23, *v17);
          sub_2439867B8((a1 + 248), &v27);
        }

        else
        {
          sub_2438AAED4(*(a1 + 160), *v23, *v17);
        }

        if (*(a1 + 80) == 1)
        {
          sub_2438C1634(*(a1 + 88), *v23, v24);
        }

        sub_2438D0CCC(v16, *v23, v24);
        ++v20;
      }

      ++v23;
      ++v17;
      ++v21;
      --v22;
    }

    while (v22);
  }

  result = (*(*v16 + 88))(v16, v20);
  if (v20 < a4)
  {
    return (*(*v16 + 104))(v16, 1);
  }

  return result;
}

void sub_2438D0CCC(uint64_t a1, char *__src, size_t a3)
{
  v3 = a3;
  if (__src)
  {
    if (*(a1 + 17))
    {
      v6 = *(a1 + 63);
      if ((v6 & 0x8000000000000000) != 0)
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
      }

      else
      {
        v7 = (a1 + 40);
        v8 = *(a1 + 63);
      }

      if (v8 < a3)
      {
        a3 = v8;
      }

      v9 = strncmp(v7, __src, a3);
      if (v9 > 0)
      {
        goto LABEL_11;
      }

      if (!v9)
      {
        if ((v6 & 0x80000000) != 0)
        {
          v6 = *(a1 + 48);
        }

        if (v6 > v3)
        {
LABEL_11:
          sub_2438D7BFC(__p, __src, &__src[v3], v3);
          sub_2438D7AD4(a1, __p);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v10 = *(a1 + 87);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 72);
      }

      else
      {
        v11 = (a1 + 64);
        v12 = *(a1 + 87);
      }

      if (v12 >= v3)
      {
        v13 = v3;
      }

      else
      {
        v13 = v12;
      }

      v14 = strncmp(v11, __src, v13);
      if (v14 < 0)
      {
        goto LABEL_45;
      }

      if (!v14)
      {
        if ((v10 & 0x80000000) != 0)
        {
          v10 = *(a1 + 72);
        }

        if (v10 < v3)
        {
LABEL_45:
          sub_2438D7BFC(v16, __src, &__src[v3], v3);
          sub_2438D7B68(a1, v16);
          if (v17 < 0)
          {
            v15 = v16[0];
LABEL_41:
            operator delete(v15);
          }
        }
      }
    }

    else
    {
      sub_2438D7BFC(&v24, __src, &__src[a3], a3);
      if (SHIBYTE(v25) < 0)
      {
        sub_2438BF99C(__dst, v24, *(&v24 + 1));
      }

      else
      {
        *__dst = v24;
        v23 = v25;
      }

      sub_2438D7AD4(a1, __dst);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        sub_2438BF99C(v20, v24, *(&v24 + 1));
      }

      else
      {
        *v20 = v24;
        v21 = v25;
      }

      sub_2438D7B68(a1, v20);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v25) < 0)
      {
        v15 = v24;
        goto LABEL_41;
      }
    }
  }

  *(a1 + 24) += v3;
}

void sub_2438D0EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438D0F24(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  if (*(a1 + 273) == 1)
  {
    sub_2438B3548(v25);
    v4 = *(a1 + 16);
    v27 = 1;
    v28 = v4;
    v26 |= 3u;
    v5 = (*(**(a1 + 168) + 24))(*(a1 + 168));
    v26 |= 4u;
    v29 = v5;
    sub_2438CC90C(a2, v25);
    sub_2438B3548(v20);
    v6 = *(a1 + 16);
    v22 = 3;
    v23 = v6;
    v21 |= 3u;
    v7 = sub_2438AB014(*(a1 + 184));
    v21 |= 4u;
    v24 = v7;
    sub_2438CC90C(a2, v20);
    sub_2438B3548(v15);
    v8 = *(a1 + 16);
    v17 = 2;
    v18 = v8;
    v16 |= 3u;
    v9 = (*(**(a1 + 176) + 24))(*(a1 + 176));
    v16 |= 4u;
    v19 = v9;
    sub_2438CC90C(a2, v15);
    sub_2438B35DC(v15);
  }

  else
  {
    sub_2438B3548(v25);
    v10 = *(a1 + 16);
    v27 = 2;
    v28 = v10;
    v26 |= 3u;
    v11 = (*(**(a1 + 152) + 24))(*(a1 + 152));
    v26 |= 4u;
    v29 = v11;
    sub_2438CC90C(a2, v25);
    sub_2438B3548(v20);
    v12 = *(a1 + 16);
    v22 = 1;
    v23 = v12;
    v21 |= 3u;
    v13 = sub_2438AB014(*(a1 + 160));
    v21 |= 4u;
    v24 = v13;
    sub_2438CC90C(a2, v20);
  }

  sub_2438B35DC(v20);
  return sub_2438B35DC(v25);
}

void sub_2438D112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438B35DC(va);
  sub_2438B35DC((v7 - 56));
  _Unwind_Resume(a1);
}

unint64_t sub_2438D1174(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v3 = v2;
  if (*(a1 + 273))
  {
    v4 = *(a1 + 256);
    if (*(a1 + 132) == 1)
    {
      return (*(a1 + 240) + v2 + 4 * *(a1 + 208) + ((v4 - *(a1 + 248)) >> 1)) / 3uLL;
    }

    else
    {
      return *(a1 + 240) + v2 + 4 * *(a1 + 208) + ((v4 - *(a1 + 248)) >> 1);
    }
  }

  else
  {
    v6 = (*(**(*(a1 + 152) + 8) + 64))(*(*(a1 + 152) + 8));
    return v6 + v3 + sub_2438AAFEC(*(a1 + 160));
  }
}

void *sub_2438D124C(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v13);
  v4 = *(a1 + 128);
  v5 = v4 == 0;
  v6 = v4 != 0;
  v7 = v14;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = 2 * v6;
  if (*(a1 + 273))
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + 208);
  v15 = v10;
  v16 = v11;
  v14 |= 3u;
  if (*(a1 + 80))
  {
    v14 = v7 | 7;
    v17 = 1;
  }

  sub_2438CDBD8(a2, v13);
  return sub_2438B3E18(v13);
}

void sub_2438D12E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

void sub_2438D12F8(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  if (*(a1 + 273))
  {
    if (*(a1 + 48) == 1)
    {
      v4 = (*(a1 + 256) - *(a1 + 248)) >> 3;
      sub_2439867B8((a1 + 288), &v4);
    }
  }

  else
  {
    sub_2438AB09C(*(a1 + 160), *(a1 + 72));
    v2 = *(a1 + 72);
    v3 = *(**(a1 + 152) + 32);

    v3();
  }
}

uint64_t sub_2438D13D0(uint64_t a1)
{
  if (*(a1 + 273) == 1 && (*(a1 + 272) & 1) == 0)
  {
    v2 = *(a1 + 280) * ((*(a1 + 256) - *(a1 + 248)) >> 3);
    v3 = *(a1 + 208);
    *(a1 + 272) = 1;
    *(a1 + 273) = v3 <= v2;
    if (v3 > v2)
    {
      sub_2438D1458(a1);
    }
  }

  return sub_2438CCB20(a1);
}

void sub_2438D1458(uint64_t a1)
{
  sub_2438D0734(a1);
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 64);
    __p = &unk_28569FF48;
    v7 = v2;
    sub_2438AB09C(*(a1 + 160), &__p);
    (*(**(a1 + 152) + 32))(*(a1 + 152), &__p);
    nullsub_1(&__p);
  }

  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_2438D0090((a1 + 192), &__p);
  v3 = *(a1 + 248);
  if (*(a1 + 256) != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(__p + *(v3 + 8 * v4));
      sub_2438AAED4(*(a1 + 160), *v5, *(v5 + 8));
      (*(**(a1 + 152) + 40))(*(a1 + 152), *(v5 + 8));
      ++v4;
      v3 = *(a1 + 248);
    }

    while (v4 != (*(a1 + 256) - v3) >> 3);
  }

  sub_2438D1630(a1);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_2438D1590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438D15C0(uint64_t a1)
{
  v1 = a1;
  sub_2438CCF70(a1);
  *(v1 + 240) = 0;
  sub_243987D14((v1 + 216));
  v2 = *(v1 + 200);
  v1 += 200;
  sub_2438D7A80(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
  sub_2438C99C4((v1 + 48), 0);
  *(v1 + 96) = *(v1 + 88);
  v3 = 0;
  sub_2439867B8((v1 + 88), &v3);
}

void sub_2438D1630(void *a1)
{
  v2 = a1[21];
  a1[21] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[22];
  a1[22] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[23];
  a1[23] = 0;
  if (v4)
  {
    sub_2438D8770(a1 + 184, v4);
  }

  a1[30] = 0;
  sub_243987D14(a1 + 27);
  v6 = a1[25];
  v5 = a1 + 25;
  sub_2438D7A80((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  v5[7] = v5[6];
  v5[12] = v5[11];
}

void sub_2438D16F4(uint64_t a1)
{
  if (*(a1 + 273) == 1)
  {
    if ((*(a1 + 272) & 1) != 0 || (v2 = *(a1 + 280) * ((*(a1 + 256) - *(a1 + 248)) >> 3), v3 = *(a1 + 208), *(a1 + 272) = 1, (*(a1 + 273) = v3 <= v2) != 0))
    {
      sub_2438CFF1C((a1 + 192), *(a1 + 184), *(a1 + 176));
      sub_2438CFFC8((a1 + 192), a1 + 248);
      v4 = *(a1 + 248);
      if (*(a1 + 48) == 1)
      {
        v5 = *(a1 + 288);
        if (*(a1 + 296) == v5)
        {
          v7 = 0;
          v13 = *(a1 + 248);
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
          do
          {
            v9 = v7;
            v7 = *(v5 + 8 * v8);
            (*(**(a1 + 168) + 16))(*(a1 + 168), v4 + 8 * v9, v7 - v9, 0);
            v10 = *(a1 + 56);
            v11 = (a1 + 64);
            if (*(v10 + 32) > v8)
            {
              v11 = (*(v10 + 40) + (v6 >> 29) + 8);
            }

            v12 = *v11;
            v17[0] = &unk_28569FF48;
            v17[1] = v12;
            (*(**(a1 + 168) + 32))(*(a1 + 168), v17);
            nullsub_1(v17);
            ++v8;
            v5 = *(a1 + 288);
            v6 += 0x100000000;
          }

          while (v8 < (*(a1 + 296) - v5) >> 3);
          v13 = *(a1 + 248);
        }

        (*(**(a1 + 168) + 16))(*(a1 + 168), v4 + 8 * v7, ((*(a1 + 256) - v13) >> 3) - v7, 0);
      }

      else
      {
        v14 = (*(a1 + 256) - v4) >> 3;
        v15 = *(**(a1 + 168) + 16);
        v16 = *(a1 + 248);

        v15();
      }
    }

    else
    {

      sub_2438D1458(a1);
    }
  }
}

uint64_t sub_2438D198C(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25C0, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringVectorBatch");
LABEL_41:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1BD8, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringColumnStatisticsImpl");
    goto LABEL_41;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = v12[17] + 8 * a3;
  if (*(v12 + 64) == 1)
  {
    v18 = v12[5] + a3;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
  if (a4)
  {
    v20 = 0;
    v21 = v12[12] + 8 * a3;
    v38 = v18;
    do
    {
      if (!v18 || *(v18 + v20))
      {
        v22 = *(v17 + 8 * v20);
        v23 = *(v21 + 8 * v20);
        v24 = 0;
        if (v22)
        {
          v25 = *(v21 + 8 * v20);
          v26 = *(v17 + 8 * v20);
          do
          {
            v27 = *v25++;
            if ((v27 & 0xC0) != 0x80)
            {
              ++v24;
            }

            --v26;
          }

          while (v26);
        }

        v28 = *(a1 + 312);
        if (v24 >= v28)
        {
          if (v22 > v28)
          {
            v34 = 0;
            v35 = 0;
            while (1)
            {
              if ((v23[v34] & 0xC0) != 0x80)
              {
                ++v35;
              }

              if (v35 > v28)
              {
                break;
              }

              if (v22 == ++v34)
              {
                goto LABEL_26;
              }
            }

            v22 = v34;
          }

LABEL_26:
          *(v17 + 8 * v20) = v22;
        }

        else
        {
          v29 = v19;
          v30 = v21;
          v31 = v16;
          v32 = a4;
          v33 = *(a1 + 336);
          *(v17 + 8 * v20) = v22 - v24 + v28;
          memcpy(v33, v23, v22);
          memset((*(a1 + 336) + v22), 32, *(v17 + 8 * v20) - v22);
          v23 = v33;
          a4 = v32;
          v16 = v31;
          v21 = v30;
          v19 = v29;
        }

        if (*(a1 + 273) == 1)
        {
          v39 = sub_2438CFD40(a1 + 192, v23, *(v17 + 8 * v20));
          sub_2439867B8((a1 + 248), &v39);
        }

        else
        {
          sub_2438AAED4(*(a1 + 160), v23, *(v17 + 8 * v20));
        }

        v18 = v38;
        if (*(a1 + 80) == 1)
        {
          sub_2438C1634(*(a1 + 88), *(v21 + 8 * v20), *(v17 + 8 * v20));
        }

        sub_2438D0CCC(v16, v23, *(v17 + 8 * v20));
        ++v19;
      }

      ++v20;
    }

    while (v20 != a4);
  }

  if ((*(a1 + 273) & 1) == 0)
  {
    (*(**(a1 + 152) + 16))(*(a1 + 152), v17, a4, v18);
  }

  result = (*(*v16 + 88))(v16, v19);
  if (v19 < a4)
  {
    return (*(*v16 + 104))(v16, 1);
  }

  return result;
}

uint64_t sub_2438D1D64(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25C0, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringVectorBatch");
LABEL_34:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1BD8, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringColumnStatisticsImpl");
    goto LABEL_34;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = v12[17] + 8 * a3;
  if (*(v12 + 64) == 1)
  {
    v18 = v12[5] + a3;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_6:
  v19 = 0;
  v20 = 0;
  v21 = v12[12] + 8 * a3;
  do
  {
    if (!v18 || *(v18 + v19))
    {
      v22 = *(a1 + 312);
      v23 = *(v21 + 8 * v19);
      v24 = *(v17 + 8 * v19);
      if (v24 > v22)
      {
        v25 = 0;
        v26 = 0;
        while (1)
        {
          if ((v23[v25] & 0xC0) != 0x80)
          {
            ++v26;
          }

          if (v26 > v22)
          {
            break;
          }

          if (v24 == ++v25)
          {
            goto LABEL_17;
          }
        }

        v24 = v25;
      }

LABEL_17:
      *(v17 + 8 * v19) = v24;
      if (*(a1 + 273) == 1)
      {
        v29 = sub_2438CFD40(a1 + 192, v23, v24);
        sub_2439867B8((a1 + 248), &v29);
      }

      else
      {
        sub_2438AAED4(*(a1 + 160), v23, v24);
      }

      if (*(a1 + 80) == 1)
      {
        sub_2438C1634(*(a1 + 88), *(v21 + 8 * v19), *(v17 + 8 * v19));
      }

      sub_2438D0CCC(v16, *(v21 + 8 * v19), *(v17 + 8 * v19));
      ++v20;
    }

    ++v19;
  }

  while (v19 != a4);
LABEL_27:
  if ((*(a1 + 273) & 1) == 0)
  {
    (*(**(a1 + 152) + 16))(*(a1 + 152), v17, a4, v18);
  }

  result = (*(*v16 + 88))(v16, v20);
  if (v20 < a4)
  {
    return (*(*v16 + 104))(v16, 1);
  }

  return result;
}

uint64_t sub_2438D209C(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25C0, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to StringVectorBatch");
LABEL_20:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A19F8, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to BinaryColumnStatisticsImpl");
    goto LABEL_20;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = (v12[17] + 8 * a3);
  if (*(v12 + 64) == 1)
  {
    v18 = (v12[5] + a3);
  }

  else
  {
    v18 = 0;
  }

  v28 = v12[17] + 8 * a3;
  v19 = 0;
  if (a4)
  {
    v20 = (v12[12] + 8 * a3);
    v21 = v18;
    v22 = a4;
    do
    {
      v24 = *v17++;
      v23 = v24;
      if (!v18 || *v21)
      {
        sub_2438AAED4(*(a1 + 160), *v20, v23);
        v16[3] += v23;
        ++v19;
      }

      ++v20;
      ++v21;
      --v22;
    }

    while (v22);
  }

  (*(**(a1 + 152) + 16))(*(a1 + 152), v28, a4, v18);
  result = (*(*v16 + 64))(v16, v19);
  if (v19 < a4)
  {
    v26 = *(*v16 + 72);

    return v26(v16, 1);
  }

  return result;
}

uint64_t sub_2438D2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2438CBCDC(a1, a2, a3, a4);
  *v7 = &unk_28569FB58;
  v7[16] = 0;
  v8 = v7 + 16;
  v7[17] = 0;
  *(a1 + 144) = sub_2438FF784(a4);
  sub_2438BFB70(__p, "GMT");
  v9 = sub_2438F64F8(__p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 152) = v9;
  (*(*a3 + 16))(__p, a3, 1);
  (*(*a3 + 16))(&v32, a3, 5);
  v10 = __p[0];
  __p[0] = 0;
  v30 = v10;
  v11 = *(a1 + 144);
  v12 = *(a1 + 104);
  v13 = sub_2438FF8F8(a4);
  sub_2438EBFF0(&v30, 1, v11, v13, &v31);
  v14 = v31;
  v31 = 0;
  v15 = *v8;
  *v8 = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    v16 = v31;
    v31 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = v30;
  v30 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v32;
  v32 = 0;
  v29 = v18;
  v19 = *(a1 + 144);
  v20 = *(a1 + 104);
  v21 = sub_2438FF8F8(a4);
  sub_2438EBFF0(&v29, 0, v19, v21, &v31);
  v22 = v31;
  v31 = 0;
  v23 = *(a1 + 136);
  *(a1 + 136) = v22;
  if (v23)
  {
    (*(*v23 + 8))(v23);
    v24 = v31;
    v31 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  v25 = v29;
  v29 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v26 = v32;
  v32 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  return a1;
}

void sub_2438D26B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  v22 = v19[17];
  v19[17] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *v20;
  *v20 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_2438CC5D8(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D27E8(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = **lpsrc;
  v10 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2680, 0);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to TimestampVectorBatch");
LABEL_46:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v11 = v10;
  v12 = *(a1 + 24);
  if (!v12 || (v13 = **v12, (v14 = __dynamic_cast(v12, &unk_2856A1998, &unk_2856A1C28, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to TimestampColumnStatisticsImpl");
    goto LABEL_46;
  }

  v15 = v14;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  if (*(v11 + 64) == 1)
  {
    v16 = v11[5] + a3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v11[12] + 8 * a3;
  v18 = v11[17] + 8 * a3;
  if (a4)
  {
    v19 = 0;
    v20 = 0;
    while (v16 && !*(v16 + v19))
    {
LABEL_36:
      if (++v19 == a4)
      {
        goto LABEL_39;
      }
    }

    v21 = *(v18 + 8 * v19) / 1000000 + 1000 * *(v17 + 8 * v19);
    if (*(a1 + 80) == 1)
    {
      sub_2438C16E8(*(a1 + 88), *(v18 + 8 * v19) / 1000000 + 1000 * *(v17 + 8 * v19));
    }

    if (v15[17])
    {
      v22 = (v15 + 40);
      if (*(v15 + 5) <= v21)
      {
        v22 = (v15 + 48);
        if (*(v15 + 6) >= v21)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      *(v15 + 17) = 257;
      *(v15 + 6) = v21;
      v22 = (v15 + 40);
    }

    *v22 = v21;
LABEL_19:
    v23 = *(v17 + 8 * v19);
    if (v23 < 0 && *(v18 + 8 * v19))
    {
      *(v17 + 8 * v19) = v23 + 1;
    }

    *(v17 + 8 * v19) -= (*(**(a1 + 152) + 24))(*(a1 + 152));
    v24 = *(v18 + 8 * v19);
    if (v24)
    {
      v25 = v24 / 100;
      if (v24 % 100)
      {
        v26 = 8 * v24;
      }

      else
      {
        if (__ROR8__(0x1999999999999998 - 0x3333333333333333 * v25, 1) <= 0x1999999999999998uLL)
        {
          v28 = 1;
          do
          {
            v25 /= 10;
            v27 = v28 + 1;
          }

          while (__ROR8__(0x1999999999999998 - 0x3333333333333333 * v25, 1) <= 0x1999999999999998uLL && v28++ < 6);
        }

        else
        {
          v27 = 1;
        }

        v26 = v27 | (8 * v25);
      }
    }

    else
    {
      v26 = 0;
    }

    ++v20;
    *(v18 + 8 * v19) = v26;
    goto LABEL_36;
  }

  v20 = 0;
LABEL_39:
  (*(*v15 + 112))(v15, v20);
  if (v20 < a4)
  {
    (*(*v15 + 120))(v15, 1);
  }

  (*(**(a1 + 128) + 16))(*(a1 + 128), v17, a4, v16);
  v30 = *(**(a1 + 136) + 16);

  return v30();
}

void *sub_2438D2C44(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v14);
  v4 = *(a1 + 16);
  v16 = 1;
  v17 = v4;
  v15 |= 3u;
  v5 = (*(**(a1 + 128) + 24))(*(a1 + 128));
  v15 |= 4u;
  v18 = v5;
  sub_2438CC90C(a2, v14);
  sub_2438B3548(v9);
  v6 = *(a1 + 16);
  v11 = 5;
  v12 = v6;
  v10 |= 3u;
  v7 = (*(**(a1 + 136) + 24))(*(a1 + 136));
  v10 |= 4u;
  v13 = v7;
  sub_2438CC90C(a2, v9);
  sub_2438B35DC(v9);
  return sub_2438B35DC(v14);
}

void sub_2438D2D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D2D74(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v3 = (*(**(*(a1 + 128) + 8) + 64))(*(*(a1 + 128) + 8)) + v2;
  return v3 + (*(**(*(a1 + 136) + 8) + 64))(*(*(a1 + 136) + 8));
}

void *sub_2438D2E20(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v7);
  v4 = sub_2438CBC64(*(a1 + 144));
  v5 = v8;
  v9 = v4;
  v10 = 0;
  v8 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v8 = v5 | 7;
    v11 = 1;
  }

  sub_2438CDBD8(a2, v7);
  return sub_2438B3E18(v7);
}

void sub_2438D2E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D2EAC(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  (*(**(a1 + 128) + 32))(*(a1 + 128), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 136) + 32);

  return v3();
}

uint64_t sub_2438D2F5C(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2590, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to LongVectorBatch");
LABEL_27:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1A98, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to DateColumnStatisticsImpl");
    goto LABEL_27;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v17 = (v12[12] + 8 * a3);
  if (*(v12 + 64) == 1)
  {
    v18 = (v12[5] + a3);
  }

  else
  {
    v18 = 0;
  }

  (*(**(a1 + 128) + 16))(*(a1 + 128), v17, a4, v18);
  v19 = 0;
  if (a4)
  {
    v20 = v18;
    v21 = a4;
    while (v18 && !*v20)
    {
LABEL_19:
      ++v17;
      ++v20;
      if (!--v21)
      {
        goto LABEL_20;
      }
    }

    v22 = *v17;
    if (v16[17])
    {
      if (*(v16 + 10) <= v22)
      {
        if (*(v16 + 11) < v22)
        {
          *(v16 + 11) = v22;
        }

        goto LABEL_17;
      }
    }

    else
    {
      *(v16 + 17) = 257;
      *(v16 + 11) = v22;
    }

    *(v16 + 10) = v22;
LABEL_17:
    ++v19;
    if (*(a1 + 80) == 1)
    {
      sub_2438C16E8(*(a1 + 88), v22);
    }

    goto LABEL_19;
  }

LABEL_20:
  result = (*(*v16 + 72))(v16, v19);
  if (v19 < a4)
  {
    v24 = *(*v16 + 88);

    return v24(v16, 1);
  }

  return result;
}

uint64_t sub_2438D324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *sub_2438CBCDC(a1, a2, a3, a4) = &unk_28569FC78;
  *(a1 + 128) = sub_2438FF784(a4);
  *(a1 + 136) = (*(*a2 + 72))(a2);
  v8 = (*(*a2 + 80))(a2);
  *(a1 + 152) = 0;
  *(a1 + 144) = v8;
  *(a1 + 160) = 0;
  v9 = operator new(0x18uLL);
  (*(*a3 + 16))(&v26, a3, 1);
  v10 = v26;
  v26 = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = v10;
  v11 = *(a1 + 152);
  *(a1 + 152) = v9;
  if (v11)
  {
    sub_2438D8770(a1 + 152, v11);
    v12 = v26;
    v26 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  (*(*a3 + 16))(&v25, a3, 5);
  v13 = v25;
  v25 = 0;
  v23 = v13;
  v14 = *(a1 + 128);
  v15 = *(a1 + 104);
  v16 = sub_2438FF8F8(a4);
  sub_2438EBFF0(&v23, 1, v14, v16, &v24);
  v17 = v24;
  v24 = 0;
  v18 = *(a1 + 160);
  *(a1 + 160) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v24;
    v24 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v23;
  v23 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return a1;
}

void sub_2438D3518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  v14 = v11[20];
  v11[20] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *v12;
  *v12 = 0;
  if (v15)
  {
    sub_2438D8770(v12, v15);
  }

  sub_2438CC5D8(v11);
  _Unwind_Resume(a1);
}

void sub_2438D35E4(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2650, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to Decimal64VectorBatch");
LABEL_32:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1AE8, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to DecimalColumnStatisticsImpl");
    goto LABEL_32;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  if (*(v12 + 64) == 1)
  {
    v17 = v12[5] + a3;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_24;
  }

LABEL_6:
  v18 = 0;
  v19 = 0;
  v20 = v12[13] + 8 * a3;
  do
  {
    if (!v17 || *(v17 + v18))
    {
      v21 = (2 * *(v20 + 8 * v18)) ^ (*(v20 + 8 * v18) >> 63);
      v22 = (a1 + 168);
      if (v21 >= 0x80)
      {
        do
        {
          *v22++ = v21 | 0x80;
          v23 = v21 >= 0x4000;
          v21 >>= 7;
        }

        while (v23);
      }

      *v22 = v21;
      sub_2438AAED4(*(a1 + 152), a1 + 168, &v22[-a1 - 167]);
      if (*(a1 + 80))
      {
        v24 = *(v20 + 8 * v18);
        v29.n128_u64[0] = v24 >> 63;
        v29.n128_u64[1] = v24;
        sub_2438FF030(&v30, &v29, *(a1 + 144));
        sub_2438FF1C0(&v30, &__p);
        v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
        sub_2438C1634(*(a1 + 88), v25, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ++v19;
      v27 = *(v20 + 8 * v18);
      v30.n128_u64[0] = v27 >> 63;
      v30.n128_u64[1] = v27;
      sub_2438FF030(&__p, &v30, *(a1 + 144));
      sub_2438D3990(v16, &__p);
    }

    ++v18;
  }

  while (v18 != a4);
LABEL_25:
  (*(*v16 + 88))(v16, v19);
  if (v19 < a4)
  {
    (*(*v16 + 104))(v16, 1);
  }

  v30.n128_u64[0] = *(a1 + 144);
  sub_2438D8D80(&__p, a4, &v30);
  (*(**(a1 + 160) + 16))(*(a1 + 160), __p.__r_.__value_.__r.__words[0], a4, v17);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2438D3990(uint64_t a1, __n128 *a2)
{
  v4 = *a2;
  v5 = a2[1].n128_u64[0];
  sub_2438D7C9C(a1 + 16, &v4);
  if (*(a1 + 19) == 1)
  {
    v4 = *a2;
    v5 = a2[1].n128_u64[0];
    sub_2438D7D7C(a1, &v4);
  }
}

void *sub_2438D3A00(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v14);
  v4 = *(a1 + 16);
  v16 = 1;
  v17 = v4;
  v15 |= 3u;
  v5 = sub_2438AB014(*(a1 + 152));
  v15 |= 4u;
  v18 = v5;
  sub_2438CC90C(a2, v14);
  sub_2438B3548(v9);
  v6 = *(a1 + 16);
  v11 = 5;
  v12 = v6;
  v10 |= 3u;
  v7 = (*(**(a1 + 160) + 24))(*(a1 + 160));
  v10 |= 4u;
  v13 = v7;
  sub_2438CC90C(a2, v9);
  sub_2438B35DC(v9);
  return sub_2438B35DC(v14);
}

void sub_2438D3AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D3B10(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v3 = sub_2438AAFEC(*(a1 + 152)) + v2;
  return v3 + (*(**(*(a1 + 160) + 8) + 64))(*(*(a1 + 160) + 8));
}

void *sub_2438D3B98(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v7);
  v4 = sub_2438CBC64(*(a1 + 128));
  v5 = v8;
  v9 = v4;
  v10 = 0;
  v8 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v8 = v5 | 7;
    v11 = 1;
  }

  sub_2438CDBD8(a2, v7);
  return sub_2438B3E18(v7);
}

void sub_2438D3C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D3C24(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  sub_2438AB09C(*(a1 + 152), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 160) + 32);

  return v3();
}

unint64_t sub_2438D3CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(&v4 + 1) = *a1;
  *&v4 = v2;
  v3 = v4 >> 63;
  v5 = -*a1;
  if (v2)
  {
    v5 = ~v1;
  }

  *(&v7 + 1) = v5;
  *&v7 = -v2;
  v6 = v7 >> 63;
  if (v1 < 0)
  {
    v3 = (__PAIR128__(v6, -2 * v2) - 1) >> 64;
  }

  v8 = v2 >> 63;
  if (v1)
  {
    return v3;
  }

  else
  {
    return v8;
  }
}

void sub_2438D3D0C(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2668, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to Decimal128VectorBatch");
LABEL_34:
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = **v13, (v15 = __dynamic_cast(v13, &unk_2856A1998, &unk_2856A1AE8, 8)) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to DecimalColumnStatisticsImpl");
    goto LABEL_34;
  }

  v16 = v15;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  if (*(v12 + 64) == 1)
  {
    v17 = v12[5] + a3;
    if (a4)
    {
LABEL_6:
      v18 = 0;
      v19 = 0;
      v20 = v12[13] + 16 * a3;
      while (1)
      {
        if (!v17 || *(v17 + v18))
        {
          v21 = sub_2438D3CB4((v20 + 16 * v18));
          v23 = (a1 + 178);
          if (v21)
          {
            do
            {
LABEL_11:
              v24 = v21;
              *v23++ = v22 | 0x80;
              *(&v25 + 1) = v21;
              *&v25 = v22;
              v22 = v25 >> 7;
              v21 >>= 7;
            }

            while (v24 > 0x7F);
          }

          if (v22 >= 0x80)
          {
            goto LABEL_11;
          }

          *v23 = v22;
          sub_2438AAED4(*(a1 + 152), a1 + 178, &v23[-a1 - 177]);
          if (*(a1 + 80))
          {
            sub_2438FF030(&v29, (v20 + 16 * v18), *(a1 + 144));
            sub_2438FF1C0(&v29, &__p);
            v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
            sub_2438C1634(*(a1 + 88), v26, v27);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          ++v19;
          sub_2438FF030(&__p, (v20 + 16 * v18), *(a1 + 144));
          sub_2438D3990(v16, &__p);
        }

        if (++v18 == a4)
        {
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    v17 = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_27:
  (*(*v16 + 88))(v16, v19);
  if (v19 < a4)
  {
    (*(*v16 + 104))(v16, 1);
  }

  v29.n128_u64[0] = *(a1 + 144);
  sub_2438D8D80(&__p, a4, &v29);
  (*(**(a1 + 160) + 16))(*(a1 + 160), __p.__r_.__value_.__r.__words[0], a4, v17);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_2438D40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2438CBCDC(a1, a2, a3, a4);
  *v8 = &unk_28569FD98;
  v8[16] = 0;
  *(a1 + 136) = sub_2438FF784(a4);
  *(a1 + 144) = 0;
  (*(*a3 + 16))(&v23, a3, 2);
  v9 = v23;
  v23 = 0;
  v21 = v9;
  v10 = *(a1 + 136);
  v11 = *(a1 + 104);
  v12 = sub_2438FF8F8(a4);
  sub_2438EBFF0(&v21, 0, v10, v12, &v22);
  v13 = v22;
  v22 = 0;
  v14 = *(a1 + 128);
  *(a1 + 128) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v22;
    v22 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = v21;
  v21 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if ((*(*a2 + 40))(a2) == 1)
  {
    v17 = (*(*a2 + 48))(a2, 0);
    sub_2438CD1C4(&v22, v17, a3, a4);
    v18 = *(a1 + 144);
    *(a1 + 144) = v22;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v19 = v23;
  v23 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return a1;
}

void sub_2438D432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v14 = v12[18];
  v12[18] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v12[16];
  v12[16] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  sub_2438CC5D8(v12);
  _Unwind_Resume(a1);
}

void *sub_2438D43FC(void *a1)
{
  *a1 = &unk_28569FD98;
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[16];
  a1[16] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D44B0(void *a1)
{
  v1 = sub_2438D43FC(a1);

  operator delete(v1);
}

uint64_t sub_2438D44D8(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2608, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to ListVectorBatch");
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v13 = (v12[12] + 8 * a3);
  if (*(v12 + 64) == 1)
  {
    v14 = (v12[5] + a3);
  }

  else
  {
    v14 = 0;
  }

  v15 = *v13;
  v16 = v13[a4];
  if (a4)
  {
    v17 = v13 + 1;
    v18 = a4;
    v19 = *v13;
    do
    {
      v20 = *v17;
      *(v17 - 1) = *v17 - v19;
      ++v17;
      v19 = v20;
      --v18;
    }

    while (v18);
  }

  v21 = *(a1 + 144);
  if (v21)
  {
    (*(*v21 + 16))(v21, v12[15], v15, v16 - v15, 0);
  }

  result = (*(**(a1 + 128) + 16))(*(a1 + 128), v13, a4, v14);
  if (*(a1 + 48) == 1)
  {
    if (!v14)
    {
      v26 = *(**(a1 + 24) + 16);

      return v26();
    }

    v23 = 0;
    if (a4)
    {
      v24 = a4;
      do
      {
        if (*v14++)
        {
          ++v23;
          if (*(a1 + 80) == 1)
          {
            sub_2438C16E8(*(a1 + 88), *v13);
          }
        }

        ++v13;
        --v24;
      }

      while (v24);
    }

    result = (*(**(a1 + 24) + 16))(*(a1 + 24), v23);
    if (v23 < a4)
    {
      v26 = *(**(a1 + 24) + 32);

      return v26();
    }
  }

  return result;
}

void *sub_2438D47C4(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v8);
  v4 = *(a1 + 16);
  v10 = 2;
  v11 = v4;
  v9 |= 3u;
  v5 = (*(**(a1 + 128) + 24))(*(a1 + 128));
  v9 |= 4u;
  v12 = v5;
  sub_2438CC90C(a2, v8);
  v6 = *(a1 + 144);
  if (v6)
  {
    (*(*v6 + 24))(v6, a2);
  }

  return sub_2438B35DC(v8);
}

void sub_2438D4890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D48A4(uint64_t a1, uint64_t *a2)
{
  sub_2438CCDC4(a1, a2);
  result = *(a1 + 144);
  if (result)
  {
    v4 = *(*result + 96);

    return v4();
  }

  return result;
}

uint64_t sub_2438D4914(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (*(a1 + 144))
  {
    v3 = (*(**(*(a1 + 128) + 8) + 64))(*(*(a1 + 128) + 8));
    v2 += v3 + (*(**(a1 + 144) + 32))(*(a1 + 144));
  }

  return v2;
}

void *sub_2438D49D4(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v8);
  v4 = sub_2438CBC64(*(a1 + 136));
  v5 = v9;
  v10 = v4;
  v11 = 0;
  v9 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v9 = v5 | 7;
    v12 = 1;
  }

  sub_2438CDBD8(a2, v8);
  v6 = *(a1 + 144);
  if (v6)
  {
    (*(*v6 + 40))(v6, a2);
  }

  return sub_2438B3E18(v8);
}

void sub_2438D4A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D4A90(uint64_t a1, uint64_t *a2)
{
  sub_2438CC990(a1, a2, *(a1 + 32));
  result = *(a1 + 144);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_2438D4B04(uint64_t a1)
{
  (*(**(a1 + 40) + 40))(*(a1 + 40), *(a1 + 32));
  (*(**(a1 + 32) + 48))(*(a1 + 32));
  result = *(a1 + 144);
  if (result)
  {
    v3 = *(*result + 72);

    return v3();
  }

  return result;
}

uint64_t sub_2438D4BBC(uint64_t a1, uint64_t *a2)
{
  sub_2438CC990(a1, a2, *(a1 + 40));
  result = *(a1 + 144);
  if (result)
  {
    v4 = *(*result + 56);

    return v4();
  }

  return result;
}

uint64_t sub_2438D4C30(uint64_t a1)
{
  (*(**(a1 + 32) + 40))(*(a1 + 32), *(a1 + 24));
  (*(**(a1 + 24) + 48))(*(a1 + 24));
  result = *(a1 + 144);
  if (result)
  {
    v3 = *(*result + 64);

    return v3();
  }

  return result;
}

uint64_t sub_2438D4CE8(uint64_t a1)
{
  sub_2438CCB20(a1);
  result = *(a1 + 144);
  if (result)
  {
    v3 = *(*result + 80);

    return v3();
  }

  return result;
}

uint64_t sub_2438D4D50(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 128) + 32);

  return v3();
}

uint64_t sub_2438D4DD4(uint64_t a1)
{
  sub_2438CCF70(a1);
  result = *(a1 + 144);
  if (result)
  {
    v3 = *(*result + 112);

    return v3();
  }

  return result;
}

uint64_t sub_2438D4E3C(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 120))();
  }

  return result;
}

uint64_t sub_2438D4E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2438CBCDC(a1, a2, a3, a4);
  *v8 = &unk_28569FE28;
  v8[16] = 0;
  v9 = v8 + 16;
  v8[17] = 0;
  v8[18] = 0;
  *(a1 + 152) = sub_2438FF784(a4);
  (*(*a3 + 16))(&v26, a3, 2);
  v10 = v26;
  v26 = 0;
  v24 = v10;
  v11 = *(a1 + 152);
  v12 = *(a1 + 104);
  v13 = sub_2438FF8F8(a4);
  sub_2438EBFF0(&v24, 0, v11, v13, &v25);
  v14 = v25;
  v25 = 0;
  v15 = *(a1 + 144);
  *(a1 + 144) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    v16 = v25;
    v25 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = v24;
  v24 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if ((*(*a2 + 40))(a2))
  {
    v18 = (*(*a2 + 48))(a2, 0);
    sub_2438CD1C4(&v25, v18, a3, a4);
    v19 = *v9;
    *v9 = v25;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if ((*(*a2 + 40))(a2) >= 2)
  {
    v20 = (*(*a2 + 48))(a2, 1);
    sub_2438CD1C4(&v25, v20, a3, a4);
    v21 = *(a1 + 136);
    *(a1 + 136) = v25;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  if (*(a1 + 48) == 1)
  {
    (*(*a1 + 104))(a1);
  }

  v22 = v26;
  v26 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  return a1;
}

void sub_2438D5194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v15 = v12[18];
  v12[18] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v12[17];
  v12[17] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *v13;
  *v13 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  sub_2438CC5D8(v12);
  _Unwind_Resume(a1);
}

void *sub_2438D5294(void *a1)
{
  *a1 = &unk_28569FE28;
  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[16];
  a1[16] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D5378(void *a1)
{
  v1 = sub_2438D5294(a1);

  operator delete(v1);
}

uint64_t sub_2438D53A0(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2620, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to MapVectorBatch");
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  v13 = (v12[12] + 8 * a3);
  if (*(v12 + 64) == 1)
  {
    v14 = (v12[5] + a3);
  }

  else
  {
    v14 = 0;
  }

  v15 = *v13;
  v16 = v13[a4] - *v13;
  if (a4)
  {
    v17 = v13 + 1;
    v18 = a4;
    v19 = *v13;
    do
    {
      v20 = *v17;
      *(v17 - 1) = *v17 - v19;
      ++v17;
      v19 = v20;
      --v18;
    }

    while (v18);
  }

  (*(**(a1 + 144) + 16))(*(a1 + 144), v13, a4, v14);
  v21 = *(a1 + 128);
  if (v21)
  {
    (*(*v21 + 16))(v21, v12[15], v15, v16, 0);
  }

  result = *(a1 + 136);
  if (result)
  {
    result = (*(*result + 16))(result, v12[16], v15, v16, 0);
  }

  if (*(a1 + 48) == 1)
  {
    if (!v14)
    {
      v26 = *(**(a1 + 24) + 16);

      return v26();
    }

    v23 = 0;
    if (a4)
    {
      v24 = a4;
      do
      {
        if (*v14++)
        {
          ++v23;
          if (*(a1 + 80) == 1)
          {
            sub_2438C16E8(*(a1 + 88), *v13);
          }
        }

        ++v13;
        --v24;
      }

      while (v24);
    }

    result = (*(**(a1 + 24) + 16))(*(a1 + 24), v23);
    if (v23 < a4)
    {
      v26 = *(**(a1 + 24) + 32);

      return v26();
    }
  }

  return result;
}

void *sub_2438D56E0(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v9);
  v4 = *(a1 + 16);
  v11 = 2;
  v12 = v4;
  v10 |= 3u;
  v5 = (*(**(a1 + 144) + 24))(*(a1 + 144));
  v10 |= 4u;
  v13 = v5;
  sub_2438CC90C(a2, v9);
  v6 = *(a1 + 128);
  if (v6)
  {
    (*(*v6 + 24))(v6, a2);
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    (*(*v7 + 24))(v7, a2);
  }

  return sub_2438B35DC(v9);
}

void sub_2438D57DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D57F0(uint64_t a1, uint64_t *a2)
{
  sub_2438CCDC4(a1, a2);
  v4 = *(a1 + 128);
  if (v4)
  {
    (*(*v4 + 96))(v4, a2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v6 = *(*result + 96);

    return v6();
  }

  return result;
}

uint64_t sub_2438D5890(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v3 = (*(**(*(a1 + 144) + 8) + 64))(*(*(a1 + 144) + 8)) + v2;
  v4 = *(a1 + 128);
  if (v4)
  {
    v3 += (*(*v4 + 32))(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v3 += (*(*v5 + 32))(v5);
  }

  return v3;
}

void *sub_2438D5970(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v9);
  v4 = sub_2438CBC64(*(a1 + 152));
  v5 = v10;
  v11 = v4;
  v12 = 0;
  v10 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v10 = v5 | 7;
    v13 = 1;
  }

  sub_2438CDBD8(a2, v9);
  v6 = *(a1 + 128);
  if (v6)
  {
    (*(*v6 + 40))(v6, a2);
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    (*(*v7 + 40))(v7, a2);
  }

  return sub_2438B3E18(v9);
}

void sub_2438D5A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D5A5C(uint64_t *a1, uint64_t *a2)
{
  sub_2438CC990(a1, a2, a1[4]);
  v4 = a1[16];
  if (v4)
  {
    (*(*v4 + 48))(v4, a2);
  }

  result = a1[17];
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2438D5B00(uint64_t a1)
{
  (*(**(a1 + 40) + 40))(*(a1 + 40), *(a1 + 32));
  (*(**(a1 + 32) + 48))(*(a1 + 32));
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

uint64_t sub_2438D5BE4(uint64_t *a1, uint64_t *a2)
{
  sub_2438CC990(a1, a2, a1[5]);
  v4 = a1[16];
  if (v4)
  {
    (*(*v4 + 56))(v4, a2);
  }

  result = a1[17];
  if (result)
  {
    v6 = *(*result + 56);

    return v6();
  }

  return result;
}

uint64_t sub_2438D5C88(uint64_t a1)
{
  (*(**(a1 + 32) + 40))(*(a1 + 32), *(a1 + 24));
  (*(**(a1 + 24) + 48))(*(a1 + 24));
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 64))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

uint64_t sub_2438D5D6C(uint64_t a1)
{
  sub_2438CCB20(a1);
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 80);

    return v4();
  }

  return result;
}

uint64_t sub_2438D5E00(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 144) + 32);

  return v3();
}

uint64_t sub_2438D5E84(uint64_t a1)
{
  sub_2438CCF70(a1);
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 112))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 112);

    return v4();
  }

  return result;
}

uint64_t sub_2438D5F18(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    (*(*v2 + 120))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 120);

    return v4();
  }

  return result;
}

_BYTE *sub_2438D5FA8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2438CBCDC(a1, a2, a3, a4);
  *(v8 + 128) = 0u;
  v9 = (v8 + 128);
  *v8 = &unk_28569FEB8;
  *(v8 + 144) = 0u;
  (*(*a3 + 16))(&v22, a3, 1);
  v10 = v22;
  v22 = 0;
  v20 = v10;
  sub_2438C255C(&v20, &v21);
  v11 = v21;
  v21 = 0;
  v12 = *v9;
  *v9 = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v13 = v21;
    v21 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  for (i = 0; i != (*(*a2 + 40))(a2); ++i)
  {
    v16 = (*(*a2 + 48))(a2, i);
    sub_2438CD1C4(&v19, v16, a3, a4);
    v21 = v19;
    sub_2439780F8((a1 + 136), &v21);
  }

  if (a1[48])
  {
    (*(*a1 + 104))(a1);
  }

  v17 = v22;
  v22 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return a1;
}

void sub_2438D61EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  v15 = v12[17];
  if (v15)
  {
    v12[18] = v15;
    operator delete(v15);
  }

  v16 = *v13;
  *v13 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  sub_2438CC5D8(v12);
  _Unwind_Resume(a1);
}

void *sub_2438D629C(void *a1)
{
  *a1 = &unk_28569FEB8;
  v4 = a1 + 17;
  v2 = a1[17];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v2[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v2 = a1[17];
        v3 = a1[18];
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v8 = a1[16];
  a1[16] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D6388(void *a1)
{
  v1 = sub_2438D629C(a1);

  operator delete(v1);
}

void sub_2438D63B0(uint64_t a1, char **lpsrc, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **lpsrc;
  v11 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2638, 0);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCBF8(exception, "Failed to cast to UnionVectorBatch");
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  v12 = v11;
  (*(**(a1 + 8) + 16))(*(a1 + 8), &lpsrc[5][a3], a4, a5);
  if (*(v12 + 64) == 1)
  {
    v13 = (v12[5] + a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = v12[12];
  v15 = v12[17];
  v16 = (*(a1 + 144) - *(a1 + 136)) >> 3;
  __p[0] = -1;
  sub_2438D8D80(v36, v16, __p);
  v17 = (*(a1 + 144) - *(a1 + 136)) >> 3;
  v34 = 0;
  sub_2438D8E58(__p, v17, &v34);
  v18 = (v14 + a3);
  if (a4)
  {
    v19 = (v15 + 8 * a3);
    v20 = v36[0];
    v21 = __p[0];
    v22 = v18;
    v23 = a4;
    do
    {
      v24 = *v22;
      if (v20[v24] == -1)
      {
        v20[v24] = *v19;
        v24 = *v22;
      }

      ++v21[v24];
      ++v19;
      ++v22;
      --v23;
    }

    while (v23);
  }

  (*(**(a1 + 128) + 16))(*(a1 + 128), v18, a4, v13);
  v26 = *(a1 + 136);
  v25 = *(a1 + 144);
  if (v25 != v26)
  {
    v27 = 0;
    v28 = 1;
    do
    {
      v29 = *(__p[0] + v27);
      if (v29)
      {
        (*(**(v26 + 8 * v27) + 16))(*(v26 + 8 * v27), *(v12[20] + 8 * v27), *(v36[0] + v27), v29, 0);
        v26 = *(a1 + 136);
        v25 = *(a1 + 144);
      }

      v27 = v28++;
    }

    while (v27 < (v25 - v26) >> 3);
  }

  if (*(a1 + 48))
  {
    if (v13)
    {
      v30 = 0;
      if (a4)
      {
        v31 = a4;
        do
        {
          if (*v13++)
          {
            ++v30;
            if (*(a1 + 80) == 1)
            {
              sub_2438C16E8(*(a1 + 88), *v18);
            }
          }

          ++v18;
          --v31;
        }

        while (v31);
      }

      (*(**(a1 + 24) + 16))(*(a1 + 24), v30);
      if (v30 < a4)
      {
        (*(**(a1 + 24) + 32))(*(a1 + 24), 1);
      }
    }

    else
    {
      (*(**(a1 + 24) + 16))(*(a1 + 24), a4);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }
}

void sub_2438D6710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438D6760(uint64_t a1, uint64_t *a2)
{
  sub_2438CC868(a1, a2);
  sub_2438B3548(v10);
  v4 = *(a1 + 16);
  v12 = 1;
  v13 = v4;
  v11 |= 3u;
  v5 = (*(**(a1 + 128) + 32))(*(a1 + 128));
  v11 |= 4u;
  v14 = v5;
  sub_2438CC90C(a2, v10);
  v6 = *(a1 + 136);
  if (*(a1 + 144) != v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      (*(**(v6 + 8 * v7) + 24))(*(v6 + 8 * v7), a2);
      v7 = v8;
      v6 = *(a1 + 136);
      ++v8;
    }

    while (v7 < (*(a1 + 144) - v6) >> 3);
  }

  return sub_2438B35DC(v10);
}

void sub_2438D685C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B35DC(va);
  _Unwind_Resume(a1);
}

void *sub_2438D6874(uint64_t a1, uint64_t *a2)
{
  result = sub_2438CCDC4(a1, a2);
  v5 = *(a1 + 136);
  if (*(a1 + 144) != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 96))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = *(a1 + 136);
      ++v7;
    }

    while (v6 < (*(a1 + 144) - v5) >> 3);
  }

  return result;
}

uint64_t sub_2438D68FC(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v3 = (*(**(a1 + 128) + 24))(*(a1 + 128)) + v2;
  v4 = *(a1 + 136);
  if (*(a1 + 144) != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v3 += (*(**(v4 + 8 * v5) + 32))(*(v4 + 8 * v5));
      v5 = v6;
      v4 = *(a1 + 136);
      ++v6;
    }

    while (v5 < (*(a1 + 144) - v4) >> 3);
  }

  return v3;
}

void *sub_2438D69D8(uint64_t a1, uint64_t *a2)
{
  sub_2438B3D7C(v9);
  v4 = v10;
  v11 = 0;
  v10 |= 3u;
  if (*(a1 + 80) == 1)
  {
    v10 = v4 | 7;
    v12 = 1;
  }

  sub_2438CDBD8(a2, v9);
  v5 = *(a1 + 136);
  if (*(a1 + 144) != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      (*(**(v5 + 8 * v6) + 40))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = *(a1 + 136);
      ++v7;
    }

    while (v6 < (*(a1 + 144) - v5) >> 3);
  }

  return sub_2438B3E18(v9);
}

void sub_2438D6AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438B3E18(va);
  _Unwind_Resume(a1);
}

void *sub_2438D6AC0(uint64_t *a1, uint64_t *a2)
{
  result = sub_2438CC990(a1, a2, a1[4]);
  v5 = a1[17];
  if (a1[18] != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 48))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = a1[17];
      ++v7;
    }

    while (v6 < (a1[18] - v5) >> 3);
  }

  return result;
}

uint64_t sub_2438D6B4C(uint64_t a1)
{
  (*(**(a1 + 40) + 40))(*(a1 + 40), *(a1 + 32));
  result = (*(**(a1 + 32) + 48))(*(a1 + 32));
  v3 = *(a1 + 136);
  if (*(a1 + 144) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = (*(**(v3 + 8 * v4) + 72))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 136);
      ++v5;
    }

    while (v4 < (*(a1 + 144) - v3) >> 3);
  }

  return result;
}

void *sub_2438D6C14(uint64_t *a1, uint64_t *a2)
{
  result = sub_2438CC990(a1, a2, a1[5]);
  v5 = a1[17];
  if (a1[18] != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      result = (*(**(v5 + 8 * v6) + 56))(*(v5 + 8 * v6), a2);
      v6 = v7;
      v5 = a1[17];
      ++v7;
    }

    while (v6 < (a1[18] - v5) >> 3);
  }

  return result;
}

uint64_t sub_2438D6CA0(uint64_t a1)
{
  (*(**(a1 + 32) + 40))(*(a1 + 32), *(a1 + 24));
  result = (*(**(a1 + 24) + 48))(*(a1 + 24));
  v3 = *(a1 + 136);
  if (*(a1 + 144) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = (*(**(v3 + 8 * v4) + 64))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 136);
      ++v5;
    }

    while (v4 < (*(a1 + 144) - v3) >> 3);
  }

  return result;
}

uint64_t sub_2438D6D68(uint64_t a1)
{
  result = sub_2438CCB20(a1);
  v3 = *(a1 + 136);
  if (*(a1 + 144) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = (*(**(v3 + 8 * v4) + 80))(*(v3 + 8 * v4));
      v4 = v5;
      v3 = *(a1 + 136);
      ++v5;
    }

    while (v4 < (*(a1 + 144) - v3) >> 3);
  }

  return result;
}

uint64_t sub_2438D6DE0(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 72));
  v2 = *(a1 + 72);
  v3 = *(**(a1 + 128) + 40);

  return v3();
}

void sub_2438D6E64(uint64_t a1)
{
  sub_2438CCF70(a1);
  v2 = *(a1 + 136);
  if (*(a1 + 144) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      (*(**(v2 + 8 * v3) + 112))(*(v2 + 8 * v3));
      v3 = v4;
      v2 = *(a1 + 136);
      ++v4;
    }

    while (v3 < (*(a1 + 144) - v2) >> 3);
  }
}

uint64_t sub_2438D6EDC(uint64_t result)
{
  v1 = *(result + 136);
  if (*(result + 144) != v1)
  {
    v2 = result;
    v3 = 0;
    v4 = 1;
    do
    {
      result = (*(**(v1 + 8 * v3) + 120))(*(v1 + 8 * v3));
      v3 = v4;
      v1 = *(v2 + 136);
      ++v4;
    }

    while (v3 < (*(v2 + 144) - v1) >> 3);
  }

  return result;
}

void sub_2438D6F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v5 = (v3 + 24);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 28))
  {
    sub_2438BFA30(v5, v4 + 1);
    v4 = *v5;
  }

  v6 = *(v3 + 32) + 8 * v4;
  *(v3 + 24) = v4 + 1;
  *(v6 + 8) = a2;
}

void *sub_2438D6FBC(void *a1)
{
  *a1 = &unk_28569F888;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D703C(void *a1)
{
  *a1 = &unk_28569F888;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = sub_2438CC5D8(a1);

  operator delete(v3);
}

void *sub_2438D70C0(void *a1)
{
  *a1 = &unk_28569F918;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D7140(void *a1)
{
  *a1 = &unk_28569F918;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = sub_2438CC5D8(a1);

  operator delete(v3);
}

void *sub_2438D71C4(void *a1)
{
  *a1 = &unk_28569F9A8;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D7244(void *a1)
{
  *a1 = &unk_28569F9A8;
  v2 = a1[16];
  a1[16] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = sub_2438CC5D8(a1);

  operator delete(v3);
}

void *sub_2438D72C8(void *a1)
{
  *a1 = &unk_28569FA38;
  sub_2438DF490(a1 + 18);
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    sub_2438D8770(a1 + 136, v2);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D7330(void *a1)
{
  *a1 = &unk_28569FA38;
  sub_2438DF490(a1 + 18);
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    sub_2438D8770(a1 + 136, v2);
  }

  v3 = sub_2438CC5D8(a1);

  operator delete(v3);
}

void sub_2438D73A0(uint64_t a1)
{
  v1 = sub_2438D80C4(a1);

  operator delete(v1);
}

void *sub_2438D73C8(void *a1)
{
  *a1 = &unk_2856A0078;
  sub_2438DF490(a1 + 40);

  return sub_2438D80C4(a1);
}

void sub_2438D7420(void *a1)
{
  *a1 = &unk_2856A0078;
  sub_2438DF490(a1 + 40);
  v2 = sub_2438D80C4(a1);

  operator delete(v2);
}

void *sub_2438D747C(void *a1)
{
  *a1 = &unk_28569FB58;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[16];
  a1[16] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D752C(void *a1)
{
  *a1 = &unk_28569FB58;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[16];
  a1[16] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = sub_2438CC5D8(a1);

  operator delete(v4);
}

void *sub_2438D75E0(void *a1)
{
  *a1 = &unk_28569FC78;
  v2 = a1[20];
  a1[20] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[19];
  a1[19] = 0;
  if (v3)
  {
    sub_2438D8770(a1 + 152, v3);
  }

  return sub_2438CC5D8(a1);
}

void sub_2438D7674(void *a1)
{
  *a1 = &unk_28569FC78;
  v2 = a1[20];
  a1[20] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[19];
  a1[19] = 0;
  if (v3)
  {
    sub_2438D8770(a1 + 152, v3);
  }

  v4 = sub_2438CC5D8(a1);

  operator delete(v4);
}

uint64_t sub_2438D770C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2438D7760(a1, a2);
  }

  else
  {
    sub_2438B02E4(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2438D7760(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_243980874();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_2438D7890(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[120 * v2];
  *(&v16 + 1) = &v7[120 * v6];
  sub_2438B02E4(v15, a2);
  *&v16 = v15 + 120;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_2438D78D8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2438D79C0(&v14);
  return v13;
}

void sub_2438D787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2438D79C0(va);
  _Unwind_Resume(a1);
}

void *sub_2438D7890(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x222222222222223)
  {
    sub_2438C1CC8();
  }

  return operator new(120 * a2);
}

void sub_2438D78D8(uint64_t a1, uint64_t a2, void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_2438D7978(a4, v7);
      v7 += 120;
      a4 = v8 + 120;
    }

    while (v7 != a3);
    if (v6 != a3)
    {
      v9 = v6;
      v10 = v6;
      do
      {
        v11 = *v10;
        v10 += 15;
        (*v11)(v6);
        v9 += 15;
        v6 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t sub_2438D7978(uint64_t a1, uint64_t a2)
{
  sub_2438B00B4(a1);
  if (a1 != a2)
  {
    sub_2438B1554(a1, a2);
  }

  return a1;
}

uint64_t sub_2438D79C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 120);
    *(a1 + 16) = i - 120;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438D7A2C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_243987D14(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2438D7A80(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2438D7A80(a1, *a2);
    sub_2438D7A80(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2438D7AD4(uint64_t a1, uint64_t a2)
{
  *(a1 + 17) = 1;
  if (*(a2 + 23) < 0)
  {
    sub_2438BF99C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=((a1 + 40), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2438D7B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438D7B68(uint64_t a1, uint64_t a2)
{
  *(a1 + 18) = 1;
  if (*(a2 + 23) < 0)
  {
    sub_2438BF99C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=((a1 + 64), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2438D7BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438D7BFC(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2438AA68C();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

__n128 sub_2438D7C9C(uint64_t a1, __n128 *a2)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    *(a1 + 1) = 257;
    v5 = *a2;
    *(a1 + 64) = a2[1].n128_u32[0];
    *(a1 + 48) = v5;
    result = *a2;
    *(a1 + 40) = a2[1].n128_u32[0];
    goto LABEL_5;
  }

  v8 = *a2;
  v9 = a2[1].n128_u64[0];
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  if (sub_2438D7E70(&v8, &v6))
  {
    result = *a2;
    *(a1 + 40) = a2[1].n128_u32[0];
LABEL_5:
    *(a1 + 24) = result;
    return result;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v6 = *a2;
  v7 = a2[1].n128_u64[0];
  if (sub_2438D7E70(&v8, &v6))
  {
    result = *a2;
    *(a1 + 64) = a2[1].n128_u32[0];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_2438D7D7C(uint64_t result, uint64_t *a2)
{
  if (*(result + 19) == 1)
  {
    v15 = v2;
    v16 = v3;
    v5 = result;
    v14 = 0;
    v7 = *(result + 88);
    v6 = *(result + 96);
    v8 = *(result + 104);
    v9 = *(a2 + 4);
    if (v8 <= v9)
    {
      if (v8 < v9)
      {
        result = sub_2438DDD34(*(result + 88), v6, v9 - v8, &v14);
        v7 = result;
        v6 = v11;
        v8 = *(a2 + 4);
      }
    }

    else
    {
      result = sub_2438DDD34(*a2, a2[1], v8 - v9, &v14);
      *a2 = result;
      a2[1] = v10;
    }

    if (v14)
    {
      v12 = 0;
      v13 = v7;
    }

    else
    {
      v13 = (__PAIR128__(*a2, a2[1]) + __PAIR128__(v7, v6)) >> 64;
      v6 += a2[1];
      if (*a2)
      {
        if ((*a2 ^ v7) < 0)
        {
LABEL_14:
          if (*(v5 + 19) == 1)
          {
            *(v5 + 88) = v13;
            *(v5 + 96) = v6;
            *(v5 + 104) = v8;
          }

          return result;
        }
      }

      else if (v7 < 0)
      {
        goto LABEL_14;
      }

      v12 = (v13 ^ v7) >= 0;
    }

    *(v5 + 19) = v12;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2438D7E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2438DDEB8(*a1, *(a1 + 8), *(a1 + 16));
  v6 = v5;
  v7 = sub_2438DDEB8(*a2, *(a2 + 8), *(a2 + 16));
  v9 = v7;
  v10 = v8;
  if (v4 != v7)
  {
    if (v4 >= v7)
    {
      if (v4 > v7)
      {
        return 0;
      }

      goto LABEL_9;
    }

    return 1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  if (v6 > v8)
  {
    return 0;
  }

LABEL_9:
  v31 = 0;
  v11 = *a1 >> 63;
  v13 = sub_2438DDD34(v4, v6, *(a1 + 16), &v31);
  v14 = *(a1 + 8);
  v16 = v14 >= v15;
  v17 = v14 - v15;
  v18 = !v16;
  *a1 = *a1 - v13 - v18;
  *(a1 + 8) = v17;
  v19 = sub_2438DDD34(v9, v10, *(a2 + 16), &v31);
  v20 = *(a2 + 8);
  v21 = *a2 - v19;
  v16 = v20 >= v22;
  v23 = v20 - v22;
  v24 = !v16;
  *a2 = v21 - v24;
  *(a2 + 8) = v23;
  v25 = *(a1 + 16) - *(a2 + 16);
  if (v25 < 1)
  {
    v28 = sub_2438DDD34(*a1, *(a1 + 8), *(a2 + 16) - *(a1 + 16), &v31);
    *a1 = v28;
    *(a1 + 8) = v29;
    if (v31)
    {
      return v11;
    }

    v30 = *a2;
  }

  else
  {
    v26 = sub_2438DDD34(v21 - v24, v23, v25, &v31);
    *a2 = v26;
    *(a2 + 8) = v27;
    if (v31)
    {
      return v11 ^ 1;
    }

    v30 = v26;
    v28 = *a1;
  }

  if (v28 == v30)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return v28 < v30;
  }
}

uint64_t sub_2438D7FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *sub_2438D0118(a1, a2, a3, a4) = &unk_2856A0078;
  *(a1 + 312) = (*(*a2 + 64))(a2);
  v7 = sub_2438FF90C(a4);
  sub_2438DECF0(a1 + 320, v7);
  sub_2438DECAC(a1 + 320, 6 * *(a1 + 312));
  return a1;
}

void sub_2438D80A0(_Unwind_Exception *a1)
{
  sub_2438DF490(v1 + 320);
  sub_2438D80C4(v1);
  _Unwind_Resume(a1);
}

void *sub_2438D80C4(uint64_t a1)
{
  *a1 = &unk_28569FAC8;
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 296) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
    operator delete(v3);
  }

  v10 = (a1 + 216);
  sub_2438D7A2C(&v10);
  sub_2438D7A80(a1 + 192, *(a1 + 200));
  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v4)
  {
    sub_2438D8770(a1 + 184, v4);
  }

  v5 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    sub_2438D8770(a1 + 160, v7);
  }

  v8 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return sub_2438CC5D8(a1);
}

uint64_t sub_2438D8204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *sub_2438D0118(a1, a2, a3, a4) = &unk_2856A0120;
  *(a1 + 312) = (*(*a2 + 64))(a2);
  return a1;
}

uint64_t sub_2438D828C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_243980874();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_2438D83BC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[40 * v2];
  *(&v16 + 1) = &v7[40 * v6];
  sub_2438B35D8(v15, a2);
  *&v16 = v15 + 40;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_2438D8404(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2438D84EC(&v14);
  return v13;
}

void sub_2438D83A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2438D84EC(va);
  _Unwind_Resume(a1);
}

void *sub_2438D83BC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    sub_2438C1CC8();
  }

  return operator new(40 * a2);
}

void sub_2438D8404(uint64_t a1, uint64_t a2, void (***a3)(void), void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_2438D84A4(a4, v7);
      v7 += 40;
      a4 = v8 + 5;
    }

    while (v7 != a3);
    if (v6 != a3)
    {
      v9 = v6;
      v10 = v6;
      do
      {
        v11 = *v10;
        v10 += 5;
        (*v11)(v6);
        v9 += 5;
        v6 = v10;
      }

      while (v10 != a3);
    }
  }
}

void *sub_2438D84A4(void *a1, uint64_t a2)
{
  sub_2438B3548(a1);
  if (a1 != a2)
  {
    sub_2438B3C18(a1, a2);
  }

  return a1;
}

uint64_t sub_2438D84EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2438D8558(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_243980874();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_2438D83BC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[40 * v2];
  *(&v16 + 1) = &v7[40 * v6];
  sub_2438B3E14(v15, a2);
  *&v16 = v15 + 40;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_2438D8688(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2438D84EC(&v14);
  return v13;
}

void sub_2438D8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2438D84EC(va);
  _Unwind_Resume(a1);
}

void sub_2438D8688(uint64_t a1, uint64_t a2, void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_2438D8728(a4, v7);
      v7 += 40;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    if (v6 != a3)
    {
      v9 = v6;
      v10 = v6;
      do
      {
        v11 = *v10;
        v10 += 5;
        (*v11)(v6);
        v9 += 5;
        v6 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t sub_2438D8728(uint64_t a1, uint64_t a2)
{
  sub_2438B3D7C(a1);
  if (a1 != a2)
  {
    sub_2438B4460(a1, a2);
  }

  return a1;
}

void sub_2438D8770(int a1, uint64_t *__p)
{
  if (__p)
  {
    v3 = *__p;
    *__p = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    operator delete(__p);
  }
}

_OWORD *sub_2438D87DC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2438D8868(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x38uLL);
    v6[2] = *a3;
    *(v6 + 6) = *(a3 + 16);
    sub_2438D8944(a1, v9, v7, v6);
  }

  return v6;
}

void *sub_2438D8868(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        if (v10 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = *(v4 + 40);
        }

        v12 = memcmp(v6, *(v4 + 32), v11);
        v13 = v7 < v10;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (!v13)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v14 = memcmp(v9, v6, v11);
      v15 = v10 < v7;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

uint64_t *sub_2438D8944(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2438D899C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2438D899C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *sub_2438D8B38(void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2438D8BAC(a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_2438D8B90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2438D8BAC(void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    sub_243980874();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void *sub_2438D8BEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    sub_2438C1CC8();
  }

  return operator new(24 * a2);
}

uint64_t sub_2438D8C34(uint64_t a1)
{
  sub_2438D8C6C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438D8C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *sub_2438D8CCC(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2438D8D44(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = &v4[8 * a2];
  }

  return a1;
}

void sub_2438D8D28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2438D8D44(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_243980874();
  }

  result = sub_2438C1ECC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *sub_2438D8D80(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2438D8D44(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_24398C940)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_2438D8E3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438D8E58(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2438D8D44(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_24398C940)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_2438D8F14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438D8F30(unsigned int *a1)
{
  sub_2438C102C(v6);
  v2 = MEMORY[0x245D431A0](&v7, *a1);
  v12 = 46;
  v3 = sub_2438AA2A8(v2, &v12, 1);
  MEMORY[0x245D431A0](v3, a1[1]);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v7 = v4;
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D432B0](&v11);
}

uint64_t *sub_2438D90F0()
{
  if ((atomic_load_explicit(&qword_27ED97068, memory_order_acquire) & 1) == 0)
  {
    sub_243989798();
  }

  return &qword_27ED97060;
}

uint64_t *sub_2438D9128()
{
  if ((atomic_load_explicit(&qword_27ED97078, memory_order_acquire) & 1) == 0)
  {
    sub_2439897E8();
  }

  return &qword_27ED97070;
}

uint64_t sub_2438D9160(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2438AA8F8(a1, a6, a2, a4, a5);
  *v10 = &unk_2856A0318;
  sub_2438DF400(v10 + 4, a6, a5);
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t sub_2438D91EC(uint64_t result, int a2)
{
  v2 = *(result + 88);
  v3 = __OFSUB__(v2, a2);
  v4 = v2 - a2;
  if (v4 < 0 != v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Can't backup that much!");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(result + 88) = v4;
  return result;
}

uint64_t sub_2438D9264(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  if (((*(*a1 + 16))(a1, &v5, &v4) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to flush compression buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2438AABC4(a1, *(a1 + 96) - *(a1 + 92));
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  return sub_2438AAE74(a1);
}

uint64_t sub_2438D9360(uint64_t result)
{
  v1 = result;
  v2 = *(result + 96);
  v3 = *(result + 92) + 3;
  v4 = v3 - v2;
  if (v3 >= v2)
  {
    result = sub_2438AAB54(result, (result + 80), (result + 96));
    if ((result & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Failed to get next output buffer from output stream.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v3 = v4;
  }

  *(v1 + 92) = v3;
  return result;
}

uint64_t sub_2438D93FC(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 88))
  {
    sub_2438D9360(a1);
    v6 = (*(*a1 + 88))(a1);
    v7 = *(a1 + 88);
    v8 = (*(a1 + 80) + *(a1 + 92) - v6);
    if (v6 >= v7)
    {
      *(v8 - 3) = (2 * v7) | 1;
      *(v8 - 2) = v7 >> 7;
      *(v8 - 1) = v7 >> 15;
      memcpy(v8, *(a1 + 48), *(a1 + 88));
      v9 = v6 - *(a1 + 88);
      sub_2438AABC4(a1, v9);
      *(a1 + 92) = vsub_s32(*(a1 + 92), vdup_n_s32(v9));
    }

    else
    {
      *(v8 - 3) = __PAIR16__((2 * v6) >> 56, 2 * v6);
      *(v8 - 1) = v6 >> 15;
    }
  }

  *a2 = *(a1 + 48);
  v10 = *(a1 + 56);
  *a3 = v10;
  *(a1 + 88) = v10;
  return 1;
}

uint64_t sub_2438D9500(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_2438D9160(a1, a2, a3, a4, a5, a6);
  *v7 = &unk_2856A0380;
  sub_2438D955C(v7);
  return a1;
}

uint64_t sub_2438D955C(uint64_t a1)
{
  *(a1 + 104) = 0;
  v1 = (a1 + 104);
  v1[9] = 0;
  v1[10] = 0;
  v1[8] = 0;
  result = sub_24395A49C(v1, *(v1 - 8), 8, 0xFFFFFFF1, 8, 0, "1.3.1", 112);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Error while calling deflateInit2() for zlib.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void *sub_2438D95F8(void *a1)
{
  *a1 = &unk_2856A0318;
  sub_2438DF7B0((a1 + 4));

  return sub_2438AA9F4(a1);
}

uint64_t sub_2438D964C(uint64_t a1)
{
  if (sub_24395A7FC(a1 + 104))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to reset inflate.");
LABEL_13:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v2 = *(a1 + 96);
  v3 = *(a1 + 92);
  *(a1 + 112) = *(a1 + 88);
  *(a1 + 104) = *(a1 + 48);
  while (1)
  {
    if (v3 < v2)
    {
      goto LABEL_6;
    }

    if ((sub_2438AAB54(a1, (a1 + 80), (a1 + 96)) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Failed to get next output buffer from output stream.");
      goto LABEL_13;
    }

    v3 = 0;
    *(a1 + 92) = 0;
    v2 = *(a1 + 96);
LABEL_6:
    *(a1 + 128) = *(a1 + 80) + v3;
    *(a1 + 136) = v2 - v3;
    v4 = sub_24395AC00(a1 + 104, 4);
    v2 = *(a1 + 96);
    v5 = *(a1 + 136);
    v3 = v2 - v5;
    *(a1 + 92) = v2 - v5;
    if (v4)
    {
      break;
    }

    if (v5)
    {
      return *(a1 + 144);
    }
  }

  if (v4 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to deflate input data.");
    goto LABEL_13;
  }

  return *(a1 + 144);
}

uint64_t sub_2438D97A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2856A03F0;
  *(a1 + 8) = a4;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  sub_2438DECF0(a1 + 144, a4);
  v6 = *a2;
  *a2 = 0;
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 56) = *(a1 + 160);
  *(a1 + 64) = *(a1 + 16);
  v8 = sub_24395D02C((a1 + 32), 0xFFFFFFF1, "1.3.1", 112);
  if (v8)
  {
    switch(v8)
    {
      case -6:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Version error from inflateInit2");
        break;
      case -4:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Memory error from inflateInit2");
        break;
      case -2:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Stream error from inflateInit2");
        break;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unknown error from inflateInit2");
        break;
    }

    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  return a1;
}

void sub_2438D9930(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_2438DF490(v1 + 144);
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  nullsub_1(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438D99A0(void *a1)
{
  *a1 = &unk_2856A03F0;
  v2 = sub_24395EA68((a1 + 4));
  if (v2)
  {
    v3 = sub_2438AA2A8(MEMORY[0x277D82678], "Error in ~ZlibDecompressionStream() ", 36);
    v4 = MEMORY[0x245D431C0](v3, v2);
    sub_2438AA2A8(v4, "\n", 1);
  }

  sub_2438DF490(a1 + 18);
  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return nullsub_1(a1);
}

void sub_2438D9A6C(void *a1)
{
  v1 = sub_2438D99A0(a1);

  operator delete(v1);
}

uint64_t sub_2438D9A94(uint64_t a1, void *a2, int *a3)
{
  v6 = *(a1 + 200);
  if (!v6)
  {
    v8 = *(a1 + 184);
    if (!v8 || !*(a1 + 208))
    {
      sub_2438D9D5C(a1);
      v8 = *(a1 + 184);
    }

    if (v8 == 4)
    {
      return 0;
    }

    v11 = *(a1 + 216);
    v10 = *(a1 + 224);
    if (v11 == v10)
    {
      sub_2438D9DE0(a1, 1);
      v11 = *(a1 + 216);
      v10 = *(a1 + 224);
      v8 = *(a1 + 184);
    }

    v12 = v10 - v11;
    v13 = *(a1 + 208);
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(a1 + 208);
    }

    if (v8 == 1)
    {
      *(a1 + 32) = v11;
      *(a1 + 40) = v14;
      v17 = *(a1 + 160);
      *(a1 + 192) = v17;
      *(a1 + 56) = v17;
      *(a1 + 64) = *(a1 + 16);
      sub_24395CF0C((a1 + 32));
      if (v18)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Bad inflateReset in ZlibDecompressionStream::Next");
      }

      else
      {
        v19 = *(a1 + 208);
        while (1)
        {
          v20 = v14 == v19 ? 4 : 2;
          v21 = sub_24395D118((a1 + 32), v20);
          if (v21)
          {
            break;
          }

          v22 = *(a1 + 216) + v14;
          *(a1 + 208) -= v14;
          *(a1 + 216) = v22;
          sub_2438D9DE0(a1, 1);
          v23 = *(a1 + 216);
          v19 = *(a1 + 208);
          if (v19 >= *(a1 + 224) - v23)
          {
            v14 = *(a1 + 224) - v23;
          }

          else
          {
            v14 = *(a1 + 208);
          }

          *(a1 + 32) = v23;
          *(a1 + 40) = v14;
        }

        if (v21 <= 0)
        {
          switch(v21)
          {
            case -5:
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Buffer error in ZlibDecompressionStream::Next");
              goto LABEL_38;
            case -3:
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Data error in ZlibDecompressionStream::Next");
              goto LABEL_38;
            case -2:
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "Stream error in ZlibDecompressionStream::Next");
              goto LABEL_38;
          }
        }

        else if (v21 == 1)
        {
          v24 = *(a1 + 16) - *(a1 + 64);
          *a3 = v24;
          v25 = *(a1 + 192);
          *a2 = v25;
          v16 = v24;
          *(a1 + 192) = v25 + v24;
          *(a1 + 200) = 0;
          v13 = *(a1 + 208);
          v15 = *(a1 + 216);
          goto LABEL_29;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unknown error in ZlibDecompressionStream::Next");
      }
    }

    else
    {
      if (v8 == 3)
      {
        *a2 = v11;
        *a3 = v14;
        v15 = *(a1 + 216);
        *(a1 + 192) = v15 + v14;
        *(a1 + 200) = 0;
        v16 = v14;
LABEL_29:
        *(a1 + 208) = v13 - v14;
        *(a1 + 216) = v15 + v14;
        *(a1 + 232) += v16;
        return 1;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Unknown compression state in ZlibDecompressionStream::Next");
    }

LABEL_38:
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v7 = *(a1 + 192);
  *a2 = v7;
  *a3 = v6;
  *(a1 + 192) = v7 + v6;
  *(a1 + 200) = 0;
  return 1;
}

uint64_t sub_2438D9D5C(uint64_t a1)
{
  result = sub_2438DC128(a1, 0);
  if (*(a1 + 184) == 4)
  {
    v3 = 0;
  }

  else
  {
    v4 = result;
    v5 = sub_2438DC128(a1, 1) << 8;
    result = sub_2438DC128(a1, 1);
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *(a1 + 184) = v6;
    v3 = (v5 | (result << 16) | v4) >> 1;
  }

  *(a1 + 208) = v3;
  return result;
}

uint64_t sub_2438D9DE0(uint64_t a1, int a2)
{
  v6 = 0;
  result = (*(**(a1 + 24) + 16))(*(a1 + 24), a1 + 216, &v6);
  if (result)
  {
    *(a1 + 224) = *(a1 + 216) + v6;
  }

  else
  {
    if (a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "Read past EOF in ZlibDecompressionStream::readBuffer");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    *(a1 + 184) = 4;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

void *sub_2438D9EB4(void *result, int a2)
{
  v2 = result[24];
  if (!v2 || result[25])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Backup without previous Next in ZlibDecompressionStream");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  result[24] = v2 - a2;
  result[25] = a2;
  result[29] -= a2;
  return result;
}

uint64_t sub_2438D9F44(void *a1, int a2)
{
  a1[29] += a2;
  if (a2 < 1)
  {
    return 1;
  }

  v9[3] = v2;
  v9[4] = v3;
  v4 = a2;
  while (1)
  {
    v9[0] = 0;
    v8 = 0;
    if (((*(*a1 + 16))(a1, v9, &v8) & 1) == 0)
    {
      return 0;
    }

    if (v8 > v4)
    {
      break;
    }

    v6 = __OFSUB__(v4, v8);
    v4 -= v8;
    if ((v4 < 0) ^ v6 | (v4 == 0))
    {
      return 1;
    }
  }

  (*(*a1 + 24))(a1, (v8 - v4));
  return 1;
}

uint64_t sub_2438DA020(uint64_t a1, uint64_t a2)
{
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  (*(**(a1 + 24) + 48))(*(a1 + 24));
  *(a1 + 232) = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v4 = sub_2438A9710(a2);
  result = (*(*a1 + 32))(a1, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Bad skip in ZlibDecompressionStream::seek");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return result;
}

uint64_t sub_2438DA12C(uint64_t a1)
{
  sub_2438A9A08(&v9);
  v2 = sub_2438AA2A8(&v9, "zlib(", 5);
  (*(**(a1 + 24) + 56))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  sub_2438AA2A8(v5, ")", 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v13);
}

uint64_t sub_2438DA328(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2856A0440;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  sub_2438DECF0(a1 + 24, a4);
  sub_2438DECF0(a1 + 64, *(a1 + 16));
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v6 = *a2;
  *a2 = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_2438DA3E0(_Unwind_Exception *a1)
{
  sub_2438DF490(v1 + 24);
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  nullsub_1(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438DA434(uint64_t a1, char **a2, _DWORD *a3)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = *(a1 + 112);
    *a2 = v7;
    *a3 = v6;
    *(a1 + 152) += v6;
    *(a1 + 112) = &v7[v6];
    *(a1 + 120) = 0;
  }

  else
  {
    v8 = *(a1 + 104);
    if (!v8 || !*(a1 + 128))
    {
      sub_2438DA62C(a1);
      v8 = *(a1 + 104);
    }

    if (v8 == 4)
    {
      return 0;
    }

    v11 = *(a1 + 136);
    v10 = *(a1 + 144);
    if (v11 == v10)
    {
      sub_2438DA6B0(a1, 1);
      v11 = *(a1 + 136);
      v10 = *(a1 + 144);
      v8 = *(a1 + 104);
    }

    v12 = v10 - v11;
    v13 = *(a1 + 128);
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(a1 + 128);
    }

    if (v8 == 1)
    {
      if (v13 <= v12)
      {
        *(a1 + 136) = &v11[v14];
      }

      else
      {
        if (*(a1 + 56) < v13)
        {
          sub_2438DECAC(a1 + 24, *(a1 + 128));
          v11 = *(a1 + 136);
        }

        memcpy(*(a1 + 40), v11, v14);
        v17 = *(a1 + 128);
        *(a1 + 136) += v14;
        v11 = *(a1 + 40);
        while (v14 < v17)
        {
          sub_2438DA6B0(a1, 1);
          v18 = *(a1 + 136);
          if (*(a1 + 128) - v14 >= *(a1 + 144) - v18)
          {
            v19 = *(a1 + 144) - v18;
          }

          else
          {
            v19 = *(a1 + 128) - v14;
          }

          memcpy((*(a1 + 40) + v14), v18, v19);
          v14 += v19;
          v17 = *(a1 + 128);
          *(a1 + 136) += v19;
        }
      }

      v20 = *(a1 + 80);
      v21 = *(a1 + 96);
      v16 = (*(*a1 + 64))(a1, v11);
      *(a1 + 104) = 0;
      v22 = *(a1 + 80);
      *a2 = v22;
      *a3 = v16;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = &v22[v16];
    }

    else if (v8 == 3)
    {
      *a2 = v11;
      *a3 = v14;
      v15 = *(a1 + 136) + v14;
      *(a1 + 112) = v15;
      *(a1 + 120) = 0;
      *(a1 + 128) = v13 - v14;
      *(a1 + 136) = v15;
      LODWORD(v16) = v14;
    }

    else
    {
      LODWORD(v16) = *a3;
    }

    *(a1 + 152) += v16;
  }

  return 1;
}

uint64_t sub_2438DA62C(uint64_t a1)
{
  result = sub_2438DC180(a1, 0);
  if (*(a1 + 104) == 4)
  {
    v3 = 0;
  }

  else
  {
    v4 = result;
    v5 = sub_2438DC180(a1, 1) << 8;
    result = sub_2438DC180(a1, 1);
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *(a1 + 104) = v6;
    v3 = (v5 | (result << 16) | v4) >> 1;
  }

  *(a1 + 128) = v3;
  return result;
}

uint64_t sub_2438DA6B0(uint64_t a1, int a2)
{
  v10 = 0;
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 136, &v10);
  if (result)
  {
    *(a1 + 144) = *(a1 + 136) + v10;
  }

  else
  {
    if (a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      (*(*a1 + 56))(&v8, a1);
      v6 = std::string::append(&v8, "read past EOF");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v9.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      sub_2438DCB2C(exception, &v9);
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    *(a1 + 104) = 4;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  return result;
}

void sub_2438DA7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void *sub_2438DA838(void *result, int a2)
{
  v2 = result;
  v3 = result[14];
  if (!v3 || result[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*v2 + 56))(&v7, v2);
    v5 = std::string::insert(&v7, 0, "Backup without previous Next in ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v8.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v8.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  result[14] = v3 - a2;
  result[15] = a2;
  result[19] -= a2;
  return result;
}

void sub_2438DA92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2438DA98C(void *a1, int a2)
{
  a1[19] += a2;
  if (a2 < 1)
  {
    return 1;
  }

  v9[3] = v2;
  v9[4] = v3;
  v4 = a2;
  while (1)
  {
    v9[0] = 0;
    v8 = 0;
    if (((*(*a1 + 16))(a1, v9, &v8) & 1) == 0)
    {
      return 0;
    }

    if (v8 > v4)
    {
      break;
    }

    v6 = __OFSUB__(v4, v8);
    v4 -= v8;
    if ((v4 < 0) ^ v6 | (v4 == 0))
    {
      return 1;
    }
  }

  (*(*a1 + 24))(a1, (v8 - v4));
  return 1;
}

uint64_t sub_2438DAA68(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  v4 = sub_2438A9710(a2);
  result = (*(*a1 + 32))(a1, v4);
  if ((result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*a1 + 56))(&v9, a1);
    v7 = std::string::insert(&v9, 0, "Bad skip in ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_2438DCB2C(exception, &v10);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_2438DABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unint64_t sub_2438DAC08(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13 = 0;
  if ((sub_243960E6C(a2, a3, &v13) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v13 > a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Snappy length exceeds block size");
    v11 = MEMORY[0x277D82750];
    v12 = MEMORY[0x277D825D8];
    goto LABEL_8;
  }

  if (!sub_243961204(a2, a3, a4))
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "SnappyDecompressionStream choked on corrupt input");
    v11 = &unk_2856A0970;
    v12 = std::runtime_error::~runtime_error;
LABEL_8:
    __cxa_throw(exception, v11, v12);
  }

  return v13;
}

uint64_t sub_2438DAD38(uint64_t a1, unsigned __int8 *a2, int a3, char *__dst, int a5)
{
  LODWORD(result) = sub_243989058(a2, __dst, a3, a5);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*a1 + 56))(&v10, a1);
    v8 = std::string::append(&v10, " - failed to decompress");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_2438DCB2C(exception, &v11);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_2438DAE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2438DAE78(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 88))
  {
    sub_2438D9360(a1);
    v6 = (*(*a1 + 88))(a1);
    v7 = *(a1 + 88);
    v8 = (*(a1 + 80) + *(a1 + 92));
    if (v6 >= v7)
    {
      *(v8 - 3) = (2 * v7) | 1;
      *(v8 - 2) = v7 >> 7;
      *(v8 - 1) = v7 >> 15;
      v10 = (a1 + 48);
      v9 = *(a1 + 88);
    }

    else
    {
      v9 = v6;
      *(v8 - 3) = __PAIR16__((2 * v6) >> 56, 2 * v6);
      *(v8 - 1) = v6 >> 15;
      v10 = (a1 + 120);
    }

    if (v9 >= 1)
    {
      v11 = *v10;
      v12 = *(a1 + 92);
      do
      {
        v13 = *(a1 + 96);
        if (v12 == v13)
        {
          if ((sub_2438AAB54(a1, (a1 + 80), (a1 + 96)) & 1) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Failed to get next output buffer from output stream.");
LABEL_20:
            __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
          }

          v12 = 0;
          *(a1 + 92) = 0;
          v8 = *(a1 + 80);
          v13 = *(a1 + 96);
        }

        else if (v12 > v13)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Write to an out-of-bound place!");
          goto LABEL_20;
        }

        v14 = v13 - v12;
        if (v14 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        memcpy(v8, v11, v15);
        v12 = *(a1 + 92) + v15;
        *(a1 + 92) = v12;
        v11 += v15;
        v8 += v15;
        v16 = __OFSUB__(v9, v15);
        v9 -= v15;
      }

      while (!((v9 < 0) ^ v16 | (v9 == 0)));
    }
  }

  *a2 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a3 = v17;
  *(a1 + 88) = v17;
  v18 = (*(*a1 + 96))(a1);
  sub_2438DECAC(a1 + 104, v18);
  return 1;
}

uint64_t sub_2438DB09C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_2438DB0E8(uint64_t a1)
{
  v2 = sub_2438DC9BC();
  v3 = off_281AF4120(v2);
  v4 = v3[1];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    if (v4)
    {
      v5 = *v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 152);
  *(a1 + 144) = v5;
  *(a1 + 152) = v4;
  if (v6)
  {
    sub_2438CB880(v6);
    v5 = *(a1 + 144);
  }

  if (!v5)
  {
    v7 = sub_2439067EC();
    sub_2438DC7D4(&v13, v7, sub_2439068DC);
    sub_2438DC9BC();
    v8 = v13;
    v9 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v3[1];
    *v3 = v8;
    v3[1] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
      v8 = v13;
      v9 = v14;
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 152);
    *(a1 + 144) = v8;
    *(a1 + 152) = v9;
    if (v11)
    {
      sub_2438CB880(v11);
    }

    if (v14)
    {
      sub_2438CB880(v14);
    }

    if (!*(a1 + 144))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Error while calling ZSTD_createCCtx() for zstd.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

uint64_t sub_2438DB230(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_2438DB280(uint64_t a1)
{
  v2 = sub_2438DC9BC();
  v3 = off_281AF4138(v2);
  v4 = v3[1];
  if (v4)
  {
    v4 = std::__shared_weak_count::lock(v4);
    if (v4)
    {
      v5 = *v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 168);
  *(a1 + 160) = v5;
  *(a1 + 168) = v4;
  if (v6)
  {
    sub_2438CB880(v6);
    v5 = *(a1 + 160);
  }

  if (!v5)
  {
    v7 = sub_243949490();
    sub_2438DC8C8(&v13, v7, sub_24394949C);
    sub_2438DC9BC();
    v8 = v13;
    v9 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v3[1];
    *v3 = v8;
    v3[1] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
      v8 = v13;
      v9 = v14;
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 168);
    *(a1 + 160) = v8;
    *(a1 + 168) = v9;
    if (v11)
    {
      sub_2438CB880(v11);
    }

    if (v14)
    {
      sub_2438CB880(v14);
    }

    if (!*(a1 + 160))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Error while calling ZSTD_createDCtx() for zstd.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

uint64_t sub_2438DB3C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a1 == 5)
  {
    if (a3)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    v12 = operator new(0xA0uLL);
    result = sub_2438DC1D8(v12, a2, v15, a4, a5, a6);
  }

  else if (a1 == 1)
  {
    if (a3)
    {
      v14 = -1;
    }

    else
    {
      v14 = 2;
    }

    v12 = operator new(0xD8uLL);
    result = sub_2438D9500(v12, a2, v14, a4, a5, a6);
  }

  else
  {
    if (a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCACC(exception, "compression codec");
      __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
    }

    v12 = operator new(0x20uLL);
    result = sub_2438AA9F0(v12, a6, a2, a4, a5);
  }

  *a7 = v12;
  return result;
}

uint64_t sub_2438DB514@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v19 = operator new(0xA0uLL);
        v20 = *a2;
        *a2 = 0;
        v28 = v20;
        sub_2438DC3C4(v19, &v28, a3, a4);
        *a5 = v19;
        result = v28;
        v28 = 0;
        if (!result)
        {
          return result;
        }

        return (*(*result + 8))(result);
      case 4:
        v16 = operator new(0xA0uLL);
        v17 = *a2;
        *a2 = 0;
        v27 = v17;
        sub_2438DC464(v16, &v27, a3, a4);
        *a5 = v16;
        result = v27;
        v27 = 0;
        if (!result)
        {
          return result;
        }

        return (*(*result + 8))(result);
      case 5:
        v11 = operator new(0xB0uLL);
        v12 = *a2;
        *a2 = 0;
        v26 = v12;
        sub_2438DC504(v11, &v26, a3, a4);
        *a5 = v11;
        result = v26;
        v26 = 0;
        if (!result)
        {
          return result;
        }

        return (*(*result + 8))(result);
    }

LABEL_22:
    v21 = result;
    sub_2438A9A08(v25);
    v22 = sub_2438AA2A8(v25, "Unknown compression codec ", 26);
    MEMORY[0x245D43190](v22, v21);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    sub_2438DCA98(exception, &v24);
    __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }

  if (!result)
  {
    v18 = *a2;
    *a2 = 0;
    *a5 = v18;
    return result;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v9 = operator new(0xA0uLL);
      v10 = *a2;
      *a2 = 0;
      v29 = v10;
      sub_2438DC324(v9, &v29, a3, a4);
      *a5 = v9;
      result = v29;
      v29 = 0;
      if (!result)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }

    goto LABEL_22;
  }

  v13 = operator new(0xF0uLL);
  v14 = *a2;
  *a2 = 0;
  v30 = v14;
  sub_2438D97A8(v13, &v30, a3, a4);
  *a5 = v13;
  result = v30;
  if (v30)
  {
    v15 = *(*v30 + 8);

    return v15();
  }

  return result;
}

void sub_2438DB7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_2438A9B74(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_2438DB874(void *a1)
{
  v1 = sub_2438DC658(a1);

  operator delete(v1);
}

void sub_2438DB8A0(void *a1)
{
  v1 = sub_2438DC5CC(a1);

  operator delete(v1);
}

uint64_t sub_2438DB8C8(uint64_t a1)
{
  sub_2438A9A08(&v9);
  v2 = sub_2438AA2A8(&v9, "snappy(", 7);
  (*(**(a1 + 8) + 56))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  sub_2438AA2A8(v5, ")", 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v13);
}

uint64_t sub_2438DBAC4(uint64_t a1)
{
  sub_2438A9A08(&v9);
  v2 = sub_2438AA2A8(&v9, "lzo(", 4);
  (*(**(a1 + 8) + 56))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  sub_2438AA2A8(v5, ")", 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v13);
}

uint64_t sub_2438DBCC0(uint64_t a1)
{
  sub_2438A9A08(&v9);
  v2 = sub_2438AA2A8(&v9, "lz4(", 4);
  (*(**(a1 + 8) + 56))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  sub_2438AA2A8(v5, ")", 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v13);
}

void sub_2438DBEC0(void *a1)
{
  v1 = sub_2438DC6D4(a1);

  operator delete(v1);
}

void sub_2438DBF04(void *a1)
{
  v1 = sub_2438DC778(a1);

  operator delete(v1);
}

uint64_t sub_2438DBF2C(uint64_t a1)
{
  sub_2438A9A08(&v9);
  v2 = sub_2438AA2A8(&v9, "zstd(", 5);
  (*(**(a1 + 8) + 56))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_2438AA2A8(v2, v3, v4);
  sub_2438AA2A8(v5, ")", 1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v13);
}

uint64_t sub_2438DC128(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (v3 == *(a1 + 224))
  {
    sub_2438D9DE0(a1, a2);
    if (*(a1 + 184) == 4)
    {
      return 0;
    }

    v3 = *(a1 + 216);
  }

  *(a1 + 216) = v3 + 1;
  return *v3;
}

uint64_t sub_2438DC180(uint64_t a1, int a2)
{
  v3 = *(a1 + 136);
  if (v3 == *(a1 + 144))
  {
    sub_2438DA6B0(a1, a2);
    if (*(a1 + 104) == 4)
    {
      return 0;
    }

    v3 = *(a1 + 136);
  }

  *(a1 + 136) = v3 + 1;
  return *v3;
}

uint64_t sub_2438DC1D8(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_2438DC244(a1, a2, a3, a4, a5, a6);
  *v7 = &unk_2856A06F0;
  v7[18] = 0;
  v7[19] = 0;
  sub_2438DB0E8(v7);
  return a1;
}

void sub_2438DC224(_Unwind_Exception *a1)
{
  v3 = v1[19];
  if (v3)
  {
    sub_2438CB880(v3);
  }

  sub_2438DC2AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438DC244(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_2438D9160(a1, a2, a3, a4, a5, a6);
  *v8 = &unk_2856A0660;
  sub_2438DF400(v8 + 13, a6, 0);
  return a1;
}

void *sub_2438DC2AC(void *a1)
{
  *a1 = &unk_2856A0660;
  sub_2438DF7B0((a1 + 13));
  *a1 = &unk_2856A0318;
  sub_2438DF7B0((a1 + 4));

  return sub_2438AA9F4(a1);
}

void *sub_2438DC324(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  sub_2438DA328(a1, &v7, a3, a4);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *a1 = &unk_2856A0510;
  return a1;
}

void sub_2438DC3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_24398983C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438DC3C4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  sub_2438DA328(a1, &v7, a3, a4);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *a1 = &unk_2856A0580;
  return a1;
}

void sub_2438DC44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_24398983C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438DC464(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  sub_2438DA328(a1, &v7, a3, a4);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *a1 = &unk_2856A05F0;
  return a1;
}

void sub_2438DC4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_24398983C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438DC504(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  sub_2438DA328(a1, &v7, a3, a4);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *a1 = &unk_2856A0780;
  a1[20] = 0;
  a1[21] = 0;
  sub_2438DB280(a1);
  return a1;
}

void sub_2438DC598(_Unwind_Exception *a1)
{
  v3 = v1[21];
  if (v3)
  {
    sub_2438CB880(v3);
  }

  sub_2438DC5CC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438DC5CC(void *a1)
{
  *a1 = &unk_2856A0440;
  sub_2438DF490(a1 + 8);
  sub_2438DF490(a1 + 3);
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return nullsub_1(a1);
}

void *sub_2438DC658(void *a1)
{
  *a1 = &unk_2856A0380;
  sub_24395A74C((a1 + 13));
  *a1 = &unk_2856A0318;
  sub_2438DF7B0((a1 + 4));

  return sub_2438AA9F4(a1);
}

void *sub_2438DC6D4(void *a1)
{
  *a1 = &unk_2856A06F0;
  v2 = a1[19];
  if (v2)
  {
    sub_2438CB880(v2);
  }

  *a1 = &unk_2856A0660;
  sub_2438DF7B0((a1 + 13));
  *a1 = &unk_2856A0318;
  sub_2438DF7B0((a1 + 4));

  return sub_2438AA9F4(a1);
}

uint64_t sub_2438DC778(void *a1)
{
  *a1 = &unk_2856A0780;
  v2 = a1[21];
  if (v2)
  {
    sub_2438CB880(v2);
  }

  return sub_2438DC5CC(a1);
}

void *sub_2438DC7D4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = operator new(0x28uLL);
  *v6 = &unk_2856A07F0;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = a2;
  v6[4] = a3;
  a1[1] = v6;
  return a1;
}

void sub_2438DC83C(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

uint64_t sub_2438DC884(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A0840))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void *sub_2438DC8C8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = operator new(0x28uLL);
  *v6 = &unk_2856A0870;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = a2;
  v6[4] = a3;
  a1[1] = v6;
  return a1;
}

void sub_2438DC930(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

uint64_t sub_2438DC978(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A08C0))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

double sub_2438DC9BC()
{
  if (!*off_281AF4150())
  {
    v1 = result;
    sub_243989860();
    return v1;
  }

  return result;
}

std::logic_error *sub_2438DCA98(std::logic_error *a1, const std::string *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_2856A08F0;
  return result;
}

std::logic_error *sub_2438DCACC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_2856A08F0;
  return result;
}

void sub_2438DCB04(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  operator delete(v1);
}

std::runtime_error *sub_2438DCB2C(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2856A0918;
  return result;
}

std::runtime_error *sub_2438DCB60(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2856A0918;
  return result;
}

void sub_2438DCB9C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

std::runtime_error *sub_2438DCBC4(std::runtime_error *a1, const std::string *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2856A0940;
  return result;
}

std::runtime_error *sub_2438DCBF8(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2856A0940;
  return result;
}

void sub_2438DCC30(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

uint64_t *sub_2438DCC58(uint64_t *a1, std::string *__str)
{
  *a1 = 0;
  a1[1] = 0;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (!size)
    {
      return a1;
    }

    v5 = __str->__r_.__value_.__r.__words[0];
  }

  else
  {
    v5 = __str;
    if (!*(&__str->__r_.__value_.__s + 23))
    {
      return a1;
    }
  }

  v6 = v5->__r_.__value_.__s.__data_[0];
  v7 = v6 == 45;
  if (size <= v7)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    do
    {
      if (size - v7 >= 0x12)
      {
        v8 = 18;
      }

      else
      {
        v8 = size - v7;
      }

      std::string::basic_string(&__p, __str, v7, v8, &v19);
      v9 = std::stoll(&__p, 0, 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (size == v7)
      {
        v10 = 1;
      }

      else
      {
        if (v8 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8;
        }

        v10 = 1;
        do
        {
          v10 *= 10;
          --v11;
        }

        while (v11);
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = v10;
      sub_2438DCDC4(a1, &__p);
      v12 = a1[1];
      v13 = __CFADD__(v12, v9);
      v14 = v12 + v9;
      v15 = (v9 >> 63) + v13 + *a1;
      *a1 = v15;
      a1[1] = v14;
      v7 += v8;
    }

    while (v7 < size);
  }

  if (v6 == 45)
  {
    if (v14)
    {
      v16 = ~v15;
    }

    else
    {
      v16 = -v15;
    }

    *a1 = v16;
    a1[1] = -v14;
  }

  return a1;
}

void sub_2438DCDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438DCDC4(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  v4 = a2[1];
  v5 = HIDWORD(v4) * v2;
  v6 = v4 * HIDWORD(v2) + v5 + ((v4 * v2) >> 32);
  *result = v3 * v2 + HIDWORD(v4) * HIDWORD(v2) + v4 * *result + HIDWORD(v6) + ((HIDWORD(v2) * v3 + v4 * HIDWORD(*result) + HIDWORD(v3) * v2 + HIDWORD(v4) * *result) << 32) + ((v6 < v5) << 32);
  result[1] = (v4 * v2) | (v6 << 32);
  return result;
}

uint64_t sub_2438DCE3C(unint64_t *a1, _DWORD *a2, char *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = 1;
    if (!v3)
    {
      v4 = -v4;
      *a3 = 1;
      goto LABEL_11;
    }

    v3 = -v3;
    v4 = ~v4;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  if (!v4)
  {
    if (v3 < 0xFFFFFFFF)
    {
      if (v3)
      {
        *a2 = v3;
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      *a2 = __ROR8__(v3, 32);
      return 2;
    }
  }

LABEL_11:
  if (HIDWORD(v4))
  {
    *a2 = HIDWORD(v4);
    a2[1] = v4;
    a2[2] = HIDWORD(v3);
    a2[3] = v3;
    return 4;
  }

  else
  {
    *a2 = v4;
    a2[1] = HIDWORD(v3);
    a2[2] = v3;
    return 3;
  }
}

int *sub_2438DCED0(int *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1 && a3)
  {
    if (a2 >= 2)
    {
      v3 = result + 1;
      v4 = *result;
      v5 = a2 - 1;
      do
      {
        v6 = v4 << a3;
        v4 = *v3;
        *(v3 - 1) = (*v3 >> (32 - a3)) | v6;
        ++v3;
        --v5;
      }

      while (v5);
    }

    result[a2 - 1] <<= a3;
  }

  return result;
}

_DWORD *sub_2438DCF28(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1 && a3)
  {
    if (a2 >= 2)
    {
      v3 = a2 + 1;
      v4 = &result[a2 - 1];
      v5 = v4;
      do
      {
        v6 = *--v5;
        *v4 = (v6 << (32 - a3)) | (*v4 >> a3);
        --v3;
        v4 = v5;
      }

      while (v3 > 2);
    }

    *result >>= a3;
  }

  return result;
}

unint64_t *sub_2438DCF8C(unint64_t *result, unsigned int *a2, uint64_t a3)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = *a2;
        v5 = a2[1];
        v6 = a2[2];
        break;
      case 4:
        v4 = a2[1] | (*a2 << 32);
        v5 = a2[2];
        v6 = a2[3];
        break;
      case 5:
        if (*a2)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Can't build Int128 with 5 ints.");
          goto LABEL_19;
        }

        v4 = a2[2] | (a2[1] << 32);
        v5 = a2[3];
        v6 = a2[4];
        break;
      default:
LABEL_18:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unsupported length for building Int128");
LABEL_19:
        __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    *result = v4;
    result[1] = v6 | (v5 << 32);
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = *a2;
        goto LABEL_12;
      }

      if (a3 == 2)
      {
        v3 = a2[1] | (*a2 << 32);
LABEL_12:
        *result = 0;
        result[1] = v3;
        return result;
      }

      goto LABEL_18;
    }

    *result = 0;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_2438DD0A0(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t *a4, int a5, int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = v20;
    v11 = a2;
    do
    {
      v12 = *a1++;
      v13 = v12 | (v9 << 32);
      *v10++ = v13 / a3;
      v9 = v13 % a3;
      --v11;
    }

    while (v11);
  }

  v18 = 0;
  v19 = 0;
  sub_2438DCF8C(&v18, v20, a2);
  *a4 = 0;
  a4[1] = v9;
  if (a5 != a6)
  {
    if (v19)
    {
      v14 = ~v18;
    }

    else
    {
      v14 = -v18;
    }

    v18 = v14;
    v19 = -v19;
  }

  if (a5)
  {
    if (v9)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    *a4 = v15;
    a4[1] = -v9;
  }

  result = v18;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2438DD194(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v45 = 0;
  v6 = sub_2438DCE3C(a1, v46, &v40 + 1);
  v7 = sub_2438DCE3C(a2, v44, &v40);
  if (v6 >= v7)
  {
    v9 = v7;
    v10 = v6 + 1;
    if (v7 == 1)
    {
      result = sub_2438DD0A0(&v45, v6 + 1, v44[0], a3, HIBYTE(v40), v40);
    }

    else
    {
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_2438DD494(exception, "Division by 0 in Int128");
        __cxa_throw(exception, off_278DDACA8, MEMORY[0x277D825E0]);
      }

      v11 = v10 - v7;
      v12 = 32 - __clz(v44[0]);
      if (v44[0])
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = 32 - v13;
      sub_2438DCED0(v44, v7, 32 - v13);
      sub_2438DCED0(&v45, v10, v14);
      if (v11 >= 1)
      {
        v15 = 0;
        v16 = v44[0];
        v17 = v44[1];
        v18 = &v45;
        do
        {
          v19 = v46[v15 - 1];
          v20 = v15 + 1;
          v21 = v46[v15];
          if (v19 == v16)
          {
            LODWORD(v22) = -1;
          }

          else
          {
            v22 = (v21 | (v19 << 32)) / v16;
          }

          v23 = (v21 - v22 * v16);
          do
          {
            if (v17 * v22 <= (v46[v15 + 1] | (v23 << 32)))
            {
              break;
            }

            LODWORD(v22) = v22 - 1;
            v23 = (v23 + v16);
          }

          while (v23 >= v16);
          v24 = 0;
          v25 = v9;
          do
          {
            v26 = v24 + v43[v25 + 3] * v22;
            v27 = v18[v25];
            v28 = v27 >= v26;
            v18[v25] = v27 - v26;
            v24 = HIDWORD(v26);
            if (!v28)
            {
              ++v24;
            }

            v29 = v25-- <= 1;
          }

          while (!v29);
          v30 = v46[v15 - 1];
          v46[v15 - 1] = v30 - v24;
          if (v30 < v24)
          {
            v31 = 0;
            LODWORD(v22) = v22 - 1;
            v32 = v9;
            do
            {
              v33 = v31 + v43[v32 + 3] + v18[v32];
              v18[v32] = v33;
              v31 = HIDWORD(v33);
              v29 = v32-- <= 1;
            }

            while (!v29);
            v46[v15 - 1] += v31;
          }

          v43[v15] = v22;
          ++v18;
          ++v15;
        }

        while (v20 != v11);
      }

      sub_2438DCF28(&v45, v10, v14);
      v41 = 0;
      v42 = 0;
      sub_2438DCF8C(&v41, v43, v10 - v9);
      sub_2438DCF8C(a3, &v45, v10);
      if (HIBYTE(v40) != v40)
      {
        if (v42)
        {
          v34 = ~v41;
        }

        else
        {
          v34 = -v41;
        }

        v41 = v34;
        v42 = -v42;
      }

      if (HIBYTE(v40))
      {
        v35 = a3[1];
        v36 = -v35;
        if (v35)
        {
          v37 = ~*a3;
        }

        else
        {
          v37 = -*a3;
        }

        *a3 = v37;
        a3[1] = v36;
      }

      result = v41;
    }
  }

  else
  {
    result = 0;
    *a3 = *a1;
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

std::runtime_error *sub_2438DD494(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

uint64_t sub_2438DD4C8(unint64_t *a1)
{
  v26 = xmmword_24398D2D0;
  v27 = xmmword_24398D2C0;
  v24 = 0;
  v25 = 0;
  sub_2438C102C(v18);
  v16 = sub_2438DD194(a1, &v26, &v24);
  v17 = v2;
  v3 = (v16 | v2) != 0;
  if (v16 | v2)
  {
    v4 = sub_2438DD7C8(&v16);
    MEMORY[0x245D431C0](&v19, v4);
    if (v24 < 0)
    {
      if (v25)
      {
        v5 = ~v24;
      }

      else
      {
        v5 = -v24;
      }

      v24 = v5;
      v25 = -v25;
    }
  }

  v14 = 0;
  v15 = 0;
  v6 = sub_2438DD194(&v24, &v27, &v14);
  v16 = v6;
  v17 = v7;
  if (v3)
  {
    *(&v21[1].__locale_ + *(v19 - 24)) = 18;
    v13 = 48;
    sub_2438A963C(&v19, &v13);
  }

  else
  {
    if (!(v6 | v7))
    {
      goto LABEL_16;
    }

    if (v14 < 0)
    {
      if (v15)
      {
        v8 = ~v14;
      }

      else
      {
        v8 = -v14;
      }

      v14 = v8;
      v15 = -v15;
    }
  }

  v9 = sub_2438DD7C8(&v16);
  MEMORY[0x245D431C0](&v19, v9);
  *(&v21[1].__locale_ + *(v19 - 24)) = 18;
  v13 = 48;
  sub_2438A963C(&v19, &v13);
LABEL_16:
  v10 = sub_2438DD7C8(&v14);
  MEMORY[0x245D431C0](&v19, v10);
  std::stringbuf::str();
  v18[0] = *MEMORY[0x277D82818];
  v11 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v11;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D432B0](&v23);
}

void sub_2438DD7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2438C12D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438DD7C8(void *a1)
{
  if (*a1)
  {
    if (*a1 != -1 || (result = a1[1], (result & 0x8000000000000000) == 0))
    {
LABEL_4:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DD494(exception, "Int128 too large to convert to long");
      __cxa_throw(exception, off_278DDACA8, MEMORY[0x277D825E0]);
    }
  }

  else
  {
    result = a1[1];
    if (result < 0)
    {
      goto LABEL_4;
    }
  }

  return result;
}

void sub_2438DD850(unint64_t *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_2438DD4C8(a1);
  if (!a2)
  {
    *a3 = __str;
    memset(&__str, 0, sizeof(__str));
    goto LABEL_50;
  }

  v6 = *a1;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __str.__r_.__value_.__r.__words[1];
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v7 - a2;
    if (v7 > a2)
    {
      v9 = v8;
      std::string::basic_string(&v28, &__str, 0, v8, &__p);
      v10 = std::string::append(&v28, ".");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string(&__p, &__str, v9, a2, &v31);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      goto LABEL_21;
    }

    if (v7 == a2)
    {
      std::operator+<char>();
      goto LABEL_50;
    }

    sub_2438BFB70(&v29, "0.");
    v21 = a2 - v7;
    if (v21 >= 1)
    {
      do
      {
        std::string::append(&v29, "0");
        --v21;
      }

      while (v21);
    }

    sub_2438DDC68(&v29.__r_.__value_.__l.__data_, &__str.__r_.__value_.__l.__data_, a3);
LABEL_47:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v18 = v29.__r_.__value_.__r.__words[0];
    goto LABEL_49;
  }

  if (v7 - 1 <= a2)
  {
    if (v7 - 1 == a2)
    {
      std::string::basic_string(&v29, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v28);
      v19 = std::string::insert(&v29, 0, "-0.");
      v20 = *&v19->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&a3->__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
      sub_2438BFB70(&v29, "-0.");
      if (v7 <= a2)
      {
        v22 = a2 - v7 + 1;
        do
        {
          std::string::append(&v29, "0");
          --v22;
        }

        while (v22);
      }

      std::string::basic_string(&v28, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &__p);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v29;
      }

      else
      {
        v23 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v29.__r_.__value_.__l.__size_;
      }

      v25 = std::string::insert(&v28, 0, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      a3->__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&a3->__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_47;
  }

  std::string::basic_string(&v28, &__str, 0, v7 - a2, &__p);
  v14 = std::string::append(&v28, ".");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string(&__p, &__str, v7 - a2, a2, &v31);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

LABEL_21:
  v16 = std::string::append(&v29, p_p, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = v28.__r_.__value_.__r.__words[0];
LABEL_49:
    operator delete(v18);
  }

LABEL_50:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_2438DDBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438DDC68@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_2438DDF34(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_2438DDD34(uint64_t result, unint64_t a2, int a3, _BYTE *a4)
{
  v20 = result;
  v21 = a2;
  *a4 = 0;
  v19[0] = 0;
  v19[1] = 0;
  if (a3 >= 1)
  {
    v5 = a3;
    while (1)
    {
      if (v5 >= 0x12)
      {
        v6 = 18;
      }

      else
      {
        v6 = v5;
      }

      v7 = v20;
      if (v20)
      {
        if (v20 < 1)
        {
          goto LABEL_14;
        }
      }

      else if (!v21)
      {
        goto LABEL_14;
      }

      v18 = xmmword_24398D2E0;
      v8 = qword_24398D300[v6];
      v16 = v8 >> 63;
      v17 = v8;
      v7 = sub_2438DD194(&v18, &v16, v19);
      v10 = v7 < v20;
      if (v7 == v20)
      {
        if (v9 < v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v7 = v20;
        if (v10)
        {
LABEL_25:
          *a4 = 1;
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

LABEL_14:
      if (v7 && v7 < 0)
      {
        v18 = xmmword_24398D2F0;
        v11 = qword_24398D300[v6];
        v12 = v11 >> 63;
        v16 = v11 >> 63;
        v17 = v11;
        v14 = sub_2438DD194(&v18, &v16, v19);
        if (v14 == v20)
        {
          if (v15 > v21)
          {
            goto LABEL_24;
          }
        }

        else if (v14 > v20)
        {
LABEL_24:
          *a4 = 1;
          return 0x8000000000000000;
        }
      }

      else
      {
        v11 = qword_24398D300[v6];
        v12 = v11 >> 63;
      }

      *&v18 = v12;
      *(&v18 + 1) = v11;
      sub_2438DCDC4(&v20, &v18);
      v13 = __OFSUB__(v5, v6);
      v5 -= v6;
      if ((v5 < 0) ^ v13 | (v5 == 0))
      {
        return v20;
      }
    }
  }

  return result;
}

uint64_t sub_2438DDEB8(uint64_t result, uint64_t a2, int a3)
{
  v10 = result;
  v11 = a2;
  v9[0] = 0;
  v9[1] = 0;
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (v3 >= 0x12)
      {
        v4 = 18;
      }

      else
      {
        v4 = v3;
      }

      v5 = qword_24398D300[v4];
      v8[0] = v5 >> 63;
      v8[1] = v5;
      result = sub_2438DD194(&v10, v8, v9);
      v10 = result;
      v11 = v6;
      v7 = __OFSUB__(v3, v4);
      v3 -= v4;
    }

    while (!((v3 < 0) ^ v7 | (v3 == 0)));
  }

  return result;
}

uint64_t sub_2438DDF34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2438AA68C();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

void sub_2438DDFB4(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete(v1);
}

char *sub_2438DDFDC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a3;
  v6 = a1;
  v7 = a3;
  if (v6 < a2)
  {
    v8 = 0;
    v9 = a4 - 8;
    v10 = a2 - 8;
    v11 = 255 * a2 - 248;
    v12 = 1;
    v13 = &unk_24398D3B8;
    v63 = v6;
    v7 = a3;
    while (1)
    {
      v14 = 0;
      v15 = v11 - 255 * v6;
      v16 = (v6 + 2);
      for (i = a2 - 1 - v6; ; i -= 3)
      {
        v18 = v6 + v14;
        v19 = *(v6 + v14);
        if (v19 != 17)
        {
          break;
        }

        if (v18 + 3 > a2 && *(v18 + 1))
        {
          goto LABEL_91;
        }

        v8 = 0;
        v14 += 3;
        v15 -= 765;
        v16 = (v16 + 3);
        v12 = 1;
        if (v6 + v14 >= a2)
        {
          return (v7 - v4);
        }
      }

      v20 = (v18 + 1);
      if ((v19 & 0xF0) != 0)
      {
        if (v12)
        {
          v8 = v19 - 17;
        }

        else
        {
          if ((v19 & 0xF0) == 0x10)
          {
            v24 = v19 & 7;
            if ((v19 & 7) == 0)
            {
              if (v20 >= a2)
              {
                v26 = 0;
                v15 = 7;
              }

              else
              {
                v25 = 7;
                while (1)
                {
                  v26 = *(v16 - 1);
                  if (*(v16 - 1))
                  {
                    break;
                  }

                  v16 = (v16 + 1);
                  v25 += 255;
                  if (!--i)
                  {
                    v26 = 0;
                    v20 = a2;
                    goto LABEL_45;
                  }
                }

                v15 = v25;
                v20 = v16;
              }

LABEL_45:
              v24 = v26 + v15;
            }

            if ((v20 + 1) > a2)
            {
              goto LABEL_93;
            }

            v35 = *v20;
            if ((v19 & 8) != 0)
            {
              v36 = 0x7FFF;
            }

            else
            {
              v36 = 0x3FFF;
            }

            v22 = v36 + (v35 >> 2);
            ++v20;
          }

          else
          {
            if ((v19 & 0xE0) != 0x20)
            {
              if (v19 < 0x40)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                sub_2438DE6C4();
                v61 = std::string::insert(&v65, 0, "Invalid LZO command ");
                v62 = *&v61->__r_.__value_.__l.__data_;
                v67 = v61->__r_.__value_.__r.__words[2];
                v66 = v62;
                v61->__r_.__value_.__l.__size_ = 0;
                v61->__r_.__value_.__r.__words[2] = 0;
                v61->__r_.__value_.__r.__words[0] = 0;
                sub_2438DEAA8(exception, v6 - v63 + v14);
                __cxa_throw(exception, &unk_2856A09A0, j_std::runtime_error::~runtime_error);
              }

              if (v20 >= a2)
              {
LABEL_91:
                v57 = __cxa_allocate_exception(0x10uLL);
                sub_2438DE6C0(v57, v6 - v63 + v14 + 1);
                goto LABEL_92;
              }

              v23 = (v19 >> 5) + 1;
              v34 = *v20;
              v20 = (v6 + v14 + 2);
              v22 = (v19 >> 2) & 7 | (8 * v34);
              v8 = v19 & 3;
              goto LABEL_60;
            }

            v24 = v19 & 0x1F;
            if ((v19 & 0x1F) == 0)
            {
              if (v20 >= a2)
              {
                v29 = 0;
                v27 = 31;
              }

              else
              {
                v27 = v15 + 24;
                v28 = 31;
                while (1)
                {
                  v29 = *(v16 - 1);
                  if (*(v16 - 1))
                  {
                    break;
                  }

                  v16 = (v16 + 1);
                  v28 += 255;
                  if (!--i)
                  {
                    v29 = 0;
                    v20 = a2;
                    goto LABEL_56;
                  }
                }

                v27 = v28;
                v20 = v16;
              }

LABEL_56:
              v24 = v29 + v27;
            }

            if ((v20 + 1) > a2)
            {
LABEL_93:
              v59 = v20;
              v57 = __cxa_allocate_exception(0x10uLL);
              sub_2438DE6C0(v57, v59 - v63);
LABEL_92:
              __cxa_throw(v57, &unk_2856A09A0, j_std::runtime_error::~runtime_error);
            }

            v35 = *v20;
            v22 = v35 >> 2;
            ++v20;
          }

          v8 = v35 & 3;
          v23 = v24 + 2;
          if (v24 != -2)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (v8)
        {
          if (v8 > 3)
          {
            if (v20 >= a2)
            {
              goto LABEL_91;
            }

            v33 = *v20;
            v20 = (v6 + v14 + 2);
            v22 = (4 * v33) | (v19 >> 2);
            v8 = v19 & 3;
            v23 = 2;
          }

          else
          {
            if (v20 >= a2)
            {
              goto LABEL_91;
            }

            v21 = (4 * *v20) | (v19 >> 2);
            v20 = (v6 + v14 + 2);
            v22 = v21 | 0x800;
            v8 = v19 & 3;
            v23 = 3;
          }

LABEL_60:
          v37 = v22 + 1;
          v38 = &v7[-v37];
          v39 = &v7[v23];
          if (&v7[-v37] < v4 || v39 > a4)
          {
            goto LABEL_93;
          }

          if (v7 <= v9)
          {
            if (v22 > 6)
            {
              v45 = *v38;
              v44 = v38 + 8;
              *v7 = v45;
            }

            else
            {
              v41 = v13[v37];
              v42 = dword_24398D3D8[v37];
              *v7 = *v38;
              v7[1] = v38[1];
              v7[2] = v38[2];
              v7[3] = v38[3];
              v43 = &v38[v41];
              *(v7 + 1) = *v43;
              v44 = &v43[-v42];
            }

            v46 = v7 + 8;
            if (v39 >= v9)
            {
              while (v46 < v9)
              {
                v48 = *v44;
                v44 += 8;
                *v46++ = v48;
              }

              if (v46 < v39)
              {
                v49 = &v7[v23] - v46;
                do
                {
                  v50 = *v44++;
                  *v46 = v50;
                  v46 = (v46 + 1);
                  --v49;
                }

                while (v49);
              }
            }

            else if (v23 >= 9)
            {
              do
              {
                v47 = *v44;
                v44 += 8;
                *v46++ = v47;
              }

              while (v46 < v39);
            }
          }

          else if (v23 >= 1)
          {
            do
            {
              *v7 = v7[-v37];
              ++v7;
            }

            while (v7 < v39);
          }

          v7 = v39;
          goto LABEL_81;
        }

        if (!*(v6 + v14))
        {
          if (v20 >= a2)
          {
            v32 = 0;
            v30 = 15;
          }

          else
          {
            v30 = v15 + 8;
            v31 = 15;
            while (1)
            {
              v32 = *(v16 - 1);
              if (*(v16 - 1))
              {
                break;
              }

              v16 = (v16 + 1);
              v31 += 255;
              if (!--i)
              {
                v32 = 0;
                v20 = a2;
                goto LABEL_53;
              }
            }

            v30 = v31;
            v20 = v16;
          }

LABEL_53:
          v19 = v32 + v30;
        }

        v8 = v19 + 3;
      }

LABEL_81:
      v51 = v8;
      v52 = &v7[v8];
      v6 = v20 + v8;
      if (v52 > v9 || v6 > v10)
      {
        v64 = v4;
        if (v52 > a4)
        {
          goto LABEL_93;
        }

        v54 = v13;
        v55 = v9;
        v56 = a4;
        memcpy(v7, v20, v8);
        v9 = v55;
        a4 = v56;
        v13 = v54;
        v4 = v64;
      }

      else
      {
        do
        {
          v53 = *v20;
          v20 += 4;
          *v7 = v53;
          v7 += 8;
          v51 -= 8;
        }

        while (v7 < v52);
        v6 = v20 + v51;
      }

      v12 = 0;
      v7 = v52;
      if (v6 >= a2)
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        sub_2438DE6C0(v57, v6 - v63);
        goto LABEL_92;
      }
    }
  }

  return (v7 - v4);
}