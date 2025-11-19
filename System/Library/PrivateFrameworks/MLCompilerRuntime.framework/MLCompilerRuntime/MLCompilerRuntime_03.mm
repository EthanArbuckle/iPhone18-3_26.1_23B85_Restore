uint64_t sub_25635A234(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = (*(***a5 + 120))(**a5);
  v9 = (*(***a1 + 168))(**a1);
  v10 = (*(***a5 + 176))(**a5);
  v11 = (*(*(*a5)[1] + 176))((*a5)[1]);
  if (v8)
  {
    if (v8 < 4)
    {
      v12 = 0;
      goto LABEL_4;
    }

    v12 = 0;
    if ((v9 - v10) < 0x20 || (v9 - v11) < 0x20)
    {
      goto LABEL_4;
    }

    if (v8 >= 0x10)
    {
      v12 = v8 & 0xFFFFFFFFFFFFFFF0;
      v22 = (v10 + 16);
      v23 = (v11 + 16);
      v24 = (v9 + 16);
      v25 = v8 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v26 = vsubq_s16(*v22, *v23);
        v24[-1] = vsubq_s16(v22[-1], v23[-1]);
        *v24 = v26;
        v22 += 2;
        v23 += 2;
        v24 += 2;
        v25 -= 16;
      }

      while (v25);
      if (v8 == v12)
      {
        return a2 + 1;
      }

      if ((v8 & 0xC) == 0)
      {
LABEL_4:
        v13 = v8 - v12;
        v14 = 2 * v12;
        v15 = (v9 + 2 * v12);
        v16 = (v11 + v14);
        v17 = (v10 + v14);
        do
        {
          v19 = *v17++;
          v18 = v19;
          v20 = *v16++;
          *v15++ = v18 - v20;
          --v13;
        }

        while (v13);
        return a2 + 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v27 = v12;
    v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v10 + 2 * v27);
    v29 = (v11 + 2 * v27);
    v30 = (v9 + 2 * v27);
    v31 = v27 - (v8 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v32 = *v28++;
      v33 = v32;
      v34 = *v29++;
      *v30++ = vsub_s16(v33, v34);
      v31 += 4;
    }

    while (v31);
    if (v8 != v12)
    {
      goto LABEL_4;
    }
  }

  return a2 + 1;
}

uint64_t sub_25635A420(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = (*(***a5 + 120))(**a5);
  v9 = (*(***a1 + 168))(**a1);
  v10 = (*(***a5 + 176))(**a5);
  v11 = (*(*(*a5)[1] + 176))((*a5)[1]);
  if (v8)
  {
    if (v8 <= 7)
    {
      v12 = 0;
LABEL_4:
      v13 = v8 - v12;
      v14 = 4 * v12;
      v15 = (v9 + 4 * v12);
      v16 = (v11 + v14);
      v17 = (v10 + v14);
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = *v16++;
        *v15++ = v18 - v20;
        --v13;
      }

      while (v13);
      return a2 + 1;
    }

    v12 = 0;
    if ((v9 - v10) < 0x20)
    {
      goto LABEL_4;
    }

    if ((v9 - v11) < 0x20)
    {
      goto LABEL_4;
    }

    v12 = v8 & 0xFFFFFFFFFFFFFFF8;
    v22 = (v10 + 16);
    v23 = (v11 + 16);
    v24 = (v9 + 16);
    v25 = v8 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v26 = vsubq_s32(*v22, *v23);
      v24[-1] = vsubq_s32(v22[-1], v23[-1]);
      *v24 = v26;
      v22 += 2;
      v23 += 2;
      v24 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v8 != v12)
    {
      goto LABEL_4;
    }
  }

  return a2 + 1;
}

uint64_t sub_25635A5B8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = (*(***a5 + 120))(**a5);
  v9 = (*(***a1 + 168))(**a1);
  v10 = (*(***a5 + 176))(**a5);
  v11 = (*(*(*a5)[1] + 176))((*a5)[1]);
  if (v8)
  {
    if (v8 <= 5)
    {
      v12 = 0;
LABEL_4:
      v13 = v8 - v12;
      v14 = 8 * v12;
      v15 = (v9 + 8 * v12);
      v16 = (v11 + v14);
      v17 = (v10 + v14);
      do
      {
        v19 = *v17++;
        v18 = v19;
        v20 = *v16++;
        *v15++ = v18 - v20;
        --v13;
      }

      while (v13);
      return a2 + 1;
    }

    v12 = 0;
    if ((v9 - v10) < 0x20)
    {
      goto LABEL_4;
    }

    if ((v9 - v11) < 0x20)
    {
      goto LABEL_4;
    }

    v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = (v10 + 16);
    v23 = (v11 + 16);
    v24 = (v9 + 16);
    v25 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v26 = vsubq_s64(*v22, *v23);
      v24[-1] = vsubq_s64(v22[-1], v23[-1]);
      *v24 = v26;
      v22 += 2;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v8 != v12)
    {
      goto LABEL_4;
    }
  }

  return a2 + 1;
}

uint64_t sub_25635A750(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = (*(***a5 + 120))(**a5);
  v9 = (*(***a1 + 168))(**a1);
  v10 = (*(***a5 + 176))(**a5);
  v11 = (*(*(*a5)[1] + 176))((*a5)[1]);
  if (v8)
  {
    if (v8 <= 7)
    {
      v12 = 0;
LABEL_4:
      v13 = v8 - v12;
      v14 = 4 * v12;
      v15 = (v9 + 4 * v12);
      v16 = (v11 + v14);
      v17 = (v10 + v14);
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *v16++;
        *v15++ = v19 - v20;
        --v13;
      }

      while (v13);
      return a2 + 1;
    }

    v12 = 0;
    if ((v9 - v10) < 0x20)
    {
      goto LABEL_4;
    }

    if ((v9 - v11) < 0x20)
    {
      goto LABEL_4;
    }

    v12 = v8 & 0xFFFFFFFFFFFFFFF8;
    v22 = (v10 + 16);
    v23 = (v11 + 16);
    v24 = (v9 + 16);
    v25 = v8 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v26 = vsubq_f32(*v22, *v23);
      v24[-1] = vsubq_f32(v22[-1], v23[-1]);
      *v24 = v26;
      v22 += 2;
      v23 += 2;
      v24 += 2;
      v25 -= 8;
    }

    while (v25);
    if (v8 != v12)
    {
      goto LABEL_4;
    }
  }

  return a2 + 1;
}

uint64_t sub_25635A8E8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = (*(***a5 + 120))(**a5);
  v9 = (*(***a1 + 168))(**a1);
  v10 = (*(***a5 + 176))(**a5);
  v11 = (*(*(*a5)[1] + 176))((*a5)[1]);
  if (v8)
  {
    if (v8 <= 5)
    {
      v12 = 0;
LABEL_4:
      v13 = v8 - v12;
      v14 = 8 * v12;
      v15 = (v9 + 8 * v12);
      v16 = (v11 + v14);
      v17 = (v10 + v14);
      do
      {
        v18 = *v17++;
        v19 = v18;
        v20 = *v16++;
        *v15++ = v19 - v20;
        --v13;
      }

      while (v13);
      return a2 + 1;
    }

    v12 = 0;
    if ((v9 - v10) < 0x20)
    {
      goto LABEL_4;
    }

    if ((v9 - v11) < 0x20)
    {
      goto LABEL_4;
    }

    v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = (v10 + 16);
    v23 = (v11 + 16);
    v24 = (v9 + 16);
    v25 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v26 = vsubq_f64(*v22, *v23);
      v24[-1] = vsubq_f64(v22[-1], v23[-1]);
      *v24 = v26;
      v22 += 2;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v8 != v12)
    {
      goto LABEL_4;
    }
  }

  return a2 + 1;
}

uint64_t sub_25635AA90(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = (*(***a1 + 168))(**a1);
  v8 = (*(***a5 + 176))(**a5);
  v9 = (*(***a5 + 128))(**a5);
  memcpy(v7, v8, v9);
  return a2 + 1;
}

uint64_t sub_25635AB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635AC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635AD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635AE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635AF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635AFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635B088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  (*(***a5 + 176))(**a5);
  v7 = (*(***a5 + 120))(**a5);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      sub_256368A38(**a5);
      v9 = sub_25635F1B4(**a5, v9);
      --v8;
    }

    while (v8);
  }

  return a2 + 1;
}

uint64_t sub_25635B144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v8 = (*(***a5 + 176))(**a5);
  v9 = (*(***a5 + 120))(**a5);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D85DF8];
    do
    {
      v14 = sub_256368A38(**a5);
      if (*(v14 + 23) >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = *v14;
      }

      if (fabsf(*(v8 + 4 * v11)) == INFINITY)
      {
        fprintf(*v13, "Inf in %s at index %zu\n", v15, v11);
        v12 = 1;
      }

      v11 = sub_25635F1B4(**a5, v11);
      --v10;
    }

    while (v10);
    if (v12)
    {
      sub_25635B5E4(__p, "name");
      sub_256368D5C(a4, __p, &v25);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 == 2)
      {
        if (SHIBYTE(v26) < 0)
        {
          sub_25632CB5C(__p, v25, *(&v25 + 1));
        }

        else
        {
          *__p = v25;
          v24 = v26;
        }

        v17 = *v13;
        v18 = SHIBYTE(v24);
        v19 = __p[0];
        v20 = sub_256368A38(**a5);
        v21 = __p;
        if (v18 < 0)
        {
          v21 = v19;
        }

        if (*(v20 + 23) >= 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = *v20;
        }

        fprintf(v17, "%s: found invalid values in %s.\n", v21, v22);
        abort();
      }

      sub_256330378();
    }
  }

  return a2 + 1;
}

void sub_25635B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2563300F8(&a18);
  _Unwind_Resume(a1);
}

void sub_25635B378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25635B394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v8 = (*(***a5 + 176))(**a5);
  v9 = (*(***a5 + 120))(**a5);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = MEMORY[0x277D85DF8];
    do
    {
      v14 = sub_256368A38(**a5);
      if (*(v14 + 23) >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = *v14;
      }

      if (fabs(*(v8 + 8 * v11)) == INFINITY)
      {
        fprintf(*v13, "Inf in %s at index %zu\n", v15, v11);
        v12 = 1;
      }

      v11 = sub_25635F1B4(**a5, v11);
      --v10;
    }

    while (v10);
    if (v12)
    {
      sub_25635B5E4(__p, "name");
      sub_256368D5C(a4, __p, &v25);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 == 2)
      {
        if (SHIBYTE(v26) < 0)
        {
          sub_25632CB5C(__p, v25, *(&v25 + 1));
        }

        else
        {
          *__p = v25;
          v24 = v26;
        }

        v17 = *v13;
        v18 = SHIBYTE(v24);
        v19 = __p[0];
        v20 = sub_256368A38(**a5);
        v21 = __p;
        if (v18 < 0)
        {
          v21 = v19;
        }

        if (*(v20 + 23) >= 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = *v20;
        }

        fprintf(v17, "%s: found invalid values in %s.\n", v21, v22);
        abort();
      }

      sub_256330378();
    }
  }

  return a2 + 1;
}

void sub_25635B59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2563300F8(&a18);
  _Unwind_Resume(a1);
}

void sub_25635B5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_25635B5E4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
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

uint64_t sub_25635B69C(uint64_t **a1, uint64_t a2, void *a3)
{
  v6 = sub_256368A38(**a1);
  v7 = sub_25635DFAC(a3 + 40, v6);
  if (v7)
  {
    (*(***a1 + 224))(**a1, v7[5]);
    v8 = sub_2563638CC(a3);
    HIBYTE(v28.__locale_) = 14;
    strcpy(__p, "debug-constant");
    v9 = sub_25637A198(v8, __p);
    if (SHIBYTE(v28.__locale_) < 0)
    {
      v21 = v9;
      operator delete(__p[0]);
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    else if (!v9)
    {
LABEL_5:
      (*(***a1 + 112))(**a1, 0);
      return a2 + 1;
    }

    sub_25635BA88(**a1);
    goto LABEL_5;
  }

  sub_25634984C(__p);
  v11 = sub_256349D6C(__p, "ICE: no constant for '", 22);
  v12 = sub_256368A38(**a1);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = *v12;
  }

  if (v13 >= 0)
  {
    v15 = *(v12 + 23);
  }

  else
  {
    v15 = *(v12 + 8);
  }

  v16 = sub_256349D6C(v11, v14, v15);
  v17 = sub_256349D6C(v16, "' in ", 5);
  v18 = MEMORY[0x259C60DF0](v17, a3[43]);
  sub_256349D6C(v18, "-element constant table.", 24);
  v19 = a3[4];
  if ((v35 & 0x10) != 0)
  {
    v22 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v22 = v31;
    }

    v23 = &v30;
    goto LABEL_21;
  }

  if ((v35 & 8) != 0)
  {
    v23 = v29;
    v22 = v29[2];
LABEL_21:
    v24 = *v23;
    v20 = v22 - *v23;
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v26 = v22 - *v23;
    if (v20)
    {
      memmove(&v25, v24, v20);
    }

    goto LABEL_27;
  }

  v20 = 0;
  v26 = 0;
LABEL_27:
  *(&v25 + v20) = 0;
  sub_25637969C(v19, 4, &v25);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v28);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](&v36);
  return -1;
}

void sub_25635BA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_25635291C(&a15, MEMORY[0x277D82828]);
  MEMORY[0x259C60E90](&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_25635BA88(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = sub_256368A38(a1);
  if (*(v3 + 23) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *v3;
  }

  if (v2 != 9)
  {
    return printf("%s is not fp32. skipping.\n", v4);
  }

  v5 = (*(*a1 + 176))(a1);
  printf("load %s(%p) = {\n", v4, v5);
  v6 = (*(*a1 + 176))(a1);
  if ((*(*a1 + 120))(a1))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!v8)
      {
        putchar(9);
      }

      printf("%10.8f ", *(v6 + 4 * v7));
      if (v8 >= 5)
      {
        putchar(10);
        v8 = 0;
      }

      else
      {
        ++v8;
      }

      ++v7;
    }

    while (v7 < (*(*a1 + 120))(a1));
    if (v8)
    {
      putchar(10);
    }
  }

  return puts("}");
}

uint64_t sub_25635BC68(uint64_t *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = &unk_286855360;
  v11[1] = sub_25635B69C;
  v12 = v11;
  sub_256352F58(a1, 0, 0, 27, 0, 0, v11);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  v4 = 4;
  v9[0] = &unk_286855360;
  v9[1] = sub_25635BFD8;
  v10 = v9;
  sub_256352F58(a1, &v4, 1, 42, 0, 0, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v4 = 8;
  v7[0] = &unk_286855360;
  v7[1] = sub_25635CA74;
  v8 = v7;
  sub_256352F58(a1, &v4, 1, 42, 0, 0, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  v4 = 9;
  v5[0] = &unk_286855360;
  v5[1] = sub_25635D510;
  v6 = v5;
  sub_256352F58(a1, &v4, 1, 42, 0, 0, v5);
  result = v6;
  if (v6 == v5)
  {
    result = (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    result = (*(*v6 + 40))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25635BFA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25635BFD8(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4)
{
  HIBYTE(v44) = 6;
  strcpy(&v43, "offset");
  sub_256368D5C(a4, &v43, &v45);
  if (v47)
  {
    sub_256330378();
  }

  v8 = v45;
  v47 = -1;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  HIBYTE(v42) = 4;
  strcpy(__p, "path");
  sub_256368D5C(a4, __p, &v45);
  if (v47 != 2)
  {
    sub_256330378();
  }

  v43 = v45;
  v44 = v46;
  v46 = 0;
  v45 = 0uLL;
  v47 = -1;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v40[1]) = 4;
  strcpy(v40, "type");
  sub_256368D5C(a4, v40, &v45);
  if (v47 != 2)
  {
    sub_256330378();
  }

  *__p = v45;
  v42 = v46;
  v46 = 0;
  v45 = 0uLL;
  v47 = -1;
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  v9 = sub_2563638CC(a3);
  BYTE7(v40[1]) = 18;
  strcpy(v40, "load-constant-path");
  sub_25637A248(v9, v40, &v45);
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  memset(v39, 0, 24);
  v10 = SHIBYTE(v46);
  if (v46 >= 0)
  {
    v11 = &v45;
  }

  else
  {
    v11 = v45;
  }

  if (v46 < 0)
  {
    v10 = *(&v45 + 1);
  }

  sub_25635E1D8(v39, v11, (v11 + v10));
  memset(&v38, 0, sizeof(v38));
  v12 = SHIBYTE(v44);
  if (v44 >= 0)
  {
    v13 = &v43;
  }

  else
  {
    v13 = v43;
  }

  if (v44 < 0)
  {
    v12 = *(&v43 + 1);
  }

  sub_25635E1D8(&v38.__pn_, v13, (v13 + v12));
  if ((v39[23] & 0x80000000) != 0)
  {
    sub_25632CB5C(&v39[32], *v39, *&v39[8]);
  }

  else
  {
    *&v39[32] = *v39;
  }

  sub_25635E110(&v39[32], &v38);
  if ((v39[55] & 0x80000000) != 0)
  {
    sub_25632CB5C(v40, *&v39[32], *&v39[40]);
  }

  else
  {
    v40[0] = *&v39[32];
    *&v40[1] = *&v39[48];
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  v43 = v40[0];
  v44 = *&v40[1];
  BYTE7(v40[1]) = 0;
  LOBYTE(v40[0]) = 0;
  if ((v39[55] & 0x80000000) != 0)
  {
    operator delete(*&v39[32]);
    if ((SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if ((v39[23] & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v38.__pn_.__r_.__value_.__l.__data_);
  if ((v39[23] & 0x80000000) == 0)
  {
LABEL_33:
    v14 = SHIBYTE(v42);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*v39);
  v14 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
LABEL_34:
    if (v14 != 8)
    {
      goto LABEL_57;
    }

    if (__p[0] != 0x626F6C625F6C696DLL)
    {
      v15 = __p;
      goto LABEL_42;
    }

LABEL_48:
    *&v40[0] = &v43;
    v20 = sub_25635E478((a3 + 392), &v43);
    if (!v20[5])
    {
      operator new();
    }

    v23 = v20[5];
    Data = MIL::Blob::StorageReader::GetDataView<unsigned char>();
    (*(***a1 + 224))(**a1, Data);
LABEL_57:
    v25 = sub_2563638CC(a3);
    BYTE7(v40[1]) = 14;
    strcpy(v40, "debug-constant");
    v26 = sub_25637A198(v25, v40);
    if (SBYTE7(v40[1]) < 0)
    {
      v27 = v26;
      operator delete(*&v40[0]);
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    else if (!v26)
    {
LABEL_62:
      (*(***a1 + 112))(**a1, 0);
      v28 = a2 + 1;
      if (SHIBYTE(v46) < 0)
      {
        goto LABEL_73;
      }

LABEL_63:
      if (SHIBYTE(v42) < 0)
      {
        goto LABEL_74;
      }

      goto LABEL_64;
    }

    sub_25635BA88(**a1);
    goto LABEL_62;
  }

LABEL_40:
  if (__p[1] != 8)
  {
    goto LABEL_57;
  }

  v15 = __p[0];
  if (*__p[0] == 0x626F6C625F6C696DLL)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (*v15 != 0x7761725F70616D6DLL)
  {
    goto LABEL_57;
  }

  v16 = (*(***a1 + 128))(**a1);
  if (v44 >= 0)
  {
    v17 = &v43;
  }

  else
  {
    v17 = v43;
  }

  v18 = open(v17, 0);
  if (v18 != -1)
  {
    v19 = mmap(0, v16, 1, 2, v18, v8);
    (*(***a1 + 224))(**a1, v19);
    *&v40[0] = v19;
    operator new();
  }

  if (v44 >= 0)
  {
    v21 = HIBYTE(v44);
  }

  else
  {
    v21 = *(&v43 + 1);
  }

  if (v21 + 36 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  v22 = *(a3 + 32);
  if (v21 + 36 > 0x16)
  {
    operator new();
  }

  qmemcpy(v39, "Could not open external constant at ", 36);
  if (v44 >= 0)
  {
    v30 = &v43;
  }

  else
  {
    v30 = v43;
  }

  memmove(&v39[36], v30, v21);
  v39[v21 + 36] = 0;
  v31 = std::string::append(v39, ":", 1uLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  *&v39[48] = *(&v31->__r_.__value_.__l + 2);
  *&v39[32] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = __error();
  v34 = strerror(*v33);
  v35 = strlen(v34);
  v36 = std::string::append(&v39[32], v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v40[1] = *(&v36->__r_.__value_.__l + 2);
  v40[0] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  sub_25637969C(v22, 5, v40);
  if ((SBYTE7(v40[1]) & 0x80000000) == 0)
  {
    if ((v39[55] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_77:
    operator delete(*&v39[32]);
    if ((v39[23] & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_78;
  }

  operator delete(*&v40[0]);
  if ((v39[55] & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_71:
  if ((v39[23] & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_78:
  operator delete(*v39);
LABEL_72:
  v28 = -1;
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_73:
  operator delete(v45);
  if (SHIBYTE(v42) < 0)
  {
LABEL_74:
    operator delete(__p[0]);
    if (SHIBYTE(v44) < 0)
    {
      goto LABEL_75;
    }

    return v28;
  }

LABEL_64:
  if (SHIBYTE(v44) < 0)
  {
LABEL_75:
    operator delete(v43);
  }

  return v28;
}

void sub_25635C884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MEMORY[0x259C60EF0](v32, 0x20C4093837F09);
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635C88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_25632EA30(&a23);
  close(v32);
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635C8C0(void *a1)
{
  __cxa_begin_catch(a1);
  munmap(v1, v2);
  __cxa_rethrow();
}

void sub_25635C8D8()
{
  __cxa_end_catch();
  close(v0);
  JUMPOUT(0x25635CA3CLL);
}

void sub_25635C8E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C60EF0](v14, 0x20C4093837F09);
  JUMPOUT(0x25635CA3CLL);
}

void sub_25635C954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    JUMPOUT(0x25635C99CLL);
  }

  if (SHIBYTE(a20) < 0)
  {
    operator delete(a18);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635C9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x25635CA48);
  }

  JUMPOUT(0x25635CA4CLL);
}

void sub_25635C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_2563300F8(v28 - 96);
  if (a28 < 0)
  {
    JUMPOUT(0x25635CA58);
  }

  JUMPOUT(0x25635CA5CLL);
}

void sub_25635C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_2563300F8(v32 - 96);
  if (a32 < 0)
  {
    JUMPOUT(0x25635CA68);
  }

  JUMPOUT(0x25635CA6CLL);
}

uint64_t sub_25635CA74(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4)
{
  HIBYTE(v44) = 6;
  strcpy(&v43, "offset");
  sub_256368D5C(a4, &v43, &v45);
  if (v47)
  {
    sub_256330378();
  }

  v8 = v45;
  v47 = -1;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  HIBYTE(v42) = 4;
  strcpy(__p, "path");
  sub_256368D5C(a4, __p, &v45);
  if (v47 != 2)
  {
    sub_256330378();
  }

  v43 = v45;
  v44 = v46;
  v46 = 0;
  v45 = 0uLL;
  v47 = -1;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v40[1]) = 4;
  strcpy(v40, "type");
  sub_256368D5C(a4, v40, &v45);
  if (v47 != 2)
  {
    sub_256330378();
  }

  *__p = v45;
  v42 = v46;
  v46 = 0;
  v45 = 0uLL;
  v47 = -1;
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  v9 = sub_2563638CC(a3);
  BYTE7(v40[1]) = 18;
  strcpy(v40, "load-constant-path");
  sub_25637A248(v9, v40, &v45);
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  memset(v39, 0, 24);
  v10 = SHIBYTE(v46);
  if (v46 >= 0)
  {
    v11 = &v45;
  }

  else
  {
    v11 = v45;
  }

  if (v46 < 0)
  {
    v10 = *(&v45 + 1);
  }

  sub_25635E1D8(v39, v11, (v11 + v10));
  memset(&v38, 0, sizeof(v38));
  v12 = SHIBYTE(v44);
  if (v44 >= 0)
  {
    v13 = &v43;
  }

  else
  {
    v13 = v43;
  }

  if (v44 < 0)
  {
    v12 = *(&v43 + 1);
  }

  sub_25635E1D8(&v38.__pn_, v13, (v13 + v12));
  if ((v39[23] & 0x80000000) != 0)
  {
    sub_25632CB5C(&v39[32], *v39, *&v39[8]);
  }

  else
  {
    *&v39[32] = *v39;
  }

  sub_25635E110(&v39[32], &v38);
  if ((v39[55] & 0x80000000) != 0)
  {
    sub_25632CB5C(v40, *&v39[32], *&v39[40]);
  }

  else
  {
    v40[0] = *&v39[32];
    *&v40[1] = *&v39[48];
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  v43 = v40[0];
  v44 = *&v40[1];
  BYTE7(v40[1]) = 0;
  LOBYTE(v40[0]) = 0;
  if ((v39[55] & 0x80000000) != 0)
  {
    operator delete(*&v39[32]);
    if ((SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if ((v39[23] & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v38.__pn_.__r_.__value_.__l.__data_);
  if ((v39[23] & 0x80000000) == 0)
  {
LABEL_33:
    v14 = SHIBYTE(v42);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*v39);
  v14 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
LABEL_34:
    if (v14 != 8)
    {
      goto LABEL_57;
    }

    if (__p[0] != 0x626F6C625F6C696DLL)
    {
      v15 = __p;
      goto LABEL_42;
    }

LABEL_48:
    *&v40[0] = &v43;
    v20 = sub_25635E478((a3 + 392), &v43);
    if (!v20[5])
    {
      operator new();
    }

    v23 = v20[5];
    v24 = MIL::Blob::StorageReader::GetDataView<MIL::Fp16>();
    (*(***a1 + 224))(**a1, v24);
LABEL_57:
    v25 = sub_2563638CC(a3);
    BYTE7(v40[1]) = 14;
    strcpy(v40, "debug-constant");
    v26 = sub_25637A198(v25, v40);
    if (SBYTE7(v40[1]) < 0)
    {
      v27 = v26;
      operator delete(*&v40[0]);
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    else if (!v26)
    {
LABEL_62:
      (*(***a1 + 112))(**a1, 0);
      v28 = a2 + 1;
      if (SHIBYTE(v46) < 0)
      {
        goto LABEL_73;
      }

LABEL_63:
      if (SHIBYTE(v42) < 0)
      {
        goto LABEL_74;
      }

      goto LABEL_64;
    }

    sub_25635BA88(**a1);
    goto LABEL_62;
  }

LABEL_40:
  if (__p[1] != 8)
  {
    goto LABEL_57;
  }

  v15 = __p[0];
  if (*__p[0] == 0x626F6C625F6C696DLL)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (*v15 != 0x7761725F70616D6DLL)
  {
    goto LABEL_57;
  }

  v16 = (*(***a1 + 128))(**a1);
  if (v44 >= 0)
  {
    v17 = &v43;
  }

  else
  {
    v17 = v43;
  }

  v18 = open(v17, 0);
  if (v18 != -1)
  {
    v19 = mmap(0, v16, 1, 2, v18, v8);
    (*(***a1 + 224))(**a1, v19);
    *&v40[0] = v19;
    operator new();
  }

  if (v44 >= 0)
  {
    v21 = HIBYTE(v44);
  }

  else
  {
    v21 = *(&v43 + 1);
  }

  if (v21 + 36 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  v22 = *(a3 + 32);
  if (v21 + 36 > 0x16)
  {
    operator new();
  }

  qmemcpy(v39, "Could not open external constant at ", 36);
  if (v44 >= 0)
  {
    v30 = &v43;
  }

  else
  {
    v30 = v43;
  }

  memmove(&v39[36], v30, v21);
  v39[v21 + 36] = 0;
  v31 = std::string::append(v39, ":", 1uLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  *&v39[48] = *(&v31->__r_.__value_.__l + 2);
  *&v39[32] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = __error();
  v34 = strerror(*v33);
  v35 = strlen(v34);
  v36 = std::string::append(&v39[32], v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v40[1] = *(&v36->__r_.__value_.__l + 2);
  v40[0] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  sub_25637969C(v22, 5, v40);
  if ((SBYTE7(v40[1]) & 0x80000000) == 0)
  {
    if ((v39[55] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_77:
    operator delete(*&v39[32]);
    if ((v39[23] & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_78;
  }

  operator delete(*&v40[0]);
  if ((v39[55] & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_71:
  if ((v39[23] & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_78:
  operator delete(*v39);
LABEL_72:
  v28 = -1;
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_73:
  operator delete(v45);
  if (SHIBYTE(v42) < 0)
  {
LABEL_74:
    operator delete(__p[0]);
    if (SHIBYTE(v44) < 0)
    {
      goto LABEL_75;
    }

    return v28;
  }

LABEL_64:
  if (SHIBYTE(v44) < 0)
  {
LABEL_75:
    operator delete(v43);
  }

  return v28;
}

void sub_25635D320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MEMORY[0x259C60EF0](v32, 0x20C4093837F09);
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635D328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_25632EA30(&a23);
  close(v32);
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635D35C(void *a1)
{
  __cxa_begin_catch(a1);
  munmap(v1, v2);
  __cxa_rethrow();
}

void sub_25635D374()
{
  __cxa_end_catch();
  close(v0);
  JUMPOUT(0x25635D4D8);
}

void sub_25635D384(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C60EF0](v14, 0x20C4093837F09);
  JUMPOUT(0x25635D4D8);
}

void sub_25635D3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    JUMPOUT(0x25635D438);
  }

  if (SHIBYTE(a20) < 0)
  {
    operator delete(a18);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635D458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x25635D4E4);
  }

  JUMPOUT(0x25635D4E8);
}

void sub_25635D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_2563300F8(v28 - 96);
  if (a28 < 0)
  {
    JUMPOUT(0x25635D4F4);
  }

  JUMPOUT(0x25635D4F8);
}

void sub_25635D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_2563300F8(v32 - 96);
  if (a32 < 0)
  {
    JUMPOUT(0x25635D504);
  }

  JUMPOUT(0x25635D508);
}

uint64_t sub_25635D510(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4)
{
  HIBYTE(v44) = 6;
  strcpy(&v43, "offset");
  sub_256368D5C(a4, &v43, &v45);
  if (v47)
  {
    sub_256330378();
  }

  v8 = v45;
  v47 = -1;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  HIBYTE(v42) = 4;
  strcpy(__p, "path");
  sub_256368D5C(a4, __p, &v45);
  if (v47 != 2)
  {
    sub_256330378();
  }

  v43 = v45;
  v44 = v46;
  v46 = 0;
  v45 = 0uLL;
  v47 = -1;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE7(v40[1]) = 4;
  strcpy(v40, "type");
  sub_256368D5C(a4, v40, &v45);
  if (v47 != 2)
  {
    sub_256330378();
  }

  *__p = v45;
  v42 = v46;
  v46 = 0;
  v45 = 0uLL;
  v47 = -1;
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  v9 = sub_2563638CC(a3);
  BYTE7(v40[1]) = 18;
  strcpy(v40, "load-constant-path");
  sub_25637A248(v9, v40, &v45);
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  memset(v39, 0, 24);
  v10 = SHIBYTE(v46);
  if (v46 >= 0)
  {
    v11 = &v45;
  }

  else
  {
    v11 = v45;
  }

  if (v46 < 0)
  {
    v10 = *(&v45 + 1);
  }

  sub_25635E1D8(v39, v11, (v11 + v10));
  memset(&v38, 0, sizeof(v38));
  v12 = SHIBYTE(v44);
  if (v44 >= 0)
  {
    v13 = &v43;
  }

  else
  {
    v13 = v43;
  }

  if (v44 < 0)
  {
    v12 = *(&v43 + 1);
  }

  sub_25635E1D8(&v38.__pn_, v13, (v13 + v12));
  if ((v39[23] & 0x80000000) != 0)
  {
    sub_25632CB5C(&v39[32], *v39, *&v39[8]);
  }

  else
  {
    *&v39[32] = *v39;
  }

  sub_25635E110(&v39[32], &v38);
  if ((v39[55] & 0x80000000) != 0)
  {
    sub_25632CB5C(v40, *&v39[32], *&v39[40]);
  }

  else
  {
    v40[0] = *&v39[32];
    *&v40[1] = *&v39[48];
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  v43 = v40[0];
  v44 = *&v40[1];
  BYTE7(v40[1]) = 0;
  LOBYTE(v40[0]) = 0;
  if ((v39[55] & 0x80000000) != 0)
  {
    operator delete(*&v39[32]);
    if ((SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if ((v39[23] & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(v38.__pn_.__r_.__value_.__l.__data_);
  if ((v39[23] & 0x80000000) == 0)
  {
LABEL_33:
    v14 = SHIBYTE(v42);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*v39);
  v14 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
LABEL_34:
    if (v14 != 8)
    {
      goto LABEL_57;
    }

    if (__p[0] != 0x626F6C625F6C696DLL)
    {
      v15 = __p;
      goto LABEL_42;
    }

LABEL_48:
    *&v40[0] = &v43;
    v20 = sub_25635E478((a3 + 392), &v43);
    if (!v20[5])
    {
      operator new();
    }

    v23 = v20[5];
    Data = MIL::Blob::StorageReader::GetDataView<float>();
    (*(***a1 + 224))(**a1, Data);
LABEL_57:
    v25 = sub_2563638CC(a3);
    BYTE7(v40[1]) = 14;
    strcpy(v40, "debug-constant");
    v26 = sub_25637A198(v25, v40);
    if (SBYTE7(v40[1]) < 0)
    {
      v27 = v26;
      operator delete(*&v40[0]);
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    else if (!v26)
    {
LABEL_62:
      (*(***a1 + 112))(**a1, 0);
      v28 = a2 + 1;
      if (SHIBYTE(v46) < 0)
      {
        goto LABEL_73;
      }

LABEL_63:
      if (SHIBYTE(v42) < 0)
      {
        goto LABEL_74;
      }

      goto LABEL_64;
    }

    sub_25635BA88(**a1);
    goto LABEL_62;
  }

LABEL_40:
  if (__p[1] != 8)
  {
    goto LABEL_57;
  }

  v15 = __p[0];
  if (*__p[0] == 0x626F6C625F6C696DLL)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (*v15 != 0x7761725F70616D6DLL)
  {
    goto LABEL_57;
  }

  v16 = (*(***a1 + 128))(**a1);
  if (v44 >= 0)
  {
    v17 = &v43;
  }

  else
  {
    v17 = v43;
  }

  v18 = open(v17, 0);
  if (v18 != -1)
  {
    v19 = mmap(0, v16, 1, 2, v18, v8);
    (*(***a1 + 224))(**a1, v19);
    *&v40[0] = v19;
    operator new();
  }

  if (v44 >= 0)
  {
    v21 = HIBYTE(v44);
  }

  else
  {
    v21 = *(&v43 + 1);
  }

  if (v21 + 36 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  v22 = *(a3 + 32);
  if (v21 + 36 > 0x16)
  {
    operator new();
  }

  qmemcpy(v39, "Could not open external constant at ", 36);
  if (v44 >= 0)
  {
    v30 = &v43;
  }

  else
  {
    v30 = v43;
  }

  memmove(&v39[36], v30, v21);
  v39[v21 + 36] = 0;
  v31 = std::string::append(v39, ":", 1uLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  *&v39[48] = *(&v31->__r_.__value_.__l + 2);
  *&v39[32] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = __error();
  v34 = strerror(*v33);
  v35 = strlen(v34);
  v36 = std::string::append(&v39[32], v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v40[1] = *(&v36->__r_.__value_.__l + 2);
  v40[0] = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  sub_25637969C(v22, 5, v40);
  if ((SBYTE7(v40[1]) & 0x80000000) == 0)
  {
    if ((v39[55] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_77:
    operator delete(*&v39[32]);
    if ((v39[23] & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_78;
  }

  operator delete(*&v40[0]);
  if ((v39[55] & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_71:
  if ((v39[23] & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_78:
  operator delete(*v39);
LABEL_72:
  v28 = -1;
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_73:
  operator delete(v45);
  if (SHIBYTE(v42) < 0)
  {
LABEL_74:
    operator delete(__p[0]);
    if (SHIBYTE(v44) < 0)
    {
      goto LABEL_75;
    }

    return v28;
  }

LABEL_64:
  if (SHIBYTE(v44) < 0)
  {
LABEL_75:
    operator delete(v43);
  }

  return v28;
}

void sub_25635DDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  MEMORY[0x259C60EF0](v32, 0x20C4093837F09);
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635DDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_25632EA30(&a23);
  close(v32);
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635DDF8(void *a1)
{
  __cxa_begin_catch(a1);
  munmap(v1, v2);
  __cxa_rethrow();
}

void sub_25635DE10()
{
  __cxa_end_catch();
  close(v0);
  JUMPOUT(0x25635DF74);
}

void sub_25635DE20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C60EF0](v14, 0x20C4093837F09);
  JUMPOUT(0x25635DF74);
}

void sub_25635DE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    JUMPOUT(0x25635DED4);
  }

  if (SHIBYTE(a20) < 0)
  {
    operator delete(a18);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25635DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x25635DF80);
  }

  JUMPOUT(0x25635DF84);
}

void sub_25635DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_2563300F8(v28 - 96);
  if (a28 < 0)
  {
    JUMPOUT(0x25635DF90);
  }

  JUMPOUT(0x25635DF94);
}

void sub_25635DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_2563300F8(v32 - 96);
  if (a32 < 0)
  {
    JUMPOUT(0x25635DFA0);
  }

  JUMPOUT(0x25635DFA4);
}

uint64_t **sub_25635DFAC(void *a1, uint64_t a2)
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

uint64_t sub_25635E110(uint64_t a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    if (a1 != this)
    {
      v4 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
      if (*(a1 + 23) < 0)
      {
        if (v4 >= 0)
        {
          v9 = this;
        }

        else
        {
          v9 = this->__pn_.__r_.__value_.__r.__words[0];
        }

        if (v4 >= 0)
        {
          size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = this->__pn_.__r_.__value_.__l.__size_;
        }

        sub_256330250(a1, v9, size);
      }

      else if ((*(&this->__pn_.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        sub_256330180(a1, this->__pn_.__r_.__value_.__l.__data_, this->__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v5 = *&this->__pn_.__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&this->__pn_.__r_.__value_.__l + 2);
        *a1 = v5;
      }
    }
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(a1, 47);
    }

    v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      v8 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v7, v8);
  }

  return a1;
}

std::string *sub_25635E1D8(std::string *this, std::string *a2, std::string *a3)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v6 = v10 >> 63;
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v9 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v9->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v19 = a3 - a2;
    if (a3 != a2)
    {
      memcpy(__dst, a2, v5);
    }

    *(__dst + v5) = 0;
    if ((v19 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __dst[1];
    }

    std::string::append(this, v15, v16);
    if (v19 < 0)
    {
      operator delete(__dst[0]);
    }

    return this;
  }

LABEL_12:
  if (v7 - size < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v7 >= v5 + size - v7)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      operator new();
    }

LABEL_35:
    sub_25632CBF8();
  }

  v12 = this;
  if (v6)
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  v13 = v12 + size;
  if (a3 != a2)
  {
    memmove(v12 + size, a2, v5);
  }

  v13[v5] = 0;
  v14 = v5 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  return this;
}

void sub_25635E45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_25635E478(void *a1, uint64_t a2)
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

void sub_25635E804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25635E820(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_25635E820(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        v4 = MEMORY[0x259C60C30]();
        MEMORY[0x259C60EF0](v4, 0x20C4093837F09);
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

void sub_25635E89C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t **sub_25635E8FC(void *a1, uint64_t a2)
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

void sub_25635EC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_25635ECA4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_25635ECA4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_25635ED68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

void sub_25635EDCC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C60EF0);
}

uint64_t sub_25635EE2C(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 9;
  v7[0] = &unk_286855360;
  v7[1] = sub_25635F014;
  v8 = v7;
  sub_256352F58(a1, &v4, 1, 33, 0, 0, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  v4 = 10;
  v5[0] = &unk_286855360;
  v5[1] = sub_25635F0E4;
  v6 = v5;
  sub_256352F58(a1, &v4, 1, 33, 0, 0, v5);
  result = v6;
  if (v6 == v5)
  {
    result = (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    result = (*(*v6 + 40))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25635EFF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25635F014(uint64_t **a1, uint64_t a2)
{
  v4 = (*(***a1 + 168))(**a1);
  v5 = (*(***a1 + 120))(**a1);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      *(v4 + 4 * v7) = nanf(&unk_25637E38A);
      v7 = sub_25635F1B4(**a1, v7);
      --v6;
    }

    while (v6);
  }

  return a2 + 1;
}

uint64_t sub_25635F0E4(uint64_t **a1, uint64_t a2)
{
  v4 = (*(***a1 + 168))(**a1);
  v5 = (*(***a1 + 120))(**a1);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      *(v4 + 8 * v7) = nan(&unk_25637E38A);
      v7 = sub_25635F1B4(**a1, v7);
      --v6;
    }

    while (v6);
  }

  return a2 + 1;
}

uint64_t sub_25635F1B4(uint64_t a1, unint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = v4[1];
  if (v5 != *v4)
  {
    if (((v5 - *v4) & 0x8000000000000000) == 0)
    {
      v6 = v5 - *v4;
      operator new();
    }

    sub_25632CE68();
  }

  v7 = (*(*a1 + 48))(a1);
  v8 = v7[1];
  if (v8 != *v7)
  {
    if (((v8 - *v7) & 0x8000000000000000) == 0)
    {
      v9 = v8 - *v7;
      operator new();
    }

    sub_25632CE68();
  }

  v10 = sub_25637BC84(a1);
  if (v10 > 2)
  {
    switch(v10)
    {
      case 3:
        v24 = a2 / MEMORY[0x10] % MEMORY[8];
        v25 = a2 % MEMORY[0x10] + 1;
        if (v25 < MEMORY[0x10])
        {
          v26 = a2 % MEMORY[0x10] + 1;
        }

        else
        {
          v26 = 0;
        }

        if (v25 >= MEMORY[0x10])
        {
          ++v24;
        }

        if (v24 < MEMORY[8])
        {
          v27 = a2 / MEMORY[0x10] / MEMORY[8] % MEMORY[0];
        }

        else
        {
          v24 = 0;
          v27 = a2 / MEMORY[0x10] / MEMORY[8] % MEMORY[0] + 1;
        }

        v21 = v27 * MEMORY[0] + MEMORY[8] * v24 + MEMORY[0x10] * v26;
        goto LABEL_57;
      case 4:
        v28 = a2 / MEMORY[0x18] / MEMORY[0x10];
        v29 = a2 / MEMORY[0x18] % MEMORY[0x10];
        v30 = v28 / MEMORY[8];
        v31 = v28 % MEMORY[8];
        v32 = v30 % MEMORY[0];
        v33 = a2 % MEMORY[0x18] + 1;
        if (v33 < MEMORY[0x18])
        {
          v34 = a2 % MEMORY[0x18] + 1;
        }

        else
        {
          v34 = 0;
        }

        if (v33 >= MEMORY[0x18])
        {
          ++v29;
        }

        if (v29 < MEMORY[0x10])
        {
          v35 = v29;
        }

        else
        {
          v35 = 0;
        }

        if (v29 < MEMORY[0x10])
        {
          v36 = v31;
        }

        else
        {
          v36 = v31 + 1;
        }

        if (v36 < MEMORY[8])
        {
          v37 = v32;
        }

        else
        {
          v36 = 0;
          v37 = v32 + 1;
        }

        v21 = v37 * MEMORY[0] + MEMORY[8] * v36 + MEMORY[0x10] * v35 + MEMORY[0x18] * v34;
        goto LABEL_57;
      case 5:
        v11 = a2 / MEMORY[0x20] / MEMORY[0x18];
        v12 = a2 / MEMORY[0x20] % MEMORY[0x18];
        v13 = v11 / MEMORY[0x10];
        v14 = v11 % MEMORY[0x10];
        v15 = v13 / MEMORY[8];
        v16 = a2 % MEMORY[0x20] + 1;
        if (v16 < MEMORY[0x20])
        {
          v17 = a2 % MEMORY[0x20] + 1;
        }

        else
        {
          v17 = 0;
        }

        if (v16 >= MEMORY[0x20])
        {
          ++v12;
        }

        if (v12 < MEMORY[0x18])
        {
          v18 = v14;
        }

        else
        {
          v12 = 0;
          v18 = v14 + 1;
        }

        if (v18 < MEMORY[0x10])
        {
          v19 = v15;
        }

        else
        {
          v18 = 0;
          v19 = v15 + 1;
        }

        if (v19 < MEMORY[8])
        {
          v20 = v15 % MEMORY[0];
        }

        else
        {
          v19 = 0;
          v20 = v15 % MEMORY[0] + 1;
        }

        v21 = MEMORY[8] * v19 + v20 * MEMORY[0] + MEMORY[0x10] * v18 + MEMORY[0x18] * v12 + MEMORY[0x20] * v17;
        goto LABEL_57;
    }

    return a2 + 1;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v22 = a2 / MEMORY[8] % MEMORY[0];
      v23 = a2 % MEMORY[8] + 1;
      if (v23 >= MEMORY[8])
      {
        v21 = MEMORY[0] + MEMORY[0] * v22;
      }

      else
      {
        v21 = MEMORY[0] * v22 + MEMORY[8] * v23;
      }

LABEL_57:
      operator delete(0);
      return v21;
    }

    return a2 + 1;
  }

  return **(*(*a1 + 48))(a1) + a2;
}

void sub_25635F4D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25635F518(uint64_t *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  __src = 8;
  v25[0] = &unk_286855360;
  v25[1] = sub_25635FE10;
  v26 = v25;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v25);
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
  }

  else if (v26)
  {
    (*(*v26 + 40))(v26);
  }

  __src = 9;
  v23[0] = &unk_286855360;
  v23[1] = sub_256360058;
  v24 = v23;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v23);
  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
  }

  else if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  __src = 10;
  v21[0] = &unk_286855360;
  v21[1] = sub_2563602A0;
  v22 = v21;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v21);
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  __src = 4;
  v19[0] = &unk_286855360;
  v19[1] = sub_2563604E4;
  v20 = v19;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v19);
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  __src = 5;
  v17[0] = &unk_286855360;
  v17[1] = sub_256360728;
  v18 = v17;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v17);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  __src = 6;
  v15[0] = &unk_286855360;
  v15[1] = sub_25636096C;
  v16 = v15;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v15);
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  __src = 7;
  v13[0] = &unk_286855360;
  v13[1] = sub_256360BB0;
  v14 = v13;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v13);
  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  __src = 0;
  v11[0] = &unk_286855360;
  v11[1] = sub_256360DF4;
  v12 = v11;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v11);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  __src = 1;
  v9[0] = &unk_286855360;
  v9[1] = sub_256361038;
  v10 = v9;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  __src = 2;
  v7[0] = &unk_286855360;
  v7[1] = sub_25636127C;
  v8 = v7;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  __src = 3;
  v5[0] = &unk_286855360;
  v5[1] = sub_2563614C0;
  v6 = v5;
  sub_256352F58(a1, 0, 0, 34, &__src, 1, v5);
  result = v6;
  if (v6 == v5)
  {
    result = (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    result = (*(*v6 + 40))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25635FD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_25635FE10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v25 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v26);
  if (v28 != 2)
  {
    sub_256330378();
  }

  *v29 = v26;
  v30 = v27;
  v27 = 0;
  v26 = 0uLL;
  v28 = -1;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v30 >= 0)
  {
    v8 = v29;
  }

  else
  {
    v8 = v29[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    _H0 = *(v14 + 2 * i);
    __asm { FCVT            D0, H0 }

    printf("%10.8f ", _D0);
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  return a2 + 1;
}

void sub_256360010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256360058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10.8f ", *(v14 + 4 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256360258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563602A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10.8f ", *(v14 + 8 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_25636049C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563604E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10hhu ", *(v14 + i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_2563606E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256360728(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10hu ", *(v14 + 2 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256360924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25636096C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10u ", *(v14 + 4 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256360B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256360BB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10llu ", *(v14 + 8 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256360DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256360DF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10hhi ", *(v14 + i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256360FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256361038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10hi ", *(v14 + 2 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256361234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25636127C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10i ", *(v14 + 4 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_256361478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2563614C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v19 = 4;
  strcpy(__p, "name");
  sub_256368D5C(a4, __p, &v20);
  if (v22 != 2)
  {
    sub_256330378();
  }

  *v23 = v20;
  v24 = v21;
  v21 = 0;
  v20 = 0uLL;
  v22 = -1;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = **a5;
  if (v24 >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  v9 = sub_256368A38(v7);
  v10 = *(v9 + 23);
  v11 = *v9;
  v12 = (*(*v7 + 176))(v7);
  if (v10 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  printf("%s %s(%p) = {\n", v8, v13, v12);
  v14 = (*(*v7 + 176))(v7);
  v15 = 0;
  for (i = 0; i < (*(*v7 + 120))(v7); ++i)
  {
    if (!v15)
    {
      putchar(9);
    }

    printf("%10lli ", *(v14 + 8 * i));
    if (v15 >= 5)
    {
      putchar(10);
      v15 = 0;
    }

    else
    {
      ++v15;
    }
  }

  if (v15)
  {
    putchar(10);
  }

  puts("}");
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return a2 + 1;
}

void sub_2563616BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256361704(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286855360;
  v6[1] = sub_2563618DC;
  v7 = v6;
  sub_256352F58(a1, 0, 0, 11, 0, 0, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  v4[0] = &unk_286855360;
  v4[1] = sub_256361944;
  v5 = v4;
  sub_256352F58(a1, 0, 0, 29, 0, 0, v4);
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

void sub_2563618BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2563618DC(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3++;
      (*(*v5 + 136))(v5);
    }

    while (v3 != v4);
  }

  return a2 + 1;
}

uint64_t sub_256361944(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3++;
      (*(*v5 + 144))(v5);
    }

    while (v3 != v4);
  }

  return a2 + 1;
}

uint64_t sub_2563619BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = 6;
  strcpy(__p, "kindex");
  sub_256368D5C(a4, __p, v13);
  if (v14)
  {
    sub_256330378();
  }

  v6 = v13[0];
  v14 = -1;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a3[22] + 8 * v6);
  v8 = sub_256368A38(v7);
  v9 = sub_256361AA8(a3, v8, v6);
  sub_256368D48(v7, v9);
  return a2 + 1;
}

void sub_256361A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_2563300F8(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_256361AA8(void *a1, const char *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[37];
  if (!v6)
  {
    v12 = a1[38];
    if (!v12)
    {
      if (!MEMORY[0x282221138])
      {
        sub_25634984C(&v24);
        sub_256349D6C(&v24, "JIT library not loaded", 22);
        v10 = a1[4];
        if ((v34 & 0x10) != 0)
        {
          v20 = v33;
          if (v33 < v30)
          {
            v33 = v30;
            v20 = v30;
          }

          v21 = &v29;
        }

        else
        {
          if ((v34 & 8) == 0)
          {
            v11 = 0;
            v23 = 0;
            goto LABEL_25;
          }

          v21 = v27;
          v20 = v28;
        }

        v19 = *v21;
        v11 = v20 - *v21;
        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_25632CBF8();
        }

        if (v11 >= 0x17)
        {
          operator new();
        }

        v23 = v20 - *v21;
        if (!v11)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v13 = a1[4];
      mlc::rt::JIT::create_orcjit();
      v14 = v24;
      v24 = 0;
      v15 = a1[38];
      a1[38] = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v24;
        v24 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      v12 = a1[38];
    }

    return (*(*v12 + 16))(v12, *(a1[19] + 24 * a3), *(a1[19] + 24 * a3 + 8) - *(a1[19] + 24 * a3), v4);
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  result = dlsym(v6, a2);
  if (!result)
  {
    sub_25634984C(&v24);
    v8 = sub_256349D6C(&v24, "dylib kernel symbol lookup failed ", 34);
    v9 = MEMORY[0x259C60DF0](v8, a3);
    sub_256349D6C(v9, ".", 1);
    v10 = a1[4];
    if ((v34 & 0x10) != 0)
    {
      v17 = v33;
      if (v33 < v30)
      {
        v33 = v30;
        v17 = v30;
      }

      v18 = &v29;
    }

    else
    {
      if ((v34 & 8) == 0)
      {
        v11 = 0;
        v23 = 0;
LABEL_25:
        *(&__p + v11) = 0;
        sub_25637969C(v10, 0xFFFF, &__p);
        if (v23 < 0)
        {
          operator delete(__p);
        }

        v24 = *MEMORY[0x277D82828];
        *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
        v25 = MEMORY[0x277D82878] + 16;
        if (v32 < 0)
        {
          operator delete(v31);
        }

        v25 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v26);
        std::ostream::~ostream();
        MEMORY[0x259C60E90](&v35);
        return 0;
      }

      v18 = v27;
      v17 = v28;
    }

    v19 = *v18;
    v11 = v17 - *v18;
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_25632CBF8();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v23 = v17 - *v18;
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_24:
    memmove(&__p, v19, v11);
    goto LABEL_25;
  }

  return result;
}

void sub_256361EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_256361F38(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  HIBYTE(v46) = 5;
  strcpy(__p, "index");
  sub_256368D5C(a4, __p, &v51);
  if (v53)
  {
    sub_256330378();
  }

  v10 = v51;
  v53 = -1;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v46) = 5;
  strcpy(__p, "kname");
  sub_256368D5C(a4, __p, &v51);
  if (v53 != 2)
  {
    sub_256330378();
  }

  v58 = v51;
  v59 = v52;
  v52 = 0;
  v51 = 0uLL;
  v53 = -1;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_256361AA8(a3, &v58, v10);
  sub_2563688FC(&v51, &v58, *(a3 + 384));
  sub_256368D48(&v51, v11);
  sub_256368A40(&v51, 0);
  sub_2563689C4(&v51, ((a1[1] - *a1) >> 3) + ((a5[1] - *a5) >> 3));
  v12 = sub_256368A48(&v51, a1, a5);
  BYTE7(v50[1]) = 20;
  strcpy(v50, "scratchbuffer_region");
  v13 = *(a3 + 80);
  v14 = *(a3 + 88);
  if (v13 != v14)
  {
    while (1)
    {
      v15 = *(v13 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v13 + 8);
      }

      if (v15 == 20)
      {
        v17 = v16 >= 0 ? v13 : *v13;
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v17 + 4);
        v21 = v18 == *&v50[0] && v19 == *(&v50[0] + 1);
        if (v21 && v20 == LODWORD(v50[1]))
        {
          break;
        }
      }

      v13 += 80;
      if (v13 == v14)
      {
        goto LABEL_26;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_26:
    *(&v47 + 1) = 0;
    *&v48 = 0;
    *__p = v50[0];
    v46 = *&v50[1];
    v23 = *(a3 + 96);
    LODWORD(v47) = 0;
    *(&v48 + 1) = v12;
    *v49 = 32;
    *&v49[8] = *(a3 + 24);
    if (v14 >= v23)
    {
      v25 = sub_25634062C((a3 + 80), __p);
    }

    else
    {
      if (SHIBYTE(v46) < 0)
      {
        sub_25632CB5C(v14, __p[0], __p[1]);
      }

      else
      {
        v24 = v50[0];
        *(v14 + 16) = *&v50[1];
        *v14 = v24;
      }

      v26 = v47;
      v27 = v48;
      v28 = *v49;
      *(v14 + 72) = *&v49[16];
      *(v14 + 56) = v28;
      *(v14 + 40) = v27;
      *(v14 + 24) = v26;
      v25 = v14 + 80;
      *(a3 + 88) = v14 + 80;
    }

    *(a3 + 88) = v25;
    sub_256368E30(__p);
  }

  else
  {
    *(v13 + 48) += v12;
  }

  v42 = 13;
  strcpy(v41, "scratchbuffer");
  sub_256368D5C(a4, v41, __p);
  if (v47 != 2)
  {
    sub_256330378();
  }

  *v43 = *__p;
  v44 = v46;
  __p[1] = 0;
  v46 = 0;
  __p[0] = 0;
  LODWORD(v47) = -1;
  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  v29 = *(a3 + 104);
  v30 = *(a3 + 112);
  if (v29 != v30)
  {
    v31 = v44 >= 0 ? HIBYTE(v44) : v43[1];
    v32 = v44 >= 0 ? v43 : v43[0];
    while (1)
    {
      v33 = sub_256368A38(*v29);
      v34 = *(v33 + 23);
      v35 = v34;
      if (v34 < 0)
      {
        v34 = v33[1];
      }

      if (v34 == v31)
      {
        if (v35 < 0)
        {
          v33 = *v33;
        }

        if (!memcmp(v33, v32, v31))
        {
          break;
        }
      }

      v29 += 2;
      if (v29 == v30)
      {
        goto LABEL_60;
      }
    }

    v36 = v29[1];
    if (v36)
    {
      v37 = *v29;
      atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v41[0] = 0;
      v38 = std::__shared_weak_count::lock(v36);
      v41[1] = v38;
      if (v38)
      {
        v41[0] = v37;
        if (!v37)
        {
LABEL_56:
          if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v38;
            (v38->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v39);
          }

          std::__shared_weak_count::__release_weak(v36);
          goto LABEL_60;
        }
      }

      else
      {
        v37 = v41[0];
        if (!v41[0])
        {
          goto LABEL_56;
        }
      }

      sub_256369DB0(v37, v50);
      __p[0] = 0;
      __p[1] = 0;
      v46 = 0;
      operator new();
    }
  }

LABEL_60:
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
    if ((SBYTE7(v50[1]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }
  }

  else if ((SBYTE7(v50[1]) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(*&v50[0]);
LABEL_62:
  *&v51 = &unk_2868554C0;
  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (*(&v51 + 1))
  {
    v52 = *(&v51 + 1);
    operator delete(*(&v51 + 1));
  }

  nullsub_34(&v51);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  return a2 + 1;
}

void sub_256362554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  sub_25632EA30(&a10);
  std::__shared_weak_count::__release_weak(v41);
  if (v42 < 0)
  {
    operator delete(v40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_25636271C(&a40);
  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25636265C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(result + 104);
  v5 = *(result + 112);
  if (v4 == v5)
  {
LABEL_18:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      result = sub_256368A38(*v4);
      v7 = *(result + 23);
      if (v7 >= 0)
      {
        v8 = *(result + 23);
      }

      else
      {
        v8 = *(result + 8);
      }

      v9 = *(a2 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = a2[1];
      }

      if (v8 == v9)
      {
        if (v7 < 0)
        {
          result = *result;
        }

        v11 = *a2;
        v12 = v10 >= 0 ? a2 : *a2;
        result = memcmp(result, v12, v8);
        if (!result)
        {
          break;
        }
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_18;
      }
    }

    v13 = v4[1];
    *a3 = *v4;
    a3[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_25636271C(uint64_t a1)
{
  *a1 = &unk_2868554C0;
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

uint64_t sub_25636279C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  HIBYTE(v27) = 5;
  strcpy(&v26, "index");
  sub_256368D5C(a4, &v26, v17);
  if (v19)
  {
    sub_256330378();
  }

  v10 = v17[0];
  v19 = -1;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  v25 = 5;
  strcpy(__p, "kname");
  sub_256368D5C(a4, __p, v17);
  if (v19 != 2)
  {
    sub_256330378();
  }

  v26 = *v17;
  v27 = v18;
  v17[1] = 0;
  v18 = 0;
  v17[0] = 0;
  v19 = -1;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_256361AA8(a3, &v26, v10);
  sub_2563688FC(v17, &v26, *(a3 + 384));
  sub_256368D48(v17, v11);
  sub_256368A40(v17, 0);
  sub_2563689C4(v17, ((a1[1] - *a1) >> 3) + ((a5[1] - *a5) >> 3));
  sub_256368A48(v17, a1, a5);
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    do
    {
      v14 = *v12;
      v15 = sub_256369E48(*v12);
      (*(*v14 + 152))(v14, v15);
      ++v12;
    }

    while (v12 != v13);
  }

  v17[0] = &unk_2868554C0;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v17[1])
  {
    v18 = v17[1];
    operator delete(v17[1]);
  }

  nullsub_34(v17);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  return a2 + 1;
}

void sub_2563629D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_256362A48(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2868554A0;
  *(a1 + 8) = sub_256362F78;
  *(a1 + 16) = sub_256363364;
  *(a1 + 24) = a1;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  operator new();
}

void sub_256362DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256352308(va);
  sub_256346BE4((v3 + 44));
  sub_256365A70(v7);
  if (*(v2 + 383) < 0)
  {
    operator delete(v3[35]);
  }

  sub_2563656F4(v6);
  v10 = *(v2 + 304);
  *(v2 + 304) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_2563633A4(v3 + 27);
  v11 = *(v2 + 272);
  if (v11)
  {
    *(v2 + 280) = v11;
    operator delete(v11);
    v12 = *(v2 + 248);
    if (!v12)
    {
LABEL_7:
      v13 = *(v2 + 224);
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v12 = *(v2 + 248);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  *(v2 + 256) = v12;
  operator delete(v12);
  v13 = *(v2 + 224);
  if (!v13)
  {
LABEL_9:
    sub_256365760(v3 + 15);
    sub_2563657C8(v5);
    sub_256365858(v3 + 9);
    sub_25632D02C(v4);
    sub_25632D02C(v3 + 3);
    sub_2563658D0(v3);
    sub_2563659F8((v2 + 72));
    sub_25632D02C((v2 + 48));
    v14 = *v8;
    *v8 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    nullsub_34(v2);
    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v2 + 232) = v13;
  operator delete(v13);
  goto LABEL_9;
}

uint64_t sub_256362F78(void **a1, size_t size, size_t alignment, int a4, uint64_t a5, uint64_t a6)
{
  if (a4 == 2)
  {
    sub_25636C544(a6);
    operator new();
  }

  if (a4 == 1)
  {
    sub_25636C544(a6);
    operator new();
  }

  if (a4)
  {
    return 1;
  }

  result = malloc_type_posix_memalign(a1, alignment, size, 0x35F279D0uLL);
  if (result)
  {
    v10 = result;
    sub_25634984C(&__p);
    v11 = sub_256349D6C(&__p, "Error allocating ", 17);
    v12 = MEMORY[0x259C60DF0](v11, size);
    v13 = sub_256349D6C(v12, "-byte, ", 7);
    v14 = MEMORY[0x259C60DF0](v13, alignment);
    sub_256349D6C(v14, "-aligned memory.", 16);
    v15 = sub_25636C544(a6);
    if ((v32 & 0x10) != 0)
    {
      v17 = v31;
      if (v31 < v28)
      {
        v31 = v28;
        v17 = v28;
      }

      v18 = &v27;
    }

    else
    {
      if ((v32 & 8) == 0)
      {
        v16 = 0;
        v22 = 0;
LABEL_22:
        *(&v21 + v16) = 0;
        sub_25637969C(v15, 1, &v21);
        if (v22 < 0)
        {
          operator delete(v21);
        }

        __p = *MEMORY[0x277D82828];
        *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
        v24 = MEMORY[0x277D82878] + 16;
        if (v30 < 0)
        {
          operator delete(v29);
        }

        v24 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v25);
        std::ostream::~ostream();
        MEMORY[0x259C60E90](&v33);
        return v10;
      }

      v18 = v26;
      v17 = v26[2];
    }

    v19 = *v18;
    v16 = v17 - *v18;
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    v20 = v15;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v22 = v17 - *v18;
    if (v16)
    {
      memmove(&v21, v19, v16);
    }

    v15 = v20;
    goto LABEL_22;
  }

  return result;
}

void sub_256363314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_256349A38(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_256363364(void *a1, int a2)
{
  if ((a2 - 1) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    return 1;
  }

  free(a1);
  return 0;
}

void **sub_2563633A4(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    dlclose(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_2563633E0(uint64_t a1)
{
  *a1 = &unk_2868554A0;
  v2 = *(a1 + 224);
  for (i = *(a1 + 232); v2 != i; ++v2)
  {
    BNNSFilterDestroy(*v2);
  }

  sub_256346BE4(a1 + 432);
  sub_256365A70(a1 + 392);
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  v4 = *(a1 + 336);
  if (v4)
  {
    do
    {
      v18 = *v4;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v18;
    }

    while (v18);
  }

  v5 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    dlclose(v7);
    *(a1 + 296) = 0;
  }

  v8 = *(a1 + 272);
  if (v8)
  {
    *(a1 + 280) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 248);
  if (v9)
  {
    *(a1 + 256) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    *(a1 + 232) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 200);
  if (v11)
  {
    v12 = *(a1 + 208);
    v13 = *(a1 + 200);
    if (v12 != v11)
    {
      do
      {
        v14 = v12 - 48;
        sub_25632D0E0(v12 - 40);
        v12 = v14;
      }

      while (v14 != v11);
      v13 = *(a1 + 200);
    }

    *(a1 + 208) = v11;
    operator delete(v13);
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    v16 = *(a1 + 184);
    v17 = *(a1 + 176);
    if (v16 != v15)
    {
      do
      {
        v20 = *--v16;
        v19 = v20;
        *v16 = 0;
        if (v20)
        {
          (*(*v19 + 8))(v19);
        }
      }

      while (v16 != v15);
      v17 = *(a1 + 176);
    }

    *(a1 + 184) = v15;
    operator delete(v17);
  }

  v21 = *(a1 + 152);
  if (v21)
  {
    v22 = *(a1 + 160);
    v23 = *(a1 + 152);
    if (v22 != v21)
    {
      v24 = *(a1 + 160);
      do
      {
        v26 = *(v24 - 24);
        v24 -= 24;
        v25 = v26;
        if (v26)
        {
          *(v22 - 16) = v25;
          operator delete(v25);
        }

        v22 = v24;
      }

      while (v24 != v21);
      v23 = *(a1 + 152);
    }

    *(a1 + 160) = v21;
    operator delete(v23);
  }

  v27 = *(a1 + 128);
  if (v27)
  {
    v28 = *(a1 + 136);
    v29 = *(a1 + 128);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 8);
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v30->__on_zero_shared)(v30);
          std::__shared_weak_count::__release_weak(v30);
        }

        v28 -= 16;
      }

      while (v28 != v27);
      v29 = *(a1 + 128);
    }

    *(a1 + 136) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 104);
  if (v31)
  {
    v32 = *(a1 + 112);
    v33 = *(a1 + 104);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 8);
        if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v34->__on_zero_shared)(v34);
          std::__shared_weak_count::__release_weak(v34);
        }

        v32 -= 16;
      }

      while (v32 != v31);
      v33 = *(a1 + 104);
    }

    *(a1 + 112) = v31;
    operator delete(v33);
  }

  v35 = *(a1 + 80);
  if (v35)
  {
    v36 = *(a1 + 88);
    v37 = *(a1 + 80);
    if (v36 != v35)
    {
      do
      {
        v36 = sub_256368E30(v36 - 80);
      }

      while (v36 != v35);
      v37 = *(a1 + 80);
    }

    *(a1 + 88) = v35;
    operator delete(v37);
  }

  v38 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v38)
  {
    v39 = *v38;
    *v38 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    MEMORY[0x259C60EF0](v38, 0x20C4093837F09);
  }

  v40 = *(a1 + 48);
  if (v40)
  {
    v41 = *(a1 + 56);
    v42 = *(a1 + 48);
    if (v41 != v40)
    {
      do
      {
        v43 = *(v41 - 8);
        if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v41 -= 16;
      }

      while (v41 != v40);
      v42 = *(a1 + 48);
    }

    *(a1 + 56) = v40;
    operator delete(v42);
  }

  v44 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  return nullsub_34(a1);
}

void sub_256363864(uint64_t a1)
{
  v1 = sub_2563633E0(a1);

  j__free(v1);
}

uint64_t sub_25636388C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 40);
  *(a1 + 40) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2563638D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v98 = &unk_2868548A8;
  v102 = 0u;
  v103 = 0u;
  *__p = 0u;
  sub_256365B08(__p);
  v5 = *(&v103 + 1);
  *(*(__p[1] + (((*(&v103 + 1) + v103) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v103 + 1) + v103) & 0x1FF)) = v4;
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (!v6)
  {
    do
    {
      v12 = *(*(__p[1] + (((v103 + v7 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v103 + v7 - 1) & 0x1FF));
      if (v102 == __p[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = ((v102 - __p[1]) << 6) - 1;
      }

      *(&v103 + 1) = v7 - 1;
      if (v13 - (v7 + v103) + 1 >= 0x400)
      {
        operator delete(*(v102 - 8));
        *&v102 = v102 - 8;
      }

      if (sub_25637978C(*(a1 + 32)))
      {
        v98[2](&v98, v12, a1);
      }

      sub_2563504CC(v12, &v99);
      v14 = v99;
      v15 = v100;
      if (v99 != v100)
      {
        v16 = *(&v103 + 1);
        v17 = v103;
        do
        {
          v18 = __p[1];
          v19 = ((v102 - __p[1]) << 6) - 1;
          v20 = *v14;
          if (v102 == __p[1])
          {
            v19 = 0;
          }

          v21 = v17 + v16;
          if (v19 == v17 + v16)
          {
            sub_256365B08(__p);
            v16 = *(&v103 + 1);
            v17 = v103;
            v18 = __p[1];
            v21 = v103 + *(&v103 + 1);
          }

          *(*&v18[(v21 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v21 & 0x1FF)) = v20;
          *(&v103 + 1) = ++v16;
          ++v14;
        }

        while (v14 != v15);
        v14 = v99;
      }

      if (v14)
      {
        v100 = v14;
        operator delete(v14);
      }

      v7 = *(&v103 + 1);
    }

    while (*(&v103 + 1));
  }

  v8 = __p[1];
  v9 = v102;
  *(&v103 + 1) = 0;
  v10 = (v102 - __p[1]) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v9 = v102;
      v8 = (__p[1] + 8);
      __p[1] = v8;
      v10 = (v102 - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_27;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_27:
    *&v103 = v11;
  }

  if (v8 != v9)
  {
    do
    {
      v22 = *v8++;
      operator delete(v22);
    }

    while (v8 != v9);
    if (v102 != __p[1])
    {
      *&v102 = v102 + ((__p[1] - v102 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  nullsub_34(&v98);
  v23 = *a2;
  v98 = &unk_286854A98;
  v97 = &unk_286854C20;
  v102 = 0u;
  v103 = 0u;
  *__p = 0u;
  sub_256365B08(__p);
  v24 = *(&v103 + 1);
  *(*(__p[1] + (((*(&v103 + 1) + v103) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v103 + 1) + v103) & 0x1FF)) = v23;
  v6 = __CFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v6)
  {
    do
    {
      v30 = *(*(__p[1] + (((v103 + v25 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v103 + v25 - 1) & 0x1FF));
      if (v102 == __p[1])
      {
        v31 = 0;
      }

      else
      {
        v31 = ((v102 - __p[1]) << 6) - 1;
      }

      *(&v103 + 1) = v25 - 1;
      if (v31 - (v25 + v103) + 1 >= 0x400)
      {
        operator delete(*(v102 - 8));
        *&v102 = v102 - 8;
      }

      if (sub_25637978C(*(a1 + 32)))
      {
        v98[2](&v98, v30, a1);
        if (sub_25637978C(*(a1 + 32)))
        {
          v97[2](&v97, v30, a1);
        }
      }

      sub_2563504CC(v30, &v99);
      v32 = v99;
      v33 = v100;
      if (v99 != v100)
      {
        v34 = *(&v103 + 1);
        v35 = v103;
        do
        {
          v36 = __p[1];
          v37 = ((v102 - __p[1]) << 6) - 1;
          v38 = *v32;
          if (v102 == __p[1])
          {
            v37 = 0;
          }

          v39 = v35 + v34;
          if (v37 == v35 + v34)
          {
            sub_256365B08(__p);
            v34 = *(&v103 + 1);
            v35 = v103;
            v36 = __p[1];
            v39 = v103 + *(&v103 + 1);
          }

          *(*&v36[(v39 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v39 & 0x1FF)) = v38;
          *(&v103 + 1) = ++v34;
          ++v32;
        }

        while (v32 != v33);
        v32 = v99;
      }

      if (v32)
      {
        v100 = v32;
        operator delete(v32);
      }

      v25 = *(&v103 + 1);
    }

    while (*(&v103 + 1));
  }

  v26 = __p[1];
  v27 = v102;
  *(&v103 + 1) = 0;
  v28 = (v102 - __p[1]) >> 3;
  if (v28 >= 3)
  {
    do
    {
      operator delete(*v26);
      v27 = v102;
      v26 = (__p[1] + 8);
      __p[1] = v26;
      v28 = (v102 - v26) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v29 = 256;
    goto LABEL_61;
  }

  if (v28 == 2)
  {
    v29 = 512;
LABEL_61:
    *&v103 = v29;
  }

  if (v26 != v27)
  {
    do
    {
      v40 = *v26++;
      operator delete(v40);
    }

    while (v26 != v27);
    if (v102 != __p[1])
    {
      *&v102 = v102 + ((__p[1] - v102 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  nullsub_34(&v97);
  nullsub_34(&v98);
  v41 = *a2;
  v98 = &unk_286854C70;
  v97 = &unk_2868548D0;
  v96 = &unk_286854BD0;
  v102 = 0u;
  v103 = 0u;
  *__p = 0u;
  sub_256365B08(__p);
  v42 = *(&v103 + 1);
  *(*(__p[1] + (((*(&v103 + 1) + v103) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v103 + 1) + v103) & 0x1FF)) = v41;
  v6 = __CFADD__(v42, 1);
  v43 = v42 + 1;
  if (!v6)
  {
    do
    {
      v48 = *(*(__p[1] + (((v103 + v43 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v103 + v43 - 1) & 0x1FF));
      if (v102 == __p[1])
      {
        v49 = 0;
      }

      else
      {
        v49 = ((v102 - __p[1]) << 6) - 1;
      }

      *(&v103 + 1) = v43 - 1;
      if (v49 - (v43 + v103) + 1 >= 0x400)
      {
        operator delete(*(v102 - 8));
        *&v102 = v102 - 8;
      }

      if (sub_25637978C(*(a1 + 32)))
      {
        v98[2](&v98, v48, a1);
        if (sub_25637978C(*(a1 + 32)))
        {
          v97[2](&v97, v48, a1);
          if (sub_25637978C(*(a1 + 32)))
          {
            v96[2](&v96, v48, a1);
          }
        }
      }

      sub_2563504CC(v48, &v99);
      v50 = v99;
      v51 = v100;
      if (v99 != v100)
      {
        v52 = *(&v103 + 1);
        v53 = v103;
        do
        {
          v54 = __p[1];
          v55 = ((v102 - __p[1]) << 6) - 1;
          v56 = *v50;
          if (v102 == __p[1])
          {
            v55 = 0;
          }

          v57 = v53 + v52;
          if (v55 == v53 + v52)
          {
            sub_256365B08(__p);
            v52 = *(&v103 + 1);
            v53 = v103;
            v54 = __p[1];
            v57 = v103 + *(&v103 + 1);
          }

          *(*&v54[(v57 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v57 & 0x1FF)) = v56;
          *(&v103 + 1) = ++v52;
          ++v50;
        }

        while (v50 != v51);
        v50 = v99;
      }

      if (v50)
      {
        v100 = v50;
        operator delete(v50);
      }

      v43 = *(&v103 + 1);
    }

    while (*(&v103 + 1));
  }

  v44 = __p[1];
  v45 = v102;
  *(&v103 + 1) = 0;
  v46 = (v102 - __p[1]) >> 3;
  if (v46 >= 3)
  {
    do
    {
      operator delete(*v44);
      v45 = v102;
      v44 = (__p[1] + 8);
      __p[1] = v44;
      v46 = (v102 - v44) >> 3;
    }

    while (v46 > 2);
  }

  if (v46 == 1)
  {
    v47 = 256;
    goto LABEL_96;
  }

  if (v46 == 2)
  {
    v47 = 512;
LABEL_96:
    *&v103 = v47;
  }

  if (v44 != v45)
  {
    do
    {
      v58 = *v44++;
      operator delete(v58);
    }

    while (v44 != v45);
    if (v102 != __p[1])
    {
      *&v102 = v102 + ((__p[1] - v102 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  nullsub_34(&v96);
  nullsub_34(&v97);
  nullsub_34(&v98);
  v59 = *a2;
  v98 = &unk_2868558A8;
  v102 = 0u;
  v103 = 0u;
  *__p = 0u;
  sub_256365B08(__p);
  v60 = *(&v103 + 1);
  *(*(__p[1] + (((*(&v103 + 1) + v103) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v103 + 1) + v103) & 0x1FF)) = v59;
  v6 = __CFADD__(v60, 1);
  v61 = v60 + 1;
  if (!v6)
  {
    do
    {
      v66 = *(*(__p[1] + (((v103 + v61 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v103 + v61 - 1) & 0x1FF));
      if (v102 == __p[1])
      {
        v67 = 0;
      }

      else
      {
        v67 = ((v102 - __p[1]) << 6) - 1;
      }

      *(&v103 + 1) = v61 - 1;
      if (v67 - (v61 + v103) + 1 >= 0x400)
      {
        operator delete(*(v102 - 8));
        *&v102 = v102 - 8;
      }

      if (sub_25637978C(*(a1 + 32)))
      {
        v98[2](&v98, v66, a1);
      }

      sub_2563504CC(v66, &v99);
      v68 = v99;
      v69 = v100;
      if (v99 != v100)
      {
        v70 = *(&v103 + 1);
        v71 = v103;
        do
        {
          v72 = __p[1];
          v73 = ((v102 - __p[1]) << 6) - 1;
          v74 = *v68;
          if (v102 == __p[1])
          {
            v73 = 0;
          }

          v75 = v71 + v70;
          if (v73 == v71 + v70)
          {
            sub_256365B08(__p);
            v70 = *(&v103 + 1);
            v71 = v103;
            v72 = __p[1];
            v75 = v103 + *(&v103 + 1);
          }

          *(*&v72[(v75 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v75 & 0x1FF)) = v74;
          *(&v103 + 1) = ++v70;
          ++v68;
        }

        while (v68 != v69);
        v68 = v99;
      }

      if (v68)
      {
        v100 = v68;
        operator delete(v68);
      }

      v61 = *(&v103 + 1);
    }

    while (*(&v103 + 1));
  }

  v62 = __p[1];
  v63 = v102;
  *(&v103 + 1) = 0;
  v64 = (v102 - __p[1]) >> 3;
  if (v64 >= 3)
  {
    do
    {
      operator delete(*v62);
      v63 = v102;
      v62 = (__p[1] + 8);
      __p[1] = v62;
      v64 = (v102 - v62) >> 3;
    }

    while (v64 > 2);
  }

  if (v64 == 1)
  {
    v65 = 256;
    goto LABEL_129;
  }

  if (v64 == 2)
  {
    v65 = 512;
LABEL_129:
    *&v103 = v65;
  }

  if (v62 != v63)
  {
    do
    {
      v76 = *v62++;
      operator delete(v76);
    }

    while (v62 != v63);
    if (v102 != __p[1])
    {
      *&v102 = v102 + ((__p[1] - v102 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  nullsub_34(&v98);
  v77 = *a2;
  v98 = &unk_286854948;
  v102 = 0u;
  v103 = 0u;
  *__p = 0u;
  sub_256365B08(__p);
  v78 = *(&v103 + 1);
  *(*(__p[1] + (((*(&v103 + 1) + v103) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v103 + 1) + v103) & 0x1FF)) = v77;
  v6 = __CFADD__(v78, 1);
  v79 = v78 + 1;
  if (!v6)
  {
    do
    {
      v84 = *(*(__p[1] + (((v103 + v79 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v103 + v79 - 1) & 0x1FF));
      if (v102 == __p[1])
      {
        v85 = 0;
      }

      else
      {
        v85 = ((v102 - __p[1]) << 6) - 1;
      }

      *(&v103 + 1) = v79 - 1;
      if (v85 - (v79 + v103) + 1 >= 0x400)
      {
        operator delete(*(v102 - 8));
        *&v102 = v102 - 8;
      }

      if (sub_25637978C(*(a1 + 32)))
      {
        v98[2](&v98, v84, a1);
      }

      sub_2563504CC(v84, &v99);
      v86 = v99;
      v87 = v100;
      if (v99 != v100)
      {
        v88 = *(&v103 + 1);
        v89 = v103;
        do
        {
          v90 = __p[1];
          v91 = ((v102 - __p[1]) << 6) - 1;
          v92 = *v86;
          if (v102 == __p[1])
          {
            v91 = 0;
          }

          v93 = v89 + v88;
          if (v91 == v89 + v88)
          {
            sub_256365B08(__p);
            v88 = *(&v103 + 1);
            v89 = v103;
            v90 = __p[1];
            v93 = v103 + *(&v103 + 1);
          }

          *(*&v90[(v93 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v93 & 0x1FF)) = v92;
          *(&v103 + 1) = ++v88;
          ++v86;
        }

        while (v86 != v87);
        v86 = v99;
      }

      if (v86)
      {
        v100 = v86;
        operator delete(v86);
      }

      v79 = *(&v103 + 1);
    }

    while (*(&v103 + 1));
  }

  v80 = __p[1];
  v81 = v102;
  *(&v103 + 1) = 0;
  v82 = (v102 - __p[1]) >> 3;
  if (v82 >= 3)
  {
    do
    {
      operator delete(*v80);
      v81 = v102;
      v80 = (__p[1] + 8);
      __p[1] = v80;
      v82 = (v102 - v80) >> 3;
    }

    while (v82 > 2);
  }

  if (v82 == 1)
  {
    v83 = 256;
    goto LABEL_162;
  }

  if (v82 == 2)
  {
    v83 = 512;
LABEL_162:
    *&v103 = v83;
  }

  if (v80 != v81)
  {
    do
    {
      v94 = *v80++;
      operator delete(v94);
    }

    while (v80 != v81);
    if (v102 != __p[1])
    {
      *&v102 = v102 + ((__p[1] - v102 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return nullsub_34(&v98);
}

void sub_256364630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  sub_25636592C(&a18);
  nullsub_34(&a12);
  _Unwind_Resume(a1);
}

void sub_2563646FC(void *a1)
{
  v1 = a1[25];
  for (i = a1[26]; v1 != i; v1 += 12)
  {
    if (*v1)
    {
      if ((*v1 - 1) < 2)
      {
        v4 = a1[4];
        operator new();
      }
    }

    else
    {
      sub_256370464(v1, a1);
    }
  }
}

void sub_2563647D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2563647EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  for (i = *(a1 + 56); v1 != i; v1 += 2)
  {
    v4 = *v1;
    if (*(*v1 + 80) != *(*v1 + 72))
    {
      v5 = 0;
      do
      {
        sub_2563668D8(*(a1 + 72), a1, v4, v5++);
        v4 = *v1;
      }

      while (v5 < (*(*v1 + 80) - *(*v1 + 72)) >> 4);
    }
  }
}

void sub_256364870(void *a1)
{
  v1 = a1[13];
  for (i = a1[14]; v1 != i; v1 += 2)
  {
    v4 = *v1;
    if ((*(**v1 + 104))(*v1) != 1 || (sub_256369E40(v4) & 1) != 0 || (*(**v1 + 168))())
    {
      continue;
    }

    v5 = a1[4];
    v6 = sub_256368A38(*v1);
    if (*(v6 + 23) >= 0)
    {
      v7 = *(v6 + 23);
    }

    else
    {
      v7 = *(v6 + 8);
    }

    if (v7 + 64 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_25632CBF8();
    }

    if (v7 + 64 > 0x16)
    {
      operator new();
    }

    qmemcpy(v11, "Cannot validate because the address of Client-allocated tensor '", sizeof(v11));
    if (*(v6 + 23) >= 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = *v6;
    }

    memmove(&v12, v8, v7);
    *(&v12 + v7) = 0;
    v9 = std::string::append(v11, "' is not set.", 0xDuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v11[48] = *(&v9->__r_.__value_.__l + 2);
    *&v11[32] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_25637969C(v5, 5, &v11[32]);
    if ((v11[55] & 0x80000000) != 0)
    {
      operator delete(*&v11[32]);
      if ((v11[23] & 0x80000000) != 0)
      {
LABEL_20:
        operator delete(*v11);
      }
    }

    else if ((v11[23] & 0x80000000) != 0)
    {
      goto LABEL_20;
    }
  }
}

void sub_256364A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_256364ACC(uint64_t a1)
{
  BYTE7(v30) = 4;
  strcpy(__p, "init");
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 23);
      v6 = v5;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(*v2 + 8);
      }

      if (v5 == 4)
      {
        if (v6 < 0)
        {
          v4 = *v4;
        }

        if (*v4 == LODWORD(__p[0]))
        {
          break;
        }
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  if (v2 == v3 || (v7 = v2[1]) == 0 || (atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed), shared_owners = v7->__shared_owners_, std::__shared_weak_count::__release_weak(v7), shared_owners == -1))
  {
LABEL_24:
    v15 = *(a1 + 32);
    operator new();
  }

  BYTE7(v30) = 4;
  strcpy(__p, "init");
  v9 = *(a1 + 48);
  if (v9 != *(a1 + 56))
  {
    while (1)
    {
      v10 = *v9;
      v11 = *(*v9 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(*v9 + 8);
      }

      if (v11 == 4)
      {
        if (v12 < 0)
        {
          v10 = *v10;
        }

        if (*v10 == LODWORD(__p[0]))
        {
          break;
        }
      }

      v9 += 2;
    }
  }

  v13 = *v9;
  v14 = v9[1];
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = 0;
  v33 = std::__shared_weak_count::lock(v14);
  if (v33)
  {
    v32 = v13;
  }

  else
  {
    v13 = 0;
  }

  std::__shared_weak_count::__release_weak(v14);
  if (*(v13 + 80) != *(v13 + 72))
  {
    v16 = 0;
    do
    {
      sub_2563668D8(*(a1 + 72), a1, v13, v16++);
      v13 = v32;
    }

    while (v16 < (*(v32 + 80) - *(v32 + 72)) >> 4);
  }

  v30 = 0u;
  v31 = 0u;
  *__p = 0u;
  sub_2563660D8(__p);
  v17 = *(v13 + 80);
  v18 = v30;
  v19 = __p[1];
  *(*(__p[1] + (((*(&v31 + 1) + v31) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v31 + 1) + v31) & 0x1FF)) = 0;
  v20 = (*(&v31 + 1))++;
  v21 = (v17 - *(v13 + 72)) >> 4;
  if ((*(v19 + (((v20 + v31) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v20 + v31) & 0x1FF] >= v21)
  {
    v24 = v18;
  }

  else
  {
    do
    {
      v22 = sub_25637978C(*(a1 + 32));
      v19 = __p[1];
      if (!v22)
      {
        break;
      }

      v23 = sub_256367228(*(a1 + 72), a1, v13, *(*(__p[1] + (((*(&v31 + 1) + v31 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v31 + 1) + v31 - 1) & 0x1FF)));
      v19 = __p[1];
      *(*(__p[1] + (((*(&v31 + 1) + v31 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v31 + 1) + v31 - 1) & 0x1FF)) = v23;
    }

    while ((*(v19 + (((*(&v31 + 1) + v31 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(*(&v31 + 1) + v31 - 1) & 0x1FF] < v21);
    v24 = v30;
  }

  *(&v31 + 1) = 0;
  v25 = v24 - v19;
  if (v25 >= 3)
  {
    do
    {
      operator delete(*v19);
      v24 = v30;
      v19 = (__p[1] + 8);
      __p[1] = v19;
      v25 = (v30 - v19) >> 3;
    }

    while (v25 > 2);
  }

  if (v25 == 1)
  {
    v26 = 256;
    goto LABEL_41;
  }

  if (v25 == 2)
  {
    v26 = 512;
LABEL_41:
    *&v31 = v26;
  }

  if (v19 != v24)
  {
    do
    {
      v27 = *v19++;
      operator delete(v27);
    }

    while (v19 != v24);
    if (v30 != __p[1])
    {
      *&v30 = v30 + ((__p[1] - v30 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v28 = v33;
  if (v33)
  {
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }
}

void sub_256364ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_25636592C(&__p);
  sub_25632EA30(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_256364F14@<X0>(uint64_t result@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 48);
  v5 = *(result + 56);
  if (v4 != v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    while (1)
    {
      v9 = *(*v4 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(*v4 + 8);
      }

      if (v9 == v7)
      {
        v11 = v10 >= 0 ? *v4 : **v4;
        result = memcmp(v11, v8, v7);
        if (!result)
        {
          break;
        }
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_19:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v12 = v4[1];
    *a3 = *v4;
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_256364FDC(uint64_t a1)
{
  BYTE7(v25) = 6;
  strcpy(__p, "deinit");
  v2 = *(a1 + 48);
  if (v2 != *(a1 + 56))
  {
    while (1)
    {
      v3 = *v2;
      v4 = *(*v2 + 23);
      v5 = v4;
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(*v2 + 8);
      }

      if (v4 == 6)
      {
        if (v5 < 0)
        {
          v3 = *v3;
        }

        v6 = *v3;
        v7 = *(v3 + 4);
        if (v6 == LODWORD(__p[0]) && v7 == WORD2(__p[0]))
        {
          break;
        }
      }

      v2 += 2;
    }
  }

  v9 = *v2;
  v10 = v2[1];
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v27 = 0;
  v28 = std::__shared_weak_count::lock(v10);
  if (v28)
  {
    v27 = v9;
  }

  else
  {
    v9 = 0;
  }

  std::__shared_weak_count::__release_weak(v10);
  if (*(v9 + 80) != *(v9 + 72))
  {
    v11 = 0;
    do
    {
      sub_2563668D8(*(a1 + 72), a1, v9, v11++);
      v9 = v27;
    }

    while (v11 < (*(v27 + 80) - *(v27 + 72)) >> 4);
  }

  v25 = 0u;
  v26 = 0u;
  *__p = 0u;
  sub_2563660D8(__p);
  v12 = *(v9 + 80);
  v13 = v25;
  v14 = __p[1];
  *(*(__p[1] + (((*(&v26 + 1) + v26) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v26 + 1) + v26) & 0x1FF)) = 0;
  v15 = (*(&v26 + 1))++;
  v16 = (v12 - *(v9 + 72)) >> 4;
  if ((*(v14 + (((v15 + v26) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v15 + v26) & 0x1FF] >= v16)
  {
    v19 = v13;
  }

  else
  {
    do
    {
      v17 = sub_25637978C(*(a1 + 32));
      v14 = __p[1];
      if (!v17)
      {
        break;
      }

      v18 = sub_256367228(*(a1 + 72), a1, v9, *(*(__p[1] + (((*(&v26 + 1) + v26 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v26 + 1) + v26 - 1) & 0x1FF)));
      v14 = __p[1];
      *(*(__p[1] + (((*(&v26 + 1) + v26 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v26 + 1) + v26 - 1) & 0x1FF)) = v18;
    }

    while ((*(v14 + (((*(&v26 + 1) + v26 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(*(&v26 + 1) + v26 - 1) & 0x1FF] < v16);
    v19 = v25;
  }

  *(&v26 + 1) = 0;
  v20 = v19 - v14;
  if (v20 >= 3)
  {
    do
    {
      operator delete(*v14);
      v19 = v25;
      v14 = (__p[1] + 8);
      __p[1] = v14;
      v20 = (v25 - v14) >> 3;
    }

    while (v20 > 2);
  }

  if (v20 == 1)
  {
    v21 = 256;
    goto LABEL_31;
  }

  if (v20 == 2)
  {
    v21 = 512;
LABEL_31:
    *&v26 = v21;
  }

  if (v14 != v19)
  {
    do
    {
      v22 = *v14++;
      operator delete(v22);
    }

    while (v14 != v19);
    if (v25 != __p[1])
    {
      *&v25 = v25 + ((__p[1] - v25 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v23 = v28;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }
}

void sub_2563652EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_25636592C(&a9);
  sub_25632EA30(&a15);
  _Unwind_Resume(a1);
}

void sub_256365314(uint64_t a1)
{
  BYTE7(v24) = 7;
  strcpy(__p, "reshape");
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 23);
      v6 = v5;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(*v2 + 8);
      }

      if (v5 == 7)
      {
        if (v6 < 0)
        {
          v4 = *v4;
        }

        v7 = *v4;
        v8 = *(v4 + 3);
        if (v7 == LODWORD(__p[0]) && v8 == *(__p + 3))
        {
          break;
        }
      }

      v2 += 2;
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  if (v2 == v3 || (v10 = v2[1]) == 0)
  {
LABEL_18:
    v11 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v11 = *v2;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v26 = 0;
    v27 = std::__shared_weak_count::lock(v10);
    if (v27)
    {
      v26 = v11;
    }

    else
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v10);
  }

  v24 = 0u;
  v25 = 0u;
  *__p = 0u;
  sub_2563660D8(__p);
  v12 = v24;
  v13 = __p[1];
  *(*(__p[1] + (((*(&v25 + 1) + v25) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v25 + 1) + v25) & 0x1FF)) = 0;
  v14 = (*(&v25 + 1))++;
  v15 = (*(v11 + 80) - *(v11 + 72)) >> 4;
  if ((*(v13 + (((v14 + v25) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v14 + v25) & 0x1FF] >= v15)
  {
    v18 = v12;
  }

  else
  {
    do
    {
      v16 = sub_25637978C(*(a1 + 32));
      v13 = __p[1];
      if (!v16)
      {
        break;
      }

      v17 = sub_256367228(*(a1 + 72), a1, v11, *(*(__p[1] + (((*(&v25 + 1) + v25 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v25 + 1) + v25 - 1) & 0x1FF)));
      v13 = __p[1];
      *(*(__p[1] + (((*(&v25 + 1) + v25 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v25 + 1) + v25 - 1) & 0x1FF)) = v17;
    }

    while ((*(v13 + (((*(&v25 + 1) + v25 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(*(&v25 + 1) + v25 - 1) & 0x1FF] < v15);
    v18 = v24;
  }

  *(&v25 + 1) = 0;
  v19 = v18 - v13;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v13);
      v18 = v24;
      v13 = (__p[1] + 8);
      __p[1] = v13;
      v19 = (v24 - v13) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v20 = 256;
    goto LABEL_32;
  }

  if (v19 == 2)
  {
    v20 = 512;
LABEL_32:
    *&v25 = v20;
  }

  if (v13 != v18)
  {
    do
    {
      v21 = *v13++;
      operator delete(v21);
    }

    while (v13 != v18);
    if (v24 != __p[1])
    {
      *&v24 = v24 + ((__p[1] - v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v22 = v27;
  if (v27)
  {
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_25636560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_25636592C(&a9);
  sub_25632EA30(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_25636562C(void *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = dlopen(v3, 262);
  *a1 = v4;
  return v4 != 0;
}

void sub_256365670(uint64_t a1)
{
  *a1 = &unk_2868554C0;
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

uint64_t sub_2563656F4(uint64_t a1)
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

void **sub_256365760(void **a1)
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
        v5 = v3 - 48;
        sub_25632D0E0((v3 - 40));
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

void *sub_2563657C8(void *a1)
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

void **sub_256365858(void **a1)
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
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
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

void **sub_2563658D0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_256368E30(v3 - 80);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_25636592C(uint64_t a1)
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

uint64_t **sub_2563659F8(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x259C60EF0](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

uint64_t sub_256365A70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v4)
      {
        v5 = MEMORY[0x259C60C30]();
        MEMORY[0x259C60EF0](v5, 0x20C4093837F09);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void *sub_256365B08(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
  return sub_256365DA4(a1, &v11);
}

void sub_256365D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  operator delete(v11);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void *sub_256365DA4(void *result, void *a2)
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

const void **sub_256365F38(const void **result, void *a2)
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

void *sub_2563660D8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
  return sub_256366374(a1, &v11);
}

void sub_256366304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  operator delete(v11);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void *sub_256366374(void *result, void *a2)
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

const void **sub_256366508(const void **result, void *a2)
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

void sub_256366720(uint64_t *a1, int *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  sub_256353580(&v8, a2);
  v5 = *(a3 + 24);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5 != a3)
  {
    v5 = (*(*v5 + 16))(v5);
LABEL_4:
    v18 = v5;
    goto LABEL_6;
  }

  v18 = v17;
  (*(*v5 + 24))(v5, v17);
LABEL_6:
  sub_256367BBC((v4 + 8), &v8);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    v6 = __p;
    if (__p)
    {
LABEL_10:
      v16 = v6;
      operator delete(v6);
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    v6 = __p;
    if (__p)
    {
      goto LABEL_10;
    }
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2563668D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = *(*(a3 + 72) + 16 * a4);
  v70 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v9 = *(v8 + 24) - *(v8 + 16);
  if (v9)
  {
    sub_256367784(&v67 + 8, v9 >> 4);
    v10 = *(&v66 + 1);
    v9 = v66;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(v8 + 48) - *(v8 + 40)) >> 4;
  v12 = (v10 - v9) >> 3;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      *(&v66 + 1) = v9 + 8 * v11;
    }
  }

  else
  {
    sub_25633FFA0(&v66, v11 - v12);
  }

  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  if (v14 != v13)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      *(*(&v67 + 1) + 8 * v16++) = *&v13[v15];
      v13 = *(v8 + 16);
      v14 = *(v8 + 24);
      v15 += 16;
    }

    while (v16 < (v14 - v13) >> 4);
  }

  v17 = *(v8 + 40);
  v18 = *(v8 + 48);
  if (v18 != v17)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      *(v66 + 8 * v20++) = *&v17[v19];
      v17 = *(v8 + 40);
      v18 = *(v8 + 48);
      v19 += 16;
    }

    while (v20 < (v18 - v17) >> 4);
    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
  }

  v49 = 0u;
  *v48 = 0u;
  *v47 = 0u;
  v46 = 0u;
  *v45 = 0u;
  *v44 = 0u;
  LODWORD(v43) = *(v8 + 8);
  if (v13 != v14)
  {
    do
    {
      LODWORD(v53) = (*(**v13 + 16))(*v13);
      sub_256353218(v44, &v53);
      LODWORD(v53) = (*(**v13 + 80))(*v13);
      sub_256353218(v47, &v53);
      v13 += 16;
    }

    while (v13 != v14);
    v17 = *(v8 + 40);
    v18 = *(v8 + 48);
  }

  for (; v17 != v18; v17 += 16)
  {
    LODWORD(v53) = (*(**v17 + 16))(*v17);
    sub_256353218(&v45[1], &v53);
    LODWORD(v53) = (*(**v17 + 80))(*v17);
    sub_256353218(&v48[1], &v53);
  }

  v21 = sub_25636814C((*a1 + 8), &v43);
  if (v21 || (v22 = *a1, v47[1] = v47[0], *&v49 = v48[1], v44[1] = v44[0], *&v46 = v45[1], (v21 = sub_25636814C((v22 + 8), &v43)) != 0))
  {
    v23 = v21[18];
    if (v23)
    {
      if (v23 == (v21 + 15))
      {
        p_dst = &__dst;
        (*(*v23 + 3))(v23, &__dst);
        v23 = p_dst;
      }

      else
      {
        v23 = (*(*v23 + 2))(v23);
        p_dst = v23;
      }

      if (v23)
      {
        if (v23 == &__dst)
        {
          v56 = &v53;
          (*(*v23 + 3))(v23, &v53);
LABEL_31:
          sub_2563682B0(&v53, v69);
          if (v56 == &v53)
          {
            (*(*v56 + 4))(v56);
          }

          else if (v56)
          {
            (*(*v56 + 5))(v56);
          }

          v24 = *a1;
          v53 = v8;
          sub_2563678D8(&v54, &v66);
          sub_256368514((v24 + 48), &v53);
          if (v61 == v60)
          {
            (*(*v61 + 32))(v61);
            v25 = __p;
            if (__p)
            {
LABEL_39:
              v58 = v25;
              operator delete(v25);
            }
          }

          else
          {
            if (v61)
            {
              (*(*v61 + 40))(v61);
            }

            v25 = __p;
            if (__p)
            {
              goto LABEL_39;
            }
          }

          if (v54)
          {
            v55.__locale_ = v54;
            operator delete(v54);
          }

          if (p_dst == &__dst)
          {
            (*(*p_dst + 4))(p_dst);
          }

          else if (p_dst)
          {
            (*(*p_dst + 5))(p_dst);
            v26 = v48[1];
            if (!v48[1])
            {
              goto LABEL_51;
            }

LABEL_50:
            *&v49 = v26;
            operator delete(v26);
            goto LABEL_51;
          }

          v26 = v48[1];
          if (!v48[1])
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        v23 = (*(*v23 + 2))(v23);
      }
    }

    else
    {
      p_dst = 0;
    }

    v56 = v23;
    goto LABEL_31;
  }

  sub_25634984C(&v53);
  v29 = *(a3 + 23);
  if (v29 >= 0)
  {
    v30 = a3;
  }

  else
  {
    v30 = *a3;
  }

  if (v29 >= 0)
  {
    v31 = *(a3 + 23);
  }

  else
  {
    v31 = *(a3 + 8);
  }

  v32 = sub_256349D6C(&v53, v30, v31);
  v33 = sub_256349D6C(v32, ":", 1);
  v34 = MEMORY[0x259C60DF0](v33, a4);
  v35 = sub_256349D6C(v34, ", of type ", 10);
  v36 = MEMORY[0x259C60DE0](v35, *(v8 + 8));
  v37 = sub_256349D6C(v36, ", did not have a ", 17);
  sub_256349D6C(v37, "valid implementation.", 21);
  v38 = *(a2 + 32);
  if ((v64 & 0x10) != 0)
  {
    v40 = v63;
    if (v63 < v60[0])
    {
      v63 = v60[0];
      v40 = v60[0];
    }

    v41 = &v59;
  }

  else
  {
    if ((v64 & 8) == 0)
    {
      v39 = 0;
      v51 = 0;
      goto LABEL_87;
    }

    v41 = &v56;
    v40 = v58;
  }

  v42 = *v41;
  v39 = v40 - *v41;
  if (v39 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25632CBF8();
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v51 = v40 - *v41;
  if (v39)
  {
    memmove(&__dst, v42, v39);
  }

LABEL_87:
  *(&__dst + v39) = 0;
  sub_25637969C(v38, 0xFFFF, &__dst);
  if (v51 < 0)
  {
    operator delete(__dst);
  }

  v53 = *MEMORY[0x277D82828];
  *(&v53 + *(v53 - 24)) = *(MEMORY[0x277D82828] + 24);
  v54 = (MEMORY[0x277D82878] + 16);
  if (v62 < 0)
  {
    operator delete(v60[2]);
  }

  v54 = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x259C60E90](&v65);
  v26 = v48[1];
  if (v48[1])
  {
    goto LABEL_50;
  }

LABEL_51:
  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  if (v45[1])
  {
    *&v46 = v45[1];
    operator delete(v45[1]);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v70 == v69)
  {
    (*(*v70 + 32))(v70);
    v27 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
LABEL_61:
      *&v68 = v27;
      operator delete(v27);
    }
  }

  else
  {
    if (v70)
    {
      (*(*v70 + 40))(v70);
    }

    v27 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      goto LABEL_61;
    }
  }

  if (v66)
  {
    *(&v66 + 1) = v66;
    operator delete(v66);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_256367184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_25635291C(&a22, MEMORY[0x277D82828]);
  MEMORY[0x259C60E90](va);
  sub_25635331C(&a2);
  sub_256367B10(v35 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_256367228(int8x8_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a3 + 72) + 16 * a4);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = (*a1)[7];
  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*&(*a1)[6] + 8 * v10);
  do
  {
    do
    {
      v11 = *v11;
    }

    while (v11[1] != v7);
  }

  while (v11[2] != v4);
  v14 = a2;
  v15 = a4;
  v12 = v11[12];
  if (!v12)
  {
    sub_25633FB08();
  }

  return (*(*v12 + 48))(v12, v11 + 3, &v15, &v14, v4 + 64, v11 + 6);
}

uint64_t sub_256367334(uint64_t a1)
{
  sub_25636744C(a1 + 48, *(a1 + 64));
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    do
    {
      v4 = *v3;
      sub_2563675D8(v3 + 2);
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_2563673B0(uint64_t a1)
{
  sub_25636744C(a1 + 48, *(a1 + 64));
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    do
    {
      v4 = *v3;
      sub_2563675D8(v3 + 2);
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  JUMPOUT(0x259C60EF0);
}

void sub_25636744C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[12];
      if (v4 == v2 + 9)
      {
        (*(*v4 + 32))(v4);
        v5 = v2[6];
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v4)
        {
          (*(*v4 + 40))(v4);
        }

        v5 = v2[6];
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v2[7] = v5;
      operator delete(v5);
LABEL_9:
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_256367518(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3 == a2 + 7)
  {
    (*(*v3 + 32))(v3);
    v4 = a2[4];
    if (v4)
    {
LABEL_5:
      a2[5] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a2[4];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a2[1];
  if (v5)
  {
    a2[2] = v5;

    operator delete(v5);
  }
}

void sub_2563675D8(void *a1)
{
  v2 = a1 + 13;
  v3 = a1[16];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[10];
    if (v4)
    {
LABEL_5:
      a1[11] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[10];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;

    operator delete(v7);
  }
}

void *sub_2563676B8(void *a1)
{
  v2 = a1 + 13;
  v3 = a1[16];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[10];
    if (v4)
    {
LABEL_5:
      a1[11] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[10];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_256367784(uint64_t a1, unint64_t a2)
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
      sub_25632CE68();
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

      sub_25632CCA0();
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

void *sub_2563678D8(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_25632CE68();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_25632CE68();
  }

  v6 = a2[9];
  if (v6)
  {
    if (v6 == a2 + 6)
    {
      a1[9] = a1 + 6;
      (*(*a2[9] + 24))(a2[9]);
      return a1;
    }

    v6 = (*(*v6 + 16))(v6);
  }

  a1[9] = v6;
  return a1;
}

void sub_256367A2C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_256367A64(void *a1)
{
  v2 = a1 + 7;
  v3 = a1[10];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    if (v4)
    {
LABEL_5:
      a1[5] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_256367B10(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 24);
    if (v4)
    {
LABEL_5:
      *(a1 + 32) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_256367BBC(void *a1, void *a2)
{
  v4 = sub_256368054(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_29;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_29:
    sub_256367F24();
  }

  while (1)
  {
    v11 = result[1];
    if (v11 != v5)
    {
      if (v7.u32[0] <= 1uLL)
      {
        v11 &= *&v6 - 1;
      }

      else if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }

      if (v11 != v8)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    if (*(result + 4) == *a2)
    {
      v13 = result[3];
      v12 = result[4];
      if (v12 - v13 == a2[2] - a2[1])
      {
        if (v13 != v12)
        {
          v14 = a2[1];
          while (*v13 == *v14)
          {
            v13 += 4;
            ++v14;
            if (v13 == v12)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_12;
        }

LABEL_20:
        v16 = result[6];
        v15 = result[7];
        if (v15 - v16 == a2[5] - a2[4])
        {
          break;
        }
      }
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_29;
    }
  }

  if (v16 != v15)
  {
    for (i = a2[4]; *v16 == *i; ++i)
    {
      v16 += 4;
      if (v16 == v15)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

void sub_256367F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_256368008(va);
  _Unwind_Resume(a1);
}

uint64_t sub_256368008(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_2563675D8(v1 + 2);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_256368054(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2] - v2;
  if (v3)
  {
    v4 = v3 >> 2;
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = 1;
    do
    {
      v7 = *v2++;
      v6 = v7 ^ (2 * v6);
      --v5;
    }

    while (v5);
    v8 = 2 * v6;
  }

  else
  {
    v8 = 2;
  }

  v9 = a2[4];
  v10 = a2[5] - v9;
  if (v10)
  {
    v11 = v10 >> 2;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = 1;
    do
    {
      v14 = *v9++;
      v13 = v14 ^ (2 * v13);
      --v12;
    }

    while (v12);
    v15 = 4 * v13;
  }

  else
  {
    v15 = 4;
  }

  v16 = a2[7];
  v17 = a2[8] - v16;
  if (v17)
  {
    v18 = v17 >> 2;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = 1;
    do
    {
      v21 = *v16++;
      v20 = v21 ^ (2 * v20);
      --v19;
    }

    while (v19);
    v22 = 8 * v20;
  }

  else
  {
    v22 = 8;
  }

  v23 = a2[10];
  v24 = a2[11] - v23;
  if (v24)
  {
    v25 = v24 >> 2;
    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = 1;
    do
    {
      v28 = *v23++;
      v27 = v28 ^ (2 * v27);
      --v26;
    }

    while (v26);
    v29 = 32 * v27;
  }

  else
  {
    v29 = 32;
  }

  return v8 ^ *a2 ^ v15 ^ v22 ^ v29;
}

uint64_t *sub_25636814C(void *a1, void *a2)
{
  v4 = sub_256368054(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (*(i + 4) == *a2)
        {
          v11 = i[3];
          v10 = i[4];
          if (v10 - v11 == a2[2] - a2[1])
          {
            if (v11 == v10)
            {
LABEL_19:
              v14 = i[6];
              v13 = i[7];
              if (v13 - v14 == a2[5] - a2[4])
              {
                if (v14 == v13)
                {
                  return i;
                }

                for (j = a2[4]; *v14 == *j; ++j)
                {
                  v14 += 4;
                  if (v14 == v13)
                  {
                    return i;
                  }
                }
              }
            }

            else
            {
              v12 = a2[1];
              while (*v11 == *v12)
              {
                v11 += 4;
                ++v12;
                if (v11 == v10)
                {
                  goto LABEL_19;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v6.u32[0] <= 1uLL)
        {
          v9 &= *&v5 - 1;
        }

        else if (v9 >= *&v5)
        {
          v9 %= *&v5;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *sub_2563682B0(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256368508(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_25632CCD4(a1);
}

void *sub_256368514(void *a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_11:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_11;
  }

  return v9;
}

void sub_256368894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2563688A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2563688A8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_256367518(*(a1 + 8), v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2563688FC(uint64_t a1, __int128 *a2, char a3)
{
  *a1 = &unk_2868554C0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_25632CB5C((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v5;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  return a1;
}

void sub_256368990(_Unwind_Exception *a1)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  nullsub_34(v1);
  _Unwind_Resume(a1);
}

void sub_2563689C4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 8);
    v3 = (*(a1 + 16) - v2) >> 3;
    v4 = a2 >= v3;
    v5 = a2 - v3;
    if (v5 != 0 && v4)
    {
      sub_25633FFA0(a1 + 8, v5);
    }

    else if (!v4)
    {
      *(a1 + 16) = v2 + 8 * a2;
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = (*(a1 + 40) - v6) >> 3;
    v8 = a2 >= v7;
    v9 = a2 - v7;
    if (v9 != 0 && v8)
    {
      sub_256331B68(a1 + 32, v9);
    }

    else if (!v8)
    {
      *(a1 + 40) = v6 + 8 * a2;
    }
  }
}