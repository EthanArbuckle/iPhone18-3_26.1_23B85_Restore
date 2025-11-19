void sub_1AE6B1AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p)
{
  v16 = *(v14 + 16);
  if (v16)
  {
    *v12 = v16;
    operator delete(v16);
  }

  *(v11 + 144) = v14;
  if (v13)
  {
    operator delete(v13);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B1B80(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1AE5CBB70();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  v7 = *(a2 + 8);
  *(40 * v2 + 0x10) = 0;
  *(v6 + 8) = v7;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v10 = v6 + 40;
  v11 = *a1;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 8) = *(v14 + 2);
      *v15 = v16;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = 0;
      *(v15 + 16) = *(v14 + 1);
      *(v15 + 32) = v14[4];
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = 0;
      v14 += 5;
      v15 += 40;
    }

    while (v14 != v12);
    do
    {
      v17 = v11[2];
      if (v17)
      {
        v11[3] = v17;
        operator delete(v17);
      }

      v11 += 5;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1AE6B1D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_1AE6B1D90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B1D90(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 40;
        *(a1 + 16) = v2 - 40;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 40;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE6B1E00(void *a1)
{
  sub_1AE6B0A38(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6B1E3C(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, double *a5, unint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v9 = *(a1 + 16);
  v10 = *(a1 + 168);
  if (v9 <= v10)
  {
    v11 = *(a1 + 168);
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = a3 + 4 * a4 + 4 * (1 - v11);
  if (a4 >= v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v12 = a3;
    v13 = a4;
  }

  if (v13)
  {
    v14 = (a1 + 24);
    v15 = *(a1 + 56);
    if (v13 > 7)
    {
      v16 = 0;
      v17 = v15 + 4 * v13;
      v19 = v15 < a1 + 28 && v14 < v17;
      v20 = v12 >= v17 || v15 >= v12 + 4 * v13;
      if (v20 && !v19)
      {
        v16 = v13 & 0xFFFFFFFFFFFFFFF8;
        v21 = vld1q_dup_f32(v14);
        v22 = (v12 + 16);
        v23 = (v15 + 16);
        v24 = v13 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v25 = vbicq_s8(*v22, vcgtq_u32(*v22, v21));
          v23[-1] = vbicq_s8(v22[-1], vcgtq_u32(v22[-1], v21));
          *v23 = v25;
          v22 += 2;
          v23 += 2;
          v24 -= 8;
        }

        while (v24);
        goto LABEL_29;
      }
    }

    else
    {
      v16 = 0;
    }

    do
    {
      v26 = *(v12 + 4 * v16);
      if (v26 > *v14)
      {
        v26 = 0;
      }

      *(v15 + 4 * v16++) = v26;
LABEL_29:
      ;
    }

    while (v13 != v16);
  }

  else
  {
    v15 = *(a1 + 56);
  }

  if (*(a1 + 24) >= a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = 0;
  }

  *(v15 + 4 * v13) = v27;
  v28 = *(a1 + 416);
  v29 = *(a1 + 440);
  v30 = v13 + 1;
  v52 = v29;
  v53 = v13 + 1;
  if (v13 == -1)
  {
    v31 = *(a1 + 440);
    v32 = *(a1 + 416);
    goto LABEL_47;
  }

  v33 = a1 + 304;
  do
  {
    v35 = (*(*v33 + 24))(a1 + 304, v15, 1, &dword_1EB5E0E90, 3);
    if (v35 == 3)
    {
      *v28++ = dword_1EB5E0E90;
      if (v29)
      {
        if (v30 == 1)
        {
          *v29++ = dword_1EB5E0E94;
        }

        v34 = dword_1EB5E0E98;
LABEL_37:
        *v29++ = v34;
      }
    }

    else if (v35 == 1)
    {
      v34 = dword_1EB5E0E90;
      *v28++ = dword_1EB5E0E90;
      if (v29)
      {
        goto LABEL_37;
      }
    }

    v15 += 4;
    --v30;
  }

  while (v30);
  v32 = *(a1 + 416);
  v31 = *(a1 + 440);
  v6 = a6;
  v7 = a5;
LABEL_47:
  v36 = (v28 - v32) >> 2;
  v37 = v36 - v9;
  if (v36 < v9)
  {
    v37 = 0;
  }

  if (v9 >= v36)
  {
    v38 = (v28 - v32) >> 2;
  }

  else
  {
    v38 = v9;
  }

  v39 = 4 * v37;
  v40 = sub_1AE748DF0(a1, (v32 + 4 * v37), v38, v6, 1, *(a1 + 32));
  v41 = *(*(a1 + 416) + v39 + 4 * v38 - 4);
  if (*(a1 + 336) <= v41 && *(a1 + 340) >= v41 || *(a1 + 344) <= v41 && *(a1 + 348) >= v41)
  {
    v42 = (v29 - v31) >> 2;
    v43 = v29 - v31 + -4 * v10;
    if (v42 <= v10)
    {
      v43 = 0;
    }

    if (v42 >= v10)
    {
      v44 = v10;
    }

    else
    {
      v44 = (v29 - v31) >> 2;
    }

    v45 = sub_1AE748DF0(a1 + 152, (v52 + v43), v44, 0, 0, *(a1 + 32)) + v40;
    v46 = sub_1AE748DF0(a1, *(a1 + 56), v53, v6, 1, *(a1 + 32));
    v47 = __exp10(v45);
    v48 = __exp10(v46);
    v40 = log10(v48 + v47);
  }

  *v7 = v40;
  return 1;
}

void sub_1AE6B2164(void *a1)
{
  sub_1AE6B219C(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6B219C(void *a1)
{
  *a1 = &unk_1F242BF20;
  v2 = a1[55];
  if (v2)
  {
    a1[56] = v2;
    operator delete(v2);
  }

  v3 = a1[52];
  if (v3)
  {
    a1[53] = v3;
    operator delete(v3);
  }

  a1[38] = &unk_1F242F190;
  v4 = a1[45];
  if (v4)
  {
    a1[46] = v4;
    operator delete(v4);
  }

  v5 = a1[39];
  if (v5)
  {
    munmap(v5, a1[40]);
  }

  a1[40] = 0;
  sub_1AE6B225C(a1 + 19);

  return sub_1AE6B225C(a1);
}

void *sub_1AE6B225C(void *a1)
{
  *a1 = &unk_1F2432228;
  v2 = a1[14];
  if (v2)
  {
    munmap(v2, a1[15]);
  }

  a1[15] = 0;
  v3 = a1[13];
  a1[13] = 0;
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x1B2706400](v3, 0x1080C409A65DFB4);
  }

  v5 = a1[12];
  a1[12] = 0;
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      *(v5 + 8) = v6;
      operator delete(v6);
    }

    MEMORY[0x1B2706400](v5, 0x1080C409A65DFB4);
  }

  v7 = a1[11];
  a1[11] = 0;
  if (v7)
  {
    v8 = *(v7 + 24);
    if (v8)
    {
      *(v7 + 32) = v8;
      operator delete(v8);
    }

    v9 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x1B2706400](v7, 0x30C400D66AB62);
  }

  v10 = a1[10];
  a1[10] = 0;
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        sub_1AE701454(v12 + 8);
        MEMORY[0x1B2706400](v12, 0x1020C403F824CD1);
        if (*v11)
        {
          free(*v11);
        }
      }

      MEMORY[0x1B2706400](v11, 0x1030C40FC63861FLL);
    }

    MEMORY[0x1B2706400](v10, 0x20C4093837F09);
  }

  v13 = a1[7];
  if (v13)
  {
    a1[8] = v13;
    operator delete(v13);
  }

  return a1;
}

void *sub_1AE6B23EC(void *a1)
{
  *a1 = &unk_1F242F190;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    munmap(v3, a1[2]);
  }

  a1[2] = 0;
  return a1;
}

uint64_t sub_1AE6B2454(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 8) == *(a1 + 16))
  {
    __assert_rtn("getToken", "LMLexiconCursorImpl.cpp", 71, "!m_entries.empty()");
  }

  if (a2)
  {
    LXEntryGetProbability();
    *a2 = v6;
  }

  if (a3)
  {
    *a3 = *(a1 + 152);
  }

  result = **(a1 + 8);
  if (result)
  {
    LODWORD(result) = LXEntryGetTokenID();
    if (result)
    {
      return result;
    }

    else
    {
      return 500;
    }
  }

  return result;
}

BOOL sub_1AE6B24E8(void *a1)
{
  v2 = a1[1];
  v3 = (a1 + 1);
  if (v2 != a1[2])
  {
    CFRelease(*v2);
    sub_1AE6B268C(v3);
  }

  for (i = a1[8]; i != a1[9]; i = a1[8])
  {
    if (a1[1] != a1[2])
    {
      LXEntryGetProbability();
      v6 = v5;
      LXCursorPrefixProbability();
      if (v6 >= v7)
      {
        return a1[1] != a1[2];
      }

      i = a1[8];
    }

    v8 = *i;
    sub_1AE6B2900((a1 + 8));
    LXCursorEnumerateEntries();
    LXCursorEnumerateChildren();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return a1[1] != a1[2];
}

void sub_1AE6B2678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1AE67C3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B268C(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  if (v4)
  {
    if (v4 == a1 + 24)
    {
      v20 = v19;
      (*(*v4 + 24))(v4, v19);
    }

    else
    {
      v20 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v20 = 0;
  }

  v5 = (v3 - v2) >> 3;
  if (v5 >= 2)
  {
    v6 = 0;
    v16 = *v2;
    v7 = v2;
    do
    {
      v8 = &v7[v6 + 1];
      v9 = (2 * v6) | 1;
      v10 = 2 * v6 + 2;
      if (v10 < v5)
      {
        v11 = *v8;
        v17 = v8[1];
        v18 = v11;
        if (!v20)
        {
          sub_1AE60819C();
        }

        v12 = (*(*v20 + 48))(v20, &v18, &v17);
        if (v12)
        {
          v13 = 8;
        }

        else
        {
          v13 = 0;
        }

        v8 = (v8 + v13);
        if (v12)
        {
          v9 = v10;
        }
      }

      *v7 = *v8;
      v7 = v8;
      v6 = v9;
    }

    while (v9 <= ((v5 - 2) >> 1));
    v14 = (v3 - 8);
    if (v8 == (v3 - 8))
    {
      *v8 = v16;
    }

    else
    {
      *v8 = *v14;
      *v14 = v16;
      sub_1AE6B3218(v2, (v8 + 1), v19, v8 + 1 - v2);
    }
  }

  result = v20;
  if (v20 == v19)
  {
    result = (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    result = (*(*v20 + 40))();
  }

  *(a1 + 8) -= 8;
  return result;
}

void sub_1AE6B28E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE6B3320(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B2900(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  if (v4)
  {
    if (v4 == a1 + 24)
    {
      v20 = v19;
      (*(*v4 + 24))(v4, v19);
    }

    else
    {
      v20 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v20 = 0;
  }

  v5 = (v3 - v2) >> 3;
  if (v5 >= 2)
  {
    v6 = 0;
    v16 = *v2;
    v7 = v2;
    do
    {
      v8 = &v7[v6 + 1];
      v9 = (2 * v6) | 1;
      v10 = 2 * v6 + 2;
      if (v10 < v5)
      {
        v11 = *v8;
        v17 = v8[1];
        v18 = v11;
        if (!v20)
        {
          sub_1AE60819C();
        }

        v12 = (*(*v20 + 48))(v20, &v18, &v17);
        if (v12)
        {
          v13 = 8;
        }

        else
        {
          v13 = 0;
        }

        v8 = (v8 + v13);
        if (v12)
        {
          v9 = v10;
        }
      }

      *v7 = *v8;
      v7 = v8;
      v6 = v9;
    }

    while (v9 <= ((v5 - 2) >> 1));
    v14 = (v3 - 8);
    if (v8 == (v3 - 8))
    {
      *v8 = v16;
    }

    else
    {
      *v8 = *v14;
      *v14 = v16;
      sub_1AE6B3090(v2, (v8 + 1), v19, v8 + 1 - v2);
    }
  }

  result = v20;
  if (v20 == v19)
  {
    result = (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    result = (*(*v20 + 40))();
  }

  *(a1 + 8) -= 8;
  return result;
}

void sub_1AE6B2B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE6B3198(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B2B74(uint64_t a1, const void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v21[0] = a2;
  v3 = v2[18];
  if (!v3)
  {
    sub_1AE60819C();
  }

  result = (*(*v3 + 48))(v3, v21);
  if (result)
  {
    v6 = CFRetain(a2);
    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7)
    {
      v10 = v2[1];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        sub_1AE5CBB70();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v16 = v12;
      v17 = (8 * v12);
      v18 = &v17[-v16];
      *v17 = v6;
      v9 = (v17 + 1);
      memcpy(v18, v10, v11);
      v2[1] = v18;
      v2[2] = v9;
      v2[3] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = v6;
      v9 = (v8 + 8);
    }

    v2[2] = v9;
    v19 = v2[1];
    v20 = v2[7];
    if (v20)
    {
      if (v20 == v2 + 4)
      {
        v22 = v21;
        (*(*v20 + 24))(v20, v21);
      }

      else
      {
        v22 = (*(*v20 + 16))(v20);
      }
    }

    else
    {
      v22 = 0;
    }

    sub_1AE6B3218(v19, v9, v21, (v9 - v19) >> 3);
    result = v22;
    if (v22 == v21)
    {
      return (*(*v22 + 32))(v22);
    }

    else if (v22)
    {
      return (*(*v22 + 40))();
    }
  }

  return result;
}

void sub_1AE6B2DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6B3320(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B2E08(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 32);
  v4 = CFRetain(cf);
  return sub_1AE6B2E48((v2 + 64), &v4);
}

uint64_t sub_1AE6B2E48(uint64_t *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1AE5CBB70();
    }

    v9 = v3 - v6;
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

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = (v11 + 1);
    memcpy(0, v6, v7);
    *a1 = 0;
    a1[1] = v5;
    a1[2] = 0;
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

  a1[1] = v5;
  v12 = *a1;
  v13 = a1[6];
  if (v13)
  {
    if (v13 == a1 + 3)
    {
      v16 = v15;
      (*(*v13 + 24))(v13, v15);
    }

    else
    {
      v16 = (*(*v13 + 16))(v13);
    }
  }

  else
  {
    v16 = 0;
  }

  sub_1AE6B3090(v12, v5, v15, (v5 - v12) >> 3);
  result = v16;
  if (v16 == v15)
  {
    return (*(*v16 + 32))(v16);
  }

  if (v16)
  {
    return (*(*v16 + 40))();
  }

  return result;
}

void sub_1AE6B307C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6B3198(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B3090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = *v8;
    v10 = (a2 - 8);
    v16 = *(a2 - 8);
    v17 = v9;
    v11 = *(a3 + 24);
    if (!v11)
    {
LABEL_10:
      sub_1AE60819C();
    }

    result = (*(*v11 + 48))(v11, &v17, &v16);
    if (result)
    {
      v12 = *v10;
      do
      {
        v13 = v8;
        *v10 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        v14 = *v8;
        v16 = v12;
        v17 = v14;
        v15 = *(a3 + 24);
        if (!v15)
        {
          goto LABEL_10;
        }

        result = (*(*v15 + 48))(v15, &v17, &v16);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v12;
    }
  }

  return result;
}

uint64_t sub_1AE6B3198(uint64_t a1)
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

uint64_t sub_1AE6B3218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = *v8;
    v10 = (a2 - 8);
    v16 = *(a2 - 8);
    v17 = v9;
    v11 = *(a3 + 24);
    if (!v11)
    {
LABEL_10:
      sub_1AE60819C();
    }

    result = (*(*v11 + 48))(v11, &v17, &v16);
    if (result)
    {
      v12 = *v10;
      do
      {
        v13 = v8;
        *v10 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        v14 = *v8;
        v16 = v12;
        v17 = v14;
        v15 = *(a3 + 24);
        if (!v15)
        {
          goto LABEL_10;
        }

        result = (*(*v15 + 48))(v15, &v17, &v16);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v12;
    }
  }

  return result;
}

uint64_t sub_1AE6B3320(uint64_t a1)
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

void sub_1AE6B33A0(void *a1)
{
  sub_1AE6B33D8(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6B33D8(void *a1)
{
  *a1 = &unk_1F242BFB8;
  for (i = (a1 + 1); ; sub_1AE6B268C(i))
  {
    v3 = a1[1];
    if (v3 == a1[2])
    {
      break;
    }

    CFRelease(*v3);
  }

  while (1)
  {
    v4 = a1[8];
    if (v4 == a1[9])
    {
      break;
    }

    CFRelease(*v4);
    sub_1AE6B2900((a1 + 8));
  }

  v5 = a1[18];
  if (v5 == a1 + 15)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = a1[14];
  if (v6 == a1 + 11)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    if (v7)
    {
LABEL_14:
      a1[9] = v7;
      operator delete(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    v7 = a1[8];
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v8 = a1[7];
  if (v8 == a1 + 4)
  {
    (*(*v8 + 32))(v8);
    v9 = *i;
    if (!*i)
    {
      return a1;
    }

    goto LABEL_19;
  }

  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = *i;
  if (*i)
  {
LABEL_19:
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_1AE6B35B4(uint64_t a1)
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

uint64_t sub_1AE6B3634(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *a1;
  if (*a1)
  {
LABEL_5:
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE6B36D0(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *a1;
    if (!*a1)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *a1;
  if (*a1)
  {
LABEL_5:
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE6B3778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1AE6B37E4()
{
  LXCursorPrefixProbability();
  v1 = v0;
  LXCursorPrefixProbability();
  return v1 < v2;
}

uint64_t sub_1AE6B38BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM17LexiconCursorImplC1EPK9_LXCursorNSt3__18functionIFbPK8_LXEntryEEENS_11TokenSourceEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_1AE6B3928()
{
  LXEntryGetProbability();
  v1 = v0;
  LXEntryGetProbability();
  return v1 < v2;
}

uint64_t sub_1AE6B39F4(uint64_t a1, CFTypeRef cf, uint64_t a3, int a4)
{
  *a1 = &unk_1F242BFB8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = a1 + 32;
  *(a1 + 32) = &unk_1F242C000;
  *(a1 + 64) = 0;
  v7 = (a1 + 64);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = a1 + 88;
  *(a1 + 88) = &unk_1F242C090;
  v8 = a1 + 120;
  v9 = *(a3 + 24);
  if (!v9)
  {
    goto LABEL_4;
  }

  if (v9 != a3)
  {
    v9 = (*(*v9 + 16))(v9);
LABEL_4:
    *(a1 + 144) = v9;
    goto LABEL_6;
  }

  *(a1 + 144) = v8;
  (*(**(a3 + 24) + 24))(*(a3 + 24), v8);
LABEL_6:
  *(a1 + 152) = a4;
  if (cf)
  {
    v11 = CFRetain(cf);
    sub_1AE6B2E48(v7, &v11);
  }

  return a1;
}

void sub_1AE6B3B44(_Unwind_Exception *a1)
{
  sub_1AE6B3634(v2);
  sub_1AE6B36D0(v1);
  _Unwind_Resume(a1);
}

void sub_1AE6B3B70(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a4 == a2)
  {
    return;
  }

  v7 = a4;
  v9 = a2;
  while (1)
  {
    v11 = *a3;
    v12 = v7 - *a3;
    v13 = v12 / 40;
    v14 = *a1;
    v15 = v9 - *a1;
    v16 = v12 / 40 + 102 * (a3 - a1) + 0x3333333333333333 * (v15 >> 3);
    v17 = v16 - 2;
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return;
      }

      if (v16 == 2)
      {
        if (v7 == v11)
        {
          v7 = *(a3 - 1) + 4080;
        }

        if (*(v7 - 8) < *(v9 + 32))
        {
          v172 = *v9;
          *v331 = *(v9 + 8);
          *&v331[7] = *(v9 + 15);
          v173 = *(v9 + 23);
          *v9 = 0;
          *(v9 + 8) = 0;
          *(v9 + 16) = 0;
          v323 = *(v9 + 24);
          v174 = *(v7 - 24);
          *v9 = *(v7 - 40);
          *(v9 + 16) = v174;
          *(v7 - 17) = 0;
          *(v7 - 40) = 0;
          *(v9 + 24) = *(v7 - 16);
          if (*(v7 - 17) < 0)
          {
            operator delete(*(v7 - 40));
          }

          *(v7 - 40) = v172;
          *(v7 - 25) = *&v331[7];
          *(v7 - 32) = *v331;
          *(v7 - 17) = v173;
          *(v7 - 16) = v323;
        }

        return;
      }

      goto LABEL_13;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v175 = v15 / 40;
      if (v15 >= -39)
      {
        v176 = (v175 + 1) / 0x66uLL;
        v177 = &a1[v176];
        v178 = (*v177 - 4080 * v176 + 40 * (v175 + 1));
        v179 = v175 + 2;
        goto LABEL_321;
      }

      v177 = &a1[-((100 - v175) / 0x66uLL)];
      v178 = (*v177 + 40 * (101 - ((100 - v175) % 0x66uLL)));
      if (v15 < 0xFFFFFFFFFFFFFFB1)
      {
        v280 = 99 - v175;
        v271 = &a1[-(v280 / 0x66)];
        v272 = (*v271 + 40 * (101 - (v280 % 0x66)));
        if (v7 == v11)
        {
          goto LABEL_322;
        }
      }

      else
      {
        v179 = 1;
LABEL_321:
        v271 = &a1[v179 / 0x66];
        v272 = (*v271 - 4080 * (v179 / 0x66) + 40 * v179);
        if (v7 == v11)
        {
LABEL_322:
          v273 = *--a3;
          v7 = v273 + 4080;
        }
      }

      sub_1AE6B6484(a1, v9, v177, v178, v271, v272, a3, v7 - 40);
      return;
    }

    if (v16 == 5)
    {
      v167 = v15 / 40;
      if (v15 >= -39)
      {
        v168 = (v167 + 1) / 0x66uLL;
        v169 = &a1[v168];
        v170 = (*v169 - 4080 * v168 + 40 * (v167 + 1));
        v171 = v167 + 2;
        goto LABEL_315;
      }

      v169 = &a1[-((100 - v167) / 0x66uLL)];
      v170 = (*v169 + 40 * (101 - ((100 - v167) % 0x66uLL)));
      if (v15 < 0xFFFFFFFFFFFFFFB1)
      {
        v265 = &a1[-((99 - v167) / 0x66uLL)];
        v266 = (*v265 + 40 * (101 - ((99 - v167) % 0x66uLL)));
        if (v15 >= 0xFFFFFFFFFFFFFF89)
        {
          v267 = 1;
          goto LABEL_316;
        }

        v299 = 98 - v167;
        v268 = &a1[-(v299 / 0x66)];
        v269 = *v268 + 40 * (101 - (v299 % 0x66));
        if (v7 == v11)
        {
LABEL_317:
          v270 = *--a3;
          v7 = v270 + 4080;
        }
      }

      else
      {
        v171 = 1;
LABEL_315:
        v265 = &a1[v171 / 0x66];
        v266 = (*v265 - 4080 * (v171 / 0x66) + 40 * v171);
        v267 = v167 + 3;
LABEL_316:
        v268 = &a1[v267 / 0x66];
        v269 = *v268 - 4080 * (v267 / 0x66) + 40 * v267;
        if (v7 == v11)
        {
          goto LABEL_317;
        }
      }

      sub_1AE6B66A0(a1, v9, v169, v170, v265, v266, v268, v269, a3, v7 - 40);
      return;
    }

LABEL_13:
    v316 = v9;
    if (v16 <= 23)
    {
      if (a6)
      {
        if (v9 != v7)
        {
          for (i = v9 + 40; ; i += 40)
          {
            if (i - v14 == 4080)
            {
              v181 = a1[1];
              ++a1;
              v14 = v181;
              i = v181;
            }

            if (i == v7)
            {
              break;
            }

            v182 = a1;
            v183 = i;
            if (i == v14)
            {
              v182 = (a1 - 1);
              v183 = *(a1 - 1) + 4080;
            }

            v184 = *(i + 32);
            if (v184 < *(v183 - 8))
            {
              v185 = *i;
              *v324 = *(i + 8);
              *&v324[7] = *(i + 15);
              v186 = *(i + 23);
              *(i + 8) = 0;
              *(i + 16) = 0;
              *i = 0;
              v187 = *(i + 24);
              v188 = i;
              do
              {
                v190 = v183;
                if (*(v188 + 23) < 0)
                {
                  operator delete(*v188);
                }

                v191 = (v190 - 40);
                v192 = *(v190 - 40);
                *(v188 + 16) = *(v190 - 24);
                *v188 = v192;
                *(v190 - 17) = 0;
                *(v190 - 40) = 0;
                *(v188 + 24) = *(v190 - 16);
                if (v190 - 40 == v316)
                {
                  break;
                }

                if (v191 == *v182)
                {
                  v189 = *--v182;
                  v183 = v189 + 4080;
                }

                else
                {
                  v183 = v190 - 40;
                }

                v188 = v190 - 40;
              }

              while (v184 < *(v183 - 8));
              if (*(v190 - 17) < 0)
              {
                operator delete(*v191);
              }

              *(v190 - 40) = v185;
              *(v190 - 25) = *&v324[7];
              *(v190 - 32) = *v324;
              *(v190 - 17) = v186;
              *(v190 - 16) = v187;
              *(v190 - 8) = v184;
              v14 = *a1;
            }
          }
        }
      }

      else if (v9 != v7)
      {
        v274 = v15 / 40;
        if (v15 < -39)
        {
          v281 = 100 - v274;
          v282 = (100 - v274) / 0x66uLL;
          v277 = &a1[-v282];
          v278 = *v277;
          v279 = *v277 + 40 * (101 - (v281 - 102 * v282));
        }

        else
        {
          v275 = v274 + 1;
          v276 = (v274 + 1) / 0x66uLL;
          v277 = &a1[v276];
          v278 = *v277;
          v279 = *v277 - 4080 * v276 + 40 * v275;
        }

        while (v279 != v7)
        {
          v283 = (v279 - v278) / 40;
          if (v279 - v278 < 41)
          {
            v287 = 102 - v283;
            v285 = &v277[-(v287 / 0x66)];
            v286 = *v285 + 40 * (101 - (v287 % 0x66));
          }

          else
          {
            v284 = v283 - 1;
            v285 = &v277[v284 / 0x66];
            v286 = *v285 - 4080 * (v284 / 0x66) + 40 * v284;
          }

          v288 = *(v279 + 32);
          if (v288 < *(v286 + 32))
          {
            v289 = v7;
            v290 = *v279;
            *v327 = *(v279 + 8);
            *&v327[7] = *(v279 + 15);
            v291 = *(v279 + 23);
            *(v279 + 8) = 0;
            *(v279 + 16) = 0;
            *v279 = 0;
            v292 = *(v279 + 24);
            v293 = v279;
            do
            {
              v296 = v286;
              if (*(v293 + 23) < 0)
              {
                operator delete(*v293);
              }

              v297 = *v296;
              *(v293 + 16) = *(v296 + 16);
              *v293 = v297;
              *(v296 + 23) = 0;
              *v296 = 0;
              *(v293 + 24) = *(v296 + 24);
              if (v296 == *v285)
              {
                v294 = *--v285;
                v295 = v294 + 4080;
              }

              else
              {
                v295 = v296;
              }

              v286 = v295 - 40;
              v293 = v296;
            }

            while (v288 < *(v295 - 8));
            if (*(v296 + 23) < 0)
            {
              operator delete(*v296);
            }

            *v296 = v290;
            *(v296 + 8) = *v327;
            *(v296 + 15) = *&v327[7];
            *(v296 + 23) = v291;
            *(v296 + 24) = v292;
            *(v296 + 32) = v288;
            v278 = *v277;
            v7 = v289;
          }

          v279 += 40;
          if (v279 - v278 == 4080)
          {
            v298 = v277[1];
            ++v277;
            v278 = v298;
            v279 = v298;
          }
        }
      }

      return;
    }

    v314 = a3;
    if (!a5)
    {
      if (v9 == v7)
      {
        return;
      }

      v193 = v17 >> 1;
      v194 = v17 >> 1;
      v300 = v7;
      while (1)
      {
        v197 = (v9 - *a1) >> 3;
        v198 = 0xCCCCCCCCCCCCCCCDLL * v197;
        if (!v194)
        {
          break;
        }

        v199 = v198 + v194;
        if ((v198 + v194) < 1)
        {
          v204 = 101 - v199;
          v200 = &a1[-(v204 / 0x66)];
          v201 = *v200;
          v202 = *v200 + 40 * (101 - (v204 % 0x66));
        }

        else
        {
          v200 = &a1[v199 / 0x66];
          v201 = *v200;
          v202 = *v200 - 4080 * (v199 / 0x66) + 40 * v199;
        }

        if (v202 == v9)
        {
          v203 = 0;
          goto LABEL_222;
        }

        v203 = 102 * (v200 - a1) - 0x3333333333333333 * ((v202 - v201) >> 3) + 0x3333333333333333 * v197;
        if (v193 >= v203)
        {
          goto LABEL_222;
        }

LABEL_212:
        v195 = v194-- <= 0;
        v196 = v300;
        if (v195)
        {
          v224 = a3;
          v225 = v9;
          v226 = 102 * (a3 - a1) - 0x3333333333333333 * ((v300 - *a3) >> 3) + 0x3333333333333333 * ((v9 - *a1) >> 3);
          if (v226 < 2)
          {
            return;
          }

          while (2)
          {
            v315 = v224;
            v227 = 0;
            v309 = *v225;
            *v319 = *(v225 + 8);
            *&v319[7] = *(v225 + 15);
            v312 = *(v225 + 23);
            *v225 = 0;
            *(v225 + 8) = 0;
            *(v225 + 16) = 0;
            v228 = v225;
            v229 = a1;
            v326 = *(v225 + 24);
LABEL_256:
            if (v227 == -1)
            {
              v231 = v228;
            }

            else
            {
              v232 = v227 + 1 - 0x3333333333333333 * ((v228 - *v229) >> 3);
              if (v232 < 1)
              {
                v233 = 101 - v232;
                v229 -= v233 / 0x66;
                v231 = *v229 + 40 * (101 - (v233 % 0x66));
              }

              else
              {
                v229 += v232 / 0x66uLL;
                v231 = *v229 - 4080 * (v232 / 0x66uLL) + 40 * v232;
              }
            }

            v234 = (2 * v227) | 1;
            v227 = 2 * v227 + 2;
            if (v227 >= v226 || ((v235 = v231 - *v229, v236 = v235 / 40, v235 < -39) ? (v237 = v229[-((100 - v236) / 0x66uLL)] + 40 * (101 - ((100 - v236) % 0x66uLL))) : (v237 = v229[(v236 + 1) / 0x66uLL] - 4080 * ((v236 + 1) / 0x66uLL) + 40 * (v236 + 1)), *(v231 + 32) >= *(v237 + 32)))
            {
              v227 = v234;
              if (*(v228 + 23) < 0)
              {
                goto LABEL_269;
              }
            }

            else
            {
              v231 += 40;
              if (v231 - *v229 == 4080)
              {
                v238 = v229[1];
                ++v229;
                v231 = v238;
              }

              if (*(v228 + 23) < 0)
              {
LABEL_269:
                operator delete(*v228);
              }
            }

            v230 = *v231;
            *(v228 + 16) = *(v231 + 16);
            *v228 = v230;
            *(v231 + 23) = 0;
            *v231 = 0;
            *(v228 + 24) = *(v231 + 24);
            v228 = v231;
            if (v227 > ((v226 - 2) >> 1))
            {
              v239 = v196;
              if (*v315 == v196)
              {
                v239 = *(v315 - 1) + 4080;
              }

              v240 = (v239 - 40);
              v241 = *(v231 + 23);
              if (v239 - 40 == v231)
              {
                if (v241 < 0)
                {
                  operator delete(*v231);
                }

                *v231 = v309;
                *(v231 + 8) = *v319;
                *(v231 + 15) = *&v319[7];
                *(v231 + 23) = v312;
                *(v231 + 24) = v326;
LABEL_302:
                v224 = v315;
                v225 = v316;
              }

              else
              {
                if (v241 < 0)
                {
                  operator delete(*v231);
                }

                v242 = *v240;
                *(v231 + 16) = *(v239 - 24);
                *v231 = v242;
                *(v239 - 17) = 0;
                *(v239 - 40) = 0;
                *(v231 + 24) = *(v239 - 16);
                v243 = v231 + 40;
                if (v231 + 40 - *v229 == 4080)
                {
                  v244 = v229[1];
                  ++v229;
                  v243 = v244;
                }

                v225 = v316;
                if (*(v239 - 17) < 0)
                {
                  operator delete(*v240);
                }

                *(v239 - 40) = v309;
                *(v239 - 25) = *&v319[7];
                *(v239 - 32) = *v319;
                *(v239 - 17) = v312;
                *(v239 - 16) = v326;
                v224 = v315;
                if (v243 != v316)
                {
                  v245 = *v229;
                  v246 = (v316 - *a1) >> 3;
                  v247 = 102 * (v229 - a1) - 0x3333333333333333 * ((v243 - *v229) >> 3) + 0x3333333333333333 * v246;
                  v248 = v247 - 2;
                  if (v247 >= 2)
                  {
                    v249 = v248 >> 1;
                    v250 = v316;
                    if (v248 < 2)
                    {
                      goto LABEL_284;
                    }

                    v251 = v249 - 0x3333333333333333 * v246;
                    if (v251 < 1)
                    {
                      v250 = a1[-((101 - v251) / 0x66uLL)] + 40 * (101 - ((101 - v251) % 0x66uLL));
                      if (v245 == v243)
                      {
                        goto LABEL_285;
                      }
                    }

                    else
                    {
                      v250 = a1[v251 / 0x66uLL] - 4080 * (v251 / 0x66uLL) + 40 * v251;
LABEL_284:
                      if (v245 == v243)
                      {
LABEL_285:
                        v243 = *(v229 - 1) + 4080;
                      }
                    }

                    v252 = *(v243 - 8);
                    if (*(v250 + 32) < v252)
                    {
                      v254 = *(v243 - 40);
                      v253 = *(v243 - 32);
                      v255 = v243 - 40;
                      v313 = v254;
                      *&v332[7] = *(v255 + 15);
                      *v332 = v253;
                      v256 = *(v255 + 23);
                      *v255 = 0;
                      *(v255 + 8) = 0;
                      *(v255 + 16) = 0;
                      v257 = *(v255 + 24);
                      do
                      {
                        v258 = v196;
                        v259 = v255;
                        v255 = v250;
                        if (*(v259 + 23) < 0)
                        {
                          operator delete(*v259);
                        }

                        v260 = *v255;
                        *(v259 + 16) = *(v255 + 16);
                        *v259 = v260;
                        *(v255 + 23) = 0;
                        *v255 = 0;
                        *(v259 + 24) = *(v255 + 24);
                        v196 = v258;
                        if (!v249)
                        {
                          break;
                        }

                        v250 = v316;
                        if (v249 >= 3)
                        {
                          v261 = ((v249 - 1) >> 1) - 0x3333333333333333 * ((v316 - *a1) >> 3);
                          if (v261 < 1)
                          {
                            v250 = a1[-((101 - v261) / 0x66)] + 40 * (101 - ((101 - v261) % 0x66));
                          }

                          else
                          {
                            v250 = a1[v261 / 0x66] - 4080 * (v261 / 0x66) + 40 * v261;
                          }
                        }

                        v249 = (v249 - 1) >> 1;
                      }

                      while (*(v250 + 32) < v252);
                      if (*(v255 + 23) < 0)
                      {
                        operator delete(*v255);
                      }

                      *v255 = v313;
                      *(v255 + 8) = *v332;
                      *(v255 + 15) = *&v332[7];
                      *(v255 + 23) = v256;
                      *(v255 + 24) = v257;
                      *(v255 + 32) = v252;
                      goto LABEL_302;
                    }
                  }
                }
              }

              if (v196 == *v224)
              {
                v262 = *--v224;
                v196 = v262 + 4080;
              }

              v196 -= 40;
              v195 = v226-- <= 2;
              if (v195)
              {
                return;
              }

              continue;
            }

            goto LABEL_256;
          }
        }
      }

      v203 = 0;
      v202 = v9;
LABEL_222:
      v205 = (2 * v203) | 1;
      v206 = v198 + v205;
      if (v206 < 1)
      {
        v210 = 101 - v206;
        v207 = &a1[-(v210 / 0x66)];
        v208 = *v207;
        v209 = *v207 + 40 * (101 - (v210 % 0x66));
      }

      else
      {
        v207 = &a1[v206 / 0x66uLL];
        v208 = *v207;
        v209 = *v207 - 4080 * (v206 / 0x66uLL) + 40 * v206;
      }

      v211 = 2 * v203 + 2;
      if (v211 >= v16 || ((v212 = (v209 - v208) / 40, v209 - v208 < -39) ? (v213 = v207[-((100 - v212) / 0x66uLL)] + 40 * (101 - ((100 - v212) % 0x66uLL))) : (v213 = v207[(v212 + 1) / 0x66uLL] - 4080 * ((v212 + 1) / 0x66uLL) + 40 * (v212 + 1)), *(v209 + 32) >= *(v213 + 32)))
      {
        v211 = v205;
      }

      else
      {
        v209 += 40;
        if (v209 - v208 == 4080)
        {
          v209 = v207[1];
        }
      }

      v214 = *(v202 + 32);
      if (*(v209 + 32) >= v214)
      {
        v311 = *v202;
        *v325 = *(v202 + 8);
        *&v325[7] = *(v202 + 15);
        v308 = *(v202 + 23);
        *(v202 + 8) = 0;
        *(v202 + 16) = 0;
        *v202 = 0;
        v305 = *(v202 + 24);
        do
        {
          v215 = v202;
          v202 = v209;
          if (*(v215 + 23) < 0)
          {
            operator delete(*v215);
          }

          v216 = *v202;
          *(v215 + 16) = *(v202 + 16);
          *v215 = v216;
          *(v202 + 23) = 0;
          *v202 = 0;
          *(v215 + 24) = *(v202 + 24);
          if (v193 < v211)
          {
            break;
          }

          v217 = (2 * v211) | 1;
          v218 = v217 - 0x3333333333333333 * ((v9 - *a1) >> 3);
          if (v218 < 1)
          {
            v221 = 101 - v218;
            v219 = &a1[-(v221 / 0x66)];
            v220 = *v219;
            v209 = *v219 + 40 * (101 - (v221 % 0x66));
          }

          else
          {
            v219 = &a1[v218 / 0x66uLL];
            v220 = *v219;
            v209 = *v219 - 4080 * (v218 / 0x66uLL) + 40 * v218;
          }

          v211 = 2 * v211 + 2;
          if (v211 >= v16 || ((v222 = (v209 - v220) / 40, v209 - v220 < -39) ? (v223 = v219[-((100 - v222) / 0x66uLL)] + 40 * (101 - ((100 - v222) % 0x66uLL))) : (v223 = v219[(v222 + 1) / 0x66uLL] - 4080 * ((v222 + 1) / 0x66uLL) + 40 * (v222 + 1)), *(v209 + 32) >= *(v223 + 32)))
          {
            v211 = v217;
          }

          else
          {
            v209 += 40;
            if (v209 - v220 == 4080)
            {
              v209 = v219[1];
            }
          }
        }

        while (*(v209 + 32) >= v214);
        if (*(v202 + 23) < 0)
        {
          operator delete(*v202);
        }

        *v202 = v311;
        *(v202 + 8) = *v325;
        *(v202 + 15) = *&v325[7];
        *(v202 + 23) = v308;
        *(v202 + 24) = v305;
        *(v202 + 32) = v214;
      }

      goto LABEL_212;
    }

    v18 = v16 >> 1;
    v19 = v15 / 40 + (v16 >> 1);
    if (v16 < 0x81)
    {
      if (v19 < 1)
      {
        v44 = 101 - v19;
        v26 = &a1[-(v44 / 0x66)];
        v27 = (*v26 + 40 * (101 - (v44 % 0x66)));
        if (v12 < 41)
        {
          goto LABEL_30;
        }

LABEL_21:
        v28 = v13 - 1;
        v29 = (v13 - 1) / 0x66uLL;
        v30 = &a3[v29];
        v31 = (*v30 - 4080 * v29 + 40 * v28);
      }

      else
      {
        v26 = &a1[v19 / 0x66uLL];
        v27 = (*v26 - 4080 * (v19 / 0x66uLL) + 40 * v19);
        if (v12 >= 41)
        {
          goto LABEL_21;
        }

LABEL_30:
        v45 = 102 - v13;
        v46 = (102 - v13) / 0x66uLL;
        v30 = &a3[-v46];
        v31 = (*v30 + 40 * (101 - (v45 - 102 * v46)));
      }

      sub_1AE6B617C(v26, v27, a1, v9, v30, v31);
      goto LABEL_60;
    }

    if (v19 < 1)
    {
      v32 = 101 - v19;
      v20 = &a1[-(v32 / 0x66)];
      v21 = (*v20 + 40 * (101 - (v32 % 0x66)));
      if (v12 < 41)
      {
LABEL_23:
        v33 = 102 - v13;
        v34 = (102 - v13) / 0x66uLL;
        v24 = &a3[-v34];
        v25 = (*v24 + 40 * (101 - (v33 - 102 * v34)));
        goto LABEL_24;
      }
    }

    else
    {
      v20 = &a1[v19 / 0x66uLL];
      v21 = (*v20 + 40 * (v19 % 0x66uLL));
      if (v12 < 41)
      {
        goto LABEL_23;
      }
    }

    v22 = v13 - 1;
    v23 = (v13 - 1) / 0x66uLL;
    v24 = &a3[v23];
    v25 = (*v24 - 4080 * v23 + 40 * v22);
LABEL_24:
    sub_1AE6B617C(a1, v9, v20, v21, v24, v25);
    v35 = v9 - *a1;
    v36 = v35 / 40;
    if (v35 < -39)
    {
      v38 = &a1[-((100 - v36) / 0x66uLL)];
      v39 = (*v38 + 40 * (101 - ((100 - v36) % 0x66uLL)));
    }

    else
    {
      v37 = (v36 + 1) / 0x66uLL;
      v38 = &a1[v37];
      v39 = (*v38 - 4080 * v37 + 40 * (v36 + 1));
    }

    v40 = v18 - 1;
    v41 = v36 + v18 - 1;
    if (v41 < 1)
    {
      v47 = 101 - v41;
      v42 = &a1[-(v47 / 0x66)];
      v43 = (*v42 + 40 * (101 - (v47 % 0x66)));
    }

    else
    {
      v42 = &a1[v41 / 0x66uLL];
      v43 = (*v42 - 4080 * (v41 / 0x66uLL) + 40 * v41);
    }

    v48 = v7 - *a3;
    v49 = v48 / 40;
    if (v48 < 81)
    {
      v53 = 103 - v49;
      v51 = &a3[-(v53 / 0x66)];
      v52 = (*v51 + 40 * (101 - (v53 % 0x66)));
    }

    else
    {
      v50 = v49 - 2;
      v51 = &a3[v50 / 0x66];
      v52 = (*v51 - 4080 * (v50 / 0x66) + 40 * v50);
    }

    sub_1AE6B617C(v38, v39, v42, v43, v51, v52);
    v54 = v9 - *a1;
    v55 = v54 / 40;
    v56 = a5;
    if (v54 < -79)
    {
      v58 = &a1[-((99 - v55) / 0x66uLL)];
      v59 = (*v58 + 40 * (101 - ((99 - v55) % 0x66uLL)));
    }

    else
    {
      v57 = (v55 + 2) / 0x66uLL;
      v58 = &a1[v57];
      v59 = (*v58 - 4080 * v57 + 40 * (v55 + 2));
    }

    v60 = v55 + v18 + 1;
    if (v60 < 1)
    {
      v63 = 101 - v60;
      v61 = &a1[-(v63 / 0x66)];
      v62 = (*v61 + 40 * (101 - (v63 % 0x66)));
    }

    else
    {
      v61 = &a1[v60 / 0x66uLL];
      v62 = (*v61 - 4080 * (v60 / 0x66uLL) + 40 * v60);
    }

    v64 = v7 - *a3;
    v65 = v64 / 40;
    if (v64 < 121)
    {
      v69 = 104 - v65;
      v67 = &a3[-(v69 / 0x66)];
      v68 = (*v67 + 40 * (101 - (v69 % 0x66)));
    }

    else
    {
      v66 = v65 - 3;
      v67 = &a3[v66 / 0x66];
      v68 = (*v67 - 4080 * (v66 / 0x66) + 40 * v66);
    }

    sub_1AE6B617C(v58, v59, v61, v62, v67, v68);
    v70 = (v9 - *a1) / 40;
    v71 = v70 + v40;
    if ((v70 + v40) < 1)
    {
      v74 = 101 - v71;
      v72 = &a1[-(v74 / 0x66)];
      v73 = (*v72 + 40 * (101 - (v74 % 0x66)));
    }

    else
    {
      v72 = &a1[v71 / 0x66];
      v73 = (*v72 - 4080 * (v71 / 0x66) + 40 * v71);
    }

    v75 = v70 + v18;
    if ((v70 + v18) < 1)
    {
      v78 = 101 - v75;
      v76 = &a1[-(v78 / 0x66)];
      v77 = (*v76 + 40 * (101 - (v78 % 0x66)));
    }

    else
    {
      v76 = &a1[v75 / 0x66];
      v77 = (*v76 - 4080 * (v75 / 0x66) + 40 * v75);
    }

    v79 = v70 + v18 + 1;
    if (v79 < 1)
    {
      v82 = 101 - v79;
      v80 = &a1[-(v82 / 0x66)];
      v81 = (*v80 + 40 * (101 - (v82 % 0x66)));
    }

    else
    {
      v80 = &a1[v79 / 0x66uLL];
      v81 = (*v80 - 4080 * (v79 / 0x66uLL) + 40 * v79);
    }

    sub_1AE6B617C(v72, v73, v76, v77, v80, v81);
    v83 = (v9 - *a1) / 40 + v18;
    if (v83 < 1)
    {
      v84 = a1[-((101 - v83) / 0x66uLL)] + 40 * (101 - ((101 - v83) % 0x66uLL));
    }

    else
    {
      v84 = a1[v83 / 0x66uLL] - 4080 * (v83 / 0x66uLL) + 40 * v83;
    }

    v85 = *v9;
    *v328 = *(v9 + 8);
    *&v328[7] = *(v9 + 15);
    v86 = *(v9 + 23);
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    v320 = *(v9 + 24);
    v87 = *(v84 + 16);
    *v9 = *v84;
    *(v9 + 16) = v87;
    *(v84 + 23) = 0;
    *v84 = 0;
    *(v9 + 24) = *(v84 + 24);
    if (*(v84 + 23) < 0)
    {
      operator delete(*v84);
    }

    *v84 = v85;
    *(v84 + 8) = *v328;
    *(v84 + 15) = *&v328[7];
    *(v84 + 23) = v86;
    *(v84 + 24) = v320;
    a5 = v56;
LABEL_60:
    v88 = a5 - 1;
    if (a6)
    {
      v306 = v88;
      v89 = *(v9 + 32);
    }

    else
    {
      v90 = v9 - *a1;
      v91 = v90 / 40;
      if (v90 < 41)
      {
        v92 = a1[-((102 - v91) / 0x66uLL)] + 40 * (101 - ((102 - v91) % 0x66uLL));
      }

      else
      {
        v92 = a1[(v91 - 1) / 0x66uLL] - 4080 * ((v91 - 1) / 0x66uLL) + 40 * (v91 - 1);
      }

      v89 = *(v9 + 32);
      if (*(v92 + 32) >= v89)
      {
        v307 = *v9;
        *v318 = *(v9 + 8);
        *&v318[7] = *(v9 + 15);
        v304 = *(v9 + 23);
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 0;
        v109 = *a3;
        v110 = v7 - *a3;
        v111 = v110 / 40;
        if (v110 < 41)
        {
          v112 = a3[-((102 - v111) / 0x66uLL)] + 40 * (101 - ((102 - v111) % 0x66uLL));
        }

        else
        {
          v112 = a3[(v111 - 1) / 0x66uLL] - 4080 * ((v111 - 1) / 0x66uLL) + 40 * (v111 - 1);
        }

        v113 = *(v112 + 32);
        v114 = *a1;
        v115 = v9;
        if (v89 < v113)
        {
          do
          {
            v115 += 40;
            if (v115 - v114 == 4080)
            {
              v116 = a1[1];
              ++a1;
              v114 = v116;
              v115 = v116;
            }
          }

          while (v89 >= *(v115 + 32));
        }

        else
        {
          do
          {
            v115 += 40;
            if (v115 - v114 == 4080)
            {
              v117 = a1[1];
              ++a1;
              v114 = v117;
              v115 = v117;
            }
          }

          while ((a1 < a3 || a1 == a3 && v115 < v7) && v89 >= *(v115 + 32));
        }

        if (a1 < a3 || (v118 = v7, a1 == a3) && (v118 = v7, v115 < v7))
        {
          v119 = v7;
          do
          {
            if (v119 == v109)
            {
              v121 = *--a3;
              v109 = v121;
              v119 = v121 + 4080;
            }

            v118 = v119 - 40;
            v120 = *(v119 - 8);
            v119 -= 40;
          }

          while (v89 < v120);
        }

        v122 = v88;
        v124 = (v9 + 24);
        v123 = *(v316 + 24);
        while (a1 < a3 || a1 == a3 && v115 < v118)
        {
          v125 = *v115;
          *v329 = *(v115 + 8);
          *&v329[7] = *(v115 + 15);
          v126 = *(v115 + 23);
          *v115 = 0;
          *(v115 + 8) = 0;
          *(v115 + 16) = 0;
          v321 = *(v115 + 24);
          v127 = *(v118 + 16);
          *v115 = *v118;
          *(v115 + 16) = v127;
          *(v118 + 23) = 0;
          *v118 = 0;
          *(v115 + 24) = *(v118 + 24);
          if (*(v118 + 23) < 0)
          {
            operator delete(*v118);
          }

          *v118 = v125;
          *(v118 + 8) = *v329;
          *(v118 + 15) = *&v329[7];
          *(v118 + 23) = v126;
          *(v118 + 24) = v321;
          v114 = *a1;
          do
          {
            v115 += 40;
            if (v115 - v114 == 4080)
            {
              v128 = a1[1];
              ++a1;
              v114 = v128;
              v115 = v128;
            }
          }

          while (v89 >= *(v115 + 32));
          v129 = *a3;
          do
          {
            if (v118 == v129)
            {
              v131 = *--a3;
              v129 = v131;
              v118 = v131 + 4080;
            }

            v130 = *(v118 - 8);
            v118 -= 40;
          }

          while (v89 < v130);
        }

        v132 = v115 - v114;
        v133 = ((v115 - v114) * 0x6666666666666667) >> 64;
        v134 = (v133 >> 4) + (v133 >> 63);
        if (v132 < 41)
        {
          v135 = a1[-((102 - v134) / 0x66uLL)] + 40 * (101 - ((102 - v134) % 0x66uLL));
        }

        else
        {
          v135 = a1[(v134 - 1) / 0x66uLL] - 4080 * ((v134 - 1) / 0x66uLL) + 40 * (v134 - 1);
        }

        if (v135 != v316)
        {
          if (*(v316 + 23) < 0)
          {
            operator delete(*v316);
          }

          v136 = *v135;
          *(v316 + 16) = *(v135 + 16);
          *v316 = v136;
          *(v135 + 23) = 0;
          *v135 = 0;
          *v124 = *(v135 + 24);
        }

        if (*(v135 + 23) < 0)
        {
          operator delete(*v135);
        }

        a6 = 0;
        *v135 = v307;
        *(v135 + 8) = *v318;
        *(v135 + 15) = *&v318[7];
        *(v135 + 23) = v304;
        *(v135 + 24) = v123;
        *(v135 + 32) = v89;
        a3 = v314;
        a5 = v122;
        goto LABEL_5;
      }

      v306 = v88;
    }

    v303 = *v9;
    *v317 = *(v9 + 8);
    *&v317[7] = *(v9 + 15);
    v302 = *(v9 + 23);
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 0;
    v93 = (v9 + 24);
    v301 = *(v9 + 24);
    v94 = *a1;
    v95 = a1;
    v96 = v9;
    do
    {
      v96 += 40;
      if (v96 - v94 == 4080)
      {
        v97 = v95[1];
        ++v95;
        v94 = v97;
        v96 = v97;
      }
    }

    while (*(v96 + 32) < v89);
    v98 = (v96 - v94) / 40;
    if ((v96 - v94) < 41)
    {
      v99 = v95[-((102 - v98) / 0x66uLL)] + 40 * (101 - ((102 - v98) % 0x66uLL));
    }

    else
    {
      v99 = v95[(v98 - 1) / 0x66uLL] - 4080 * ((v98 - 1) / 0x66uLL) + 40 * (v98 - 1);
    }

    v100 = v314;
    v101 = v7;
    if (v99 == v9)
    {
      while (1)
      {
        if (v95 >= v100)
        {
          if (v95 != v100)
          {
            v104 = v101;
            goto LABEL_132;
          }

          if (v96 >= v101)
          {
            break;
          }
        }

        if (v101 == *v100)
        {
          v108 = *--v100;
          v101 = v108 + 4080;
        }

        v104 = v101 - 40;
        v107 = *(v101 - 8);
        v101 -= 40;
        if (v107 < v89)
        {
          goto LABEL_132;
        }
      }

      v104 = v101;
      v137 = v95 == v100;
      if (v95 < v100)
      {
LABEL_133:
        v138 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      v100 = v314;
      v102 = *v314;
      v103 = v7;
      do
      {
        if (v103 == v102)
        {
          v106 = *--v100;
          v102 = v106;
          v103 = v106 + 4080;
        }

        v104 = v103 - 40;
        v105 = *(v103 - 8);
        v103 -= 40;
      }

      while (v105 >= v89);
LABEL_132:
      v137 = v95 == v100;
      if (v95 < v100)
      {
        goto LABEL_133;
      }
    }

    v138 = !v137 || v96 >= v104;
LABEL_141:
    while (v95 < v100 || v95 == v100 && v96 < v104)
    {
      v140 = *v96;
      *v330 = *(v96 + 8);
      *&v330[7] = *(v96 + 15);
      v141 = *(v96 + 23);
      *v96 = 0;
      *(v96 + 8) = 0;
      *(v96 + 16) = 0;
      v322 = *(v96 + 24);
      v142 = *(v104 + 16);
      *v96 = *v104;
      *(v96 + 16) = v142;
      *(v104 + 23) = 0;
      *v104 = 0;
      *(v96 + 24) = *(v104 + 24);
      if (*(v104 + 23) < 0)
      {
        operator delete(*v104);
      }

      *v104 = v140;
      *(v104 + 8) = *v330;
      *(v104 + 15) = *&v330[7];
      *(v104 + 23) = v141;
      *(v104 + 24) = v322;
      v94 = *v95;
      do
      {
        v96 += 40;
        if (v96 - v94 == 4080)
        {
          v143 = v95[1];
          ++v95;
          v94 = v143;
          v96 = v143;
        }
      }

      while (*(v96 + 32) < v89);
      v144 = *v100;
      do
      {
        if (v104 == v144)
        {
          v146 = *--v100;
          v144 = v146;
          v104 = v146 + 4080;
        }

        v145 = *(v104 - 8);
        v104 -= 40;
      }

      while (v145 >= v89);
    }

    v147 = v96 - v94;
    v148 = ((v96 - v94) * 0x6666666666666667) >> 64;
    v149 = (v148 >> 4) + (v148 >> 63);
    if (v147 < 41)
    {
      v153 = 102 - v149;
      v151 = &v95[-(v153 / 0x66)];
      v152 = *v151 + 40 * (101 - (v153 % 0x66));
    }

    else
    {
      v150 = v149 - 1;
      v151 = &v95[v150 / 0x66];
      v152 = *v151 - 4080 * (v150 / 0x66) + 40 * v150;
    }

    if (v152 != v316)
    {
      if (*(v316 + 23) < 0)
      {
        operator delete(*v316);
      }

      v154 = *v152;
      *(v316 + 16) = *(v152 + 16);
      *v316 = v154;
      *(v152 + 23) = 0;
      *v152 = 0;
      *v93 = *(v152 + 24);
    }

    if (*(v152 + 23) < 0)
    {
      operator delete(*v152);
    }

    a5 = v306;
    *v152 = v303;
    *(v152 + 8) = *v317;
    *(v152 + 15) = *&v317[7];
    *(v152 + 23) = v302;
    *(v152 + 24) = v301;
    *(v152 + 32) = v89;
    if (!v138)
    {
      goto LABEL_171;
    }

    v155 = sub_1AE6B6950(a1, v316, v151, v152);
    v156 = v152 - *v151;
    v157 = v156 / 40;
    if (v156 < -39)
    {
      v161 = 100 - v157;
      v159 = &v151[-(v161 / 0x66)];
      v160 = *v159 + 40 * (101 - (v161 % 0x66));
    }

    else
    {
      v158 = v157 + 1;
      v159 = &v151[v158 / 0x66];
      v160 = *v159 - 4080 * (v158 / 0x66) + 40 * v158;
    }

    if (!sub_1AE6B6950(v159, v160, v314, v7))
    {
      if (!v155)
      {
LABEL_171:
        sub_1AE6B3B70(a1, v316, v151, v152, v306, a6 & 1);
        a6 = 0;
      }

      v115 = v152 + 40;
      if (v152 + 40 - *v151 == 4080)
      {
        v162 = v151[1];
        ++v151;
        v115 = v162;
      }

      a1 = v151;
      a3 = v314;
      goto LABEL_5;
    }

    v115 = v316;
    v7 = v152;
    a3 = v151;
    if (v155)
    {
      return;
    }

LABEL_5:
    v9 = v115;
    if (v7 == v115)
    {
      return;
    }
  }

  v163 = v15 / 40;
  if (v15 < -39)
  {
    v263 = 100 - v163;
    v165 = &a1[-(v263 / 0x66)];
    v166 = (*v165 + 40 * (101 - (v263 % 0x66)));
  }

  else
  {
    v164 = v163 + 1;
    v165 = &a1[v164 / 0x66];
    v166 = (*v165 - 4080 * (v164 / 0x66) + 40 * v164);
  }

  if (v7 == v11)
  {
    v264 = *--a3;
    v7 = v264 + 4080;
  }

  sub_1AE6B617C(a1, v9, v165, v166, a3, (v7 - 40));
}

void *sub_1AE6B5CC0(uint64_t a1, const void **a2)
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

void sub_1AE6B5E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6276E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B5E64(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * v5 + -4080 * (v5 / 0x66);
    v9 = v2[(*(a1 + 40) + v5) / 0x66] + 40 * *(a1 + 40) + 40 * v5 + -4080 * ((*(a1 + 40) + v5) / 0x66);
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
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    v11 = v3;
  }

  *v4 = 0;
  v12 = v11 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 51;
    goto LABEL_18;
  }

  if (v12 == 2)
  {
    v13 = 102;
LABEL_18:
    *(a1 + 32) = v13;
  }

  if (v2 != v3)
  {
    do
    {
      v14 = *v2++;
      operator delete(v14);
    }

    while (v2 != v3);
    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 != v16)
    {
      *(a1 + 16) = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE6B5FF4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_1AE6B617C(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  v6 = *(a4 + 4);
  v7 = *(a6 + 4);
  if (v6 >= *(a2 + 4))
  {
    if (v7 < v6)
    {
      v12 = *a4;
      v13 = a4 + 1;
      *v32 = *(a4 + 1);
      *&v32[7] = *(a4 + 15);
      v14 = *(a4 + 23);
      *(a4 + 2) = 0;
      *(a4 + 1) = 0;
      *a4 = 0;
      v28 = *(a4 + 24);
      v15 = *(a6 + 2);
      *a4 = *a6;
      *(a4 + 2) = v15;
      *(a6 + 23) = 0;
      *a6 = 0;
      *(a4 + 24) = *(a6 + 24);
      if (*(a6 + 23) < 0)
      {
        v16 = a6;
        v17 = a4;
        v18 = a2;
        operator delete(*a6);
        a2 = v18;
        a4 = v17;
        a6 = v16;
      }

      *a6 = v12;
      *(a6 + 1) = *v32;
      *(a6 + 15) = *&v32[7];
      *(a6 + 23) = v14;
      *(a6 + 24) = v28;
      if (*(a4 + 4) < *(a2 + 4))
      {
        v19 = *a2;
        *v33 = a2[1];
        *&v33[7] = *(a2 + 15);
        v20 = *(a2 + 23);
        a2[1] = 0;
        a2[2] = 0;
        *a2 = 0;
        v29 = *(a2 + 3);
        v21 = *a4;
        a2[2] = *(a4 + 2);
        *a2 = v21;
        *(a4 + 23) = 0;
        *a4 = 0;
        *(a2 + 3) = *(a4 + 24);
        if (*(a4 + 23) < 0)
        {
          v22 = a4;
          operator delete(*a4);
          a4 = v22;
        }

        *a4 = v19;
        *v13 = *v33;
        *(v13 + 7) = *&v33[7];
        *(a4 + 23) = v20;
        *(a4 + 24) = v29;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a2;
      *v31 = a2[1];
      *&v31[7] = *(a2 + 15);
      v9 = *(a2 + 23);
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      v27 = *(a2 + 3);
      v10 = *a6;
      a2[2] = *(a6 + 2);
      *a2 = v10;
      *(a6 + 23) = 0;
      *a6 = 0;
      *(a2 + 3) = *(a6 + 24);
      if ((*(a6 + 23) & 0x80000000) == 0)
      {
LABEL_5:
        *a6 = v8;
        *(a6 + 1) = *v31;
        *(a6 + 15) = *&v31[7];
        *(a6 + 23) = v9;
        *(a6 + 24) = v27;
        return;
      }

LABEL_4:
      v11 = a6;
      operator delete(*a6);
      a6 = v11;
      goto LABEL_5;
    }

    v8 = *a2;
    *v34 = a2[1];
    *&v34[7] = *(a2 + 15);
    v9 = *(a2 + 23);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v30 = *(a2 + 3);
    v23 = *a4;
    a2[2] = *(a4 + 2);
    *a2 = v23;
    *(a4 + 23) = 0;
    *a4 = 0;
    *(a2 + 3) = *(a4 + 24);
    if (*(a4 + 23) < 0)
    {
      v24 = a6;
      v25 = a4;
      operator delete(*a4);
      a4 = v25;
      a6 = v24;
    }

    *a4 = v8;
    *(a4 + 1) = *v34;
    *(a4 + 15) = *&v34[7];
    *(a4 + 23) = v9;
    *(a4 + 24) = v30;
    if (*(a6 + 4) < *(a4 + 4))
    {
      *v31 = *(a4 + 1);
      *&v31[7] = *(a4 + 15);
      *(a4 + 1) = 0;
      *(a4 + 2) = 0;
      *a4 = 0;
      v27 = *(a4 + 24);
      v26 = *a6;
      *(a4 + 2) = *(a6 + 2);
      *a4 = v26;
      *(a6 + 23) = 0;
      *a6 = 0;
      *(a4 + 24) = *(a6 + 24);
      if ((*(a6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }
}

void sub_1AE6B6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_1AE6B617C(a1, a2, a3, a4, a5, a6);
  if (*(a8 + 32) < *(a6 + 4))
  {
    v12 = *a6;
    *v24 = a6[1];
    *&v24[7] = *(a6 + 15);
    v13 = *(a6 + 23);
    a6[2] = 0;
    a6[1] = 0;
    *a6 = 0;
    v21 = *(a6 + 3);
    v14 = *(a8 + 16);
    *a6 = *a8;
    a6[2] = v14;
    *(a8 + 23) = 0;
    *a8 = 0;
    *(a6 + 3) = *(a8 + 24);
    if (*(a8 + 23) < 0)
    {
      operator delete(*a8);
    }

    *a8 = v12;
    *(a8 + 8) = *v24;
    *(a8 + 15) = *&v24[7];
    *(a8 + 23) = v13;
    *(a8 + 24) = v21;
    if (*(a6 + 4) < *(a4 + 4))
    {
      v15 = *a4;
      *v25 = a4[1];
      *&v25[7] = *(a4 + 15);
      v16 = *(a4 + 23);
      a4[2] = 0;
      a4[1] = 0;
      *a4 = 0;
      v22 = *(a4 + 3);
      v17 = *a6;
      a4[2] = a6[2];
      *a4 = v17;
      *(a6 + 23) = 0;
      *a6 = 0;
      *(a4 + 3) = *(a6 + 3);
      if (*(a6 + 23) < 0)
      {
        operator delete(*a6);
      }

      *a6 = v15;
      a6[1] = *v25;
      *(a6 + 15) = *&v25[7];
      *(a6 + 23) = v16;
      *(a6 + 3) = v22;
      if (*(a4 + 4) < *(a2 + 32))
      {
        v18 = *a2;
        *v26 = *(a2 + 8);
        *&v26[7] = *(a2 + 15);
        v19 = *(a2 + 23);
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0;
        v23 = *(a2 + 24);
        v20 = *a4;
        *(a2 + 16) = a4[2];
        *a2 = v20;
        *(a4 + 23) = 0;
        *a4 = 0;
        *(a2 + 24) = *(a4 + 3);
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = v18;
        a4[1] = *v26;
        *(a4 + 15) = *&v26[7];
        *(a4 + 23) = v19;
        *(a4 + 3) = v23;
      }
    }
  }
}

void sub_1AE6B66A0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1AE6B6484(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*(a10 + 32) < *(a8 + 32))
  {
    v14 = *a8;
    *v30 = *(a8 + 8);
    *&v30[7] = *(a8 + 15);
    v15 = *(a8 + 23);
    *(a8 + 16) = 0;
    *(a8 + 8) = 0;
    *a8 = 0;
    v26 = *(a8 + 24);
    v16 = *(a10 + 16);
    *a8 = *a10;
    *(a8 + 16) = v16;
    *(a10 + 23) = 0;
    *a10 = 0;
    *(a8 + 24) = *(a10 + 24);
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    *a10 = v14;
    *(a10 + 8) = *v30;
    *(a10 + 15) = *&v30[7];
    *(a10 + 23) = v15;
    *(a10 + 24) = v26;
    if (*(a8 + 32) < *(a6 + 4))
    {
      v17 = *a6;
      *v31 = *(a6 + 1);
      *&v31[7] = *(a6 + 15);
      v18 = *(a6 + 23);
      *(a6 + 2) = 0;
      *(a6 + 1) = 0;
      *a6 = 0;
      v27 = *(a6 + 24);
      v19 = *a8;
      *(a6 + 2) = *(a8 + 16);
      *a6 = v19;
      *(a8 + 23) = 0;
      *a8 = 0;
      *(a6 + 24) = *(a8 + 24);
      if (*(a8 + 23) < 0)
      {
        operator delete(*a8);
      }

      *a8 = v17;
      *(a8 + 8) = *v31;
      *(a8 + 15) = *&v31[7];
      *(a8 + 23) = v18;
      *(a8 + 24) = v27;
      if (*(a6 + 4) < *(a4 + 4))
      {
        v20 = *a4;
        *v32 = *(a4 + 1);
        *&v32[7] = *(a4 + 15);
        v21 = *(a4 + 23);
        *(a4 + 2) = 0;
        *(a4 + 1) = 0;
        *a4 = 0;
        v28 = *(a4 + 24);
        v22 = *a6;
        *(a4 + 2) = *(a6 + 2);
        *a4 = v22;
        *(a6 + 23) = 0;
        *a6 = 0;
        *(a4 + 24) = *(a6 + 24);
        if (*(a6 + 23) < 0)
        {
          operator delete(*a6);
        }

        *a6 = v20;
        *(a6 + 1) = *v32;
        *(a6 + 15) = *&v32[7];
        *(a6 + 23) = v21;
        *(a6 + 24) = v28;
        if (*(a4 + 4) < *(a2 + 32))
        {
          v23 = *a2;
          *v33 = *(a2 + 8);
          *&v33[7] = *(a2 + 15);
          v24 = *(a2 + 23);
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *a2 = 0;
          v29 = *(a2 + 24);
          v25 = *a4;
          *(a2 + 16) = *(a4 + 2);
          *a2 = v25;
          *(a4 + 23) = 0;
          *a4 = 0;
          *(a2 + 24) = *(a4 + 24);
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          *a4 = v23;
          *(a4 + 1) = *v33;
          *(a4 + 15) = *&v33[7];
          *(a4 + 23) = v24;
          *(a4 + 24) = v29;
        }
      }
    }
  }
}

BOOL sub_1AE6B6950(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = a4;
  v6 = *a3;
  v7 = a2 - *a1;
  v8 = 102 * (a3 - a1) - 0x3333333333333333 * ((a4 - *a3) >> 3) + 0x3333333333333333 * (v7 >> 3);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_21;
        }

        v10 = a3;
        v11 = v7 / 40;
        if (v7 < -39)
        {
          v13 = &a1[-((100 - v11) / 0x66uLL)];
          v14 = (*v13 + 40 * (101 - ((100 - v11) % 0x66uLL)));
          if (v7 < 0xFFFFFFFFFFFFFFB1)
          {
            v39 = &a1[-((99 - v11) / 0x66uLL)];
            v40 = (*v39 + 40 * (101 - ((99 - v11) % 0x66uLL)));
            if (v7 < 0xFFFFFFFFFFFFFF89)
            {
              v42 = &a1[-((98 - v11) / 0x66uLL)];
              v43 = *v42 + 40 * (101 - ((98 - v11) % 0x66uLL));
              if (v6 != v4)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }

            v41 = 1;
LABEL_35:
            v42 = &a1[v41 / 0x66];
            v43 = *v42 - 4080 * (v41 / 0x66) + 40 * v41;
            if (v6 != v4)
            {
LABEL_37:
              sub_1AE6B66A0(a1, a2, v13, v14, v39, v40, v42, v43, v10, v4 - 40);
              return 1;
            }

LABEL_36:
            v44 = *(v10 - 8);
            v10 -= 8;
            v4 = v44 + 4080;
            goto LABEL_37;
          }

          v15 = 1;
        }

        else
        {
          v12 = (v11 + 1) / 0x66uLL;
          v13 = &a1[v12];
          v14 = (*v13 - 4080 * v12 + 40 * (v11 + 1));
          v15 = v11 + 2;
        }

        v39 = &a1[v15 / 0x66];
        v40 = (*v39 - 4080 * (v15 / 0x66) + 40 * v15);
        v41 = v11 + 3;
        goto LABEL_35;
      }

      v32 = a3;
      v33 = v7 / 40;
      if (v7 < -39)
      {
        v35 = &a1[-((100 - v33) / 0x66uLL)];
        v36 = (*v35 + 40 * (101 - ((100 - v33) % 0x66uLL)));
        if (v7 < 0xFFFFFFFFFFFFFFB1)
        {
          v69 = 99 - v33;
          v45 = &a1[-(v69 / 0x66)];
          v46 = (*v45 + 40 * (101 - (v69 % 0x66)));
          if (v6 != v4)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v37 = 1;
      }

      else
      {
        v34 = (v33 + 1) / 0x66uLL;
        v35 = &a1[v34];
        v36 = (*v35 - 4080 * v34 + 40 * (v33 + 1));
        v37 = v33 + 2;
      }

      v45 = &a1[v37 / 0x66];
      v46 = (*v45 - 4080 * (v37 / 0x66) + 40 * v37);
      if (v6 != v4)
      {
LABEL_42:
        sub_1AE6B6484(a1, a2, v35, v36, v45, v46, v32, v4 - 40);
        return 1;
      }

LABEL_41:
      v47 = *(v32 - 8);
      v32 -= 8;
      v4 = v47 + 4080;
      goto LABEL_42;
    }

    v19 = v7 / 40;
    if (v7 < -39)
    {
      v38 = 100 - v19;
      v22 = &a1[-((100 - v19) / 0x66uLL)];
      v23 = (*v22 + 40 * (101 - (v38 % 0x66)));
      if (v6 != v4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = v19 + 1;
      v21 = v19 + 1;
      v22 = &a1[(v19 + 1) / 0x66uLL];
      v23 = (*v22 - 4080 * (v21 / 0x66) + 40 * v20);
      if (v6 != v4)
      {
LABEL_20:
        v24 = a3;
LABEL_29:
        sub_1AE6B617C(a1, a2, v22, v23, v24, (v4 - 40));
        return 1;
      }
    }

    v24 = (a3 - 1);
    v4 = *(a3 - 1) + 4080;
    goto LABEL_29;
  }

  if (v8 < 2)
  {
    return 1;
  }

  if (v8 == 2)
  {
    if (v6 == a4)
    {
      v4 = *(a3 - 1) + 4080;
    }

    if (*(v4 - 8) < *(a2 + 32))
    {
      v16 = *a2;
      *v75 = *(a2 + 8);
      *&v75[7] = *(a2 + 15);
      v17 = *(a2 + 23);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v73 = *(a2 + 24);
      v18 = *(v4 - 24);
      *a2 = *(v4 - 40);
      *(a2 + 16) = v18;
      *(v4 - 17) = 0;
      *(v4 - 40) = 0;
      *(a2 + 24) = *(v4 - 16);
      if (*(v4 - 17) < 0)
      {
        operator delete(*(v4 - 40));
      }

      *(v4 - 40) = v16;
      *(v4 - 32) = *v75;
      *(v4 - 25) = *&v75[7];
      *(v4 - 17) = v17;
      *(v4 - 16) = v73;
      return 1;
    }

    return 1;
  }

LABEL_21:
  v25 = v7 / 40;
  if (v7 <= -80)
  {
    v27 = &a1[-((99 - v25) / 0x66uLL)];
    v28 = *v27 + 40 * (101 - ((99 - v25) % 0x66uLL));
    v31 = 100 - v25;
    goto LABEL_31;
  }

  v26 = (v25 + 2) / 0x66uLL;
  v27 = &a1[v26];
  v28 = *v27 - 4080 * v26 + 40 * (v25 + 2);
  v29 = __CFADD__(v25, 1);
  v30 = v25 + 1;
  if (v29)
  {
    v31 = 101;
LABEL_31:
    v48 = &a1[-(v31 / 0x66)];
    v49 = (*v48 + 40 * (101 - (v31 % 0x66)));
    goto LABEL_43;
  }

  v48 = &a1[v30 / 0x66];
  v49 = (*v48 - 4080 * (v30 / 0x66) + 40 * v30);
LABEL_43:
  sub_1AE6B617C(a1, a2, v48, v49, v27, v28);
  v50 = v28 - *v27;
  v51 = v50 / 40;
  if (v50 < -39)
  {
    v57 = 100 - v51;
    v54 = &v27[-((100 - v51) / 0x66uLL)];
    v55 = *v54;
    v56 = *v54 + 40 * (101 - (v57 % 0x66));
    if (v56 == v4)
    {
      return 1;
    }
  }

  else
  {
    v52 = v51 + 1;
    v53 = v51 + 1;
    v54 = &v27[(v51 + 1) / 0x66uLL];
    v55 = *v54;
    v56 = *v54 - 4080 * (v53 / 0x66) + 40 * v52;
    if (v56 == v4)
    {
      return 1;
    }
  }

  v58 = 0;
  v71 = v4;
  while (1)
  {
    v59 = v56;
    v60 = v54;
    v61 = *(v56 + 32);
    if (v61 < *(v28 + 32))
    {
      break;
    }

LABEL_62:
    v56 = v59 + 40;
    v54 = v60;
    if (v59 + 40 - v55 == 4080)
    {
      v54 = v60 + 1;
      v55 = v60[1];
      v56 = v55;
    }

    result = 1;
    v27 = v60;
    v28 = v59;
    if (v56 == v4)
    {
      return result;
    }
  }

  v72 = *v56;
  *v74 = *(v56 + 8);
  *&v74[7] = *(v56 + 15);
  v62 = *(v56 + 23);
  *(v56 + 8) = 0;
  *(v56 + 16) = 0;
  *v56 = 0;
  v63 = *(v56 + 24);
  v64 = v56;
  do
  {
    v67 = v28;
    if (*(v64 + 23) < 0)
    {
      operator delete(*v64);
    }

    v68 = *v28;
    *(v64 + 16) = *(v28 + 16);
    *v64 = v68;
    *(v28 + 23) = 0;
    *v28 = 0;
    *(v64 + 24) = *(v28 + 24);
    if (v28 == a2)
    {
      break;
    }

    if (v28 == *v27)
    {
      v65 = *--v27;
      v66 = v65 + 4080;
    }

    else
    {
      v66 = v28;
    }

    v28 = v66 - 40;
    v64 = v67;
  }

  while (v61 < *(v66 - 8));
  if (*(v67 + 23) < 0)
  {
    operator delete(*v67);
  }

  *v67 = v72;
  *(v67 + 8) = *v74;
  *(v67 + 15) = *&v74[7];
  *(v67 + 23) = v62;
  *(v67 + 24) = v63;
  *(v67 + 32) = v61;
  if (++v58 != 8)
  {
    v55 = *v60;
    v4 = v71;
    goto LABEL_62;
  }

  v70 = v59 + 40;
  if (v59 + 40 - *v60 == 4080)
  {
    v70 = v60[1];
  }

  return v70 == v71;
}

uint64_t sub_1AE6B717C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) == v1)
  {
    return 0;
  }

  else
  {
    return (*(**(v1 - 8) + 24))();
  }
}

uint64_t sub_1AE6B71B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) == v1)
  {
    return 0;
  }

  do
  {
    v3 = (*(**(v1 - 1) + 16))(*(v1 - 1));
    if (v3)
    {
      break;
    }

    v4 = *(a1 + 16);
    v6 = *(v4 - 8);
    v1 = (v4 - 8);
    v5 = v6;
    *v1 = 0;
    if (v6)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 16) = v1;
  }

  while (*(a1 + 8) != v1);
  return v3;
}

void sub_1AE6B7270(void *a1)
{
  *a1 = &unk_1F242C120;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
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
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6B733C(void *a1)
{
  *a1 = &unk_1F242C120;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
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
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AE6B73E8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_1AE5CBB70();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v11 + 24) = *(a2 + 3);
    v6 = 32 * v7 + 32;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 3);
    v6 = v3 + 32;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1AE6B751C(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_5:
    operator delete(*(a1 + 8));
    return a1;
  }

  if (*(a1 + 31) < 0)
  {
    goto LABEL_5;
  }

  return a1;
}

void *sub_1AE6B756C(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1B2705FF0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1B2706340](a1 + 53);
  return a1;
}

void sub_1AE6B7738(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v3, 0x10B3C40637D23BDLL);
  MEMORY[0x1B2706400](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6B7770(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F242C440;
  *(a1 + 8) = 0;
  strcpy((a1 + 16), "vector");
  *(a1 + 39) = 6;
  v4 = (*(*a2 + 96))(a2);
  if (*v3)
  {
    (*(**v3 + 8))(*v3);
  }

  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
  }

  else
  {
    v5 = 0;
  }

  *v3 = v5;
  v6 = (*(*a2 + 104))(a2);
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v6)
  {
    v8 = (*(*v6 + 16))(v6);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 48) = v8;
  *(a1 + 88) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v9 = sub_1AE6B804C(a2);
    if (v9 > ((*(a1 + 80) - *(a1 + 64)) >> 3))
    {
      if ((v9 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }
  }

  v14 = 0;
  (*(*a2 + 112))(a2, &v12);
  if (v12)
  {
    if (!(*(*v12 + 16))(v12))
    {
      if (v12)
      {
        (*(*v12 + 24))();
      }

LABEL_20:
      operator new();
    }

    if (v12)
    {
      (*(*v12 + 8))();
    }
  }

  else if (v14 < v13)
  {
    goto LABEL_20;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0x3FFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t sub_1AE6B804C(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v8 = 0;
  (*(*a1 + 112))(a1, &v6);
  v4 = 0;
  while (1)
  {
    while (!v6)
    {
      v5 = v8;
      if (v8 >= v7)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_7:
      v8 = v5 + 1;
    }

    if ((*(*v6 + 16))(v6))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v6)
    {
      v5 = v8;
      goto LABEL_7;
    }

    (*(*v6 + 32))();
  }

  if (v6)
  {
    (*(*v6 + 8))();
  }

  return v4;
}

void sub_1AE6B81D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6B8210(uint64_t a1)
{
  *a1 = &unk_1F242C4B0;
  v4 = a1 + 64;
  v2 = *(a1 + 64);
  v3 = *(v4 + 8);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = v6[3];
        if (v7)
        {
          v6[4] = v7;
          operator delete(v7);
        }

        operator delete(v6);
        v2 = *(a1 + 64);
        v3 = *(a1 + 72);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F242C4E0;
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1AE6B8348(uint64_t a1)
{
  *a1 = &unk_1F242C4E0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6B8410(uint64_t a1)
{
  *a1 = &unk_1F242C4E0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1AE6B84B8(uint64_t a1)
{
  sub_1AE6B8210(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE6B84F4(uint64_t a1)
{
  sub_1AE6B8210(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6B8530(uint64_t result, float *a2)
{
  v2 = *(result + 8);
  v3 = v2[3] + 16 * *(result + 24);
  v5 = *v3;
  v4 = *(v3 + 4);
  if (*v3 != v4)
  {
    **(result + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v4)
    {
      v6 = *(result + 16);
      v7 = *v6;
LABEL_8:
      *v6 = v7 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v6 = *(result + 16);
    v8 = *v6;
    *v6 &= ~0x1000000uLL;
    if (!v4)
    {
      v7 = v8 & 0xFFFFFFFFFEBFFFFFLL;
      *v6 = v7;
      goto LABEL_8;
    }
  }

  if (*(v3 + 8) != 3.4028e38 && *(v3 + 8) != 0.0)
  {
    **(result + 16) &= ~0x100000000uLL;
  }

  if (v5)
  {
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    --v2[1];
    if (v4)
    {
LABEL_14:
      if (*a2)
      {
        goto LABEL_15;
      }

LABEL_23:
      ++v2[1];
      if (*(a2 + 1))
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  --v2[2];
  if (!*a2)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (*(a2 + 1))
  {
    goto LABEL_16;
  }

LABEL_24:
  ++v2[2];
LABEL_16:
  *v3 = *a2;
  v9 = a2[2];
  *(v3 + 8) = v9;
  *(v3 + 12) = a2[3];
  v10 = *a2;
  v11 = *(a2 + 1);
  if (*a2 != v11)
  {
    **(result + 16) = **(result + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v10 == 0.0)
  {
    v12 = *(result + 16);
    v14 = *v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v12 = v14;
    if (!v11)
    {
      v13 = v14 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v12 = v13;
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
    v12 = *(result + 16);
    v13 = *v12;
LABEL_27:
    *v12 = v13 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (v9 != 3.4028e38 && v9 != 0.0)
  {
    **(result + 16) = **(result + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  **(result + 16) &= 0x30FC30007uLL;
  return result;
}

uint64_t sub_1AE6B87AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 56) >= 2)
  {
    operator new();
  }

  v4 = *(v3 + 48);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (a2)
  {
    result = (*(*a2 + 16))(a2);
  }

  else
  {
    result = 0;
  }

  *(v3 + 48) = result;
  return result;
}

uint64_t sub_1AE6B88CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 56) >= 2)
  {
    operator new();
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (a2)
  {
    result = (*(*a2 + 16))(a2);
  }

  else
  {
    result = 0;
  }

  *(v3 + 40) = result;
  return result;
}

uint64_t sub_1AE6B89EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 56) >= 2)
  {
    operator new();
  }

  return *(v1 + 48);
}

uint64_t sub_1AE6B8AA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 56) >= 2)
  {
    operator new();
  }

  return *(v1 + 40);
}

uint64_t sub_1AE6B8B64(uint64_t result, int a2, unint64_t a3)
{
  v3 = *(result + 8);
  if (*(v3 + 56) >= 2)
  {
    operator new();
  }

  v4 = *(*(v3 + 64) + 8 * a2);
  if (a3 > (*(v4 + 40) - *(v4 + 24)) >> 4)
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

uint64_t sub_1AE6B8CF0(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (*(v2 + 56) >= 2)
  {
    operator new();
  }

  if (a2 > ((*(v2 + 80) - *(v2 + 64)) >> 3))
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

uint64_t sub_1AE6B8E4C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 56) >= 2)
  {
    operator new();
  }

  v3 = *(*(v2 + 64) + 8 * a2);
  v3[1] = 0;
  v3[2] = 0;
  v3[4] = v3[3];
  result = (*(*v2 + 16))(v2);
  *(v2 + 8) = *(v2 + 8) & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t sub_1AE6B8F64(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 56) >= 2)
  {
    operator new();
  }

  if (a3)
  {
    v4 = *(*(v3 + 64) + 8 * a2);
    v5 = v4[4];
    v6 = (v5 - 16);
    v7 = a3;
    while (1)
    {
      if (*v6)
      {
        if (!v6[1])
        {
          goto LABEL_10;
        }
      }

      else
      {
        --v4[1];
        if (!v6[1])
        {
LABEL_10:
          --v4[2];
        }
      }

      v6 -= 4;
      if (!--v7)
      {
        v4[4] = v5 - 16 * a3;
        break;
      }
    }
  }

  result = (*(*v3 + 16))(v3);
  *(v3 + 8) = *(v3 + 8) & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t sub_1AE6B90DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 56) >= 2)
  {
    operator new();
  }

  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        v6 = v5[3];
        if (v6)
        {
          v5[4] = v6;
          operator delete(v6);
        }

        operator delete(v5);
        v2 = *(v1 + 64);
        v3 = *(v1 + 72);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  *(v1 + 72) = v2;
  *(v1 + 88) = -1;
  result = (*(*v1 + 16))(v1);
  *(v1 + 8) = (*(v1 + 8) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t sub_1AE6B9234(uint64_t a1, char **a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 56) >= 2)
  {
    operator new();
  }

  v3 = *(v2 + 72) - *(v2 + 64);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = v5 >> 2;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v7 = *v4;
      v4 += 4;
      *(4 * v7) = -1;
      --v6;
    }

    while (v6);
  }

  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  if (v9 == v8)
  {
    v15 = 0;
    v12 = (v9 - v8) >> 3;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (*(4 * v10) == -1)
      {
        v13 = *&v8[8 * v10];
        if (v13)
        {
          v14 = v13[3];
          if (v14)
          {
            v13[4] = v14;
            operator delete(v14);
          }

          operator delete(v13);
          v8 = *(v2 + 64);
          v9 = *(v2 + 72);
        }
      }

      else
      {
        *(4 * v10) = v11;
        if (v10 != v11)
        {
          *&v8[8 * v11] = *&v8[8 * v10];
        }

        ++v11;
      }

      ++v10;
      v12 = (v9 - v8) >> 3;
    }

    while (v12 > v10);
    v15 = v11;
    v16 = v11 - v12;
    if (v11 > v12)
    {
      v17 = *(v2 + 80);
      if (v16 > (v17 - v9) >> 3)
      {
        if ((v11 & 0x80000000) == 0)
        {
          v18 = v17 - v8;
          if (v18 >> 2 > v11)
          {
            v15 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v15;
          }

          if (!(v19 >> 61))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        sub_1AE5CBB70();
      }

      bzero(v9, 8 * v16);
      v38 = &v9[8 * v16];
      *(v2 + 72) = v38;
      if (v38 == v8)
      {
        goto LABEL_59;
      }

      goto LABEL_35;
    }
  }

  if (v12 > v15)
  {
    v9 = &v8[8 * v15];
    *(v2 + 72) = v9;
  }

  if (v9 != v8)
  {
LABEL_35:
    v20 = 0;
    while (1)
    {
      v21 = *&v8[8 * v20];
      v22 = *(v21 + 24);
      v23 = *(v21 + 32);
      v24 = *(v21 + 8);
      v25 = v23 - v22;
      v26 = v23 == v22 ? 0 : *(v21 + 24);
      if (v23 == v22)
      {
        v28 = 0;
        v30 = v25 >> 4;
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = (v26 + 12);
        do
        {
          v31 = *(4 * *v29);
          if (v31 == -1)
          {
            v33 = *(v29 - 3);
            v34.i64[0] = v33;
            v34.i64[1] = HIDWORD(v33);
            v24 = vaddq_s64(v24, vceqzq_s64(v34));
          }

          else
          {
            *v29 = v31;
            if (v27 != v28)
            {
              v32 = v26 + 16 * v28;
              *v32 = *(v29 - 3);
              *(v32 + 8) = *(v29 - 1);
              *(v32 + 12) = v31;
              v8 = *(v2 + 64);
            }

            ++v28;
          }

          ++v27;
          v21 = *&v8[8 * v20];
          v23 = *(v21 + 32);
          v30 = (v23 - *(v21 + 24)) >> 4;
          v29 += 4;
        }

        while (v27 < v30);
      }

      v35 = v30 - v28;
      if (v35)
      {
        break;
      }

LABEL_37:
      *(v21 + 8) = v24;
      if (++v20 >= ((*(v2 + 72) - v8) >> 3))
      {
        goto LABEL_59;
      }
    }

    v36 = (v23 - 16);
    v37 = v35;
    while (1)
    {
      if (*v36)
      {
        if (!v36[1])
        {
          goto LABEL_57;
        }
      }

      else
      {
        --*(v21 + 8);
        if (!v36[1])
        {
LABEL_57:
          --*(v21 + 16);
        }
      }

      v36 -= 4;
      if (!--v37)
      {
        *(v21 + 32) = v23 - 16 * v35;
        goto LABEL_37;
      }
    }
  }

LABEL_59:
  v39 = *(v2 + 88);
  if (v39 != -1)
  {
    *(v2 + 88) = *(4 * v39);
    operator delete(0);
  }

  result = (*(*v2 + 16))(v2);
  *(v2 + 8) = *(v2 + 8) & 4 | result & 0x6A5A950007;
  return result;
}

void sub_1AE6B969C(uint64_t a1, int a2, int *a3)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) >= 2)
  {
    operator new();
  }

  v6 = *(*(*(v5 + 64) + 8 * a2) + 32);
  if (v6 == *(*(*(v5 + 64) + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*v5 + 16))(v5);
  v10 = *a3;
  v9 = a3[1];
  v11 = v8 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v9)
  {
    v11 = v8;
  }

  v12 = v11 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v9)
  {
    v12 = v11 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v10)
  {
    v11 = v12;
  }

  v13 = v11 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  if (v9)
  {
    v13 = v11;
  }

  if (v7)
  {
    v14 = v13 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    if (*v7 <= v10)
    {
      v14 = v13;
    }

    v13 = v14 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    if (v7[1] <= v9)
    {
      v13 = v14;
    }
  }

  v15 = *(a3 + 2);
  if (v15 != 3.4028e38 && v15 != 0.0)
  {
    v13 = v13 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  v16 = a3[3];
  if (v16 <= a2)
  {
    v13 = v13 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  if ((v13 & 0x4000000000) != 0)
  {
    v17 = v13 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    v17 = v13 & 0x5D7FFEB0007;
  }

  *(v5 + 8) = *(v5 + 8) & 4 | v17;
  v18 = *(*(v5 + 64) + 8 * a2);
  if (v10)
  {
    if (v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    ++v18[1];
    if (v9)
    {
      goto LABEL_29;
    }
  }

  ++v18[2];
LABEL_29:
  v20 = v18[4];
  v19 = v18[5];
  if (v20 >= v19)
  {
    v22 = v18[3];
    v23 = (v20 - v22) >> 4;
    v24 = v23 + 1;
    if ((v23 + 1) >> 60)
    {
      sub_1AE5CBB70();
    }

    v25 = v19 - v22;
    if (v25 >> 3 > v24)
    {
      v24 = v25 >> 3;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFF0)
    {
      v26 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      if (!(v26 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v27 = 16 * v23;
    *v27 = *a3;
    *(v27 + 8) = v15;
    *(v27 + 12) = v16;
    v21 = 16 * v23 + 16;
    if (v22 != v20)
    {
      v28 = v22;
      v29 = 0;
      do
      {
        *v29 = *v28;
        *(v29 + 8) = *(v28 + 2);
        *(v29 + 12) = *(v28 + 3);
        v28 += 16;
        v29 += 16;
      }

      while (v28 != v20);
    }

    v18[3] = 0;
    v18[4] = v21;
    v18[5] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v20 = *a3;
    *(v20 + 2) = a3[2];
    *(v20 + 3) = a3[3];
    v21 = (v20 + 16);
  }

  v18[4] = v21;
}

void sub_1AE6B99F0(uint64_t a1)
{
  if (*(*(a1 + 8) + 56) >= 2)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_1AE6B9B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), v6);
  v8 = v6 & a2;
  v9 = *(a1 + 8);
  if (result != v8 && *(v9 + 56) >= 2)
  {
    operator new();
  }

  *(v9 + 8) = *(v9 + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

unint64_t sub_1AE6B9C6C(uint64_t a1, int a2, float *a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 56) >= 2)
  {
    operator new();
  }

  v4 = *a3;
  v5 = *(*(v3 + 64) + 8 * a2);
  v6 = *v5;
  *v5 = *a3;
  result = (*(*v3 + 16))(v3);
  if (v6 != 3.4028e38 && v6 != 0.0)
  {
    result &= ~0x100000000uLL;
  }

  if (v4 != 3.4028e38 && v4 != 0.0)
  {
    result = result & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  *(v3 + 8) = *(v3 + 8) & 4 | result & 0x3FFFFFF0007;
  return result;
}

unint64_t sub_1AE6B9E08(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 56) >= 2)
  {
    operator new();
  }

  *(v2 + 88) = a2;
  result = (*(*v2 + 16))(v2);
  *(v2 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v2 + 8) & 4;
  return result;
}

uint64_t sub_1AE6B9F18(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1AE6B9FEC(uint64_t result, int a2, void *a3)
{
  v3 = *(*(*(*(result + 8) + 64) + 8 * a2) + 24);
  v4 = (*(*(*(*(result + 8) + 64) + 8 * a2) + 32) - v3) >> 4;
  if (*(*(*(*(result + 8) + 64) + 8 * a2) + 32) == v3)
  {
    v3 = 0;
  }

  *a3 = 0;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = 0;
  return result;
}

uint64_t sub_1AE6BA014(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t sub_1AE6BA04C(uint64_t *a1, void **a2)
{
  v19[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (a2[1])
    {
LABEL_5:
      sub_1AE606778(v15);
      if ((v18[*(v15[0] - 24)] & 5) != 0)
      {
        HIBYTE(v13) = 5;
        strcpy(__p, "ERROR");
        v4 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
        sub_1AE5DB608(v4, ": ", 2);
        v5 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Fst::Write: Can't open file: ", 29);
        v6 = *(a2 + 23);
        if (v6 >= 0)
        {
          v7 = a2;
        }

        else
        {
          v7 = *a2;
        }

        if (v6 >= 0)
        {
          v8 = *(a2 + 23);
        }

        else
        {
          v8 = a2[1];
        }

        sub_1AE5DB608(v5, v7, v8);
        sub_1AE696D18();
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = 0;
      }

      else
      {
        if (*(a2 + 23) < 0)
        {
          sub_1AE5DBF1C(__p, *a2, a2[1]);
        }

        else
        {
          *__p = *a2;
          v13 = a2[2];
        }

        v14 = 65793;
        v9 = (*(*a1 + 80))(a1, v15, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v15[0] = *MEMORY[0x1E69E54D0];
      *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B2705FF0](&v15[1]);
      std::ostream::~ostream();
      MEMORY[0x1B2706340](v19);
      return v9;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  strcpy(v15, "standard output");
  v10 = *a1;
  v16 = 16843023;
  v17 = 0;
  v9 = (*(v10 + 80))(a1, MEMORY[0x1E69E5310], v15);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return v9;
}

void *sub_1AE6BA394(void *a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1B2705FF0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x1B2706340](a1 + 52);
  return a1;
}

uint64_t sub_1AE6BA460(void *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  v6 = -1;
  v32 = 0;
  v33 = 0;
  v31 = -1;
  v31 = (*(*a1 + 16))(a1);
  v32 = -1;
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v32 = sub_1AE6B804C(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v36;
    if (v36 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 56))(a1, 0x3FFFFFFF0004, 0);
  v35 = 6;
  strcpy(__p, "vector");
  sub_1AE6BA9E8(a1, a2, a3, 2, __p, v9 | 3, &v26 + 4);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v26, a1, v11);
      LODWORD(__p[0]) = v26;
      std::ostream::write();
      __p[0] = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0]) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0]) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0]) = *v17;
          std::ostream::write();
          LODWORD(__p[0]) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    v35 = 5;
    strcpy(__p, "ERROR");
    v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v18, ": ", 2);
    v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], "VectorFst::Write: write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    sub_1AE5DB608(v19, v21, v22);
LABEL_27:
    sub_1AE696D18();
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    v23 = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v32 == v12)
    {
      v23 = 1;
      goto LABEL_30;
    }

    v35 = 5;
    strcpy(__p, "ERROR");
    v25 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v25, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v32 = v12;
  v35 = 6;
  strcpy(__p, "vector");
  v23 = sub_1AE6BADFC(a1, a2, a3, 2, __p, v9 | 3, &v26 + 4, v6);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_30:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
    if ((SHIBYTE(v28[0]) & 0x80000000) == 0)
    {
      return v23;
    }

LABEL_37:
    operator delete(v27[0]);
    return v23;
  }

  if (SHIBYTE(v28[0]) < 0)
  {
    goto LABEL_37;
  }

  return v23;
}

void sub_1AE6BA984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1AE696D18();
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6B751C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6BA9E8(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, const void **a5, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    if ((a7 + 8) != a5)
    {
      v13 = *(a5 + 23);
      if (*(a7 + 31) < 0)
      {
        if (v13 >= 0)
        {
          v15 = a5;
        }

        else
        {
          v15 = *a5;
        }

        if (v13 >= 0)
        {
          v16 = *(a5 + 23);
        }

        else
        {
          v16 = a5[1];
        }

        sub_1AE621B84(a7 + 8, v15, v16);
      }

      else if ((*(a5 + 23) & 0x80) != 0)
      {
        sub_1AE621AB4((a7 + 8), *a5, a5[1]);
      }

      else
      {
        v14 = *a5;
        *(a7 + 24) = a5[2];
        *(a7 + 8) = v14;
      }
    }

    sub_1AE6BB264();
    if ((a7 + 32) != &xmmword_1ED9AC9B0)
    {
      if (*(a7 + 55) < 0)
      {
        if (byte_1ED9AC9C7 >= 0)
        {
          v17 = &xmmword_1ED9AC9B0;
        }

        else
        {
          v17 = xmmword_1ED9AC9B0;
        }

        if (byte_1ED9AC9C7 >= 0)
        {
          v18 = byte_1ED9AC9C7;
        }

        else
        {
          v18 = *(&xmmword_1ED9AC9B0 + 1);
        }

        sub_1AE621B84(a7 + 32, v17, v18);
      }

      else if (byte_1ED9AC9C7 < 0)
      {
        sub_1AE621AB4((a7 + 32), xmmword_1ED9AC9B0, *(&xmmword_1ED9AC9B0 + 1));
      }

      else
      {
        *(a7 + 32) = xmmword_1ED9AC9B0;
        *(a7 + 48) = unk_1ED9AC9C0;
      }
    }

    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v19 = a3[25];
    }

    else
    {
      v19 = 0;
    }

    v20 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v21 = v19 | 2;
    }

    else
    {
      v21 = v19;
    }

    if (!v20)
    {
      v21 = v19;
    }

    if (a3[27])
    {
      v21 |= 4u;
    }

    *(a7 + 60) = v21;
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v22 = (*(*a1 + 96))(a1);
    (*(*v22 + 72))(v22, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v24 = *(*(*(*a1 + 104))(a1) + 72);

    return v24();
  }

  return result;
}

uint64_t sub_1AE6BADFC(uint64_t a1, void *a2, uint64_t a3, int a4, const void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  MEMORY[0x1B27060A0](v29);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    __p = 0u;
    v32 = 0u;
    v39 = a8;
    (*(*v17 + 40))(v30);
    if (v30[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x1B27060B0](v29);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    BYTE7(v32) = 5;
    strcpy(&__p, "ERROR");
    v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], &__p, 5);
    sub_1AE5DB608(v18, ": ", 2);
    v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Fst::UpdateFstHeader: write failed: ", 36);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }
  }

  else
  {
    sub_1AE6BA9E8(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      BYTE7(v32) = 5;
      strcpy(&__p, "ERROR");
      v23 = sub_1AE5DB608(MEMORY[0x1E69E5300], &__p, 5);
      sub_1AE5DB608(v23, ": ", 2);
      v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Fst::UpdateFstHeader: write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      if (v24 >= 0)
      {
        v22 = *(a3 + 23);
      }

      else
      {
        v22 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x1B27060A0](v30, a2);
      v25 = a2 + *(*a2 - 24);
      if ((v25[32] & 5) == 0)
      {
        (*(**(v25 + 5) + 32))(&__p);
        if (v39 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x1B27060B0](v30);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      BYTE7(v32) = 5;
      strcpy(&__p, "ERROR");
      v26 = sub_1AE5DB608(MEMORY[0x1E69E5300], &__p, 5);
      sub_1AE5DB608(v26, ": ", 2);
      v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Fst::UpdateFstHeader: write failed: ", 36);
      v27 = *(a3 + 23);
      if (v27 >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      if (v27 >= 0)
      {
        v22 = *(a3 + 23);
      }

      else
      {
        v22 = *(a3 + 8);
      }
    }
  }

  sub_1AE5DB608(v19, v21, v22);
  sub_1AE696D18();
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1AE6BB230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_1AE696D18();
  if (a34 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6BB264()
{
  if ((atomic_load_explicit(&qword_1ED9ACA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9ACA00))
  {
    sub_1AE6BB374();
    if (sub_1AE6BB454(&xmmword_1ED9AC9C8, "tropical"))
    {
      sub_1AE5CC990(&xmmword_1ED9AC9B0, "standard");
    }

    else
    {
      sub_1AE6BB374();
      if (byte_1ED9AC9DF < 0)
      {
        sub_1AE5DBF1C(&xmmword_1ED9AC9B0, xmmword_1ED9AC9C8, *(&xmmword_1ED9AC9C8 + 1));
      }

      else
      {
        xmmword_1ED9AC9B0 = xmmword_1ED9AC9C8;
        unk_1ED9AC9C0 = unk_1ED9AC9D8;
      }
    }

    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED9AC9B0, &dword_1AE5C8000);

    __cxa_guard_release(&qword_1ED9ACA00);
  }
}

void sub_1AE6BB374()
{
  if ((atomic_load_explicit(&qword_1ED9ACA08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9ACA08))
  {
    sub_1AE5CC990(&__p, "");
    sub_1AE67B590(&xmmword_1ED9AC9C8, "tropical", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED9AC9C8, &dword_1AE5C8000);
    __cxa_guard_release(&qword_1ED9ACA08);
  }
}

void sub_1AE6BB424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ED9ACA08);
  _Unwind_Resume(a1);
}

BOOL sub_1AE6BB454(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1AE61F754();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_1AE6BB54C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v9 = 0;
    v6 = sub_1AE6BB5E4(a1, a2, &v9);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v9 | 4) | v9 & v6;
    return v6 & a2;
  }

  else
  {
    v8 = *(**(a1 + 8) + 24);

    return v8();
  }
}

unint64_t sub_1AE6BB5E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = (*(*a1 + 56))(a1, 0x3FFFFFFF0007, 0);
  v8 = result & 0x3FFFFFFF0000 | (2 * result) & 0x2AAAAAAA0000 | (result >> 1) & 0x155555550000 | 7;
  if ((a2 & ~v8) != 0)
  {
    result &= 7u;
    v31 = result;
    if ((a2 & 0xF3C00000000) != 0)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = &v31;
      sub_1AE6BBFDC(a1, &v26);
    }

    if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
    {
      goto LABEL_79;
    }

    v9 = 0x10425A810000;
    if ((a2 & 0xC0000) != 0)
    {
      v9 = 0x10425A850000;
    }

    v10 = result | v9;
    v22 = a2 & 0xC0000;
    if ((a2 & 0x300000) != 0)
    {
      v10 |= 0x100000uLL;
    }

    v31 = v10;
    v25 = 0;
    (*(*a1 + 112))(a1, &v23);
    v11 = 0;
LABEL_11:
    if (!v23)
    {
      v12 = v25;
      if (v25 >= v24)
      {
        goto LABEL_74;
      }

      if (v22)
      {
LABEL_18:
        operator new();
      }

      goto LABEL_19;
    }

    if (!(*(*v23 + 16))(v23))
    {
      if (v23)
      {
        v12 = (*(*v23 + 24))();
        if (v22)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = v25;
        if (v22)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v30 = 0;
      (*(*a1 + 120))(a1, v12, &v26);
      v13 = v12 + 1;
      v14 = 1;
      while (1)
      {
        if (v26)
        {
          if ((*(*v26 + 16))(v26))
          {
            if (v26)
            {
              (*(*v26 + 8))();
              goto LABEL_60;
            }

LABEL_58:
            if (v29)
            {
              --*v29;
            }

LABEL_60:
            if (v11 > 0)
            {
              v31 = v31 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }

            (*(*a1 + 24))(&v32, a1, v12);
            LODWORD(v26) = v32;
            HIDWORD(v32) = 2139095039;
            if (*&v32 == 3.4028e38)
            {
              if ((*(*a1 + 32))(a1, v12, 3.4028e38, *&v32) != 1)
              {
                v31 = v31 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
              }
            }

            else
            {
              LODWORD(v26) = v32;
              HIDWORD(v32) = 0;
              if (*&v32 != 0.0)
              {
                v31 = v31 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
              }

              ++v11;
            }

            if (v23)
            {
              (*(*v23 + 32))(v23);
            }

            else
            {
              ++v25;
            }

            goto LABEL_11;
          }

          if (v26)
          {
            v15 = (*(*v26 + 24))();
            goto LABEL_31;
          }

          v16 = v30;
        }

        else
        {
          v16 = v30;
          if (v30 >= v28)
          {
            goto LABEL_58;
          }
        }

        v15 = v27 + 16 * v16;
LABEL_31:
        v17 = *v15;
        v18 = *v15;
        if (*v15 != *(v15 + 4))
        {
          v31 = v31 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v18 = *(v15 + 4);
        }

        if (v17 | v18)
        {
          if (v17)
          {
            if (!v18)
            {
              goto LABEL_41;
            }

            goto LABEL_37;
          }

          v19 = v31;
        }

        else
        {
          v19 = v31 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v31 = v19 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v18)
        {
LABEL_41:
          v31 = v31 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v14)
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }

LABEL_37:
        if (v14)
        {
          goto LABEL_46;
        }

LABEL_42:
        if (v17 < v3)
        {
          v31 = v31 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v18 < HIDWORD(v3))
        {
          v31 = v31 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_46:
        v20 = *(v15 + 8);
        *(&v32 + 1) = v20;
        LODWORD(v32) = 0;
        if (v20 != 0.0)
        {
          *(&v32 + 1) = v20;
          LODWORD(v32) = 2139095039;
          if (v20 != 3.4028e38)
          {
            v31 = v31 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
          }
        }

        v21 = *(v15 + 12);
        if (v21 <= v12)
        {
          v31 = v31 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
          if (v21 != v13)
          {
LABEL_53:
            v31 = v31 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            v3 = *v15;
            goto LABEL_54;
          }
        }

        else if (v21 != v13)
        {
          goto LABEL_53;
        }

        v3 = *v15;
LABEL_54:
        if (v26)
        {
          (*(*v26 + 32))(v26);
          v14 = 0;
        }

        else
        {
          v14 = 0;
          ++v30;
        }
      }
    }

    if (v23)
    {
      (*(*v23 + 8))();
    }

LABEL_74:
    if ((*(*a1 + 16))(a1) == -1)
    {
      result = v31;
    }

    else if ((*(*a1 + 16))(a1))
    {
      result = v31 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
    }

    else
    {
      result = v31;
    }

LABEL_79:
    v8 = result & 0x3FFFFFFF0000 | (2 * result) & 0x2AAAAAAA0000 | (result >> 1) & 0x155555550000 | 7;
  }

  *a3 = v8;
  return result;
}

void sub_1AE6BBF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a12 + 8))(a12);
  _Unwind_Resume(exception_object);
}

void sub_1AE6BBFDC(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    *(*a2 + 8) = **a2;
  }

  v2 = *(a2 + 8);
  if (v2)
  {
    *(v2 + 8) = 0;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    *(v3 + 8) = 0;
    *(a2 + 52) = 0;
    **(a2 + 24) = **(a2 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a2 + 32) = a1;
    v4 = (*(*a1 + 16))(a1);
    *(a2 + 44) = 0;
    *(a2 + 48) = 0;
    *(a2 + 40) = v4;
    operator new();
  }

  operator new();
}

void sub_1AE6BCF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1AE6BDED0(va);
  sub_1AE6BD230(v14 - 144);
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6BD004(uint64_t result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = *v2;
    v4 = v2[1] - *v2;
    if (v4)
    {
      v5 = v4 >> 2;
      v6 = (result + 48);
      if (v5 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5;
      }

      if (v5 < 8 || (v3 < result + 52 ? (v8 = v6 >= v3 + 4 * v7) : (v8 = 1), !v8))
      {
        v9 = 0;
LABEL_17:
        v14 = v7 - v9;
        v15 = (v3 + 4 * v9);
        do
        {
          *v15 = *v6 + ~*v15;
          ++v15;
          --v14;
        }

        while (v14);
        goto LABEL_19;
      }

      v9 = v7 & 0xFFFFFFFFFFFFFFF8;
      v10 = vld1q_dup_f32(v6);
      v11 = (v3 + 16);
      v12 = v7 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v13 = vaddq_s32(v10, vmvnq_s8(*v11));
        v11[-1] = vaddq_s32(v10, vmvnq_s8(v11[-1]));
        *v11 = v13;
        v11 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v5 != v9)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_19:
  if (*(result + 52) == 1)
  {
    v16 = *(result + 16);
    if (v16)
    {
      if (*v16)
      {
        operator delete(*v16);
      }

      result = MEMORY[0x1B2706400](v16, 0x1010C40113C0ABBLL);
    }
  }

  v17 = v1[7];
  if (v17)
  {
    v18 = *v17;
    if (*v17)
    {
      *(v17 + 8) = v18;
      operator delete(v18);
    }

    result = MEMORY[0x1B2706400](v17, 0x10C402FEFCB83);
  }

  v19 = v1[8];
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      *(v19 + 8) = v20;
      operator delete(v20);
    }

    result = MEMORY[0x1B2706400](v19, 0x10C402FEFCB83);
  }

  v21 = v1[9];
  if (v21)
  {
    if (*v21)
    {
      operator delete(*v21);
    }

    result = MEMORY[0x1B2706400](v21, 0x1010C40113C0ABBLL);
  }

  v22 = v1[10];
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      *(v22 + 8) = v23;
      operator delete(v23);
    }

    JUMPOUT(0x1B2706400);
  }

  return result;
}

uint64_t *sub_1AE6BD1D0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t sub_1AE6BD230(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE6BD2FC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1AE6BE0E4(a1, &v10);
}

void sub_1AE6BD8DC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1AE6BD908(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 80);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v10 = *v6;
    v11 = v8 - *v6;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1AE5CBB70();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(4 * v12) = a2;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    *v6 = 0;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = a2;
    v9 = (v8 + 1);
  }

  *(v6 + 8) = v9;
  v16 = **(a1 + 56);
  for (i = a2; i >= (*(*(a1 + 56) + 8) - v16) >> 2; v16 = **(a1 + 56))
  {
    v23 = *a1;
    if (*a1)
    {
      v43 = -1;
      sub_1AE6369B4(v23, &v43);
    }

    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = v24[1];
      v26 = v24[2];
      if (v25 == v26 << 6)
      {
        if ((v25 + 1) < 0)
        {
          goto LABEL_52;
        }

        v27 = v26 << 7;
        if (v27 <= (v25 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v27 = (v25 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v25 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }

        sub_1AE6BDFB8(*(a1 + 8), v28);
        v25 = v24[1];
      }

      v24[1] = v25 + 1;
      *(*v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v25);
    }

    v29 = *(a1 + 16);
    v30 = v29[1];
    v31 = v29[2];
    if (v30 == v31 << 6)
    {
      if ((v30 + 1) < 0)
      {
        goto LABEL_52;
      }

      v32 = v31 << 7;
      if (v32 <= (v30 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v32 = (v30 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v30 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_1AE6BDFB8(*(a1 + 16), v33);
      v30 = v29[1];
    }

    v29[1] = v30 + 1;
    *(*v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v30);
    v34 = *(a1 + 56);
    v42 = -1;
    sub_1AE6369B4(v34, &v42);
    v35 = *(a1 + 64);
    v41 = -1;
    sub_1AE6369B4(v35, &v41);
    v36 = *(a1 + 72);
    v37 = v36[1];
    v38 = v36[2];
    if (v37 == v38 << 6)
    {
      if ((v37 + 1) < 0)
      {
LABEL_52:
        sub_1AE5CBB70();
      }

      v39 = v38 << 7;
      if (v39 <= (v37 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v39 = (v37 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v37 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_1AE6BDFB8(*(a1 + 72), v40);
      v37 = v36[1];
    }

    v36[1] = v37 + 1;
    *(*v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v37);
  }

  v18 = *(a1 + 44);
  *(v16 + 4 * i) = v18;
  v19 = *(a1 + 72);
  *(**(a1 + 64) + 4 * i) = v18;
  v20 = i >> 6;
  v21 = 1 << i;
  *(*v19 + 8 * (i >> 6)) |= 1 << i;
  v22 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v22)
    {
      *(*v22 + 8 * v20) |= v21;
    }
  }

  else
  {
    if (v22)
    {
      *(*v22 + 8 * v20) &= ~v21;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
}

uint64_t sub_1AE6BDC50(uint64_t a1, int a2, int a3)
{
  result = (*(**(a1 + 32) + 24))(&v29);
  v30 = v29;
  HIDWORD(v29) = 2139095039;
  if (*&v29 != 3.4028e38)
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) == *(v7 + 4 * a2))
  {
    v8 = 0;
    v9 = *(a1 + 80);
    v10 = *(v9 + 8);
    v11 = **(a1 + 16);
    v12 = (v10 - 4);
    do
    {
      v13 = *v12--;
      v8 |= *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
    }

    while (v13 != a2);
    v14 = *a1;
    v15 = **(a1 + 72);
    if (v8)
    {
      if (v14)
      {
        v16 = *v14;
        v17 = *(a1 + 48);
        do
        {
          v18 = *(v10 - 4);
          v10 -= 4;
          result = v18;
          *(v16 + 4 * v18) = v17;
          v19 = (v18 >> 3) & 0x1FFFFFFFFFFFFFF8;
          *(v11 + v19) |= 1 << v18;
          *(v15 + v19) &= ~(1 << v18);
        }

        while (v18 != a2);
      }

      else
      {
        do
        {
          v23 = *(v10 - 4);
          v10 -= 4;
          v24 = (v23 >> 3) & 0x1FFFFFFFFFFFFFF8;
          *(v11 + v24) |= 1 << v23;
          result = *(v15 + v24) & ~(1 << v23);
          *(v15 + v24) = result;
        }

        while (v23 != a2);
      }
    }

    else if (v14)
    {
      v20 = *v14;
      v21 = *(a1 + 48);
      do
      {
        v22 = *(v10 - 4);
        v10 -= 4;
        *(v20 + 4 * v22) = v21;
        result = (v22 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v15 + result) &= ~(1 << v22);
      }

      while (v22 != a2);
    }

    else
    {
      do
      {
        v25 = *(v10 - 4);
        v10 -= 4;
        v26 = (v25 >> 3) & 0x1FFFFFFFFFFFFFF8;
        result = *(v15 + v26);
        *(v15 + v26) = result & ~(1 << v25);
      }

      while (v25 != a2);
    }

    *(v9 + 8) = v10;
    if ((v8 & 1) == 0)
    {
      **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
    }

    ++*(a1 + 48);
  }

  if (a3 != -1)
  {
    v27 = **(a1 + 16);
    if ((*(v27 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v27 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v28 = *(v7 + 4 * a2);
    if (v28 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v28;
    }
  }

  return result;
}

void *sub_1AE6BDED0(void *a1)
{
  *a1 = &unk_1F242C248;
  a1[1] = &unk_1F242C298;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

uint64_t sub_1AE6BDFB8(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

void *sub_1AE6BE0E4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_1AE6BE274(void *a1)
{
  *a1 = &unk_1F242C298;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6BE35C(void *a1)
{
  *a1 = &unk_1F242C298;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  return a1;
}

void sub_1AE6BE42C(void *a1)
{
  *a1 = &unk_1F242C248;
  a1[1] = &unk_1F242C298;
  v2 = a1 + 4;
  v3 = a1[5];
  if (v3 != a1 + 4)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[6])
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[6] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}

float sub_1AE6BE578@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

void sub_1AE6BE59C(void *a1)
{
  *a1 = &unk_1F242C2E8;
  v2 = a1[1];
  v3 = v2[14] - 1;
  v2[14] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6BE640(uint64_t a1)
{
  v5 = 5;
  strcpy(__p, "FATAL");
  v2 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v2, ": ", 2);
  sub_1AE5DB608(MEMORY[0x1E69E5300], "ImplToFst: Assignment operator disallowed", 41);
  sub_1AE696D18();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a1 + 8) + 8) |= 4uLL;
  return a1;
}

void sub_1AE6BE6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE696D18();
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6BE728(uint64_t a1)
{
  v11 = 5;
  strcpy(__p, "ERROR");
  v2 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v2, ": ", 2);
  v3 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Fst::Write: No write filename method for ", 41);
  v4 = (*(*a1 + 64))(a1);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = sub_1AE5DB608(v3, v6, v7);
  sub_1AE5DB608(v8, " Fst type", 9);
  sub_1AE696D18();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1AE6BE81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6BE844(uint64_t a1)
{
  v11 = 5;
  strcpy(__p, "ERROR");
  v2 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v2, ": ", 2);
  v3 = sub_1AE5DB608(MEMORY[0x1E69E5300], "Fst::Write: No write stream method for ", 39);
  v4 = (*(*a1 + 64))(a1);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = sub_1AE5DB608(v3, v6, v7);
  sub_1AE5DB608(v8, " Fst type", 9);
  sub_1AE696D18();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1AE6BE938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE6BE968(void *result)
{
  *result = &unk_1F242C2E8;
  v1 = result[1];
  v2 = v1[14] - 1;
  v1[14] = v2;
  if (!v2)
  {
    v3 = result;
    (*(*v1 + 8))(v1);
    return v3;
  }

  return result;
}

uint64_t sub_1AE6BE9EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 24);
  if (v8)
  {
    *a4 = *v8;
    v9 = (a4 + 8);
    if (v8 != a4)
    {
      v10 = *(v8 + 31);
      if (*(a4 + 31) < 0)
      {
        if (v10 >= 0)
        {
          v13 = (v8 + 8);
        }

        else
        {
          v13 = *(v8 + 8);
        }

        if (v10 >= 0)
        {
          v14 = *(v8 + 31);
        }

        else
        {
          v14 = *(v8 + 16);
        }

        sub_1AE621B84(v9, v13, v14);
      }

      else if ((*(v8 + 31) & 0x80) != 0)
      {
        sub_1AE621AB4(v9, *(v8 + 8), *(v8 + 16));
      }

      else
      {
        v11 = *(v8 + 8);
        *(a4 + 24) = *(v8 + 24);
        *v9 = v11;
      }

      v15 = *(v8 + 55);
      if (*(a4 + 55) < 0)
      {
        if (v15 >= 0)
        {
          v17 = (v8 + 32);
        }

        else
        {
          v17 = *(v8 + 32);
        }

        if (v15 >= 0)
        {
          v18 = *(v8 + 55);
        }

        else
        {
          v18 = *(v8 + 40);
        }

        sub_1AE621B84(a4 + 32, v17, v18);
      }

      else if ((*(v8 + 55) & 0x80) != 0)
      {
        sub_1AE621AB4((a4 + 32), *(v8 + 32), *(v8 + 40));
      }

      else
      {
        v16 = *(v8 + 32);
        *(a4 + 48) = *(v8 + 48);
        *(a4 + 32) = v16;
      }
    }

    v19 = *(v8 + 56);
    v20 = *(v8 + 72);
    *(a4 + 88) = *(v8 + 88);
    *(a4 + 72) = v20;
    *(a4 + 56) = v19;
  }

  else
  {
    result = sub_1AE7815D4(a4, a2, a3);
    if (!result)
    {
      return result;
    }
  }

  v21 = *(a4 + 31);
  if (v21 >= 0)
  {
    v22 = *(a4 + 31);
  }

  else
  {
    v22 = *(a4 + 16);
  }

  v23 = *(a1 + 39);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a1 + 24);
  }

  if (v22 != v23 || (v21 >= 0 ? (v25 = (a4 + 8)) : (v25 = *(a4 + 8)), v24 >= 0 ? (v26 = (a1 + 16)) : (v26 = *(a1 + 16)), memcmp(v25, v26, v22)))
  {
    v62 = 5;
    strcpy(__p, "ERROR");
    v27 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v27, ": ", 2);
    v28 = sub_1AE5DB608(MEMORY[0x1E69E5300], "FstImpl::ReadHeader: Fst not of type ", 38);
    v29 = *(a1 + 39);
    if (v29 >= 0)
    {
      v30 = a1 + 16;
    }

    else
    {
      v30 = *(a1 + 16);
    }

    if (v29 >= 0)
    {
      v31 = *(a1 + 39);
    }

    else
    {
      v31 = *(a1 + 24);
    }

    v32 = sub_1AE5DB608(v28, v30, v31);
    v33 = sub_1AE5DB608(v32, ": ", 3);
    v34 = *(a3 + 23);
    if (v34 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (v34 >= 0)
    {
      v36 = *(a3 + 23);
    }

    else
    {
      v36 = *(a3 + 8);
    }

LABEL_53:
    sub_1AE5DB608(v33, v35, v36);
    sub_1AE696D18();
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  sub_1AE6BB264();
  v37 = *(a4 + 55);
  if (v37 >= 0)
  {
    v38 = *(a4 + 55);
  }

  else
  {
    v38 = *(a4 + 40);
  }

  v39 = *(&xmmword_1ED9AC9B0 + 1);
  if (byte_1ED9AC9C7 >= 0)
  {
    v39 = byte_1ED9AC9C7;
  }

  if (v38 != v39 || (v37 >= 0 ? (v40 = (a4 + 32)) : (v40 = *(a4 + 32)), byte_1ED9AC9C7 >= 0 ? (v41 = &xmmword_1ED9AC9B0) : (v41 = xmmword_1ED9AC9B0), memcmp(v40, v41, v38)))
  {
    v62 = 5;
    strcpy(__p, "ERROR");
    v42 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v42, ": ", 2);
    v43 = sub_1AE5DB608(MEMORY[0x1E69E5300], "FstImpl::ReadHeader: Arc not of type ", 38);
    sub_1AE6BB264();
    if (byte_1ED9AC9C7 >= 0)
    {
      v44 = &xmmword_1ED9AC9B0;
    }

    else
    {
      v44 = xmmword_1ED9AC9B0;
    }

    if (byte_1ED9AC9C7 >= 0)
    {
      v45 = byte_1ED9AC9C7;
    }

    else
    {
      v45 = *(&xmmword_1ED9AC9B0 + 1);
    }

    v46 = sub_1AE5DB608(v43, v44, v45);
    v33 = sub_1AE5DB608(v46, ": ", 3);
    v47 = *(a3 + 23);
    if (v47 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (v47 >= 0)
    {
      v36 = *(a3 + 23);
    }

    else
    {
      v36 = *(a3 + 8);
    }

    goto LABEL_53;
  }

  if (*(a4 + 56) <= 0)
  {
    v62 = 5;
    strcpy(__p, "ERROR");
    v49 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v49, ": ", 2);
    v50 = sub_1AE5DB608(MEMORY[0x1E69E5300], "FstImpl::ReadHeader: Obsolete ", 30);
    v51 = *(a1 + 39);
    if (v51 >= 0)
    {
      v52 = a1 + 16;
    }

    else
    {
      v52 = *(a1 + 16);
    }

    if (v51 >= 0)
    {
      v53 = *(a1 + 39);
    }

    else
    {
      v53 = *(a1 + 24);
    }

    v54 = sub_1AE5DB608(v50, v52, v53);
    v33 = sub_1AE5DB608(v54, " Fst version: ", 14);
    v55 = *(a3 + 23);
    if (v55 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (v55 >= 0)
    {
      v36 = *(a3 + 23);
    }

    else
    {
      v36 = *(a3 + 8);
    }

    goto LABEL_53;
  }

  *(a1 + 8) = *(a4 + 64);
  if (*(a4 + 60))
  {
    *(a1 + 40) = sub_1AE6BEFD0(a2, a3);
    if (*(a3 + 52))
    {
LABEL_84:
      if ((*(a4 + 60) & 2) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_104;
    }
  }

  else if (*(a3 + 52))
  {
    goto LABEL_84;
  }

  v56 = *(a1 + 40);
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  *(a1 + 40) = 0;
  if ((*(a4 + 60) & 2) == 0)
  {
LABEL_85:
    if (*(a3 + 53))
    {
      goto LABEL_86;
    }

LABEL_105:
    v57 = *(a1 + 48);
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    *(a1 + 48) = 0;
    v48 = *(a3 + 32);
    if (!v48)
    {
      goto LABEL_111;
    }

    goto LABEL_108;
  }

LABEL_104:
  *(a1 + 48) = sub_1AE6BEFD0(a2, a3);
  if ((*(a3 + 53) & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_86:
  v48 = *(a3 + 32);
  if (v48)
  {
LABEL_108:
    v58 = *(a1 + 40);
    if (v58)
    {
      (*(*v58 + 8))(*(a1 + 40));
      v48 = *(a3 + 32);
    }

    *(a1 + 40) = (*(*v48 + 16))(v48);
  }

LABEL_111:
  v59 = *(a3 + 40);
  if (v59)
  {
    v60 = *(a1 + 48);
    if (v60)
    {
      (*(*v60 + 8))(*(a1 + 48));
      v59 = *(a3 + 40);
    }

    *(a1 + 48) = (*(*v59 + 16))(v59);
  }

  return 1;
}

void sub_1AE6BEF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6BEFD0(void *a1, uint64_t a2)
{
  memset(v6, 0, sizeof(v6));
  if (&v6[1] != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_1AE621AB4(&v6[1], *a2, *(a2 + 8));
    }

    else
    {
      *&v6[1] = *a2;
      v6[3] = *(a2 + 16);
    }
  }

  v10 = 0;
  std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
  {
    memset(&v9, 0, sizeof(v9));
    LODWORD(__p) = 0;
    std::istream::read();
    if (__p >= 1)
    {
      v4 = 0;
      do
      {
        __c[0] = 0;
        std::istream::read();
        std::string::push_back(&v9, __c[0]);
        ++v4;
      }

      while (v4 < __p);
    }

    operator new();
  }

  *(&v9.__r_.__value_.__s + 23) = 5;
  strcpy(&v9, "ERROR");
  v3 = sub_1AE5DB608(MEMORY[0x1E69E5300], &v9, 5);
  sub_1AE5DB608(v3, ": ", 2);
  sub_1AE5DB608(MEMORY[0x1E69E5300], "SymbolTable::Read: read failed", 30);
  sub_1AE696D18();
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6[3]) < 0)
  {
    operator delete(v6[1]);
  }

  return 0;
}

void sub_1AE6BF530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1AE696D18();
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  sub_1AE6BF644(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6BF644(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1AE6BF694(uint64_t result, int a2, void *a3)
{
  v3 = *(*(result + 8) + 80) + 20 * a2;
  v5 = *(v3 + 4);
  v4 = *(v3 + 8);
  v6 = *(*(result + 8) + 88) + 16 * v5;
  *a3 = 0;
  a3[1] = v6;
  a3[2] = v4;
  a3[3] = 0;
  return result;
}

uint64_t sub_1AE6BF6B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = *(v2 + 96);
  return result;
}

uint64_t sub_1AE6BF6E8(void *a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a3 + 27))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = a1[1];
  if (v7)
  {
    v34 = 0;
    v8 = 0;
    v9 = *(v7 + 104);
    v35 = *(v7 + 96);
  }

  else
  {
    (*(**(a2 + *(*a2 - 24) + 40) + 32))(&v41);
    v8 = v49;
    if (v49 == -1)
    {
      v35 = *(a1[1] + 96);
      if (v35 < 1)
      {
        v34 = 0;
        v35 = 0;
        v9 = 0;
      }

      else
      {
        v9 = 0;
        for (i = 0; i != v35; ++i)
        {
          v9 += (*(*a1 + 32))(a1, i);
        }

        v34 = 0;
      }

      v8 = -1;
    }

    else
    {
      v35 = -1;
      v34 = 1;
      v9 = -1;
    }
  }

  v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  *v43 = 0u;
  v47 = 0;
  v48 = 0;
  v46 = -1;
  v46 = (*(*a1 + 16))(a1);
  v47 = v35;
  v48 = v9;
  v40 = 5;
  strcpy(v39, "const");
  v11 = (*(*a1 + 56))(a1, 0x3FFFFFFF0004, 1);
  sub_1AE6BA9E8(a1, a2, a3, v6, v39, v11 | 1, &v41);
  if (*(a3 + 27) == 1 && (sub_1AE780A04(a2) & 1) == 0)
  {
    v38 = 5;
    strcpy(__p, "ERROR");
    v28 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v28, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "Could not align file during write after header", 46);
  }

  else
  {
    v32 = v8;
    v33 = v6;
    v12 = *(a1[1] + 96);
    if (v12 < 1)
    {
      v14 = 0;
      v12 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      do
      {
        (*(*a1 + 24))(__p, a1, v13);
        v36 = (*(*a1 + 32))(a1, v13);
        (*(*a1 + 40))(a1, v13);
        (*(*a1 + 48))(a1, v13);
        std::ostream::write();
        v14 += v36;
        ++v13;
      }

      while (v12 != v13);
    }

    v47 = v12;
    v48 = v14;
    if ((*(a3 + 27) & 1) != 0 && (sub_1AE780A04(a2) & 1) == 0)
    {
      v38 = 5;
      strcpy(__p, "ERROR");
      v15 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v15, ": ", 2);
      sub_1AE5DB608(MEMORY[0x1E69E5300], "Could not align file during write after writing states", 54);
      sub_1AE696D18();
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16 = *(a1[1] + 96);
    if (v16 >= 1)
    {
      for (j = 0; j != v16; ++j)
      {
        v18 = a1[1];
        v19 = *(v18 + 80) + 20 * j;
        v20 = *(v19 + 8);
        if (v20)
        {
          v21 = *(v18 + 88) + 16 * *(v19 + 4);
          do
          {
            std::ostream::write();
            v21 += 16;
            --v20;
          }

          while (v20);
        }
      }
    }

    std::ostream::flush();
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      v38 = 5;
      strcpy(__p, "ERROR");
      v22 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
      sub_1AE5DB608(v22, ": ", 2);
      v23 = sub_1AE5DB608(MEMORY[0x1E69E5300], "ConstFst Write write failed: ", 29);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = *a3;
      }

      if (v24 >= 0)
      {
        v26 = *(a3 + 23);
      }

      else
      {
        v26 = *(a3 + 8);
      }

      sub_1AE5DB608(v23, v25, v26);
    }

    else
    {
      if (v34)
      {
        v27 = sub_1AE6BADFC(a1, a2, a3, v33, v39, v11 | 1, &v41, v32);
        goto LABEL_51;
      }

      if (v47 == v35)
      {
        if (v48 == v9)
        {
          v27 = 1;
          goto LABEL_51;
        }

        v38 = 5;
        strcpy(__p, "ERROR");
        v30 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
        sub_1AE5DB608(v30, ": ", 2);
        sub_1AE5DB608(MEMORY[0x1E69E5300], "Inconsistent number of arcs observed during write", 49);
      }

      else
      {
        v38 = 5;
        strcpy(__p, "ERROR");
        v29 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
        sub_1AE5DB608(v29, ": ", 2);
        sub_1AE5DB608(MEMORY[0x1E69E5300], "Inconsistent number of states observed during write", 51);
      }
    }
  }

  sub_1AE696D18();
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = 0;
LABEL_51:
  if ((v40 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_56:
    operator delete(v43[1]);
    if ((SHIBYTE(v43[0]) & 0x80000000) == 0)
    {
      return v27;
    }

LABEL_57:
    operator delete(v42[0]);
    return v27;
  }

  operator delete(v39[0]);
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_56;
  }

LABEL_53:
  if (SHIBYTE(v43[0]) < 0)
  {
    goto LABEL_57;
  }

  return v27;
}

void sub_1AE6BFDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_1AE696D18();
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_1AE6B751C(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6BFED8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v9 = 0;
    v6 = sub_1AE6BB5E4(a1, a2, &v9);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v9 | 4) | v9 & v6;
    return v6 & a2;
  }

  else
  {
    v8 = *(**(a1 + 8) + 24);

    return v8();
  }
}

float sub_1AE6BFFB8@<S0>(uint64_t a1@<X0>, int a2@<W1>, float *a3@<X8>)
{
  result = *(*(*(a1 + 8) + 80) + 20 * a2);
  *a3 = result;
  return result;
}

void sub_1AE6BFFE0(void *a1)
{
  *a1 = &unk_1F242C168;
  v2 = a1[1];
  v3 = v2[14] - 1;
  v2[14] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE6C0084(void *result)
{
  *result = &unk_1F242C168;
  v1 = result[1];
  v2 = v1[14] - 1;
  v1[14] = v2;
  if (!v2)
  {
    v3 = result;
    (*(*v1 + 8))(v1);
    return v3;
  }

  return result;
}

void sub_1AE6C0108(uint64_t a1)
{
  *a1 = &unk_1F242D0D0;
  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *a1 = &unk_1F242C4E0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE6C0244(uint64_t a1)
{
  *a1 = &unk_1F242D0D0;
  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *a1 = &unk_1F242C4E0;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *sub_1AE6C0360(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 10)
    {
      v4 = 10;
    }

    else
    {
      v4 = a4;
    }

    if (a4 <= 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = a4 - 3;
    }

    if (v5 >= a4 - v4)
    {
      operator new();
    }

    __assert_rtn("prediction", "LMFstGrammar.cpp", 172, "end >= begin");
  }

  result[1] = 0;
  *result = result + 1;
  result[5] = 0;
  result[4] = 0;
  result[2] = 0;
  result[3] = result + 4;
  return result;
}

void sub_1AE6C214C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, void **a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, void *a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  *(v50 - 136) = v49;
  if (a39 < 0)
  {
    operator delete(__p);
    if ((a49 & 0x80000000) == 0)
    {
LABEL_9:
      if (a24)
      {
        operator delete(a24);
      }

      sub_1AE6BE968((v50 - 184));
      sub_1AE6206F4(a27);
      sub_1AE645234((v50 - 144));
      sub_1AE645234(&a29);
      sub_1AE6BE968(&a32);
      _Unwind_Resume(a1);
    }
  }

  else if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(a44);
  goto LABEL_9;
}

BOOL sub_1AE6C239C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  memset(v21, 0, 7);
  if (a2 == a3)
  {
    return 0;
  }

  v6 = a2;
  v8 = 0;
  LOBYTE(v9) = 0;
  while (1)
  {
    while (1)
    {
      v10 = *v6;
      v11 = (*(**v6 + 80))(*v6, a1);
      (*(*v10 + 56))(&__s, v10, v11);
      if ((v9 & 0x80) != 0)
      {
        operator delete(v8);
      }

      v8 = __s;
      v12 = v19;
      v21[0] = DWORD2(v19);
      *(v21 + 3) = *(&v19 + 11);
      v9 = SHIBYTE(v19);
      if ((SHIBYTE(v19) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIBYTE(v19))
      {
        goto LABEL_13;
      }

      if (++v6 == a3)
      {
        return 0;
      }
    }

    if (v19)
    {
      break;
    }

    if (++v6 == a3)
    {
      v13 = 0;
LABEL_23:
      operator delete(v8);
      return v13;
    }
  }

LABEL_13:
  if (v19 >= 0)
  {
    v14 = SHIBYTE(v19);
  }

  else
  {
    v14 = v19;
  }

  v13 = v14 != 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = (*(*v10 + 88))(v10, a1);
  if (v15 != 89)
  {
    if (v15 == 69)
    {
      __s = "xSURNAMEx";
      if ((v9 & 0x80000000) == 0)
      {
        *&v19 = v8;
        *(&v19 + 1) = v12;
        LODWORD(v20) = v21[0];
        *(&v20 + 3) = *(v21 + 3);
        HIBYTE(v20) = v9;
        v16 = "xSURNAMEx";
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v15 == 68)
    {
      __s = "xGIVENNAMEx";
      if ((v9 & 0x80000000) == 0)
      {
        *&v19 = v8;
        *(&v19 + 1) = v12;
        LODWORD(v20) = v21[0];
        *(&v20 + 3) = *(v21 + 3);
        HIBYTE(v20) = v9;
        v16 = "xGIVENNAMEx";
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_22:
    if ((v9 & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_23;
  }

  __s = "xFULLNAMEx";
  if ((v9 & 0x80000000) == 0)
  {
    *&v19 = v8;
    *(&v19 + 1) = v12;
    LODWORD(v20) = v21[0];
    *(&v20 + 3) = *(v21 + 3);
    HIBYTE(v20) = v9;
    v16 = "xFULLNAMEx";
    goto LABEL_30;
  }

LABEL_29:
  sub_1AE5DBF1C(&v19, v8, v12);
  v16 = __s;
LABEL_30:
  sub_1AE5CF628(a4, v16);
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 24) = v19;
  *(a4 + 40) = v20;
  v13 = 1;
  if (v9 < 0)
  {
    goto LABEL_23;
  }

  return v13;
}

void sub_1AE6C2660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 0x80) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE6C26BC(uint64_t a1, const void **a2)
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
    result = memcmp(v11, v4, v13);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return result;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE6C2860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_1AE620F48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C288C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 4);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v6 = (*(*result + 128))(result, 1);
      v9 = v6;
      if (!v6)
      {
        operator new();
      }

      LOBYTE(v10) = 0;
      v7 = (*(*a2 + 128))(a2, 0);
      v15 = v7;
      if (!v7)
      {
        operator new();
      }

      LOBYTE(v16) = 0;
      v8 = sub_1AE6DB4C8(&v9, &v15);
      (*(*v7 + 8))(v7);
      (*(*v6 + 8))(v6);
      if (v8)
      {
        if (v8 == 1)
        {
          LOBYTE(v9) = 1;
          v10 = 0u;
          v11 = 0u;
          v12 = 0u;
          operator new();
        }

        LOBYTE(v9) = 1;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        operator new();
      }

      LOBYTE(v9) = 1;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      operator new();
    }

    if (v5 == 1)
    {
      LOBYTE(v9) = 1;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      operator new();
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        LOBYTE(v9) = 1;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        operator new();
      case 3:
        LOBYTE(v9) = 1;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        operator new();
      case 4:
        LOBYTE(v9) = 1;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        operator new();
    }
  }

  if (*a4 == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0;
    v9 = 0;
    *&v10 = &v15;
    *(&v10 + 1) = v14;
    *&v11 = &v13;
    sub_1AE6BBFDC(a3, &v9);
  }

  return result;
}

void sub_1AE6C57FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p)
{
  sub_1AE696D18();
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  sub_1AE6C6C70(v26);
  MEMORY[0x1B2706400](v26, 0x10F3C405A371F01);
  _Unwind_Resume(a1);
}

void *sub_1AE6C5D98(void *result)
{
  *result = &unk_1F242D560;
  v1 = result[1];
  v2 = v1[14] - 1;
  v1[14] = v2;
  if (!v2)
  {
    v3 = result;
    (*(*v1 + 8))(v1);
    return v3;
  }

  return result;
}

uint64_t sub_1AE6C5E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE6C6640(a1, a4);
  *v8 = &unk_1F242D390;
  sub_1AE6C67A4(v8, a2, a3);
  *a1 = &unk_1F242D308;
  v9 = *(a4 + 40);
  if (!v9)
  {
    operator new();
  }

  *(a1 + 136) = v9;
  v10 = *v9;
  *(a1 + 144) = *v9;
  *(a1 + 160) = (*(**v10 + 32))();
  *(a1 + 168) = (*(***(a1 + 152) + 32))(**(a1 + 152));
  v11 = *(a4 + 48);
  if (!v11)
  {
    operator new();
  }

  *(a1 + 176) = v11;
  if (((*(***(a1 + 144) + 48))(**(a1 + 144)) & 1) != 0 && (*(***(a1 + 144) + 24))(**(a1 + 144), 1) != 1)
  {
    v31 = 5;
    strcpy(__p, "FATAL");
    v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v18, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: 1st argument requires matching but cannot.", 54);
    goto LABEL_26;
  }

  if (((*(***(a1 + 152) + 48))(**(a1 + 152)) & 1) != 0 && (*(***(a1 + 152) + 24))(**(a1 + 152), 1))
  {
    v31 = 5;
    strcpy(__p, "FATAL");
    v12 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
    sub_1AE5DB608(v12, ": ", 2);
    sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: 2nd argument requires matching but cannot.", 54);
    goto LABEL_26;
  }

  v13 = (*(***(a1 + 144) + 24))(**(a1 + 144), 0);
  v14 = (*(***(a1 + 152) + 24))(**(a1 + 152), 0);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13 == 1;
  }

  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v13 == 1)
  {
    v17 = 1;
  }

  else
  {
    v16 = 0;
    v17 = v14 == 0;
  }

  if (v17)
  {
LABEL_22:
    *(a1 + 184) = v16;
    goto LABEL_29;
  }

  if ((*(***(a1 + 144) + 24))(**(a1 + 144), 1) == 1)
  {
    v16 = 1;
    goto LABEL_22;
  }

  if (!(*(***(a1 + 152) + 24))(**(a1 + 152), 1))
  {
    *(a1 + 184) = 0;
    goto LABEL_29;
  }

  v31 = 5;
  strcpy(__p, "FATAL");
  v19 = sub_1AE5DB608(MEMORY[0x1E69E5300], __p, 5);
  sub_1AE5DB608(v19, ": ", 2);
  v20 = sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: 1st argument cannot match on output labels ", 55);
  sub_1AE5DB608(v20, "and 2nd argument cannot match on input labels (sort?).", 54);
LABEL_26:
  sub_1AE696D18();
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 184) = 3;
  *(a1 + 8) |= 4uLL;
LABEL_29:
  v21 = (*(*a2 + 56))(a2, 0x3FFFFFFF0007, 0);
  v22 = (*(*a3 + 56))(a3, 0x3FFFFFFF0007, 0);
  v23 = (*(***(a1 + 144) + 40))(**(a1 + 144), v21);
  v24 = (*(***(a1 + 152) + 40))(**(a1 + 152), v22);
  v25 = (v24 | v23) & 4;
  v26 = v24 & v23;
  v27 = v24 & v23 & 0x2802000000 | v25 | 0x10000000000;
  if ((v24 & v23 & 0x2000000) != 0)
  {
    v27 |= v24 & v23 & 0x40000;
  }

  v28 = v26 & 0x280A800000 | v25 | 0x10000010000;
  if ((v26 & 0x2000000) != 0)
  {
    v28 |= v26 & 0x140000;
  }

  if ((v26 & 0x10000) == 0)
  {
    v28 = v27;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | v28 & 0x13FFFFF0004;
  return a1;
}

void sub_1AE6C655C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1B2706400](v18, 0x10E1C4003B7394BLL);
  MEMORY[0x1B2706400](v17, 0x20C4093837F09);
  MEMORY[0x1B2706400](v16, 0x1060C40AD892F49);
  sub_1AE6C6C70(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C6640(uint64_t result, uint64_t a2)
{
  *(result + 39) = 4;
  strcpy((result + 16), "null");
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *result = &unk_1F242C740;
  *(result + 8) = 0;
  *(result + 60) = 0;
  *(result + 64) = -1;
  *(result + 68) = 0u;
  *(result + 84) = 0u;
  *(result + 100) = -1;
  *(result + 104) = *a2;
  v2 = *(a2 + 16);
  *(result + 112) = *(a2 + 8);
  if (!v2)
  {
    operator new();
  }

  *(result + 120) = v2;
  *(result + 128) = 0;
  return result;
}

void sub_1AE6C6764(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v2, 0x10A0C40690396FALL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  sub_1AE6D3884(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C67A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIBYTE(v35) = 7;
  strcpy(v34, "compose");
  if (*(a1 + 39) < 0)
  {
    sub_1AE621B84(a1 + 16, v34, 7uLL);
  }

  else
  {
    *(a1 + 16) = *v34;
    *(a1 + 32) = v35;
  }

  v6 = (*(*a3 + 96))(a3);
  v7 = (*(*a2 + 104))(a2);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_33;
  }

  v9 = v7;
  (*(*v6 + 64))(v34, v6);
  (*(*v9 + 64))(__p, v9);
  v10 = HIBYTE(v35);
  if (v35 >= 0)
  {
    v11 = HIBYTE(v35);
  }

  else
  {
    v11 = v34[1];
  }

  v12 = v33;
  v13 = v33;
  if ((v33 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v11 == v12)
  {
    if (v35 >= 0)
    {
      v14 = v34;
    }

    else
    {
      v14 = v34[0];
    }

    if ((v33 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = memcmp(v14, v15, v11) == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = 0;
  if (v33 < 0)
  {
LABEL_23:
    operator delete(__p[0]);
    v10 = HIBYTE(v35);
  }

LABEL_24:
  if (v10 < 0)
  {
    operator delete(v34[0]);
    if (v16)
    {
      goto LABEL_33;
    }
  }

  else if (v16)
  {
    goto LABEL_33;
  }

  HIBYTE(v35) = 7;
  strcpy(v34, "WARNING");
  v17 = sub_1AE5DB608(MEMORY[0x1E69E5300], v34, 7);
  sub_1AE5DB608(v17, ": ", 2);
  v18 = sub_1AE5DB608(MEMORY[0x1E69E5300], "CompatSymbols: Symbol table check sums do not match. ", 53);
  v19 = sub_1AE5DB608(v18, "Table sizes are ", 16);
  v20 = (*(*v6 + 120))(v6);
  v21 = MEMORY[0x1B2706120](v19, v20);
  v22 = sub_1AE5DB608(v21, " and ", 5);
  v23 = (*(*v9 + 120))(v9);
  MEMORY[0x1B2706120](v22, v23);
  sub_1AE696D18();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  HIBYTE(v35) = 5;
  strcpy(v34, "FATAL");
  v24 = sub_1AE5DB608(MEMORY[0x1E69E5300], v34, 5);
  sub_1AE5DB608(v24, ": ", 2);
  v25 = sub_1AE5DB608(MEMORY[0x1E69E5300], "ComposeFst: output symbol table of 1st argument ", 48);
  sub_1AE5DB608(v25, "does not match input symbol table of 2nd argument", 49);
  sub_1AE696D18();
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  *(a1 + 8) |= 4uLL;
LABEL_33:
  v26 = (*(*a2 + 96))(a2);
  v27 = *(a1 + 40);
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  if (v26)
  {
    v28 = (*(*v26 + 16))(v26);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 40) = v28;
  v29 = (*(*a3 + 104))(a3);
  v30 = *(a1 + 48);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  if (v29)
  {
    result = (*(*v29 + 16))(v29);
  }

  else
  {
    result = 0;
  }

  *(a1 + 48) = result;
  return result;
}

void sub_1AE6C6C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1AE696D18();
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE6C6C70(uint64_t a1)
{
  *a1 = &unk_1F242C740;
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = v2[1];
    if (v2[2] != v3)
    {
      v4 = 0;
      do
      {
        sub_1AE6CEEF4(*(v3 + 8 * v4++), v2 + 9);
        v3 = v2[1];
      }

      while (v4 < (v2[2] - v3) >> 3);
    }

    v2[2] = v3;
    v5 = v2 + 4;
    if (v2[6])
    {
      v6 = v2[5];
      v7 = *(v2[4] + 8);
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      v2[6] = 0;
      if (v6 != v5)
      {
        do
        {
          v9 = v6[1];
          v10 = sub_1AE6CEFF0(v2[7]);
          v6[3] = *(v10 + 56);
          *(v10 + 56) = v6;
          v6 = v9;
        }

        while (v9 != v5);
      }
    }

    v11 = v2[10];
    v12 = v11[1] - 1;
    v11[1] = v12;
    if (!v12)
    {
      v13 = v11[2];
      v14 = v11[3];
      if (v14 != v13)
      {
        v15 = 0;
        do
        {
          v16 = v13[v15];
          if (v16)
          {
            (*(*v16 + 8))(v13[v15]);
            v13 = v11[2];
            v14 = v11[3];
          }

          ++v15;
        }

        while (v15 < (v14 - v13) >> 3);
      }

      if (v13)
      {
        v11[3] = v13;
        operator delete(v13);
      }

      MEMORY[0x1B2706400](v11, 0x1080C40B69A5871);
    }

    v17 = v2[9];
    v18 = v17[1] - 1;
    v17[1] = v18;
    if (!v18)
    {
      v19 = v17[2];
      v20 = v17[3];
      if (v20 != v19)
      {
        v21 = 0;
        do
        {
          v22 = v19[v21];
          if (v22)
          {
            (*(*v22 + 8))(v19[v21]);
            v19 = v17[2];
            v20 = v17[3];
          }

          ++v21;
        }

        while (v21 < (v20 - v19) >> 3);
      }

      if (v19)
      {
        v17[3] = v19;
        operator delete(v19);
      }

      MEMORY[0x1B2706400](v17, 0x1080C40B69A5871);
    }

    sub_1AE6D3A40(v2 + 4);
    v23 = v2[1];
    if (v23)
    {
      v2[2] = v23;
      operator delete(v23);
    }

    MEMORY[0x1B2706400](v2, 0x10A0C40690396FALL);
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    operator delete(v24);
  }

  *a1 = &unk_1F242C4E0;
  v25 = *(a1 + 40);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(a1 + 48);
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1AE6C70CC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1AE6C8078((a1 + 16), v2, *(a1 + 8));
  }

  v3 = *(a1 + 16);
  v4 = v3[1] - 1;
  v3[1] = v4;
  if (!v4)
  {
    v5 = v3[2];
    v6 = v3[3];
    if (v6 != v5)
    {
      v7 = 0;
      do
      {
        v8 = v5[v7];
        if (v8)
        {
          (*(*v8 + 8))(v5[v7]);
          v5 = v3[2];
          v6 = v3[3];
        }

        ++v7;
      }

      while (v7 < (v6 - v5) >> 3);
    }

    if (v5)
    {
      v3[3] = v5;
      operator delete(v5);
    }

    MEMORY[0x1B2706400](v3, 0x1080C40B69A5871);
  }

  return a1;
}

void sub_1AE6C71A8(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v7 = *a1;
    *a1 = 0;
    if (v7)
    {
      sub_1AE6C8078((a1 + 16), v7, *(a1 + 8));
    }

    *(a1 + 8) = 0;
    return;
  }

  v4 = sub_1AE6C7B0C((a1 + 16), a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    sub_1AE6C8078((a1 + 16), v5, *(a1 + 8));
    v6 = *a1;
  }

  else
  {
    v6 = v4;
  }

  *(a1 + 8) = a2;
  bzero(v6, 8 * a2);
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (v10)
  {
    v11 = v8[1];
    v12 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v13 = v11 & v12;
      v6[v13] = v9;
      while (1)
      {
        v14 = *v8;
        if (!*v8)
        {
          break;
        }

        v15 = v14[1] & v12;
        if (v15 == v13)
        {
          v8 = *v8;
        }

        else if (v6[v15])
        {
          *v8 = *v14;
          *v14 = *v6[v15];
          *v6[v15] = v14;
        }

        else
        {
          v6[v15] = v8;
          v8 = v14;
          v13 = v15;
        }
      }

      return;
    }

    if (v11 >= a2)
    {
      v11 %= a2;
    }

    v6[v11] = v9;
    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16[1];
        if (v17 >= a2)
        {
          v17 %= a2;
        }

        if (v17 != v11)
        {
          if (!v6[v17])
          {
            v6[v17] = v8;
            goto LABEL_23;
          }

          *v8 = *v16;
          *v16 = *v6[v17];
          *v6[v17] = v16;
          v16 = v8;
        }

        v17 = v11;
LABEL_23:
        v8 = v16;
        v16 = *v16;
        v11 = v17;
      }

      while (v16);
    }
  }
}

uint64_t sub_1AE6C7330(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = sub_1AE6C742C(*(a1 + 32));
      v2[3] = *(v4 + 56);
      *(v4 + 56) = v2;
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 32);
  v6 = v5[1] - 1;
  v5[1] = v6;
  if (!v6)
  {
    v7 = v5[2];
    v8 = v5[3];
    if (v8 != v7)
    {
      v9 = 0;
      do
      {
        v10 = v7[v9];
        if (v10)
        {
          (*(*v10 + 8))(v7[v9]);
          v7 = v5[2];
          v8 = v5[3];
        }

        ++v9;
      }

      while (v9 < (v8 - v7) >> 3);
    }

    if (v7)
    {
      v5[3] = v7;
      operator delete(v7);
    }

    MEMORY[0x1B2706400](v5, 0x1080C40B69A5871);
  }

  return sub_1AE6C70CC(a1);
}

uint64_t sub_1AE6C742C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = (*(a1 + 24) - v1) >> 3;
  if (v3 <= 0x18)
  {
    v5 = 0;
    sub_1AE6C7590(a1 + 16, 25 - v3, &v5);
    v1 = *v2;
  }

  result = *(v1 + 192);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6C7570(_Unwind_Exception *a1)
{
  sub_1AE6BD1D0(v2);
  MEMORY[0x1B2706400](v3, v1);
  _Unwind_Resume(a1);
}

void sub_1AE6C7590(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 3)
  {
    v10 = &v4[a2];
    v11 = *a3;
    v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= 3)
    {
      v13 = v12 + 1;
      v14 = vdupq_n_s64(v11);
      v15 = (v4 + 2);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_17;
      }

      v4 += v13 & 0x3FFFFFFFFFFFFFFCLL;
    }

    do
    {
      *v4++ = v11;
    }

    while (v4 != v10);
LABEL_17:
    *(a1 + 8) = v10;
    return;
  }

  v6 = (v4 - *a1) >> 3;
  v7 = v6 + a2;
  if ((v6 + a2) >> 61)
  {
    sub_1AE5CBB70();
  }

  v8 = v5 - *a1;
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

  v17 = 8 * v6;
  v18 = 8 * v6 + 8 * a2;
  v19 = *a3;
  v20 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v21 = (8 * v6);
  if (v20 < 3)
  {
    goto LABEL_23;
  }

  v22 = (v20 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v23 = vdupq_n_s64(v19);
  v24 = (v17 + 16);
  v25 = v22;
  do
  {
    v24[-1] = v23;
    *v24 = v23;
    v24 += 2;
    v25 -= 4;
  }

  while (v25);
  if (v20 + 1 != v22)
  {
    v21 = (v17 + 8 * v22);
    do
    {
LABEL_23:
      *v21++ = v19;
    }

    while (v21 != v18);
  }

  v26 = *a1;
  v27 = *(a1 + 8) - *a1;
  v28 = v17 - v27;
  memcpy((v17 - v27), *a1, v27);
  *a1 = v28;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  if (v26)
  {

    operator delete(v26);
  }
}

void sub_1AE6C7764(void *a1)
{
  *a1 = &unk_1F242CFB0;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B27063D0](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[5])
  {
    v5 = a1[4];
    v6 = *(a1[3] + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[5] = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = v5[1];
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  JUMPOUT(0x1B2706400);
}