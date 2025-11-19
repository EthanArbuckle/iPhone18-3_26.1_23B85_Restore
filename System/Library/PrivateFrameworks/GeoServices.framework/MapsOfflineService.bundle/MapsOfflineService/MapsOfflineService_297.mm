uint64_t *sub_123BB28(uint64_t **a1, uint64_t a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
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
  v35 = sub_123B920(a1, &__p, a5);
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

  v38 = sub_123AF04(a1, a2, a4, a5, v40, 1u, v41);
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

void sub_123BE00(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_123AF04(a1, &__p, &v54, v51, &v53, v53, 1u);
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

void sub_123C260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_123C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_123C404(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_123C528(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123C640(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_123C758(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

uint64_t sub_123C87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return (off_26C76E0[v4])(&v7, a1);
}

void sub_123C8F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_123C940(uint64_t *a1, uint64_t *a2)
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
      v10 = sub_1230300(v6, v22);
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

void sub_123CAC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = sub_1230300(*a1, v2);
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
      v2 += 48;
    }

    while (v2 != v3);
  }
}

void sub_123CBD4(uint64_t *a1, const char ***a2)
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
      v9 = sub_1230300(v6, v21);
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

unint64_t sub_123CD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_123CE9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_123CFC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123D0D8(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_123D1F0(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_123D344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_123D464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_123D588(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123D6A0(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_123D7B8(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

uint64_t sub_123D8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return (off_26C7810[v4])(&v7, a1);
}

void sub_123D954(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_123D9A0(uint64_t *a1, uint64_t *a2)
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
      v10 = sub_123051C(v6, v22);
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

void sub_123DB20(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = sub_123051C(*a1, v2);
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

void sub_123DC34(uint64_t *a1, const char ***a2)
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
      v9 = sub_123051C(v6, v21);
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

unint64_t sub_123DDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_123DEFC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_123E020(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123E138(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_123E250(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_123E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_123E4C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_123E5E8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123E700(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_123E818(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

uint64_t sub_123E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return (off_26C7940[v4])(&v7, a1);
}

void sub_123E9B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_123EA00(uint64_t *a1, uint64_t *a2)
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
      v10 = sub_12305D0(v6, v22);
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

void sub_123EB80(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = sub_12305D0(*a1, v2);
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

void sub_123EC94(uint64_t *a1, const char ***a2)
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
      v9 = sub_12305D0(v6, v21);
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

unint64_t sub_123EE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_123EF5C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_123F080(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123F198(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_123F2B0(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_123F404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_123F524(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_123F648(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123F760(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_123F878(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

uint64_t sub_123F99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return (off_26C76E0[v4])(&v7, a1);
}

void sub_123FA14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_123FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_123FB80(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_123FCA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_123FDBC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_123FED4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_1240028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1240148(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_124026C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1240384(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_124049C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_12405F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1240710(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1240834(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124094C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_1240A64(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_1240BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1240CD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1240DFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1240F14(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_124102C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_1241180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_12412A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_12413C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12414DC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_12415F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_1241748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1241868(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_124198C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1241AA4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_1241BBC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_1241D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1241E30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1241F54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124206C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_1242184(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_12422D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_12423F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_124251C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1242634(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_124274C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

uint64_t sub_1242870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return (off_26C7810[v4])(&v7, a1);
}

void sub_12428E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1242934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_1242A54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_1242B78(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1242C90(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_1242DA8(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_1242EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_124301C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1243140(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1243258(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_1243370(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_12434C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_12435E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1243708(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1243820(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_1243938(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_1243A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1243BAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1243CD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1243DE8(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_1243F00(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_1244054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1244174(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1244298(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12443B0(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_12444C8(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_124461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_124473C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1244860(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1244978(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_1244A90(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_1244BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1244D04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1244E28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1244F40(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_1245058(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_12451AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
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

unint64_t sub_12452CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
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

unint64_t sub_12453F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1245508(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
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

void sub_1245620(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
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

uint64_t sub_1245744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return (off_26C7940[v4])(&v7, a1);
}

void sub_12457BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1245808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
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

unint64_t sub_1245928(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
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

unint64_t sub_1245A4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1245B64(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
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

void sub_1245C7C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
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

unint64_t sub_1245DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1245EF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_1246014(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124612C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_1246244(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_1246398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_12464B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
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

unint64_t sub_12465DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12466F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
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

void sub_124680C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
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

unint64_t sub_1246960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1246A80(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1246BA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1246CBC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_1246DD4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_1246F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_1247048(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
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

unint64_t sub_124716C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1247284(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
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

void sub_124739C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
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

unint64_t sub_12474F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1247610(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1247734(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2C04(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124784C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_1247964(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_1247AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1247BD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
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

unint64_t sub_1247CFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2D0C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1247E14(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
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

void sub_1247F2C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
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

unint64_t sub_1248080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_12481A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_12482C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F2E14(v12, __p, a4, a5);
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

void sub_12483F0(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1248508(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

uint64_t *sub_124862C(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
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
        v17 = sub_1249218(v12, a2, &v110);
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
        v17 = sub_124935C(a2, v50, &v110);
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

uint64_t *sub_1249218(uint64_t **a1, uint64_t **a2, int *a3)
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
    v14 = sub_1249420(v18);
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

uint64_t *sub_124935C(uint64_t **a1, uint64_t a2, int *a3)
{
  v10[0] = a2;
  v10[1] = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, v10, &v11, 1uLL);
  v5 = sub_1249218(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1249414(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

double sub_1249420(uint64_t *a1)
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

  sub_12494F4(v7, v8, v9, v6, &v14);
  return v14;
}

BOOL sub_12494F4(_BOOL8 result, uint64_t a2, _DWORD *a3, uint64_t a4, double *a5)
{
  if (*a4 == 6581877)
  {
    v10 = 0.0;
LABEL_6:
    *a5 = v10;
    return result;
  }

  v9 = result;
  sub_12495AC(result, a2, a3, a4, a5);
  sub_1249604(v9, a2, a3, a4, a5);
  sub_1249660(v9, a2, a3, a4, a5);
  result = sub_12274C0((a2 + 16), (a4 + 16));
  if (!result)
  {
    v10 = *a5 + -0.01;
    goto LABEL_6;
  }

  return result;
}

double sub_12495AC(_DWORD *a1, _BYTE *a2, _DWORD *a3, _DWORD *a4, double *a5)
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
    sub_12496BC(a2, a4, a5);
  }

  return result;
}

double sub_1249604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
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
    sub_12497A0(a2, a4, a5);
  }

  return result;
}

double sub_1249660(uint64_t a1, int *a2, uint64_t a3, int *a4, double *a5)
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
    sub_1249908(a2, a4, a5);
  }

  return result;
}

_BYTE *sub_12496BC(_BYTE *result, _DWORD *a2, double *a3)
{
  v3 = word_231C2B0[*result & 0x7F];
  v4 = word_231C2B0[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_13:
    v12 = 0.8;
  }

  else
  {
    v5 = v3;
    v6 = (&unk_231C240 + 16 * v3 + 8);
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

uint64_t sub_12497A0(uint64_t result, uint64_t a2, double *a3)
{
  v3 = word_231C770[*result & 0x7F];
  v4 = word_231C770[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_21:
    v13 = 0.0;
  }

  else
  {
    v5 = &unk_231C3B0 + 40 * v3 + 16;
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

uint64_t sub_1249908(int *a1, int *a2, double *a3)
{
  v3 = word_2321BB8[*a1 & 0x7F];
  v4 = word_2321BB8[(*a1 + 1) & 0x7F];
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
    v25 = &qword_2321B88;
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
    v14 = &unk_231C870 + 40 * v11 + 16;
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

uint64_t *sub_1249ABC(uint64_t **a1, uint64_t a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
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
  v35 = sub_1249218(a1, &__p, a5);
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

  v38 = sub_124862C(a1, a2, a4, a5, v40, 1u, v41);
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

void sub_1249D94(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_124862C(a1, &__p, &v54, v51, &v53, v53, 1u);
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

void sub_124A1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_124A278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124A398(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124A4BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F2F1C(v12, __p, a4, a5);
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

void sub_124A5E8(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124A700(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

uint64_t *sub_124A824(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
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
          v17 = sub_1249218(v12, a2, &v101);
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
          v17 = sub_124B240(a2, v47, &v101);
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

uint64_t *sub_124B240(uint64_t **a1, uint64_t a2, int *a3)
{
  v10[0] = a2;
  v10[1] = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, v10, &v11, 1uLL);
  v5 = sub_1249218(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_124B2F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t *sub_124B304(uint64_t **a1, uint64_t a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
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
  v35 = sub_1249218(a1, &__p, a5);
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

  v38 = sub_124A824(a1, a2, a4, a5, v40, 1u, v41);
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

void sub_124B5DC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_124A824(a1, &__p, &v54, v51, &v53, v53, 1u);
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

void sub_124BA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_124BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_124BBE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_124BD04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124BE1C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_124BF34(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_124C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124C1A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124C2CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124C3E4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124C4FC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_124C650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_124C770(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_124C894(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124C9AC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_124CAC4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_124CC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124CD38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124CE5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124CF74(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124D08C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_124D1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_124D300(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_124D424(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124D53C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_124D654(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_124D7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124D8C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124D9EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124DB04(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124DC1C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_124DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_124DE90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_124DFB4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124E0CC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_124E1E4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_124E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124E458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124E57C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124E694(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124E7AC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_124E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_124EA20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_124EB44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124EC5C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_124ED74(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_124EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124EFE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124F10C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124F224(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124F33C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_124F490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_124F5B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_124F6D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124F7EC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_124F904(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_124FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_124FB78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_124FC9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124FDB4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_124FECC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1250020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1250140(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1250264(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125037C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1250494(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_12505E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_1250708(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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