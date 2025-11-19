uint64_t sub_256368A48(uint64_t a1, uint64_t *a2, void *a3)
{
  v40 = *(a1 + 80);
  v5 = a3[1];
  v6 = v5 - *a3;
  v7 = v6 >> 3;
  if (v5 != *a3)
  {
    v9 = 0;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 >> 3;
    }

    do
    {
      v13 = *(*a3 + 8 * v9);
      if (*(a1 + 88) == 1)
      {
        v11 = sub_256369E48(v13);
        v12 = (a1 + 8);
      }

      else
      {
        v11 = (*(*v13 + 176))(v13);
        v12 = (a1 + 32);
      }

      *(*v12 + 8 * v9++) = v11;
    }

    while (v10 != v9);
  }

  v15 = *a2;
  v14 = a2[1];
  v16 = v14 - *a2;
  v41 = 0;
  if ((*(a1 + 89) & 1) != 0 && *(a1 + 88) == 1)
  {
    v41 = (*(**(v14 - 8) + 168))(*(v14 - 8));
  }

  v17 = v16 >> 3;
  if (v14 != v15)
  {
    v18 = 0;
    if (v17 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17;
    }

    do
    {
      v22 = *(*a2 + 8 * v18);
      if (*(a1 + 88) == 1)
      {
        v20 = sub_256369E48(v22);
        v21 = (a1 + 8);
      }

      else
      {
        v20 = (*(*v22 + 168))(v22);
        v21 = (a1 + 32);
      }

      *(*v21 + v6) = v20;
      ++v18;
      v6 += 8;
    }

    while (v19 != v18);
  }

  if (*(a1 + 88))
  {
    v23 = *(a1 + 89);
    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    if (v24 != v25)
    {
      if (((v24 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_25632CE68();
    }

    v28 = v17 + v7 - v23;
    if (v17 + v7 != v23)
    {
      v29 = 0;
      v30 = *(a1 + 8);
      v31 = v28 <= 1 ? 1 : v17 + v7 - v23;
      if (v28 < 4)
      {
        goto LABEL_36;
      }

      if (-v30 <= 0x1F)
      {
        goto LABEL_36;
      }

      v29 = v31 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = (v30 + 16);
      v33 = 16;
      v34 = v31 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *v32;
        *(v33 - 16) = *(v32 - 1);
        *v33 = v35;
        v32 += 2;
        v33 += 32;
        v34 -= 4;
      }

      while (v34);
      if (v28 != v29)
      {
LABEL_36:
        v36 = v31 - v29;
        v37 = (8 * v29);
        v38 = (v37 + v30);
        do
        {
          v39 = *v38++;
          *v37++ = v39;
          --v36;
        }

        while (v36);
      }
    }

    if (*(a1 + 89))
    {
      MEMORY[0xFFFFFFFFFFFFFFF8] = &v41;
    }

    return v40(0);
  }

  else
  {
    v26 = *(a1 + 32);

    return v40(v26);
  }
}

void sub_256368D30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256368D48(uint64_t result, uint64_t a2)
{
  if (!*(result + 80))
  {
    *(result + 80) = a2;
  }

  return result;
}

uint64_t **sub_256368D5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_256331F64(a1, a2);
  *a3 = 0;
  *(a3 + 24) = -1;
  v5 = *(result + 16);
  if (v5 != -1)
  {
    v6 = a3;
    result = (off_2868554F0[v5])(&v6, result + 5);
    *(a3 + 24) = v5;
  }

  return result;
}

uint64_t sub_256368DD8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = *a3;
  }

  return fprintf(*MEMORY[0x277D85DF8], "error %d-%d:%d-%d: %s\n", a2[2], a2[6], a2[3], a2[7], v3);
}

uint64_t sub_256368E30(uint64_t result)
{
  if (*(result + 23) < 0)
  {
    v1 = result;
    operator delete(*result);
    return v1;
  }

  return result;
}

void sub_256368E70(uint64_t a1)
{
  sub_25637B9C0(a1);
  *v1 = &unk_286855528;
  operator new();
}

uint64_t sub_256368F48(void *a1)
{
  *a1 = &unk_286855528;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  a1[13] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_25637BA08(a1);
}

void sub_25636901C(void *a1)
{
  v1 = sub_256368F48(a1);

  j__free(v1);
}

double sub_256369044(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 48))(a2);
  if (sub_25637BC84(a2) == 1)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 131073;
    if (sub_25637BC84(a2) != 2)
    {
      if (sub_25637BC84(a2) == 3)
      {
        v4 = 196608;
      }

      else if (sub_25637BC84(a2) == 4)
      {
        v4 = 0x40000;
      }

      else
      {
        v4 = 360448;
        if (sub_25637BC84(a2) != 5)
        {
          if (sub_25637BC84(a2) == 6)
          {
            v4 = 425984;
          }

          else if (sub_25637BC84(a2) == 7)
          {
            v4 = 491520;
          }

          else if (sub_25637BC84(a2) == 8)
          {
            v4 = 557056;
          }

          else
          {
            v4 = 0x10000;
          }
        }
      }
    }
  }

  *(a1 + 60) = v4;
  memset_pattern16((a1 + 64), &unk_25637D6E0, 0x40uLL);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v5 = sub_25637BC84(a2);
  if (sub_25637BC84(a2))
  {
    v6 = a1 + 64 + 8 * v5;
    *(v6 - 8) = **(*(*a2 + 40))(a2);
    if (sub_25637BC84(a2) >= 2)
    {
      *(v6 - 16) = *(*(*(*a2 + 40))(a2) + 8);
      if (sub_25637BC84(a2) >= 3)
      {
        *(v6 - 24) = *(*(*(*a2 + 40))(a2) + 16);
        if (sub_25637BC84(a2) >= 4)
        {
          *(v6 - 32) = *(*(*(*a2 + 40))(a2) + 24);
          if (sub_25637BC84(a2) >= 5)
          {
            *(v6 - 40) = *(*(*(*a2 + 40))(a2) + 32);
            if (sub_25637BC84(a2) >= 6)
            {
              *(v6 - 48) = *(*(*(*a2 + 40))(a2) + 40);
              if (sub_25637BC84(a2) >= 7)
              {
                *(v6 - 56) = *(*(*(*a2 + 40))(a2) + 48);
                if (sub_25637BC84(a2) >= 8)
                {
                  *(a1 + 8 * v5) = *(*(*(*a2 + 40))(a2) + 56);
                  sub_25637BC84(a2);
                }
              }
            }
          }
        }
      }
    }
  }

  v7 = (*(*a2 + 48))(a2);
  if (v7[1] != *v7)
  {
    v8 = 0;
    v9 = (a1 + 8 * v5 + 120);
    do
    {
      *v9-- = *(*(*(*a2 + 48))(a2) + 8 * v8);
      v10 = (*(*a2 + 48))(a2);
      if (v8 > 6)
      {
        break;
      }

      ++v8;
    }

    while (v8 < (v10[1] - *v10) >> 3);
  }

  *(a1 + 192) = *(a1 + 16);
  v11 = (*(*a2 + 16))(a2) - 1;
  if (v11 > 0xB)
  {
    v12 = 131080;
  }

  else
  {
    v12 = dword_25637D684[v11];
  }

  *(a1 + 200) = v12;
  *(a1 + 208) = 0;
  *&result = 1065353216;
  *(a1 + 220) = 1065353216;
  return result;
}

void sub_2563694F0(void *a1)
{
  v2 = a1[13];
  v3 = (*(*a1 + 16))(a1);
  if (v3 <= 0xA)
  {
    v4 = dword_25637D6B4[v3];
  }

  (*(*a1 + 168))(a1);
  v5 = (*(*a1 + 40))(a1);
  v6 = v5[1];
  if (v6 != *v5)
  {
    if (((v6 - *v5) & 0x8000000000000000) == 0)
    {
      v7 = v6 - *v5;
      operator new();
    }

    sub_25632CE68();
  }

  v8 = (*(*a1 + 48))(a1);
  v9 = v8[1];
  if (v9 != *v8)
  {
    if (((v9 - *v8) & 0x8000000000000000) == 0)
    {
      v10 = v9 - *v8;
      operator new();
    }

    sub_25632CE68();
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  operator new();
}

void sub_256369884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_256369900(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v2 = *(a2 + 36);
  if (v2 >= 1)
  {
    v3 = *(*(a2 + 40) + 16 * v2 - 8);
    operator new();
  }

  (*(*a1 + 56))(a1, &v8);
  (*(*a1 + 64))(a1, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_256369BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (a13)
  {
    operator delete(a13);
    v18 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v18 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void sub_256369C34(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = v3 >> 3;
    v5 = *(a1 + 112);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      if (!*v5)
      {
        *v5 = *v2;
      }

      ++v5;
      ++v2;
      --v4;
    }

    while (v4);
  }

  sub_25637BCD8(a1, a2);
}

uint64_t sub_256369C7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 112);
  if (!*(v3 + 8 * a2))
  {
    *(v3 + 8 * a2) = a3;
  }

  *(*(result + 8) + 8 * a2) = a3;
  return result;
}

char *sub_256369C98(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2;
  if (v3)
  {
    v4 = v3 >> 3;
    v5 = *(a1 + 136);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      if (!*v5)
      {
        *v5 = *v2;
      }

      ++v5;
      ++v2;
      --v4;
    }

    while (v4);
  }

  return sub_25637BD60(a1, a2);
}

uint64_t sub_256369CE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 136);
  if (!*(v3 + 8 * a2))
  {
    *(v3 + 8 * a2) = a3;
  }

  *(*(result + 32) + 8 * a2) = a3;
  return result;
}

char *sub_256369CFC(uint64_t a1, uint64_t a2)
{
  result = (a1 + 112);
  if (result != a2)
  {
    return sub_25636A004(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  return result;
}

char *sub_256369D28(uint64_t a1, uint64_t a2)
{
  result = (a1 + 136);
  if (result != a2)
  {
    return sub_25636A004(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  return result;
}

void **sub_256369DB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 104);
  result = (v2 + 32);
  if ((v2 + 32) != a2)
  {
    if (*(v2 + 55) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_256330250(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_256330180(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      *(v2 + 48) = a2[2];
      *result = v4;
    }
  }

  return result;
}

void *sub_256369E08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[13];
  if (*(v2 + 55) < 0)
  {
    return sub_25632CB5C(a2, *(v2 + 32), *(v2 + 40));
  }

  v3 = *(v2 + 32);
  *(a2 + 16) = *(v2 + 48);
  *a2 = v3;
  return result;
}

uint64_t sub_256369E48(void *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *(a1[13] + 240);
  v4 = *(v3 + 24) | 1;
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  return v3;
}

uint64_t sub_256369EC4(uint64_t a1)
{
  *a1 = &unk_286855620;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      MEMORY[0x259C60ED0](v3, 0x1000C80451B5BE8);
    }

    MEMORY[0x259C60EF0](v2, 0x10A0C40A8DA58FELL);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_256369F54(uint64_t a1)
{
  *a1 = &unk_286855620;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      MEMORY[0x259C60ED0](v3, 0x1000C80451B5BE8);
    }

    MEMORY[0x259C60EF0](v2, 0x10A0C40A8DA58FELL);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x259C60EF0);
}

char *sub_25636A004(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_25632CE68();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t sub_25636A14C(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_286855640;
  *&__dst = "--bnns";
  DWORD2(__dst) = 0;
  v22 = 1;
  v24 = 0;
  v25 = "enable the use of BNNS";
  v26 = "--debug-constant";
  v27 = 0;
  v28[0] = 0;
  v29 = 0;
  v30 = "debugging for constant values";
  v31 = "--kcompile";
  v32 = 0;
  v33[0] = 1;
  v34 = 0;
  v35 = "enable LLVM compilation of kernels";
  v36 = "--load-constant-path";
  v37 = 2;
  memset(v38, 0, sizeof(v38));
  v39 = 2;
  v40 = "base path used for relative paths in load-constant ops";
  v41 = "--memory";
  v42 = 2;
  v43 = 0x636974617473;
  v44 = 6;
  v45 = 2;
  v46 = "method to allocate memory";
  sub_25636AEE8((a1 + 72), &__dst, 5uLL);
  if (v45 != -1)
  {
    (off_286855660[v45])(&p_dst, &v43);
  }

  v45 = -1;
  if (v39 != -1)
  {
    (off_286855660[v39])(&p_dst, v38);
  }

  v39 = -1;
  if (v34 != -1)
  {
    (off_286855660[v34])(&p_dst, v33);
  }

  v34 = -1;
  if (v29 != -1)
  {
    (off_286855660[v29])(&p_dst, v28);
  }

  v29 = -1;
  if (v24 != -1)
  {
    (off_286855660[v24])(&p_dst, &v22);
  }

  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 != v4)
  {
    v5 = v3 + 16;
    do
    {
      v6 = v5 - 16;
      v7 = *(v5 - 16);
      v8 = strlen(v7);
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_25632CBF8();
      }

      v9 = v8;
      if (v8 >= 0x17)
      {
        operator new();
      }

      v23 = v8;
      if (v8)
      {
        memmove(&__dst, v7, v8);
      }

      *(&__dst + v9) = 0;
      p_dst = &__dst;
      v10 = sub_25636B3C0(v2, &__dst);
      v11 = *(v10 + 16);
      v12 = *(v5 + 24);
      if (v11 == -1)
      {
        if (v12 != -1)
        {
LABEL_24:
          p_dst = (v10 + 5);
          (off_286855690[v12])(&p_dst);
        }
      }

      else
      {
        if (v12 != -1)
        {
          goto LABEL_24;
        }

        v13 = v10;
        (off_286855660[v11])(&p_dst, v10 + 5);
        *(v13 + 16) = -1;
      }

      if (v23 < 0)
      {
        operator delete(__dst);
      }

      v5 += 56;
    }

    while (v6 + 56 != v4);
  }

  v14 = getenv("__UNOWUD_RT");
  if (v14)
  {
    v15 = v14;
    v16 = strlen(v14);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v23 = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    *(&__dst + v17) = 0;
    sub_25637A2B0(a1, &__dst);
    if (v23 < 0)
    {
      operator delete(__dst);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25636A5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_25636B2AC((a9 + 72));
  sub_256344A9C(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_25636A63C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_286855660[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_25636A69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v6 == v7)
  {
    goto LABEL_28;
  }

  do
  {
    v8 = *v6;
    v9 = strlen(*v6);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v34) = v9;
    if (v9)
    {
      memmove(&__dst, v8, v9);
    }

    v11 = 0;
    *(&__dst + v10) = 0;
    v12 = SHIBYTE(v34);
    if (v34 >= 0)
    {
      v13 = HIBYTE(v34);
    }

    else
    {
      v13 = *(&__dst + 1);
    }

    v14 = *(a2 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 8);
    }

    if (v13 == v14)
    {
      if (v34 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v15 >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v11 = memcmp(p_dst, v17, v13) == 0;
      if ((v12 & 0x80000000) == 0)
      {
LABEL_15:
        if (v11)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    operator delete(__dst);
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_25:
    v6 += 56;
  }

  while (v6 != v7);
  v6 = v7;
LABEL_27:
  v3 = a3;
  v5 = a1;
  v7 = *(a1 + 80);
LABEL_28:
  if (v6 == v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (*(v3 + 23) >= 0)
    {
      v24 = v3;
    }

    else
    {
      v24 = *v3;
    }

    fprintf(*MEMORY[0x277D85DF8], "Unknown option %s=%s\n", v23, v24);
    return;
  }

  v18 = *(v6 + 8);
  if (v18 == 2)
  {
    *&__dst = a2;
    v29 = sub_25636B744((v5 + 8), a2);
    sub_25636B174(v29 + 5, (v29 + 5), v3);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  if (v18 == 1)
  {
    sub_25636BAF0(&__dst, v3, 8);
    v32 = 0;
    *(&__dst + *(__dst - 24) + 8) |= 1u;
    MEMORY[0x259C60D80](&__dst, &v32);
    v25 = v32;
    *&__dst = *MEMORY[0x277D82820];
    *(&__dst + *(__dst - 24)) = *(MEMORY[0x277D82820] + 24);
    v34 = MEMORY[0x277D82878] + 16;
    if (v39 < 0)
    {
      operator delete(__p);
    }

    v34 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v35);
    std::istream::~istream();
    MEMORY[0x259C60E90](v40);
    *&__dst = a2;
    v26 = sub_25636B744((v5 + 8), a2);
    v27 = v26;
    v28 = *(v26 + 16);
    if (v28 != -1)
    {
      if (v28 == 1)
      {
        v26[5] = v25;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

LABEL_59:
        sub_25632CB5C(&__dst, *a2, *(a2 + 8));
        goto LABEL_60;
      }

      (off_286855660[v28])(&__dst, v26 + 5);
    }

    v27[5] = v25;
    *(v27 + 16) = 1;
LABEL_55:
    if (*(a2 + 23) < 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v18)
  {
    goto LABEL_55;
  }

  sub_25636BAF0(&__dst, v3, 8);
  LOBYTE(v32) = 0;
  *(&__dst + *(__dst - 24) + 8) |= 1u;
  MEMORY[0x259C60D70](&__dst, &v32);
  v19 = v32;
  *&__dst = *MEMORY[0x277D82820];
  *(&__dst + *(__dst - 24)) = *(MEMORY[0x277D82820] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v35);
  std::istream::~istream();
  MEMORY[0x259C60E90](v40);
  *&__dst = a2;
  v20 = sub_25636B744((v5 + 8), a2);
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22 == -1)
  {
LABEL_58:
    *(v21 + 40) = v19;
    *(v21 + 16) = 0;
    if (*(a2 + 23) < 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v22)
  {
    (off_286855660[v22])(&__dst, v20 + 5);
    goto LABEL_58;
  }

  *(v20 + 40) = v19;
  if (*(a2 + 23) < 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  __dst = *a2;
  v34 = *(a2 + 16);
LABEL_60:
  if (*(v3 + 23) < 0)
  {
    sub_25632CB5C(&v35, *v3, *(v3 + 8));
  }

  else
  {
    v35 = *v3;
    v36 = *(v3 + 16);
  }

  v37 = 2;
  sub_25636BE8C((v5 + 8), &__dst);
  if (v37 != -1)
  {
    (off_286855660[v37])(&v32, &v35);
  }

  v37 = -1;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst);
  }
}

void sub_25636ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_25636BC74(va);
  _Unwind_Resume(a1);
}

void sub_25636ACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25636ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_25636B354(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25636AD10(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 == v4)
  {
    goto LABEL_28;
  }

  do
  {
    v6 = *v3;
    v7 = strlen(*v3);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v19 = v7;
    if (v7)
    {
      memmove(__dst, v6, v7);
    }

    v9 = 0;
    *(__dst + v8) = 0;
    v10 = v19;
    if ((v19 & 0x80u) == 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = __dst[1];
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if (v12 < 0)
    {
      v12 = a2[1];
    }

    if (v11 == v12)
    {
      if ((v19 & 0x80u) == 0)
      {
        v14 = __dst;
      }

      else
      {
        v14 = __dst[0];
      }

      if (v13 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      v9 = memcmp(v14, v15, v11) == 0;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_15:
        if (v9)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    operator delete(__dst[0]);
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_25:
    v3 += 56;
  }

  while (v3 != v4);
  v3 = v4;
LABEL_27:
  v4 = *(a1 + 80);
LABEL_28:
  if (v3 != v4)
  {
    return *(v3 + 8);
  }

  if (*(a2 + 23) >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  fprintf(*MEMORY[0x277D85DF8], "Unknown RT option key %s!\n", v17);
  return 0;
}

void sub_25636AEC0(uint64_t a1)
{
  v1 = sub_256345B6C(a1);

  j__free(v1);
}

void *sub_25636AEE8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x492492492492493)
    {
      operator new();
    }

    sub_25632CE68();
  }

  return result;
}

void sub_25636B04C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256345AB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25636B07C(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (!v4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_286855660[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 0;
  return result;
}

uint64_t sub_25636B0F0(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 24);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_286855660[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 1;
  return result;
}

void **sub_25636B174(void **result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 6);
  if (v3 != 2)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_25632CB5C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 24);
      if (v3 == -1)
      {
LABEL_11:
        *v6 = v11;
        *(v6 + 16) = v12;
        *(v6 + 24) = 2;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_11;
      }
    }

    result = (off_286855660[v3])(&v13, v6);
    goto LABEL_11;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_256330250(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_256330180(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

void **sub_25636B2AC(void **a1)
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
        v5 = *(v3 - 4);
        if (v5 != -1)
        {
          (off_286855660[v5])(&v7, v3 - 10);
        }

        *(v3 - 4) = -1;
        v3 -= 14;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_25636B354(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    (off_286855660[v2])(&v4, a1 + 24);
  }

  *(a1 + 48) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_25636B3C0(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25636B72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256344F64(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_25636B744(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25636BAD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256344F64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_25636BAF0(uint64_t *a1, __int128 *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_25636BD94((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_25636BC4C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x259C60E90](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_25636BC74(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x259C60E90](a1 + 120);
  return a1;
}

uint64_t sub_25636BD94(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C60E40](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_256330180((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_256349B58(a1);
  return a1;
}

void sub_25636BE64(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t **sub_25636BE8C(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    sub_25636C1E4();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25636C1CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256344F64(va);
  _Unwind_Resume(a1);
}

__n128 sub_25636C2F4(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_25636C314(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2868556D0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  v4 = sub_256379F80(0x1E0uLL);
  sub_2563633DC(v4, a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v4;
  return a1;
}

void sub_25636C384(_Unwind_Exception *a1)
{
  j__free(v2);
  nullsub_34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_25636C3A8(void *a1)
{
  *a1 = &unk_2868556D0;
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return nullsub_34(a1);
}

void sub_25636C470(void *a1)
{
  *a1 = &unk_2868556D0;
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = nullsub_34(a1);

  j__free(v4);
}

uint64_t sub_25636C54C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  v5 = v4[10];
  for (i = v4[11]; v5 != i; v5 += 80)
  {
    if (*(v5 + 40))
    {
      v7 = *(result + 16);
      operator new();
    }
  }

  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void sub_25636C608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25636C624(uint64_t a1, uint64_t a2)
{
  v4 = sub_2563787B8(a2);
  sub_25636C868(v16, *v4, v4[1] - *v4);
  sub_2563502EC(v16, &v14);
  if (!v14)
  {
    v10 = *(a1 + 16);
    operator new();
  }

  sub_2563638D4(*(a1 + 24), &v14);
  if (sub_25637978C(*(a1 + 16)))
  {
    v5 = sub_2563787C0(a2);
    v6 = (*(a1 + 24) + 152);
    if (v6 != v5)
    {
      sub_25636DE88(v6, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5));
    }

    sub_2563787C8(a2, v12);
    sub_25636E38C(*(a1 + 24) + 320, v12);
    v7 = __p;
    if (__p)
    {
      do
      {
        v9 = *v7;
        if (*(v7 + 39) < 0)
        {
          operator delete(v7[2]);
        }

        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }

    v8 = v12[0];
    v12[0] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  v11 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  std::istream::~istream();
  MEMORY[0x259C60E90](&v19);
  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v18);
}

void sub_25636C824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, std::locale a19)
{
  sub_25632EA30(&a17);
  sub_25636C9BC(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_25636C868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 16);
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C60E40](a1 + 24);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = a2;
  *(a1 + 48) = a2 + a3;
  *(a1 + 56) = 0;
  *(a1 + 144) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_286855788;
  *a1 = &unk_286855860;
  *(a1 + 96) = &unk_286855888;
  std::ios_base::init((a1 + 96), v6);
  *(a1 + 232) = 0;
  *(a1 + 240) = -1;
  *a1 = &unk_286855700;
  *(a1 + 16) = &unk_286855788;
  *(a1 + 96) = &unk_286855810;
  return a1;
}

std::locale *sub_25636C9BC(std::locale *a1)
{
  v2 = std::istream::~istream();
  MEMORY[0x259C60E90](v2 + 96);
  a1[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 3);
  return a1;
}

void sub_25636CA1C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_25634984C(&v9);
    sub_256349D6C(&v9, "Cannot load binary; it has already been loaded.", 47);
    v2 = *(a1 + 16);
    if ((v18 & 0x10) != 0)
    {
      v4 = v17;
      if (v17 < v14)
      {
        v17 = v14;
        v4 = v14;
      }

      v5 = &v13;
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v3 = 0;
        v8 = 0;
LABEL_18:
        *(&__p + v3) = 0;
        sub_25637969C(v2, 5, &__p);
        if (v8 < 0)
        {
          operator delete(__p);
        }

        v9 = *MEMORY[0x277D82828];
        *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
        v10 = MEMORY[0x277D82878] + 16;
        if (v16 < 0)
        {
          operator delete(v15);
        }

        v10 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v11);
        std::ostream::~ostream();
        MEMORY[0x259C60E90](&v19);
        return;
      }

      v5 = v12;
      v4 = v12[2];
    }

    v6 = *v5;
    v3 = v4 - *v5;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v8 = v4 - *v5;
    if (v3)
    {
      memmove(&__p, v6, v3);
    }

    goto LABEL_18;
  }

  sub_256364ACC(*(a1 + 24));
  if (sub_25637978C(*(a1 + 16)))
  {
    sub_2563646FC(*(a1 + 24));
    if (!*(*(a1 + 16) + 40))
    {
      sub_2563647EC(*(a1 + 24));
      *(a1 + 8) = 1;
    }
  }
}

void sub_25636CC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

void sub_25636CCCC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 24);

    sub_256364FDC(v2);
    return;
  }

  sub_25634984C(&v10);
  sub_256349D6C(&v10, "Cannot unload binary; it has not been loaded.", 45);
  v3 = *(a1 + 16);
  if ((v19 & 0x10) != 0)
  {
    v5 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v5 = v15;
    }

    v6 = &v14;
    goto LABEL_12;
  }

  if ((v19 & 8) != 0)
  {
    v6 = v13;
    v5 = v13[2];
LABEL_12:
    v7 = *v6;
    v4 = v5 - *v6;
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v5 - *v6;
    if (v4)
    {
      memmove(&__p, v7, v4);
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
LABEL_18:
  *(&__p + v4) = 0;
  sub_25637969C(v3, 5, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v12);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](&v20);
}

void sub_25636CF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

void sub_25636CF70(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 24);

    sub_256364870(v2);
    return;
  }

  sub_25634984C(&v10);
  sub_256349D6C(&v10, "Cannot validate binary; it hasn't been loaded.", 46);
  v3 = *(a1 + 16);
  if ((v19 & 0x10) != 0)
  {
    v5 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v5 = v15;
    }

    v6 = &v14;
    goto LABEL_12;
  }

  if ((v19 & 8) != 0)
  {
    v6 = v13;
    v5 = v13[2];
LABEL_12:
    v7 = *v6;
    v4 = v5 - *v6;
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v5 - *v6;
    if (v4)
    {
      memmove(&__p, v7, v4);
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
LABEL_18:
  *(&__p + v4) = 0;
  sub_25637969C(v3, 5, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v12);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](&v20);
}

void sub_25636D1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_25636D214(uint64_t a1)
{
  v1 = *(a1 + 24);
  v12 = 4;
  strcpy(__p, "main");
  sub_256364F14(v1, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v2 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = v14;
  if (!v14)
  {
    return 0;
  }

LABEL_3:
  if (v2->__shared_owners_ == -1)
  {
    goto LABEL_19;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v13;
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_19:
    v6 = 0;
    v8 = v14;
    if (!v14)
    {
      return v6;
    }

    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v14 && (v5 = std::__shared_weak_count::lock(v14)) != 0)
  {
    v6 = (*(v13 + 32) - *(v13 + 24)) >> 4;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v7);
      v8 = v14;
      if (!v14)
      {
        return v6;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = (MEMORY[0x20] - MEMORY[0x18]) >> 4;
  }

  v8 = v14;
  if (v14)
  {
LABEL_16:
    std::__shared_weak_count::__release_weak(v8);
  }

  return v6;
}

void sub_25636D38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25636D3A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 24);
  v13 = 4;
  strcpy(__p, "main");
  sub_256364F14(v5, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  v6 = std::__shared_weak_count::lock(v6);
  v7 = v14;
  if (!v6)
  {
    v7 = 0;
  }

  if (!v15 || (v15->__shared_owners_ != -1 ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
LABEL_13:
    *a3 = 0;
    a3[1] = 0;
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v10 = *(*(v7 + 24) + 16 * a2);
  v11 = *(*(v7 + 24) + 16 * a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = v10;
  if (v6)
  {
LABEL_14:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v9);
    }
  }

LABEL_19:
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

void sub_25636D4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25636D4DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v12 = 4;
  strcpy(__p, "main");
  sub_256364F14(v1, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v2 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = v14;
  if (!v14)
  {
    return 0;
  }

LABEL_3:
  if (v2->__shared_owners_ == -1)
  {
    goto LABEL_19;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v13;
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_19:
    v6 = 0;
    v8 = v14;
    if (!v14)
    {
      return v6;
    }

    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v14 && (v5 = std::__shared_weak_count::lock(v14)) != 0)
  {
    v6 = (*(v13 + 56) - *(v13 + 48)) >> 4;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v7);
      v8 = v14;
      if (!v14)
      {
        return v6;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = (MEMORY[0x38] - MEMORY[0x30]) >> 4;
  }

  v8 = v14;
  if (v14)
  {
LABEL_16:
    std::__shared_weak_count::__release_weak(v8);
  }

  return v6;
}

void sub_25636D654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25636D670(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 24);
  v13 = 4;
  strcpy(__p, "main");
  sub_256364F14(v5, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    v6 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  v6 = std::__shared_weak_count::lock(v6);
  v7 = v14;
  if (!v6)
  {
    v7 = 0;
  }

  if (!v15 || (v15->__shared_owners_ != -1 ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
LABEL_13:
    *a3 = 0;
    a3[1] = 0;
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v10 = *(*(v7 + 48) + 16 * a2);
  v11 = *(*(v7 + 48) + 16 * a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = v10;
  if (v6)
  {
LABEL_14:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v9);
    }
  }

LABEL_19:
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

void sub_25636D788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25636D7A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v9 = 4;
  strcpy(__p, "main");
  sub_256364F14(v2, __p, &v10);
  v12 = 0;
  v13 = 0;
  if (!v11)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v11);
  v13 = v3;
  if (!v3)
  {
    v4 = 0;
    v5 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = v10;
  v12 = v10;
  v5 = v11;
  if (v11)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_8:
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  v7 = (*(v4 + 80) - *(v4 + 72)) >> 4;
  while (v6 < v7 && sub_25637978C(*(a1 + 16)))
  {
    v6 = sub_256367228(*(*(a1 + 24) + 72), *(a1 + 24), v4, v6);
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_25636D8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25636D914(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 24);

    sub_256365314(v2);
    return;
  }

  sub_25634984C(&v10);
  sub_256349D6C(&v10, "Cannot reshape binary; it has not been loaded.", 46);
  v3 = *(a1 + 16);
  if ((v19 & 0x10) != 0)
  {
    v5 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v5 = v15;
    }

    v6 = &v14;
    goto LABEL_12;
  }

  if ((v19 & 8) != 0)
  {
    v6 = v13;
    v5 = v13[2];
LABEL_12:
    v7 = *v6;
    v4 = v5 - *v6;
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v9 = v5 - *v6;
    if (v4)
    {
      memmove(&__p, v7, v4);
    }

    goto LABEL_18;
  }

  v4 = 0;
  v9 = 0;
LABEL_18:
  *(&__p + v4) = 0;
  sub_25637969C(v3, 5, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v12);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](&v20);
}

void sub_25636DB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

void sub_25636DBD8(std::locale *a1)
{
  v2 = std::istream::~istream();
  MEMORY[0x259C60E90](v2 + 96);
  a1[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(a1 + 3);

  JUMPOUT(0x259C60EF0);
}

void sub_25636DC58(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C60E90](&v1[12]);
  v1[2].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(v1 + 3);
}

void sub_25636DCD8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C60E90](&v1[12]);
  v1[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 3);

  JUMPOUT(0x259C60EF0);
}

void sub_25636DD70(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C60E90](&v1[12]);
  v1[2].__locale_ = (MEMORY[0x277D82868] + 16);

  std::locale::~locale(v1 + 3);
}

void sub_25636DDF0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::istream::~istream();
  MEMORY[0x259C60E90](&v1[12]);
  v1[2].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 3);

  JUMPOUT(0x259C60EF0);
}

void sub_25636DE88(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_25632CE68();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_25636E254(v8, *v5, v5[1], v5[1] - *v5);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_25636E254(v8, *v18, v18[1], v18[1] - *v18);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_25636E0D8(a1, (v5 + v16), a3, v15);
}

void *sub_25636E0D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          v7 = v6 - *v5;
          operator new();
        }

        sub_25632CE68();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_25636E1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_25636E1E4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_25636E1E4(uint64_t a1)
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

char *sub_25636E254(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_25632CE68();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v14 = a3 - a2;
    if (v14)
    {
      v15 = result;
      memmove(result, a2, v14);
      result = v15;
    }

    v13 = &result[v14];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    v13 = &v9[v12];
  }

  a1[1] = v13;
  return result;
}

void sub_25636E38C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v16 = *v4;
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }

        operator delete(v4);
        v4 = v16;
      }

      while (v16);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v11 = a2[2];
  v10 = a2 + 2;
  v9 = v11;
  v12 = *(v10 - 1);
  *(a1 + 16) = v11;
  *(a1 + 8) = v12;
  *(v10 - 1) = 0;
  v13 = v10[1];
  *(a1 + 24) = v13;
  *(a1 + 32) = *(v10 + 4);
  if (v13)
  {
    v14 = *(v9 + 8);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
    *v10 = 0;
    v10[1] = 0;
  }
}

void sub_25636E494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 2)
  {
    sub_25632C5AC(a2, v17);
    v14 = 4;
    strcpy(__p, "name");
    v19 = __p;
    v5 = sub_256330D58(v17, __p);
    if (*(v5 + 16) != 2)
    {
      sub_256330378();
    }

    if (*(v5 + 63) < 0)
    {
      sub_25632CB5C(v15, v5[5], v5[6]);
    }

    else
    {
      *v15 = *(v5 + 5);
      v16 = v5[7];
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = 4;
    strcpy(__p, "slot");
    v19 = __p;
    v6 = sub_256330D58(v17, __p);
    if (*(v6 + 16))
    {
      sub_256330378();
    }

    v7 = v6[5];
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = (*(a3 + 280) - *(a3 + 272)) >> 4;
    if (v7 + 1 > v8)
    {
      sub_25636E718(a3 + 272, v7 - v8 + 1);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
      v9 = v18;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = v18;
      if (!v18)
      {
LABEL_23:
        v12 = v17[0];
        v17[0] = 0;
        if (v12)
        {
          operator delete(v12);
        }

        return;
      }
    }

    do
    {
      v10 = *v9;
      v11 = *(v9 + 16);
      if (v11 != -1)
      {
        (off_2868558C0[v11])(v15, v9 + 5);
      }

      *(v9 + 16) = -1;
      if (*(v9 + 39) < 0)
      {
        operator delete(v9[2]);
      }

      operator delete(v9);
      v9 = v10;
    }

    while (v10);
    goto LABEL_23;
  }
}

void sub_25636E698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_25632D0E0(&a22);
  _Unwind_Resume(a1);
}

void sub_25636E6F0()
{
  v0 = nullsub_34();

  j__free(v0);
}

void sub_25636E718(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_25632CE68();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
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

uint64_t sub_25636E86C(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v12[0] = &unk_286855360;
  v12[1] = sub_25636EC84;
  v13 = v12;
  sub_256352F58(a1, 0, 0, 6, 0, 0, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  v10[0] = &unk_286855360;
  v10[1] = sub_25636F63C;
  v11 = v10;
  sub_256352F58(a1, 0, 0, 9, 0, 0, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v8[0] = &unk_286855360;
  v8[1] = sub_25636FB80;
  v9 = v8;
  sub_256352F58(a1, 0, 0, 7, 0, 0, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  v6[0] = &unk_286855360;
  v6[1] = sub_25636FE1C;
  v7 = v6;
  sub_256352F58(a1, 0, 0, 10, 0, 0, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  v4[0] = &unk_286855360;
  v4[1] = sub_25636FEFC;
  v5 = v4;
  sub_256352F58(a1, 0, 0, 8, 0, 0, v4);
  result = v5;
  if (v5 == v4)
  {
    result = (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    result = (*(*v5 + 40))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25636EC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25636EC84(void **a1, uint64_t a2, uint64_t a3, void *a4, void **a5)
{
  v76[19] = *MEMORY[0x277D85DE8];
  HIBYTE(v64) = 4;
  strcpy(__p, "filt");
  sub_256368D5C(a4, __p, in);
  if (v68)
  {
    sub_256330378();
  }

  v10 = in[0];
  v68 = -1;
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a3 + 224);
  HIBYTE(v64) = 10;
  strcpy(__p, "batch_size");
  sub_256368D5C(a4, __p, in);
  if (v68)
  {
    sub_256330378();
  }

  v12 = in[0];
  v68 = -1;
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v64) = 4;
  strcpy(__p, "kind");
  sub_256368D5C(a4, __p, in);
  if (v68 != 2)
  {
    sub_256330378();
  }

  *v61 = *in;
  locale = v67.__locale_;
  in[1] = 0;
  v67.__locale_ = 0;
  in[0] = 0;
  v68 = -1;
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
    v13 = HIBYTE(locale);
    if ((HIBYTE(locale) & 0x80) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = HIBYTE(locale);
    if ((HIBYTE(locale) & 0x80) == 0)
    {
LABEL_10:
      if (v13 != 10)
      {
        if (v13 != 15 || (v61[0] == 0x73616364616F7242 ? (v14 = *(v61 + 7) == 0x6C754D74614D7473) : (v14 = 0), !v14))
        {
LABEL_33:
          v27 = *(v11 + 8 * v10);
          v28 = (*(***a5 + 176))(**a5);
          v29 = (*(***a5 + 120))(**a5);
          v30 = (*(***a1 + 168))(**a1);
          v31 = (*(***a1 + 120))(**a1);
          v22 = BNNSFilterApplyBatch(v27, v12, v28, v29, v30, v31);
          goto LABEL_34;
        }

LABEL_26:
        filter = *(v11 + 8 * v10);
        v16 = (*(***a5 + 176))(**a5);
        v17 = (*(***a5 + 120))(**a5);
        v18 = (*(*(*a5)[1] + 176))((*a5)[1]);
        v19 = (*(*(*a5)[1] + 120))((*a5)[1]);
        v20 = (*(***a1 + 168))(**a1);
        v21 = (*(***a1 + 120))(**a1);
        v22 = BNNSFilterApplyTwoInputBatch(filter, v12, v16, v17, v18, v19, v20, v21);
        goto LABEL_34;
      }

      v23 = v61;
      goto LABEL_29;
    }
  }

  if (v61[1] != 10)
  {
    if (v61[1] != 15)
    {
      goto LABEL_33;
    }

    if (*v61[0] != 0x73616364616F7242 || *(v61[0] + 7) != 0x6C754D74614D7473)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v23 = v61[0];
LABEL_29:
  v24 = *v23;
  v25 = *(v23 + 4);
  if (v24 != 0x74656D6874697241 || v25 != 25449)
  {
    goto LABEL_33;
  }

  in[0] = 0;
  in[1] = 0;
  v67.__locale_ = 0;
  __p[0] = 0;
  __p[1] = 0;
  v64 = 0;
  v50 = *a5;
  if (a5[1] == *a5)
  {
    v52 = 0;
  }

  else
  {
    v51 = 0;
    do
    {
      in[v51] = (*(**(v50 + 8 * v51) + 176))(*(v50 + 8 * v51));
      __p[v51] = (*(*(*a5)[v51] + 120))((*a5)[v51]);
      ++v51;
      v50 = *a5;
      v52 = a5[1] - *a5;
    }

    while (v51 < v52);
  }

  v53 = *(v11 + 8 * v10);
  v54 = (*(***a1 + 168))(**a1);
  v55 = (*(***a1 + 120))(**a1);
  v22 = BNNSArithmeticFilterApplyBatch(v53, v12, v52, in, __p, v54, v55);
LABEL_34:
  v32 = v22;
  if (v22)
  {
    sub_25634984C(in);
    v58 = 4;
    strcpy(v57, "name");
    sub_256368D5C(a4, v57, __p);
    if (v65 != 2)
    {
      sub_256330378();
    }

    *v59 = *__p;
    v60 = v64;
    __p[1] = 0;
    v64 = 0;
    __p[0] = 0;
    v65 = -1;
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (SHIBYTE(locale) >= 0)
    {
      v33 = v61;
    }

    else
    {
      v33 = v61[0];
    }

    if (SHIBYTE(locale) >= 0)
    {
      v34 = HIBYTE(locale);
    }

    else
    {
      v34 = v61[1];
    }

    v35 = sub_256349D6C(in, v33, v34);
    v36 = sub_256349D6C(v35, " '", 2);
    if (v60 >= 0)
    {
      v37 = v59;
    }

    else
    {
      v37 = v59[0];
    }

    if (v60 >= 0)
    {
      v38 = HIBYTE(v60);
    }

    else
    {
      v38 = v59[1];
    }

    v39 = sub_256349D6C(v36, v37, v38);
    v40 = sub_256349D6C(v39, "' failed (code ", 15);
    v41 = MEMORY[0x259C60DD0](v40, v32);
    sub_256349D6C(v41, ").", 2);
    v42 = *(a3 + 32);
    if ((v75 & 0x10) != 0)
    {
      v45 = v74;
      if (v74 < v71)
      {
        v74 = v71;
        v45 = v71;
      }

      v46 = &v70;
    }

    else
    {
      if ((v75 & 8) == 0)
      {
        v43 = 0;
        HIBYTE(v64) = 0;
        goto LABEL_65;
      }

      v46 = &v68;
      v45 = v69;
    }

    v47 = *v46;
    v43 = v45 - *v46;
    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v43 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v64) = v45 - *v46;
    if (v43)
    {
      memmove(__p, v47, v43);
    }

LABEL_65:
    *(__p + v43) = 0;
    sub_25637969C(v42, 2, __p);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v60) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(v59[0]);
LABEL_67:
    in[0] = *MEMORY[0x277D82828];
    *(in + *(in[0] - 3)) = *(MEMORY[0x277D82828] + 24);
    in[1] = (MEMORY[0x277D82878] + 16);
    if (v73 < 0)
    {
      operator delete(v72);
    }

    in[1] = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(&v67);
    std::ostream::~ostream();
    MEMORY[0x259C60E90](v76);
    v44 = 0;
    if (SHIBYTE(locale) < 0)
    {
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v44 = a2 + 1;
  if (SHIBYTE(locale) < 0)
  {
LABEL_70:
    operator delete(v61[0]);
  }

LABEL_71:
  v48 = *MEMORY[0x277D85DE8];
  return v44;
}

void sub_25636F580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25636F63C(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  HIBYTE(v42) = 6;
  strcpy(__p, "cindex");
  sub_256368D5C(a4, __p, v43);
  if (v45)
  {
    sub_256330378();
  }

  v10 = v43[0];
  v45 = -1;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (*(a3 + 272) + 16 * v10);
  v12 = *v11;
  v13 = v11[1];
  v40 = 4;
  strcpy(v39, "func");
  sub_256368D5C(a4, v39, v43);
  if (v45 != 2)
  {
    sub_256330378();
  }

  *__p = *v43;
  v42 = v44;
  v43[1] = 0;
  v44 = 0;
  v43[0] = 0;
  v45 = -1;
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v15 = *a5;
  v14 = a5[1];
  v16 = a1[1] - *a1;
  v17 = (v14 - *a5) >> 3;
  if ((*(***a1 + 128))(**a1) < 16 * (v17 + v16 - 1))
  {
    v18 = *(a3 + 32);
    operator new();
  }

  v37 = a2;
  v38 = a3;
  v19 = (*(***a1 + 168))(**a1);
  v20 = v19;
  if (v16 != 1)
  {
    v21 = (v19 + 8);
    for (i = 1; i != v16; ++i)
    {
      *(v21 - 1) = sub_25637BC84((*a1)[i]);
      *v21 = *(*(*(*a1)[i] + 40))((*a1)[i]);
      v21 += 2;
    }
  }

  if (v14 != v15)
  {
    v23 = 0;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v24 = (v20 + 16 * v16 - 8);
    do
    {
      *(v24 - 1) = sub_25637BC84(*(*a5 + 8 * v23));
      *v24 = *(*(**(*a5 + 8 * v23) + 40))(*(*a5 + 8 * v23));
      v24 += 2;
      ++v23;
    }

    while (v17 != v23);
  }

  if ((BNNSGraphContextSetDynamicShapes_v2() & 0x80000000) != 0)
  {
    v35 = *(v38 + 32);
    operator new();
  }

  v25 = *a1;
  v26 = a1[1];
  if (*a1 != v26)
  {
    do
    {
      v27 = *v25;
      v28 = (*(**v25 + 48))(*v25);
      v29 = (*(*v27 + 40))(v27);
      v30 = *v28;
      v31 = (v28[1] - *v28) >> 3;
      *(*v28 + 8 * (v31 - 1)) = 1;
      if (v31 != 1)
      {
        v32 = v30 - 16;
        v33 = *v29 - 8;
        v34 = 1;
        do
        {
          v34 *= *(v33 + 8 * v31);
          *(v32 + 8 * v31--) = v34;
        }

        while (v31 != 1);
      }

      ++v25;
    }

    while (v25 != v26);
    v25 = *a1;
    v26 = a1[1];
  }

  while (v25 != v26)
  {
    (*(**v25++ + 136))();
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  return v37 + 1;
}

void sub_25636FAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25636FB80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  HIBYTE(v19) = 6;
  strcpy(__p, "cindex");
  sub_256368D5C(a4, __p, v20);
  if (v22)
  {
    sub_256330378();
  }

  v7 = v20[0];
  v22 = -1;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = 5;
  strcpy(v16, "graph");
  sub_256368D5C(a4, v16, v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *__p = *v20;
  v19 = v21;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  v22 = -1;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  sub_25636265C(a3, __p, v20);
  if (v20[1])
  {
    v8 = std::__shared_weak_count::lock(v20[1]);
    v16[1] = v8;
    if (v8)
    {
      v9 = v8;
      v10 = v20[0];
      v16[0] = v20[0];
      if (v20[0])
      {
        (v20[0]->__vftable[4].~__shared_weak_count_0)(v20[0]);
        (v10->__vftable[3].~__shared_weak_count_0)(v10);
        v11 = BNNSGraphContextMake();
        v12 = (*(a3 + 272) + 16 * v7);
        *v12 = v11;
        v12[1] = v13;
        v14 = a2 + 1;
      }

      else
      {
        v14 = 0;
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      v14 = 0;
    }

    if (v20[1])
    {
      std::__shared_weak_count::__release_weak(v20[1]);
    }
  }

  else
  {
    v14 = 0;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

void sub_25636FDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, std::__shared_weak_count *a24)
{
  sub_25632EA30(&a10);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25636FE1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = 6;
  strcpy(__p, "cindex");
  sub_256368D5C(a4, __p, v15);
  if (v16)
  {
    sub_256330378();
  }

  v6 = v15[0];
  v16 = -1;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = 16 * v6;
  v8 = (*(a3 + 272) + v7);
  v9 = *v8;
  v10 = v8[1];
  BNNSGraphContextDestroy_v2();
  v11 = (*(a3 + 272) + v7);
  *v11 = 0;
  v11[1] = 0;
  return a2 + 1;
}

void sub_25636FED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_2563300F8(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25636FEFC(void **a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v55 = 6;
  strcpy(__dst, "cindex");
  sub_256368D5C(a4, __dst, &v42);
  if (v45)
  {
    sub_256330378();
  }

  v10 = v42;
  v45 = -1;
  if (v55 < 0)
  {
    operator delete(__dst[0]);
  }

  v11 = (a3[34] + 16 * v10);
  v12 = *v11;
  v13 = v11[1];
  v55 = 14;
  strcpy(__dst, "workspace_size");
  sub_256368D5C(a4, __dst, &v42);
  if (v45)
  {
    sub_256330378();
  }

  v14 = v42;
  v45 = -1;
  if (v55 < 0)
  {
    operator delete(__dst[0]);
  }

  v41 = a2;
  if (v14 >= 1)
  {
    (*(***a1 + 168))(**a1);
  }

  v15 = v14 != 0;
  v16 = *a1;
  if (v15 >= a1[1] - *a1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(v16 + 8 * v15 + 8 * v18);
      v20 = (*(*v19 + 168))(v19);
      v21 = (*(*v19 + 128))(v19);
      ++v18;
      v22 = (a3[31] + v17);
      *v22 = v20;
      v22[1] = v21;
      v16 = *a1;
      v17 += 16;
    }

    while (v15 + v18 < a1[1] - *a1);
  }

  v23 = *a5;
  if ((a5[1] - *a5) >= 9)
  {
    v24 = 16 * v18;
    v25 = 1;
    do
    {
      v26 = *(v23 + 8 * v25);
      v27 = (*(*v26 + 176))(v26);
      v28 = (*(*v26 + 128))(v26);
      v29 = (a3[31] + v24);
      *v29 = v27;
      v29[1] = v28;
      ++v25;
      v23 = *a5;
      v24 += 16;
    }

    while (v25 < (a5[1] - *a5) >> 3);
  }

  v30 = a3[32] - a3[31];
  v31 = BNNSGraphContextExecute_v2();
  if (!v31)
  {
    return v41 + 1;
  }

  v32 = v31;
  sub_25634984C(&v42);
  v33 = sub_256349D6C(&v42, "BNNSGraphExecute failed (code ", 30);
  v34 = MEMORY[0x259C60DD0](v33, v32);
  sub_256349D6C(v34, ")", 1);
  v35 = a3[4];
  if ((v52 & 0x10) != 0)
  {
    v38 = v51;
    if (v51 < v48)
    {
      v51 = v48;
      v38 = v48;
    }

    v39 = &v47;
    goto LABEL_26;
  }

  if ((v52 & 8) != 0)
  {
    v39 = &v45;
    v38 = v46;
LABEL_26:
    v40 = *v39;
    v36 = v38 - *v39;
    if (v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v36 >= 0x17)
    {
      operator new();
    }

    v55 = v38 - *v39;
    if (v36)
    {
      memmove(__dst, v40, v36);
    }

    goto LABEL_32;
  }

  v36 = 0;
  v55 = 0;
LABEL_32:
  *(__dst + v36) = 0;
  sub_25637969C(v35, 2, __dst);
  if (v55 < 0)
  {
    operator delete(__dst[0]);
  }

  v42 = *MEMORY[0x277D82828];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x277D82828] + 24);
  v43 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(__p);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v44);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](&v53);
  return 0;
}

void sub_256370400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (*(v6 - 89) < 0)
  {
    operator delete(*(v6 - 112));
  }

  sub_256349A38(va);
  _Unwind_Resume(a1);
}

void sub_256370464(uint64_t a1, uint64_t a2)
{
  v64[2] = *MEMORY[0x277D85DE8];
  BYTE7(v45) = 4;
  strcpy(__p, "name");
  sub_256368D5C((a1 + 8), __p, &v49);
  if (DWORD2(v50) != 2)
  {
    sub_256330378();
  }

  v4 = v49;
  v5 = SBYTE7(v50);
  *&v50 = 0;
  v49 = 0uLL;
  DWORD2(v50) = -1;
  if (SBYTE7(v45) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v45) = 4;
  strcpy(__p, "kind");
  sub_256368D5C((a1 + 8), __p, &v49);
  if (DWORD2(v50) != 2)
  {
    sub_256330378();
  }

  v47 = v49;
  v48 = v50;
  *&v50 = 0;
  v49 = 0uLL;
  DWORD2(v50) = -1;
  if (SBYTE7(v45) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v50) = 10;
  strcpy(&v49, "Activation");
  *(&v50 + 1) = &unk_286855920;
  *v51 = sub_256370F48;
  v53[23] = 15;
  v52 = &v50 + 8;
  strcpy(v53, "BroadcastMatMul");
  v54[0] = &unk_286855920;
  v54[1] = sub_2563715AC;
  v55[23] = 11;
  v54[3] = v54;
  strcpy(v55, "Convolution");
  v56[0] = &unk_286855920;
  v56[1] = sub_25637202C;
  v57[23] = 14;
  v56[3] = v56;
  strcpy(v57, "FullyConnected");
  v58[0] = &unk_286855920;
  v58[1] = sub_256372D9C;
  v58[3] = v58;
  v59[23] = 7;
  strcpy(v59, "Permute");
  v60[0] = &unk_286855920;
  v60[1] = sub_2563735A0;
  v62 = 10;
  v60[3] = v60;
  strcpy(v61, "Arithmetic");
  v63[0] = &unk_286855920;
  v63[1] = sub_256373A30;
  v64[0] = v63;
  *__p = 0u;
  v45 = 0u;
  v46 = 1065353216;
  sub_256375AFC(__p, &v49);
  sub_256375AFC(__p, v53);
  sub_256375AFC(__p, v55);
  sub_256375AFC(__p, v57);
  sub_256375AFC(__p, v59);
  sub_256375AFC(__p, v61);
  for (i = 0; i != -42; i -= 7)
  {
    v7 = v64[i];
    if (&v63[i] == v7)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    if (*(&v62 + i * 8) < 0)
    {
      operator delete(*&v61[i * 8]);
    }
  }

  v8 = sub_2563760B0(__p, &v47);
  if (!v8)
  {
    *(&v41.__r_.__value_.__s + 23) = 4;
    strcpy(&v41, "name");
    v39 = v4;
    sub_256368D5C((a1 + 8), &v41, &v49);
    if (DWORD2(v50) != 2)
    {
      sub_256330378();
    }

    *v42 = v49;
    v43 = v50;
    *&v50 = 0;
    v49 = 0uLL;
    DWORD2(v50) = -1;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v10 = SHIBYTE(v43);
    if (v43 >= 0)
    {
      v11 = HIBYTE(v43);
    }

    else
    {
      v11 = v42[1];
    }

    if (v11 + 23 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    v12 = *(a2 + 32);
    if (v11 < 0xFFFFFFFFFFFFFFE9)
    {
      operator new();
    }

    memset(&v40, 0, sizeof(v40));
    *(&v40.__r_.__value_.__s + 23) = v11 + 23;
    if (v43 >= 0)
    {
      v15 = v42;
    }

    else
    {
      v15 = v42[0];
    }

    memmove(&v40, v15, v11);
    strcpy(&v40 + v11, ": unknown filter type '");
    if (v48 >= 0)
    {
      v16 = &v47;
    }

    else
    {
      v16 = v47;
    }

    if (v48 >= 0)
    {
      v17 = HIBYTE(v48);
    }

    else
    {
      v17 = *(&v47 + 1);
    }

    v18 = std::string::append(&v40, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v41, "'.", 2uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v50 = *(&v20->__r_.__value_.__l + 2);
    v49 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = sub_25637969C(v12, 5, &v49);
    if (SBYTE7(v50) < 0)
    {
      operator delete(v49);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_41:
        if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_53;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((v10 & 0x80000000) == 0)
      {
LABEL_43:
        v23 = 0;
        v4 = v39;
        goto LABEL_72;
      }

LABEL_54:
      operator delete(v42[0]);
      goto LABEL_43;
    }

LABEL_53:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

  v49 = 0u;
  v50 = 0u;
  v51[0] = *(a1 + 40);
  prime = *(a1 + 16);
  if (prime != 1)
  {
    if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(*(a1 + 16));
      v13 = *(&v49 + 8);
      v14 = prime >= *(&v49 + 1);
      if (prime > *(&v49 + 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
      if (prime)
      {
        goto LABEL_59;
      }
    }

    if (v14)
    {
      goto LABEL_60;
    }

    v24 = vcvtps_u32_f32(*(&v50 + 1) / v51[0]);
    if (*&v13 < 3uLL || (v25 = vcnt_s8(v13), v25.i16[0] = vaddlv_u8(v25), v25.u32[0] > 1uLL))
    {
      v24 = std::__next_prime(v24);
    }

    else
    {
      v26 = 1 << -__clz(v24 - 1);
      if (v24 >= 2)
      {
        v24 = v26;
      }
    }

    if (prime <= v24)
    {
      prime = v24;
    }

    if (prime >= *&v13)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  prime = 2;
LABEL_59:
  sub_25632DA8C(&v49, prime);
LABEL_60:
  for (j = *(a1 + 24); j; j = *j)
  {
    sub_25632EE74(&v49, (j + 2));
  }

  v28 = v8[8];
  if (!v28)
  {
    sub_25633FB08();
  }

  v23 = (*(*v28 + 48))(v28, &v49, a2);
  v29 = v50;
  if (v50)
  {
    do
    {
      v30 = *v29;
      v31 = *(v29 + 16);
      if (v31 != -1)
      {
        (off_2868558E8[v31])(v42, v29 + 5);
      }

      *(v29 + 16) = -1;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v32 = v49;
  *&v49 = 0;
  if (v32)
  {
    operator delete(v32);
  }

LABEL_72:
  v33 = v45;
  if (v45)
  {
    while (1)
    {
      v37 = *v33;
      v38 = v33[8];
      if (v38 != (v33 + 5))
      {
        break;
      }

      (*(*v38 + 32))(v38, v22);
      if (*(v33 + 39) < 0)
      {
        goto LABEL_90;
      }

LABEL_83:
      operator delete(v33);
      v33 = v37;
      if (!v37)
      {
        goto LABEL_73;
      }
    }

    if (v38)
    {
      (*(*v38 + 40))(v38, v22);
    }

    if ((*(v33 + 39) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_90:
    operator delete(v33[2]);
    goto LABEL_83;
  }

LABEL_73:
  v34 = __p[0];
  __p[0] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  BYTE7(v45) = 4;
  strcpy(__p, "slot");
  sub_256368D5C((a1 + 8), __p, &v49);
  if (DWORD2(v50))
  {
    sub_256330378();
  }

  v35 = v49;
  DWORD2(v50) = -1;
  if (SBYTE7(v45) < 0)
  {
    operator delete(__p[0]);
  }

  *(*(a2 + 224) + 8 * v35) = v23;
  if (v5 < 0)
  {
    operator delete(v4);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_256370DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v49 & 0x80000000) == 0)
    {
LABEL_10:
      sub_256375FDC(&a27);
      if (a41 < 0)
      {
        operator delete(a36);
      }

      if (v48 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a23);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a10);
  if ((v49 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_256370F48(void *a1, uint64_t a2)
{
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  HIBYTE(v27) = 6;
  strcpy(__p, "inputs");
  sub_256368D5C(a1, __p, v34);
  sub_256374684(v34, a2, v36);
  if (v35 != -1)
  {
    (off_2868558E8[v35])(v33, v34);
  }

  v35 = -1;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v27) = 7;
  strcpy(__p, "outputs");
  sub_256368D5C(a1, __p, v31);
  sub_256374684(v31, a2, v33);
  if (v32 != -1)
  {
    (off_2868558E8[v32])(v29, v31);
  }

  v32 = -1;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v36[1] - v36[0]) == 8)
  {
    if ((v33[1] - v33[0]) == 8)
    {
      v4 = sub_256369E34(*v36[0]);
      v5 = *v4;
      v6 = v4[2];
      v38 = v4[1];
      v39 = v6;
      v37 = v5;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[6];
      v42 = v4[5];
      v43 = v9;
      v40 = v7;
      v41 = v8;
      v10 = v4[7];
      v11 = v4[8];
      v12 = v4[10];
      v46 = v4[9];
      v47 = v12;
      v44 = v10;
      v45 = v11;
      v13 = sub_256369E34(*v33[0]);
      v14 = *v13;
      v15 = v13[2];
      v49 = v13[1];
      v50 = v15;
      v48 = v14;
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[6];
      v53 = v13[5];
      v54 = v18;
      v51 = v16;
      v52 = v17;
      v19 = v13[7];
      v20 = v13[8];
      v21 = v13[10];
      v57 = v13[9];
      v58 = v21;
      v55 = v19;
      v56 = v20;
      v25 = 3;
      LODWORD(v24) = 7627617;
      sub_256368D5C(a1, &v24, __p);
      if (v28 == 2)
      {
        *v29 = *__p;
        v30 = v27;
        __p[1] = 0;
        v27 = 0;
        __p[0] = 0;
        v28 = -1;
        if (v25 < 0)
        {
          operator delete(v24);
        }

        sub_256374838(v29);
      }

      sub_256330378();
    }

    v23 = *(a2 + 32);
    operator new();
  }

  v22 = *(a2 + 32);
  operator new();
}

void sub_256371488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a41)
  {
    operator delete(a41);
  }

  _Unwind_Resume(exception_object);
}

void sub_2563715AC(void *a1, uint64_t a2)
{
  bzero(&layer_params, 0x220uLL);
  BYTE7(v69) = 6;
  strcpy(__p, "inputs");
  sub_256368D5C(a1, __p, v73);
  sub_256374684(v73, a2, v75);
  if (v74 != -1)
  {
    (off_2868558E8[v74])(v66, v73);
  }

  v74 = -1;
  if (SBYTE7(v69) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v69) = 7;
  strcpy(__p, "outputs");
  sub_256368D5C(a1, __p, v70);
  sub_256374684(v70, a2, v72);
  if (v71 != -1)
  {
    (off_2868558E8[v71])(v66, v70);
  }

  v71 = -1;
  if (SBYTE7(v69) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v75[1] - v75[0]) == 16)
  {
    if ((v72[1] - v72[0]) == 8)
    {
      v4 = sub_256369E34(*v75[0]);
      v5 = *v4;
      v6 = v4[2];
      *&layer_params.iA_desc.size[1] = v4[1];
      *&layer_params.iA_desc.size[3] = v6;
      *&layer_params.iA_desc.flags = v5;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[6];
      *&layer_params.iA_desc.stride[1] = v4[5];
      *&layer_params.iA_desc.stride[3] = v9;
      *&layer_params.iA_desc.size[5] = v7;
      *&layer_params.iA_desc.size[7] = v8;
      v10 = v4[7];
      v11 = v4[8];
      v12 = v4[10];
      *&layer_params.iA_desc.data_type = v4[9];
      *&layer_params.iA_desc.table_data_type = v12;
      *&layer_params.iA_desc.stride[5] = v10;
      *&layer_params.iA_desc.stride[7] = v11;
      v13 = sub_25637BC84(*v75[0]);
      if ((v13 - 1) < 5)
      {
        layer_params.iA_desc.layout = dword_25637D7D8[v13 - 1];
      }

      v14 = sub_25637BC84(*v75[0]);
      if (v14)
      {
        v15 = (&layer_params.iA_desc + 8 * v14);
        if (v15 > layer_params.iA_desc.size)
        {
          v16 = &layer_params.iA_desc.size[1];
          do
          {
            v17 = *(v16 - 1);
            *(v16 - 1) = *v15;
            *v15-- = v17;
            v18 = v16++ >= v15;
          }

          while (!v18);
        }
      }

      v19 = sub_25637BC84(*v75[0]);
      v20 = &layer_params.iA_desc.size[v19 + 7];
      if (v19)
      {
        v21 = v20 > layer_params.iA_desc.stride;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        v22 = &layer_params.iA_desc.stride[1];
        do
        {
          v23 = *(v22 - 1);
          *(v22 - 1) = *v20;
          *v20-- = v23;
          v18 = v22++ >= v20;
        }

        while (!v18);
      }

      v24 = sub_256369E34(*(v75[0] + 1));
      v25 = *v24;
      v26 = v24[2];
      *&layer_params.iB_desc.size[1] = v24[1];
      *&layer_params.iB_desc.size[3] = v26;
      *&layer_params.iB_desc.flags = v25;
      v27 = v24[3];
      v28 = v24[4];
      v29 = v24[6];
      *&layer_params.iB_desc.stride[1] = v24[5];
      *&layer_params.iB_desc.stride[3] = v29;
      *&layer_params.iB_desc.size[5] = v27;
      *&layer_params.iB_desc.size[7] = v28;
      v30 = v24[7];
      v31 = v24[8];
      v32 = v24[10];
      *&layer_params.iB_desc.data_type = v24[9];
      *&layer_params.iB_desc.table_data_type = v32;
      *&layer_params.iB_desc.stride[5] = v30;
      *&layer_params.iB_desc.stride[7] = v31;
      v33 = sub_25637BC84(*(v75[0] + 1));
      if ((v33 - 1) <= 4)
      {
        layer_params.iB_desc.layout = dword_25637D7D8[v33 - 1];
      }

      v34 = sub_25637BC84(*(v75[0] + 1));
      if (v34)
      {
        v35 = (&layer_params.iB_desc + 8 * v34);
        if (v35 > layer_params.iB_desc.size)
        {
          v36 = &layer_params.iB_desc.size[1];
          do
          {
            v37 = *(v36 - 1);
            *(v36 - 1) = *v35;
            *v35-- = v37;
            v18 = v36++ >= v35;
          }

          while (!v18);
        }
      }

      v38 = sub_25637BC84(*(v75[0] + 1));
      v39 = &layer_params.iB_desc.size[v38 + 7];
      if (v38)
      {
        v40 = v39 > layer_params.iB_desc.stride;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v41 = &layer_params.iB_desc.stride[1];
        do
        {
          v42 = *(v41 - 1);
          *(v41 - 1) = *v39;
          *v39-- = v42;
          v18 = v41++ >= v39;
        }

        while (!v18);
      }

      v43 = sub_256369E34(*v72[0]);
      v44 = *v43;
      v45 = v43[2];
      *&layer_params.o_desc.size[1] = v43[1];
      *&layer_params.o_desc.size[3] = v45;
      *&layer_params.o_desc.flags = v44;
      v46 = v43[3];
      v47 = v43[4];
      v48 = v43[6];
      *&layer_params.o_desc.stride[1] = v43[5];
      *&layer_params.o_desc.stride[3] = v48;
      *&layer_params.o_desc.size[5] = v46;
      *&layer_params.o_desc.size[7] = v47;
      v49 = v43[7];
      v50 = v43[8];
      v51 = v43[10];
      *&layer_params.o_desc.data_type = v43[9];
      *&layer_params.o_desc.table_data_type = v51;
      *&layer_params.o_desc.stride[5] = v49;
      *&layer_params.o_desc.stride[7] = v50;
      v52 = sub_25637BC84(*v72[0]);
      if ((v52 - 1) <= 4)
      {
        layer_params.o_desc.layout = dword_25637D7D8[v52 - 1];
      }

      v53 = sub_25637BC84(*v72[0]);
      if (v53)
      {
        v54 = (&layer_params.o_desc + 8 * v53);
        if (v54 > layer_params.o_desc.size)
        {
          v55 = &layer_params.o_desc.size[1];
          do
          {
            v56 = *(v55 - 1);
            *(v55 - 1) = *v54;
            *v54-- = v56;
            v18 = v55++ >= v54;
          }

          while (!v18);
        }
      }

      v57 = sub_25637BC84(*v72[0]);
      v58 = &layer_params.o_desc.size[v57 + 7];
      if (v57)
      {
        v59 = v58 > layer_params.o_desc.stride;
      }

      else
      {
        v59 = 0;
      }

      if (v59)
      {
        v60 = &layer_params.o_desc.stride[1];
        do
        {
          v61 = *(v60 - 1);
          *(v60 - 1) = *v58;
          *v58-- = v61;
          v18 = v60++ >= v58;
        }

        while (!v18);
      }

      v67 = 5;
      strcpy(v66, "alpha");
      sub_256368D5C(a1, v66, __p);
      if (DWORD2(v69) == 1)
      {
        v62 = *__p;
        layer_params.alpha = v62;
        DWORD2(v69) = -1;
        if (v67 < 0)
        {
          operator delete(v66[0]);
        }

        v67 = 4;
        strcpy(v66, "beta");
        sub_256368D5C(a1, v66, __p);
        if (DWORD2(v69) == 1)
        {
          v63 = *__p;
          layer_params.beta = v63;
          DWORD2(v69) = -1;
          if (v67 < 0)
          {
            operator delete(v66[0]);
          }

          v67 = 6;
          strcpy(v66, "transA");
          sub_256368D5C(a1, v66, __p);
          if (!DWORD2(v69))
          {
            layer_params.transA = __p[0] != 0;
            DWORD2(v69) = -1;
            if (v67 < 0)
            {
              operator delete(v66[0]);
            }

            v67 = 6;
            strcpy(v66, "transB");
            sub_256368D5C(a1, v66, __p);
            if (!DWORD2(v69))
            {
              layer_params.transB = __p[0] != 0;
              DWORD2(v69) = -1;
              if (v67 < 0)
              {
                operator delete(v66[0]);
              }

              v67 = 9;
              strcpy(v66, "quadratic");
              sub_256368D5C(a1, v66, __p);
              if (!DWORD2(v69))
              {
                layer_params.quadratic = __p[0] != 0;
                DWORD2(v69) = -1;
                if (v67 < 0)
                {
                  operator delete(v66[0]);
                }

                v67 = 12;
                strcpy(v66, "a_is_weights");
                sub_256368D5C(a1, v66, __p);
                if (!DWORD2(v69))
                {
                  layer_params.a_is_weights = __p[0] != 0;
                  DWORD2(v69) = -1;
                  if (v67 < 0)
                  {
                    operator delete(v66[0]);
                  }

                  v67 = 12;
                  strcpy(v66, "b_is_weights");
                  sub_256368D5C(a1, v66, __p);
                  if (!DWORD2(v69))
                  {
                    layer_params.b_is_weights = __p[0] != 0;
                    DWORD2(v69) = -1;
                    if (v67 < 0)
                    {
                      operator delete(v66[0]);
                    }

                    *__p = 0u;
                    v69 = 0u;
                    LODWORD(__p[0]) = 1;
                    operator new();
                  }

                  sub_256330378();
                }

                sub_256330378();
              }

              sub_256330378();
            }

            sub_256330378();
          }

          sub_256330378();
        }

        sub_256330378();
      }

      sub_256330378();
    }

    v65 = *(a2 + 32);
    operator new();
  }

  v64 = *(a2 + 32);
  operator new();
}

void sub_256371EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a41)
  {
    operator delete(a41);
  }

  _Unwind_Resume(exception_object);
}

void sub_25637202C(void *a1, uint64_t a2)
{
  BYTE7(v52) = 6;
  strcpy(__p, "inputs");
  sub_256368D5C(a1, __p, v107);
  sub_256374684(v107, a2, &v109);
  if (v108 != -1)
  {
    (off_2868558E8[v108])(&filter_params, v107);
  }

  v108 = -1;
  if (SBYTE7(v52) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v52) = 7;
  strcpy(__p, "outputs");
  sub_256368D5C(a1, __p, v104);
  sub_256374684(v104, a2, v106);
  if (v105 != -1)
  {
    (off_2868558E8[v105])(&filter_params, v104);
  }

  v105 = -1;
  if (SBYTE7(v52) < 0)
  {
    operator delete(__p[0]);
  }

  if (((v110 - v109) & 0xFFFFFFFFFFFFFFF0) != 0x10)
  {
    v41 = *(a2 + 32);
    operator new();
  }

  if (v106[1] - v106[0] != 8)
  {
    v42 = *(a2 + 32);
    operator new();
  }

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v4 = sub_256369E34(v109[1]);
  if (!*(v4 + 136))
  {
    v43 = *(a2 + 32);
    operator new();
  }

  v5 = sub_256369E34(*v109);
  v6 = *v5;
  v7 = v5[2];
  v52 = v5[1];
  v53 = v7;
  *__p = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[6];
  v56 = v5[5];
  v57 = v10;
  v54 = v8;
  v55 = v9;
  v11 = v5[7];
  v12 = v5[8];
  v13 = v5[10];
  v60 = v5[9];
  v61 = v13;
  v58 = v11;
  v59 = v12;
  v14 = *v4;
  v15 = *(v4 + 32);
  v63 = *(v4 + 16);
  v64 = v15;
  v62 = v14;
  v16 = *(v4 + 48);
  v17 = *(v4 + 64);
  v18 = *(v4 + 96);
  v67 = *(v4 + 80);
  v68 = v18;
  v65 = v16;
  v66 = v17;
  v19 = *(v4 + 112);
  v20 = *(v4 + 128);
  v21 = *(v4 + 160);
  v71 = *(v4 + 144);
  v72 = v21;
  v69 = v19;
  v70 = v20;
  v22 = sub_256369E34(*v106[0]);
  v23 = *v22;
  v24 = v22[2];
  v74 = v22[1];
  v75 = v24;
  v73 = v23;
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[6];
  v78 = v22[5];
  v79 = v27;
  v76 = v25;
  v77 = v26;
  v28 = v22[7];
  v29 = v22[8];
  v30 = v22[10];
  v82 = v22[9];
  v83 = v30;
  v80 = v28;
  v81 = v29;
  if (v110 - v109 == 24)
  {
    v31 = sub_256369E34(v109[2]);
    v32 = *v31;
    v33 = v31[2];
    v85 = v31[1];
    v86 = v33;
    v84 = v32;
    v34 = v31[3];
    v35 = v31[4];
    v36 = v31[6];
    v89 = v31[5];
    v90 = v36;
    v87 = v34;
    v88 = v35;
    v37 = v31[7];
    v38 = v31[8];
    v39 = v31[10];
    v93 = v31[9];
    v94 = v39;
    v91 = v37;
    v92 = v38;
  }

  HIBYTE(filter_params.alloc_memory) = 3;
  filter_params.flags = 7627617;
  v40 = sub_256331F64(a1, &filter_params);
  if (SHIBYTE(filter_params.alloc_memory) < 0)
  {
    v44 = v40;
    operator delete(*&filter_params.flags);
    if (v44)
    {
LABEL_16:
      v49 = 3;
      strcpy(v48, "act");
      sub_256368D5C(a1, v48, &filter_params);
      if (LODWORD(filter_params.free_memory) == 2)
      {
        *v46 = *&filter_params.flags;
        alloc_memory = filter_params.alloc_memory;
        memset(&filter_params, 0, 24);
        LODWORD(filter_params.free_memory) = -1;
        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        sub_256374838(v46);
      }

      sub_256330378();
    }
  }

  else if (v40)
  {
    goto LABEL_16;
  }

  v96 = 0u;
  v97 = 0u;
  *&v95 = 0x3F80000000000000;
  *(&v95 + 1) = 0x100000000;
  HIBYTE(alloc_memory) = 7;
  strcpy(v46, "strides");
  sub_256368D5C(a1, v46, &filter_params);
  if (SHIBYTE(alloc_memory) < 0)
  {
    operator delete(v46[0]);
  }

  if (LODWORD(filter_params.free_memory) == 4)
  {
    if (filter_params.n_threads != *&filter_params.flags)
    {
      if (((filter_params.n_threads - *&filter_params.flags) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_25632CE68();
    }

    v45 = *(a2 + 32);
    operator new();
  }

  sub_256330378();
}

void sub_256372B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 160);
  if (v37)
  {
    *(v35 - 152) = v37;
    operator delete(v37);
  }

  v38 = *(v35 - 104);
  if (v38)
  {
    *(v35 - 96) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_256372D9C(void *a1, uint64_t a2)
{
  bzero(&layer_params, 0x2F0uLL);
  BYTE7(v50) = 6;
  strcpy(__p, "inputs");
  sub_256368D5C(a1, __p, v54);
  sub_256374684(v54, a2, &v56);
  if (v55 != -1)
  {
    (off_2868558E8[v55])(v45, v54);
  }

  v55 = -1;
  if (SBYTE7(v50) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v50) = 7;
  strcpy(__p, "outputs");
  sub_256368D5C(a1, __p, v51);
  sub_256374684(v51, a2, v53);
  if (v52 != -1)
  {
    (off_2868558E8[v52])(v45, v51);
  }

  v52 = -1;
  if (SBYTE7(v50) < 0)
  {
    operator delete(__p[0]);
  }

  if (((v57 - v56) & 0xFFFFFFFFFFFFFFF0) != 0x10)
  {
    v40 = *(a2 + 32);
    operator new();
  }

  if ((v53[1] - v53[0]) != 8)
  {
    v41 = *(a2 + 32);
    operator new();
  }

  v4 = sub_256369E34(*(v56 + 1));
  if (!*(v4 + 136))
  {
    v42 = *(a2 + 32);
    operator new();
  }

  v5 = sub_256369E34(*v56);
  v6 = *v5;
  v7 = v5[2];
  *&layer_params.i_desc.size[1] = v5[1];
  *&layer_params.i_desc.size[3] = v7;
  *&layer_params.i_desc.flags = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[6];
  *&layer_params.i_desc.stride[1] = v5[5];
  *&layer_params.i_desc.stride[3] = v10;
  *&layer_params.i_desc.size[5] = v8;
  *&layer_params.i_desc.size[7] = v9;
  v11 = v5[7];
  v12 = v5[8];
  v13 = v5[10];
  *&layer_params.i_desc.data_type = v5[9];
  *&layer_params.i_desc.table_data_type = v13;
  *&layer_params.i_desc.stride[5] = v11;
  *&layer_params.i_desc.stride[7] = v12;
  v14 = *v4;
  v15 = *(v4 + 32);
  *&layer_params.w_desc.size[1] = *(v4 + 16);
  *&layer_params.w_desc.size[3] = v15;
  *&layer_params.w_desc.flags = v14;
  v16 = *(v4 + 48);
  v17 = *(v4 + 64);
  v18 = *(v4 + 96);
  *&layer_params.w_desc.stride[1] = *(v4 + 80);
  *&layer_params.w_desc.stride[3] = v18;
  *&layer_params.w_desc.size[5] = v16;
  *&layer_params.w_desc.size[7] = v17;
  v19 = *(v4 + 112);
  v20 = *(v4 + 128);
  v21 = *(v4 + 160);
  *&layer_params.w_desc.data_type = *(v4 + 144);
  *&layer_params.w_desc.table_data_type = v21;
  *&layer_params.w_desc.stride[5] = v19;
  *&layer_params.w_desc.stride[7] = v20;
  v22 = sub_256369E34(*v53[0]);
  v23 = *v22;
  v24 = v22[2];
  *&layer_params.o_desc.size[1] = v22[1];
  *&layer_params.o_desc.size[3] = v24;
  *&layer_params.o_desc.flags = v23;
  v25 = v22[3];
  v26 = v22[4];
  v27 = v22[6];
  *&layer_params.o_desc.stride[1] = v22[5];
  *&layer_params.o_desc.stride[3] = v27;
  *&layer_params.o_desc.size[5] = v25;
  *&layer_params.o_desc.size[7] = v26;
  v28 = v22[7];
  v29 = v22[8];
  v30 = v22[10];
  *&layer_params.o_desc.data_type = v22[9];
  *&layer_params.o_desc.table_data_type = v30;
  *&layer_params.o_desc.stride[5] = v28;
  *&layer_params.o_desc.stride[7] = v29;
  if (v57 - v56 == 24)
  {
    v31 = sub_256369E34(*(v56 + 2));
    v32 = *v31;
    v33 = v31[2];
    *&layer_params.bias.size[1] = v31[1];
    *&layer_params.bias.size[3] = v33;
    *&layer_params.bias.flags = v32;
    v34 = v31[3];
    v35 = v31[4];
    v36 = v31[6];
    *&layer_params.bias.stride[1] = v31[5];
    *&layer_params.bias.stride[3] = v36;
    *&layer_params.bias.size[5] = v34;
    *&layer_params.bias.size[7] = v35;
    v37 = v31[7];
    v38 = v31[8];
    v39 = v31[10];
    *&layer_params.bias.data_type = v31[9];
    *&layer_params.bias.table_data_type = v39;
    *&layer_params.bias.stride[5] = v37;
    *&layer_params.bias.stride[7] = v38;
  }

  else
  {
    memset(&layer_params.bias, 0, sizeof(layer_params.bias));
  }

  BYTE7(v50) = 3;
  LODWORD(__p[0]) = 7627617;
  v43 = sub_256331F64(a1, __p);
  if (SBYTE7(v50) < 0)
  {
    v44 = v43;
    operator delete(__p[0]);
    if (v44)
    {
LABEL_20:
      HIBYTE(v48) = 3;
      LODWORD(v47) = 7627617;
      sub_256368D5C(a1, &v47, __p);
      if (DWORD2(v50) == 2)
      {
        *v45 = *__p;
        v46 = v50;
        __p[1] = 0;
        *&v50 = 0;
        __p[0] = 0;
        DWORD2(v50) = -1;
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47);
        }

        sub_256374838(v45);
      }

      sub_256330378();
    }
  }

  else if (v43)
  {
    goto LABEL_20;
  }

  memset(&layer_params.activation.iscale, 0, 36);
  layer_params.activation.function = BNNSActivationFunctionIdentity;
  *&layer_params.activation.alpha = 1065353216;
  *__p = 0u;
  v50 = 0u;
  LODWORD(__p[0]) = 1;
  operator new();
}

void sub_256373464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a41)
  {
    operator delete(a41);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563735A0(void *a1, uint64_t a2)
{
  memset(v60, 0, sizeof(v60));
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  BYTE7(v31) = 6;
  strcpy(__p, "inputs");
  sub_256368D5C(a1, __p, v35);
  sub_256374684(v35, a2, v37);
  if (v36 != -1)
  {
    (off_2868558E8[v36])(v34, v35);
  }

  v36 = -1;
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v31) = 7;
  strcpy(__p, "outputs");
  sub_256368D5C(a1, __p, v32);
  sub_256374684(v32, a2, v34);
  if (v33 != -1)
  {
    (off_2868558E8[v33])(v28, v32);
  }

  v33 = -1;
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = sub_256369E34(*v37[0]);
  v5 = *v4;
  v6 = v4[2];
  v39 = v4[1];
  v40 = v6;
  v38 = v5;
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[6];
  v43 = v4[5];
  v44 = v9;
  v41 = v7;
  v42 = v8;
  v10 = v4[7];
  v11 = v4[8];
  v12 = v4[10];
  v47 = v4[9];
  v48 = v12;
  v45 = v10;
  v46 = v11;
  v13 = sub_256369E34(*v34[0]);
  v14 = *v13;
  v15 = v13[2];
  v50 = v13[1];
  v51 = v15;
  v49 = v14;
  v16 = v13[3];
  v17 = v13[4];
  v18 = v13[6];
  v54 = v13[5];
  v55 = v18;
  v52 = v16;
  v53 = v17;
  v19 = v13[7];
  v20 = v13[8];
  v21 = v13[10];
  v58 = v13[9];
  v59 = v21;
  v56 = v19;
  v57 = v20;
  v29 = 7;
  strcpy(v28, "permute");
  sub_256368D5C(a1, v28, __p);
  if (DWORD2(v31) != 4)
  {
    sub_256330378();
  }

  v22 = __p[0];
  v23 = __p[1];
  __p[1] = 0;
  *&v31 = 0;
  __p[0] = 0;
  DWORD2(v31) = -1;
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if ((v23 - v22) >= 0x41)
  {
    v26 = *(a2 + 32);
    operator new();
  }

  if (v23 != v22)
  {
    memmove(v60, v22, v23 - v22);
  }

  *__p = 0u;
  v31 = 0u;
  LODWORD(__p[0]) = 1;
  __p[1] = *(a2 + 472);
  v24 = MEMORY[0x259C60B70](&v38, __p);
  if (!v24)
  {
    v25 = *(a2 + 32);
    operator new();
  }

  if (v22)
  {
    operator delete(v22);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  return v24;
}

void sub_256373944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    operator delete(v35);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256373A30(void *a1, uint64_t a2)
{
  v169 = *MEMORY[0x277D85DE8];
  memset(v156, 0, sizeof(v156));
  BYTE7(v60) = 6;
  strcpy(__p, "inputs");
  sub_256368D5C(a1, __p, v75);
  sub_256374684(v75, a2, v77);
  if (v76 != -1)
  {
    (off_2868558E8[v76])(&v158, v75);
  }

  v76 = -1;
  if (SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v60) = 7;
  strcpy(__p, "outputs");
  sub_256368D5C(a1, __p, v72);
  sub_256374684(v72, a2, v74);
  if (v73 != -1)
  {
    (off_2868558E8[v73])(&v158, v72);
  }

  v73 = -1;
  if (SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v159) = 4;
  strcpy(&v158, "func");
  sub_256368D5C(a1, &v158, __p);
  if (DWORD2(v60) != 2)
  {
    sub_256330378();
  }

  *v70 = *__p;
  v71 = v60;
  __p[1] = 0;
  *&v60 = 0;
  __p[0] = 0;
  DWORD2(v60) = -1;
  if (SBYTE7(v159) < 0)
  {
    operator delete(v158);
  }

  BYTE7(v159) = 4;
  strcpy(&v158, "nary");
  sub_256368D5C(a1, &v158, __p);
  if (DWORD2(v60))
  {
    sub_256330378();
  }

  v4 = __p[0];
  DWORD2(v60) = -1;
  if (SBYTE7(v159) < 0)
  {
    operator delete(v158);
  }

  if (v4 == 1)
  {
    v11 = sub_256369E34(*v77[0]);
    v66 = v11[7];
    v67 = v11[8];
    v68 = v11[9];
    v69 = v11[10];
    v62 = v11[3];
    v63 = v11[4];
    v64 = v11[5];
    v65 = v11[6];
    *__p = *v11;
    v60 = v11[1];
    v61 = v11[2];
    v12 = sub_256369E34(*v74[0]);
    v165 = v12[7];
    v166 = v12[8];
    v167 = v12[9];
    v168 = v12[10];
    v161 = v12[3];
    v162 = v12[4];
    v163 = v12[5];
    v164 = v12[6];
    v158 = *v12;
    v159 = v12[1];
    v160 = v12[2];
    *&v155[8] = 0u;
    v143[1] = v60;
    v143[0] = *__p;
    v143[5] = v64;
    v143[4] = v63;
    v143[2] = v61;
    v143[3] = v62;
    v144 = 1;
    v143[10] = v69;
    v143[9] = v68;
    v143[8] = v67;
    v143[6] = v65;
    v143[7] = v66;
    v152 = v165;
    v153 = v166;
    v154 = v167;
    *v155 = v168;
    v150 = v163;
    v151 = v164;
    v148 = v161;
    v149 = v162;
    v145 = v158;
    v146 = v159;
    v147 = v160;
    *&v155[16] = 1;
    *(&v156[0] + 1) = v143;
    goto LABEL_31;
  }

  if (v4 == 2)
  {
    v8 = sub_256369E34(*v77[0]);
    v66 = v8[7];
    v67 = v8[8];
    v68 = v8[9];
    v69 = v8[10];
    v62 = v8[3];
    v63 = v8[4];
    v64 = v8[5];
    v65 = v8[6];
    *__p = *v8;
    v60 = v8[1];
    v61 = v8[2];
    v9 = sub_256369E34(*(v77[0] + 1));
    v165 = v9[7];
    v166 = v9[8];
    v167 = v9[9];
    v168 = v9[10];
    v161 = v9[3];
    v162 = v9[4];
    v163 = v9[5];
    v164 = v9[6];
    v158 = *v9;
    v159 = v9[1];
    v160 = v9[2];
    v10 = sub_256369E34(*v74[0]);
    v53 = v10[8];
    v55 = v10[9];
    v57 = v10[10];
    v45 = v10[4];
    v47 = v10[5];
    v49 = v10[6];
    v51 = v10[7];
    v37 = *v10;
    v39 = v10[1];
    v41 = v10[2];
    v43 = v10[3];
    *&v130[8] = 0u;
    v118[8] = v67;
    v118[9] = v68;
    v119 = 1;
    v118[10] = v69;
    v118[4] = v63;
    v118[5] = v64;
    v118[7] = v66;
    v118[6] = v65;
    v118[0] = *__p;
    v118[1] = v60;
    v118[3] = v62;
    v118[2] = v61;
    v127 = v165;
    v128 = v166;
    v129 = v167;
    *v130 = v168;
    v125 = v163;
    v126 = v164;
    v123 = v161;
    v124 = v162;
    v120 = v158;
    v121 = v159;
    v122 = v160;
    v138 = v51;
    v139 = v53;
    v140 = v55;
    v141 = v57;
    v134 = v43;
    v135 = v45;
    v136 = v47;
    v137 = v49;
    v131 = v37;
    v132 = v39;
    *&v130[16] = 1;
    v133 = v41;
    v142 = 1;
    *(&v156[0] + 1) = v118;
    goto LABEL_31;
  }

  if (v4 != 3)
  {
    goto LABEL_31;
  }

  v5 = sub_256369E34(*v77[0]);
  v34 = *(v5 + 96);
  v35 = *(v5 + 112);
  v36 = *(v5 + 128);
  v30 = *(v5 + 32);
  v31 = *(v5 + 48);
  v32 = *(v5 + 64);
  v33 = *(v5 + 80);
  v28 = *v5;
  v29 = *(v5 + 16);
  v6 = *(v5 + 144);
  v157[0] = *(v5 + 148);
  *(v157 + 12) = *(v5 + 160);
  if (SHIBYTE(v71) < 0)
  {
    if (v70[1] == 6)
    {
      v7 = v70[0];
LABEL_25:
      v13 = bswap64(*v7 | (*(v7 + 2) << 32));
      v14 = v13 >= 0x73656C6563740000;
      v15 = v13 > 0x73656C6563740000;
      v16 = !v14;
      if (v15 == v16)
      {
        v6 = 1048584;
      }
    }
  }

  else if (SHIBYTE(v71) == 6)
  {
    v7 = v70;
    goto LABEL_25;
  }

  v17 = sub_256369E34(*(v77[0] + 1));
  v66 = v17[7];
  v67 = v17[8];
  v68 = v17[9];
  v69 = v17[10];
  v62 = v17[3];
  v63 = v17[4];
  v64 = v17[5];
  v65 = v17[6];
  *__p = *v17;
  v60 = v17[1];
  v61 = v17[2];
  v18 = sub_256369E34(*(v77[0] + 2));
  v165 = v18[7];
  v166 = v18[8];
  v167 = v18[9];
  v168 = v18[10];
  v161 = v18[3];
  v162 = v18[4];
  v163 = v18[5];
  v164 = v18[6];
  v158 = *v18;
  v159 = v18[1];
  v160 = v18[2];
  v19 = sub_256369E34(*v74[0]);
  v54 = v19[8];
  v56 = v19[9];
  v58 = v19[10];
  v46 = v19[4];
  v48 = v19[5];
  v50 = v19[6];
  v52 = v19[7];
  v38 = *v19;
  v40 = v19[1];
  v42 = v19[2];
  v44 = v19[3];
  bzero(&v81, 0x230uLL);
  v78[6] = v34;
  v78[7] = v35;
  v78[8] = v36;
  v78[2] = v30;
  v78[3] = v31;
  v78[4] = v32;
  v78[5] = v33;
  v78[0] = v28;
  v78[1] = v29;
  *v80 = v157[0];
  *&v80[12] = *(v157 + 12);
  v89 = v66;
  v90 = v67;
  v91 = v68;
  v92 = v69;
  v87 = v64;
  v88 = v65;
  v85 = v62;
  v86 = v63;
  v82 = *__p;
  v79 = v6;
  v83 = v60;
  v84 = v61;
  v81 = 1;
  v93 = 1;
  v102 = v166;
  v103 = v167;
  v104 = v168;
  v98 = v162;
  v99 = v163;
  v101 = v165;
  v100 = v164;
  v94 = v158;
  v95 = v159;
  v97 = v161;
  v96 = v160;
  v105 = 1;
  v114 = v54;
  v115 = v56;
  v116 = v58;
  v110 = v46;
  v111 = v48;
  v112 = v50;
  v113 = v52;
  v106 = v38;
  v107 = v40;
  v108 = v42;
  v109 = v44;
  v117 = 1;
  *(&v156[0] + 1) = v78;
LABEL_31:
  BYTE7(v159) = 6;
  strcpy(&v158, "select");
  DWORD2(v159) = 31;
  *__p = 0u;
  v60 = 0u;
  LODWORD(v61) = 1065353216;
  sub_2563755F0(__p, &v158);
  if (SBYTE7(v159) < 0)
  {
    operator delete(v158);
  }

  v20 = *(sub_256375998(__p, v70) + 10);
  v21 = v60;
  if (v60)
  {
    do
    {
      v27 = *v21;
      if (*(v21 + 39) < 0)
      {
        operator delete(v21[2]);
      }

      operator delete(v21);
      v21 = v27;
    }

    while (v27);
  }

  v22 = __p[0];
  __p[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  memset(&v156[1] + 12, 0, 36);
  LODWORD(v156[0]) = v20;
  LODWORD(v156[1]) = 0;
  *(&v156[1] + 4) = 1065353216;
  *__p = 0u;
  v60 = 0u;
  LODWORD(__p[0]) = 1;
  v23 = MEMORY[0x259C60B30](v156, __p);
  if (!v23)
  {
    v24 = *(a2 + 32);
    operator new();
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70[0]);
  }

  if (v74[0])
  {
    v74[1] = v74[0];
    operator delete(v74[0]);
  }

  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_2563744B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  v72 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v73;
    operator delete(v73);
  }

  _Unwind_Resume(a1);
}

void sub_2563745A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_2563300F8(&STACK[0x210]);
  if (a54 < 0)
  {
    JUMPOUT(0x256374584);
  }

  JUMPOUT(0x256374588);
}

void sub_2563745C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_2563300F8(&STACK[0x248]);
  if (a54 < 0)
  {
    JUMPOUT(0x256374594);
  }

  JUMPOUT(0x256374598);
}

uint64_t sub_2563745E8(uint64_t a1)
{
  v2 = a1 + 24;
  v3 = *(a1 + 48);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_7:
    operator delete(*a1);
    return a1;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_7;
  }

  return a1;
}

void sub_256374684(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 24) != 3)
  {
    sub_256330378();
  }

  sub_25632CD38(&__p, a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = __p;
  v6 = v18;
  if (__p != v18)
  {
    while (1)
    {
      sub_25636265C(a2, v5, &v13);
      v15 = 0;
      v16 = 0;
      if (!v14)
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_12;
      }

      v7 = std::__shared_weak_count::lock(v14);
      v16 = v7;
      if (!v7)
      {
        break;
      }

      v8 = v13;
      v15 = v13;
      v9 = v14;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_12:
      v13 = v8;
      sub_256374F34(a3, &v13);
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v5 += 3;
      if (v5 == v6)
      {
        v5 = __p;
        goto LABEL_16;
      }
    }

    v8 = 0;
    v9 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_11:
    std::__shared_weak_count::__release_weak(v9);
    goto LABEL_12;
  }

LABEL_16:
  if (v5)
  {
    v10 = v18;
    v11 = v5;
    if (v18 != v5)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v5);
      v11 = __p;
    }

    v18 = v5;
    operator delete(v11);
  }
}

void sub_256374804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v8 = *v6;
  if (*v6)
  {
    *(v6 + 8) = v8;
    operator delete(v8);
  }

  sub_256330084(va);
  _Unwind_Resume(a1);
}

void sub_256374838(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    sub_25632CB5C(v3, *a1, *(a1 + 8));
  }

  else
  {
    *v3 = *a1;
    v4 = *(a1 + 16);
  }

  if (v4 >= 0)
  {
    v1 = (v3 + HIBYTE(v4));
  }

  else
  {
    v1 = (v3[0] + v3[1]);
  }

  if (v4 >= 0)
  {
    v2 = v3;
  }

  else
  {
    v2 = v3[0];
  }

  for (; v2 != v1; v2 = (v2 + 1))
  {
    *v2 = __tolower(*v2);
  }

  v6 = 3;
  v5 = 7561825;
  v7 = 6;
  v8[23] = 16;
  strcpy(v8, "channel-saturate");
  v10[23] = 5;
  v9 = 10;
  strcpy(v10, "clamp");
  v13 = 3;
  v11 = 8;
  v12 = 7695461;
  v14 = 18;
  v15[23] = 8;
  strcpy(v15, "identity");
  v16 = 0;
  operator new();
}

void sub_256374E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  sub_2563656F4(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_256374EF8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2563656F4(va);
  v3 = (v2 + 727);
  v4 = -736;
  v5 = (v2 + 727);
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      JUMPOUT(0x256374EE0);
    }
  }
}

void sub_256374F34(uint64_t a1, void *a2)
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
      sub_25632CE68();
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

      sub_25632CCA0();
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

uint64_t **sub_256375038(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_2563753C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256331484(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2563753E0(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t sub_2563755B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286855920;
  a2[1] = v2;
  return result;
}

uint64_t **sub_2563755F0(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_25637597C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256331484(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_256375998(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t **sub_256375AFC(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_256375EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256375F20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_256375F20(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != v2 + 40)
      {
        if (v3)
        {
          (*(*v3 + 40))(v3);
        }

        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }

      (*(*v3 + 32))(v3);
      if (*(v2 + 39) < 0)
      {
LABEL_10:
        operator delete(*(v2 + 16));
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_256375FDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[8];
      if (v6 != (v2 + 5))
      {
        break;
      }

      (*(*v6 + 32))(v6);
      if (*(v2 + 39) < 0)
      {
        goto LABEL_12;
      }

LABEL_5:
      operator delete(v2);
      v2 = v5;
      if (!v5)
      {
        goto LABEL_2;
      }
    }

    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    if ((*(v2 + 39) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    operator delete(v2[2]);
    goto LABEL_5;
  }

LABEL_2:
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t **sub_2563760B0(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t sub_256376214(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4, void **a5)
{
  v14 = 11;
  strcpy(__p, "plane_index");
  sub_256368D5C(a4, __p, v15);
  if (v16)
  {
    sub_256330378();
  }

  v8 = v15[0];
  v16 = -1;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(***a5 + 176))(**a5);
  v10 = **a1;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v9, v8);
  (*(*v10 + 224))(v10, BaseAddressOfPlane);
  return a2 + 1;
}

void sub_25637631C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_2563528C0(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_256376348(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (*(***a1 + 168))(**a1);
  if (CVPixelBufferIsPlanar(v7))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(v7);
    if (!PlaneCount)
    {
      return a2 + 1;
    }
  }

  else
  {
    PlaneCount = 1;
  }

  for (i = 0; i != PlaneCount; ++i)
  {
    v10 = *(*a5 + 8 * i);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v7, i);
    (*(*v10 + 136))(v10);
    v12 = sub_256369E34(v10);
    v13 = *(v12 + 144);
    v14 = *(v12 + 160);
    v15 = *(v12 + 112);
    *&v22.stride[7] = *(v12 + 128);
    v16 = *v12;
    v17 = *(v12 + 32);
    *&v22.size[1] = *(v12 + 16);
    *&v22.size[3] = v17;
    *&v22.flags = v16;
    v18 = *(v12 + 48);
    v19 = *(v12 + 64);
    v20 = *(v12 + 96);
    *&v22.stride[1] = *(v12 + 80);
    *&v22.stride[3] = v20;
    *&v22.size[5] = v18;
    *&v22.size[7] = v19;
    *&v22.data_type = v13;
    *&v22.table_data_type = v14;
    *&v22.stride[5] = v15;
    v22.data = BaseAddressOfPlane;
    BNNSCopy(&v22, v12, 0);
  }

  return a2 + 1;
}

uint64_t sub_256376480(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286855360;
  v6[1] = sub_256376214;
  v7 = v6;
  sub_256352F58(a1, 0, 0, 43, 0, 0, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  v4[0] = &unk_286855360;
  v4[1] = sub_256376348;
  v5 = v4;
  sub_256352F58(a1, 0, 0, 44, 0, 0, v4);
  result = v5;
  if (v5 == v4)
  {
    result = (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    result = (*(*v5 + 40))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256376638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  _Unwind_Resume(a1);
}

uint64_t mlc_tensor_destroy(uint64_t a1)
{
  v3 = a1;
  v1 = *(a1 + 576);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_data(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 32);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_name(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 64);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_type(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 96);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_rank(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 128);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_dimension(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 616);
  v5 = a2;
  v6 = v2;
  v3 = *(a1 + 160);
  if (!v3)
  {
    sub_25633FB08();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t mlc_tensor_stride(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 616);
  v5 = a2;
  v6 = v2;
  v3 = *(a1 + 192);
  if (!v3)
  {
    sub_25633FB08();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t mlc_tensor_set_dimension(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 616);
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 448);
  if (!v3)
  {
    sub_25633FB08();
  }

  return (*(*v3 + 48))(v3, &v7, &v6, &v5);
}

uint64_t mlc_tensor_set_stride(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 616);
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 480);
  if (!v3)
  {
    sub_25633FB08();
  }

  return (*(*v3 + 48))(v3, &v7, &v6, &v5);
}

uint64_t mlc_tensor_alloc(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 224);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_set_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 616);
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 544);
  if (!v3)
  {
    sub_25633FB08();
  }

  return (*(*v3 + 48))(v3, &v7, &v6, &v5);
}

uint64_t mlc_tensor_alignment(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 256);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_location(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 288);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

uint64_t mlc_tensor_event(uint64_t a1)
{
  v3 = *(a1 + 616);
  v1 = *(a1 + 320);
  if (!v1)
  {
    sub_25633FB08();
  }

  return (*(*v1 + 48))(v1, &v3);
}

double sub_256376B50(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286854DE8;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  return result;
}

void sub_256376B88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v58[19] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = a1[1];
    operator new();
  }

  sub_25636C868(v40, a2, a3);
  v6 = a1[1];
  sub_25636C868(&v43, a2, a3);
  LODWORD(v39) = 0;
  std::istream::read();
  sub_25634984C(&__p);
  v8 = MEMORY[0x259C60DF0](&__p, a3);
  v9 = sub_256349D6C(v8, "-byte binary does not begin with the proper magic. ", 51);
  sub_256349D6C(v9, "Invalid pointer given for binary data.", 38);
  if ((v57 & 0x10) != 0)
  {
    v11 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v11 = v53;
    }

    v12 = &v52;
  }

  else
  {
    if ((v57 & 8) == 0)
    {
      v10 = 0;
      v38 = 0;
      goto LABEL_17;
    }

    v12 = v50;
    v11 = v51;
  }

  v13 = *v12;
  v10 = v11 - *v12;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_25632CBF8();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  v38 = v11 - *v12;
  if (v10)
  {
    memmove(&__dst, v13, v10);
  }

LABEL_17:
  *(&__dst + v10) = 0;
  sub_25637969C(v6, 5, &__dst);
  if (v38 < 0)
  {
    operator delete(__dst);
  }

  __p = *MEMORY[0x277D82828];
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
  v48 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54);
  }

  v48 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v49);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](v58);
  std::istream::~istream();
  MEMORY[0x259C60E90](v46);
  v44 = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v45);
  if (!sub_25637978C(v6))
  {
    v17 = 0;
    goto LABEL_45;
  }

  sub_25636C868(&v43, a2, a3);
  *__error() = 0;
  v14 = (&v43 + *(v43 - 4));
  v15 = v14[8];
  v16 = v15 + v14[9];
  v14[2] = v15;
  v14[3] = v15;
  v14[4] = v16;
  LODWORD(v39) = -1;
  std::istream::read();
  if ((*(&v45[1].__locale_ + *(v43 - 3)) & 5) != 0 || v39 != 1885728080)
  {
    sub_25634984C(&__p);
    v18 = sub_256349D6C(&__p, "Segment table starts with 0x", 28);
    *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 8;
    v19 = MEMORY[0x259C60DD0]();
    v20 = sub_256349D6C(v19, " instead ", 9);
    sub_256349D6C(v20, "of magic value.", 15);
    if ((v57 & 0x10) != 0)
    {
      v22 = v56;
      if (v56 < v53)
      {
        v56 = v53;
        v22 = v53;
      }

      v23 = &v52;
    }

    else
    {
      if ((v57 & 8) == 0)
      {
        v21 = 0;
        v38 = 0;
LABEL_39:
        *(&__dst + v21) = 0;
        sub_25637969C(v6, 5, &__dst);
        if (v38 < 0)
        {
          operator delete(__dst);
        }

        __p = *MEMORY[0x277D82828];
        *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
        v48 = MEMORY[0x277D82878] + 16;
        if (v55 < 0)
        {
          operator delete(v54);
        }

        v48 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v49);
        std::ostream::~ostream();
        MEMORY[0x259C60E90](v58);
        v17 = 0;
        goto LABEL_44;
      }

      v23 = v50;
      v22 = v51;
    }

    v24 = *v23;
    v21 = v22 - *v23;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v38 = v22 - *v23;
    if (v21)
    {
      memmove(&__dst, v24, v21);
    }

    goto LABEL_39;
  }

  __p = 0;
  std::istream::read();
  v17 = __p;
  std::istream::read();
  std::istream::read();
  std::istream::read();
LABEL_44:
  std::istream::~istream();
  MEMORY[0x259C60E90](v46);
  v44 = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v45);
LABEL_45:
  if (!sub_25637978C(a1[1]))
  {
    goto LABEL_66;
  }

  v25 = a1[1];
  v26 = (v40 + *(v40[0] - 32));
  v27 = v26[8];
  v28 = v27 + v26[9];
  v26[2] = v27;
  v26[3] = &v17[v27];
  v26[4] = v28;
  __dst = 0;
  std::istream::read();
  sub_25634984C(&__p);
  v29 = sub_256349D6C(&__p, "'", 1);
  v30 = MEMORY[0x259C60E00](v29, __dst);
  sub_256349D6C(v30, "'-byte buffer is too large for listing.", 39);
  if ((v57 & 0x10) != 0)
  {
    v32 = v56;
    if (v56 < v53)
    {
      v56 = v53;
      v32 = v53;
    }

    v33 = &v52;
    goto LABEL_53;
  }

  if ((v57 & 8) != 0)
  {
    v33 = v50;
    v32 = v51;
LABEL_53:
    v34 = *v33;
    v31 = v32 - *v33;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v44) = v32 - *v33;
    if (v31)
    {
      memmove(&v43, v34, v31);
    }

    goto LABEL_59;
  }

  v31 = 0;
  HIBYTE(v44) = 0;
LABEL_59:
  *(&v43 + v31) = 0;
  sub_25637969C(v25, 5, &v43);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  __p = *MEMORY[0x277D82828];
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
  v48 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54);
  }

  v48 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v49);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](v58);
  v35 = a1[2];
  if (v35)
  {
    a1[3] = v35;
    operator delete(v35);
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
LABEL_66:
  std::istream::~istream();
  MEMORY[0x259C60E90](&v42);
  v40[2] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v41);
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2563785B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&STACK[0x250]);
  sub_256365858(&a52);
  JUMPOUT(0x2563787A8);
}

void sub_256378724(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x2563787B0);
}

void sub_25637873C()
{
  __cxa_end_catch();
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  JUMPOUT(0x2563787A0);
}

void sub_25637879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_2563656F4(&a49);
  sub_25636C9BC(&a18);
  _Unwind_Resume(a1);
}

void sub_2563787C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 80); i; i = *i)
  {
    while (1)
    {
      if (*(i + 39) < 0)
      {
        sub_25632CB5C(__p, i[2], i[3]);
      }

      else
      {
        *__p = *(i + 1);
        v8 = i[4];
      }

      v5 = i[5];
      v4 = i[6];
      v9 = v5;
      v10 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = v9;
      }

      v11 = *(i + 7);
      v12 = __p;
      sub_2563792F4(a2, __p)[5] = v5;
      v6 = v10;
      if (v10)
      {
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (SHIBYTE(v8) < 0)
      {
        break;
      }

      i = *i;
      if (!i)
      {
        return;
      }
    }

    operator delete(__p[0]);
  }
}

uint64_t sub_25637892C(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  v3 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v3;
  if (*(v3 + 23) < 0)
  {
LABEL_4:
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

void ***sub_2563789C0(void ***a1)
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
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
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

uint64_t **sub_256378A48(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_256378DB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256331484(va);
  _Unwind_Resume(a1);
}

void sub_256378DC8(char **a1, size_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 - v4 >= a2)
  {
    if (a2)
    {
      v10 = &v4[a2];
      bzero(a1[1], a2);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1);
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      sub_25632CE68();
    }

    v8 = v3 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v11 = v4 - *a1;
    v12 = &v6[a2];
    bzero(v6, a2);
    v13 = &v6[v5 - v4];
    memcpy(v13, v5, v11);
    *a1 = v13;
    a1[1] = v12;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_256378F04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t **sub_256378F44(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_2563792D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25635ECA4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2563792F4(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_256379680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256331484(va);
  _Unwind_Resume(a1);
}

__n128 sub_25637969C(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_25632CB5C(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
    v13 = *(a3 + 16);
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_2563798A8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F);
  *v9 = a2;
  result = v12;
  *(v9 + 24) = v13;
  *(v9 + 8) = result;
  ++*(a1 + 40);
  return result;
}

void sub_256379770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2563797BC(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (!*(a1 + 40))
  {
    sub_256341D88("deque");
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 8) + ((v3 >> 4) & 0xFFFFFFFFFFFFFF8));
  v5 = v3 & 0x7F;
  v6 = v4 + 32 * v5;
  *a2 = *v6;
  v7 = a2 + 2;
  if (*(v6 + 31) < 0)
  {
    sub_25632CB5C(v7, *(v6 + 8), *(v6 + 16));
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 8) + ((v3 >> 4) & 0xFFFFFFFFFFFFFF8));
    v5 = v3 & 0x7F;
  }

  else
  {
    v8 = *(v6 + 8);
    *(v7 + 2) = *(v6 + 24);
    *v7 = v8;
  }

  v9 = v4 + 32 * v5;
  if (*(v9 + 31) < 0)
  {
    operator delete(*(v9 + 8));
    v3 = *(a1 + 32);
  }

  v10 = *(a1 + 40) - 1;
  v11 = v3 + 1;
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v11 >= 0x100)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void *sub_2563798A8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v12 = a1;
    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_25632CCA0();
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v11 = *v4;
  a1[1] = v4 + 1;
  return sub_256379B44(a1, &v11);
}

void sub_256379AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  operator delete(v11);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void *sub_256379B44(void *result, void *a2)
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

      sub_25632CCA0();
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
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_256379CD8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_25632CCA0();
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

uint64_t mlc_event_record(uint64_t result)
{
  if (result)
  {
    atomic_store(1uLL, (result + 8));
  }

  return result;
}

uint64_t mlc_event_reset(uint64_t result)
{
  if (result)
  {
    atomic_store(0, (result + 8));
  }

  return result;
}

unint64_t mlc_event_query(uint64_t a1)
{
  if (a1)
  {
    return atomic_load_explicit((a1 + 8), memory_order_acquire);
  }

  else
  {
    return -1;
  }
}

unint64_t mlc_event_wait(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v4 = xmmword_25637C880;
  v2 = (a1 + 8);
  while (!atomic_load_explicit((a1 + 8), memory_order_acquire))
  {
    nanosleep(&v4, 0);
  }

  return atomic_load_explicit(v2, memory_order_acquire);
}

uint64_t mlc_event_destroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x259C60EF0);
  }

  return result;
}

void *sub_256379F80(size_t size)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0x70978C17uLL))
  {
    return 0;
  }

  else
  {
    return memptr;
  }
}

void sub_256379FC4(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_25637B470((a1 + 8), a2);
  if (v6)
  {
    goto LABEL_15;
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  if (v7 + 2 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v13 = 0;
  HIBYTE(v13) = v7 + 2;
  __p[0] = 11565;
  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(__p + 2, v8, v7);
  }

  *(__p + v7 + 2) = 0;
  v9 = sub_25637B470((a1 + 8), __p);
  v6 = v9;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_15:
      *a3 = 0;
      a3[6] = -1;
      v10 = *(v6 + 16);
      if (v10 != -1)
      {
        __p[0] = a3;
        (off_2868559A8[v10])(__p, v6 + 5);
        a3[6] = v10;
      }

      return;
    }
  }

  else if (v9)
  {
    goto LABEL_15;
  }

  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  fprintf(*MEMORY[0x277D85DF8], "ICE: option '%s' not found.\n", v11);
  *a3 = 0;
  a3[6] = 0;
}

void sub_25637A168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25637A198(uint64_t a1, uint64_t a2)
{
  sub_256379FC4(a1, a2, v3);
  if (v3[6])
  {
    sub_256330378();
  }

  return LOBYTE(v3[0]);
}

uint64_t sub_25637A1EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_286855990[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

double sub_25637A248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_256379FC4(a1, a2, &v5);
  if (v7 != 2)
  {
    sub_256330378();
  }

  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

void sub_25637A2B0(char **a1, __int128 *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a1 + 7;
  v27 = (a1 + 6);
  sub_256345814((a1 + 6), a1[7]);
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_25636BAF0(v30, a2, 8);
  v5 = 0;
  memset(&v29, 0, sizeof(v29));
  memset(&__dst, 0, sizeof(__dst));
  do
  {
    v6 = std::istream::get();
    if (v6 <= 33)
    {
      if (v6 != -1)
      {
        if (v6 != 32 || v5)
        {
LABEL_3:
          std::string::append(&v29, 1uLL, v6);
          continue;
        }

        size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v29.__r_.__value_.__l.__size_;
        }

        if (!size)
        {
LABEL_21:
          v5 = 0;
          continue;
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_25632CB5C(&v42, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          if ((*(&v29.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_49;
          }

LABEL_19:
          v43 = v29;
        }

        else
        {
          v42 = __dst;
          if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_19;
          }

LABEL_49:
          sub_25632CB5C(&v43, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        sub_25637B000(&v36, &v42);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }
        }

        else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = &v29;
            }

            else
            {
              v11 = v29.__r_.__value_.__r.__words[0];
            }

            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v12 = v29.__r_.__value_.__l.__size_;
            }

            sub_256330250(&__dst.__r_.__value_.__l.__data_, v11, v12);
          }

          else
          {
            if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              __dst = v29;
LABEL_66:
              v5 = 0;
LABEL_67:
              *(&v29.__r_.__value_.__s + 23) = 0;
              v29.__r_.__value_.__s.__data_[0] = 0;
              continue;
            }

            sub_256330180(&__dst, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
          }

          if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          v5 = 0;
          goto LABEL_69;
        }

        operator delete(v42.__r_.__value_.__l.__data_);
        goto LABEL_52;
      }
    }

    else
    {
      if (v6 == 34 || v6 == 39)
      {
        if (v6 == v5)
        {
          goto LABEL_21;
        }

        if (v5)
        {
          goto LABEL_3;
        }

        v5 = v6;
        continue;
      }

      if (v6 != 92)
      {
        goto LABEL_3;
      }

      v6 = std::istream::get();
      if (v6 != -1)
      {
        goto LABEL_3;
      }
    }

    v8 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v29.__r_.__value_.__l.__size_;
    }

    if (v8)
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_25632CB5C(&v42, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        if ((*(&v29.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_30;
        }

LABEL_27:
        v43 = v29;
      }

      else
      {
        v42 = __dst;
        if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_27;
        }

LABEL_30:
        sub_25632CB5C(&v43, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      sub_25637B000(&v36, &v42);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_37:
        operator delete(v42.__r_.__value_.__l.__data_);
      }

LABEL_33:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v29;
        }

        else
        {
          v9 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v10 = v29.__r_.__value_.__l.__size_;
        }

        sub_256330250(&__dst.__r_.__value_.__l.__data_, v9, v10);
      }

      else
      {
        if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          __dst = v29;
          goto LABEL_67;
        }

        sub_256330180(&__dst, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

LABEL_69:
      v29.__r_.__value_.__l.__size_ = 0;
      *v29.__r_.__value_.__l.__data_ = 0;
    }
  }

  while ((*(&v32[1].__locale_ + *(v30[0] - 3)) & 2) == 0);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_25632CB5C(&v40, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = __dst;
  }

  v42 = v40;
  memset(&v40, 0, sizeof(v40));
  v41 = &unk_25637E38A;
  *(&v43.__r_.__value_.__s + 23) = 0;
  v43.__r_.__value_.__s.__data_[0] = 0;
  sub_25637B000(&v36, &v42);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_137;
    }

LABEL_75:
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_138:
    operator delete(v40.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_139;
    }

LABEL_77:
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_140:
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_137:
    operator delete(v42.__r_.__value_.__l.__data_);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_138;
    }

LABEL_76:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_139:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_140;
    }
  }

  v30[0] = *MEMORY[0x277D82820];
  v13 = v30[0];
  v14 = *(MEMORY[0x277D82820] + 24);
  *(v30 + *(v30[0] - 3)) = v14;
  v31 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::istream::~istream();
  MEMORY[0x259C60E90](v35);
  v42.__r_.__value_.__r.__words[0] = &unk_2868559D0;
  v43.__r_.__value_.__r.__words[0] = &v42;
  v40.__r_.__value_.__r.__words[0] = &unk_286855A18;
  v41 = &v40;
  v15 = v36;
  v16 = v37;
  if (v36 == v37)
  {
    v21 = &v40;
    goto LABEL_142;
  }

  v17 = 0;
  while (2)
  {
    if (!v41)
    {
LABEL_159:
      sub_25633FB08();
    }

    if (!(*(v41->__r_.__value_.__r.__words[0] + 48))(v41, v15))
    {
      if (!v43.__r_.__value_.__r.__words[0])
      {
        goto LABEL_159;
      }

      if (!(*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15))
      {
        goto LABEL_95;
      }

      if (!v43.__r_.__value_.__r.__words[0])
      {
        goto LABEL_159;
      }

      if (((*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15 + 24) & 1) == 0)
      {
        if ((v15[47] & 0x8000000000000000) != 0)
        {
          if (!*(v15 + 4))
          {
            goto LABEL_123;
          }
        }

        else if (!v15[47])
        {
          goto LABEL_123;
        }

        if ((*(*a1 + 3))(a1, v15))
        {
          (*(*a1 + 2))(a1, v15, v15 + 24);
LABEL_129:
          v17 = 1;
          goto LABEL_84;
        }
      }

      else
      {
LABEL_95:
        if (!v43.__r_.__value_.__r.__words[0])
        {
          goto LABEL_159;
        }

        if (!(*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15))
        {
          goto LABEL_99;
        }

        if (!v43.__r_.__value_.__r.__words[0])
        {
          goto LABEL_159;
        }

        if (!(*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15 + 24))
        {
LABEL_99:
          if (!v43.__r_.__value_.__r.__words[0])
          {
            goto LABEL_159;
          }

          if (((*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15) & 1) == 0)
          {
            if (!v43.__r_.__value_.__r.__words[0])
            {
              goto LABEL_159;
            }

            if ((*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15 + 24))
            {
              if (v17)
              {
                goto LABEL_83;
              }

              v20 = v15[23];
              if (v20 < 0)
              {
                v20 = *(v15 + 1);
              }

              if (!v20)
              {
                goto LABEL_83;
              }

LABEL_132:
              sub_25637B818(v27, v15);
              goto LABEL_83;
            }
          }

          if (!v43.__r_.__value_.__r.__words[0])
          {
            goto LABEL_159;
          }

          if ((*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15))
          {
            goto LABEL_84;
          }

          if (!v43.__r_.__value_.__r.__words[0])
          {
            goto LABEL_159;
          }

          if ((*(*v43.__r_.__value_.__l.__data_ + 48))(v43.__r_.__value_.__r.__words[0], v15 + 24))
          {
            goto LABEL_84;
          }

          if ((v15[23] & 0x8000000000000000) != 0)
          {
            if (*(v15 + 1))
            {
              goto LABEL_131;
            }
          }

          else if (v15[23])
          {
            goto LABEL_131;
          }

          if ((v15[47] & 0x8000000000000000) != 0)
          {
            if (*(v15 + 4))
            {
              goto LABEL_128;
            }
          }

          else if (v15[47])
          {
LABEL_128:
            sub_25637B818(v27, v15 + 3);
            goto LABEL_129;
          }

LABEL_131:
          if (v17)
          {
            goto LABEL_83;
          }

          goto LABEL_132;
        }
      }

LABEL_123:
      HIBYTE(v31) = 4;
      strcpy(v30, "true");
      (*(*a1 + 2))(a1, v15, v30);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }

      goto LABEL_83;
    }

    sub_25636BAF0(v30, v15, 8);
    memset(&v29, 0, sizeof(v29));
    memset(&__dst, 0, sizeof(__dst));
    sub_25637B174(v30, &v29, 0x3Du);
    std::ios_base::getloc((v30 + *(v30[0] - 3)));
    v18 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v39);
    sub_25637B174(v30, &__dst, v19);
    (*(*a1 + 2))(a1, &v29, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

LABEL_116:
      operator delete(v29.__r_.__value_.__l.__data_);
    }

LABEL_89:
    v30[0] = v13;
    *(v30 + *(v13 - 3)) = v14;
    v31 = MEMORY[0x277D82878] + 16;
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::istream::~istream();
    MEMORY[0x259C60E90](v35);
LABEL_83:
    v17 = 0;
LABEL_84:
    v15 += 48;
    if (v15 != v16)
    {
      continue;
    }

    break;
  }

  v21 = v41;
  if (v41 == &v40)
  {
LABEL_142:
    (*(v21->__r_.__value_.__r.__words[0] + 32))(v21);
    goto LABEL_143;
  }

  if (v41)
  {
    (*(v41->__r_.__value_.__r.__words[0] + 40))();
  }

LABEL_143:
  if (v43.__r_.__value_.__l.__data_ == &v42)
  {
    (*(*v43.__r_.__value_.__l.__data_ + 32))(v43.__r_.__value_.__r.__words[0]);
    v22 = v36;
    if (!v36)
    {
      goto LABEL_158;
    }

    goto LABEL_149;
  }

  if (v43.__r_.__value_.__r.__words[0])
  {
    (*(*v43.__r_.__value_.__l.__data_ + 40))();
  }

  v22 = v36;
  if (v36)
  {
LABEL_149:
    v23 = v37;
    v24 = v22;
    if (v37 != v22)
    {
      do
      {
        if (*(v23 - 1) < 0)
        {
          operator delete(*(v23 - 3));
        }

        v25 = v23 - 6;
        if (*(v23 - 25) < 0)
        {
          operator delete(*v25);
        }

        v23 -= 6;
      }

      while (v25 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

LABEL_158:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_25637AEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_25636BC74(&a23);
  sub_25637B3E8((v28 - 208));
  _Unwind_Resume(a1);
}

void sub_25637B000(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_25632CE68();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_25632CCA0();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void *sub_25637B174(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x259C60D50](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_25637B2D8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x25637B298);
  }

  __cxa_rethrow();
}

uint64_t sub_25637B368(uint64_t a1)
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

void ***sub_25637B3E8(void ***a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v5);
        }

        v3 -= 6;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_25637B470(void *a1, uint64_t a2)
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

  v6 = sub_25632D654(&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

BOOL sub_25637B65C(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  v3 = *a2;
  v4 = a2[1];
  if ((v2 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (v4 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v11 = v5;
  if (v4)
  {
    if ((v2 & 0x80000000) != 0)
    {
      a2 = v3;
    }

    memcpy(__dst, a2, v5);
    v6 = v11;
    v2 = __dst[1];
  }

  else
  {
    v6 = v5;
  }

  v7 = 0;
  *(__dst + v5) = 0;
  if ((v6 & 0x80u) == 0)
  {
    v2 = v6;
  }

  if (v2 == 2)
  {
    v8 = __dst[0];
    if ((v6 & 0x80u) == 0)
    {
      v8 = __dst;
    }

    v7 = *v8 == 11565;
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(__dst[0]);
  }

  return v7;
}

BOOL sub_25637B7AC(uint64_t a1, void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (!v3)
  {
    return 0;
  }

  if ((v2 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = memchr(v4, 61, v3);
  if (v5)
  {
    v6 = v5 - v4 == -1;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

void *sub_25637B818(uint64_t a1, const void **a2)
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

void sub_25637B9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2563457AC(va);
  _Unwind_Resume(a1);
}

double sub_25637B9C0(uint64_t a1)
{
  *a1 = &unk_286855A60;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_25637BA08(uint64_t a1)
{
  *a1 = &unk_286855A60;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return nullsub_34(a1);
}

uint64_t sub_25637BA88(uint64_t a1)
{
  *a1 = &unk_286855A60;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return nullsub_34(a1);
}

void sub_25637BB08(uint64_t a1)
{
  *a1 = &unk_286855A60;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  v4 = nullsub_34(a1);

  j__free(v4);
}

void **sub_25637BB8C(uint64_t a1, void **a2)
{
  result = (a1 + 56);
  if (result != a2)
  {
    if (*(a1 + 79) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_256330250(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_256330180(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

void sub_25637BBF4(void *a1, unint64_t a2)
{
  v5 = a1[1];
  v6 = a1[2];
  v4 = (a1 + 1);
  v14 = 0;
  v7 = (v6 - v5) >> 3;
  v8 = a2 >= v7;
  v9 = a2 > v7;
  v10 = a2 - v7;
  if (v9)
  {
    sub_25637BEDC(v4, v10, &v14);
  }

  else if (!v8)
  {
    a1[2] = v5 + 8 * a2;
  }

  v11 = a1[4];
  v12 = a1[5];
  v14 = 0;
  v13 = (v12 - v11) >> 3;
  if (a2 <= v13)
  {
    if (a2 < v13)
    {
      a1[5] = v11 + 8 * a2;
    }
  }

  else
  {
    sub_25637BEDC((a1 + 4), a2 - v13, &v14);
  }
}

void sub_25637BCD8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  if (v4 != a2)
  {
    sub_25636A004(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8) - *a2;
  v9 = 0;
  v8 = (v6 - v5) >> 3;
  if (v7 >> 3 <= v8)
  {
    if (v7 >> 3 < v8)
    {
      *(a1 + 40) = v5 + v7;
    }
  }

  else
  {
    sub_25637BEDC(a1 + 32, (v7 >> 3) - v8, &v9);
  }
}

char *sub_25637BD60(uint64_t a1, uint64_t a2)
{
  result = (a1 + 32);
  if (result != a2)
  {
    return sub_25636A004(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  return result;
}

uint64_t sub_25637BDB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v1 - v2 - 8;
  if (v3 >= 0x38)
  {
    v7 = (v3 >> 3) + 1;
    v5 = (v2 + 8 * (v7 & 0x3FFFFFFFFFFFFFF8));
    v8 = v2 + 2;
    v9.i64[0] = 0x100000001;
    v9.i64[1] = 0x100000001;
    v10 = v7 & 0x3FFFFFFFFFFFFFF8;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    do
    {
      v13 = v8[-2];
      v12 = v8[-1];
      v15 = *v8;
      v14 = v8[1];
      v8 += 4;
      v9 = vmulq_s32(v9, vuzp1q_s32(v13, v12));
      v11 = vmulq_s32(v11, vuzp1q_s32(v15, v14));
      v10 -= 8;
    }

    while (v10);
    v16 = vmulq_s32(v11, v9);
    *v16.i8 = vmul_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    v4 = v16.i32[0] * v16.i32[1];
    if (v7 == (v7 & 0x3FFFFFFFFFFFFFF8))
    {
      return v4;
    }
  }

  else
  {
    v4 = 1;
    v5 = *(a1 + 8);
  }

  do
  {
    v17 = v5->i32[0];
    v5 = (v5 + 8);
    v4 *= v17;
  }

  while (v5 != v1);
  return v4;
}

uint64_t sub_25637BE5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      if (*(v1 + 8 * v4) > v5)
      {
        v6 = v4;
        v5 = *(v1 + 8 * v4);
      }

      ++v4;
    }

    while (v7 != v4);
  }

  v8 = *(v1 + 8 * v6);
  v9 = *(*(a1 + 8) + 8 * v6);
  v10 = *(a1 + 84);
  if (v10 > 0xC)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_25637D820[v10];
  }

  return v9 * v8 * v11;
}

void sub_25637BEDC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      sub_25632CE68();
    }

    v8 = v4 - *a1;
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

      sub_25632CCA0();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7828]();
}

{
  return MEMORY[0x2821F7870]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
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