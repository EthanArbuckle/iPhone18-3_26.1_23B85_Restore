_BYTE *sub_256395630(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2563894A4();
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

uint64_t sub_2563956E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_286856678[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void **sub_256395744(void **a1)
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
          (off_286856678[v5])(&v7, v3 - 10);
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

uint64_t sub_2563957EC(uint64_t a1)
{
  *(a1 + 8) = 0u;
  v1 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_286856658;
  sub_2563943C8();
  v2 = qword_27F832E70;
  if (qword_27F832E68 != qword_27F832E70)
  {
    v3 = qword_27F832E68 + 16;
    do
    {
      v4 = v3 - 16;
      v5 = *(v3 - 16);
      v6 = strlen(v5);
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_2563894A4();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      v19 = v6;
      if (v6)
      {
        memmove(&__dst, v5, v6);
      }

      *(&__dst + v7) = 0;
      p_dst = &__dst;
      v8 = sub_256396BA8(v1, &__dst);
      v9 = *(v8 + 16);
      v10 = *(v3 + 24);
      if (v9 == -1)
      {
        if (v10 != -1)
        {
LABEL_14:
          p_dst = (v8 + 5);
          (off_2868566A8[v10])(&p_dst);
        }
      }

      else
      {
        if (v10 != -1)
        {
          goto LABEL_14;
        }

        v11 = v8;
        (off_286856678[v9])(&p_dst, v8 + 5);
        *(v11 + 16) = -1;
      }

      if (v19 < 0)
      {
        operator delete(__dst);
      }

      v3 += 56;
    }

    while (v4 + 56 != v2);
  }

  v12 = getenv("__UNOWUD");
  if (v12)
  {
    v13 = v12;
    v14 = strlen(v12);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2563894A4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v19 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    *(&__dst + v15) = 0;
    sub_25639846C(a1, &__dst);
    if (v19 < 0)
    {
      operator delete(__dst);
    }
  }

  return a1;
}

void sub_256395A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_256390478(a9);
  _Unwind_Resume(a1);
}

void sub_256395AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  v7 = *(a2 + 8);
  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v8 > 1)
  {
    v10 = *a2;
    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (*v11 == 11565)
    {
      if (v6 < 0)
      {
        sub_25638D2E0(v36, v10, v7);
      }

      else
      {
        *v36 = *a2;
        v37 = *(a2 + 16);
      }

      goto LABEL_19;
    }

    v9 = v8 + 2;
    if (v8 + 2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2563894A4();
    }

    if (v9 > 0x16)
    {
      operator new();
    }
  }

  else
  {
    LOBYTE(v9) = v8 | 2;
  }

  v36[1] = 0;
  v37 = 0;
  v36[0] = 11565;
  HIBYTE(v37) = v9;
  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v36 + 2, v12, v8);
  }

  *(v36 + v8 + 2) = 0;
LABEL_19:
  sub_2563943C8();
  v13 = qword_27F832E68;
  sub_2563943C8();
  v14 = qword_27F832E70;
  if (v13 == qword_27F832E70)
  {
    goto LABEL_45;
  }

  do
  {
    v15 = *v13;
    v16 = strlen(*v13);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2563894A4();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v40) = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    v18 = 0;
    *(&__dst + v17) = 0;
    v19 = SHIBYTE(v40);
    if (v40 >= 0)
    {
      v20 = HIBYTE(v40);
    }

    else
    {
      v20 = *(&__dst + 1);
    }

    v21 = HIBYTE(v37);
    if (v37 < 0)
    {
      v21 = v36[1];
    }

    if (v20 == v21)
    {
      if (v40 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v37 >= 0)
      {
        v23 = v36;
      }

      else
      {
        v23 = v36[0];
      }

      v18 = memcmp(p_dst, v23, v20) == 0;
      if (v19 < 0)
      {
LABEL_39:
        operator delete(__dst);
        if (v18)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else if (SHIBYTE(v40) < 0)
    {
      goto LABEL_39;
    }

    if (v18)
    {
      goto LABEL_45;
    }

LABEL_43:
    v13 += 56;
  }

  while (v13 != v14);
  v13 = v14;
LABEL_45:
  sub_2563943C8();
  if (v13 == qword_27F832E70)
  {
    if (*(a2 + 23) >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v30 = a3;
    }

    else
    {
      v30 = *a3;
    }

    fprintf(*MEMORY[0x277D85DF8], "Unknown option %s=%s\n", v29, v30);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_62;
    }

    return;
  }

  v24 = *(v13 + 8);
  if (v24 == 2)
  {
    *&__dst = a2;
    v35 = sub_256397554((a1 + 8), a2);
    sub_256396A04(v35 + 5, (v35 + 5), a3);
    goto LABEL_72;
  }

  if (v24 == 1)
  {
    sub_256397900(&__dst, a3, 8);
    v38 = 0;
    *(&__dst + *(__dst - 24) + 8) |= 1u;
    MEMORY[0x259C61600](&__dst, &v38);
    v31 = v38;
    *&__dst = *MEMORY[0x277D82820];
    *(&__dst + *(__dst - 24)) = *(MEMORY[0x277D82820] + 24);
    v40 = MEMORY[0x277D82878] + 16;
    if (v45 < 0)
    {
      operator delete(__p);
    }

    v40 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v41);
    std::istream::~istream();
    MEMORY[0x259C61750](v46);
    *&__dst = a2;
    v32 = sub_256397554((a1 + 8), a2);
    v33 = v32;
    v34 = *(v32 + 16);
    if (v34 != -1)
    {
      if (v34 == 1)
      {
        v32[5] = v31;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_77:
        sub_25638D2E0(&__dst, *a2, *(a2 + 8));
        goto LABEL_78;
      }

      (off_286856678[v34])(&__dst, v32 + 5);
    }

    v33[5] = v31;
    *(v33 + 16) = 1;
    if (*(a2 + 23) < 0)
    {
      goto LABEL_77;
    }

    goto LABEL_73;
  }

  if (v24)
  {
LABEL_72:
    if (*(a2 + 23) < 0)
    {
      goto LABEL_77;
    }

    goto LABEL_73;
  }

  sub_256397900(&__dst, a3, 8);
  LOBYTE(v38) = 0;
  *(&__dst + *(__dst - 24) + 8) |= 1u;
  MEMORY[0x259C615F0](&__dst, &v38);
  v25 = v38;
  *&__dst = *MEMORY[0x277D82820];
  *(&__dst + *(__dst - 24)) = *(MEMORY[0x277D82820] + 24);
  v40 = MEMORY[0x277D82878] + 16;
  if (v45 < 0)
  {
    operator delete(__p);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v41);
  std::istream::~istream();
  MEMORY[0x259C61750](v46);
  *&__dst = a2;
  v26 = sub_256397554((a1 + 8), a2);
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28 == -1)
  {
LABEL_89:
    *(v27 + 40) = v25;
    *(v27 + 16) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_77;
  }

  if (v28)
  {
    (off_286856678[v28])(&__dst, v26 + 5);
    goto LABEL_89;
  }

  *(v26 + 40) = v25;
  if (*(a2 + 23) < 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  __dst = *a2;
  v40 = *(a2 + 16);
LABEL_78:
  if (*(a3 + 23) < 0)
  {
    sub_25638D2E0(&v41, *a3, *(a3 + 8));
  }

  else
  {
    v41 = *a3;
    v42 = *(a3 + 16);
  }

  v43 = 2;
  sub_256397C9C((a1 + 8), &__dst);
  if (v43 != -1)
  {
    (off_286856678[v43])(&v38, &v41);
  }

  v43 = -1;
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_62:
    operator delete(v36[0]);
    return;
  }

  operator delete(__dst);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_62;
  }
}

void sub_256396250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_256397A84(&a22);
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2563962E8(uint64_t a1, const void **a2)
{
  sub_2563943C8();
  v3 = qword_27F832E68;
  sub_2563943C8();
  v4 = qword_27F832E70;
  if (v3 != qword_27F832E70)
  {
    while (1)
    {
      v5 = *v3;
      v6 = strlen(*v3);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2563894A4();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      v18 = v6;
      if (v6)
      {
        memmove(__dst, v5, v6);
      }

      v8 = 0;
      *(__dst + v7) = 0;
      v9 = v18;
      if ((v18 & 0x80u) == 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = __dst[1];
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = a2[1];
      }

      if (v10 == v11)
      {
        if ((v18 & 0x80u) == 0)
        {
          v13 = __dst;
        }

        else
        {
          v13 = __dst[0];
        }

        if (v12 >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        v8 = memcmp(v13, v14, v10) == 0;
        if (v9 < 0)
        {
LABEL_24:
          operator delete(__dst[0]);
          if (v8)
          {
            break;
          }

          goto LABEL_25;
        }
      }

      else if (v18 < 0)
      {
        goto LABEL_24;
      }

      if (v8)
      {
        break;
      }

LABEL_25:
      v3 += 56;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }
  }

  sub_2563943C8();
  if (v3 != qword_27F832E70)
  {
    return *(v3 + 8);
  }

  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  fprintf(*MEMORY[0x277D85DF8], "Unknown option key %s!\n", v16);
  return 0;
}

uint64_t sub_2563964AC(uint64_t a1)
{
  *a1 = &unk_2868562B8;
  sub_25638D0CC(a1 + 48, *(a1 + 56));
  sub_2563904DC(a1 + 8);

  return nullsub_1(a1);
}

void sub_256396510(uint64_t a1)
{
  *a1 = &unk_2868562B8;
  sub_25638D0CC(a1 + 48, *(a1 + 56));
  sub_2563904DC(a1 + 8);
  v2 = nullsub_1(a1);

  j__free(v2);
}

void *sub_256396578(void *result, uint64_t a2, unint64_t a3)
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

    sub_2563895F4();
  }

  return result;
}

void sub_2563966DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256396854(va);
  _Unwind_Resume(a1);
}

void *sub_25639672C(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_25638D2E0(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_256396758(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_286856678[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_2563967B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 56)
    {
      v6 = *(v4 - 16);
      if (v6 != -1)
      {
        (off_286856678[v6])(&v8, v4 - 40);
      }

      *(v4 - 16) = -1;
    }
  }

  return a1;
}

void ***sub_256396854(void ***a1)
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
          v6 = *(v4 - 4);
          if (v6 != -1)
          {
            (off_286856678[v6])(&v8, v4 - 10);
          }

          *(v4 - 4) = -1;
          v4 -= 14;
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

uint64_t sub_25639690C(uint64_t result, _BYTE *a2, _BYTE *a3)
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
    result = (off_286856678[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 0;
  return result;
}

uint64_t sub_256396980(uint64_t result, void *a2, void *a3)
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
    result = (off_286856678[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 24) = 1;
  return result;
}

void **sub_256396A04(void **result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 6);
  if (v3 != 2)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_25638D2E0(&v11, *a3, *(a3 + 1));
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

    result = (off_286856678[v3])(&v13, v6);
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

      return sub_256391D6C(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_256391C9C(a2, v10, v9);
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

uint64_t sub_256396B3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    (off_286856678[v2])(&v4, a1 + 24);
  }

  *(a1 + 48) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_256396BA8(void *a1, uint64_t a2)
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

  v6 = sub_256396FB8(&v21, a2, v5);
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

void sub_256396F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256396F2C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_256396F2C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != -1)
      {
        (off_286856678[v3])(&v5, v2 + 40);
      }

      *(v2 + 64) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_256396FB8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v38 + v32 + v29;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v30 + v38 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v44 + v31 + v33;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v65 + v56 + v54 + v55;
      v47 = __ROR8__(v65 + v56 + v54, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

void sub_2563973F0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_25638ADA8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_256397554(void *a1, uint64_t a2)
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

  v6 = sub_256396FB8(&v21, a2, v5);
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

void sub_2563978E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256396F2C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_256397900(uint64_t *a1, __int128 *a2, int a3)
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
  sub_256397BA4((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_256397A5C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x259C61750](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_256397A84(uint64_t a1)
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
  MEMORY[0x259C61750](a1 + 120);
  return a1;
}

uint64_t sub_256397BA4(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C61700](a1 + 8);
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
      sub_256391C9C((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_2563925EC(a1);
  return a1;
}

void sub_256397C74(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t **sub_256397C9C(void *a1, uint64_t a2)
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

  v6 = sub_256396FB8(v21, a2, v5);
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
    sub_256397FF4();
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

void sub_256397FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256396F2C(va);
  _Unwind_Resume(a1);
}

__n128 sub_256398104(__n128 **a1, __n128 *a2)
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

void sub_256398128(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_256399780((a1 + 8), a2);
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
    sub_2563894A4();
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
  v9 = sub_256399780((a1 + 8), __p);
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
        (off_2868566F0[v10])(__p, v6 + 5);
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

void sub_2563982CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563982FC(uint64_t a1, uint64_t a2)
{
  sub_256398128(a1, a2, v3);
  if (v3[6])
  {
    sub_2563996A8();
  }

  return LOBYTE(v3[0]);
}

uint64_t sub_256398350(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2868566D8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t sub_2563983AC(uint64_t a1, uint64_t a2)
{
  sub_256398128(a1, a2, v3);
  if (v4 != 1)
  {
    sub_2563996A8();
  }

  return v3[0];
}

double sub_256398404@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_256398128(a1, a2, &v5);
  if (v7 != 2)
  {
    sub_2563996A8();
  }

  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

void sub_25639846C(char **a1, __int128 *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a1 + 7;
  v27 = (a1 + 6);
  sub_25638D0CC((a1 + 6), a1[7]);
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_256397900(v30, a2, 8);
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
          sub_25638D2E0(&v42, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
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
          sub_25638D2E0(&v43, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
        }

        sub_2563991BC(&v36, &v42);
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

            sub_256391D6C(&__dst.__r_.__value_.__l.__data_, v11, v12);
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

            sub_256391C9C(&__dst, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
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
        sub_25638D2E0(&v42, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
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
        sub_25638D2E0(&v43, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      sub_2563991BC(&v36, &v42);
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

        sub_256391D6C(&__dst.__r_.__value_.__l.__data_, v9, v10);
      }

      else
      {
        if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          __dst = v29;
          goto LABEL_67;
        }

        sub_256391C9C(&__dst, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
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
    sub_25638D2E0(&v40, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = __dst;
  }

  v42 = v40;
  memset(&v40, 0, sizeof(v40));
  v41 = "";
  *(&v43.__r_.__value_.__s + 23) = 0;
  v43.__r_.__value_.__s.__data_[0] = 0;
  sub_2563991BC(&v36, &v42);
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
  MEMORY[0x259C61750](v35);
  v42.__r_.__value_.__r.__words[0] = &unk_286856730;
  v43.__r_.__value_.__r.__words[0] = &v42;
  v40.__r_.__value_.__r.__words[0] = &unk_286856778;
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
      sub_25638EE18();
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
              sub_256399B28(v27, v15);
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
            sub_256399B28(v27, v15 + 3);
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

    sub_256397900(v30, v15, 8);
    memset(&v29, 0, sizeof(v29));
    memset(&__dst, 0, sizeof(__dst));
    sub_256399380(v30, &v29, 0x3Du);
    std::ios_base::getloc((v30 + *(v30[0] - 3)));
    v18 = std::locale::use_facet(&v39, MEMORY[0x277D82680]);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v39);
    sub_256399380(v30, &__dst, v19);
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
    MEMORY[0x259C61750](v35);
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

void sub_2563990A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_256397A84(&a23);
  sub_2563996F8((v28 - 208));
  _Unwind_Resume(a1);
}

void sub_2563991BC(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_2563895F4();
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

      sub_25638ADA8();
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

uint64_t sub_256399330(uint64_t a1)
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

void *sub_256399380(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x259C615D0](&v11, a1, 1);
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

void sub_2563994E4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2563994A4);
  }

  __cxa_rethrow();
}

uint64_t sub_256399574(uint64_t a1)
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

uint64_t sub_2563995F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v2 = (a2 + 8);
  *(a2 + 16) = 0;
  *a2 = a2 + 8;
  v3 = *(result + 48);
  v4 = (result + 56);
  if (v3 != (result + 56))
  {
    do
    {
      result = sub_256399CD0(a2, v2, v3 + 4);
      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_2563996A8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, &unk_286856708, std::exception::~exception);
}

void ***sub_2563996F8(void ***a1)
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

uint64_t **sub_256399780(void *a1, uint64_t a2)
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

  v6 = sub_256396FB8(&v21, a2, v5);
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

BOOL sub_25639996C(uint64_t a1, const void **a2)
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

BOOL sub_256399ABC(uint64_t a1, void **a2)
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

void *sub_256399B28(uint64_t a1, const void **a2)
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

void sub_256399CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25638D518(va);
  _Unwind_Resume(a1);
}

uint64_t sub_256399CD0(uint64_t **a1, uint64_t *a2, const void **a3)
{
  result = *sub_256399DD8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_256399DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25638D518(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_256399DD8(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
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

void sub_25639A17C(const __CFString *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (CStringPtr)
    {
      v5 = CStringPtr;
      v6 = strlen(CStringPtr);
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_2563894A4();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v6;
      if (v6)
      {
        memmove(a2, v5, v6);
      }

      *(a2 + v7) = 0;
    }

    else
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      if (MaximumSizeForEncoding != -1)
      {
        if (MaximumSizeForEncoding > -2)
        {
          operator new();
        }

        sub_2563895F4();
      }

      if (CFStringGetCString(a1, 0, 0, 0x8000100u))
      {
        v11 = strlen(0);
        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2563894A4();
        }

        v12 = v11;
        if (v11 >= 0x17)
        {
          operator new();
        }

        *(a2 + 23) = v11;
        if (v11)
        {
          memcpy(a2, 0, v11);
        }

        *(a2 + v12) = 0;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_25639A374(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25639A38C(CFDictionaryRef theDict@<X1>, uint64_t a2@<X0>, const char **a3@<X8>)
{
  if (!a2)
  {
    if (!CFDictionaryGetValue(theDict, @"architecture"))
    {
      a3[2] = 0;
      a3[3] = 0;
      v4 = "MLCompiler: no target architecture specified!";
      goto LABEL_3;
    }

    Value = CFDictionaryGetValue(theDict, @"parameters");
    if (!Value)
    {
      a3[2] = 0;
      a3[3] = 0;
      v4 = "MLCompiler: no parameters specified!";
      goto LABEL_3;
    }

    v7 = Value;
    v8 = CFDictionaryGetValue(theDict, @"MIL");
    if (!v8)
    {
      a3[2] = 0;
      a3[3] = 0;
      v4 = "MLCompiler: cannot get the MIL program!";
      goto LABEL_3;
    }

    v9 = v8;
    v10 = CFDictionaryGetValue(theDict, @"function");
    if (!v10)
    {
      a3[2] = 0;
      a3[3] = 0;
      v4 = "MLCompiler: cannot get the MIL function name!";
      goto LABEL_3;
    }

    v11 = v10;
    v12 = CFDictionaryGetValue(v7, @"bnns-graph");
    if (!v12)
    {
      goto LABEL_17;
    }

    sub_25639A17C(v12, __p);
    if (v15 < 0)
    {
      v13 = __p[1] == 4 && *__p[0] == 1702195828;
      operator delete(__p[0]);
      goto LABEL_22;
    }

    if (v15 == 4)
    {
      v13 = LODWORD(__p[0]) == 1702195828;
    }

    else
    {
LABEL_17:
      v13 = 0;
    }

LABEL_22:
    *a3 = 0;
    a3[1] = v9;
    a3[2] = v11;
    *(a3 + 24) = v13;
    return;
  }

  a3[2] = 0;
  a3[3] = 0;
  v4 = "MLCompiler: validation version mismatch!";
LABEL_3:
  *a3 = v4;
  a3[1] = 0;
}

__CFDictionary *sub_25639A500(const char *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0;
  v6 = CFNumberCreate(v2, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"resultsVersion", v6);
  CFRelease(v6);
  v11 = -1;
  v7 = CFNumberCreate(v2, kCFNumberIntType, &v11);
  v8 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v9 = CFStringCreateWithCString(v2, a1, 0x8000100u);
  CFDictionaryAddValue(v8, @"errorMsg", v9);
  CFDictionaryAddValue(Mutable, v7, v8);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v8);
  return Mutable;
}

__CFDictionary *sub_25639A62C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"MIL", v1);
  CFDictionaryAddValue(Mutable, @"function", v2);
  CFDictionaryAddValue(Mutable, @"parameters", &stru_286856890);
  CFDictionaryAddValue(Mutable, @"architecture", @"local");
  BNNSGraphE5ValidateGetSupportedVersion();
  v5 = BNNSGraphE5Validate();
  CFRelease(Mutable);
  Count = CFDictionaryGetCount(v5);
  MutableCopy = CFDictionaryCreateMutableCopy(v3, Count, v5);
  CFRelease(v5);
  valuePtr = 0;
  v8 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryReplaceValue(MutableCopy, @"resultsVersion", v8);
  CFRelease(v8);
  return MutableCopy;
}

void sub_25639A788(char *a1, void *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_256385000, log, OS_LOG_TYPE_ERROR, "Can't open BNNSGraph model at %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25639A814(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_256385000, a2, OS_LOG_TYPE_ERROR, "Can't open model at %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_25639A88C(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "mlc_managed_model_t mlc_services_model_create_cached(unsigned char *)";
  _os_log_error_impl(&dword_256385000, log, OS_LOG_TYPE_ERROR, "%s: no longer supported", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_25639A998()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_25638D6A4();
  sub_25638D688(&dword_256385000, v0, v1, "Rank %zu out of bounds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25639AA00()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_25638D6A4();
  sub_25638D688(&dword_256385000, v0, v1, "Tried to get tensor shape of unknown tensor %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25639AA68()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_25638D6A4();
  sub_25638D688(&dword_256385000, v0, v1, "Tensor %s: strides must be dense", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25639AAD0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_25638D6A4();
  sub_25638D688(&dword_256385000, v0, v1, "Tried to set tensor shape of unknown tensor %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25639AB6C(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "const char *mlc_services_compile_to_cache(int, const char *const *, unsigned char *)";
  _os_log_error_impl(&dword_256385000, log, OS_LOG_TYPE_ERROR, "%s: no longer supported", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void sub_25639ABF0()
{
  dlerror();
  abort_report_np();
  BNNSGraphCompileFromFile_v2();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
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