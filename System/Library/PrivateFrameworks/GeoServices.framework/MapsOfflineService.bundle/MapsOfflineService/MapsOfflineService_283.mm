void sub_1176AA4(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t a5)
{
  v34 = a4;
  v8 = sub_100E984(a1 + 8, a2, a3, &v34, a5, 0);
  v9 = *(v8 + 1);
  v29 = *v8;
  v30 = v9;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v11 = *(v8 + 4);
  v10 = *(v8 + 5);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  std::ios_base::clear((a1 + 160 + *(*(a1 + 160) - 24)), 0);
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  sub_195CB10(a1 + 184);
  *(a1 + 160 + *(*(a1 + 160) - 24) + 16) = 9;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_4A5C((a1 + 176), v13, v14);
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  v17 = v16 == 0;
  v18 = v16 != 0;
  if (v17)
  {
    v19 = "";
  }

  else
  {
    v19 = ", ";
  }

  sub_4A5C(v15, v19, 2 * v18);
  v20 = sub_4A5C((a1 + 176), "total_cost: ", 15);
  std::ostream::operator<<();
  sub_4A5C(v20, ",", 1);
  v21 = std::ostream::operator<<();
  sub_4A5C(v21, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v20, ", ", 3);
  sub_4C35D4(a2, &__dst);
  sub_1176DE0(a1, &__dst, a2, &__p, a3, v34);
  v22 = *(a1 + 280);
  if ((v22 & 0x10) != 0)
  {
    v24 = *(a1 + 272);
    v25 = *(a1 + 232);
    if (v24 < v25)
    {
      *(a1 + 272) = v25;
      v24 = v25;
    }

    v26 = *(a1 + 224);
    v23 = v24 - v26;
    if (v24 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v23 = 0;
      HIBYTE(v28) = 0;
      goto LABEL_28;
    }

    v26 = *(a1 + 200);
    v23 = *(a1 + 216) - v26;
    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_34:
      sub_3244();
    }
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v28) = v23;
  if (v23)
  {
    memmove(&__dst, v26, v23);
  }

LABEL_28:
  *(&__dst + v23) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v28;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_1176DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1176DE0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  sub_4A5C((a1 + 176), "arcs:[", 8);
  v12 = *a2;
  v13 = a2[1] - *a2;
  if (v13)
  {
    v35 = a2[1] - *a2;
    v34 = 0x2E8BA2E8BA2E8BA3 * (v13 >> 3);
    v14 = *(*a4 + 24) - *(*a4 + 8);
    v37 = (*(*a4 + 16) - **a4) | ((*(*a4 + 20) - *(*a4 + 4)) << 32);
    v38 = v14;
    v15 = sub_F6A040(a3);
    if (a6 == 0x7FFFFFFF)
    {
      v16 = v15;
      sub_4A5C((a1 + 176), "", 0);
      v17 = a4;
      sub_1177138(a1, v12, &v37, v16, a5);
      if (v35 != 88)
      {
        v18 = 0;
        v19 = v34 - 1;
        v20 = 88;
        do
        {
          v21 = *v17 + v18;
          v22 = (*(v21 + 32) - *(v21 + 16));
          v23 = *a2;
          v24 = (*(v21 + 36) - *(v21 + 20));
          v25 = *(v21 + 40) - *(v21 + 24);
          v37 = v22 | (v24 << 32);
          v38 = v25;
          sub_4A5C((a1 + 176), ",", 1);
          sub_1177138(a1, v20 + v23, &v37, 0x3B9ACA00u, a5);
          v18 += 16;
          v20 += 88;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      v26 = v15;
      v36 = a4;
      sub_4A5C((a1 + 176), "", 0);
      sub_1177138(a1, v12, &v37, v26, a5);
      if (v35 != 88)
      {
        v27 = 0;
        v28 = v34 - 1;
        v29 = 88;
        do
        {
          v30 = *a2;
          v31 = *v36 + v27;
          v32 = *(v31 + 40) - *(v31 + 24);
          v37 = (*(v31 + 32) - *(v31 + 16)) | ((*(v31 + 36) - *(v31 + 20)) << 32);
          v38 = v32;
          sub_4A5C((a1 + 176), ",", 1);
          sub_1177138(a1, v29 + v30, &v37, 0x3B9ACA00u, a5);
          v27 += 16;
          v29 += 88;
          --v28;
        }

        while (v28);
      }
    }
  }

  return sub_4A5C((a1 + 176), "]", 1);
}

void *sub_1177138(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  sub_2B7A20(*(a1 + 440), *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  v9 = __p[1];
  if (__p[1] != v34)
  {
    v10 = sub_31AA0C(__p) >> 32;
    v9 = __p[1];
    v11 = v10 * 6.28318531;
    if (!__p[1])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 2.69860754e10;
  if (__p[1])
  {
LABEL_3:
    *&v34 = v9;
    operator delete(v9);
  }

LABEL_4:
  sub_2B7A20(*(a1 + 440), *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  v12 = __p[1];
  if (__p[1] == v34)
  {
    v14 = 2.69860754e10;
    if (!__p[1])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = sub_31A76C(__p) >> 32;
  v12 = __p[1];
  v14 = v13 * 6.28318531;
  if (__p[1])
  {
LABEL_6:
    *&v34 = v12;
    operator delete(v12);
  }

LABEL_7:
  sub_4A5C((a1 + 176), "{", 1);
  v15 = sub_4A5C((a1 + 176), "cost:", 8);
  std::ostream::operator<<();
  sub_4A5C(v15, ",", 1);
  v16 = std::ostream::operator<<();
  sub_4A5C(v16, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v15, ",", 2);
  v17 = sub_4A5C((a1 + 176), "tail:", 8);
  v18 = sub_30E900(v17, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  sub_4A5C(v18, ",", 2);
  v19 = sub_4A5C((a1 + 176), "head:", 8);
  v20 = sub_30E900(v19, *(a2 + 72) & 0xFFFFFFFFFFFFFFLL);
  sub_4A5C(v20, ",", 2);
  sub_4A5C((a1 + 176), "junction_coord:", 18);
  v21 = exp(3.14159265 - v11 / 4294967300.0);
  atan((v21 - 1.0 / v21) * 0.5);
  v22 = std::ostream::operator<<();
  sub_4A5C(v22, ",", 1);
  v23 = std::ostream::operator<<();
  sub_4A5C(v23, ",", 2);
  sub_4A5C((a1 + 176), "segment_coord:", 17);
  v24 = exp(3.14159265 - v14 / 4294967300.0);
  atan((v24 - 1.0 / v24) * 0.5);
  v25 = std::ostream::operator<<();
  sub_4A5C(v25, ",", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, ",", 2);
  *__p = 0u;
  v34 = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  v35 = _Q1;
  v36 = 0x3FF0000000000000;
  v37 = 1;
  v38 = 0u;
  v39 = 0u;
  v40 = 1065353216;
  v41 = 0u;
  v42 = 0u;
  v43 = 1065353216;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_10AA048((a1 + 88), __p, a2, a4, a5);
  sub_1177550(a1, __p);
  sub_1178C78(__p);
  return sub_4A5C((a1 + 176), "}", 1);
}

void sub_1177508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1177528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1178C78(va);
  _Unwind_Resume(a1);
}

void sub_117753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1178C78(va);
  _Unwind_Resume(a1);
}

void *sub_1177550(void *a1, uint64_t a2)
{
  sub_4A5C(a1 + 22, "properties:{", 14);
  v4 = sub_4A5C(a1 + 22, "SEGMENT_COST_TIME_LENGTH:", 28);
  std::ostream::operator<<();
  sub_4A5C(v4, ",", 1);
  v5 = std::ostream::operator<<();
  sub_4A5C(v5, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v4, "", 1);
  for (i = *(a2 + 120); i; i = *i)
  {
    sub_1177658(a1, i + 5, (i + 2));
  }

  for (j = *(a2 + 80); j; j = *j)
  {
    sub_1177704(a1, (j + 5), (j + 2));
  }

  return sub_4A5C(a1 + 22, "}", 1);
}

void *sub_1177658(void *result, double *a2, uint64_t a3)
{
  if (*a2 != 1.0 || a2[1] != 1.0 || a2[2] != 1.0)
  {
    v8 = sub_4A5C(result + 22, ",", 2);
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = sub_4A5C(v8, v10, v11);
    v13 = sub_4A5C(v12, ":", 3);
    v14 = sub_70638(v13, a2);

    return sub_4A5C(v14, "", 1);
  }

  return result;
}

void *sub_1177704(void *result, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 4) == 0;
  }

  if (!v4 || *(a2 + 8) != 0)
  {
    v7 = sub_4A5C(result + 22, ",", 2);
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = sub_4A5C(v7, v9, v10);
    v12 = sub_4A5C(v11, ":", 3);
    std::ostream::operator<<();
    sub_4A5C(v12, ",", 1);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, ",", 1);
    std::ostream::operator<<();

    return sub_4A5C(v12, "", 1);
  }

  return result;
}

void *sub_11777EC(void *a1, void *a2)
{
  *a1 = a2;
  v4 = (a1 + 10);
  sub_1011FA4(a1 + 1, a2);
  sub_10BD0E0(a1 + 6, a2);
  sub_D7B0(v4);
  a1[45] = sub_3AF6B4(a2);
  return a1;
}

uint64_t sub_1177864(uint64_t a1, uint64_t *a2, int *a3, int a4, int a5)
{
  result = sub_F64B34(a2);
  if ((result & 1) == 0)
  {
    if (sub_F63FF4(a2) == 1)
    {
      v11 = sub_45AC50(a2);
      sub_1177B10(a1, v11, a3, a4, a5);
      v12 = sub_45AC50(a2);
      result = sub_58BBC(a2);
      if (result != v12)
      {
        v13 = *(v12 + 23);
        if (*(result + 23) < 0)
        {
          if (v13 >= 0)
          {
            v22 = v12;
          }

          else
          {
            v22 = *v12;
          }

          if (v13 >= 0)
          {
            v23 = *(v12 + 23);
          }

          else
          {
            v23 = *(v12 + 8);
          }

          return sub_13B38(result, v22, v23);
        }

        else if ((*(v12 + 23) & 0x80) != 0)
        {
          v26 = *v12;
          v27 = *(v12 + 8);

          return sub_13A68(result, v26, v27);
        }

        else
        {
          v14 = *v12;
          *(result + 16) = *(v12 + 16);
          *result = v14;
        }
      }
    }

    else
    {
      v15 = sub_45AC50(a2);
      sub_49F780(&v32, v15);
      v16 = sub_F63FF4(a2);
      if (v16 >= 2)
      {
        for (i = 1; i != v16; ++i)
        {
          v18 = sub_F63CBC(a2, i);
          sub_F708E4(&v32, v18);
        }
      }

      v19 = sub_58BBC(a2);
      if (&v32 != v19)
      {
        v20 = *(v19 + 23);
        if (SHIBYTE(v33) < 0)
        {
          if (v20 >= 0)
          {
            v24 = v19;
          }

          else
          {
            v24 = *v19;
          }

          if (v20 >= 0)
          {
            v25 = *(v19 + 23);
          }

          else
          {
            v25 = *(v19 + 8);
          }

          sub_13B38(&v32, v24, v25);
        }

        else if ((*(v19 + 23) & 0x80) != 0)
        {
          sub_13A68(&v32, *v19, *(v19 + 8));
        }

        else
        {
          v21 = *v19;
          v33 = *(v19 + 16);
          v32 = v21;
        }
      }

      sub_1177B10(a1, &v32, a3, a4, a5);
      v28 = sub_58BBC(a2);
      if (v28 != &v32)
      {
        if (*(v28 + 23) < 0)
        {
          if (v33 >= 0)
          {
            v30 = &v32;
          }

          else
          {
            v30 = v32;
          }

          if (v33 >= 0)
          {
            v31 = HIBYTE(v33);
          }

          else
          {
            v31 = *(&v32 + 1);
          }

          sub_13B38(v28, v30, v31);
        }

        else if (v33 < 0)
        {
          sub_13A68(v28, v32, *(&v32 + 1));
        }

        else
        {
          v29 = v32;
          *(v28 + 16) = v33;
          *v28 = v29;
        }
      }

      return sub_4547F0(&v32);
    }
  }

  return result;
}

void sub_1177B10(uint64_t a1, uint64_t a2, int *a3, int a4, int a5)
{
  v34 = a4;
  v8 = sub_1011FD4(a1 + 8, a2, a3, &v34, a5, 0);
  v9 = *(v8 + 1);
  v29 = *v8;
  v30 = v9;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v11 = *(v8 + 4);
  v10 = *(v8 + 5);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  std::ios_base::clear((a1 + 80 + *(*(a1 + 80) - 24)), 0);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_195CB10(a1 + 104);
  *(a1 + 80 + *(*(a1 + 80) - 24) + 16) = 9;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_4A5C((a1 + 96), v13, v14);
  v16 = *(a2 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  v17 = v16 == 0;
  v18 = v16 != 0;
  if (v17)
  {
    v19 = "";
  }

  else
  {
    v19 = ", ";
  }

  sub_4A5C(v15, v19, 2 * v18);
  v20 = sub_4A5C((a1 + 96), "total_cost: ", 15);
  std::ostream::operator<<();
  sub_4A5C(v20, ",", 1);
  v21 = std::ostream::operator<<();
  sub_4A5C(v21, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v20, ", ", 3);
  sub_4C35D4(a2, &__dst);
  sub_1177E4C(a1, &__dst, a2, &__p, a3, v34);
  v22 = *(a1 + 200);
  if ((v22 & 0x10) != 0)
  {
    v24 = *(a1 + 192);
    v25 = *(a1 + 152);
    if (v24 < v25)
    {
      *(a1 + 192) = v25;
      v24 = v25;
    }

    v26 = *(a1 + 144);
    v23 = v24 - v26;
    if (v24 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v23 = 0;
      HIBYTE(v28) = 0;
      goto LABEL_28;
    }

    v26 = *(a1 + 120);
    v23 = *(a1 + 136) - v26;
    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_34:
      sub_3244();
    }
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v28) = v23;
  if (v23)
  {
    memmove(&__dst, v26, v23);
  }

LABEL_28:
  *(&__dst + v23) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v28;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_1177E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1177E4C(void *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  sub_4A5C(a1 + 12, "arcs:[", 8);
  v12 = *a2;
  v13 = a2[1] - *a2;
  if (v13)
  {
    v35 = a2[1] - *a2;
    v34 = 0x2E8BA2E8BA2E8BA3 * (v13 >> 3);
    v14 = *(*a4 + 24) - *(*a4 + 8);
    v37 = (*(*a4 + 16) - **a4) | ((*(*a4 + 20) - *(*a4 + 4)) << 32);
    v38 = v14;
    v15 = sub_F6A040(a3);
    if (a6 == 0x7FFFFFFF)
    {
      v16 = v15;
      sub_4A5C(a1 + 12, "", 0);
      v17 = a4;
      sub_11781A4(a1, v12, &v37, v16, a5);
      if (v35 != 88)
      {
        v18 = 0;
        v19 = v34 - 1;
        v20 = 88;
        do
        {
          v21 = *v17 + v18;
          v22 = (*(v21 + 32) - *(v21 + 16));
          v23 = *a2;
          v24 = (*(v21 + 36) - *(v21 + 20));
          v25 = *(v21 + 40) - *(v21 + 24);
          v37 = v22 | (v24 << 32);
          v38 = v25;
          sub_4A5C(a1 + 12, ",", 1);
          sub_11781A4(a1, v20 + v23, &v37, 0x3B9ACA00u, a5);
          v18 += 16;
          v20 += 88;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      v26 = v15;
      v36 = a4;
      sub_4A5C(a1 + 12, "", 0);
      sub_11781A4(a1, v12, &v37, v26, a5);
      if (v35 != 88)
      {
        v27 = 0;
        v28 = v34 - 1;
        v29 = 88;
        do
        {
          v30 = *a2;
          v31 = *v36 + v27;
          v32 = *(v31 + 40) - *(v31 + 24);
          v37 = (*(v31 + 32) - *(v31 + 16)) | ((*(v31 + 36) - *(v31 + 20)) << 32);
          v38 = v32;
          sub_4A5C(a1 + 12, ",", 1);
          sub_11781A4(a1, v29 + v30, &v37, 0x3B9ACA00u, a5);
          v27 += 16;
          v29 += 88;
          --v28;
        }

        while (v28);
      }
    }
  }

  return sub_4A5C(a1 + 12, "]", 1);
}

void *sub_11781A4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = sub_40E770(a1[45], a2, 1) >> 32;
  v38 = sub_40E770(a1[45], a2, 0);
  sub_4A5C(a1 + 12, "{", 1);
  v8 = sub_4A5C(a1 + 12, "cost:", 8);
  std::ostream::operator<<();
  sub_4A5C(v8, ",", 1);
  v9 = std::ostream::operator<<();
  sub_4A5C(v9, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v8, ",", 2);
  v10 = sub_4A5C(a1 + 12, "tail:", 8);
  v11 = *(a2 + 32);
  v12 = std::ostream::operator<<();
  sub_4A5C(v12, ".", 1);
  v13 = std::ostream::operator<<();
  v14 = sub_4A5C(v13, " ", 1);
  v15 = sub_7052C(v14, (v11 & 0x2000000000000000) == 0);
  v16 = sub_4A5C(v15, " ", 1);
  if ((v11 & 0x4000000000000000) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v11 >> 63;
  }

  sub_7057C(v16, v17);
  sub_4A5C(v10, ",", 2);
  v18 = sub_4A5C(a1 + 12, "head:", 8);
  v19 = *(a2 + 72);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, ".", 1);
  v21 = std::ostream::operator<<();
  v22 = sub_4A5C(v21, " ", 1);
  v23 = sub_7052C(v22, (v19 & 0x2000000000000000) == 0);
  v24 = sub_4A5C(v23, " ", 1);
  if ((v19 & 0x4000000000000000) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = v19 >> 63;
  }

  sub_7057C(v24, v25);
  sub_4A5C(v18, ",", 2);
  sub_4A5C(a1 + 12, "junction_coord:", 18);
  v26 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0);
  atan((v26 - 1.0 / v26) * 0.5);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, ",", 1);
  v28 = std::ostream::operator<<();
  sub_4A5C(v28, ",", 2);
  sub_4A5C(a1 + 12, "segment_coord:", 17);
  v29 = exp(3.14159265 - HIDWORD(v38) * 6.28318531 / 4294967300.0);
  atan((v29 - 1.0 / v29) * 0.5);
  v30 = std::ostream::operator<<();
  sub_4A5C(v30, ",", 1);
  v31 = std::ostream::operator<<();
  sub_4A5C(v31, ",", 2);
  memset(v41, 0, 32);
  __asm { FMOV            V1.2D, #1.0 }

  v41[2] = _Q1;
  v42 = 0x3FF0000000000000;
  v43 = 1;
  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  sub_10BAA24(a1 + 6, v41, a2, a4, a5);
  sub_11785D8(a1, v41);
  sub_1178C78(v41);
  return sub_4A5C(a1 + 12, "}", 1);
}

void sub_11785B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1178C78(va);
  _Unwind_Resume(a1);
}

void sub_11785C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1178C78(va);
  _Unwind_Resume(a1);
}

void *sub_11785D8(void *a1, uint64_t a2)
{
  sub_4A5C(a1 + 12, "properties:{", 14);
  v4 = sub_4A5C(a1 + 12, "SEGMENT_COST_TIME_LENGTH:", 28);
  std::ostream::operator<<();
  sub_4A5C(v4, ",", 1);
  v5 = std::ostream::operator<<();
  sub_4A5C(v5, ",", 1);
  std::ostream::operator<<();
  sub_4A5C(v4, "", 1);
  for (i = *(a2 + 120); i; i = *i)
  {
    sub_11786E0(a1, i + 5, (i + 2));
  }

  for (j = *(a2 + 80); j; j = *j)
  {
    sub_117878C(a1, (j + 5), (j + 2));
  }

  return sub_4A5C(a1 + 12, "}", 1);
}

void *sub_11786E0(void *result, double *a2, uint64_t a3)
{
  if (*a2 != 1.0 || a2[1] != 1.0 || a2[2] != 1.0)
  {
    v8 = sub_4A5C(result + 12, ",", 2);
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    v12 = sub_4A5C(v8, v10, v11);
    v13 = sub_4A5C(v12, ":", 3);
    v14 = sub_70638(v13, a2);

    return sub_4A5C(v14, "", 1);
  }

  return result;
}

void *sub_117878C(void *result, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 4) == 0;
  }

  if (!v4 || *(a2 + 8) != 0)
  {
    v7 = sub_4A5C(result + 12, ",", 2);
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = sub_4A5C(v7, v9, v10);
    v12 = sub_4A5C(v11, ":", 3);
    std::ostream::operator<<();
    sub_4A5C(v12, ",", 1);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, ",", 1);
    std::ostream::operator<<();

    return sub_4A5C(v12, "", 1);
  }

  return result;
}

uint64_t sub_1178874(uint64_t **a1)
{
  v1 = *a1;
  v5 = 8;
  strcpy(__p, "standard");
  result = sub_3AF2A4(v1, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(__p[0]);
    return v3;
  }

  return result;
}

void sub_11788F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_117890C(uint64_t **a1)
{
  v2 = *a1;
  HIBYTE(v17[2]) = 19;
  strcpy(v17, "WalkingRouteFinding");
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v3 = sub_3AEC94(v2, v17, &v14);
  v13 = 13;
  strcpy(__p, "cost_function");
  v4 = sub_5F8FC(v3, __p);
  if (*(v4 + 23) < 0)
  {
    sub_325C(&v18, *v4, v4[1]);
  }

  else
  {
    v5 = *v4;
    v19 = v4[2];
    v18 = v5;
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
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
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
  }

  result = sub_3AF23C(*a1, &v18);
  if (SHIBYTE(v19) < 0)
  {
    v11 = result;
    operator delete(v18);
    return v11;
  }

  return result;
}

void sub_1178A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1178AC4(uint64_t **a1)
{
  v2 = *a1;
  HIBYTE(v17[2]) = 18;
  strcpy(v17, "CyclingPathFinding");
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v3 = sub_3AEC94(v2, v17, &v14);
  v13 = 13;
  strcpy(__p, "cost_function");
  v4 = sub_5F8FC(v3, __p);
  if (*(v4 + 23) < 0)
  {
    sub_325C(&v18, *v4, v4[1]);
  }

  else
  {
    v5 = *v4;
    v19 = v4[2];
    v18 = v5;
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v14;
  if (v14)
  {
    v7 = v15;
    v8 = v14;
    if (v15 != v14)
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
      v8 = v14;
    }

    v15 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
  }

  result = sub_3AF30C(*a1, &v18);
  if (SHIBYTE(v19) < 0)
  {
    v11 = result;
    operator delete(v18);
    return v11;
  }

  return result;
}

void sub_1178C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1178C78(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    v3 = a1[19];
    v4 = a1[18];
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
      v4 = a1[18];
    }

    a1[19] = v2;
    operator delete(v4);
  }

  v6 = a1[15];
  if (v6)
  {
    do
    {
      v11 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v11;
    }

    while (v11);
  }

  v7 = a1[13];
  a1[13] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    do
    {
      v12 = *v8;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v12;
    }

    while (v12);
  }

  v9 = a1[8];
  a1[8] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void sub_1178D6C()
{
  byte_27C3B57 = 3;
  LODWORD(qword_27C3B40) = 5136193;
  byte_27C3B6F = 3;
  LODWORD(qword_27C3B58) = 5136194;
  byte_27C3B87 = 3;
  LODWORD(qword_27C3B70) = 5136195;
  byte_27C3B9F = 15;
  strcpy(&qword_27C3B88, "vehicle_mass_kg");
  byte_27C3BB7 = 21;
  strcpy(&xmmword_27C3BA0, "vehicle_cargo_mass_kg");
  byte_27C3BCF = 19;
  strcpy(&qword_27C3BB8, "vehicle_aux_power_w");
  byte_27C3BE7 = 15;
  strcpy(&qword_27C3BD0, "dcdc_efficiency");
  strcpy(&qword_27C3BE8, "drive_train_efficiency");
  HIBYTE(word_27C3BFE) = 22;
  operator new();
}

void sub_1178F48(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3BFE) < 0)
  {
    sub_21E8F14();
  }

  sub_21E8F20();
  _Unwind_Resume(a1);
}

void sub_1178F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100E954(v13, a4);
  v8 = sub_3B6890(a4);
  v9 = *v8;
  v12 = *(v8 + 8);
  v10[0] = a4;
  v10[1] = a3;
  v10[2] = a2;
  v10[3] = v13;
  v10[4] = &v11;
  v11 = v9;
  sub_117901C(a1, v10);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_1178FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_117901C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  if (v3 != v4)
  {
    while (1)
    {
      result = sub_117AED4(v8, v3);
      if (result)
      {
        break;
      }

      v3 = (v3 + 552);
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = (v3 + 552); i != v4; i = (i + 552))
      {
        result = sub_117AED4(v8, i);
        if ((result & 1) == 0)
        {
          result = sub_49C304(v3, i);
          v3 = (v3 + 552);
        }
      }
    }
  }

LABEL_11:
  v7 = *(v2 + 8);
  if (v3 != v7)
  {
    while (v7 != v3)
    {
      v7 -= 552;
      result = sub_4547F0(v7);
    }

    *(v2 + 8) = v3;
  }

  return result;
}

uint64_t sub_1179120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1011FA4(v14, a4);
  v8 = sub_3B6890(a4);
  v9 = *v8;
  v13 = *(v8 + 8);
  v11[0] = a4;
  v11[1] = a3;
  v11[2] = a2;
  v11[3] = v14;
  v11[4] = &v12;
  v12 = v9;
  return sub_11791A4(a1, v11);
}

uint64_t sub_11791A4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  if (v3 != v4)
  {
    while (1)
    {
      result = sub_117B11C(v8, v3);
      if (result)
      {
        break;
      }

      v3 = (v3 + 552);
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = (v3 + 552); i != v4; i = (i + 552))
      {
        result = sub_117B11C(v8, i);
        if ((result & 1) == 0)
        {
          result = sub_49C304(v3, i);
          v3 = (v3 + 552);
        }
      }
    }
  }

LABEL_11:
  v7 = *(v2 + 8);
  if (v3 != v7)
  {
    while (v7 != v3)
    {
      v7 -= 552;
      result = sub_4547F0(v7);
    }

    *(v2 + 8) = v3;
  }

  return result;
}

uint64_t sub_11792A8(uint64_t a1, char a2, void *a3)
{
  if (sub_4D1F6C(a3))
  {
    return 0;
  }

  v7 = sub_F73E78(a3);
  v8 = sub_45AC50(a3);
  v9 = sub_588D8(a3);
  v10 = sub_1179360(v8, v9, a1, a2);
  v11 = sub_588D8(a3);
  sub_F73E94(a3, v10, v11);
  return v7 - sub_F73E78(a3);
}

char **sub_1179360(char **a1, char **a2, uint64_t a3, char a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v8 = a1;
    while (sub_4BAD44(a3, v8, a4 & 1))
    {
      v8 += 6;
      if (v8 == a2)
      {
        v8 = a2;
        break;
      }
    }

    if (v8 == a2)
    {
      return v8;
    }

    v9 = v8 + 6;
    if (v8 + 6 == a2)
    {
      return v8;
    }

    else
    {
      v4 = v8;
      do
      {
        v11 = v9;
        if (sub_4BAD44(a3, v9, a4 & 1))
        {
          v12 = *v4;
          if (*v4)
          {
            v13 = v4[1];
            v14 = *v4;
            if (v13 != v12)
            {
              do
              {
                v13 = sub_4547F0(v13 - 552);
              }

              while (v13 != v12);
              v14 = *v4;
            }

            v4[1] = v12;
            operator delete(v14);
            *v4 = 0;
            v4[1] = 0;
            v4[2] = 0;
          }

          *v4 = *v11;
          v4[2] = v8[8];
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          if (*(v4 + 47) < 0)
          {
            operator delete(v4[3]);
          }

          v10 = *(v8 + 9);
          v4[5] = v8[11];
          *(v4 + 3) = v10;
          *(v8 + 95) = 0;
          *(v8 + 72) = 0;
          v4 += 6;
        }

        v9 = v11 + 6;
        v8 = v11;
      }

      while (v11 + 6 != a2);
    }
  }

  return v4;
}

uint64_t sub_11794A8(void *a1, void *a2)
{
  if (!sub_3B8508(a1))
  {
    return 1;
  }

  sub_3AF6B4(a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_F64940(a2, v5);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  result = 1;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
    return 1;
  }

  return result;
}

void sub_1179A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v36 = *(v34 - 120);
  if (v36)
  {
    *(v34 - 112) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1179B04(void *a1, void *a2)
{
  result = sub_3B8508(a1);
  if (result)
  {
    v5 = sub_F73E78(a2);
    v6 = sub_45AC50(a2);
    v7 = sub_588D8(a2);
    v8 = sub_1179B90(v6, v7, a1);
    v9 = sub_588D8(a2);
    sub_F73E94(a2, v8, v9);
    return v5 - sub_F73E78(a2);
  }

  return result;
}

void *sub_1179B90(void *a1, void *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v6 = a1;
    while (sub_117A244(a3, v6))
    {
      v6 += 6;
      if (v6 == a2)
      {
        v6 = a2;
        break;
      }
    }

    if (v6 == a2)
    {
      return v6;
    }

    v7 = v6 + 6;
    if (v6 + 6 == a2)
    {
      return v6;
    }

    else
    {
      v3 = v6;
      do
      {
        v9 = v7;
        if (sub_117A244(a3, v7))
        {
          v10 = *v3;
          if (*v3)
          {
            v11 = v3[1];
            v12 = *v3;
            if (v11 != v10)
            {
              do
              {
                v11 = sub_4547F0(v11 - 552);
              }

              while (v11 != v10);
              v12 = *v3;
            }

            v3[1] = v10;
            operator delete(v12);
            *v3 = 0;
            v3[1] = 0;
            v3[2] = 0;
          }

          *v3 = *v9;
          v3[2] = v6[8];
          *v9 = 0;
          v9[1] = 0;
          v9[2] = 0;
          if (*(v3 + 47) < 0)
          {
            operator delete(v3[3]);
          }

          v8 = *(v6 + 9);
          v3[5] = v6[11];
          *(v3 + 3) = v8;
          *(v6 + 95) = 0;
          *(v6 + 72) = 0;
          v3 += 6;
        }

        v7 = v9 + 6;
        v6 = v9;
      }

      while (v9 + 6 != a2);
    }
  }

  return v3;
}

uint64_t sub_1179CC4(void *a1, void *a2)
{
  result = sub_3B8508(a1);
  if (result)
  {
    v5 = sub_F73E78(a2);
    v6 = sub_45AC50(a2);
    v7 = sub_588D8(a2);
    v8 = sub_1179D50(v6, v7, a1);
    v9 = sub_588D8(a2);
    sub_F73E94(a2, v8, v9);
    return v5 - sub_F73E78(a2);
  }

  return result;
}

void *sub_1179D50(void *a1, void *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v6 = a1;
    while (sub_117A88C(a3, v6))
    {
      v6 += 6;
      if (v6 == a2)
      {
        v6 = a2;
        break;
      }
    }

    if (v6 == a2)
    {
      return v6;
    }

    v7 = v6 + 6;
    if (v6 + 6 == a2)
    {
      return v6;
    }

    else
    {
      v3 = v6;
      do
      {
        v9 = v7;
        if (sub_117A88C(a3, v7))
        {
          v10 = *v3;
          if (*v3)
          {
            v11 = v3[1];
            v12 = *v3;
            if (v11 != v10)
            {
              do
              {
                v11 = sub_4547F0(v11 - 552);
              }

              while (v11 != v10);
              v12 = *v3;
            }

            v3[1] = v10;
            operator delete(v12);
            *v3 = 0;
            v3[1] = 0;
            v3[2] = 0;
          }

          *v3 = *v9;
          v3[2] = v6[8];
          *v9 = 0;
          v9[1] = 0;
          v9[2] = 0;
          if (*(v3 + 47) < 0)
          {
            operator delete(v3[3]);
          }

          v8 = *(v6 + 9);
          v3[5] = v6[11];
          *(v3 + 3) = v8;
          *(v6 + 95) = 0;
          *(v6 + 72) = 0;
          v3 += 6;
        }

        v7 = v9 + 6;
        v6 = v9;
      }

      while (v9 + 6 != a2);
    }
  }

  return v3;
}

uint64_t sub_1179E84(void *a1, uint64_t a2, void *a3)
{
  v11 = a2;
  result = sub_3B8508(a1);
  if (result)
  {
    v6 = sub_F73E78(a3);
    v7 = sub_45AC50(a3);
    v8 = sub_588D8(a3);
    v9 = sub_1179F20(v7, v8, &v11, a1);
    v10 = sub_588D8(a3);
    sub_F73E94(a3, v9, v10);
    return v6 - sub_F73E78(a3);
  }

  return result;
}

void *sub_1179F20(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = a1;
  if (a1 != a2)
  {
    while (sub_1164BE0(v7, *a3, a4))
    {
      v7 += 6;
      if (v7 == a2)
      {
        v7 = a2;
        break;
      }
    }
  }

  if (v7 == a2)
  {
    return v7;
  }

  v8 = v7 + 6;
  if (v7 + 6 == a2)
  {
    return v7;
  }

  v9 = v7;
  do
  {
    v11 = v8;
    if (sub_1164BE0(v8, *a3, a4))
    {
      v12 = *v9;
      if (*v9)
      {
        v13 = v9[1];
        v14 = *v9;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v9;
        }

        v9[1] = v12;
        operator delete(v14);
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
      }

      *v9 = *v11;
      v9[2] = v7[8];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      if (*(v9 + 47) < 0)
      {
        operator delete(v9[3]);
      }

      v10 = *(v7 + 9);
      v9[5] = v7[11];
      *(v9 + 3) = v10;
      *(v7 + 95) = 0;
      *(v7 + 72) = 0;
      v9 += 6;
    }

    v8 = v11 + 6;
    v7 = v11;
  }

  while (v11 + 6 != a2);
  return v9;
}

uint64_t sub_117A064(void *a1, uint64_t a2, void *a3)
{
  v11 = a2;
  result = sub_3B8508(a1);
  if (result)
  {
    v6 = sub_F73E78(a3);
    v7 = sub_45AC50(a3);
    v8 = sub_588D8(a3);
    v9 = sub_117A100(v7, v8, &v11, a1);
    v10 = sub_588D8(a3);
    sub_F73E94(a3, v9, v10);
    return v6 - sub_F73E78(a3);
  }

  return result;
}

void *sub_117A100(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = a1;
  if (a1 != a2)
  {
    while (sub_1167014(v7, *a3, a4))
    {
      v7 += 6;
      if (v7 == a2)
      {
        v7 = a2;
        break;
      }
    }
  }

  if (v7 == a2)
  {
    return v7;
  }

  v8 = v7 + 6;
  if (v7 + 6 == a2)
  {
    return v7;
  }

  v9 = v7;
  do
  {
    v11 = v8;
    if (sub_1167014(v8, *a3, a4))
    {
      v12 = *v9;
      if (*v9)
      {
        v13 = v9[1];
        v14 = *v9;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v9;
        }

        v9[1] = v12;
        operator delete(v14);
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
      }

      *v9 = *v11;
      v9[2] = v7[8];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      if (*(v9 + 47) < 0)
      {
        operator delete(v9[3]);
      }

      v10 = *(v7 + 9);
      v9[5] = v7[11];
      *(v9 + 3) = v10;
      *(v7 + 95) = 0;
      *(v7 + 72) = 0;
      v9 += 6;
    }

    v8 = v11 + 6;
    v7 = v11;
  }

  while (v11 + 6 != a2);
  return v9;
}

uint64_t sub_117A244(void *a1, void *a2)
{
  if (!sub_3B8508(a1))
  {
    return 1;
  }

  sub_3AF6B4(a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_F6533C(a2, v5);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  result = 1;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
    return 1;
  }

  return result;
}

void sub_117A7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v36 = *(v34 - 120);
  if (v36)
  {
    *(v34 - 112) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_117A88C(void *a1, void *a2)
{
  if (!sub_3B8508(a1))
  {
    return 1;
  }

  sub_3AF6B4(a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_F63A00(a2, v5);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  result = 1;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
    return 1;
  }

  return result;
}

void sub_117AE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v36 = *(v34 - 120);
  if (v36)
  {
    *(v34 - 112) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_117AED4(uint64_t a1, __int128 *a2)
{
  if (sub_F69D6C(a2) && (sub_3B8508(*a1) & 1) != 0)
  {
    return 1;
  }

  sub_116CFDC(*(a1 + 8), a2, 0, 0, &v32);
  v5 = v33;
  if (v33)
  {
    do
    {
      v8 = *v5;
      v9 = v5[8];
      if (v9)
      {
        do
        {
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
      }

      v11 = v5[6];
      v5[6] = 0;
      if (v11)
      {
        operator delete(v11);
      }

      operator delete(v5);
      v5 = v8;
    }

    while (v8);
  }

  v6 = v32;
  v32 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  sub_116D1C8(*(a1 + 8), a2);
  sub_1163BE8(a2, &v30);
  if (sub_F69D6C(a2))
  {
    v4 = 1;
LABEL_9:
    v7 = v30;
    if (!v30)
    {
      return v4;
    }

    goto LABEL_33;
  }

  v7 = v30;
  if (v30 == v31)
  {
    sub_11637AC(*(a1 + 16), a2, *(a1 + 24), *(a1 + 32), &v24);
    if (v24 == v25 && v26 == v27)
    {
      v4 = __p != v29;
      v12 = __p;
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v4 = 1;
      v12 = __p;
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    v13 = v29;
    v14 = v12;
    if (v29 != v12)
    {
      v15 = v29;
      do
      {
        v17 = *(v15 - 3);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 2) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = __p;
    }

    v29 = v12;
    operator delete(v14);
LABEL_29:
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
      v7 = v30;
      if (!v30)
      {
        return v4;
      }

      goto LABEL_33;
    }

    goto LABEL_9;
  }

  v4 = 1;
  if (!v30)
  {
    return v4;
  }

LABEL_33:
  v18 = v31;
  v19 = v7;
  if (v31 != v7)
  {
    v20 = v31;
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

    while (v20 != v7);
    v19 = v30;
  }

  v31 = v7;
  operator delete(v19);
  return v4;
}

void sub_117B0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_117B108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_117B11C(uint64_t a1, __int128 *a2)
{
  if (sub_F6FDC8(a2) && (sub_3B8508(*a1) & 1) != 0)
  {
    return 1;
  }

  sub_1170E90(*(a1 + 8), a2, 0, 0, &v32);
  v5 = v33;
  if (v33)
  {
    do
    {
      v8 = *v5;
      v9 = v5[8];
      if (v9)
      {
        do
        {
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
      }

      v11 = v5[6];
      v5[6] = 0;
      if (v11)
      {
        operator delete(v11);
      }

      operator delete(v5);
      v5 = v8;
    }

    while (v8);
  }

  v6 = v32;
  v32 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  sub_11710F0(*(a1 + 8), a2);
  sub_43EDEC(&v30);
  if (sub_F6FDC8(a2))
  {
    v4 = 1;
LABEL_9:
    v7 = v30;
    if (!v30)
    {
      return v4;
    }

    goto LABEL_33;
  }

  v7 = v30;
  if (v30 == v31)
  {
    sub_1167DD0(&v24);
    if (v24 == v25 && v26 == v27)
    {
      v4 = __p != v29;
      v12 = __p;
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v4 = 1;
      v12 = __p;
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    v13 = v29;
    v14 = v12;
    if (v29 != v12)
    {
      v15 = v29;
      do
      {
        v17 = *(v15 - 3);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 2) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = __p;
    }

    v29 = v12;
    operator delete(v14);
LABEL_29:
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
      v7 = v30;
      if (!v30)
      {
        return v4;
      }

      goto LABEL_33;
    }

    goto LABEL_9;
  }

  v4 = 1;
  if (!v30)
  {
    return v4;
  }

LABEL_33:
  v18 = v31;
  v19 = v7;
  if (v31 != v7)
  {
    v20 = v31;
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

    while (v20 != v7);
    v19 = v30;
  }

  v31 = v7;
  operator delete(v19);
  return v4;
}

void sub_117B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_117B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_117B364()
{
  byte_27C3C5F = 3;
  LODWORD(qword_27C3C48) = 5136193;
  byte_27C3C77 = 3;
  LODWORD(qword_27C3C60) = 5136194;
  byte_27C3C8F = 3;
  LODWORD(qword_27C3C78) = 5136195;
  byte_27C3CA7 = 15;
  strcpy(&qword_27C3C90, "vehicle_mass_kg");
  byte_27C3CBF = 21;
  strcpy(&xmmword_27C3CA8, "vehicle_cargo_mass_kg");
  byte_27C3CD7 = 19;
  strcpy(&qword_27C3CC0, "vehicle_aux_power_w");
  byte_27C3CEF = 15;
  strcpy(&qword_27C3CD8, "dcdc_efficiency");
  strcpy(&qword_27C3CF0, "drive_train_efficiency");
  HIBYTE(word_27C3D06) = 22;
  operator new();
}

void sub_117B540(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3D06) < 0)
  {
    sub_21E8FF0();
  }

  sub_21E8FFC();
  _Unwind_Resume(a1);
}

void sub_117B560(uint64_t a1@<X0>, uint64_t ***a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v198 = 0;
  v199 = 0;
  v200 = 0;
  v6 = sub_73F1C(a1);
  v7 = *(v6 + 16);
  v193 = *v6;
  v194 = v7;
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  *&v197[16] = *(v6 + 80);
  v196 = v9;
  *v197 = v10;
  v195 = v8;
  sub_4D0560();
  *&v192 = v11;
  *(&v192 + 1) = v12;
  sub_4D0560();
  *&v191 = v13;
  *(&v191 + 1) = v14;
  v15 = *a2;
  while (1)
  {
    sub_F68FDC();
    v17 = v16;
    v19 = v18;
    v20 = v192;
    if (v192)
    {
      v21 = *(&v192 + 1);
      v22 = sub_F69D2C(v192);
      v23 = v21 >= v22;
      v24 = v21 < v22;
      if (!v17)
      {
        if (v23)
        {
          break;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v16)
      {
        break;
      }

      v24 = 0;
    }

    v25 = sub_F69D2C(v17);
    if (v19 < v25 && v24)
    {
      v27 = sub_F69DE0(v20, *(&v192 + 1));
      if (v27 == sub_F69DE0(v17, v19))
      {
        break;
      }
    }

    else if (v24 == v19 < v25)
    {
      break;
    }

LABEL_17:
    if (v15 == a2[1])
    {
      break;
    }

    v28 = *(&v192 + 1);
    v29 = sub_F69DE0(v20, *(&v192 + 1));
    v32 = *v15;
    v31 = v15[1];
    if (*v15 != v31)
    {
      v33 = (v32 + 12);
      if (v32 + 12 != v31)
      {
        v34 = *(v29 + 32);
        do
        {
          v35 = ((*v32 >> 1) & 1 ^ BYTE6(v34)) == 1;
          if (HIDWORD(*v32) != v34 || WORD1(*v32) != WORD2(v34))
          {
            v35 = 0;
          }

          v37 = *(v32 + 6);
          v38 = *v33;
          if (HIDWORD(*v33) == v34 && WORD1(v38) == WORD2(v34))
          {
            v39 = ((LODWORD(v38) >> 1) & 1 ^ BYTE6(v34)) == 1;
            v40 = !v35;
            if (!v39)
            {
              v40 = 0;
            }

            if ((v35 ^ v39))
            {
              goto LABEL_36;
            }
          }

          else if (v35)
          {
            goto LABEL_22;
          }

          v41 = v33[6];
          v40 = v37 < v41;
          if (v37 == v41)
          {
            LODWORD(v30) = *(v32 + 2);
            v30 = *&v30 / -1000000000.0;
            LODWORD(v37) = *(v33 + 2);
            if (v30 >= *&v37 / -1000000000.0)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

LABEL_36:
          if (!v40)
          {
            goto LABEL_22;
          }

LABEL_21:
          v32 = v33;
LABEL_22:
          v33 += 12;
        }

        while (v33 != v31);
      }
    }

    if (v32 != v31 && (v42 = *v32, v43 = *(v29 + 32), HIDWORD(*v32) == v43) && WORD1(v42) == WORD2(v43) && ((LODWORD(v42) >> 1) & 1 ^ BYTE6(v43)) == 1 && *(v32 + 6) >= a4)
    {
      *&v141 = v20;
      *(&v141 + 1) = v28 + 1;
      sub_F68964(&v191, &v141, v153);
      sub_F68F20(v153, &v193);
      v44 = *(v32 + 5);
      v45 = *(v32 + 7);
      v46 = v32[11];
      v151 = *(v32 + 9);
      v152 = v46;
      v47 = *(v32 + 3);
      v150[0] = *(v32 + 1);
      v150[1] = v47;
      v150[2] = v44;
      v150[3] = v45;
      HIDWORD(v151) = 4;
      sub_F6901C(v153, v150);
      if (sub_F69D6C(v153))
      {
        goto LABEL_117;
      }

      if (!sub_F695B8(v153) || (v48 = sub_73F1C(v153), *v48 <= *sub_F69058(v153)))
      {
        v50 = *(v32 + 5);
        v51 = *(v32 + 7);
        v52 = *(v32 + 9);
        *&v197[15] = *(v32 + 87);
        *v197 = v52;
        v53 = *(v32 + 3);
        v193 = *(v32 + 1);
        v194 = v53;
        v195 = v50;
        v196 = v51;
        *&v197[12] = 5;
        goto LABEL_71;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&v141);
        sub_4A5C(&v141, "Single-segment leg has inconsistent origin/destination fraction. Flipping the properties.", 89);
        if ((v149 & 0x10) != 0)
        {
          v54 = v148;
          v55 = &v144;
          if (v148 < *(&v144 + 1))
          {
            v148 = *(&v144 + 1);
            v54 = *(&v144 + 1);
            v55 = &v144;
          }
        }

        else
        {
          if ((v149 & 8) == 0)
          {
            v49 = 0;
            BYTE7(v137) = 0;
LABEL_62:
            *(&__dst + v49) = 0;
            sub_7E854(&__dst, 1u);
            if (SBYTE7(v137) < 0)
            {
              operator delete(__dst);
            }

            *&v141 = v134;
            *(&v141 + *(v134 - 24)) = v133;
            if (v147 < 0)
            {
              operator delete(*(&v145 + 1));
            }

            std::locale::~locale(&v142);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_67;
          }

          v54 = *(&v143 + 1);
          v55 = &v142 + 1;
        }

        v56 = *v55;
        v49 = v54 - *v55;
        if (v49 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v49 >= 0x17)
        {
          operator new();
        }

        BYTE7(v137) = v54 - *v55;
        if (v49)
        {
          memmove(&__dst, v56, v49);
        }

        goto LABEL_62;
      }

LABEL_67:
      v57 = sub_F69058(v153);
      v58 = *(v57 + 16);
      v141 = *v57;
      v142 = v58;
      v59 = *(v57 + 32);
      v60 = *(v57 + 48);
      v61 = *(v57 + 64);
      v146 = *(v57 + 80);
      v144 = v60;
      v145 = v61;
      v143 = v59;
      v62 = sub_73F1C(v153);
      v63 = *(v62 + 16);
      __dst = *v62;
      v137 = v63;
      v64 = *(v62 + 32);
      v65 = *(v62 + 48);
      v66 = *(v62 + 64);
      *&v140[16] = *(v62 + 80);
      v139 = v65;
      *v140 = v66;
      v138 = v64;
      if (v198 != v199 && !sub_F695B8(v199 - 552))
      {
        sub_F6901C(v199 - 552, &v141);
      }

      sub_F68F20(v153, &v141);
      sub_F6901C(v153, &__dst);
      v195 = v138;
      v196 = v139;
      *v197 = *v140;
      *&v197[15] = *&v140[15];
      v193 = __dst;
      v194 = v137;
LABEL_71:
      if (!sub_F6A080(v153))
      {
        goto LABEL_117;
      }

      v67 = v199;
      if (v199 >= v200)
      {
        sub_49B008(&v198, v153);
      }

      else
      {
        v68 = *v153;
        *(v199 + 16) = *&v153[16];
        *(v67 + 24) = 0;
        *v67 = v68;
        memset(v153, 0, sizeof(v153));
        *(v67 + 32) = 0;
        *(v67 + 40) = 0;
        *(v67 + 24) = v154;
        *(v67 + 40) = v155;
        v154 = 0uLL;
        v155 = 0;
        v69 = v156;
        v70 = v158;
        v71 = v159;
        *(v67 + 64) = v157;
        *(v67 + 80) = v70;
        *(v67 + 48) = v69;
        *(v67 + 96) = v71;
        *(v67 + 104) = 0;
        *(v67 + 112) = 0;
        *(v67 + 120) = 0;
        *(v67 + 104) = v160;
        v160 = 0uLL;
        *(v67 + 120) = v161;
        *(v67 + 128) = 0;
        *(v67 + 136) = 0;
        *(v67 + 144) = 0;
        *(v67 + 128) = v162;
        *(v67 + 144) = v163;
        *(v67 + 152) = 0;
        v161 = 0;
        v162 = 0uLL;
        v163 = 0;
        *(v67 + 160) = 0;
        *(v67 + 168) = 0;
        *(v67 + 152) = v164;
        *(v67 + 168) = v165;
        v164 = 0uLL;
        v165 = 0;
        v72 = v167;
        v73 = v168;
        *(v67 + 176) = v166;
        *(v67 + 192) = v72;
        *(v67 + 208) = v73;
        *(v67 + 216) = 0;
        *(v67 + 224) = 0;
        *(v67 + 232) = 0;
        *(v67 + 216) = v169;
        v169 = 0uLL;
        *(v67 + 232) = v170;
        *(v67 + 240) = 0;
        *(v67 + 248) = 0;
        *(v67 + 256) = 0;
        *(v67 + 240) = v171;
        *(v67 + 256) = v172;
        v170 = 0;
        v171 = 0uLL;
        v172 = 0;
        v74 = v173;
        v75 = v175;
        *(v67 + 280) = v174;
        *(v67 + 296) = v75;
        *(v67 + 264) = v74;
        v76 = v176;
        v77 = v177;
        v78 = v179;
        *(v67 + 344) = v178;
        *(v67 + 360) = v78;
        *(v67 + 312) = v76;
        *(v67 + 328) = v77;
        v79 = v180;
        v80 = v181;
        v81 = v183;
        *(v67 + 408) = v182;
        *(v67 + 424) = v81;
        *(v67 + 376) = v79;
        *(v67 + 392) = v80;
        v82 = v184;
        v83 = v185;
        v84 = v187;
        *(v67 + 472) = v186;
        *(v67 + 488) = v84;
        *(v67 + 440) = v82;
        *(v67 + 456) = v83;
        *(v67 + 504) = v188[0];
        *(v67 + 512) = *&v188[1];
        memset(v188, 0, sizeof(v188));
        *(v67 + 528) = 0;
        *(v67 + 544) = 0;
        *(v67 + 536) = 0;
        *(v67 + 528) = v189;
        *(v67 + 544) = v190;
        v189 = 0uLL;
        v190 = 0;
        v85 = v67 + 552;
      }

      v199 = v85;
      v86 = v192;
      sub_F68FDC();
      v88 = v87;
      v90 = v89;
      if (v86)
      {
        v91 = sub_F69D2C(v86);
        v92 = *(&v86 + 1) < v91;
        if (!v88)
        {
          v93 = *(&v86 + 1);
          if (*(&v86 + 1) < v91)
          {
            goto LABEL_86;
          }

          goto LABEL_87;
        }
      }

      else
      {
        v93 = *(&v86 + 1);
        if (!v87)
        {
          goto LABEL_87;
        }

        v92 = 0;
      }

      v94 = sub_F69D2C(v88);
      if (v90 < v94 && v92)
      {
        v96 = sub_F69DE0(v86, *(&v86 + 1));
        v93 = *(&v86 + 1);
        if (v96 == sub_F69DE0(v88, v90))
        {
          goto LABEL_87;
        }

LABEL_86:
        v93 = *(&v86 + 1) + 1;
        goto LABEL_87;
      }

      v93 = *(&v86 + 1);
      if (v92 != v90 < v94)
      {
        goto LABEL_86;
      }

LABEL_87:
      sub_F68FDC();
      v98 = v97;
      v100 = v99;
      if (v86)
      {
        v101 = sub_F69D2C(v86);
        v102 = v93 < v101;
        if (!v98)
        {
          if (v93 >= v101)
          {
            goto LABEL_110;
          }

          goto LABEL_102;
        }
      }

      else
      {
        if (!v97)
        {
          goto LABEL_110;
        }

        v102 = 0;
      }

      v103 = sub_F69D2C(v98);
      if (v100 < v103 && v102)
      {
        v105 = sub_F69DE0(v86, v93);
        if (v105 == sub_F69DE0(v98, v100))
        {
          goto LABEL_110;
        }
      }

      else if (v102 == v100 < v103)
      {
        goto LABEL_110;
      }

LABEL_102:
      v106 = *(sub_F69DE0(v86, *(&v86 + 1)) + 32);
      v107 = *(sub_F69DE0(v86, v93) + 32);
      if (v106 == v107 && WORD2(v106) == WORD2(v107) && ((v107 & 0xFF000000000000) == 0) == BYTE6(v106))
      {
        *&v192 = v86;
        *(&v192 + 1) = v93;
        LODWORD(v193) = 1000000000 - v193;
        LOBYTE(v195) = v195 ^ 1;
        if (v197[9] == 1)
        {
          if (v197[8])
          {
            v108 = 256;
          }

          else
          {
            v108 = 257;
          }

          *&v197[8] = v108;
        }
      }

LABEL_110:
      v191 = v192;
      v15 += 4;
      sub_4547F0(v153);
    }

    else
    {
      *(&v192 + 1) = v28 + 1;
    }
  }

  if (v15 == a2[1])
  {
    sub_F68FDC();
    *&v141 = v110;
    *(&v141 + 1) = v111;
    sub_F68964(&v192, &v141, v153);
    sub_F68F20(v153, &v193);
    if (sub_F6A080(v153))
    {
      v112 = v199;
      if (v199 >= v200)
      {
        sub_49B008(&v198, v153);
      }

      else
      {
        v113 = *&v153[16];
        *v199 = *v153;
        *(v112 + 16) = v113;
        *(v112 + 24) = 0;
        *&v153[8] = 0u;
        *(v112 + 32) = 0u;
        *(v112 + 24) = v154;
        *(v112 + 40) = v155;
        v154 = 0u;
        *v153 = 0;
        v155 = 0;
        v114 = v159;
        v116 = v157;
        v115 = v158;
        *(v112 + 48) = v156;
        *(v112 + 64) = v116;
        *(v112 + 80) = v115;
        *(v112 + 96) = v114;
        *(v112 + 120) = 0;
        *(v112 + 104) = 0u;
        *(v112 + 104) = v160;
        *(v112 + 120) = v161;
        v160 = 0u;
        *(v112 + 144) = 0;
        *(v112 + 128) = 0u;
        *(v112 + 128) = v162;
        *(v112 + 144) = v163;
        v162 = 0u;
        v161 = 0;
        v163 = 0;
        *(v112 + 168) = 0;
        *(v112 + 152) = 0u;
        *(v112 + 152) = v164;
        *(v112 + 168) = v165;
        v164 = 0u;
        v117 = v166;
        v118 = v167;
        *(v112 + 208) = v168;
        *(v112 + 176) = v117;
        *(v112 + 192) = v118;
        *(v112 + 232) = 0;
        *(v112 + 216) = 0u;
        *(v112 + 216) = v169;
        *(v112 + 232) = v170;
        v169 = 0u;
        v165 = 0;
        v170 = 0;
        *(v112 + 256) = 0;
        *(v112 + 240) = 0u;
        *(v112 + 240) = v171;
        *(v112 + 256) = v172;
        v171 = 0u;
        v119 = v173;
        v120 = v175;
        *(v112 + 280) = v174;
        *(v112 + 296) = v120;
        *(v112 + 264) = v119;
        v121 = v176;
        v122 = v177;
        v123 = v179;
        *(v112 + 344) = v178;
        *(v112 + 360) = v123;
        *(v112 + 312) = v121;
        *(v112 + 328) = v122;
        v124 = v180;
        v125 = v181;
        v126 = v183;
        *(v112 + 408) = v182;
        *(v112 + 424) = v126;
        *(v112 + 376) = v124;
        *(v112 + 392) = v125;
        v127 = v184;
        v128 = v185;
        v129 = v187;
        *(v112 + 472) = v186;
        *(v112 + 488) = v129;
        *(v112 + 440) = v127;
        *(v112 + 456) = v128;
        *(v112 + 504) = v188[0];
        *(v112 + 512) = *&v188[1];
        memset(v188, 0, sizeof(v188));
        v172 = 0;
        *(v112 + 528) = 0;
        *(v112 + 536) = 0u;
        *(v112 + 528) = v189;
        *(v112 + 544) = v190;
        v189 = 0u;
        v190 = 0;
        v130 = v112 + 552;
      }

      v199 = v130;
      sub_F64D54(a3, &v198);
    }

    else
    {
LABEL_117:
      sub_4E3D18(a3);
    }

    sub_4547F0(v153);
    v109 = v198;
    if (v198)
    {
      goto LABEL_121;
    }
  }

  else
  {
    sub_4E3D18(a3);
    v109 = v198;
    if (!v198)
    {
      return;
    }

LABEL_121:
    v131 = v199;
    v132 = v109;
    if (v199 != v109)
    {
      do
      {
        v131 = sub_4547F0(v131 - 552);
      }

      while (v131 != v109);
      v132 = v198;
    }

    v199 = v109;
    operator delete(v132);
  }
}

void sub_117C1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1959728(&a31);
  sub_4547F0(&STACK[0x218]);
  sub_487EC4((v31 - 136));
  _Unwind_Resume(a1);
}

void sub_117C2A8(_Unwind_Exception *a1)
{
  sub_4547F0(&STACK[0x218]);
  sub_487EC4((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_117C2EC(uint64_t a1@<X0>, uint64_t **a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v188 = a4;
  v187 = 0;
  v186[0] = &v187;
  v186[1] = &v188;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v5 = sub_73F1C(a1);
  v6 = *(v5 + 16);
  v178 = *v5;
  v179 = v6;
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  *&v182[16] = *(v5 + 80);
  v181 = v8;
  *v182 = v9;
  v180 = v7;
  sub_4D0560();
  *&v177 = v10;
  *(&v177 + 1) = v11;
  sub_4D0560();
  *&v176 = v12;
  *(&v176 + 1) = v13;
  v14 = *a2;
  while (1)
  {
    sub_F6F0F4();
    v16 = v15;
    v18 = v17;
    v19 = v177;
    if (v177)
    {
      v20 = *(&v177 + 1);
      v21 = sub_F6FD88(v177);
      v22 = v20 >= v21;
      v23 = v20 < v21;
      if (!v16)
      {
        if (v22)
        {
          break;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!v15)
      {
        break;
      }

      v23 = 0;
    }

    v24 = sub_F6FD88(v16);
    if (v18 < v24 && v23)
    {
      v26 = sub_F6FE3C(v19, *(&v177 + 1));
      if (v26 == sub_F6FE3C(v16, v18))
      {
        break;
      }
    }

    else if (v23 == v18 < v24)
    {
      break;
    }

LABEL_16:
    if (v14 == a2[1])
    {
      break;
    }

    v27 = sub_F6FE3C(v19, *(&v177 + 1));
    v28 = sub_117CF70(v186, v14, v27);
    if (v14[1] == v28)
    {
      ++*(&v177 + 1);
    }

    else
    {
      v126 = v177 + __PAIR128__(1, 0);
      sub_F6EB40(&v176, &v126, v138);
      sub_F68F20(v138, &v178);
      v29 = *(v28 + 40);
      v30 = *(v28 + 56);
      v31 = *(v28 + 88);
      v136 = *(v28 + 72);
      v137 = v31;
      v32 = *(v28 + 24);
      v135[0] = *(v28 + 8);
      v135[1] = v32;
      v135[2] = v29;
      v135[3] = v30;
      HIDWORD(v136) = 4;
      sub_F6901C(v138, v135);
      if (sub_F6FDC8(v138))
      {
        goto LABEL_90;
      }

      if (!sub_83EB8(v138) || (v33 = sub_73F1C(v138), *v33 <= *sub_F69058(v138)))
      {
        v35 = *(v28 + 40);
        v36 = *(v28 + 56);
        v37 = *(v28 + 72);
        *&v182[15] = *(v28 + 87);
        *v182 = v37;
        v38 = *(v28 + 24);
        v178 = *(v28 + 8);
        v179 = v38;
        v180 = v35;
        v181 = v36;
        *&v182[12] = 5;
        goto LABEL_45;
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(&v126);
        sub_4A5C(&v126, "Single-segment leg has inconsistent origin/destination fraction. Flipping the properties.", 89);
        if ((v134 & 0x10) != 0)
        {
          v39 = v133;
          v40 = &v129;
          if (v133 < *(&v129 + 1))
          {
            v133 = *(&v129 + 1);
            v39 = *(&v129 + 1);
            v40 = &v129;
          }
        }

        else
        {
          if ((v134 & 8) == 0)
          {
            v34 = 0;
            BYTE7(v122) = 0;
LABEL_36:
            *(&__dst + v34) = 0;
            sub_7E854(&__dst, 1u);
            if (SBYTE7(v122) < 0)
            {
              operator delete(__dst);
            }

            *&v126 = v119;
            *(&v126 + *(v119 - 24)) = v118;
            if (v132 < 0)
            {
              operator delete(*(&v130 + 1));
            }

            std::locale::~locale(&v127);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_41;
          }

          v39 = *(&v128 + 1);
          v40 = &v127 + 1;
        }

        v41 = *v40;
        v34 = v39 - *v40;
        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v34 >= 0x17)
        {
          operator new();
        }

        BYTE7(v122) = v39 - *v40;
        if (v34)
        {
          memmove(&__dst, v41, v34);
        }

        goto LABEL_36;
      }

LABEL_41:
      v42 = sub_F69058(v138);
      v43 = *(v42 + 16);
      v126 = *v42;
      v127 = v43;
      v44 = *(v42 + 32);
      v45 = *(v42 + 48);
      v46 = *(v42 + 64);
      v131 = *(v42 + 80);
      v129 = v45;
      v130 = v46;
      v128 = v44;
      v47 = sub_73F1C(v138);
      v48 = *(v47 + 16);
      __dst = *v47;
      v122 = v48;
      v49 = *(v47 + 32);
      v50 = *(v47 + 48);
      v51 = *(v47 + 64);
      *&v125[16] = *(v47 + 80);
      v124 = v50;
      *v125 = v51;
      v123 = v49;
      if (v183 != v184 && !sub_83EB8((v184 - 69)))
      {
        sub_F6901C((v184 - 69), &v126);
      }

      sub_F68F20(v138, &v126);
      sub_F6901C(v138, &__dst);
      v180 = v123;
      v181 = v124;
      *v182 = *v125;
      *&v182[15] = *&v125[15];
      v178 = __dst;
      v179 = v122;
LABEL_45:
      if (!sub_F70108(v138))
      {
        goto LABEL_90;
      }

      v52 = v184;
      if (v184 >= v185)
      {
        v70 = sub_D59894(&v183, v138);
      }

      else
      {
        v53 = *v138;
        v184[2] = *&v138[16];
        v52[3] = 0;
        *v52 = v53;
        memset(v138, 0, sizeof(v138));
        v52[4] = 0;
        v52[5] = 0;
        *(v52 + 3) = v139;
        v52[5] = v140;
        v139 = 0uLL;
        v140 = 0;
        v54 = v141;
        v55 = v143;
        v56 = v144;
        *(v52 + 4) = v142;
        *(v52 + 5) = v55;
        *(v52 + 3) = v54;
        v52[12] = v56;
        v52[13] = 0;
        v52[14] = 0;
        v52[15] = 0;
        *(v52 + 13) = v145;
        v145 = 0uLL;
        v52[15] = v146;
        v52[16] = 0;
        v52[17] = 0;
        v52[18] = 0;
        *(v52 + 8) = v147;
        v52[18] = v148;
        v52[19] = 0;
        v146 = 0;
        v147 = 0uLL;
        v148 = 0;
        v52[20] = 0;
        v52[21] = 0;
        *(v52 + 19) = v149;
        v52[21] = v150;
        v149 = 0uLL;
        v150 = 0;
        v57 = v152;
        v58 = v153;
        *(v52 + 11) = v151;
        *(v52 + 12) = v57;
        v52[26] = v58;
        v52[27] = 0;
        v52[28] = 0;
        v52[29] = 0;
        *(v52 + 27) = v154;
        v154 = 0uLL;
        v52[29] = v155;
        v52[30] = 0;
        v52[31] = 0;
        v52[32] = 0;
        *(v52 + 15) = v156;
        v52[32] = v157;
        v155 = 0;
        v156 = 0uLL;
        v157 = 0;
        v59 = v158;
        v60 = v160;
        *(v52 + 35) = v159;
        *(v52 + 37) = v60;
        *(v52 + 33) = v59;
        v61 = v161;
        v62 = v162;
        v63 = v164;
        *(v52 + 43) = v163;
        *(v52 + 45) = v63;
        *(v52 + 39) = v61;
        *(v52 + 41) = v62;
        v64 = v165;
        v65 = v166;
        v66 = v168;
        *(v52 + 51) = v167;
        *(v52 + 53) = v66;
        *(v52 + 47) = v64;
        *(v52 + 49) = v65;
        v67 = v169;
        v68 = v170;
        v69 = v172;
        *(v52 + 59) = v171;
        *(v52 + 61) = v69;
        *(v52 + 55) = v67;
        *(v52 + 57) = v68;
        v52[63] = v173[0];
        *(v52 + 32) = *&v173[1];
        memset(v173, 0, sizeof(v173));
        v52[66] = 0;
        v52[68] = 0;
        v52[67] = 0;
        *(v52 + 33) = v174;
        v52[68] = v175;
        v174 = 0uLL;
        v175 = 0;
        v70 = (v52 + 69);
      }

      v184 = v70;
      v71 = v177;
      sub_F6F0F4();
      v73 = v72;
      v75 = v74;
      if (v71)
      {
        v76 = sub_F6FD88(v71);
        v77 = *(&v71 + 1) < v76;
        if (!v73)
        {
          v78 = *(&v71 + 1);
          if (*(&v71 + 1) < v76)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v78 = *(&v71 + 1);
        if (!v72)
        {
          goto LABEL_61;
        }

        v77 = 0;
      }

      v79 = sub_F6FD88(v73);
      if (v75 < v79 && v77)
      {
        v81 = sub_F6FE3C(v71, *(&v71 + 1));
        v78 = *(&v71 + 1);
        if (v81 == sub_F6FE3C(v73, v75))
        {
          goto LABEL_61;
        }

LABEL_60:
        v78 = *(&v71 + 1) + 1;
        goto LABEL_61;
      }

      v78 = *(&v71 + 1);
      if (v77 != v75 < v79)
      {
        goto LABEL_60;
      }

LABEL_61:
      sub_F6F0F4();
      v83 = v82;
      v85 = v84;
      if (v71)
      {
        v86 = sub_F6FD88(v71);
        v87 = v78 < v86;
        if (!v83)
        {
          if (v78 >= v86)
          {
            goto LABEL_83;
          }

          goto LABEL_76;
        }
      }

      else
      {
        if (!v82)
        {
          goto LABEL_83;
        }

        v87 = 0;
      }

      v88 = sub_F6FD88(v83);
      if (v85 < v88 && v87)
      {
        v90 = sub_F6FE3C(v71, v78);
        if (v90 == sub_F6FE3C(v83, v85))
        {
          goto LABEL_83;
        }
      }

      else if (v87 == v85 < v88)
      {
        goto LABEL_83;
      }

LABEL_76:
      v91 = *(sub_F6FE3C(v71, *(&v71 + 1)) + 32);
      v92 = *(sub_F6FE3C(v71, v78) + 32);
      if (v91 == v92 && ((HIDWORD(v92) & 0x7FFFFFFF | ((v92 >> 62 == 2) << 31)) ^ HIDWORD(v91)) == 0x20000000)
      {
        *&v177 = v71;
        *(&v177 + 1) = v78;
        LODWORD(v178) = 1000000000 - v178;
        LOBYTE(v180) = v180 ^ 1;
        if (v182[9] == 1)
        {
          if (v182[8])
          {
            v93 = 256;
          }

          else
          {
            v93 = 257;
          }

          *&v182[8] = v93;
        }
      }

LABEL_83:
      v176 = v177;
      v14 += 4;
      sub_4547F0(v138);
    }
  }

  if (v14 != a2[1])
  {
    sub_4E3D18(a3);
    v94 = v183;
    if (!v183)
    {
      return;
    }

    goto LABEL_94;
  }

  sub_F6F0F4();
  *&v126 = v95;
  *(&v126 + 1) = v96;
  sub_F6EB40(&v177, &v126, v138);
  sub_F68F20(v138, &v178);
  if (!sub_F70108(v138))
  {
LABEL_90:
    sub_4E3D18(a3);
    goto LABEL_93;
  }

  v97 = v184;
  if (v184 >= v185)
  {
    v115 = sub_D59894(&v183, v138);
  }

  else
  {
    v98 = *&v138[16];
    *v184 = *v138;
    v97[2] = v98;
    v97[3] = 0;
    *&v138[8] = 0u;
    *(v97 + 2) = 0u;
    *(v97 + 3) = v139;
    v97[5] = v140;
    v139 = 0u;
    *v138 = 0;
    v140 = 0;
    v99 = v144;
    v101 = v142;
    v100 = v143;
    *(v97 + 3) = v141;
    *(v97 + 4) = v101;
    *(v97 + 5) = v100;
    v97[12] = v99;
    v97[15] = 0;
    *(v97 + 13) = 0u;
    *(v97 + 13) = v145;
    v97[15] = v146;
    v145 = 0u;
    v97[18] = 0;
    *(v97 + 8) = 0u;
    *(v97 + 8) = v147;
    v97[18] = v148;
    v147 = 0u;
    v146 = 0;
    v148 = 0;
    v97[21] = 0;
    *(v97 + 19) = 0u;
    *(v97 + 19) = v149;
    v97[21] = v150;
    v149 = 0u;
    v102 = v151;
    v103 = v152;
    v97[26] = v153;
    *(v97 + 11) = v102;
    *(v97 + 12) = v103;
    v97[29] = 0;
    *(v97 + 27) = 0u;
    *(v97 + 27) = v154;
    v97[29] = v155;
    v154 = 0u;
    v150 = 0;
    v155 = 0;
    v97[32] = 0;
    *(v97 + 15) = 0u;
    *(v97 + 15) = v156;
    v97[32] = v157;
    v156 = 0u;
    v104 = v158;
    v105 = v160;
    *(v97 + 35) = v159;
    *(v97 + 37) = v105;
    *(v97 + 33) = v104;
    v106 = v161;
    v107 = v162;
    v108 = v164;
    *(v97 + 43) = v163;
    *(v97 + 45) = v108;
    *(v97 + 39) = v106;
    *(v97 + 41) = v107;
    v109 = v165;
    v110 = v166;
    v111 = v168;
    *(v97 + 51) = v167;
    *(v97 + 53) = v111;
    *(v97 + 47) = v109;
    *(v97 + 49) = v110;
    v112 = v169;
    v113 = v170;
    v114 = v172;
    *(v97 + 59) = v171;
    *(v97 + 61) = v114;
    *(v97 + 55) = v112;
    *(v97 + 57) = v113;
    v97[63] = v173[0];
    *(v97 + 32) = *&v173[1];
    memset(v173, 0, sizeof(v173));
    v157 = 0;
    v97[66] = 0;
    *(v97 + 67) = 0u;
    *(v97 + 33) = v174;
    v97[68] = v175;
    v174 = 0u;
    v175 = 0;
    v115 = (v97 + 69);
  }

  v184 = v115;
  sub_F640F8(a3, &v183);
LABEL_93:
  sub_4547F0(v138);
  v94 = v183;
  if (!v183)
  {
    return;
  }

LABEL_94:
  v116 = v184;
  v117 = v94;
  if (v184 != v94)
  {
    do
    {
      v116 = sub_4547F0(v116 - 552);
    }

    while (v116 != v94);
    v117 = v183;
  }

  v184 = v94;
  operator delete(v117);
}

void sub_117CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1959728(&a31);
  sub_4547F0(&STACK[0x218]);
  sub_487EC4((v31 - 152));
  _Unwind_Resume(a1);
}

void sub_117CF2C(_Unwind_Exception *a1)
{
  sub_4547F0(&STACK[0x218]);
  sub_487EC4((v1 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_117CF70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  v5 = a2[1];
  v6 = *a2 + 96;
  if (*a2 != v5 && v6 != v5)
  {
    v9 = *(a3 + 32);
    v10 = *(a3 + 36);
    do
    {
      v12 = *result == v9 && (*(result + 4) & 0xFFFFFFF | (((*(result + 4) >> 28) & 3) << 29) | (((*(result + 4) & 0x60000000) == 0x40000000) << 31)) == v10;
      v13 = *v6 == v9 && (*(v6 + 4) & 0xFFFFFFF | (((*(v6 + 4) >> 28) & 3) << 29) | (((*(v6 + 4) & 0x60000000) == 0x40000000) << 31)) == v10;
      v14 = v13;
      v15 = v12 ^ 1;
      if (!v13)
      {
        v15 = 0;
      }

      if (v12 == v14 && (v16 = *(v6 + 48), v17 = *(result + 48), v15 = v17 < v16, v17 == v16))
      {
        LODWORD(v16) = *(result + 8);
        LODWORD(v17) = *(v6 + 8);
        if (*&v16 / -1000000000.0 >= *&v17 / -1000000000.0)
        {
          goto LABEL_16;
        }
      }

      else if (!v15)
      {
        goto LABEL_16;
      }

      result = v6;
LABEL_16:
      v6 += 96;
    }

    while (v6 != v5);
  }

  if (result == v5)
  {
    return a2[1];
  }

  v8 = *result == *(a3 + 32) && (*(result + 4) & 0xFFFFFFF | (((*(result + 4) >> 28) & 3) << 29) | (((*(result + 4) & 0x60000000) == 0x40000000) << 31)) == *(a3 + 36);
  if (!v8 || *(result + 48) < **(a1 + 8))
  {
    return a2[1];
  }

  return result;
}

void sub_117D0B0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_F63CBC(a1, a2);
  sub_4D0560();
  v11[0] = v6;
  v11[1] = v7 + a3;
  sub_F6F0F4();
  v10[0] = v8;
  v10[1] = v9;
  sub_F6EB40(v11, v10, &v12);
  sub_F64510(a4, &v12);
}

void sub_117D214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_117D244(_Unwind_Exception *a1)
{
  *(v2 + 8) = v3;
  sub_454784(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_117D25C(uint64_t a1, void *a2)
{
  v4 = sub_F64C78(a1);
  v5 = *(v4 + 32);
  v6 = *(v4 + 36);
  v7 = *sub_F63FE0(a1);
  v8 = nullsub_1(a2);
  v9 = v8[1] - *v8;
  if (v9)
  {
    v10 = 0;
    v11 = 0xF128CFC4A33F128DLL * (v9 >> 3);
    do
    {
      v12 = sub_F63CBC(a2, v10);
      v13 = sub_F6FD88(v12);
      if (v13)
      {
        v14 = v13;
        for (i = 0; i != v14; ++i)
        {
          v16 = sub_F6FE3C(v12, i);
          v17 = v5 == *(v16 + 32) && v6 == *(v16 + 36);
          if (v17 && v7 <= sub_F6FEB8(v12, i) && v7 >= sub_F6D1F0(v12, i))
          {
            sub_117D0B0(a2, v10, i, &v19);
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  return 0;
}

BOOL sub_117D6DC(void *a1, void *a2)
{
  if (sub_F69D6C(a1) || sub_F69D6C(a2))
  {
    v4 = sub_F69D6C(a1);
    return v4 ^ sub_F69D6C(a2) ^ 1;
  }

  if (sub_F69D08(a1) && *sub_73F1C(a1) == 1000000000)
  {
    sub_4D0560();
    v7 = v6;
    v9 = v8 + 1;
    v84 = v6;
    v85 = v8 + 1;
    if (!sub_F69D08(a2))
    {
LABEL_12:
      sub_4D0560();
      v13 = v15;
      v82 = v16;
      v83 = v15;
      if (!sub_F69D08(a1))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_4D0560();
    v7 = v10;
    v9 = v11;
    v84 = v10;
    v85 = v11;
    if (!sub_F69D08(a2))
    {
      goto LABEL_12;
    }
  }

  if (*sub_73F1C(a2) != 1000000000)
  {
    goto LABEL_12;
  }

  sub_4D0560();
  v13 = v12 + 1;
  v82 = v14;
  v83 = v12 + 1;
  if (!sub_F69D08(a1))
  {
LABEL_14:
    sub_F68FDC();
    v18 = v17;
    v20 = v19;
    v80 = v17;
    v81 = v19;
    if (!sub_F69D08(a2))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (*sub_F69058(a1))
  {
    goto LABEL_14;
  }

  sub_F68FDC();
  v18 = v21;
  v20 = v22 - 1;
  v80 = v21;
  v81 = v22 - 1;
  if (!sub_F69D08(a2))
  {
    goto LABEL_18;
  }

LABEL_17:
  if (!*sub_F69058(a2))
  {
    sub_F68FDC();
    v78 = v25;
    v79 = v26 - 1;
    if (v20 - v9 == v26 - 1 - v13)
    {
      goto LABEL_21;
    }

    return 0;
  }

LABEL_18:
  sub_F68FDC();
  v78 = v23;
  v79 = v24;
  if (v20 - v9 != v24 - v13)
  {
    return 0;
  }

LABEL_21:
  if (!v7)
  {
    if (!v18 || v20 >= sub_F69D2C(v18))
    {
      return sub_F6BA98(a1, a2);
    }

    goto LABEL_31;
  }

  v27 = sub_F69D2C(v7);
  v28 = v27;
  if (!v18)
  {
    if (v9 < v27)
    {
      goto LABEL_31;
    }

    return sub_F6BA98(a1, a2);
  }

  v29 = sub_F69D2C(v18);
  if (v9 >= v28 || v20 >= v29)
  {
    if (v9 < v28 != v20 < v29)
    {
      goto LABEL_31;
    }

    return sub_F6BA98(a1, a2);
  }

  v30 = sub_F69DE0(v7, v9);
  if (v30 == sub_F69DE0(v18, v20))
  {
    return sub_F6BA98(a1, a2);
  }

LABEL_31:
  if (sub_1182FCC(&v84, &v82, &v80, &v78))
  {
    return 0;
  }

  v77[95] = 0;
  v31 = sub_73F1C(a1);
  v32 = *v31;
  v34 = *(v31 + 8);
  v33 = *(v31 + 16);
  v35 = *(v31 + 24);
  v36 = *(v31 + 40);
  v74 = *(v31 + 48);
  v75 = *(v31 + 32);
  v72 = *(v31 + 56);
  v70 = *(v31 + 60);
  v68 = *(v31 + 64);
  v54 = *(v31 + 72);
  v66 = *(v31 + 73);
  v64 = *(v31 + 74);
  v62 = *(v31 + 76);
  v60 = *(v31 + 80);
  v58 = *(v31 + 81);
  v56 = *(v31 + 82);
  v37 = sub_F69D08(a1);
  v38 = v32 != 1000000000 || v37 == 0;
  v39 = v38 ? v32 : 0;
  v40 = sub_73F1C(a2);
  v41 = *v40;
  v43 = *(v40 + 8);
  v42 = *(v40 + 16);
  v44 = *(v40 + 24);
  v45 = *(v40 + 32);
  v46 = *(v40 + 40);
  v73 = *(v40 + 48);
  v71 = *(v40 + 56);
  v69 = *(v40 + 60);
  v67 = *(v40 + 64);
  v53 = *(v40 + 72);
  v65 = *(v40 + 73);
  v63 = *(v40 + 74);
  v61 = *(v40 + 76);
  v59 = *(v40 + 80);
  v57 = *(v40 + 81);
  v55 = *(v40 + 82);
  v47 = sub_F69D08(a2);
  v48 = v41 != 1000000000 || v47 == 0;
  v49 = v48 ? v41 : 0;
  if (v39 != v49 || v34 != v43 || v33 != v42)
  {
    return 0;
  }

  if (v35 != v44)
  {
    v50 = v35 - v44;
    if (v35 - v44 <= 0.0)
    {
      v50 = -(v35 - v44);
    }

    if (v50 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  if (v75 != v45 || v36 != v46 || v74 != v73 || v72 != v71 || v70 != v69 || v68 != v67)
  {
    return 0;
  }

  v52 = v65;
  v51 = v66;
  if (v66 == v65 && (v66 & 1) != 0)
  {
    v52 = v53;
    v51 = v54;
  }

  if (v51 != v52 || v64 != v63 || v62 != v61 || v60 != v59 || v58 != v57 || v56 != v55)
  {
    return 0;
  }

  sub_117DBA4(a1, v77);
  sub_117DBA4(a2, v76);
  return sub_F71798(v77, v76);
}

uint64_t sub_117DBA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_F69058(a1);
  v5 = *v4;
  *(a2 + 36) = *(v4 + 36);
  *(a2 + 52) = *(v4 + 52);
  *(a2 + 68) = *(v4 + 68);
  *(a2 + 84) = *(v4 + 84);
  *(a2 + 4) = *(v4 + 4);
  *(a2 + 20) = *(v4 + 20);
  result = sub_F69D08(a1);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = result == 0;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1000000000;
  }

  *a2 = v8;
  return result;
}

BOOL sub_117DC2C(void *a1, void *a2)
{
  if (sub_F69D6C(a1) || sub_F69D6C(a2))
  {
    v4 = sub_F69D6C(a1);
    return v4 ^ sub_F69D6C(a2) ^ 1;
  }

  if (sub_F6D008(a1) && *sub_73F1C(a1) == 1000000000)
  {
    sub_4D0560();
    v7 = v6;
    v9 = v8 + 1;
    v84 = v6;
    v85 = v8 + 1;
    if (!sub_F6D008(a2))
    {
LABEL_12:
      sub_4D0560();
      v13 = v15;
      v82 = v16;
      v83 = v15;
      if (!sub_F6D008(a1))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_4D0560();
    v7 = v10;
    v9 = v11;
    v84 = v10;
    v85 = v11;
    if (!sub_F6D008(a2))
    {
      goto LABEL_12;
    }
  }

  if (*sub_73F1C(a2) != 1000000000)
  {
    goto LABEL_12;
  }

  sub_4D0560();
  v13 = v12 + 1;
  v82 = v14;
  v83 = v12 + 1;
  if (!sub_F6D008(a1))
  {
LABEL_14:
    sub_F6C0C8();
    v18 = v17;
    v20 = v19;
    v80 = v17;
    v81 = v19;
    if (!sub_F6D008(a2))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (*sub_F69058(a1))
  {
    goto LABEL_14;
  }

  sub_F6C0C8();
  v18 = v21;
  v20 = v22 - 1;
  v80 = v21;
  v81 = v22 - 1;
  if (!sub_F6D008(a2))
  {
    goto LABEL_18;
  }

LABEL_17:
  if (!*sub_F69058(a2))
  {
    sub_F6C0C8();
    v78 = v25;
    v79 = v26 - 1;
    if (v20 - v9 == v26 - 1 - v13)
    {
      goto LABEL_21;
    }

    return 0;
  }

LABEL_18:
  sub_F6C0C8();
  v78 = v23;
  v79 = v24;
  if (v20 - v9 != v24 - v13)
  {
    return 0;
  }

LABEL_21:
  if (!v7)
  {
    if (!v18 || v20 >= sub_F6D024(v18))
    {
      return sub_F6E668(a1, a2);
    }

    goto LABEL_31;
  }

  v27 = sub_F6D024(v7);
  v28 = v27;
  if (!v18)
  {
    if (v9 < v27)
    {
      goto LABEL_31;
    }

    return sub_F6E668(a1, a2);
  }

  v29 = sub_F6D024(v18);
  if (v9 >= v28 || v20 >= v29)
  {
    if (v9 < v28 != v20 < v29)
    {
      goto LABEL_31;
    }

    return sub_F6E668(a1, a2);
  }

  v30 = sub_F6D17C(v7, v9);
  if (v30 == sub_F6D17C(v18, v20))
  {
    return sub_F6E668(a1, a2);
  }

LABEL_31:
  if (sub_1183140(&v84, &v82, &v80, &v78))
  {
    return 0;
  }

  v77[95] = 0;
  v31 = sub_73F1C(a1);
  v32 = *v31;
  v34 = *(v31 + 8);
  v33 = *(v31 + 16);
  v35 = *(v31 + 24);
  v36 = *(v31 + 40);
  v74 = *(v31 + 48);
  v75 = *(v31 + 32);
  v72 = *(v31 + 56);
  v70 = *(v31 + 60);
  v68 = *(v31 + 64);
  v54 = *(v31 + 72);
  v66 = *(v31 + 73);
  v64 = *(v31 + 74);
  v62 = *(v31 + 76);
  v60 = *(v31 + 80);
  v58 = *(v31 + 81);
  v56 = *(v31 + 82);
  v37 = sub_F6D008(a1);
  v38 = v32 != 1000000000 || v37 == 0;
  v39 = v38 ? v32 : 0;
  v40 = sub_73F1C(a2);
  v41 = *v40;
  v43 = *(v40 + 8);
  v42 = *(v40 + 16);
  v44 = *(v40 + 24);
  v45 = *(v40 + 32);
  v46 = *(v40 + 40);
  v73 = *(v40 + 48);
  v71 = *(v40 + 56);
  v69 = *(v40 + 60);
  v67 = *(v40 + 64);
  v53 = *(v40 + 72);
  v65 = *(v40 + 73);
  v63 = *(v40 + 74);
  v61 = *(v40 + 76);
  v59 = *(v40 + 80);
  v57 = *(v40 + 81);
  v55 = *(v40 + 82);
  v47 = sub_F6D008(a2);
  v48 = v41 != 1000000000 || v47 == 0;
  v49 = v48 ? v41 : 0;
  if (v39 != v49 || v34 != v43 || v33 != v42)
  {
    return 0;
  }

  if (v35 != v44)
  {
    v50 = v35 - v44;
    if (v35 - v44 <= 0.0)
    {
      v50 = -(v35 - v44);
    }

    if (v50 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  if (v75 != v45 || v36 != v46 || v74 != v73 || v72 != v71 || v70 != v69 || v68 != v67)
  {
    return 0;
  }

  v52 = v65;
  v51 = v66;
  if (v66 == v65 && (v66 & 1) != 0)
  {
    v52 = v53;
    v51 = v54;
  }

  if (v51 != v52 || v64 != v63 || v62 != v61 || v60 != v59 || v58 != v57 || v56 != v55)
  {
    return 0;
  }

  sub_117E0F4(a1, v77);
  sub_117E0F4(a2, v76);
  return sub_F71798(v77, v76);
}

unint64_t sub_117E0F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_F69058(a1);
  v5 = *v4;
  *(a2 + 36) = *(v4 + 36);
  *(a2 + 52) = *(v4 + 52);
  *(a2 + 68) = *(v4 + 68);
  *(a2 + 84) = *(v4 + 84);
  *(a2 + 4) = *(v4 + 4);
  *(a2 + 20) = *(v4 + 20);
  result = sub_F6D008(a1);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = result == 0;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1000000000;
  }

  *a2 = v8;
  return result;
}

BOOL sub_117E17C(uint64_t a1, uint64_t a2)
{
  if (sub_F6FDC8(a1) || sub_F6FDC8(a2))
  {
    v4 = sub_F6FDC8(a1);
    return v4 ^ sub_F6FDC8(a2) ^ 1;
  }

  if (sub_F69D08(a1) && *sub_73F1C(a1) == 1000000000)
  {
    sub_4D0560();
    v7 = v6;
    v9 = v8 + 1;
    v84 = v6;
    v85 = v8 + 1;
    if (!sub_F69D08(a2))
    {
LABEL_12:
      sub_4D0560();
      v13 = v15;
      v82 = v16;
      v83 = v15;
      if (!sub_F69D08(a1))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_4D0560();
    v7 = v10;
    v9 = v11;
    v84 = v10;
    v85 = v11;
    if (!sub_F69D08(a2))
    {
      goto LABEL_12;
    }
  }

  if (*sub_73F1C(a2) != 1000000000)
  {
    goto LABEL_12;
  }

  sub_4D0560();
  v13 = v12 + 1;
  v82 = v14;
  v83 = v12 + 1;
  if (!sub_F69D08(a1))
  {
LABEL_14:
    sub_F6F0F4();
    v18 = v17;
    v20 = v19;
    v80 = v17;
    v81 = v19;
    if (!sub_F69D08(a2))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (*sub_F69058(a1))
  {
    goto LABEL_14;
  }

  sub_F6F0F4();
  v18 = v21;
  v20 = v22 - 1;
  v80 = v21;
  v81 = v22 - 1;
  if (!sub_F69D08(a2))
  {
    goto LABEL_18;
  }

LABEL_17:
  if (!*sub_F69058(a2))
  {
    sub_F6F0F4();
    v78 = v25;
    v79 = v26 - 1;
    if (v20 - v9 == v26 - 1 - v13)
    {
      goto LABEL_21;
    }

    return 0;
  }

LABEL_18:
  sub_F6F0F4();
  v78 = v23;
  v79 = v24;
  if (v20 - v9 != v24 - v13)
  {
    return 0;
  }

LABEL_21:
  if (!v7)
  {
    if (!v18 || v20 >= sub_F6FD88(v18))
    {
      return sub_F711D0(a1, a2);
    }

    goto LABEL_31;
  }

  v27 = sub_F6FD88(v7);
  v28 = v27;
  if (!v18)
  {
    if (v9 < v27)
    {
      goto LABEL_31;
    }

    return sub_F711D0(a1, a2);
  }

  v29 = sub_F6FD88(v18);
  if (v9 >= v28 || v20 >= v29)
  {
    if (v9 < v28 != v20 < v29)
    {
      goto LABEL_31;
    }

    return sub_F711D0(a1, a2);
  }

  v30 = sub_F6FE3C(v7, v9);
  if (v30 == sub_F6FE3C(v18, v20))
  {
    return sub_F711D0(a1, a2);
  }

LABEL_31:
  if (sub_11832B4(&v84, &v82, &v80, &v78))
  {
    return 0;
  }

  v77[95] = 0;
  v31 = sub_73F1C(a1);
  v32 = *v31;
  v34 = *(v31 + 8);
  v33 = *(v31 + 16);
  v35 = *(v31 + 24);
  v36 = *(v31 + 40);
  v74 = *(v31 + 48);
  v75 = *(v31 + 32);
  v72 = *(v31 + 56);
  v70 = *(v31 + 60);
  v68 = *(v31 + 64);
  v54 = *(v31 + 72);
  v66 = *(v31 + 73);
  v64 = *(v31 + 74);
  v62 = *(v31 + 76);
  v60 = *(v31 + 80);
  v58 = *(v31 + 81);
  v56 = *(v31 + 82);
  v37 = sub_F69D08(a1);
  v38 = v32 != 1000000000 || v37 == 0;
  v39 = v38 ? v32 : 0;
  v40 = sub_73F1C(a2);
  v41 = *v40;
  v43 = *(v40 + 8);
  v42 = *(v40 + 16);
  v44 = *(v40 + 24);
  v45 = *(v40 + 32);
  v46 = *(v40 + 40);
  v73 = *(v40 + 48);
  v71 = *(v40 + 56);
  v69 = *(v40 + 60);
  v67 = *(v40 + 64);
  v53 = *(v40 + 72);
  v65 = *(v40 + 73);
  v63 = *(v40 + 74);
  v61 = *(v40 + 76);
  v59 = *(v40 + 80);
  v57 = *(v40 + 81);
  v55 = *(v40 + 82);
  v47 = sub_F69D08(a2);
  v48 = v41 != 1000000000 || v47 == 0;
  v49 = v48 ? v41 : 0;
  if (v39 != v49 || v34 != v43 || v33 != v42)
  {
    return 0;
  }

  if (v35 != v44)
  {
    v50 = v35 - v44;
    if (v35 - v44 <= 0.0)
    {
      v50 = -(v35 - v44);
    }

    if (v50 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  if (v75 != v45 || v36 != v46 || v74 != v73 || v72 != v71 || v70 != v69 || v68 != v67)
  {
    return 0;
  }

  v52 = v65;
  v51 = v66;
  if (v66 == v65 && (v66 & 1) != 0)
  {
    v52 = v53;
    v51 = v54;
  }

  if (v51 != v52 || v64 != v63 || v62 != v61 || v60 != v59 || v58 != v57 || v56 != v55)
  {
    return 0;
  }

  sub_117DBA4(a1, v77);
  sub_117DBA4(a2, v76);
  return sub_F71798(v77, v76);
}

BOOL sub_117E644(void *a1, void *a2)
{
  v4 = sub_F63FF4(a1);
  if (v4 != sub_F63FF4(a2))
  {
    return 0;
  }

  v5 = sub_45AC50(a1);
  v6 = sub_45AC50(a2);
  v7 = sub_588D8(a1);
  sub_588D8(a2);
  if (v5 == v7)
  {
    return 1;
  }

  do
  {
    result = sub_117D6DC(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 69;
    v6 += 69;
  }

  while (v5 != v7);
  return result;
}

BOOL sub_117E6F8(void *a1, void *a2)
{
  v4 = sub_F63FF4(a1);
  if (v4 != sub_F63FF4(a2))
  {
    return 0;
  }

  v5 = sub_45AC50(a1);
  v6 = sub_45AC50(a2);
  v7 = sub_588D8(a1);
  sub_588D8(a2);
  if (v5 == v7)
  {
    return 1;
  }

  do
  {
    result = sub_117DC2C(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 69;
    v6 += 69;
  }

  while (v5 != v7);
  return result;
}

BOOL sub_117E7AC(void *a1, void *a2)
{
  v4 = sub_F63FF4(a1);
  if (v4 != sub_F63FF4(a2))
  {
    return 0;
  }

  v5 = sub_45AC50(a1);
  v6 = sub_45AC50(a2);
  v7 = sub_588D8(a1);
  sub_588D8(a2);
  if (v5 == v7)
  {
    return 1;
  }

  do
  {
    result = sub_117E17C(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 552;
    v6 += 552;
  }

  while (v5 != v7);
  return result;
}

uint64_t sub_117E860(char **a1, int a2, int a3)
{
  result = sub_F63D58(a1);
  if ((result & 1) == 0)
  {
    v7 = *nullsub_1(a1);
    if (a2 == 2)
    {
      v8 = 196607;
    }

    else
    {
      v8 = 0;
    }

    v23 = v8;
    sub_F69690(v7, &v23);
    v9 = sub_F63FF4(a1);
    LOWORD(v10) = v9;
    v11 = a2 != 2;
    if (a3)
    {
      v11 = (v9 - (a2 == 2));
    }

    v22 = v11;
    v12 = nullsub_1(a1);
    result = sub_F6969C(*(v12 + 8) - 552, &v22);
    v13 = v10;
    if ((v10 & 0xFFFE) != 0)
    {
      v10 = v10;
    }

    else
    {
      v10 = 1;
    }

    if (v13 >= 2)
    {
      if (a2 == 2)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      if (a3)
      {
        v15 = 1;
        do
        {
          v21 = (v15 + v14);
          v16 = nullsub_1(a1);
          sub_F6969C(*v16 + 552 * v15 - 552, &v21);
          v17 = nullsub_1(a1);
          result = sub_F69690(*v17 + 552 * v15++, &v21);
        }

        while (v10 != v15);
      }

      else
      {
        v18 = 1;
        do
        {
          v21 = 0x3FFFF;
          v19 = nullsub_1(a1);
          sub_F6969C(*v19 + 552 * v18 - 552, &v21);
          v20 = nullsub_1(a1);
          result = sub_F69690(*v20 + 552 * v18++, &v21);
        }

        while (v10 != v18);
      }
    }
  }

  return result;
}

uint64_t sub_117E9E0(uint64_t *a1, int a2, int a3)
{
  result = sub_F64B34(a1);
  if ((result & 1) == 0)
  {
    v7 = *nullsub_1(a1);
    if (a2 == 2)
    {
      v8 = 196607;
    }

    else
    {
      v8 = 0;
    }

    v23 = v8;
    sub_F69690(v7, &v23);
    v9 = sub_F63FF4(a1);
    LOWORD(v10) = v9;
    v11 = a2 != 2;
    if (a3)
    {
      v11 = (v9 - (a2 == 2));
    }

    v22 = v11;
    v12 = nullsub_1(a1);
    result = sub_F6969C(*(v12 + 8) - 552, &v22);
    v13 = v10;
    if ((v10 & 0xFFFE) != 0)
    {
      v10 = v10;
    }

    else
    {
      v10 = 1;
    }

    if (v13 >= 2)
    {
      if (a2 == 2)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      if (a3)
      {
        v15 = 1;
        do
        {
          v21 = (v15 + v14);
          v16 = nullsub_1(a1);
          sub_F6969C(*v16 + 552 * v15 - 552, &v21);
          v17 = nullsub_1(a1);
          result = sub_F69690(*v17 + 552 * v15++, &v21);
        }

        while (v10 != v15);
      }

      else
      {
        v18 = 1;
        do
        {
          v21 = 0x3FFFF;
          v19 = nullsub_1(a1);
          sub_F6969C(*v19 + 552 * v18 - 552, &v21);
          v20 = nullsub_1(a1);
          result = sub_F69690(*v20 + 552 * v18++, &v21);
        }

        while (v10 != v18);
      }
    }
  }

  return result;
}

uint64_t sub_117EB60(uint64_t a1, int a2, int a3)
{
  v6 = sub_45AC50(a1);
  result = sub_588D8(a1);
  if (v6 != result)
  {
    v8 = result;
    do
    {
      result = sub_117E860(v6, a2, a3);
      v6 += 6;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t sub_117EBC8(uint64_t a1, int a2, int a3)
{
  v6 = sub_45AC50(a1);
  result = sub_588D8(a1);
  if (v6 != result)
  {
    v8 = result;
    do
    {
      result = sub_117E9E0(v6, a2, a3);
      v6 += 6;
    }

    while (v6 != v8);
  }

  return result;
}

unint64_t sub_117EC30(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int32x2_t *a5, uint64_t a6, int a7, int a8, int a9, int a10, unsigned int a11, int a12, unsigned int a13, uint64_t a14, void *a15)
{
  v23 = sub_3AF6B4(a15);
  sub_35CC(v75, a8);
  v74 = a2;
  if (a1 == a2)
  {
    v24 = a3;
    goto LABEL_57;
  }

  v25 = sub_2B51D8(v23, *(a1 + 32) | (*(a1 + 36) << 32));
  v26 = (v25 - *v25);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = *(v25 + v27);
    if (a8 != 0x7FFFFFFFLL)
    {
LABEL_6:
      v73 = v28;
      sub_320EC8(v23, *(a1 + 32) | (*(a1 + 36) << 32), &v76);
      sub_3914(v75, &v76);
      sub_25F00(&v76);
      goto LABEL_9;
    }
  }

  else
  {
    v28 = 0;
    if (a8 != 0x7FFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v73 = 0xFFFF;
LABEL_9:
  v76 = 0u;
  v77 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v72 = _Q0;
  v78 = _Q0;
  v79 = 0x3FF0000000000000;
  v80 = 1;
  sub_10B7014(a5, &v76, a1, a11, a6, v75, a7);
  if ((v80 & 1) == 0)
  {
LABEL_54:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_57;
  }

  v35 = sub_F8634C(&v76, &v78, v34);
  v70 = a6;
  v71 = v23;
  v69 = a5;
  v36 = (v77 + v35);
  v37 = (DWORD1(v77) + HIDWORD(v35));
  v39 = *(&v77 + 1) + v38;
  v24 = v36 | (v37 << 32);
  if (v36 == -1)
  {
    goto LABEL_57;
  }

  if (v37 == 0x7FFFFFFF)
  {
    goto LABEL_57;
  }

  v68 = a7;
  if (v39 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (sub_38EC(v75))
  {
    LODWORD(v76) = v37;
    sub_4724(v75, &v76);
  }

  v40 = HIDWORD(a3);
  v41 = (v36 + a3);
  v42 = (v37 + v40);
  v43 = v39 + a4;
  if (v41 == -1 || v42 == 0x7FFFFFFF || v43 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = v41 | (v42 << 32);
    goto LABEL_57;
  }

  v44 = v37 + a9;
  v45 = a1 + 96;
  if (a1 + 96 != a2)
  {
    LODWORD(v50) = v42;
    while (1)
    {
      v51 = sub_2B51D8(v71, *(v45 + 32) | (*(v45 + 36) << 32));
      v52 = (v51 - *v51);
      v53 = v73;
      if (*v52 >= 0xDu && (v54 = v52[6]) != 0)
      {
        v55 = *(v51 + v54);
        if (a8 == 0x7FFFFFFFLL)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v55 = 0;
        if (a8 == 0x7FFFFFFFLL)
        {
          goto LABEL_33;
        }
      }

      if (v73 == 0xFFFF || v55 != v73)
      {
        sub_320EC8(v71, *(v45 + 32) | (*(v45 + 36) << 32), &v76);
        sub_3914(v75, &v76);
        sub_25F00(&v76);
        v53 = v55;
      }

LABEL_33:
      v73 = v53;
      v76 = 0u;
      v77 = 0u;
      v78 = v72;
      v79 = 0x3FF0000000000000;
      v80 = 1;
      sub_10B7014(v69, &v76, v45, 0x3B9ACA00u, v70, v75, v68);
      if ((v80 & 1) == 0)
      {
        goto LABEL_54;
      }

      v57 = sub_F8634C(&v76, &v78, v56);
      v58 = (v77 + v57);
      v59 = (DWORD1(v77) + HIDWORD(v57));
      v61 = *(&v77 + 1) + v60;
      if (v58 == -1 || v59 == 0x7FFFFFFF || v61 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v58 | (v59 << 32);
        goto LABEL_57;
      }

      if (sub_38EC(v75))
      {
        LODWORD(v76) = v59;
        sub_4724(v75, &v76);
      }

      v41 = (v41 + v58);
      v50 = (v50 + v59);
      v43 += v61;
      if (v41 == -1 || v50 == 0x7FFFFFFF || v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v41 | (v50 << 32);
        goto LABEL_57;
      }

      v44 += v59;
      v45 += 96;
      if (v45 == v74)
      {
        v46 = v50;
        a1 = v45 - 96;
        goto LABEL_20;
      }
    }
  }

  v46 = v42;
LABEL_20:
  v47 = sub_2B51D8(v71, *(a1 + 72) | (*(a1 + 76) << 32));
  v48 = (v47 - *v47);
  if (*v48 < 0xDu)
  {
    LODWORD(v49) = 0;
  }

  else
  {
    v49 = v48[6];
    if (v49)
    {
      LODWORD(v49) = *(v47 + v49);
    }
  }

  if (a8 != 0x7FFFFFFFLL && (v73 == 0xFFFF || v49 != v73))
  {
    sub_320EC8(v71, *(a1 + 72) | (*(a1 + 76) << 32), &v76);
    sub_3914(v75, &v76);
    sub_25F00(&v76);
  }

  v76 = 0u;
  v77 = 0u;
  v78 = v72;
  v79 = 0x3FF0000000000000;
  v80 = 1;
  sub_10B0E88(v69, &v76, (a1 + 40), a13, v70, v75, v68);
  if ((v80 & 1) == 0)
  {
    goto LABEL_54;
  }

  v63 = sub_F8634C(&v76, &v78, v62);
  v65 = (v77 + v63);
  v66 = (DWORD1(v77) + HIDWORD(v63));
  v24 = v65 | (v66 << 32);
  if (v65 != -1 && v66 != 0x7FFFFFFF && *(&v77 + 1) + v64 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = (v41 + v65) | ((v46 + v66) << 32);
  }

LABEL_57:
  sub_3874(v75);
  return v24;
}

void sub_117F190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27)
{
  sub_25F00(&a27);
  sub_3874(&a20);
  _Unwind_Resume(a1);
}

void sub_117F1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117F218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_3874(va);
  _Unwind_Resume(a1);
}

unint64_t sub_117F22C(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, int32x2_t *a5, uint64_t a6, int a7, unsigned int a8, int a9, int a10, unsigned int a11, int a12, unsigned int a13, uint64_t a14, void *a15)
{
  v21 = sub_3AF6B4(a15);
  sub_35CC(v74, a8);
  if (a1 == a2)
  {
    v22 = a3;
    goto LABEL_56;
  }

  v69 = a2;
  v23 = *a1;
  v24 = sub_2B51D8(v21, *(*a1 + 32) | (*(*a1 + 36) << 32));
  v25 = (v24 - *v24);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = *(v24 + v26);
    v70 = v21;
    v68 = a8;
    if (a8 != 0x7FFFFFFFLL)
    {
LABEL_6:
      v71 = v27;
      sub_320EC8(v21, *(v23 + 32) | (*(v23 + 36) << 32), &v75);
      sub_3914(v74, &v75);
      sub_25F00(&v75);
      goto LABEL_9;
    }
  }

  else
  {
    v27 = 0;
    v70 = v21;
    v68 = a8;
    if (a8 != 0x7FFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v71 = 0xFFFF;
LABEL_9:
  v75 = 0u;
  v76 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v67 = _Q0;
  v77 = _Q0;
  v78 = 0x3FF0000000000000;
  v79 = 1;
  sub_10B7014(a5, &v75, v23, a11, a6, v74, a7);
  if ((v79 & 1) == 0)
  {
LABEL_55:
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_56;
  }

  v34 = sub_F8634C(&v75, &v77, v33);
  v35 = (v76 + v34);
  v36 = (DWORD1(v76) + HIDWORD(v34));
  v38 = *(&v76 + 1) + v37;
  v22 = v35 | (v36 << 32);
  if (v35 == -1)
  {
    goto LABEL_56;
  }

  if (v36 == 0x7FFFFFFF)
  {
    goto LABEL_56;
  }

  v66 = a7;
  if (v38 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_56;
  }

  if (sub_38EC(v74))
  {
    LODWORD(v75) = v36;
    sub_4724(v74, &v75);
  }

  v39 = (v35 + a3);
  v40 = (v36 + HIDWORD(a3));
  v41 = v38 + a4;
  if (v39 == -1 || v40 == 0x7FFFFFFF || v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v39 | (v40 << 32);
    goto LABEL_56;
  }

  v42 = v36 + a9;
  v43 = a1 + 1;
  if (a1 + 1 != v69)
  {
    LODWORD(v44) = v39;
    v45 = v70;
    while (1)
    {
      v23 = *v43;
      v49 = sub_2B51D8(v45, *(*v43 + 32) | (*(*v43 + 36) << 32));
      v50 = (v49 - *v49);
      v51 = v71;
      if (*v50 >= 0xDu && (v52 = v50[6]) != 0)
      {
        v53 = *(v49 + v52);
        if (v68 == 0x7FFFFFFF)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v53 = 0;
        if (v68 == 0x7FFFFFFF)
        {
          goto LABEL_34;
        }
      }

      if (v71 == 0xFFFF || v53 != v71)
      {
        sub_320EC8(v70, *(v23 + 32) | (*(v23 + 36) << 32), &v75);
        sub_3914(v74, &v75);
        sub_25F00(&v75);
        v51 = v53;
      }

LABEL_34:
      v71 = v51;
      v75 = 0u;
      v76 = 0u;
      v77 = v67;
      v78 = 0x3FF0000000000000;
      v79 = 1;
      sub_10B7014(a5, &v75, v23, 0x3B9ACA00u, a6, v74, v66);
      if ((v79 & 1) == 0)
      {
        goto LABEL_55;
      }

      v55 = sub_F8634C(&v75, &v77, v54);
      v56 = (v76 + v55);
      v57 = (DWORD1(v76) + HIDWORD(v55));
      v59 = *(&v76 + 1) + v58;
      if (v56 == -1 || v57 == 0x7FFFFFFF || v59 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v56 | (v57 << 32);
        goto LABEL_56;
      }

      if (sub_38EC(v74))
      {
        LODWORD(v75) = v57;
        sub_4724(v74, &v75);
      }

      v44 = (v44 + v56);
      v40 = (v40 + v57);
      v41 += v59;
      if (v44 == -1 || v40 == 0x7FFFFFFF || v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v44 | (v40 << 32);
        goto LABEL_56;
      }

      v42 += v57;
      ++v43;
      v45 = v70;
      if (v43 == v69)
      {
        goto LABEL_20;
      }
    }
  }

  LODWORD(v44) = v39;
  v45 = v70;
LABEL_20:
  v46 = sub_2B51D8(v45, *(v23 + 72) | (*(v23 + 76) << 32));
  v47 = (v46 - *v46);
  if (*v47 < 0xDu)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v48 = v47[6];
    if (v48)
    {
      LODWORD(v48) = *(v46 + v48);
    }
  }

  if (v68 != 0x7FFFFFFF && (v71 == 0xFFFF || v48 != v71))
  {
    sub_320EC8(v70, *(v23 + 72) | (*(v23 + 76) << 32), &v75);
    sub_3914(v74, &v75);
    sub_25F00(&v75);
  }

  v75 = 0u;
  v76 = 0u;
  v77 = v67;
  v78 = 0x3FF0000000000000;
  v79 = 1;
  sub_10B0E88(a5, &v75, (v23 + 40), a13, a6, v74, v66);
  if ((v79 & 1) == 0)
  {
    goto LABEL_55;
  }

  v61 = sub_F8634C(&v75, &v77, v60);
  v63 = (v76 + v61);
  v64 = (DWORD1(v76) + HIDWORD(v61));
  v22 = v63 | (v64 << 32);
  if (v63 != -1 && v64 != 0x7FFFFFFF && *(&v76 + 1) + v62 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = (v44 + v63) | ((v40 + v64) << 32);
  }

LABEL_56:
  sub_3874(v74);
  return v22;
}

void sub_117F7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27)
{
  sub_25F00(&a27);
  sub_3874(&a20);
  _Unwind_Resume(a1);
}

void sub_117F80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117F820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117F834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_3874(va);
  _Unwind_Resume(a1);
}

const void *sub_117F848(uint64_t a1, uint64_t a2, const void *a3, int32x2_t **a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11, uint64_t a12, void *a13)
{
  v20 = sub_3AF6B4(a13);
  v65 = a3;
  sub_35CC(v64, a7);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24))
  {
    goto LABEL_65;
  }

  v21 = *(a1 + 16);
  v22 = sub_2B51D8(v20, *(v21 + 10) | (*(v21 + 22) << 32));
  v23 = (v22 - *v22);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(v22 + v24);
    if (a7 != 0x7FFFFFFFLL)
    {
LABEL_6:
      sub_320EC8(v20, *(v21 + 10) | (*(v21 + 22) << 32), v66);
      sub_3914(v64, v66);
      sub_25F00(v66);
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    if (a7 != 0x7FFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v25 = 0xFFFF;
LABEL_9:
  LODWORD(v66[0]) = sub_394BD0();
  v26 = sub_F86218(v66, v21, a9, *a4, a5, a6, v64);
  v63 = (LODWORD(v66[0]) | (v26 << 32));
  v27 = sub_38EC(&v63);
  if (HIDWORD(v63) == 0x7FFFFFFF || !v27)
  {
    a3 = v63;
    goto LABEL_65;
  }

  HIDWORD(v65) += HIDWORD(v63);
  sub_F86338(&v65, &v63);
  v29 = HIDWORD(v63);
  if (sub_38EC(v64))
  {
    LODWORD(v66[0]) = HIDWORD(v63);
    sub_4724(v64, v66);
  }

  v30 = sub_38EC(&v65);
  if (HIDWORD(v65) == 0x7FFFFFFF || !v30)
  {
LABEL_53:
    a3 = v65;
    goto LABEL_65;
  }

  v61 = a6;
  v32 = *a1;
  v33 = **(a1 + 16);
  if (*(*(*a1 + 168) + 4 * v33) == 1)
  {
    v34 = v32[12];
    if (v33 >= (v32[13] - v34) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v60 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v35 = v32[15] + 104 * *(v34 + 4 * v33);
    v36 = v29 + a8;
    v37 = *(a2 + 8);
    v38 = *(a2 + 24);
    if (v33 != v37)
    {
      while (1)
      {
LABEL_33:
        v21 = v35;
        v42 = sub_2B51D8(v20, *(v35 + 40) | (*(v35 + 44) << 32));
        v43 = (v42 - *v42);
        if (*v43 >= 0xDu && (v44 = v43[6]) != 0)
        {
          v45 = *(v42 + v44);
          if (a7 != 0x7FFFFFFFLL)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v45 = 0;
          if (a7 != 0x7FFFFFFFLL)
          {
LABEL_38:
            if (v25 == 0xFFFF || v45 != v25)
            {
              sub_320EC8(v20, *(v21 + 10) | (*(v21 + 22) << 32), v66);
              sub_3914(v64, v66);
              sub_25F00(v66);
              v25 = v45;
            }
          }
        }

        v67 = sub_394BD0();
        v46 = sub_F86218(&v67, v21, 0x3B9ACA00u, *a4, a5, v61, v64);
        v66[0] = (v67 | (v46 << 32));
        v47 = sub_38EC(v66);
        if (HIDWORD(v66[0]) == 0x7FFFFFFF || !v47)
        {
          a3 = v66[0];
          goto LABEL_65;
        }

        HIDWORD(v65) += HIDWORD(v66[0]);
        sub_F86338(&v65, v66);
        v49 = HIDWORD(v66[0]);
        if (sub_38EC(v64))
        {
          v67 = HIDWORD(v66[0]);
          sub_4724(v64, &v67);
        }

        if (!sub_38EC(&v65))
        {
          a3 = v65;
          goto LABEL_65;
        }

        if (HIDWORD(v65) == 0x7FFFFFFF)
        {
          goto LABEL_53;
        }

        v50 = *v21;
        if (*(v32[21] + 4 * v50) == 1)
        {
          v51 = v32[12];
          if (v50 >= (v32[13] - v51) >> 2)
          {
            v57 = __cxa_allocate_exception(0x40uLL);
            v58 = sub_2D390(v57, "vertex id out of range", 0x16uLL);
          }

          v35 = v32[15] + 104 * *(v51 + 4 * v50);
          v36 += v49;
          if (v50 == v37)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v35 = 0;
          v36 += v49;
          if (v50 == v37)
          {
LABEL_32:
            if (!v38)
            {
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  else
  {
    v35 = 0;
    v36 = v29 + a8;
    v37 = *(a2 + 8);
    v38 = *(a2 + 24);
    if (v33 != v37)
    {
      goto LABEL_33;
    }
  }

  if (v38)
  {
    goto LABEL_33;
  }

LABEL_26:
  v39 = sub_2B51D8(v20, *(v21 + 20) | (*(v21 + 42) << 32));
  v40 = (v39 - *v39);
  if (*v40 >= 0xDu)
  {
    v41 = v40[6];
    if (v41)
    {
      LODWORD(v41) = *(v39 + v41);
    }

    if (a7 == 0x7FFFFFFFLL)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  LODWORD(v41) = 0;
  if (a7 != 0x7FFFFFFFLL)
  {
LABEL_55:
    if (v25 == 0xFFFF || v41 != v25)
    {
      sub_320EC8(v20, *(v21 + 20) | (*(v21 + 42) << 32), v66);
      sub_3914(v64, v66);
      sub_25F00(v66);
    }
  }

LABEL_58:
  v67 = sub_394BD0();
  v52 = sub_F8613C(&v67, v21 + 6, a11, *a4, a5, v61, v64);
  v66[0] = (v67 | (v52 << 32));
  v53 = sub_38EC(v66);
  if (HIDWORD(v66[0]) != 0x7FFFFFFF && v53)
  {
    HIDWORD(v65) += HIDWORD(v66[0]);
    v55 = &v65;
    sub_F86338(&v65, v66);
  }

  else
  {
    v55 = v66;
  }

  a3 = *v55;
LABEL_65:
  sub_3874(v64);
  return a3;
}

void sub_117FE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_25F00(va1);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117FE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117FE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117FE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117FEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_117FEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3874(va);
  _Unwind_Resume(a1);
}

const void *sub_117FED4(uint64_t a1, uint64_t a2, const void *a3, int32x2_t **a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11, uint64_t a12, void *a13)
{
  v20 = sub_3AF6B4(a13);
  v60 = a3;
  sub_35CC(v59, a7);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24))
  {
    goto LABEL_65;
  }

  v21 = *(a1 + 16);
  v22 = sub_2B51D8(v20, *(v21 + 40) | (*(v21 + 44) << 32));
  v23 = (v22 - *v22);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(v22 + v24);
    if (a7 != 0x7FFFFFFFLL)
    {
LABEL_6:
      sub_320EC8(v20, *(v21 + 40) | (*(v21 + 44) << 32), v61);
      sub_3914(v59, v61);
      sub_25F00(v61);
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    if (a7 != 0x7FFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v25 = 0xFFFF;
LABEL_9:
  LODWORD(v61[0]) = sub_394BD0();
  v26 = sub_F86218(v61, v21, a9, *a4, a5, a6, v59);
  v58 = (LODWORD(v61[0]) | (v26 << 32));
  v27 = sub_38EC(&v58);
  if (HIDWORD(v58) == 0x7FFFFFFF || !v27)
  {
    a3 = v58;
    goto LABEL_65;
  }

  HIDWORD(v60) += HIDWORD(v58);
  sub_F86338(&v60, &v58);
  v29 = HIDWORD(v58);
  if (sub_38EC(v59))
  {
    LODWORD(v61[0]) = HIDWORD(v58);
    sub_4724(v59, v61);
  }

  v30 = sub_38EC(&v60);
  if (HIDWORD(v60) == 0x7FFFFFFF || !v30)
  {
LABEL_51:
    a3 = v60;
    goto LABEL_65;
  }

  v56 = a6;
  v32 = *a1;
  v33 = **(a1 + 16);
  if (sub_F94B2C(v32, v33) == 1)
  {
    sub_F9495C(v32, v33, v61);
    v34 = *v61[0] + 104 * v62;
  }

  else
  {
    v34 = 0;
  }

  v35 = v29 + a8;
  v36 = *(a2 + 24);
  v37 = *(a2 + 8);
  v55 = v36;
  if (v33 == v37 && !v36)
  {
LABEL_25:
    v38 = sub_2B51D8(v20, *(v21 + 80) | (*(v21 + 84) << 32));
    v39 = (v38 - *v38);
    if (*v39 < 0xDu)
    {
      LODWORD(v40) = 0;
      if (a7 == 0x7FFFFFFFLL)
      {
LABEL_56:
        v63 = sub_394BD0();
        v50 = sub_F8613C(&v63, (v21 + 48), a11, *a4, a5, v56, v59);
        v61[0] = (v63 | (v50 << 32));
        v51 = sub_38EC(v61);
        if (HIDWORD(v61[0]) != 0x7FFFFFFF && v51)
        {
          HIDWORD(v60) += HIDWORD(v61[0]);
          sub_F86338(&v60, v61);
          a3 = v60;
        }

        else
        {
          a3 = v61[0];
        }

        goto LABEL_65;
      }
    }

    else
    {
      v40 = v39[6];
      if (v40)
      {
        LODWORD(v40) = *(v38 + v40);
      }

      if (a7 == 0x7FFFFFFFLL)
      {
        goto LABEL_56;
      }
    }

    if (v25 == 0xFFFF || v40 != v25)
    {
      sub_320EC8(v20, *(v21 + 80) | (*(v21 + 84) << 32), v61);
      sub_3914(v59, v61);
      sub_25F00(v61);
    }

    goto LABEL_56;
  }

  while (1)
  {
    v21 = v34;
    v41 = sub_2B51D8(v20, *(v34 + 40) | (*(v34 + 44) << 32));
    v42 = (v41 - *v41);
    if (*v42 >= 0xDu && (v43 = v42[6]) != 0)
    {
      v44 = *(v41 + v43);
      if (a7 == 0x7FFFFFFFLL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v44 = 0;
      if (a7 == 0x7FFFFFFFLL)
      {
        goto LABEL_40;
      }
    }

    if (v25 == 0xFFFF || v44 != v25)
    {
      sub_320EC8(v20, *(v21 + 40) | (*(v21 + 44) << 32), v61);
      sub_3914(v59, v61);
      sub_25F00(v61);
      v25 = v44;
    }

LABEL_40:
    v63 = sub_394BD0();
    v45 = sub_F86218(&v63, v21, 0x3B9ACA00u, *a4, a5, v56, v59);
    v61[0] = (v63 | (v45 << 32));
    v46 = sub_38EC(v61);
    if (HIDWORD(v61[0]) == 0x7FFFFFFF || !v46)
    {
      v53 = v61;
      goto LABEL_64;
    }

    HIDWORD(v60) += HIDWORD(v61[0]);
    sub_F86338(&v60, v61);
    v48 = HIDWORD(v61[0]);
    if (sub_38EC(v59))
    {
      v63 = HIDWORD(v61[0]);
      sub_4724(v59, &v63);
    }

    if (!sub_38EC(&v60))
    {
      break;
    }

    if (HIDWORD(v60) == 0x7FFFFFFF)
    {
      goto LABEL_51;
    }

    v49 = *v21;
    if (sub_F94B2C(v32, *v21) == 1)
    {
      sub_F9495C(v32, v49, v61);
      v34 = *v61[0] + 104 * v62;
      v35 += v48;
      if (v49 == v37)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = 0;
      v35 += v48;
      if (v49 == v37)
      {
LABEL_31:
        if (!v55)
        {
          goto LABEL_25;
        }
      }
    }
  }

  v53 = &v60;
LABEL_64:
  a3 = *v53;
LABEL_65:
  sub_3874(v59);
  return a3;
}

void sub_1180434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_25F00(va1);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_11804A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_11804BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_11804D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_11804E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_3874(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11804F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned int a10, int a11, unsigned int a12, uint64_t a13, void *a14)
{
  v21 = sub_3AF6B4(a14);
  v68 = *a3;
  v69 = *(a3 + 2);
  v22 = a7;
  sub_35CC(v67, a7);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24))
  {
    goto LABEL_22;
  }

  v23 = *(a1 + 16);
  v24 = sub_2B51D8(v21, *(v23 + 40) | (*(v23 + 44) << 32));
  v25 = (v24 - *v24);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = *(v24 + v26);
    if (v22 != 0x7FFFFFFF)
    {
LABEL_6:
      sub_320EC8(v21, *(v23 + 40) | (*(v23 + 44) << 32), &v70);
      sub_3914(v67, &v70);
      sub_25F00(&v70);
      goto LABEL_9;
    }
  }

  else
  {
    v27 = 0;
    if (v22 != 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }

  v27 = 0xFFFF;
LABEL_9:
  sub_F86BE4(a4[1], &v70);
  v28 = sub_F86E74(&v70, v23, a10, *a4, a5, a6, v67, a8, a4[1]);
  v65 = v70;
  v66 = __PAIR64__(v28, v71);
  v29 = sub_F86BB8(&v65);
  if (HIDWORD(v66) == 0x7FFFFFFF || !v29)
  {
    *a9 = v65;
    v40 = v66;
    goto LABEL_24;
  }

  HIDWORD(v69) += HIDWORD(v66);
  sub_F86FC4(&v68, &v65);
  v31 = HIDWORD(v66);
  if (sub_38EC(v67))
  {
    LODWORD(v70) = HIDWORD(v66);
    sub_4724(v67, &v70);
  }

  v32 = sub_F86BB8(&v68);
  if (HIDWORD(v69) == 0x7FFFFFFF || !v32)
  {
LABEL_22:
    *a9 = v68;
    v40 = v69;
LABEL_24:
    *(a9 + 16) = v40;
    return sub_3874(v67);
  }

  v61 = a9;
  v34 = *a1;
  v35 = **(a1 + 16);
  if (sub_F94B2C(v34, v35) == 1)
  {
    sub_F9495C(v34, v35, &v70);
    v36 = *v70 + 104 * v71;
    v37 = v31 + a8;
    v38 = *(a2 + 8);
    v39 = *(a2 + 24);
    v62 = v39;
    if (v35 != v38)
    {
      goto LABEL_35;
    }

LABEL_27:
    if (v39)
    {
      goto LABEL_35;
    }

LABEL_28:
    v42 = sub_2B51D8(v21, *(v23 + 80) | (*(v23 + 84) << 32));
    v43 = (v42 - *v42);
    if (*v43 < 0xDu)
    {
      LODWORD(v44) = 0;
      if (v22 == 0x7FFFFFFF)
      {
LABEL_60:
        sub_F86BE4(a4[1], &v73);
        v56 = sub_F86D6C(&v73, v23 + 48, a12, *a4, a5, a6, v67, v37, a4[1]);
        v70 = v73;
        v71 = v74;
        v72 = v56;
        v57 = sub_F86BB8(&v70);
        if (v72 != 0x7FFFFFFF && v57)
        {
          HIDWORD(v69) += v72;
          v59 = &v68;
          sub_F86FC4(&v68, &v70);
        }

        else
        {
          v59 = &v70;
        }

        *v61 = *v59;
        *(v61 + 16) = *(v59 + 2);
        return sub_3874(v67);
      }
    }

    else
    {
      v44 = v43[6];
      if (v44)
      {
        LODWORD(v44) = *(v42 + v44);
      }

      if (v22 == 0x7FFFFFFF)
      {
        goto LABEL_60;
      }
    }

    if (v27 == 0xFFFF || v44 != v27)
    {
      sub_320EC8(v21, *(v23 + 80) | (*(v23 + 84) << 32), &v70);
      sub_3914(v67, &v70);
      sub_25F00(&v70);
    }

    goto LABEL_60;
  }

  v36 = 0;
  v37 = v31 + a8;
  v38 = *(a2 + 8);
  v39 = *(a2 + 24);
  v62 = v39;
  if (v35 == v38)
  {
    goto LABEL_27;
  }

  while (1)
  {
LABEL_35:
    v23 = v36;
    v45 = sub_2B51D8(v21, *(v36 + 40) | (*(v36 + 44) << 32));
    v46 = (v45 - *v45);
    if (*v46 >= 0xDu && (v47 = v46[6]) != 0)
    {
      v48 = *(v45 + v47);
      if (v22 == 0x7FFFFFFF)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v48 = 0;
      if (v22 == 0x7FFFFFFF)
      {
        goto LABEL_43;
      }
    }

    if (v27 == 0xFFFF || v48 != v27)
    {
      sub_320EC8(v21, *(v23 + 40) | (*(v23 + 44) << 32), &v70);
      sub_3914(v67, &v70);
      sub_25F00(&v70);
      v27 = v48;
    }

LABEL_43:
    sub_F86BE4(a4[1], &v73);
    v49 = sub_F86E74(&v73, v23, 0x3B9ACA00u, *a4, a5, a6, v67, v37, a4[1]);
    v70 = v73;
    v71 = v74;
    v72 = v49;
    v50 = sub_F86BB8(&v70);
    if (v72 == 0x7FFFFFFF || !v50)
    {
      v60 = &v70;
      goto LABEL_69;
    }

    HIDWORD(v69) += v72;
    sub_F86FC4(&v68, &v70);
    v52 = v72;
    if (sub_38EC(v67))
    {
      LODWORD(v73) = v72;
      sub_4724(v67, &v73);
    }

    v53 = sub_F86BB8(&v68);
    if (HIDWORD(v69) == 0x7FFFFFFF || !v53)
    {
      break;
    }

    v55 = *v23;
    if (sub_F94B2C(v34, *v23) == 1)
    {
      sub_F9495C(v34, v55, &v70);
      v36 = *v70 + 104 * v71;
      v37 += v52;
      if (v55 == v38)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v36 = 0;
      v37 += v52;
      if (v55 == v38)
      {
LABEL_34:
        if (!v62)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v60 = &v68;
LABEL_69:
  *v61 = *v60;
  *(v61 + 16) = *(v60 + 2);
  return sub_3874(v67);
}

void sub_1180ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_25F00((v11 - 144));
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3874(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1180B80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, __int128 *a6@<X5>, void *a7@<X6>, __n128 *a8@<X8>)
{
  if (sub_F695B8(a1))
  {
    v15 = sub_F69654(a1);
    sub_35CC(v33, a5);
    v16 = sub_3AF6B4(a7);
    sub_320EC8(v16, *(v15 + 32) | (*(v15 + 36) << 32), v32);
    sub_3914(v33, v32);
    sub_25F00(v32);
    v17 = sub_F69654(a1);
    v18 = sub_F6A030(a1);
    sub_35CC(v32, a5);
    v19 = a2;
    v20 = a2;
    v21 = a3;
    v22 = a3;
    v23 = a4;
    sub_10BEF98(v20, v17, v18, v22, v32, a4, a6, 0, v31);
    v24 = a8;
    sub_3874(v32);
    sub_3874(v33);
  }

  else
  {
    v19 = a2;
    v21 = a3;
    v23 = a4;
    v24 = a8;
  }

  v25 = (1000000000 - *sub_73F1C(a1));
  v26 = *sub_F69058(a1);
  sub_4C35D4(a1, v32);
  v27 = v32[0];
  sub_4C35D4(a1, v31);
  v28 = v31[0].n128_i64[1];
  sub_446CE8(v33);
  return sub_1180DB0(v27, v28, v33, v19, v21, v23, a5, 0, v24, v25, SHIDWORD(v25), v26, a6, a7);
}

void sub_1180D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_3874(va);
  sub_3874(va1);
  _Unwind_Resume(a1);
}

void sub_1180D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_25F00(va);
  sub_3874(va1);
  _Unwind_Resume(a1);
}

void sub_1180D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1180D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_3874(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1180DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, __n128 *a9@<X8>, unsigned int a10, int a11, unsigned int a12, __int128 *a13, void *a14)
{
  v22 = sub_3AF6B4(a14);
  v23 = a3[1];
  v51 = *a3;
  v52 = v23;
  v50 = a8;
  v48 = *a13;
  v49 = *(a13 + 2);
  v24 = a7;
  sub_35CC(v47, a7);
  if (a1 == a2)
  {
LABEL_2:
    v25 = v51;
    v26 = v52;
    goto LABEL_45;
  }

  v46[0] = &v51;
  v46[1] = &v50;
  v46[2] = v47;
  v46[3] = &v48;
  v27 = sub_2B51D8(v22, *(a1 + 32) | (*(a1 + 36) << 32));
  v28 = (v27 - *v27);
  if (*v28 >= 0xDu && (v29 = v28[6]) != 0)
  {
    v30 = *(v27 + v29);
    if (a7 != 0x7FFFFFFFLL)
    {
LABEL_6:
      sub_320EC8(v22, *(a1 + 32) | (*(a1 + 36) << 32), v45);
      sub_3914(v47, v45);
      sub_25F00(v45);
      goto LABEL_9;
    }
  }

  else
  {
    v30 = 0;
    if (a7 != 0x7FFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  v30 = 0xFFFFLL;
LABEL_9:
  sub_10BF1E0(a4, a1, a10, a5, v47, a6, &v48, v50, v45);
  if (!sub_446D14(v45))
  {
    v25 = v45[0];
    v26 = v45[1];
    goto LABEL_45;
  }

  sub_1183B4C(v46, v45);
  if (!sub_446D14(&v51))
  {
    goto LABEL_2;
  }

  v31 = a1 + 96;
  if (a1 + 96 == a2)
  {
LABEL_29:
    v37 = sub_2B51D8(v22, *(a1 + 72) | (*(a1 + 76) << 32));
    v38 = (v37 - *v37);
    if (*v38 < 0xDu)
    {
      LODWORD(v39) = 0;
      if (v24 == 0x7FFFFFFF)
      {
LABEL_38:
        sub_10BEF98(a4, a1 + 40, a12, a5, v47, a6, &v48, v50, v44);
        if (sub_446D14(v44))
        {
          v40 = &v51;
          sub_446D50(&v51, v44);
        }

        else
        {
          v40 = v44;
        }

        v25 = *v40;
        v26 = v40[1];
        goto LABEL_45;
      }
    }

    else
    {
      v39 = v38[6];
      if (v39)
      {
        LODWORD(v39) = *(v37 + v39);
      }

      if (v24 == 0x7FFFFFFF)
      {
        goto LABEL_38;
      }
    }

    if (v30 == 0xFFFF || v39 != v30)
    {
      sub_320EC8(v22, *(a1 + 72) | (*(a1 + 76) << 32), v44);
      sub_3914(v47, v44);
      sub_25F00(v44);
    }

    goto LABEL_38;
  }

  if (v24 != 0x7FFFFFFF)
  {
    while (1)
    {
      v32 = sub_2B51D8(v22, *(v31 + 32) | (*(v31 + 36) << 32));
      v33 = (v32 - *v32);
      v34 = v30;
      if (*v33 >= 0xDu && (v35 = v33[6]) != 0)
      {
        v36 = *(v32 + v35);
        if (v34 != 0xFFFF)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v36 = 0;
        if (v34 != 0xFFFF)
        {
LABEL_23:
          if (v36 == v34)
          {
            goto LABEL_25;
          }
        }
      }

      sub_320EC8(v22, *(v31 + 32) | (*(v31 + 36) << 32), v44);
      sub_3914(v47, v44);
      sub_25F00(v44);
      v34 = v36;
LABEL_25:
      v30 = v34;
      sub_10BF1E0(a4, v31, 0x3B9ACA00u, a5, v47, a6, &v48, v50, v44);
      if (!sub_446D14(v44))
      {
        goto LABEL_42;
      }

      sub_1183B4C(v46, v44);
      if (!sub_446D14(&v51))
      {
LABEL_43:
        v41 = &v51;
        goto LABEL_44;
      }

      v31 += 96;
      if (v31 == a2)
      {
LABEL_28:
        a1 = v31 - 96;
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    sub_2B51D8(v22, *(v31 + 32) | (*(v31 + 36) << 32));
    sub_10BF1E0(a4, v31, 0x3B9ACA00u, a5, v47, a6, &v48, v50, v44);
    if (!sub_446D14(v44))
    {
      break;
    }

    sub_1183B4C(v46, v44);
    if (!sub_446D14(&v51))
    {
      goto LABEL_43;
    }

    v31 += 96;
    if (v31 == a2)
    {
      goto LABEL_28;
    }
  }

LABEL_42:
  v41 = v44;
LABEL_44:
  v25 = *v41;
  v26 = v41[1];
LABEL_45:
  *a9 = v25;
  a9[1] = v26;
  return sub_3874(v47);
}

void sub_11811E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_25F00(va);
  sub_3874(va1);
  _Unwind_Resume(a1);
}

void sub_1181218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_118122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_25F00(va);
  sub_3874(va1);
  _Unwind_Resume(a1);
}

void sub_1181248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_118125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1181270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1181284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1181298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_11812AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_3874(va);
  _Unwind_Resume(a1);
}

unint64_t sub_11812C0(uint64_t a1, int32x2_t *a2, uint64_t a3, int a4, int a5, uint64_t a6, void *a7)
{
  if (sub_F695B8(a1))
  {
    v14 = sub_F69654(a1);
    sub_35CC(v29, a5);
    v15 = sub_3AF6B4(a7);
    sub_320EC8(v15, *(v14 + 32) | (*(v14 + 36) << 32), v30);
    sub_3914(v29, v30);
    sub_25F00(v30);
    v16 = sub_F69654(a1);
    v17 = sub_F6A030(a1);
    sub_35CC(v28, a5);
    memset(v30, 0, sizeof(v30));
    __asm { FMOV            V0.2D, #1.0 }

    v31 = _Q0;
    v32 = 0x3FF0000000000000;
    v33 = 1;
    sub_10B0E88(a2, v30, v16, v17, a3, v28, a4);
    if (v33 == 1)
    {
      sub_F8634C(v30, &v31, v23);
    }

    sub_3874(v28);
    sub_3874(v29);
  }

  v24 = (1000000000 - *sub_73F1C(a1));
  v25 = *sub_F69058(a1);
  sub_4C35D4(a1, v30);
  v26 = *&v30[0];
  sub_4C35D4(a1, v29);
  return sub_117EC30(v26, v29[1], 0, 0, a2, a3, a4, a5, 0, 0, v24, SHIDWORD(v24), v25, a6, a7);
}

void sub_1181484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_1181498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27)
{
  sub_25F00(&a27);
  sub_3874(&a21);
  _Unwind_Resume(a1);
}

void sub_11814B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_3874(va);
  sub_3874(va1);
  _Unwind_Resume(a1);
}

void sub_11814D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_11814E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_3874(va);
  _Unwind_Resume(a1);
}

double sub_11814F8@<D0>(__int128 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_7:
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v5 = *a1;
    while (1)
    {
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 1);
      }

      if (v6)
      {
        break;
      }

      v5 = (v5 + 552);
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    v7 = v3 + 552;
    if (*(v3 + 23) < 0)
    {
      sub_325C(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v8 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v8;
    }

    while (v7 != v4)
    {
      v11 = __p;
      memset(&__p, 0, sizeof(__p));
      sub_1183414(&v11, v7, &v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v12;
      *(&v12.__r_.__value_.__s + 23) = 0;
      v12.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v7 += 552;
    }

    result = *&__p.__r_.__value_.__l.__data_;
    *a2 = __p;
  }

  return result;
}

void sub_118162C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double sub_1181668@<D0>(__int128 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_7:
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v5 = *a1;
    while (1)
    {
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 1);
      }

      if (v6)
      {
        break;
      }

      v5 = (v5 + 552);
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    v7 = v3 + 552;
    if (*(v3 + 23) < 0)
    {
      sub_325C(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v8 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v8;
    }

    while (v7 != v4)
    {
      v11 = __p;
      memset(&__p, 0, sizeof(__p));
      sub_1183608(&v11, v7, &v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v12;
      *(&v12.__r_.__value_.__s + 23) = 0;
      v12.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v7 += 552;
    }

    result = *&__p.__r_.__value_.__l.__data_;
    *a2 = __p;
  }

  return result;
}

void sub_118179C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double sub_11817D8@<D0>(__int128 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_7:
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v5 = *a1;
    while (1)
    {
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 1);
      }

      if (v6)
      {
        break;
      }

      v5 = (v5 + 552);
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    v7 = v3 + 552;
    if (*(v3 + 23) < 0)
    {
      sub_325C(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v8 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v8;
    }

    while (v7 != v4)
    {
      v11 = __p;
      memset(&__p, 0, sizeof(__p));
      sub_11837FC(&v11, v7, &v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v12;
      *(&v12.__r_.__value_.__s + 23) = 0;
      v12.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v7 += 552;
    }

    result = *&__p.__r_.__value_.__l.__data_;
    *a2 = __p;
  }

  return result;
}

void sub_118190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL sub_1181948(uint64_t a1, int a2)
{
  v3 = *sub_4D1DB0(a1);
  v4 = (v3 & 0xFFFFFF) == 196607;
  v5 = v3 == 0;
  if (a2 == 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1181990(unint64_t a1, uint64_t a2)
{
  v31 = 0;
  if (!sub_F6D008(a1))
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24[0] = a2;
  v24[1] = &v25;
  v24[2] = a1;
  v24[3] = &v28;
  v24[4] = &v31;
  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = sub_F69654(a1);
  sub_F914F8(a2, *(v4 + 32) & 0xFFFFFFFFFFFFFFLL, &__p);
  v5 = __p;
  v6 = v22;
  if (__p != v22)
  {
    do
    {
      sub_1181C3C(v24, 0, *v5++);
    }

    while (v5 != v6);
  }

  while (v28 != v29)
  {
    v7 = *(v29 - 13);
    v8 = *(v29 - 5);
    v9 = *(v29 - 3);
    v34 = *(v29 - 4);
    v35 = v9;
    v10 = *(v29 - 3);
    v36 = *(v29 - 4);
    v32 = *(v29 - 6);
    v33 = v8;
    v19 = *(v29 - 2);
    v11 = *(v29 - 8);
    v20 = *(v29 - 7);
    v29 -= 104;
    v12 = sub_F6CDE4(a1, v7);
    v13 = v35;
    *(v12 + 32) = v34;
    *(v12 + 48) = v13;
    v14 = v36;
    v15 = v33;
    *v12 = v32;
    *(v12 + 16) = v15;
    *(v12 + 64) = v14;
    *(v12 + 72) = v10;
    *(v12 + 80) = v19;
    *(v12 + 88) = v11;
    *(v12 + 89) = v20;
    *(v12 + 91) = BYTE2(v20);
    v16 = v7 + 1;
    if (v16 >= sub_F6D008(a1))
    {
      break;
    }

    if (v28 != v29)
    {
      sub_F914F8(a2, v10 & 0xFFFFFFFFFFFFFFLL, &__p);
      if (v22 - __p == 8)
      {
        v29 = v28;
      }
    }

    sub_1181C3C(v24, v16, (((v10 >> 16) & 0xFFFF0000 | (v10 << 32) | (2 * ((v10 & 0xFF000000000000) == 0))) + ((v19 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v11 >> 1) & 1);
  }

  sub_F6E1F4(a1);
  v17 = v31;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v17;
}

void sub_1181BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a20;
    if (!a20)
    {
LABEL_3:
      v26 = a23;
      if (!a23)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v25 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  v26 = a23;
  if (!a23)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v26);
  _Unwind_Resume(exception_object);
}

void sub_1181C3C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v51 = a3;
  sub_F90350(*a1, a3, 0, *(a1 + 8), 0);
  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v13 = *(v6 + 9);
      v14 = *(sub_F6CDE4(*(a1 + 16), a2) + 72);
      v16 = v13 == v14;
      v15 = HIDWORD(v14) & 0xFFFFFF;
      v16 = v16 && (HIDWORD(v13) & 0xFFFFFF) == v15;
      if (v16)
      {
        v17 = *(a1 + 24);
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        if (v18 < v19)
        {
          *v18 = a2;
          v8 = *v6;
          *(v18 + 24) = v6[1];
          *(v18 + 8) = v8;
          v9 = v6[2];
          v10 = v6[3];
          v11 = v6[4];
          *(v18 + 88) = v6[5];
          *(v18 + 72) = v11;
          *(v18 + 56) = v10;
          *(v18 + 40) = v9;
          v12 = v18 + 104;
        }

        else
        {
          v20 = *v17;
          v21 = 0x4EC4EC4EC4EC4EC5 * ((v18 - *v17) >> 3);
          v22 = v21 + 1;
          if ((v21 + 1) > 0x276276276276276)
          {
            goto LABEL_40;
          }

          v23 = 0x4EC4EC4EC4EC4EC5 * ((v19 - v20) >> 3);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x13B13B13B13B13BLL)
          {
            v24 = 0x276276276276276;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (v24 <= 0x276276276276276)
            {
              operator new();
            }

LABEL_41:
            sub_1808();
          }

          v25 = 8 * ((v18 - *v17) >> 3);
          *v25 = a2;
          v26 = *v6;
          *(v25 + 24) = v6[1];
          *(v25 + 8) = v26;
          v27 = v6[2];
          v28 = v6[3];
          v29 = v6[4];
          *(v25 + 88) = v6[5];
          *(v25 + 72) = v29;
          *(v25 + 56) = v28;
          *(v25 + 40) = v27;
          v12 = 104 * v21 + 104;
          v30 = 104 * v21 - (v18 - v20);
          memcpy((v25 - (v18 - v20)), v20, v18 - v20);
          *v17 = v30;
          *(v17 + 8) = v12;
          *(v17 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        *(v17 + 8) = v12;
      }

      v6 += 6;
    }

    while (v6 != v7);
  }

  v31 = *(a1 + 24);
  if (*v31 == *(v31 + 8))
  {
    ++**(a1 + 32);
    v32 = sub_F6CDE4(*(a1 + 16), a2);
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (v33 >= v34)
    {
      v40 = *v31;
      v41 = 0x4EC4EC4EC4EC4EC5 * ((v33 - *v31) >> 3);
      v42 = v41 + 1;
      if ((v41 + 1) > 0x276276276276276)
      {
LABEL_40:
        sub_1794();
      }

      v43 = 0x4EC4EC4EC4EC4EC5 * ((v34 - v40) >> 3);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0x13B13B13B13B13BLL)
      {
        v44 = 0x276276276276276;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 <= 0x276276276276276)
        {
          operator new();
        }

        goto LABEL_41;
      }

      v45 = 8 * ((v33 - *v31) >> 3);
      *v45 = a2;
      v46 = *v32;
      *(v45 + 24) = v32[1];
      *(v45 + 8) = v46;
      v47 = v32[2];
      v48 = v32[3];
      v49 = v32[4];
      *(v45 + 88) = v32[5];
      *(v45 + 72) = v49;
      *(v45 + 56) = v48;
      *(v45 + 40) = v47;
      v39 = 104 * v41 + 104;
      v50 = (v45 - (v33 - v40));
      memcpy(v50, v40, v33 - v40);
      *v31 = v50;
      *(v31 + 8) = v39;
      *(v31 + 16) = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v33 = a2;
      v35 = *v32;
      *(v33 + 24) = v32[1];
      *(v33 + 8) = v35;
      v36 = v32[2];
      v37 = v32[3];
      v38 = v32[4];
      *(v33 + 88) = v32[5];
      *(v33 + 72) = v38;
      *(v33 + 56) = v37;
      *(v33 + 40) = v36;
      v39 = v33 + 104;
    }

    *(v31 + 8) = v39;
    *(*(*(a1 + 24) + 8) - 16) = v51 >> 2;
    *(*(*(a1 + 24) + 8) - 8) = *(*(*(a1 + 24) + 8) - 8) & 0xFE | v51 & 1;
  }
}

uint64_t sub_1181FE4(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  if (!sub_F69D08(a1))
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26[0] = a2;
  v26[1] = &v27;
  v26[2] = a1;
  v26[3] = &v30;
  v26[4] = &v33;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v4 = sub_F69654(a1);
  sub_F90F80(a2, (*(v4 + 32) & 0xFFFFFFFFFFFFFFLL), &__p);
  v5 = __p;
  v6 = v24;
  if (__p != v24)
  {
    do
    {
      sub_1182298(v26, 0, *v5++);
    }

    while (v5 != v6);
  }

  for (i = v31; v30 != v31; i = v31)
  {
    v9 = *(i - 12);
    v8 = (i - 12);
    v10 = *(v8 + 40);
    v35 = *(v8 + 24);
    v36 = v10;
    v37 = *(v8 + 56);
    v11 = *(v8 + 10);
    v38 = *(v8 + 9);
    v34 = *(v8 + 8);
    v12 = *(v8 + 22);
    v13 = v8[92];
    v21 = *(v8 + 93);
    v22 = v8[95];
    v31 = v8;
    v14 = sub_F69AE4(a1, v9);
    v15 = v35;
    v16 = v37;
    *(v14 + 32) = v36;
    *(v14 + 48) = v16;
    v17 = v38;
    *v14 = v34;
    *(v14 + 16) = v15;
    *(v14 + 64) = v17;
    *(v14 + 72) = v11;
    *(v14 + 80) = v12;
    *(v14 + 84) = v13;
    *(v14 + 85) = v21;
    *(v14 + 87) = v22;
    v18 = v9 + 1;
    if (v9 + 1 >= sub_F69D08(a1))
    {
      break;
    }

    if (v30 != v31)
    {
      sub_F90F80(a2, (v11 & 0xFFFFFFFFFFFFFFLL), &__p);
      if (v24 - __p == 8)
      {
        v31 = v30;
      }
    }

    sub_1182298(v26, v18, (((v11 >> 16) & 0xFFFF0000 | (v11 << 32) | (2 * ((v11 & 0xFF000000000000) == 0))) + ((v12 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v13 >> 1) & 1);
  }

  sub_F6B5E8(a1);
  v19 = v33;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v19;
}

void sub_1182238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    v23 = a18;
    if (!a18)
    {
LABEL_3:
      v24 = a21;
      if (!a21)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v23 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  v24 = a21;
  if (!a21)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void sub_1182298(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v51 = a3;
  sub_F8ED58(*a1, a3, 0, *(a1 + 8), 0);
  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v13 = *(v6 + 9);
      v14 = *(sub_F69AE4(*(a1 + 16), a2) + 72);
      v16 = v13 == v14;
      v15 = HIDWORD(v14) & 0xFFFFFF;
      v16 = v16 && (HIDWORD(v13) & 0xFFFFFF) == v15;
      if (v16)
      {
        v17 = *(a1 + 24);
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        if (v18 < v19)
        {
          *v18 = a2;
          v8 = *v6;
          *(v18 + 24) = v6[1];
          *(v18 + 8) = v8;
          v9 = v6[2];
          v10 = v6[3];
          v11 = v6[4];
          *(v18 + 88) = *(v6 + 10);
          *(v18 + 72) = v11;
          *(v18 + 56) = v10;
          *(v18 + 40) = v9;
          v12 = v18 + 96;
        }

        else
        {
          v20 = *v17;
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v17) >> 5);
          v22 = v21 + 1;
          if (v21 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            goto LABEL_40;
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 5);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x155555555555555)
          {
            v24 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (v24 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_41:
            sub_1808();
          }

          v25 = 32 * ((v18 - *v17) >> 5);
          *v25 = a2;
          v26 = *v6;
          *(v25 + 24) = v6[1];
          *(v25 + 8) = v26;
          v27 = v6[2];
          v28 = v6[3];
          v29 = v6[4];
          *(v25 + 88) = *(v6 + 10);
          *(v25 + 72) = v29;
          *(v25 + 56) = v28;
          *(v25 + 40) = v27;
          v12 = 96 * v21 + 96;
          v30 = 96 * v21 - (v18 - v20);
          memcpy((v25 - (v18 - v20)), v20, v18 - v20);
          *v17 = v30;
          *(v17 + 8) = v12;
          *(v17 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        *(v17 + 8) = v12;
      }

      v6 = (v6 + 88);
    }

    while (v6 != v7);
  }

  v31 = *(a1 + 24);
  if (*v31 == *(v31 + 8))
  {
    ++**(a1 + 32);
    v32 = sub_F69AE4(*(a1 + 16), a2);
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (v33 >= v34)
    {
      v40 = *v31;
      v41 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v31) >> 5);
      v42 = v41 + 1;
      if (v41 + 1 > 0x2AAAAAAAAAAAAAALL)
      {
LABEL_40:
        sub_1794();
      }

      v43 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v40) >> 5);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0x155555555555555)
      {
        v44 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_41;
      }

      v45 = 32 * ((v33 - *v31) >> 5);
      *v45 = a2;
      v46 = *v32;
      *(v45 + 24) = *(v32 + 16);
      *(v45 + 8) = v46;
      v47 = *(v32 + 32);
      v48 = *(v32 + 48);
      v49 = *(v32 + 64);
      *(v45 + 88) = *(v32 + 80);
      *(v45 + 72) = v49;
      *(v45 + 56) = v48;
      *(v45 + 40) = v47;
      v39 = 96 * v41 + 96;
      v50 = (v45 - (v33 - v40));
      memcpy(v50, v40, v33 - v40);
      *v31 = v50;
      *(v31 + 8) = v39;
      *(v31 + 16) = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v33 = a2;
      v35 = *v32;
      *(v33 + 24) = *(v32 + 16);
      *(v33 + 8) = v35;
      v36 = *(v32 + 32);
      v37 = *(v32 + 48);
      v38 = *(v32 + 64);
      *(v33 + 88) = *(v32 + 80);
      *(v33 + 72) = v38;
      *(v33 + 56) = v37;
      *(v33 + 40) = v36;
      v39 = v33 + 96;
    }

    *(v31 + 8) = v39;
    *(*(*(a1 + 24) + 8) - 8) = v51 >> 2;
    *(*(*(a1 + 24) + 8) - 4) = *(*(*(a1 + 24) + 8) - 4) & 0xFE | v51 & 1;
  }
}

uint64_t sub_118261C(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  if (!sub_F69D08(a1))
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26[0] = a2;
  v26[1] = &v27;
  v26[2] = a1;
  v26[3] = &v30;
  v26[4] = &v33;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v4 = sub_F6F6F4(a1);
  sub_F92148(a2, *(v4 + 32), &__p);
  v5 = __p;
  v6 = v24;
  if (__p != v24)
  {
    do
    {
      sub_11828C0(v26, 0, *v5++);
    }

    while (v5 != v6);
  }

  for (i = v31; v30 != v31; i = v31)
  {
    v9 = *(i - 12);
    v8 = (i - 12);
    v10 = *(v8 + 40);
    v35 = *(v8 + 24);
    v36 = v10;
    v37 = *(v8 + 56);
    v11 = *(v8 + 10);
    v38 = *(v8 + 9);
    v34 = *(v8 + 8);
    v12 = *(v8 + 11);
    v31 = v8;
    v13 = sub_F6FB64(a1, v9);
    v14 = v35;
    v15 = v37;
    *(v13 + 32) = v36;
    *(v13 + 48) = v15;
    v16 = v38;
    *v13 = v34;
    *(v13 + 16) = v14;
    *(v13 + 64) = v16;
    *(v13 + 72) = v11;
    *(v13 + 80) = v12;
    v17 = v9 + 1;
    if (v9 + 1 >= sub_F69D08(a1))
    {
      break;
    }

    if (v30 != v31)
    {
      sub_F92148(a2, v11, &__p);
      if (v24 - __p == 8)
      {
        v31 = v30;
      }
    }

    v18 = HIDWORD(v11) & 0x40000000;
    v19 = v11 < 0 && v18 == 0;
    v20 = v19 ? 0x40000000 : 0;
    sub_11828C0(v26, v17, v11 | (((v12 >> 26) & 0x80000000 | HIDWORD(v11) & 0xFFFFFFF | (v11 >> 33) & 0x10000000 | (v18 >> 1) | v20) << 32));
  }

  sub_F70D2C(a1);
  v21 = v33;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v21;
}

void sub_1182860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    v23 = a18;
    if (!a18)
    {
LABEL_3:
      v24 = a21;
      if (!a21)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v23 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  v24 = a21;
  if (!a21)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void sub_11828C0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_F92948(*a1, a3, 0, *(a1 + 8));
  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v13 = *(v6 + 9);
      if (v13 == *(sub_F6FB64(*(a1 + 16), a2) + 72))
      {
        v14 = *(a1 + 24);
        v15 = *(v14 + 8);
        v16 = *(v14 + 16);
        if (v15 < v16)
        {
          *v15 = a2;
          v8 = *v6;
          *(v15 + 24) = v6[1];
          *(v15 + 8) = v8;
          v9 = v6[2];
          v10 = v6[3];
          v11 = v6[4];
          *(v15 + 88) = *(v6 + 10);
          *(v15 + 72) = v11;
          *(v15 + 56) = v10;
          *(v15 + 40) = v9;
          v12 = v15 + 96;
        }

        else
        {
          v17 = *v14;
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v14) >> 5);
          v19 = v18 + 1;
          if (v18 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            goto LABEL_36;
          }

          v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x155555555555555)
          {
            v21 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (v21 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            goto LABEL_37;
          }

          v22 = 32 * ((v15 - *v14) >> 5);
          *v22 = a2;
          v23 = *v6;
          *(v22 + 24) = v6[1];
          *(v22 + 8) = v23;
          v24 = v6[2];
          v25 = v6[3];
          v26 = v6[4];
          *(v22 + 88) = *(v6 + 10);
          *(v22 + 72) = v26;
          *(v22 + 56) = v25;
          *(v22 + 40) = v24;
          v12 = 96 * v18 + 96;
          v27 = 96 * v18 - (v15 - v17);
          memcpy((v22 - (v15 - v17)), v17, v15 - v17);
          *v14 = v27;
          *(v14 + 8) = v12;
          *(v14 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        *(v14 + 8) = v12;
      }

      v6 = (v6 + 88);
    }

    while (v6 != v7);
  }

  v28 = *(a1 + 24);
  if (*v28 == *(v28 + 8))
  {
    ++**(a1 + 32);
    v29 = sub_F6FB64(*(a1 + 16), a2);
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (v30 >= v31)
    {
      v37 = *v28;
      v38 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v28) >> 5);
      v39 = v38 + 1;
      if (v38 + 1 > 0x2AAAAAAAAAAAAAALL)
      {
LABEL_36:
        sub_1794();
      }

      v40 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v37) >> 5);
      if (2 * v40 > v39)
      {
        v39 = 2 * v40;
      }

      if (v40 >= 0x155555555555555)
      {
        v41 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v41 = v39;
      }

      if (v41)
      {
        if (v41 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_37:
        sub_1808();
      }

      v42 = 32 * ((v30 - *v28) >> 5);
      *v42 = a2;
      v43 = *v29;
      *(v42 + 24) = *(v29 + 16);
      *(v42 + 8) = v43;
      v44 = *(v29 + 32);
      v45 = *(v29 + 48);
      v46 = *(v29 + 64);
      *(v42 + 88) = *(v29 + 80);
      *(v42 + 72) = v46;
      *(v42 + 56) = v45;
      *(v42 + 40) = v44;
      v36 = 96 * v38 + 96;
      v47 = (v42 - (v30 - v37));
      memcpy(v47, v37, v30 - v37);
      *v28 = v47;
      *(v28 + 8) = v36;
      *(v28 + 16) = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v30 = a2;
      v32 = *v29;
      *(v30 + 24) = *(v29 + 16);
      *(v30 + 8) = v32;
      v33 = *(v29 + 32);
      v34 = *(v29 + 48);
      v35 = *(v29 + 64);
      *(v30 + 88) = *(v29 + 80);
      *(v30 + 72) = v35;
      *(v30 + 56) = v34;
      *(v30 + 40) = v33;
      v36 = v30 + 96;
    }

    *(v28 + 8) = v36;
    *(*(*(a1 + 24) + 8) - 8) = *(*(*(a1 + 24) + 8) - 8) & 0xFEFFFFFFFFFFFFFFLL | (a3 >> 63 << 56);
  }
}

uint64_t sub_1182C2C(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v6 += sub_1181990(v4, a2);
    v4 += 552;
  }

  while (v4 != v5);
  return v6;
}

uint64_t sub_1182CA0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v6 += sub_1181FE4(v4, a2);
    v4 += 552;
  }

  while (v4 != v5);
  return v6;
}

uint64_t sub_1182D14(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v6 += sub_118261C(v4, a2);
    v4 += 552;
  }

  while (v4 != v5);
  return v6;
}

void sub_1182D88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_3B1D8C(a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v8 = sub_45AC50(a1);
  for (i = sub_588D8(a1); v8 != i; v8 += 552)
  {
    v11 = sub_73EEC(v8);
    v12 = *(v11 + 104);
    v13 = *(v11 + 112);
    if (sub_2AC0D8(v7, v12, v13, a2))
    {
      v25[0] = 0;
      memset(v24, 0, sizeof(v24));
      *__p = 0u;
      *&v25[4] = 0xFFFFFFFF00000000;
      *&v25[16] = -1;
      *&v25[24] = 0;
      *&v25[28] = 0;
    }

    else
    {
      sub_2AB9C8(v7, v12, v13, __p);
    }

    v14 = a4[1];
    if (v14 >= a4[2])
    {
      v16 = sub_11839F0(a4, __p);
      v17 = v24[1];
      a4[1] = v16;
      if (v17)
      {
        v18 = v24[2];
        v19 = v17;
        if (v24[2] != v17)
        {
          do
          {
            if (*(v18 - 1) < 0)
            {
              operator delete(*(v18 - 3));
            }

            v18 -= 6;
          }

          while (v18 != v17);
          v19 = v24[1];
        }

        v24[2] = v17;
        operator delete(v19);
      }
    }

    else
    {
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *v14 = 0;
      *(v14 + 8) = 0;
      *v14 = *__p;
      *(v14 + 16) = v24[0];
      __p[0] = 0;
      __p[1] = 0;
      v24[0] = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 24) = *&v24[1];
      *(v14 + 40) = v24[3];
      memset(&v24[1], 0, 24);
      v15 = *&v25[14];
      *(v14 + 48) = *v25;
      *(v14 + 62) = v15;
      a4[1] = v14 + 80;
    }

    v20 = __p[0];
    if (__p[0])
    {
      v21 = __p[1];
      v10 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v22 = *(v21 - 3);
          if (v22)
          {
            *(v21 - 2) = v22;
            operator delete(v22);
          }

          v21 -= 48;
        }

        while (v21 != v20);
        v10 = __p[0];
      }

      __p[1] = v20;
      operator delete(v10);
    }
  }
}

void sub_1182F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_2ADCE0(&a9);
  sub_2AE16C(v9);
  _Unwind_Resume(a1);
}

BOOL sub_1182FCC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  v9[0] = a3;
  v9[1] = a4;
  result = sub_1183098(&v10, v9);
  if (result)
  {
    while (1)
    {
      v5 = v11;
      v6 = sub_F69DE0(*v10, v10[1]);
      v7 = *(sub_F69DE0(*v5, *(v5 + 8)) + 32);
      if (*(v6 + 32) != v7)
      {
        break;
      }

      result = 1;
      if (*(v6 + 36) != WORD2(v7) || *(v6 + 38) != BYTE6(v7))
      {
        return result;
      }

      v8 = v11;
      v10[1] = (v10[1] + 1);
      ++*(v8 + 8);
      if (!sub_1183098(&v10, v9))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_1183098(void ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  if (v4)
  {
    v5 = v2[1];
    v6 = v5 < sub_F69D2C(v4);
    v7 = *v3;
    if (*v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    return v6 ^ v9;
  }

  v6 = 0;
  v7 = *v3;
  if (!*v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(v3 + 8);
  v9 = v8 < sub_F69D2C(v7);
  if (v6 && v9)
  {
    v10 = sub_F69DE0(*v2, v2[1]);
    return v10 != sub_F69DE0(*v3, *(v3 + 8));
  }

  return v6 ^ v9;
}

BOOL sub_1183140(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  v9[0] = a3;
  v9[1] = a4;
  result = sub_118320C(&v10, v9);
  if (result)
  {
    while (1)
    {
      v5 = v11;
      v6 = sub_F6D17C(*v10, v10[1]);
      v7 = *(sub_F6D17C(*v5, *(v5 + 8)) + 32);
      if (*(v6 + 32) != v7)
      {
        break;
      }

      result = 1;
      if (*(v6 + 36) != WORD2(v7) || *(v6 + 38) != BYTE6(v7))
      {
        return result;
      }

      v8 = v11;
      v10[1] = (v10[1] + 1);
      ++*(v8 + 8);
      if (!sub_118320C(&v10, v9))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_118320C(void ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  if (v4)
  {
    v5 = v2[1];
    v6 = v5 < sub_F6D024(v4);
    v7 = *v3;
    if (*v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    return v6 ^ v9;
  }

  v6 = 0;
  v7 = *v3;
  if (!*v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(v3 + 8);
  v9 = v8 < sub_F6D024(v7);
  if (v6 && v9)
  {
    v10 = sub_F6D17C(*v2, v2[1]);
    return v10 != sub_F6D17C(*v3, *(v3 + 8));
  }

  return v6 ^ v9;
}

BOOL sub_11832B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v10 = a2;
  v8[0] = a3;
  v8[1] = a4;
  result = sub_118336C(&v9, v8);
  if (result)
  {
    while (1)
    {
      v5 = v10;
      v6 = sub_F6FE3C(*v9, v9[1]);
      if (*(v6 + 32) != *(sub_F6FE3C(*v5, *(v5 + 8)) + 32))
      {
        break;
      }

      v7 = v10;
      ++v9[1];
      ++*(v7 + 8);
      if (!sub_118336C(&v9, v8))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_118336C(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  if (v4)
  {
    v5 = v2[1];
    v6 = v5 < sub_F6FD88(v4);
    v7 = *v3;
    if (*v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    return v6 ^ v9;
  }

  v6 = 0;
  v7 = *v3;
  if (!*v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(v3 + 8);
  v9 = v8 < sub_F6FD88(v7);
  if (v6 && v9)
  {
    v10 = sub_F6FE3C(*v2, v2[1]);
    return v10 != sub_F6FE3C(*v3, *(v3 + 8));
  }

  return v6 ^ v9;
}

void sub_1183414(void *a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v4 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 4 >= 0x17)
  {
    operator new();
  }

  memset(&v12, 0, sizeof(v12));
  *(&v12.__r_.__value_.__s + 23) = v4 + 4;
  if (v4)
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    memmove(&v12, a1, v4);
  }

  strcpy(&v12 + v4, " -- ");
  if (*(a2 + 23) < 0)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      sub_325C(__p, *a2, v6);
      goto LABEL_17;
    }
  }

  else if (*(a2 + 23))
  {
    *__p = *a2;
    v11 = *(a2 + 16);
    goto LABEL_17;
  }

  HIBYTE(v11) = 1;
  LOWORD(__p[0]) = 35;
LABEL_17:
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v11 >= 0)
  {
    v8 = HIBYTE(v11);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v12, v7, v8);
  *a3 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_11835BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1183608(void *a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v4 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 4 >= 0x17)
  {
    operator new();
  }

  memset(&v12, 0, sizeof(v12));
  *(&v12.__r_.__value_.__s + 23) = v4 + 4;
  if (v4)
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    memmove(&v12, a1, v4);
  }

  strcpy(&v12 + v4, " -- ");
  if (*(a2 + 23) < 0)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      sub_325C(__p, *a2, v6);
      goto LABEL_17;
    }
  }

  else if (*(a2 + 23))
  {
    *__p = *a2;
    v11 = *(a2 + 16);
    goto LABEL_17;
  }

  HIBYTE(v11) = 1;
  LOWORD(__p[0]) = 35;
LABEL_17:
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v11 >= 0)
  {
    v8 = HIBYTE(v11);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v12, v7, v8);
  *a3 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_11837B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_11837FC(void *a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v4 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 4 >= 0x17)
  {
    operator new();
  }

  memset(&v12, 0, sizeof(v12));
  *(&v12.__r_.__value_.__s + 23) = v4 + 4;
  if (v4)
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    memmove(&v12, a1, v4);
  }

  strcpy(&v12 + v4, " -- ");
  if (*(a2 + 23) < 0)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      sub_325C(__p, *a2, v6);
      goto LABEL_17;
    }
  }

  else if (*(a2 + 23))
  {
    *__p = *a2;
    v11 = *(a2 + 16);
    goto LABEL_17;
  }

  HIBYTE(v11) = 1;
  LOWORD(__p[0]) = 35;
LABEL_17:
  if (v11 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v11 >= 0)
  {
    v8 = HIBYTE(v11);
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::string::append(&v12, v7, v8);
  *a3 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_11839A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_11839F0(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 80 * v2;
  __p = 0;
  v11 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  *(v6 + 62) = *(a2 + 62);
  *(v6 + 48) = v7;
  v12 = 80 * v2 + 80;
  v13 = 0;
  sub_2AEC6C(a1, &__p);
  v8 = *(a1 + 8);
  sub_2AEF14(&__p, v11);
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1183B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2AEEDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1183B4C(uint64_t a1, int32x2_t *a2)
{
  sub_446D50(*a1, a2);
  **(a1 + 8) += sub_5AAC4(a2);
  if (!sub_38EC(*(a1 + 16)))
  {
    v4 = *(a1 + 24);
    result = sub_456704(v4);
    if (result)
    {
      return result;
    }

LABEL_5:
    v6 = sub_3B8500(a2);
    v9 = sub_4566AC(v4);
    v10 = sub_4568F8(v6, &v9);
    v11 = v7;
    result = sub_456B70(&v10, v4);
    *v4 = result;
    v4[2] = v8;
    return result;
  }

  LODWORD(v10) = sub_5AAC4(a2);
  sub_4724(*(a1 + 16), &v10);
  v4 = *(a1 + 24);
  result = sub_456704(v4);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_1183C2C()
{
  byte_27C3D67 = 3;
  LODWORD(qword_27C3D50) = 5136193;
  byte_27C3D7F = 3;
  LODWORD(qword_27C3D68) = 5136194;
  byte_27C3D97 = 3;
  LODWORD(qword_27C3D80) = 5136195;
  byte_27C3DAF = 15;
  strcpy(&qword_27C3D98, "vehicle_mass_kg");
  byte_27C3DC7 = 21;
  strcpy(&xmmword_27C3DB0, "vehicle_cargo_mass_kg");
  byte_27C3DDF = 19;
  strcpy(&qword_27C3DC8, "vehicle_aux_power_w");
  byte_27C3DF7 = 15;
  strcpy(&qword_27C3DE0, "dcdc_efficiency");
  strcpy(&qword_27C3DF8, "drive_train_efficiency");
  HIBYTE(word_27C3E0E) = 22;
  operator new();
}

void sub_1183E08(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3E0E) < 0)
  {
    sub_21E90CC();
  }

  sub_21E90D8();
  _Unwind_Resume(a1);
}

void sub_1183E28(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v4 != v5)
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    sub_1184DE4(a1, v4, &__p);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    v4 += 6;
  }
}

void sub_1183EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1183EBC(uint64_t a1, __n128 *a2, unsigned int **a3, char a4)
{
  if (!sub_F6D144(a2))
  {
    __p = 0uLL;
    v13 = 0;
    sub_F6CB08(a2, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v8 = *(a1 + 32);
  if (v8 == 2)
  {
    v9 = *a1;
    HIBYTE(v11[2]) = 20;
    strcpy(v11, "arc_weighting_scheme");
    sub_5F8FC(v9, v11);
    sub_11877E0(a1, a2, __p.n128_u64);
    sub_F6CB08(a2, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (SHIBYTE(v11[2]) < 0)
    {
      operator delete(v11[0]);
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 == 1)
  {
    sub_11875B0(a1, a2, a3, &__p);
    sub_F6CB08(a2, &__p);
  }

  else
  {
    if (v8)
    {
      goto LABEL_15;
    }

    sub_1187380(a1, a2, a3, v11, &__p);
    sub_F6CB08(a2, &__p);
  }

  if (!__p.n128_u64[0])
  {
LABEL_15:
    if ((a4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __p.n128_u64[1] = __p.n128_u64[0];
  operator delete(__p.n128_u64[0]);
  if ((a4 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  __p.n128_u64[0] = sub_765A78(a2);
  v11[0] = sub_F6D168(a2);
  if (sub_11887E4(&__p, v11, a3))
  {
LABEL_17:
    sub_11886D8(a2, &__p);
    sub_F6CB68(a2, &__p);
    goto LABEL_21;
  }

  __p = 0uLL;
  v13 = 0;
  v10 = sub_F6CB08(a2, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  __p = 0uLL;
  v13 = 0;
  sub_1183EBC(a1, a2, &__p, 0, v10);
LABEL_21:
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_118418C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11841F0(uint64_t a1, __n128 *a2, unsigned int **a3, char a4)
{
  if (!sub_4D3738(a2))
  {
    __p = 0uLL;
    v13 = 0;
    sub_4D3678(a2, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }
  }

  v8 = *(a1 + 32);
  if (v8 == 2)
  {
    v9 = *a1;
    HIBYTE(v11[2]) = 20;
    strcpy(v11, "arc_weighting_scheme");
    sub_5F8FC(v9, v11);
    sub_118A798(a1, a2, __p.n128_u64);
    sub_4D3678(a2, &__p);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    if (SHIBYTE(v11[2]) < 0)
    {
      operator delete(v11[0]);
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 == 1)
  {
    sub_118A568(a1, a2, a3, &__p);
    sub_4D3678(a2, &__p);
  }

  else
  {
    if (v8)
    {
      goto LABEL_15;
    }

    sub_118A338(a1, a2, a3, v11, &__p);
    sub_4D3678(a2, &__p);
  }

  if (!__p.n128_u64[0])
  {
LABEL_15:
    if ((a4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __p.n128_u64[1] = __p.n128_u64[0];
  operator delete(__p.n128_u64[0]);
  if ((a4 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_16:
  __p.n128_u64[0] = sub_5FC64(a2);
  v11[0] = sub_445EF4(a2);
  if (sub_11887E4(&__p, v11, a3))
  {
LABEL_17:
    sub_118B690(a2, &__p);
    sub_4D36D8(a2, &__p);
    goto LABEL_21;
  }

  __p = 0uLL;
  v13 = 0;
  v10 = sub_4D3678(a2, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  __p = 0uLL;
  v13 = 0;
  sub_11841F0(a1, a2, &__p, 0, v10);
LABEL_21:
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_11844C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1184524(uint64_t a1, __n128 *a2)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_11841F0(a1, a2, &__p, 1);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_118456C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1184588(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  sub_11845F0(a1, a2, &__p, &v3, a3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_11845D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_11845F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  sub_F6C0C8();
  v9 = 0;
  v10 = 0;
  v34[0] = v11;
  v34[1] = v12;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  while (1)
  {
    result = sub_F6D024(a2);
    if (v10 == result)
    {
      break;
    }

    sub_4D0560();
    v33[0] = v17;
    v33[1] = (v18 + v10);
    sub_118CD18(a1, a2, a3, v33, v34, v10, a4, &v29);
    v10 = v31;
    v19 = a5[2];
    if (v9 < v19)
    {
      v13 = v29;
      v14 = v30;
      v15 = v31;
      *(v9 + 48) = v32;
      *(v9 + 16) = v14;
      *(v9 + 32) = v15;
      *v9 = v13;
      v9 += 56;
      a5[1] = v9;
    }

    else
    {
      v20 = *a5;
      v21 = v9 - *a5;
      v22 = 0x6DB6DB6DB6DB6DB7 * (v21 >> 3) + 1;
      if (v22 > 0x492492492492492)
      {
        sub_1794();
      }

      v23 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v20) >> 3);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x249249249249249)
      {
        v24 = 0x492492492492492;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 <= 0x492492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v25 = 8 * (v21 >> 3);
      v26 = v30;
      *v25 = v29;
      *(v25 + 16) = v26;
      *(v25 + 32) = v31;
      *(v25 + 48) = v32;
      v9 = v25 + 56;
      v27 = v25 - v21;
      memcpy((v25 - v21), v20, v21);
      *a5 = v27;
      a5[1] = v9;
      a5[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      a5[1] = v9;
    }
  }

  return result;
}

void sub_11847F4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}