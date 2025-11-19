void sub_1230F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1230FC8(uint64_t a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1231A2C(a3, 0);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 != v7)
  {
    do
    {
      v8 = *v6;
      v9 = a2[1];
      v42 = *a2;
      v43 = v9;
      v10 = v8[3];
      v40 = v8[2];
      v41 = v10;
      if (!sub_1231A5C(&v42, &v40))
      {
        goto LABEL_12;
      }

      v11 = a2[3];
      v38 = a2[2];
      v39 = v11;
      v12 = v8[5];
      v36 = v8[4];
      v37 = v12;
      if (!sub_1231A5C(&v38, &v36))
      {
        goto LABEL_12;
      }

      v14 = a2[4];
      v13 = a2[5];
      v15 = v8[7];
      v34 = v8[6];
      v35 = v15;
      if ((atomic_load_explicit(&qword_27C4368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4368))
      {
        sub_1231C70(&v44, "XX");
        qword_27C4360 = sub_1234374(&v44);
        __cxa_guard_release(&qword_27C4368);
      }

      v16 = qword_27C4360;
      if (v13)
      {
        v16 = v14;
      }

      v44 = v16;
      if (v35 != 1 || sub_123441C(&v44, &v34) || sub_1234494(&v34) == 0x500000000005A5ALL)
      {
        v18 = a3[1];
        v17 = a3[2];
        if (v18 >= v17)
        {
          v27 = (v18 - *a3) >> 3;
          if ((v27 + 1) >> 61)
          {
LABEL_39:
            sub_1794();
          }

          v28 = v17 - *a3;
          v29 = v28 >> 2;
          if (v28 >> 2 <= (v27 + 1))
          {
            v29 = v27 + 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            sub_122422C(a3, v30);
          }

          v26 = 8 * v27;
          *(8 * v27) = v8;
          v19 = 8 * v27 + 8;
          goto LABEL_32;
        }

        *v18 = v8;
        v19 = (v18 + 8);
      }

      else
      {
LABEL_12:
        v21 = a3[1];
        v20 = a3[2];
        if (v21 >= v20)
        {
          v22 = (v21 - *a3) >> 3;
          if ((v22 + 1) >> 61)
          {
            goto LABEL_39;
          }

          v23 = v20 - *a3;
          v24 = v23 >> 2;
          if (v23 >> 2 <= (v22 + 1))
          {
            v24 = v22 + 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            sub_122422C(a3, v25);
          }

          v26 = 8 * v22;
          *(8 * v22) = 0;
          v19 = 8 * v22 + 8;
LABEL_32:
          v31 = a3[1] - *a3;
          v32 = v26 - v31;
          memcpy((v26 - v31), *a3, v31);
          v33 = *a3;
          *a3 = v32;
          a3[1] = v19;
          a3[2] = 0;
          if (v33)
          {
            operator delete(v33);
          }

          goto LABEL_34;
        }

        *v21 = 0;
        v19 = (v21 + 8);
      }

LABEL_34:
      a3[1] = v19;
      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_123124C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27C4368);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1231290(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1231D00(a2, *a1, a1[1], (a1[1] - *a1) >> 3);
  v3 = *a2;
  v4 = a2[1];
  v5 = sub_1231CC8;
  sub_1231DB8(v3, v4, &v5);
}

void sub_12312F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_123130C(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1232CA0(a2, 0);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v8 = a2[1];
        v7 = a2[2];
        if (*(v6 + 8))
        {
          v9 = *v6;
          if (v8 >= v7)
          {
            v15 = (v8 - *a2) >> 3;
            if ((v15 + 1) >> 61)
            {
              sub_1794();
            }

            v16 = v7 - *a2;
            v17 = v16 >> 2;
            if (v16 >> 2 <= (v15 + 1))
            {
              v17 = v15 + 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              sub_122422C(a2, v18);
            }

            v24 = (8 * v15);
            *v24 = v9;
            v10 = 8 * v15 + 8;
            v25 = a2[1] - *a2;
            v26 = v24 - v25;
            memcpy(v24 - v25, *a2, v25);
            v23 = *a2;
            *a2 = v26;
            a2[1] = v10;
            a2[2] = 0;
            if (!v23)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          *v8 = v9;
          v10 = (v8 + 1);
          goto LABEL_27;
        }
      }

      else
      {
        v8 = a2[1];
        v7 = a2[2];
      }

      if (v8 >= v7)
      {
        v11 = (v8 - *a2) >> 3;
        if ((v11 + 1) >> 61)
        {
          sub_1794();
        }

        v12 = v7 - *a2;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_122422C(a2, v14);
        }

        v19 = sub_12331FC();
        v20 = *a2;
        v21 = a2[1] - *a2;
        v22 = (8 * v11 - v21);
        *(8 * v11) = v19;
        v10 = 8 * v11 + 8;
        memcpy(v22, v20, v21);
        v23 = *a2;
        *a2 = v22;
        a2[1] = v10;
        a2[2] = 0;
        if (!v23)
        {
          goto LABEL_27;
        }

LABEL_26:
        operator delete(v23);
        goto LABEL_27;
      }

      *v8 = sub_12331FC();
      v10 = (v8 + 1);
LABEL_27:
      a2[1] = v10;
      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_12314E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1231530(uint64_t a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t *a4@<X4>, const void **a5@<X8>)
{
  sub_1230FC8(a2, a4, &v52);
  sub_1231290(&v52, &v50);
  sub_123130C(&v50, &v48);
  v47 = *(a3 + 2);
  v46 = *a3;
  if ((v47 & 0x8000000000000000) == 0)
  {
    v8 = *(v52 + HIDWORD(v47));
    if (v8)
    {
      v9 = v50;
      if (v50 != v51)
      {
        while (*v9 != v8)
        {
          v9 += 8;
          if (v9 == v51)
          {
            v9 = v51;
            break;
          }
        }
      }

      v10 = (v9 - v50) >> 3;
    }

    else
    {
      LODWORD(v10) = -1;
    }

    HIDWORD(v47) = v10;
  }

  v11 = *(a1 + 8);
  v54 = v48;
  v55 = v49;
  v56 = 2;
  v57 = (v49 - v48) >> 3;
  (*(*v11 + 72))(&__p);
  v12 = __p;
  v13 = v44;
  if (__p == v44)
  {
    v14 = v48;
    v13 = __p;
    if (v49 != v48)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (*sub_45AC50(v14 + v15) == 6581877)
        {
          v17 = v16 | 0x100000000;
          v18 = v44;
          if (v44 >= v45)
          {
            v20 = (v44 - __p) >> 3;
            if ((v20 + 1) >> 61)
            {
              sub_1794();
            }

            v21 = (v45 - __p) >> 2;
            if (v21 <= v20 + 1)
            {
              v21 = v20 + 1;
            }

            if (v45 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v21;
            }

            if (v22)
            {
              sub_1232E30(&__p, v22);
            }

            v23 = (8 * v20);
            *v23 = v17;
            v19 = 8 * v20 + 8;
            v24 = v23 - (v44 - __p);
            memcpy(v24, __p, v44 - __p);
            v25 = __p;
            __p = v24;
            v44 = v19;
            v45 = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v44 = v17;
            v19 = (v18 + 1);
          }

          v44 = v19;
        }

        ++v16;
        v14 = v48;
        v15 += 8;
      }

      while (v16 < (v49 - v48) >> 3);
      v12 = __p;
      v13 = v44;
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_123196C(a5, (v13 - v12) >> 3);
  v26 = __p;
  v27 = v44;
  if (__p != v44)
  {
    do
    {
      v28 = *v26;
      if ((v28 & 0x80000000) != 0)
      {
        v31 = *v26;
      }

      else
      {
        if (v52 == v53)
        {
          v30 = v52;
        }

        else
        {
          v29 = *(v50 + v28);
          v30 = v52;
          while (*v30 != v29)
          {
            v30 += 8;
            if (v30 == v53)
            {
              v30 = v53;
              break;
            }
          }
        }

        v31 = ((v30 - v52) >> 3) | (v26[1] << 32);
      }

      v33 = a5[1];
      v32 = a5[2];
      if (v33 >= v32)
      {
        v35 = (v33 - *a5) >> 3;
        if ((v35 + 1) >> 61)
        {
          sub_1794();
        }

        v36 = v32 - *a5;
        v37 = v36 >> 2;
        if (v36 >> 2 <= (v35 + 1))
        {
          v37 = v35 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          sub_1232E30(a5, v38);
        }

        v39 = (8 * v35);
        *v39 = v31;
        v34 = 8 * v35 + 8;
        v40 = a5[1] - *a5;
        v41 = v39 - v40;
        memcpy(v39 - v40, *a5, v40);
        v42 = *a5;
        *a5 = v41;
        a5[1] = v34;
        a5[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v33 = v31;
        v34 = (v33 + 1);
      }

      a5[1] = v34;
      v26 += 2;
    }

    while (v26 != v27);
    v26 = __p;
  }

  if (v26)
  {
    v44 = v26;
    operator delete(v26);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_12318E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  if (*v23)
  {
    *(v23 + 8) = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_123196C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1232E30(result, a2);
    }

    sub_1794();
  }

  return result;
}

void sub_1231A2C(void *a1, unint64_t a2)
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
    sub_1231B5C(a1, a2 - v2);
  }
}

BOOL sub_1231A5C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C4358, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v5 = __cxa_guard_acquire(&qword_27C4358);
    a1 = v6;
    if (v5)
    {
      sub_1231C70(&v7, "XX");
      qword_27C4350 = sub_12340BC(&v7);
      __cxa_guard_release(&qword_27C4358);
      a1 = v6;
    }
  }

  if (*(a1 + 8))
  {
    v3 = a1;
  }

  else
  {
    v3 = &qword_27C4350;
  }

  v7 = *v3;
  return *(a2 + 8) != 1 || sub_12340B0(&v7, a2) || *sub_45AC50(a2) == 0x500000000005A5ALL;
}

void sub_1231B5C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1794();
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
      sub_122422C(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *sub_1231C70(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  sub_12244D0(&v7, __s, v5);
  *a1 = v7;
  return a1;
}

uint64_t sub_1231D00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1231D7C(result, a4);
  }

  return result;
}

void sub_1231D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1231D7C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_122422C(a1, a2);
  }

  sub_1794();
}

void sub_1231DB8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(8 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_1231EB4(a1, a2, a3, v6, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_1231E9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1231EB4(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v10 = *v8;
        *v8 = *v9;
        *v9 = v10;
      }
    }

    else if (a4 > 128)
    {
      v14 = a4 >> 1;
      v15 = &result[a4 >> 1];
      v16 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_123214C(result, v15, a3, v16, a5);
        sub_123214C(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v14]);

        return sub_12322AC(a5, &a5[v14], &a5[v14], &a5[a4], v8, a3);
      }

      else
      {
        sub_1231EB4(result, v15, a3, v16, a5, a6);
        sub_1231EB4(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        return sub_123236C(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      return sub_1232078(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1232078(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v14[0] = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 8) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = (*a3)(v14, v6 + v12);
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_123214C(uint64_t *result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        *a5 = *v10;
        v11 = *v9;
      }

      else
      {
        *a5 = *v9;
        v11 = *v10;
      }

      a5[1] = v11;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      sub_1231EB4(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_1231EB4(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return sub_1232744(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return sub_1232658(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t sub_12322AC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(a3, v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8;
      }

      v11 = (v11 + v13);
      if (result)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

uint64_t sub_123236C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    v14 = result;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v15 = 0;
      v16 = -a5;
      while (1)
      {
        v17 = &v14[v15 / 8];
        result = (*a4)(a2, &v14[v15 / 8]);
        if (result)
        {
          break;
        }

        v15 += 8;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v19 = -v16;
      v37 = a8;
      v36 = v10;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          v35 = v14[v15 / 8];
          v14[v15 / 8] = *a2;
          *a2 = v35;
          return result;
        }

        v24 = v19 / 2;
        v22 = &v14[v19 / 2 + v15 / 8];
        v21 = a2;
        if (a2 != a3)
        {
          v38 = v19 / 2;
          v42 = *a4;
          v44 = a4;
          v25 = a3 - a2;
          v21 = a2;
          do
          {
            v26 = &v21[8 * (v25 >> 1)];
            v27 = v42(v26, v22);
            if (v27)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v27)
            {
              v21 = v26 + 8;
            }
          }

          while (v25);
          a4 = v44;
          v24 = v38;
        }

        v20 = (v21 - a2) >> 3;
      }

      else
      {
        v20 = v10 / 2;
        v21 = &a2[v10 / 2];
        v22 = a2;
        if (a2 - v14 != v15)
        {
          v41 = v20;
          v43 = a4;
          v23 = (a2 - v14 - v15) >> 3;
          v22 = &v14[v15 / 8];
          do
          {
            if ((*v43)(v21, &v22[8 * (v23 >> 1)]))
            {
              v23 >>= 1;
            }

            else
            {
              v22 += 8 * (v23 >> 1) + 8;
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v20 = v41;
          a4 = v43;
        }

        v24 = (v22 - v14 - v15) >> 3;
      }

      *v39 = v24;
      a5 = -(v24 + v16);
      v45 = v36 - v20;
      v28 = a2;
      v29 = v20;
      v30 = sub_1232988(v22, v28, v21);
      v31 = v29;
      v32 = v30;
      if (*v39 + v31 >= v36 - (*v39 + v31) - v16)
      {
        v34 = v31;
        result = sub_123236C(v30, v21, a3, a4, a5, v45, a7, v37);
        v21 = v22;
        a8 = v37;
        a5 = *v39;
        a3 = v32;
      }

      else
      {
        v33 = v22;
        a8 = v37;
        result = sub_123236C(&v14[v15 / 8], v33, v30, a4, *v39, v31, a7, v37);
        v17 = v32;
        v34 = v45;
      }

      v14 = v17;
      a2 = v21;
      v10 = v34;
      if (!v34)
      {
        return result;
      }
    }

    return sub_1232804(v14, a2, a3, a4, a5, v10, a7);
  }

  return result;
}

uint64_t *sub_1232658(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9++;
        result = (*a4)(v6, v10);
        v11 = v9;
        if (result)
        {
          v10[1] = *v10;
          v11 = a3;
          if (v10 != a3)
          {
            v12 = v8;
            while (1)
            {
              v11 = (a3 + v12);
              result = (*a4)(v6, (a3 + v12 - 8));
              if (!result)
              {
                break;
              }

              *(a3 + v12) = *(a3 + v12 - 8);
              v12 -= 8;
              if (!v12)
              {
                v11 = a3;
                break;
              }
            }
          }
        }

        v13 = *v6++;
        *v11 = v13;
        v8 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t sub_1232744(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = (*a6)(a3, v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

uint64_t *sub_1232804(uint64_t *__dst, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, char *), uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v15 = -__src;
      v16 = __src;
      v17 = __dst;
      do
      {
        v18 = *v17++;
        *v16 = v18;
        v16 += 8;
        v15 -= 8;
      }

      while (v17 != a2);
      while (v10 != v9)
      {
        __dst = (*a4)(v10, v7);
        if (__dst)
        {
          v19 = v10;
        }

        else
        {
          v19 = v7;
        }

        if (__dst)
        {
          v20 = 8;
        }

        else
        {
          v20 = 0;
        }

        v10 = (v10 + v20);
        if (__dst)
        {
          v21 = 0;
        }

        else
        {
          v21 = 8;
        }

        v7 += v21;
        *v11++ = *v19;
        if (v16 == v7)
        {
          return __dst;
        }
      }

      return memmove(v11, v7, -&v7[v15]);
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    do
    {
      *(__src + v12 * 8) = a2[v12];
      ++v12;
    }

    while (&a2[v12] != a3);
    v13 = (__src + v12 * 8);
    while (v10 != v11)
    {
      __dst = (*a4)(v13 - 1, v10 - 8);
      if (__dst)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      if (__dst)
      {
        --v10;
      }

      else
      {
        v13 -= 8;
      }

      *--v9 = *(v14 - 1);
      if (v13 == v7)
      {
        return __dst;
      }
    }

    if (v13 != v7)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v23 = *(v13 - 1);
        v13 -= 8;
        v9[v22--] = v23;
      }

      while (v13 != v7);
    }
  }

  return __dst;
}

char *sub_1232988(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_1232A4C(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_1232A4C(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t sub_1232B18(void *a1)
{
  if ((atomic_load_explicit(&qword_27C4378, memory_order_acquire) & 1) == 0)
  {
    v12 = a1;
    v13 = __cxa_guard_acquire(&qword_27C4378);
    a1 = v12;
    if (v13)
    {
      sub_1231C70(&v16, "ZZ");
      qword_27C4370 = sub_12340BC(&v16);
      __cxa_guard_release(&qword_27C4378);
      a1 = v12;
    }
  }

  if ((atomic_load_explicit(&qword_27C4388, memory_order_acquire) & 1) == 0)
  {
    v14 = a1;
    v15 = __cxa_guard_acquire(&qword_27C4388);
    a1 = v14;
    if (v15)
    {
      sub_1231C70(&v16, "ZZ");
      qword_27C4380 = sub_1234374(&v16);
      __cxa_guard_release(&qword_27C4388);
      a1 = v14;
    }
  }

  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v7 = *(v1 + 48);
    v6 = *(v1 + 56);
    v16 = v7;
    v17 = v6;
    v8 = v3 & (qword_27C4370 != v2);
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (qword_27C4370 == v4)
    {
      v9 = v8;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v6)
    {
      v10 += sub_1234458(&v16, &qword_27C4380);
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

void sub_1232CA0(void *a1, unint64_t a2)
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
    sub_1232CD0(a1, a2 - v2);
  }
}

void sub_1232CD0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      v12 = &v5[a2];
      do
      {
        *v5++ = sub_12331FC();
        v11 -= 8;
      }

      while (v11);
      v5 = v12;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1794();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      sub_122422C(a1, v10);
    }

    v13 = 8 * v8;
    v14 = (8 * v8);
    v15 = 8 * a2;
    v16 = 8 * v8 + 8 * a2;
    do
    {
      *v14++ = sub_12331FC();
      v15 -= 8;
    }

    while (v15);
    v17 = *(a1 + 8) - *a1;
    v18 = v13 - v17;
    memcpy((v13 - v17), *a1, v17);
    v19 = *a1;
    *a1 = v18;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

void sub_1232E30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1232F28(uint64_t *a1, int a2)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2734C08))
    {
      nullsub_1(&unk_2734C00);
      __cxa_guard_release(&qword_2734C08);
    }
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      return sub_122F62C(&unk_2734C00, a1);
    }

    if (a2 == 1)
    {
      return sub_122F6E0(&unk_2734C00, a1);
    }

LABEL_9:
    LODWORD(v5.__locale_) = 2;
    v6 = off_26C7490;
    v7 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/locale.cpp";
    v8 = "createFromString";
    v9 = 137;
    sub_D7B0(&v10);
    std::ostream::operator<<();
    sub_4A5C(v11, " localeString: ", 16);
    std::ostream::write();
    sub_4A5C(v11, "", 1);
    sub_12229BC(&v5);
    return sub_122F62C(&unk_2734C00, a1);
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return sub_122F9B0(&unk_2734C00, a1);
    }

    goto LABEL_9;
  }

  return sub_122F8FC(&unk_2734C00, a1);
}

uint64_t sub_12330DC(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1(&unk_2734C00);
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122F794(&unk_2734C00, a1);
}

uint64_t sub_123316C(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1(&unk_2734C00);
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122F848(&unk_2734C00, a1);
}

uint64_t sub_12331FC()
{
  if ((atomic_load_explicit(&qword_27C4398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4398))
  {
    v1[0] = xmmword_2322220;
    memset(&v1[1], 0, 32);
    qword_27C4390 = sub_1232F28(v1, 0);
    __cxa_guard_release(&qword_27C4398);
  }

  return qword_27C4390;
}

uint64_t sub_12332C0(uint64_t a1)
{
  result = *(a1 + 140);
  if (result == 144)
  {
    result = sub_1233300(a1);
    *(a1 + 140) = result;
  }

  return result;
}

uint64_t sub_1233300(int *a1)
{
  v2 = *(a1 + 1);
  v3 = *a1;
  v4 = a1[1];
  v5 = &dword_22B4410;
  v6 = 3624;
  while (1)
  {
    v7 = *(v5 - 4);
    if (v7 == 50331648 || v7 == v3)
    {
      v9 = *(v5 - 1);
      if (v9 == 0x700000000000000 || v9 == v2)
      {
        v11 = *(v5 - 3);
        v12 = v11 == 50331648 || v11 == v4;
        if (v12 && (v9 != 0x700000000000000 || v11 != 50331648 || *v5 == 1))
        {
          result = *v5;
          if (result != 11 && result != 121 && result != 93)
          {
            break;
          }
        }
      }
    }

    v5 += 6;
    v6 -= 24;
    if (!v6)
    {
      if ((atomic_load_explicit(&qword_27C43A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C43A8))
      {
        sub_12338F0();
      }

      v15 = a1;
      v19[0] = &v15;
      v19[1] = v16;
      v20 = 2;
      v21 = 1;
      v16[0] = dword_27684F8;
      v16[1] = &unk_2768738;
      v17 = 3;
      v18 = 144;
      v14 = (*(*qword_27C43A0 + 40))(qword_27C43A0, v19, v16);
      if (v14 > 0x8F)
      {
        return 0;
      }

      else
      {
        return dword_27684F8[v14];
      }
    }
  }

  return result;
}

uint64_t sub_1233494(uint64_t a1)
{
  result = *(a1 + 144);
  if (result == 63)
  {
    result = sub_12334D4(a1);
    *(a1 + 144) = result;
  }

  return result;
}

uint64_t sub_12334D4(uint64_t a1)
{
  v2 = &qword_22B3950;
  v3 = 1512;
  do
  {
    v4 = *(v2 - 2);
    if (v4 == 50331648 || v4 == *a1)
    {
      v6 = *v2;
      if (*v2 == 0x700000000000000 || v6 == *(a1 + 8))
      {
        v8 = v6 == 0x700000000000000;
        v9 = *(v2 - 1);
        if (v9 != 50331648)
        {
          v8 = v9 != *(a1 + 4);
        }

        if (!v8)
        {
          return *(v2 + 2);
        }
      }
    }

    v2 += 3;
    v3 -= 24;
  }

  while (v3);
  if ((atomic_load_explicit(&qword_27C43B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C43B8))
  {
    sub_12338F0();
  }

  v12 = a1;
  v16[0] = &v12;
  v16[1] = v13;
  v17 = 2;
  v18 = 1;
  v13[0] = dword_2322308;
  v13[1] = "N4maps4lang12VERSION_3_126LoggerE";
  v14 = 4;
  v15 = 63;
  v10 = (*(*qword_27C43B0 + 40))(qword_27C43B0, v16, v13);
  if (v10 > 0x3E)
  {
    return 0;
  }

  else
  {
    return dword_2322308[v10 & 0x3F];
  }
}

uint64_t sub_123364C(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    v3 = sub_1226EA4();
    result = sub_122FBB0(v3, a1);
    *(a1 + 152) = result;
  }

  return result;
}

uint64_t sub_1233688(_BYTE *a1)
{
  if (a1[168])
  {
    return a1[168] == 2;
  }

  v3 = sub_12336DC();
  result = sub_122FDCC(v3, a1);
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  a1[168] = v4;
  return result;
}

void *sub_12336DC()
{
  if ((atomic_load_explicit(&qword_27684F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27684F0))
  {
    nullsub_1(&unk_27684E8);
    __cxa_guard_release(&qword_27684F0);
  }

  return &unk_27684E8;
}

uint64_t sub_1233754(uint64_t a1)
{
  if (*(a1 + 169))
  {
    return *(a1 + 169) == 2;
  }

  v3 = sub_12336DC();
  result = sub_122FE4C(v3, (a1 + 8));
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 169) = v4;
  return result;
}

uint64_t sub_12337A8(uint64_t a1)
{
  if (*(a1 + 170))
  {
    return *(a1 + 170) == 2;
  }

  v3 = sub_12336DC();
  result = sub_122FECC(v3, (a1 + 4));
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 170) = v4;
  return result;
}

BOOL sub_12337FC(uint64_t a1)
{
  if (*(a1 + 171))
  {
    return *(a1 + 171) == 2;
  }

  v5 = v1;
  v6 = v2;
  sub_1233A3C(a1, (a1 + 171), &v4);
  return v4;
}

uint64_t sub_1233840(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 172) == 2;
  }

  v5 = v1;
  v6 = v2;
  sub_1233B00(a1, (a1 + 172), &v4);
  return v4;
}

uint64_t sub_1233884(uint64_t a1)
{
  if (*(a1 + 173))
  {
    v1 = *(a1 + 173) == 2;
  }

  else
  {
    v4 = 1;
    if (*a1 == 6581877)
    {
      v1 = 0;
    }

    else
    {
      v1 = sub_1233840(a1);
      if (v1)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    *(a1 + 173) = v4;
  }

  return v1 & 1;
}

void sub_12339E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  v16 = *(v14 - 24);
  if (v16)
  {
    sub_1220A18(v16);
  }

  if (a14)
  {
    sub_1220A18(a14);
  }

  if (a12)
  {
    sub_1220A18(a12);
  }

  if (a10)
  {
    sub_1220A18(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1233A3C(uint64_t a1, char *a2, BOOL *a3)
{
  result = sub_12337A8(a1);
  if (result)
  {
    v7 = 2;
    v8 = 1;
  }

  else
  {
    v9 = *(a1 + 4);
    v10 = word_230F54C[v9 & 0x7F];
    v11 = word_230F54C[(v9 + 1) & 0x7F];
    if (v10 == v11)
    {
      v8 = 0;
LABEL_8:
      v7 = 1;
    }

    else
    {
      v12 = v11;
      v13 = (&unk_230F4C0 + 4 * v10);
      v14 = *(a1 + 4);
      v15 = 4 * v12 - 4 * v10;
      while (1)
      {
        v8 = v14 == *v13;
        if (v14 == *v13)
        {
          break;
        }

        ++v13;
        v15 -= 4;
        if (!v15)
        {
          goto LABEL_8;
        }
      }

      v7 = 2;
    }
  }

  *a3 = v8;
  *a2 = v7;
  return result;
}

BOOL sub_1233B00(uint64_t a1, char *a2, _BYTE *a3)
{
  v6 = sub_1233688(a1);
  if (*(a1 + 8) == 0x700000000000000)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1233754(a1);
  }

  result = 1;
  if (*(a1 + 4) != 50331648)
  {
    result = sub_12337FC(a1);
  }

  *a3 = v6 & v7 & result;
  if (v6 & v7 & result)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1233B9C(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_2768740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768740))
  {
    nullsub_1(&unk_2768738);
    __cxa_guard_release(&qword_2768740);
  }

  v4 = sub_122F2A8(&unk_2768738, a2);
  v5 = *v4;
  *a1 = *v4;
  if (v5 != 50331648 && !*(a1 + 8))
  {
    v7 = (*&v5 & 0xFFFFFFLL | ((HIBYTE(v5) + 253) << 56)) + 0x700000000000000;
    sub_1233C7C(a1, &v7);
  }

  return a1;
}

uint64_t sub_1233C7C(uint64_t a1, unsigned __int8 *a2)
{
  if ((atomic_load_explicit(&qword_2768750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768750))
  {
    nullsub_1(&unk_2768748);
    __cxa_guard_release(&qword_2768750);
  }

  v4 = sub_1230980(&unk_2768748, a2);
  *(a1 + 8) = v4;
  if (v4 != &unk_26C74F0 && *a1 == 50331648)
  {
    v5 = 7 - HIBYTE(*v4);
    if (v5 >= 3)
    {
      LODWORD(v5) = 3;
    }

    v7 = (*v4 & 0xFFFFFF | 0x3000000) - (v5 << 24);
    sub_1233B9C(a1, &v7);
  }

  return a1;
}

BOOL sub_1233D6C(_BYTE *a1)
{
  v1 = word_230EC20[*a1 & 0x7F];
  v2 = word_230EC20[(*a1 + 1) & 0x7F];
  if (v1 == v2)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  v6 = (&unk_23077D0 + 4 * v1);
  v7 = *a1;
  v8 = 4 * v5 - 4 * v4 - 4;
  do
  {
    v9 = *v6++;
    result = v7 == v9;
    v10 = v7 == v9 || v8 == 0;
    v8 -= 4;
  }

  while (!v10);
  return result;
}

BOOL sub_1233DDC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == 0x700000000000000)
  {
    return 1;
  }

  v3 = word_230F3C0[*a1 & 0x7F];
  v4 = word_230F3C0[(v1 + 1) & 0x7F];
  if (v3 == v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = &aAdlm[8 * v3];
  v7 = 8 * v4 - 8 * v5 - 8;
  do
  {
    v8 = *v6;
    v6 += 8;
    result = v1 == v8;
    v9 = v1 == v8 || v7 == 0;
    v7 -= 8;
  }

  while (!v9);
  return result;
}

BOOL sub_1233E5C(_DWORD *a1)
{
  if (*a1 == 50331648)
  {
    return 1;
  }

  v2 = sub_21F24F4(a1, 0);
  v3 = (&unk_22BC828 + 2 * (v2 & 0x7F));
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    return v2 == 16797249;
  }

  v6 = 5 * v4;
  v7 = 40 * v5 - 8 * v6;
  v8 = (&unk_26C0CE8 + 8 * v6 + 4);
  while (1)
  {
    v9 = *v8;
    v8 += 10;
    if (v9 == v2)
    {
      break;
    }

    v7 -= 40;
    if (!v7)
    {
      return v2 == 16797249;
    }
  }

  return 1;
}

uint64_t sub_1233F08(unsigned int *a1)
{
  result = *a1;
  if (!BYTE3(result))
  {
    v2 = word_230FCB4[result & 0x7F];
    v3 = word_230FCB4[(result + 1) & 0x7F];
    if (v2 != v3)
    {
      v4 = v2;
      v5 = (&unk_230F64C + 8 * v2 + 4);
      v6 = 8 * v3 - 8 * v4;
      while (result != *(v5 - 1))
      {
        v5 += 2;
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }

      return *v5;
    }
  }

  return result;
}

uint64_t sub_1233F7C(unsigned int *a1)
{
  result = *a1;
  if (!BYTE3(result))
  {
    v2 = word_231107C[result & 0x7F];
    v3 = word_231107C[(result + 1) & 0x7F];
    if (v2 != v3)
    {
      v4 = v2;
      v5 = (&unk_230FDB4 + 8 * v2 + 4);
      v6 = 8 * v3 - 8 * v4;
      while (result != *(v5 - 1))
      {
        v5 += 2;
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }

      return *v5;
    }
  }

  return result;
}

char *sub_1234008(int *a1)
{
  if ((atomic_load_explicit(&qword_2768740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768740))
  {
    nullsub_1(&unk_2768738);
    __cxa_guard_release(&qword_2768740);
  }

  return sub_122F328(&unk_2768738, a1);
}

void *sub_12340BC(unsigned __int8 *a1)
{
  if ((atomic_load_explicit(&qword_2768750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768750))
  {
    nullsub_1(&unk_2768748);
    __cxa_guard_release(&qword_2768750);
  }

  return sub_1230980(&unk_2768748, a1);
}

void *sub_12341B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a2 >= 2)
  {
    v7 = &std::cerr;
  }

  else
  {
    v7 = &std::cout;
  }

  v8 = sub_4A5C(v7, *a7, a7[1]);
  v10 = 10;
  return sub_4A5C(v8, &v10, 1);
}

uint64_t sub_1234220(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1(&unk_2734C00);
    __cxa_guard_release(&qword_2734C08);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = strlen(v2);
    if (v3 >= 0x1F)
    {
      v4 = 31;
    }

    else
    {
      v4 = v3;
    }

    sub_1224458(v2, v4, v6);
    return sub_122F62C(&unk_2734C00, v6);
  }

  else
  {
    sub_123432C(v6, "und");
    return sub_122F62C(&unk_2734C00, v6);
  }
}

uint64_t sub_123432C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x1F)
  {
    v5 = 31;
  }

  else
  {
    v5 = v4;
  }

  sub_1224458(__s, v5, a1);
  return a1;
}

void *sub_1234374(uint64_t *a1)
{
  if ((atomic_load_explicit(&qword_2734C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C18))
  {
    nullsub_1(&unk_2734C10);
    __cxa_guard_release(&qword_2734C18);
  }

  return sub_12306FC(&unk_2734C10, a1);
}

BOOL sub_123441C(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  return !(v2 | v3) && (*a1)[1] == (*a2)[1] || (v3 & v2) != 0;
}

BOOL sub_1234458(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  return (v2 | v3 || (*a1)[1] != (*a2)[1]) && (v3 & v2) == 0;
}

uint64_t sub_12344FC(uint64_t *a1, void *a2)
{
  v3 = *(*a1 + 48);
  v5 = **a1;
  v4 = *(*a1 + 16);
  v8[2] = *(*a1 + 32);
  v8[3] = v3;
  v8[0] = v5;
  v8[1] = v4;
  v6 = a2[1];
  *&v8[0] = *a2;
  BYTE8(v8[0]) = v6;
  result = sub_122F0F4(&unk_2768758, v8);
  *a1 = result;
  return result;
}

uint64_t sub_1234558(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 48);
  v5 = **a1;
  v4 = *(*a1 + 16);
  v10 = *(*a1 + 32);
  v11 = v3;
  v8 = v5;
  v9 = v4;
  v6 = a2[1];
  v12 = *a2;
  v13 = v6;
  if ((v6 & 1) != 0 && sub_1234098(&v12))
  {
    *&v9 = v12;
    BYTE8(v9) = v13;
  }

  else if (BYTE8(v9) == 1)
  {
    BYTE8(v9) = 0;
  }

  result = sub_122F0F4(&unk_2768758, &v8);
  *a1 = result;
  return result;
}

uint64_t sub_12345E4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 48);
  v5 = **a1;
  v4 = *(*a1 + 16);
  v9 = *(*a1 + 32);
  v10 = v3;
  v8[0] = v5;
  v8[1] = v4;
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if ((v6 & 1) != 0 && sub_1234098(&v11))
  {
    *&v9 = v11;
    BYTE8(v9) = v12;
  }

  else if (BYTE8(v9) == 1)
  {
    BYTE8(v9) = 0;
  }

  result = sub_122F0F4(&unk_2768758, v8);
  *a1 = result;
  return result;
}

uint64_t sub_1234670(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*a1 + 48);
  v5 = **a1;
  v4 = *(*a1 + 16);
  v8[2] = *(*a1 + 32);
  v9 = v3;
  v8[0] = v5;
  v8[1] = v4;
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if ((v6 & 1) != 0 && !sub_1234404(&v10))
  {
    *&v9 = v10;
    BYTE8(v9) = v11;
  }

  else if (BYTE8(v9) == 1)
  {
    BYTE8(v9) = 0;
  }

  result = sub_122F0F4(&unk_2768758, v8);
  *a1 = result;
  return result;
}

uint64_t sub_12346FC()
{
  result = qword_27C43C0;
  if (!qword_27C43C0)
  {
    v1.__m_.__sig = 850045863;
    memset(v1.__m_.__opaque, 0, sizeof(v1.__m_.__opaque));
    std::mutex::lock(&v1);
    if (!qword_27C43C0)
    {
      sub_1221F0C();
    }

    std::mutex::unlock(&v1);
    std::mutex::~mutex(&v1);
    return qword_27C43C0;
  }

  return result;
}

void sub_12347F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::mutex *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a13)
  {
    sub_1220A18(a13);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  std::mutex::unlock(&a14);
  std::mutex::~mutex(&a14);
  _Unwind_Resume(a1);
}

uint64_t (***sub_123483C(unsigned int **a1))()
{
  v2 = sub_3F80(*a1);
  result = 0;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v13 = sub_5AAC4(*a1);
        result = 0;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v28 = sub_4566A4(*a1);
            result = 0;
            if (v28 > 1)
            {
              if (v28 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CAFF0;
                v8 = &off_26CB070;
              }

              else
              {
                if (v28 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CB0F0;
                v8 = &off_26CB170;
              }
            }

            else if (v28)
            {
              if (v28 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CAEF0;
              v8 = &off_26CAF70;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CADF0;
              v8 = &off_26CAE70;
            }
          }

          else
          {
            if (v13 != 3)
            {
              return result;
            }

            v20 = sub_4566A4(*a1);
            result = 0;
            if (v20 > 1)
            {
              if (v20 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CB3F0;
                v8 = &off_26CB470;
              }

              else
              {
                if (v20 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CB4F0;
                v8 = &off_26CB570;
              }
            }

            else if (v20)
            {
              if (v20 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CB2F0;
              v8 = &off_26CB370;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CB1F0;
              v8 = &off_26CB270;
            }
          }
        }

        else if (v13)
        {
          if (v13 != 1)
          {
            return result;
          }

          v14 = sub_4566A4(*a1);
          result = 0;
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CABF0;
              v8 = &off_26CAC70;
            }

            else
            {
              if (v14 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CACF0;
              v8 = &off_26CAD70;
            }
          }

          else if (v14)
          {
            if (v14 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CAAF0;
            v8 = &off_26CAB70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CA9F0;
            v8 = &off_26CAA70;
          }
        }

        else
        {
          v26 = sub_4566A4(*a1);
          result = 0;
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CA7F0;
              v8 = &off_26CA870;
            }

            else
            {
              if (v26 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CA8F0;
              v8 = &off_26CA970;
            }
          }

          else if (v26)
          {
            if (v26 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CA6F0;
            v8 = &off_26CA770;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CA5F0;
            v8 = &off_26CA670;
          }
        }

        break;
      case 4:
        v17 = sub_5AAC4(*a1);
        result = 0;
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v36 = sub_4566A4(*a1);
            result = 0;
            if (v36 > 1)
            {
              if (v36 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CBFF0;
                v8 = &off_26CC070;
              }

              else
              {
                if (v36 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CC0F0;
                v8 = &off_26CC170;
              }
            }

            else if (v36)
            {
              if (v36 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CBEF0;
              v8 = &off_26CBF70;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CBDF0;
              v8 = &off_26CBE70;
            }
          }

          else
          {
            if (v17 != 3)
            {
              return result;
            }

            v24 = sub_4566A4(*a1);
            result = 0;
            if (v24 > 1)
            {
              if (v24 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CC3F0;
                v8 = &off_26CC470;
              }

              else
              {
                if (v24 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CC4F0;
                v8 = &off_26CC570;
              }
            }

            else if (v24)
            {
              if (v24 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CC2F0;
              v8 = &off_26CC370;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CC1F0;
              v8 = &off_26CC270;
            }
          }
        }

        else if (v17)
        {
          if (v17 != 1)
          {
            return result;
          }

          v18 = sub_4566A4(*a1);
          result = 0;
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CBBF0;
              v8 = &off_26CBC70;
            }

            else
            {
              if (v18 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CBCF0;
              v8 = &off_26CBD70;
            }
          }

          else if (v18)
          {
            if (v18 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CBAF0;
            v8 = &off_26CBB70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CB9F0;
            v8 = &off_26CBA70;
          }
        }

        else
        {
          v34 = sub_4566A4(*a1);
          result = 0;
          if (v34 > 1)
          {
            if (v34 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CB7F0;
              v8 = &off_26CB870;
            }

            else
            {
              if (v34 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CB8F0;
              v8 = &off_26CB970;
            }
          }

          else if (v34)
          {
            if (v34 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CB6F0;
            v8 = &off_26CB770;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CB5F0;
            v8 = &off_26CB670;
          }
        }

        break;
      case 5:
        v9 = sub_5AAC4(*a1);
        result = 0;
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v32 = sub_4566A4(*a1);
            result = 0;
            if (v32 > 1)
            {
              if (v32 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CCFF0;
                v8 = &off_26CD070;
              }

              else
              {
                if (v32 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CD0F0;
                v8 = &off_26CD170;
              }
            }

            else if (v32)
            {
              if (v32 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CCEF0;
              v8 = &off_26CCF70;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CCDF0;
              v8 = &off_26CCE70;
            }
          }

          else
          {
            if (v9 != 3)
            {
              return result;
            }

            v22 = sub_4566A4(*a1);
            result = 0;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v6 = sub_456D7C(*a1);
                v7 = &off_26CD3F0;
                v8 = &off_26CD470;
              }

              else
              {
                if (v22 != 3)
                {
                  return result;
                }

                v6 = sub_456D7C(*a1);
                v7 = &off_26CD4F0;
                v8 = &off_26CD570;
              }
            }

            else if (v22)
            {
              if (v22 != 1)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CD2F0;
              v8 = &off_26CD370;
            }

            else
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CD1F0;
              v8 = &off_26CD270;
            }
          }
        }

        else if (v9)
        {
          if (v9 != 1)
          {
            return result;
          }

          v10 = sub_4566A4(*a1);
          result = 0;
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CCBF0;
              v8 = &off_26CCC70;
            }

            else
            {
              if (v10 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CCCF0;
              v8 = &off_26CCD70;
            }
          }

          else if (v10)
          {
            if (v10 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CCAF0;
            v8 = &off_26CCB70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CC9F0;
            v8 = &off_26CCA70;
          }
        }

        else
        {
          v30 = sub_4566A4(*a1);
          result = 0;
          if (v30 > 1)
          {
            if (v30 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CC7F0;
              v8 = &off_26CC870;
            }

            else
            {
              if (v30 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CC8F0;
              v8 = &off_26CC970;
            }
          }

          else if (v30)
          {
            if (v30 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CC6F0;
            v8 = &off_26CC770;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CC5F0;
            v8 = &off_26CC670;
          }
        }

        break;
      default:
        return result;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v15 = sub_5AAC4(*a1);
      result = 0;
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v35 = sub_4566A4(*a1);
          result = 0;
          if (v35 > 1)
          {
            if (v35 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26C8FF0;
              v8 = &off_26C9070;
            }

            else
            {
              if (v35 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26C90F0;
              v8 = &off_26C9170;
            }
          }

          else if (v35)
          {
            if (v35 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C8EF0;
            v8 = &off_26C8F70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C8DF0;
            v8 = &off_26C8E70;
          }
        }

        else
        {
          if (v15 != 3)
          {
            return result;
          }

          v23 = sub_4566A4(*a1);
          result = 0;
          if (v23 > 1)
          {
            if (v23 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26C93F0;
              v8 = &off_26C9470;
            }

            else
            {
              if (v23 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26C94F0;
              v8 = &off_26C9570;
            }
          }

          else if (v23)
          {
            if (v23 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C92F0;
            v8 = &off_26C9370;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C91F0;
            v8 = &off_26C9270;
          }
        }
      }

      else if (v15)
      {
        if (v15 != 1)
        {
          return result;
        }

        v16 = sub_4566A4(*a1);
        result = 0;
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C8BF0;
            v8 = &off_26C8C70;
          }

          else
          {
            if (v16 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C8CF0;
            v8 = &off_26C8D70;
          }
        }

        else if (v16)
        {
          if (v16 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C8AF0;
          v8 = &off_26C8B70;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C89F0;
          v8 = &off_26C8A70;
        }
      }

      else
      {
        v33 = sub_4566A4(*a1);
        result = 0;
        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C87F0;
            v8 = &off_26C8870;
          }

          else
          {
            if (v33 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C88F0;
            v8 = &off_26C8970;
          }
        }

        else if (v33)
        {
          if (v33 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C86F0;
          v8 = &off_26C8770;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C85F0;
          v8 = &off_26C8670;
        }
      }
    }

    else
    {
      if (v2 != 2)
      {
        return result;
      }

      v4 = sub_5AAC4(*a1);
      result = 0;
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          v31 = sub_4566A4(*a1);
          result = 0;
          if (v31 > 1)
          {
            if (v31 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26C9FF0;
              v8 = &off_26CA070;
            }

            else
            {
              if (v31 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CA0F0;
              v8 = &off_26CA170;
            }
          }

          else if (v31)
          {
            if (v31 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C9EF0;
            v8 = &off_26C9F70;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C9DF0;
            v8 = &off_26C9E70;
          }
        }

        else
        {
          if (v4 != 3)
          {
            return result;
          }

          v21 = sub_4566A4(*a1);
          result = 0;
          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v6 = sub_456D7C(*a1);
              v7 = &off_26CA3F0;
              v8 = &off_26CA470;
            }

            else
            {
              if (v21 != 3)
              {
                return result;
              }

              v6 = sub_456D7C(*a1);
              v7 = &off_26CA4F0;
              v8 = &off_26CA570;
            }
          }

          else if (v21)
          {
            if (v21 != 1)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26CA2F0;
            v8 = &off_26CA370;
          }

          else
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26CA1F0;
            v8 = &off_26CA270;
          }
        }
      }

      else if (v4)
      {
        if (v4 != 1)
        {
          return result;
        }

        v5 = sub_4566A4(*a1);
        result = 0;
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C9BF0;
            v8 = &off_26C9C70;
          }

          else
          {
            if (v5 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C9CF0;
            v8 = &off_26C9D70;
          }
        }

        else if (v5)
        {
          if (v5 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C9AF0;
          v8 = &off_26C9B70;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C99F0;
          v8 = &off_26C9A70;
        }
      }

      else
      {
        v29 = sub_4566A4(*a1);
        result = 0;
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C97F0;
            v8 = &off_26C9870;
          }

          else
          {
            if (v29 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C98F0;
            v8 = &off_26C9970;
          }
        }

        else if (v29)
        {
          if (v29 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C96F0;
          v8 = &off_26C9770;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C95F0;
          v8 = &off_26C9670;
        }
      }
    }
  }

  else
  {
    v11 = sub_5AAC4(*a1);
    result = 0;
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v27 = sub_4566A4(*a1);
        result = 0;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C7FF0;
            v8 = &off_26C8070;
          }

          else
          {
            if (v27 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C80F0;
            v8 = &off_26C8170;
          }
        }

        else if (v27)
        {
          if (v27 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C7EF0;
          v8 = &off_26C7F70;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C7DF0;
          v8 = &off_26C7E70;
        }
      }

      else
      {
        if (v11 != 3)
        {
          return result;
        }

        v19 = sub_4566A4(*a1);
        result = 0;
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v6 = sub_456D7C(*a1);
            v7 = &off_26C83F0;
            v8 = &off_26C8470;
          }

          else
          {
            if (v19 != 3)
            {
              return result;
            }

            v6 = sub_456D7C(*a1);
            v7 = &off_26C84F0;
            v8 = &off_26C8570;
          }
        }

        else if (v19)
        {
          if (v19 != 1)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C82F0;
          v8 = &off_26C8370;
        }

        else
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C81F0;
          v8 = &off_26C8270;
        }
      }
    }

    else if (v11)
    {
      if (v11 != 1)
      {
        return result;
      }

      v12 = sub_4566A4(*a1);
      result = 0;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C7BF0;
          v8 = &off_26C7C70;
        }

        else
        {
          if (v12 != 3)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C7CF0;
          v8 = &off_26C7D70;
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        v6 = sub_456D7C(*a1);
        v7 = &off_26C7AF0;
        v8 = &off_26C7B70;
      }

      else
      {
        v6 = sub_456D7C(*a1);
        v7 = &off_26C79F0;
        v8 = &off_26C7A70;
      }
    }

    else
    {
      v25 = sub_4566A4(*a1);
      result = 0;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v6 = sub_456D7C(*a1);
          v7 = &off_26C7790;
          v8 = &off_26C7840;
        }

        else
        {
          if (v25 != 3)
          {
            return result;
          }

          v6 = sub_456D7C(*a1);
          v7 = &off_26C78C0;
          v8 = &off_26C7970;
        }
      }

      else if (v25)
      {
        if (v25 != 1)
        {
          return result;
        }

        v6 = sub_456D7C(*a1);
        v7 = &off_26C7660;
        v8 = &off_26C7710;
      }

      else
      {
        v6 = sub_456D7C(*a1);
        v7 = &off_26C7520;
        v8 = &off_26C75E0;
      }
    }
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

unint64_t sub_123596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2B80(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1235A8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2B80(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1235BB0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F2C04(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_1235CDC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_123A474(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1235DF4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_123A474(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

uint64_t sub_1235F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6[0] = a2;
  v6[1] = a3;
  sub_1239DB8(a3, 0);
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v7 = v6;
  return (off_26C75B0[v4])(&v7, a1);
}

void sub_1235F90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1235FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6[0] = a2;
  v6[1] = a3;
  sub_1239DB8(a3, 0);
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v7 = v6;
  return (off_26C75B0[v4])(&v7, a1);
}

void sub_1236024(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1236040(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v7 = a7;
  v9 = a4;
  v10 = a3;
  v12 = a1;
  if (a4)
  {
    v13 = *a4;
  }

  else
  {
    v13 = 50331648;
  }

  v14 = a2[1];
  v104 = *a2;
  v110 = v13;
  *a5 = a6;
  if (a6 > a7)
  {
LABEL_5:
    *v10 = 1;
    *a5 = 0;
    return v14;
  }

  v108 = v14;
  while (2)
  {
    switch(a6)
    {
      case 1:
        v17 = sub_1236C2C(v12, a2, &v110);
        goto LABEL_204;
      case 2:
        v17 = sub_1236DD0(v12, a2, &v110);
        goto LABEL_204;
      case 3:
        if (!v9)
        {
          goto LABEL_211;
        }

        v17 = sub_1236F58(v12, a2, v9[5]);
        goto LABEL_204;
      case 4:
        if (!v9)
        {
          goto LABEL_211;
        }

        v59 = *(v9 + 1);
        if (!v59 || !*(v59 + 40))
        {
          goto LABEL_211;
        }

        v60 = sub_1234220(v59);
        v17 = sub_1236FB0(v12, a2, v60);
        goto LABEL_204;
      case 5:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v38 = sub_1237028(&v110);
        if ((v9[4] & 2) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v40 = *v38;
        v100 = v38[1];
        if (*v38 == v100)
        {
          goto LABEL_205;
        }

        v41 = 0.0;
        v42 = v39;
        do
        {
          if ((v40[2] & 2) != 0)
          {
            v43 = *v40;
            v111 = *v40;
            v44 = *a1;
            v45 = a1[1];
            while (v44 != v45)
            {
              if (*(v44[1] + 8) == *(v43 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v46 = i[1];
                  if (*v46 != 16803962 || *(v46 + 8) != 0x3000000746E6148 || (v47 = v44[1], *v47 != 16803962) || *(v47 + 8) != 0x3000000736E6148)
                  {
                    if (*v43 == *v46 && *(v43 + 8) == *(v46 + 8))
                    {
                      v112 = i[1];
                      v48 = sub_12374D8(&v111);
                      if (v48 > v41)
                      {
                        v42 = i;
                        v41 = v48;
                        if (v48 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v42;
                v42 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v44 += 2;
            }
          }

          v40 += 3;
          i = v42;
        }

        while (v40 != v100);
        goto LABEL_206;
      case 6:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v72 = sub_1237028(&v110);
        if ((v9[4] & 4) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v73 = *v72;
        v102 = v72[1];
        if (*v72 == v102)
        {
          goto LABEL_205;
        }

        v74 = 0.0;
        v75 = v39;
        do
        {
          if ((v73[2] & 4) != 0)
          {
            v76 = *v73;
            v111 = *v73;
            v77 = *a1;
            v78 = a1[1];
            while (v77 != v78)
            {
              if (*(v77[1] + 8) == *(v76 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v79 = i[1];
                  if (*v79 != 16803962 || *(v79 + 8) != 0x3000000746E6148 || (v80 = v77[1], *v80 != 16803962) || *(v80 + 8) != 0x3000000736E6148)
                  {
                    if (*v76 == *v79 && *(v76 + 8) == *(v79 + 8))
                    {
                      v112 = i[1];
                      v81 = sub_12374D8(&v111);
                      if (v81 > v74)
                      {
                        v75 = i;
                        v74 = v81;
                        if (v81 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v75;
                v75 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v77 += 2;
            }
          }

          v73 += 3;
          i = v75;
        }

        while (v73 != v102);
        goto LABEL_206;
      case 7:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v90 = sub_1237028(&v110);
        if ((v9[4] & 8) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v91 = *v90;
        v103 = v90[1];
        if (*v90 == v103)
        {
          goto LABEL_205;
        }

        v92 = 0.0;
        v93 = v39;
        do
        {
          if ((v91[2] & 8) != 0)
          {
            v94 = *v91;
            v111 = *v91;
            v95 = *a1;
            v96 = a1[1];
            while (v95 != v96)
            {
              if (*(v95[1] + 8) == *(v94 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v97 = i[1];
                  if (*v97 != 16803962 || *(v97 + 8) != 0x3000000746E6148 || (v98 = v95[1], *v98 != 16803962) || *(v98 + 8) != 0x3000000736E6148)
                  {
                    if (*v94 == *v97 && *(v94 + 8) == *(v97 + 8))
                    {
                      v112 = i[1];
                      v99 = sub_12374D8(&v111);
                      if (v99 > v92)
                      {
                        v93 = i;
                        v92 = v99;
                        if (v99 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v93;
                v93 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v95 += 2;
            }
          }

          v91 += 3;
          i = v93;
        }

        while (v91 != v103);
LABEL_206:
        v10 = a3;
        v7 = a7;
        goto LABEL_208;
      case 8:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v61 = sub_1237028(&v110);
        if ((v9[4] & 1) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v62 = *v61;
        v101 = v61[1];
        if (*v61 == v101)
        {
LABEL_205:
          i = v39;
          goto LABEL_206;
        }

        v63 = 0.0;
        v64 = v39;
        while (2)
        {
          v65 = *(v62 + 4);
          if ((v65 & 0xF) == 0)
          {
            goto LABEL_133;
          }

          v66 = *v62;
          if (v65 == 1 && v62[1] <= 0.5)
          {
            goto LABEL_133;
          }

          v111 = *v62;
          v67 = *a1;
          v68 = a1[1];
LABEL_118:
          if (v67 == v68)
          {
LABEL_133:
            v62 += 3;
            i = v64;
            if (v62 == v101)
            {
              goto LABEL_206;
            }

            continue;
          }

          break;
        }

        if (*(v67[1] + 8) != *(v66 + 8))
        {
          goto LABEL_132;
        }

        for (i = *a2; ; i += 2)
        {
          if (i == v39)
          {
            i = v64;
            v64 = v39;
            if (i != v39)
            {
              goto LABEL_206;
            }

LABEL_132:
            v67 += 2;
            goto LABEL_118;
          }

          v69 = i[1];
          if (*v69 != 16803962 || *(v69 + 8) != 0x3000000746E6148 || (v70 = v67[1], *v70 != 16803962) || *(v70 + 8) != 0x3000000736E6148)
          {
            if (*v66 == *v69 && *(v66 + 8) == *(v69 + 8))
            {
              v112 = i[1];
              v71 = sub_12374D8(&v111);
              if (v71 > v63)
              {
                v64 = i;
                v63 = v71;
                if (v71 >= 1.0)
                {
                  break;
                }
              }
            }
          }

          v39 = a2[1];
        }

        goto LABEL_206;
      case 9:
        v17 = sub_12370B4(v12, a2);
        goto LABEL_204;
      case 10:
        v17 = sub_12372C0(v12, a2);
        goto LABEL_204;
      case 11:
        v17 = sub_1237370(v12, a2);
        goto LABEL_204;
      case 12:
        if (!v9)
        {
          goto LABEL_211;
        }

        v37 = v9[5];
        if ((v37 & 0x80000000) != 0 || v37 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_211;
        }

        i = &v104[2 * v37];
        goto LABEL_210;
      case 13:
        if (!v9)
        {
          goto LABEL_211;
        }

        v49 = *(v9 + 1);
        if (!v49 || !*(v49 + 40))
        {
          goto LABEL_211;
        }

        v50 = sub_1234220(v49);
        v17 = sub_1237414(a2, v50, &v110);
LABEL_204:
        i = v17;
        goto LABEL_210;
      case 14:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v82 = sub_1237028(&v110);
        if ((v9[4] & 2) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v83 = *v82;
        v84 = v82[1];
        if (*v82 == v84)
        {
          goto LABEL_207;
        }

        v85 = 0.0;
        v86 = v29;
        do
        {
          if ((v83[16] & 2) == 0)
          {
            goto LABEL_177;
          }

          v111 = *v83;
          for (i = *a2; i != v29; i += 2)
          {
            v87 = i[1];
            v88 = *v87;
            if (*v87 == 16803962)
            {
              if (*(v87 + 8) == 0x3000000746E6148 || **v83 != 16803962)
              {
                goto LABEL_174;
              }
            }

            else
            {
              if (**v83 != v88)
              {
                goto LABEL_174;
              }

              if (v88 == 16802154)
              {
                v85 = 100.0;
                v86 = i;
                break;
              }
            }

            v112 = i[1];
            v89 = sub_12374D8(&v111);
            if (v89 > v85)
            {
              v86 = i;
              v85 = v89;
              if (v89 >= 1.0)
              {
                goto LABEL_208;
              }
            }

LABEL_174:
            v29 = a2[1];
          }

          i = v86;
          v86 = v29;
          if (i != v29)
          {
            break;
          }

LABEL_177:
          v83 += 24;
          i = v86;
        }

        while (v83 != v84);
LABEL_208:
        v9 = a4;
LABEL_209:
        v14 = v108;
        v12 = a1;
LABEL_210:
        if (i == v14)
        {
LABEL_211:
          LOBYTE(a6) = *a5 + 1;
          *a5 = a6;
          if (v7 < a6)
          {
            goto LABEL_5;
          }

          continue;
        }

        *v10 = *a5 > 9u;
        return i;
      case 15:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v28 = sub_1237028(&v110);
        if ((v9[4] & 4) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v30 = *v28;
        v31 = v28[1];
        if (*v28 == v31)
        {
          goto LABEL_207;
        }

        v32 = 0.0;
        v33 = v29;
        while (2)
        {
          if ((v30[16] & 4) == 0)
          {
            goto LABEL_50;
          }

          v111 = *v30;
          i = *a2;
LABEL_38:
          if (i == v29)
          {
            goto LABEL_49;
          }

          v34 = i[1];
          v35 = *v34;
          if (*v34 == 16803962)
          {
            if (*(v34 + 8) == 0x3000000746E6148 || **v30 != 16803962)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (**v30 != v35)
            {
              goto LABEL_47;
            }

            if (v35 == 16802154)
            {
              v32 = 100.0;
              v33 = i;
LABEL_49:
              i = v33;
              v33 = v29;
              if (i != v29)
              {
                goto LABEL_208;
              }

LABEL_50:
              v30 += 24;
              i = v33;
              if (v30 == v31)
              {
                goto LABEL_208;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v36 = sub_12374D8(&v111);
        if (v36 > v32)
        {
          v33 = i;
          v32 = v36;
          if (v36 >= 1.0)
          {
            goto LABEL_208;
          }
        }

LABEL_47:
        i += 2;
        v29 = a2[1];
        goto LABEL_38;
      case 16:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v51 = sub_1237028(&v110);
        if ((v9[4] & 8) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v52 = *v51;
        v53 = v51[1];
        if (*v51 == v53)
        {
LABEL_207:
          i = v29;
          goto LABEL_208;
        }

        v54 = 0.0;
        v55 = v29;
        while (2)
        {
          if ((v52[16] & 8) == 0)
          {
            goto LABEL_104;
          }

          v111 = *v52;
          i = *a2;
LABEL_92:
          if (i == v29)
          {
            goto LABEL_103;
          }

          v56 = i[1];
          v57 = *v56;
          if (*v56 == 16803962)
          {
            if (*(v56 + 8) == 0x3000000746E6148 || **v52 != 16803962)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (**v52 != v57)
            {
              goto LABEL_101;
            }

            if (v57 == 16802154)
            {
              v54 = 100.0;
              v55 = i;
LABEL_103:
              i = v55;
              v55 = v29;
              if (i != v29)
              {
                goto LABEL_208;
              }

LABEL_104:
              v52 += 24;
              i = v55;
              if (v52 == v53)
              {
                goto LABEL_208;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v58 = sub_12374D8(&v111);
        if (v58 > v54)
        {
          v55 = i;
          v54 = v58;
          if (v58 >= 1.0)
          {
            goto LABEL_208;
          }
        }

LABEL_101:
        i += 2;
        v29 = a2[1];
        goto LABEL_92;
      case 17:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v18 = sub_1237028(&v110);
        if ((v9[4] & 1) == 0)
        {
          goto LABEL_211;
        }

        v19 = a2[1];
        v112 = 0;
        v20 = *v18;
        v21 = v18[1];
        if (*v18 == v21)
        {
          i = v19;
          goto LABEL_214;
        }

        v22 = 0.0;
        v23 = v19;
        while (2)
        {
          v24 = *(v20 + 4);
          if ((v24 & 0xF) == 0 || v24 == 1 && v20[1] <= 0.5)
          {
            goto LABEL_30;
          }

          v111 = *v20;
          i = *a2;
LABEL_18:
          if (i == v19)
          {
            goto LABEL_29;
          }

          v25 = i[1];
          v26 = *v25;
          if (*v25 == 16803962)
          {
            if (*(v25 + 8) == 0x3000000746E6148 || **v20 != 16803962)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (**v20 != v26)
            {
              goto LABEL_27;
            }

            if (v26 == 16802154)
            {
              v22 = 100.0;
              v23 = i;
LABEL_29:
              i = v23;
              v23 = v19;
              if (i != v19)
              {
                goto LABEL_214;
              }

LABEL_30:
              v20 += 3;
              i = v23;
              if (v20 == v21)
              {
                goto LABEL_214;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v27 = sub_12374D8(&v111);
        if (v27 > v22)
        {
          v23 = i;
          v22 = v27;
          if (v27 >= 1.0)
          {
LABEL_214:
            v7 = a7;
            goto LABEL_209;
          }
        }

LABEL_27:
        i += 2;
        v19 = a2[1];
        goto LABEL_18;
      default:
        goto LABEL_211;
    }
  }
}

uint64_t *sub_1236C2C(uint64_t **a1, uint64_t **a2, int *a3)
{
  v3 = a2[1];
  v4 = *a1;
  v19 = a1[1];
  if (*a1 == v19)
  {
    return a2[1];
  }

  v6 = *a2;
  v7 = *a3;
  v8 = 0.0;
  v9 = 0.5;
  v10 = a2[1];
  v11 = 1.0;
  v18 = *a2;
  do
  {
    v20[0] = *v4;
    while (v6 != v3)
    {
      v20[1] = *v6;
      v12 = sub_12374D8(v20);
      if (v7 != 50331648 && *(v6[1] + 4) == *a3)
      {
        v12 = v12 + 0.0011;
      }

      v13 = v4[1];
      if (*v13 == 16803962 && *(v13 + 8) == 0x3000000736E6148 && (v14 = v6[1], *v14 == 16803962) && *(v14 + 8) == 0x3000000746E6148)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v12 - v8;
      }

      if (v15 > v9)
      {
        v9 = v15;
        v10 = v6;
        if (v15 >= v11)
        {
          return v6;
        }
      }

      v6 += 2;
    }

    v8 = v8 + 0.07000001;
    v11 = 1.0 - v8;
    v4 += 2;
    v6 = v18;
  }

  while (v9 < 1.0 - v8 && v4 != v19);
  return v10;
}

void *sub_1236DD0(uint64_t **a1, void *a2, int *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a3;
  v20 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    return v3;
  }

  v9 = 0.0;
  v10 = 0.5;
  v11 = v3;
  v12 = 1.0;
  while (1)
  {
    v19 = *v6;
    if (v4 != v3)
    {
      break;
    }

LABEL_16:
    v9 = v9 + 0.07000001;
    v12 = 1.0 - v9;
    v6 += 2;
    if (v10 >= 1.0 - v9 || v6 == v7)
    {
      return v11;
    }
  }

  v13 = v4;
  while (1)
  {
    if (*(v13[1] + 8) == 0x30000006E74614CLL)
    {
      v20 = *v13;
      v14 = sub_1237B74(&v19);
      v15 = *(v13[1] + 4);
      if (v5 != 50331648 && v15 == *a3)
      {
        v14 = v14 + 0.0011;
      }

      if (*(v6[1] + 4) == v15)
      {
        v14 = v14 + 0.002;
      }

      v16 = v14 - v9;
      if (v16 > v10)
      {
        v10 = v16;
        v11 = v13;
        if (v16 >= v12)
        {
          return v13;
        }
      }
    }

    v13 += 2;
    if (v13 == v3)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1236F58(uint64_t *a1, void *a2, int a3)
{
  if (a3 < 0)
  {
    return a2[1];
  }

  if (((a2[1] - *a2) >> 4) <= a3)
  {
    return a2[1];
  }

  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return a2[1];
  }

  result = *a2 + 16 * a3;
  while (*(*(v3 + 8) + 8) != *(*(result + 8) + 8))
  {
    v3 += 16;
    if (v3 == v4)
    {
      return a2[1];
    }
  }

  return result;
}

uint64_t sub_1236FB0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return a2[1];
  }

  v5 = a2[1];
  while (1)
  {
    if (*a2 != v5)
    {
      v6 = *(*(v3 + 8) + 8);
      if (v6 == *(a3 + 8))
      {
        break;
      }
    }

LABEL_9:
    v3 += 16;
    if (v3 == v4)
    {
      return a2[1];
    }
  }

  result = *a2;
  while (1)
  {
    v8 = *(result + 8);
    if (*v8 == *a3 && *(v8 + 8) == v6)
    {
      return result;
    }

    result += 16;
    if (result == v5)
    {
      goto LABEL_9;
    }
  }
}

const void **sub_1237028(int *a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1(&unk_2734C00);
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122FD18(&unk_2734C00, a1);
}

uint64_t sub_12370B4(uint64_t *a1, uint64_t *a2)
{
  __p = 0;
  v28 = 0;
  v29 = 0;
  sub_12381C8(&__p, 0);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = sub_12381F8(*(v5 + 8));
      v8 = *v7;
      v9 = v7[1];
      while (v8 != v9)
      {
        v4.n128_u64[0] = v8->n128_u64[1];
        if (v4.n128_f64[0] < 0.25)
        {
          break;
        }

        v10 = v28;
        if (v28 >= v29)
        {
          v12 = (v28 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v29 - __p;
          if ((v29 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_122CA60(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = (16 * v12 + 16);
          v17 = (16 * v12 - (v28 - __p));
          memcpy(v16 - (v28 - __p), __p, v28 - __p);
          v18 = __p;
          __p = v17;
          v28 = v11;
          v29 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          v4 = *v8;
          *v28 = *v8;
          v11 = v10 + 1;
        }

        v28 = v11;
        ++v8;
      }

      v5 += 16;
    }

    while (v5 != v6);
  }

  v19 = 126 - 2 * __clz((v28 - __p) >> 4);
  if (v28 == __p)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  sub_1238398(__p, v28, &v30, v20, 1, v4);
  if (__p == v28)
  {
    v24 = a2[1];
  }

  else
  {
    v21 = *a2;
    v22 = a2[1];
    v23 = __p;
    while (v21 == v22)
    {
LABEL_29:
      if (++v23 == v28)
      {
        v24 = v22;
        goto LABEL_32;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = *(v24 + 8);
      if (*v23->n128_u64[0] == *v25 && *(v23->n128_u64[0] + 8) == *(v25 + 8))
      {
        break;
      }

      v24 += 16;
      if (v24 == v22)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v24;
}

uint64_t sub_12372C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    if (v3 == v4)
    {
      return a2[1];
    }

    v5 = *(v3 + 8);
    v6 = sub_12381F8(v5);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      break;
    }

LABEL_14:
    v3 += 16;
  }

  v9 = *(v5 + 8);
  v10 = a2[1];
  while (v9 != *(*v7 + 8) || *a2 == v10)
  {
LABEL_13:
    v7 += 16;
    if (v7 == v8)
    {
      goto LABEL_14;
    }
  }

  result = *a2;
  while (1)
  {
    v13 = *(result + 8);
    if (v9 == *(v13 + 8) && **v7 == *v13)
    {
      return result;
    }

    result += 16;
    if (result == v10)
    {
      goto LABEL_13;
    }
  }
}

uint64_t sub_1237370(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return a2[1];
  }

  v4 = *a2;
  v5 = a2[1];
  while (v4 == v5)
  {
LABEL_17:
    v2 += 16;
    if (v2 == v3)
    {
      return v5;
    }
  }

  v6 = *(v2 + 8);
  v7 = *v6;
  result = v4;
  while (1)
  {
    v9 = v7 == 16804725 || v7 == 16803682;
    if (!v9 || ((v10 = **(result + 8), v10 != 16807282) ? (v11 = v10 == 16804725) : (v11 = 1), !v11))
    {
      v12 = *(v6 + 1);
      if (v12 != 0x700000000000000 && v12 == *(*(result + 8) + 8))
      {
        return result;
      }
    }

    result += 16;
    if (result == v5)
    {
      goto LABEL_17;
    }
  }
}

uint64_t *sub_1237414(uint64_t **a1, uint64_t a2, int *a3)
{
  v10[0] = a2;
  v10[1] = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, v10, &v11, 1uLL);
  v5 = sub_1236C2C(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_12374CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

double sub_12374D8(uint64_t *a1)
{
  v14 = 1.0;
  v2 = a1[1];
  if (*v2 == 6581877)
  {
    v11 = sub_123364C(v2);
    sub_1226EA4();
    v12 = sub_122FA64("und", (v11 + 8), (v11 + 4), (v11 + 16));
    v13 = *a1;
    v8 = sub_123364C(*a1);
    v9 = a1[1];
    v7 = v13;
    v6 = v12;
  }

  else
  {
    v3 = *a1;
    v4 = sub_123364C(*a1);
    v5 = a1[1];
    v6 = sub_123364C(v5);
    v7 = v3;
    v8 = v4;
    v9 = v5;
  }

  sub_12375AC(v7, v8, v9, v6, &v14);
  return v14;
}

BOOL sub_12375AC(_BOOL8 result, uint64_t a2, _DWORD *a3, uint64_t a4, double *a5)
{
  if (*a4 == 6581877)
  {
    v10 = 0.0;
LABEL_6:
    *a5 = v10;
    return result;
  }

  v9 = result;
  sub_1237664(result, a2, a3, a4, a5);
  sub_12376BC(v9, a2, a3, a4, a5);
  sub_1237718(v9, a2, a3, a4, a5);
  result = sub_12274C0((a2 + 16), (a4 + 16));
  if (!result)
  {
    v10 = *a5 + -0.01;
    goto LABEL_6;
  }

  return result;
}

double sub_1237664(_DWORD *a1, _BYTE *a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  if (*a2 == *a4)
  {
    if (*a2 == 16807024 && *a1 != *a3)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237774(a2, a4, a5);
  }

  return result;
}

double sub_12376BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (*(a2 + 8) == *(a4 + 8))
  {
    if (*(a1 + 8) != *(a3 + 8) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237858(a2, a4, a5);
  }

  return result;
}

double sub_1237718(uint64_t a1, int *a2, uint64_t a3, int *a4, double *a5)
{
  if (a2[1] == a4[1])
  {
    if (*(a1 + 4) != *(a3 + 4) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_12379C0(a2, a4, a5);
  }

  return result;
}

_BYTE *sub_1237774(_BYTE *result, _DWORD *a2, double *a3)
{
  v3 = word_2312750[*result & 0x7F];
  v4 = word_2312750[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_13:
    v12 = 0.8;
  }

  else
  {
    v5 = v3;
    v6 = (&unk_2311280 + 16 * v3 + 8);
    v7 = 16 * v4 - 16 * v5;
    while (1)
    {
      v8 = *(v6 - 2);
      if (v8 == 50331648 || v8 == *result)
      {
        v10 = *(v6 - 1);
        if (v10 == 50331648 || v10 == *a2)
        {
          break;
        }
      }

      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v12 = *v6;
  }

  *a3 = *a3 - v12;
  return result;
}

uint64_t sub_1237858(uint64_t result, uint64_t a2, double *a3)
{
  v3 = word_2313070[*result & 0x7F];
  v4 = word_2313070[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_21:
    v13 = 0.4;
  }

  else
  {
    v5 = &unk_2312850 + 40 * v3 + 16;
    v6 = 40 * v4 - 40 * v3;
    while (1)
    {
      v7 = *(v5 - 4);
      if (v7 == 50331648 || v7 == *result)
      {
        v9 = *(v5 - 1);
        if ((v9 == 0x700000000000000 || v9 == *(result + 8)) && (*v5 == 50331648 || *v5 == *a2))
        {
          v12 = *(v5 + 1);
          if (v12 == 0x700000000000000 || v12 == *(a2 + 8))
          {
            break;
          }
        }
      }

      v5 += 40;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v13 = *(v5 + 2);
  }

  *a3 = *a3 - v13;
  return result;
}

uint64_t sub_12379C0(int *a1, int *a2, double *a3)
{
  v3 = word_2318C38[*a1 & 0x7F];
  v4 = word_2318C38[(*a1 + 1) & 0x7F];
  v5 = *a1;
  if (v3 == v4)
  {
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
LABEL_26:
    v24 = 80;
    v25 = &qword_2318C08;
    while (1)
    {
      result = *(v25 - 8);
      if (result == 50331648 || result == v5)
      {
        result = *(v25 - 3);
        if (result == 0x700000000000000 || result == v6)
        {
          result = *(v25 - 7);
          if (result == 50331648 || result == v7)
          {
            result = *(v25 - 4);
            if (result == 50331648 || result == v9)
            {
              result = *(v25 - 1);
              if (result == 0x700000000000000 || result == v8)
              {
                result = *(v25 - 3);
                if (result == 50331648 || result == v10)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v25 += 5;
      v24 -= 40;
      if (!v24)
      {
        v29 = *a3 + -0.4;
        goto LABEL_50;
      }
    }

    v30 = *v25;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
    v13 = 5 * v11;
    v14 = &unk_2313170 + 40 * v11 + 16;
    v15 = 40 * v12 - 8 * v13;
    while (1)
    {
      v16 = *(v14 - 4);
      if (v16 == 50331648 || v16 == v5)
      {
        v18 = *(v14 - 1);
        if (v18 == 0x700000000000000 || v18 == v6)
        {
          v20 = *(v14 - 3);
          v21 = v20 == 50331648 || v20 == v7;
          if (v21 && (*v14 == 50331648 || *v14 == v9))
          {
            v22 = *(v14 + 1);
            if (v22 == 0x700000000000000 || v22 == v8)
            {
              result = *(v14 + 1);
              if (result == 50331648 || result == v10)
              {
                break;
              }
            }
          }
        }
      }

      v14 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v30 = *(v14 + 2);
  }

  v29 = *a3 - v30;
LABEL_50:
  *a3 = v29;
  return result;
}

double sub_1237B74(uint64_t *a1)
{
  v14 = 1.0;
  v2 = a1[1];
  if (*v2 == 6581877)
  {
    v11 = sub_123364C(v2);
    sub_1226EA4();
    v12 = sub_122FA64("und", (v11 + 8), (v11 + 4), (v11 + 16));
    v13 = *a1;
    v8 = sub_123364C(*a1);
    v9 = a1[1];
    v7 = v13;
    v6 = v12;
  }

  else
  {
    v3 = *a1;
    v4 = sub_123364C(*a1);
    v5 = a1[1];
    v6 = sub_123364C(v5);
    v7 = v3;
    v8 = v4;
    v9 = v5;
  }

  sub_1237C48(v7, v8, v9, v6, &v14);
  return v14;
}

BOOL sub_1237C48(_BOOL8 result, uint64_t a2, _DWORD *a3, uint64_t a4, double *a5)
{
  if (*a4 == 6581877)
  {
    v10 = 0.0;
LABEL_6:
    *a5 = v10;
    return result;
  }

  v9 = result;
  sub_1237D00(result, a2, a3, a4, a5);
  sub_1237D58(v9, a2, a3, a4, a5);
  sub_1237DB4(v9, a2, a3, a4, a5);
  result = sub_12274C0((a2 + 16), (a4 + 16));
  if (!result)
  {
    v10 = *a5 + -0.01;
    goto LABEL_6;
  }

  return result;
}

double sub_1237D00(_DWORD *a1, _BYTE *a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  if (*a2 == *a4)
  {
    if (*a2 == 16807024 && *a1 != *a3)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237E10(a2, a4, a5);
  }

  return result;
}

double sub_1237D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (*(a2 + 8) == *(a4 + 8))
  {
    if (*(a1 + 8) != *(a3 + 8) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1237EB8(a2, a4, a5);
  }

  return result;
}

double sub_1237DB4(uint64_t a1, int *a2, uint64_t a3, int *a4, double *a5)
{
  if (a2[1] == a4[1])
  {
    if (*(a1 + 4) != *(a3 + 4) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_1238014(a2, a4, a5);
  }

  return result;
}

_BYTE *sub_1237E10(_BYTE *result, _DWORD *a2, double *a3)
{
  v3 = word_231AE38[*result & 0x7F];
  v4 = word_231AE38[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_13:
    v11 = *a3 + -0.99;
  }

  else
  {
    v5 = (&unk_2318D38 + 16 * v3 + 8);
    v6 = 16 * v4 - 16 * v3;
    while (1)
    {
      v7 = *(v5 - 2);
      if (v7 == 50331648 || v7 == *result)
      {
        v9 = *(v5 - 1);
        if (v9 == 50331648 || v9 == *a2)
        {
          break;
        }
      }

      v5 += 2;
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    v11 = *a3 - *v5;
  }

  *a3 = v11;
  return result;
}

int *sub_1237EB8(int *result, int *a2, double *a3)
{
  v3 = word_231B640[*result & 0x7F];
  v4 = word_231B640[(*result + 1) & 0x7F];
  v5 = *result;
  if (v3 == v4)
  {
    v6 = *(result + 1);
    v7 = *a2;
    v8 = *(a2 + 1);
LABEL_22:
    v20 = 800;
    v21 = &qword_231B340;
    while (1)
    {
      v22 = *(v21 - 8);
      if (v22 == 50331648 || v22 == v5)
      {
        v24 = *(v21 - 3);
        if (v24 == 0x700000000000000 || v24 == v6)
        {
          v26 = *(v21 - 4);
          if (v26 == 50331648 || v26 == v7)
          {
            v28 = *(v21 - 1);
            if (v28 == 0x700000000000000 || v28 == v8)
            {
              break;
            }
          }
        }
      }

      v21 += 5;
      v20 -= 40;
      if (!v20)
      {
        v29 = *a3 + -0.2;
        goto LABEL_42;
      }
    }

    v30 = *v21;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v6 = *(result + 1);
    v7 = *a2;
    v8 = *(a2 + 1);
    v11 = 5 * v9;
    v12 = &unk_231AF38 + 40 * v9 + 16;
    v13 = 40 * v10 - 8 * v11;
    while (1)
    {
      v14 = *(v12 - 4);
      if (v14 == 50331648 || v14 == v5)
      {
        v16 = *(v12 - 1);
        if ((v16 == 0x700000000000000 || v16 == v6) && (*v12 == 50331648 || *v12 == v7))
        {
          v19 = *(v12 + 1);
          if (v19 == 0x700000000000000 || v19 == v8)
          {
            break;
          }
        }
      }

      v12 += 40;
      v13 -= 40;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    v30 = *(v12 + 2);
  }

  v29 = *a3 - v30;
LABEL_42:
  *a3 = v29;
  return result;
}

uint64_t sub_1238014(int *a1, int *a2, double *a3)
{
  v3 = word_231C140[*a1 & 0x7F];
  v4 = word_231C140[(*a1 + 1) & 0x7F];
  v5 = *a1;
  if (v3 == v4)
  {
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
LABEL_26:
    v24 = 800;
    v25 = &qword_231BE40;
    while (1)
    {
      result = *(v25 - 8);
      if (result == 50331648 || result == v5)
      {
        result = *(v25 - 3);
        if (result == 0x700000000000000 || result == v6)
        {
          result = *(v25 - 7);
          if (result == 50331648 || result == v7)
          {
            result = *(v25 - 4);
            if (result == 50331648 || result == v9)
            {
              result = *(v25 - 1);
              if (result == 0x700000000000000 || result == v8)
              {
                result = *(v25 - 3);
                if (result == 50331648 || result == v10)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v25 += 5;
      v24 -= 40;
      if (!v24)
      {
        v29 = *a3 + -0.4;
        goto LABEL_50;
      }
    }

    v30 = *v25;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v6 = *(a1 + 1);
    v7 = a1[1];
    v8 = *(a2 + 1);
    v9 = *a2;
    v10 = a2[1];
    v13 = 5 * v11;
    v14 = &unk_231B740 + 40 * v11 + 16;
    v15 = 40 * v12 - 8 * v13;
    while (1)
    {
      v16 = *(v14 - 4);
      if (v16 == 50331648 || v16 == v5)
      {
        v18 = *(v14 - 1);
        if (v18 == 0x700000000000000 || v18 == v6)
        {
          v20 = *(v14 - 3);
          v21 = v20 == 50331648 || v20 == v7;
          if (v21 && (*v14 == 50331648 || *v14 == v9))
          {
            v22 = *(v14 + 1);
            if (v22 == 0x700000000000000 || v22 == v8)
            {
              result = *(v14 + 1);
              if (result == 50331648 || result == v10)
              {
                break;
              }
            }
          }
        }
      }

      v14 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v30 = *(v14 + 2);
  }

  v29 = *a3 - v30;
LABEL_50:
  *a3 = v29;
  return result;
}

void sub_12381C8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1238284(a1, a2 - v2);
  }
}

uint64_t sub_12381F8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1(&unk_2734C00);
    __cxa_guard_release(&qword_2734C08);
  }

  return sub_122FC64(&unk_2734C00, a1);
}

void sub_1238284(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
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
      sub_122CA60(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

__n128 sub_1238398(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v47 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u64[0] = a2[-1].n128_u64[1];
        if (result.n128_f64[0] > v12->n128_f64[1])
        {
          v66 = *v12;
          *v12 = a2[-1];
          result = v66;
          a2[-1] = v66;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v40 = v12[1].n128_f64[1];
      v41 = v12[2].n128_f64[1];
      if (v40 <= v12->n128_f64[1])
      {
        if (v41 > v40)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f64[1] > v12->n128_f64[1])
          {
            v68 = *v12;
            *v12 = v12[1];
            v12[1] = v68;
          }
        }
      }

      else
      {
        if (v41 > v40)
        {
          v67 = *v12;
          *v12 = v12[2];
          result = v67;
          goto LABEL_108;
        }

        v70 = *v12;
        *v12 = v12[1];
        v12[1] = v70;
        if (v41 > v12[1].n128_f64[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_108:
          v12[2] = result;
        }
      }

      result.n128_u64[0] = a2[-1].n128_u64[1];
      if (result.n128_f64[0] <= v12[2].n128_f64[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      result.n128_u64[0] = v12[2].n128_u64[1];
      if (result.n128_f64[0] <= v12[1].n128_f64[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_112:
      result.n128_u64[0] = v12[1].n128_u64[1];
      if (result.n128_f64[0] > v12->n128_f64[1])
      {
        v71 = *v12;
        *v12 = v12[1];
        result = v71;
        v12[1] = v71;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = sub_1238BAC(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1238D30(v12, a2);
      }

      else if (v12 != a2)
      {
        while (&a1[1] != a2)
        {
          result.n128_u64[0] = a1[1].n128_u64[1];
          v42 = a1->n128_f64[1];
          v46 = ++a1;
          if (result.n128_f64[0] > v42)
          {
            v43 = v46->n128_u64[0];
            v44 = a1;
            do
            {
              *v44 = v44[-1];
              v45 = v44[-2].n128_f64[1];
              --v44;
            }

            while (result.n128_f64[0] > v45);
            v44->n128_u64[0] = v43;
            v44->n128_u64[1] = result.n128_u64[0];
          }
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_123927C(v12->n128_f64, a2->n128_f64, a2->n128_f64, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f64[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f64[1];
      if (v18 <= v12->n128_f64[1])
      {
        if (v17 > v18)
        {
          v50 = *v16;
          *v16 = *v10;
          *v10 = v50;
          if (v16->n128_f64[1] > v12->n128_f64[1])
          {
            v51 = *v12;
            *v12 = *v16;
            *v16 = v51;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v48 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v54 = *v12;
        *v12 = *v16;
        *v16 = v54;
        if (a2[-1].n128_f64[1] > v16->n128_f64[1])
        {
          v48 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v48;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_f64[1];
      v22 = a2[-2].n128_f64[1];
      if (v21 <= v12[1].n128_f64[1])
      {
        if (v22 > v21)
        {
          v55 = *v20;
          *v20 = *v47;
          *v47 = v55;
          if (v16[-1].n128_f64[1] > v12[1].n128_f64[1])
          {
            v25 = v12[1];
            v12[1] = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        if (v22 > v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v47;
          goto LABEL_42;
        }

        v26 = v12[1];
        v12[1] = *v20;
        *v20 = v26;
        if (a2[-2].n128_f64[1] > v16[-1].n128_f64[1])
        {
          v57 = *v20;
          v24 = a2 - 2;
          *v20 = *v47;
          v23 = v57;
LABEL_42:
          *v24 = v23;
        }
      }

      v27 = v16[1].n128_f64[1];
      v28 = a2[-3].n128_f64[1];
      if (v27 <= v12[2].n128_f64[1])
      {
        if (v28 > v27)
        {
          v58 = v16[1];
          v16[1] = *v11;
          *v11 = v58;
          if (v16[1].n128_f64[1] > v12[2].n128_f64[1])
          {
            v30 = v12[2];
            v12[2] = v16[1];
            v16[1] = v30;
          }
        }
      }

      else
      {
        if (v28 > v27)
        {
          v29 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v31 = v12[2];
        v12[2] = v16[1];
        v16[1] = v31;
        if (a2[-3].n128_f64[1] > v16[1].n128_f64[1])
        {
          v59 = v16[1];
          v16[1] = *v11;
          v29 = v59;
LABEL_51:
          *v11 = v29;
        }
      }

      v32 = v16->n128_f64[1];
      v33 = v16[1].n128_f64[1];
      if (v32 <= v16[-1].n128_f64[1])
      {
        if (v33 > v32)
        {
          v61 = *v16;
          *v16 = v16[1];
          v16[1] = v61;
          if (v16->n128_f64[1] > v16[-1].n128_f64[1])
          {
            v62 = *v20;
            *v20 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v33 > v32)
        {
          v60 = *v20;
          *v20 = v16[1];
          goto LABEL_60;
        }

        v63 = *v20;
        *v20 = *v16;
        *v16 = v63;
        if (v16[1].n128_f64[1] > v16->n128_f64[1])
        {
          v60 = *v16;
          *v16 = v16[1];
LABEL_60:
          v16[1] = v60;
        }
      }

      v64 = *v12;
      *v12 = *v16;
      *v16 = v64;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_f64[1];
    if (v19 > v16->n128_f64[1])
    {
      if (v17 > v19)
      {
        v49 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v56 = *v16;
      *v16 = *v12;
      *v12 = v56;
      if (a2[-1].n128_f64[1] > v12->n128_f64[1])
      {
        v49 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v49;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 <= v19)
    {
      goto LABEL_38;
    }

    v52 = *v12;
    *v12 = *v10;
    *v10 = v52;
    if (v12->n128_f64[1] <= v16->n128_f64[1])
    {
      goto LABEL_38;
    }

    v53 = *v16;
    *v16 = *v12;
    *v12 = v53;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_f64[1] <= v12->n128_f64[1])
    {
      v12 = sub_1238DB4(v12->n128_f64, a2->n128_f64);
      goto LABEL_68;
    }

LABEL_63:
    v34 = sub_1238E98(v12->n128_f64, a2->n128_f64);
    if ((v36 & 1) == 0)
    {
      goto LABEL_66;
    }

    v37 = sub_1238F7C(v12, v34, v35);
    v12 = v34 + 1;
    if (sub_1238F7C(v34 + 1, a2, v38))
    {
      a4 = -v14;
      a2 = v34;
      if (v37)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v37)
    {
LABEL_66:
      sub_1238398(a1, v34, a3, -v14, a5 & 1);
      v12 = v34 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u64[0] = v12[1].n128_u64[1];
  v39 = a2[-1].n128_f64[1];
  if (result.n128_f64[0] <= v12->n128_f64[1])
  {
    if (v39 <= result.n128_f64[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_112;
  }

  if (v39 <= result.n128_f64[0])
  {
    v69 = *v12;
    *v12 = v12[1];
    v12[1] = v69;
    result.n128_u64[0] = a2[-1].n128_u64[1];
    if (result.n128_f64[0] <= v12[1].n128_f64[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v65 = *v12;
    *v12 = *v10;
    result = v65;
  }

  *v10 = result;
  return result;
}

__n128 sub_1238BAC(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 <= a1->n128_f64[1])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] > a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f64[1] > a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] > a3->n128_f64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f64[1] > a2->n128_f64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f64[1] > a1->n128_f64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] > a4->n128_f64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] > a3->n128_f64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] > a2->n128_f64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] > a1->n128_f64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1238D30(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 > v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 8);
            v8 -= 16;
            if (v5 <= v9)
            {
              v10 = result + v8 + 16;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          *(v10 + 8) = v5;
        }

        v2 = v4 + 2;
        v3 += 16;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t sub_1238DB4(double *a1, double *a2)
{
  v2 = a1[1];
  if (v2 <= *(a2 - 1))
  {
    v6 = (a1 + 2);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 8);
      v6 += 16;
    }

    while (v2 <= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v2 <= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v2 > v9);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v14 = *v4;
    *v4 = *v8;
    *v8 = v14;
    do
    {
      v11 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 <= v11);
    do
    {
      v12 = *(v8 - 1);
      v8 -= 2;
    }

    while (v2 > v12);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  return v4;
}

unint64_t sub_1238E98(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 > v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 > v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 <= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10 + 24);
        v10 += 16;
      }

      while (v13 > v4);
      do
      {
        v14 = *(v11 - 1);
        v11 -= 2;
      }

      while (v14 <= v4);
    }

    while (v10 < v11);
  }

  if ((v10 - 16) != a1)
  {
    *a1 = *(v10 - 16);
  }

  *(v10 - 16) = v3;
  *(v10 - 8) = v4;
  return v10 - 16;
}

BOOL sub_1238F7C(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f64[1];
      v7 = a2[-1].n128_f64[1];
      if (v6 > a1->n128_f64[1])
      {
        if (v7 <= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f64[1] <= a1[1].n128_f64[1])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 <= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f64[1] > a1->n128_f64[1])
      {
        v36 = *a1;
        *a1 = a1[1];
        a1[1] = v36;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_1238BAC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f64[1];
    v15 = a1->n128_f64[1];
    v16 = a1[2].n128_f64[1];
    if (v14 <= v15)
    {
      if (v16 > v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f64[1] > v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 <= v14)
    {
      v33 = *a1;
      *a1 = a1[1];
      a1[1] = v33;
      if (v16 <= a1[1].n128_f64[1])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f64[1] <= a1[2].n128_f64[1])
    {
      return 1;
    }

    v34 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v34;
    if (a1[2].n128_f64[1] <= a1[1].n128_f64[1])
    {
      return 1;
    }

    v35 = a1[1];
    a1[1] = a1[2];
    a1[2] = v35;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f64[1] > a1->n128_f64[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f64[1];
  v11 = a1->n128_f64[1];
  v12 = a1[2].n128_f64[1];
  if (v10 <= v11)
  {
    if (v12 > v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f64[1] > v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 <= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 <= a1[1].n128_f64[1])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f64[1];
    if (v28 > v9->n128_f64[1])
    {
      v29 = v25->n128_u64[0];
      v30 = v26;
      while (1)
      {
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v31 = *(&a1[1].n128_f64[1] + v30);
        v30 -= 16;
        if (v28 <= v31)
        {
          v32 = &a1[3] + v30;
          goto LABEL_41;
        }
      }

      v32 = a1;
LABEL_41:
      *v32 = v29;
      *(v32 + 8) = v28;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

double *sub_123927C(double *a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_1239474(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] > a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1239474(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v31 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = v16[3];
            v20 = v16[5];
            v21 = v16 + 4;
            if (v19 <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v31;
        }

        else
        {
          *v17 = *v6;
          *v6 = v31;
          v22 = (v17 - a1 + 16) >> 4;
          v23 = v22 < 2;
          v24 = v22 - 2;
          if (!v23)
          {
            v25 = v24 >> 1;
            v26 = &a1[2 * v25];
            v27 = v17[1];
            if (v26[1] > v27)
            {
              v28 = *v17;
              do
              {
                v29 = v17;
                v17 = v26;
                *v29 = *v26;
                if (!v25)
                {
                  break;
                }

                v25 = (v25 - 1) >> 1;
                v26 = &a1[2 * v25];
              }

              while (v26[1] > v27);
              *v17 = v28;
              v17[1] = v27;
            }
          }
        }

        v23 = v8-- <= 2;
      }

      while (!v23);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1239474(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] > v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] <= v10)
      {
        v11 = *a4;
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[1] > v8[3])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (v8[1] <= v10);
        *a4 = v11;
        a4[1] = v10;
      }
    }
  }

  return result;
}

uint64_t sub_1239538(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_12395AC(result, a4);
  }

  return result;
}

void sub_1239590(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_12395AC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_12395E8(a1, a2);
  }

  sub_1794();
}

void sub_12395E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

void sub_1239664(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v6 = *a1;
      v5 = a1[1];
      v7 = *(v2 + 23);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v2;
      }

      else
      {
        v8 = *v2;
      }

      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 >= 0x1F)
      {
        v9 = 31;
      }

      else
      {
        v9 = v7;
      }

      sub_1224458(v8, v9, v22);
      v10 = sub_123024C(v6, v22);
      v12 = *(v5 + 8);
      v11 = *(v5 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *v5) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          sub_1794();
        }

        v16 = v11 - *v5;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_12395E8(v5, v17);
        }

        v18 = (16 * v14);
        *v18 = *v10;
        v13 = 16 * v14 + 16;
        v19 = *(v5 + 8) - *v5;
        v20 = v18 - v19;
        memcpy(v18 - v19, *v5, v19);
        v21 = *v5;
        *v5 = v20;
        *(v5 + 8) = v13;
        *(v5 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = *v10;
        v13 = (v12 + 1);
      }

      *(v5 + 8) = v13;
      v2 += 24;
    }

    while (v2 != v3);
  }
}

void sub_12397E4(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = sub_123024C(*a1, v2);
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *v5) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          sub_1794();
        }

        v12 = v7 - *v5;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_12395E8(v5, v13);
        }

        v14 = (16 * v10);
        *v14 = *v6;
        v9 = 16 * v10 + 16;
        v15 = *(v5 + 8) - *v5;
        v16 = v14 - v15;
        memcpy(v14 - v15, *v5, v15);
        v17 = *v5;
        *v5 = v16;
        *(v5 + 8) = v9;
        *(v5 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = *v6;
        v9 = (v8 + 1);
      }

      *(v5 + 8) = v9;
      v2 += 6;
    }

    while (v2 != v3);
  }
}

void sub_12398F8(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = *(a1 + 8);
      v7 = sub_123364C(*v2);
      v9 = v6[1];
      v8 = v6[2];
      if (v9 >= v8)
      {
        v11 = *v6;
        v12 = v9 - *v6;
        v13 = v12 >> 4;
        v14 = (v12 >> 4) + 1;
        if (v14 >> 60)
        {
          sub_1794();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_12395E8(v6, v16);
        }

        v17 = (16 * v13);
        *v17 = v5;
        v17[1] = v7;
        v10 = 16 * v13 + 16;
        memcpy(0, v11, v12);
        v18 = *v6;
        *v6 = 0;
        v6[1] = v10;
        v6[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = v5;
        v9[1] = v7;
        v10 = (v9 + 2);
      }

      v6[1] = v10;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1239A18(uint64_t *a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = sub_12303B4(*a1, *v2);
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *v5) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          sub_1794();
        }

        v12 = v7 - *v5;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_12395E8(v5, v13);
        }

        v14 = (16 * v10);
        *v14 = *v6;
        v9 = 16 * v10 + 16;
        v15 = *(v5 + 8) - *v5;
        v16 = v14 - v15;
        memcpy(v14 - v15, *v5, v15);
        v17 = *v5;
        *v5 = v16;
        *(v5 + 8) = v9;
        *(v5 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = *v6;
        v9 = (v8 + 1);
      }

      *(v5 + 8) = v9;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1239B2C(uint64_t *a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = sub_1230468(*a1, *v2);
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v8 >= v7)
      {
        v10 = (v8 - *v5) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          sub_1794();
        }

        v12 = v7 - *v5;
        if (v12 >> 3 > v11)
        {
          v11 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_12395E8(v5, v13);
        }

        v14 = (16 * v10);
        *v14 = *v6;
        v9 = 16 * v10 + 16;
        v15 = *(v5 + 8) - *v5;
        v16 = v14 - v15;
        memcpy(v14 - v15, *v5, v15);
        v17 = *v5;
        *v5 = v16;
        *(v5 + 8) = v9;
        *(v5 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8 = *v6;
        v9 = (v8 + 1);
      }

      *(v5 + 8) = v9;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1239C40(uint64_t *a1, const char ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v6 = *a1;
      v5 = a1[1];
      v7 = strlen(*v2);
      if (v7 >= 0x1F)
      {
        v8 = 31;
      }

      else
      {
        v8 = v7;
      }

      sub_1224458(*v2, v8, v21);
      v9 = sub_123024C(v6, v21);
      v11 = *(v5 + 8);
      v10 = *(v5 + 16);
      if (v11 >= v10)
      {
        v13 = (v11 - *v5) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          sub_1794();
        }

        v15 = v10 - *v5;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_12395E8(v5, v16);
        }

        v17 = (16 * v13);
        *v17 = *v9;
        v12 = 16 * v13 + 16;
        v18 = *(v5 + 8) - *v5;
        v19 = v17 - v18;
        memcpy(v17 - v18, *v5, v18);
        v20 = *v5;
        *v5 = v19;
        *(v5 + 8) = v12;
        *(v5 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = *v9;
        v12 = (v11 + 1);
      }

      *(v5 + 8) = v12;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1239DB8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1239DE8(a1, a2 - v2);
  }
}

void sub_1239DE8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
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
      sub_12395E8(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t *sub_1239EFC(uint64_t **a1, uint64_t a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
{
  __p = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_1239DB8(&__p, 0);
  sub_123A1D4(&v46, 0);
  sub_123A204(&__p, a3[1] - *a3);
  sub_123A2A4(&v46, a3[1] - *a3);
  v40 = a6;
  v41 = a7;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = *a2;
    v13 = (*(a2 + 8) - *a2) >> 4;
    do
    {
      v14 = *v10;
      if ((v14 & 0x80000000) == 0 && v14 < v13)
      {
        v15 = &v12[2 * v14];
        v16 = v50;
        if (v50 >= v51)
        {
          v18 = (v50 - __p) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_1794();
          }

          v20 = v51 - __p;
          if ((v51 - __p) >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_12395E8(&__p, v21);
          }

          v22 = (16 * v18);
          *v22 = *v15;
          v17 = 16 * v18 + 16;
          v23 = v22 - (v50 - __p);
          memcpy(v23, __p, v50 - __p);
          v24 = __p;
          __p = v23;
          v50 = v17;
          v51 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v50 = *v15;
          v17 = (v16 + 16);
        }

        v50 = v17;
        v25 = v47;
        if (v47 >= v48)
        {
          v27 = (v47 - v46) >> 3;
          if ((v27 + 1) >> 61)
          {
            sub_1794();
          }

          v28 = (v48 - v46) >> 2;
          if (v28 <= v27 + 1)
          {
            v28 = v27 + 1;
          }

          if (v48 - v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            sub_122422C(&v46, v29);
          }

          v30 = (8 * v27);
          *v30 = v15;
          v26 = 8 * v27 + 8;
          v31 = v30 - (v47 - v46);
          memcpy(v31, v46, v47 - v46);
          v32 = v46;
          v46 = v31;
          v47 = v26;
          v48 = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v47 = v15;
          v26 = (v25 + 8);
        }

        v47 = v26;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v33 = __p;
  v34 = v50;
  v35 = sub_1236C2C(a1, &__p, a5);
  if (v34 != v35)
  {
    *a4 = 0;
    v36 = v35 - v33;
    v37 = v46;
    v38 = *(v46 + (v36 >> 1));
LABEL_33:
    v47 = v37;
    operator delete(v37);
    goto LABEL_34;
  }

  v38 = sub_1236040(a1, a2, a4, a5, v40, 1u, v41);
  *a4 = 1;
  v37 = v46;
  if (v46)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  return v38;
}

void sub_123A1D4(void *a1, unint64_t a2)
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
    sub_123A344(a1, a2 - v2);
  }
}

void *sub_123A204(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_12395E8(result, a2);
    }

    sub_1794();
  }

  return result;
}

void *sub_123A2A4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_122422C(result, a2);
    }

    sub_1794();
  }

  return result;
}

void sub_123A344(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v4 - v6;
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
      sub_122422C(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_123A474(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_1236040(a1, &__p, &v54, v51, &v53, v53, 1u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_123A8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_123A958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2C88(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_123AA78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2C88(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_123AB9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F2D0C(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_123ACC8(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_123BE00(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_123ADE0(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_123BE00(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

uint64_t *sub_123AF04(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a1;
  if (a4)
  {
    v13 = *a4;
  }

  else
  {
    v13 = 50331648;
  }

  v14 = a2[1];
  v96 = *a2;
  v101 = v13;
  *a5 = a6;
  if (a6 <= a7)
  {
    v99 = v14;
    while (1)
    {
      switch(a6)
      {
        case 1:
          v17 = sub_123B920(v12, a2, &v101);
          goto LABEL_172;
        case 2:
          v17 = sub_1236DD0(v12, a2, &v101);
          goto LABEL_172;
        case 3:
          if (!v9)
          {
            goto LABEL_179;
          }

          v17 = sub_1236F58(v12, a2, v9[5]);
          goto LABEL_172;
        case 4:
          if (!v9)
          {
            goto LABEL_179;
          }

          v55 = *(v9 + 1);
          if (!v55 || !*(v55 + 40))
          {
            goto LABEL_179;
          }

          v56 = sub_1234220(v55);
          v17 = sub_1236FB0(v12, a2, v56);
          goto LABEL_172;
        case 5:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v36 = sub_1237028(&v101);
          if ((v9[4] & 2) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v38 = *v36;
          v92 = v36[1];
          if (*v36 == v92)
          {
            goto LABEL_173;
          }

          v39 = 0.0;
          v40 = v37;
          do
          {
            if ((v38[2] & 2) != 0)
            {
              v41 = *v38;
              v102 = *v38;
              v43 = *a1;
              v42 = a1[1];
              while (v43 != v42)
              {
                if (*(v43[1] + 8) == *(v41 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v44 = i[1];
                    if (*v41 == *v44 && *(v41 + 8) == *(v44 + 8))
                    {
                      v103 = i[1];
                      v45 = sub_12374D8(&v102);
                      if (v45 > v39)
                      {
                        v40 = i;
                        v39 = v45;
                        if (v45 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v40;
                  v40 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v43 += 2;
              }
            }

            v38 += 3;
            i = v40;
          }

          while (v38 != v92);
          goto LABEL_174;
        case 6:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v67 = sub_1237028(&v101);
          if ((v9[4] & 4) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v68 = *v67;
          v94 = v67[1];
          if (*v67 == v94)
          {
            goto LABEL_173;
          }

          v69 = 0.0;
          v70 = v37;
          do
          {
            if ((v68[2] & 4) != 0)
            {
              v71 = *v68;
              v102 = *v68;
              v73 = *a1;
              v72 = a1[1];
              while (v73 != v72)
              {
                if (*(v73[1] + 8) == *(v71 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v74 = i[1];
                    if (*v71 == *v74 && *(v71 + 8) == *(v74 + 8))
                    {
                      v103 = i[1];
                      v75 = sub_12374D8(&v102);
                      if (v75 > v69)
                      {
                        v70 = i;
                        v69 = v75;
                        if (v75 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v70;
                  v70 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v73 += 2;
              }
            }

            v68 += 3;
            i = v70;
          }

          while (v68 != v94);
          goto LABEL_174;
        case 7:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v83 = sub_1237028(&v101);
          if ((v9[4] & 8) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v84 = *v83;
          v95 = v83[1];
          if (*v83 == v95)
          {
            goto LABEL_173;
          }

          v85 = 0.0;
          v86 = v37;
          do
          {
            if ((v84[2] & 8) != 0)
            {
              v87 = *v84;
              v102 = *v84;
              v89 = *a1;
              v88 = a1[1];
              while (v89 != v88)
              {
                if (*(v89[1] + 8) == *(v87 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v90 = i[1];
                    if (*v87 == *v90 && *(v87 + 8) == *(v90 + 8))
                    {
                      v103 = i[1];
                      v91 = sub_12374D8(&v102);
                      if (v91 > v85)
                      {
                        v86 = i;
                        v85 = v91;
                        if (v91 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v86;
                  v86 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v89 += 2;
              }
            }

            v84 += 3;
            i = v86;
          }

          while (v84 != v95);
LABEL_174:
          v10 = a3;
          v9 = a4;
          goto LABEL_176;
        case 8:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v57 = sub_1237028(&v101);
          if ((v9[4] & 1) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v58 = *v57;
          v93 = v57[1];
          if (*v57 == v93)
          {
LABEL_173:
            i = v37;
            goto LABEL_174;
          }

          v59 = 0.0;
          v60 = v37;
          while (2)
          {
            v61 = *(v58 + 4);
            if ((v61 & 0xF) == 0)
            {
              goto LABEL_113;
            }

            v62 = *v58;
            if (v61 == 1 && v58[1] <= 0.5)
            {
              goto LABEL_113;
            }

            v102 = *v58;
            v64 = *a1;
            v63 = a1[1];
LABEL_102:
            if (v64 == v63)
            {
LABEL_113:
              v58 += 3;
              i = v60;
              if (v58 == v93)
              {
                goto LABEL_174;
              }

              continue;
            }

            break;
          }

          if (*(v64[1] + 8) != *(v62 + 8))
          {
            goto LABEL_112;
          }

          for (i = *a2; ; i += 2)
          {
            if (i == v37)
            {
              i = v60;
              v60 = v37;
              if (i != v37)
              {
                goto LABEL_174;
              }

LABEL_112:
              v64 += 2;
              goto LABEL_102;
            }

            v65 = i[1];
            if (*v62 == *v65 && *(v62 + 8) == *(v65 + 8))
            {
              v103 = i[1];
              v66 = sub_12374D8(&v102);
              if (v66 > v59)
              {
                v60 = i;
                v59 = v66;
                if (v66 >= 1.0)
                {
                  break;
                }
              }
            }

            v37 = a2[1];
          }

          goto LABEL_174;
        case 9:
          v17 = sub_12370B4(v12, a2);
          goto LABEL_172;
        case 10:
          v17 = sub_12372C0(v12, a2);
          goto LABEL_172;
        case 11:
          v17 = sub_1237370(v12, a2);
          goto LABEL_172;
        case 12:
          if (!v9)
          {
            goto LABEL_179;
          }

          v35 = v9[5];
          if ((v35 & 0x80000000) != 0 || v35 >= ((a2[1] - *a2) >> 4))
          {
            goto LABEL_179;
          }

          i = &v96[2 * v35];
          goto LABEL_178;
        case 13:
          if (!v9)
          {
            goto LABEL_179;
          }

          v46 = *(v9 + 1);
          if (!v46 || !*(v46 + 40))
          {
            goto LABEL_179;
          }

          v47 = sub_1234220(v46);
          v17 = sub_123BA64(a2, v47, &v101);
LABEL_172:
          i = v17;
          goto LABEL_178;
        case 14:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v76 = sub_1237028(&v101);
          if ((v9[4] & 2) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v77 = *v76;
          v78 = v76[1];
          if (*v76 == v78)
          {
            goto LABEL_175;
          }

          v79 = 0.0;
          v80 = v28;
          do
          {
            if ((v77[16] & 2) != 0)
            {
              v102 = *v77;
              for (i = *a2; i != v28; i += 2)
              {
                v81 = **v77;
                if (v81 == *i[1])
                {
                  if (v81 == 16802154)
                  {
                    v79 = 100.0;
                    v80 = i;
                    break;
                  }

                  v103 = i[1];
                  v82 = sub_12374D8(&v102);
                  if (v82 > v79)
                  {
                    v80 = i;
                    v79 = v82;
                    if (v82 >= 1.0)
                    {
                      goto LABEL_176;
                    }
                  }
                }

                v28 = a2[1];
              }

              i = v80;
              v80 = v28;
              if (i != v28)
              {
                break;
              }
            }

            v77 += 24;
            i = v80;
          }

          while (v77 != v78);
          goto LABEL_176;
        case 15:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v27 = sub_1237028(&v101);
          if ((v9[4] & 4) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v29 = *v27;
          v30 = v27[1];
          if (*v27 == v30)
          {
            goto LABEL_175;
          }

          v31 = 0.0;
          v32 = v28;
          break;
        case 16:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v48 = sub_1237028(&v101);
          if ((v9[4] & 8) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v49 = *v48;
          v50 = v48[1];
          if (*v48 == v50)
          {
LABEL_175:
            i = v28;
            goto LABEL_176;
          }

          v51 = 0.0;
          v52 = v28;
          while (2)
          {
            if ((v49[16] & 8) == 0)
            {
              goto LABEL_88;
            }

            v102 = *v49;
            i = *a2;
LABEL_80:
            if (i == v28)
            {
              goto LABEL_87;
            }

            v53 = **v49;
            if (v53 != *i[1])
            {
              goto LABEL_85;
            }

            if (v53 == 16802154)
            {
              v51 = 100.0;
              v52 = i;
LABEL_87:
              i = v52;
              v52 = v28;
              if (i != v28)
              {
                goto LABEL_176;
              }

LABEL_88:
              v49 += 24;
              i = v52;
              if (v49 == v50)
              {
                goto LABEL_176;
              }

              continue;
            }

            break;
          }

          v103 = i[1];
          v54 = sub_12374D8(&v102);
          if (v54 <= v51 || (v52 = i, v51 = v54, v54 < 1.0))
          {
LABEL_85:
            i += 2;
            v28 = a2[1];
            goto LABEL_80;
          }

          goto LABEL_176;
        case 17:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v18 = sub_1237028(&v101);
          if ((v9[4] & 1) == 0)
          {
            goto LABEL_179;
          }

          v19 = a2[1];
          v103 = 0;
          v20 = *v18;
          v21 = v18[1];
          if (*v18 == v21)
          {
            i = v19;
            goto LABEL_182;
          }

          v22 = 0.0;
          v23 = v19;
          while (2)
          {
            v24 = *(v20 + 4);
            if ((v24 & 0xF) == 0 || v24 == 1 && v20[1] <= 0.5)
            {
              goto LABEL_26;
            }

            v102 = *v20;
            i = *a2;
LABEL_18:
            if (i == v19)
            {
              goto LABEL_25;
            }

            v25 = **v20;
            if (v25 != *i[1])
            {
              goto LABEL_23;
            }

            if (v25 == 16802154)
            {
              v22 = 100.0;
              v23 = i;
LABEL_25:
              i = v23;
              v23 = v19;
              if (i != v19)
              {
                goto LABEL_182;
              }

LABEL_26:
              v20 += 3;
              i = v23;
              if (v20 == v21)
              {
                goto LABEL_182;
              }

              continue;
            }

            break;
          }

          v103 = i[1];
          v26 = sub_12374D8(&v102);
          if (v26 <= v22 || (v23 = i, v22 = v26, v26 < 1.0))
          {
LABEL_23:
            i += 2;
            v19 = a2[1];
            goto LABEL_18;
          }

LABEL_182:
          v9 = a4;
          goto LABEL_177;
        default:
          goto LABEL_179;
      }

      do
      {
        if ((v29[16] & 4) != 0)
        {
          v102 = *v29;
          for (i = *a2; i != v28; i += 2)
          {
            v33 = **v29;
            if (v33 == *i[1])
            {
              if (v33 == 16802154)
              {
                v31 = 100.0;
                v32 = i;
                break;
              }

              v103 = i[1];
              v34 = sub_12374D8(&v102);
              if (v34 > v31)
              {
                v32 = i;
                v31 = v34;
                if (v34 >= 1.0)
                {
                  goto LABEL_176;
                }
              }
            }

            v28 = a2[1];
          }

          i = v32;
          v32 = v28;
          if (i != v28)
          {
            break;
          }
        }

        v29 += 24;
        i = v32;
      }

      while (v29 != v30);
LABEL_176:
      v12 = a1;
LABEL_177:
      v14 = v99;
LABEL_178:
      if (i != v14)
      {
        break;
      }

LABEL_179:
      LOBYTE(a6) = *a5 + 1;
      *a5 = a6;
      if (a7 < a6)
      {
        goto LABEL_5;
      }
    }

    *v10 = *a5 > 9u;
  }

  else
  {
LABEL_5:
    *v10 = 1;
    *a5 = 0;
    return v14;
  }

  return i;
}

uint64_t *sub_123B920(uint64_t **a1, uint64_t **a2, int *a3)
{
  v3 = a2[1];
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return a2[1];
  }

  v7 = *a2;
  v8 = *a3;
  v9 = 0.0;
  v10 = 0.5;
  v11 = a2[1];
  v12 = 1.0;
  while (1)
  {
    v18[0] = *v4;
    if (v7 != v3)
    {
      break;
    }

LABEL_13:
    v9 = v9 + 0.07000001;
    v12 = 1.0 - v9;
    v4 += 2;
    if (v10 >= 1.0 - v9 || v4 == v5)
    {
      return v11;
    }
  }

  v13 = v7;
  while (1)
  {
    v18[1] = *v13;
    v14 = sub_12374D8(v18);
    if (v8 != 50331648 && *(v13[1] + 4) == *a3)
    {
      v14 = v14 + 0.0011;
    }

    v15 = v14 - v9;
    if (v15 > v10)
    {
      v10 = v15;
      v11 = v13;
      if (v15 >= v12)
      {
        return v13;
      }
    }

    v13 += 2;
    if (v13 == v3)
    {
      goto LABEL_13;
    }
  }
}

uint64_t *sub_123BA64(uint64_t **a1, uint64_t a2, int *a3)
{
  v10[0] = a2;
  v10[1] = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, v10, &v11, 1uLL);
  v5 = sub_123B920(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_123BB1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}