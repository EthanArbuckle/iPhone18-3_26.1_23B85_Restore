uint64_t CardioHealth::getLabelForWorkout(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_243279030[a1];
  }
}

uint64_t CardioHealth::getWorkoutTypeWithLocation(uint64_t result, int a2)
{
  switch(result)
  {
    case 1:
      if (a2 == 1)
      {
        return 16;
      }

      else if (a2 == 2)
      {
        return 15;
      }

      break;
    case 2:
      if (a2 == 1)
      {
        return 18;
      }

      else if (a2 == 2)
      {
        return 17;
      }

      break;
    case 3:
      if (a2 == 1)
      {
        return 5;
      }

      else if (a2 == 2)
      {
        return 4;
      }

      break;
  }

  return result;
}

BOOL sub_24326DBA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v11 = sub_24326E398(__p, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));
  v12 = sub_24326DC64(v11, a2, a3, __p, a4, a5, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

void sub_24326DC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24326DC64(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4, int a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  if (v9 == v8)
  {
    return 0;
  }

  if (v8[1] == *v8)
  {
    return 0;
  }

  if (a3[1] == *a3)
  {
    return 0;
  }

  v11 = **a3;
  v12 = (*a3)[1];
  v13 = v12 - v11;
  if (v12 == v11)
  {
    return 0;
  }

  v91 = 0;
  v92 = 0;
  v93 = 0;
  v15 = sub_24326E5D0(&v91, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  v16 = 0;
  v78 = a3;
  v17 = -1431655765 * ((a3[1] - *a3) >> 3);
  v18 = v13 & 0x7FFFFFFF8;
  v76 = (v13 >> 3);
  do
  {
    v79 = v16;
    v19 = *a7;
    *(a7 + 8) = *a7;
    v21 = *v78;
    v20 = v78[1];
    v80 = v20;
    while (v21 != v20)
    {
      if (a5)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 1.0e10;
        do
        {
          v88 = &unk_2855F1A30;
          __src = &unk_2855F1A80;
          v26 = sqrt(sub_24326E8DC(v15, v21, &v91[v22]));
          if (v26 < v25)
          {
            v24 = v23;
            v25 = v26;
          }

          ++v23;
          v22 += 3;
        }

        while (a5 != v23);
        v19 = *(a7 + 8);
      }

      else
      {
        v24 = 0;
      }

      v27 = *(a7 + 16);
      if (v19 >= v27)
      {
        v28 = *a7;
        v29 = v19 - *a7;
        v30 = v29 >> 2;
        v31 = (v29 >> 2) + 1;
        if (v31 >> 62)
        {
          sub_24326E4AC();
        }

        v32 = v27 - v28;
        if (v32 >> 1 > v31)
        {
          v31 = v32 >> 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v33 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (!(v33 >> 62))
          {
            operator new();
          }

          sub_24326E59C();
        }

        *(4 * v30) = v24;
        v19 = (4 * v30 + 4);
        v15 = memcpy(0, v28, v29);
        *a7 = 0;
        *(a7 + 8) = v19;
        *(a7 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v19++ = v24;
      }

      *(a7 + 8) = v19;
      v21 += 3;
      v20 = v80;
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v34 = sub_24326E5D0(&v88, v91, v92, 0xAAAAAAAAAAAAAAABLL * (v92 - v91));
    v35 = v79;
    if (!a5)
    {
      goto LABEL_52;
    }

    v36 = 0;
    do
    {
      __p = 0;
      sub_24326E398(&__src, v76);
      if (!v17)
      {
LABEL_42:
        v46 = &v91[3 * v36];
        if (&__src != v46)
        {
          sub_24326E9F4(&__src, *v46, v46[1], (v46[1] - *v46) >> 3);
        }

        goto LABEL_47;
      }

      v37 = 0;
      v38 = 0.0;
      do
      {
        if (v36 != *(*a7 + 4 * v37))
        {
          goto LABEL_40;
        }

        v39 = &(*v78)[3 * v37];
        v84 = 0;
        v85 = 0;
        __p = 0;
        sub_24326E978(&__p, *v39, v39[1], (v39[1] - *v39) >> 3);
        v40 = *(*a4 + 8 * v37);
        v41 = __p;
        if (v18)
        {
          v38 = v38 + v40;
          v42 = __src;
          v43 = __p;
          v44 = v76;
          do
          {
            v45 = *v43++;
            *v42 = *v42 + v40 * v45;
            ++v42;
            --v44;
          }

          while (v44);
        }

        else
        {
          v38 = v38 + v40;
          if (!__p)
          {
            goto LABEL_40;
          }
        }

        v84 = v41;
        operator delete(v41);
LABEL_40:
        ++v37;
      }

      while (v37 != v17);
      if (v38 == 0.0)
      {
        goto LABEL_42;
      }

      if (v18)
      {
        v47 = __src;
        v48 = v76;
        do
        {
          *v47 = *v47 / v38;
          ++v47;
          --v48;
        }

        while (v48);
      }

LABEL_47:
      v34 = &v91[3 * v36];
      v49 = __src;
      if (v34 != &__src)
      {
        v34 = sub_24326E9F4(v34, __src, v87, (v87 - __src) >> 3);
        v49 = __src;
      }

      if (v49)
      {
        v87 = v49;
        operator delete(v49);
      }

      ++v36;
    }

    while (v36 != a5);
LABEL_52:
    v50 = v91;
    v81 = v92;
    if (v91 == v92)
    {
      v55 = 0;
      v54 = v91;
    }

    else
    {
      v51 = 0;
      do
      {
        v53 = v88;
        v52 = v89;
        if (v88 != v89)
        {
          do
          {
            __src = &unk_2855F1A30;
            __p = &unk_2855F1A80;
            if (sqrt(sub_24326E8DC(v34, v53, v50)) < 0.05)
            {
              ++v51;
            }

            v53 += 3;
          }

          while (v53 != v52);
        }

        v50 += 3;
      }

      while (v50 != v81);
      v50 = v91;
      v54 = v92;
      v55 = v51;
      v35 = v79;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * (v54 - v50);
    __src = &v88;
    sub_24326E818(&__src);
    v57 = v56 == v55;
    if (v56 == v55)
    {
      v58 = v35;
    }

    else
    {
      v58 = v35 + 1;
    }

    if (v56 == v55)
    {
      break;
    }

    v16 = v58;
  }

  while (v35 <= 0x31);
  if (&v91 != a6 && v56 == v55)
  {
    v60 = v91;
    v59 = v92;
    v61 = v92 - v91;
    v62 = a6[2];
    v63 = *a6;
    if (v62 - *a6 < (v92 - v91))
    {
      v64 = 0xAAAAAAAAAAAAAAABLL * (v61 >> 3);
      if (v63)
      {
        sub_24326E86C(a6);
        operator delete(*a6);
        v62 = 0;
        *a6 = 0;
        a6[1] = 0;
        a6[2] = 0;
      }

      if (v64 <= 0xAAAAAAAAAAAAAAALL)
      {
        v65 = 0xAAAAAAAAAAAAAAABLL * (v62 >> 3);
        v66 = 2 * v65;
        if (2 * v65 <= v64)
        {
          v66 = v64;
        }

        if (v65 >= 0x555555555555555)
        {
          v67 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v67 = v66;
        }

        sub_24326E658(a6, v67);
      }

      sub_24326E4AC();
    }

    v69 = a6[1] - v63;
    if (v69 >= v61)
    {
      v70 = sub_24326EB20(v91, v92, v63);
      v71 = a6[1];
      if (v71 != v70)
      {
        v72 = a6[1];
        do
        {
          v74 = *(v72 - 3);
          v72 -= 3;
          v73 = v74;
          if (v74)
          {
            *(v71 - 2) = v73;
            operator delete(v73);
          }

          v71 = v72;
        }

        while (v72 != v70);
      }

      a6[1] = v70;
    }

    else
    {
      sub_24326EB20(v91, (v91 + v69), v63);
      a6[1] = sub_24326E6FC(a6, (v60 + v69), v59, a6[1]);
    }
  }

  v88 = &v91;
  sub_24326E818(&v88);
  return v57;
}

void sub_24326E2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 + 8) = v25;
  a22 = &a25;
  sub_24326E818(&a22);
  _Unwind_Resume(a1);
}

void *sub_24326E398(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24326E470(result, a2);
  }

  return result;
}

void sub_24326E454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24326E470(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_24326E4C4(a1, a2);
  }

  sub_24326E4AC();
}

void sub_24326E4C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24326E59C();
}

void sub_24326E50C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_24326E568(exception, a1);
  __cxa_throw(exception, off_278DA54C0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_24326E568(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_24326E59C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_24326E5D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24326E658(result, a4);
  }

  return result;
}

void sub_24326E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24326E818(&a9);
  _Unwind_Resume(a1);
}

void sub_24326E658(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24326E6A4(a1, a2);
  }

  sub_24326E4AC();
}

void sub_24326E6A4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24326E59C();
}

void *sub_24326E6FC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24326E978(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24326E7B0(v8);
  return v4;
}

uint64_t sub_24326E7B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

void sub_24326E818(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24326E86C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24326E86C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

double sub_24326E8DC(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 != a3[1] - *a3)
  {
    __assert_rtn("operator()", "CHDistanceFunction.h", 26, "a.size() == b.size()");
  }

  if (v4 == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = v5 >> 3;
  result = 0.0;
  do
  {
    v9 = *(v3 + 8 * v6) - *(*a3 + 8 * v6);
    result = result + v9 * v9;
    ++v6;
  }

  while (v7 > v6);
  return result;
}

uint64_t sub_24326E978(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24326E470(result, a4);
  }

  return result;
}

void sub_24326E9D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24326E9F4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24326E470(v6, v10);
    }

    sub_24326E4AC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char **sub_24326EB20(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_24326E9F4(a3, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_24326EB88(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __int128 *a6, int a7, double a8, double a9)
{
  v164 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 38);
  v18 = *(a1 + 39);
  v19 = *a1;
  v20 = *(a1 + 106);
  v21 = v18;
  v22 = v17;
  v23 = a1[214];
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = a8;
  *(a5 + 32) = 0;
  *(a5 + 40) = v19;
  *(a5 + 48) = v20;
  *(a5 + 56) = v18;
  *(a5 + 64) = v17;
  *(a5 + 88) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 104) = v23;
  *(a5 + 108) = 0;
  *(a5 + 112) = 0;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *(a5 + 120) = 0;
  *(a5 + 144) = 0;
  v24 = *a6;
  v25 = *(a6 + 1);
  v26 = *a6;
  if (*a6 != v25)
  {
    v27 = *(v26 + 184);
    do
    {
      if (*(v26 + 184) != v27)
      {
        goto LABEL_14;
      }

      v26 += 192;
    }

    while (v26 != v25);
    if (v27 == 3)
    {
LABEL_8:
      if ((a7 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (v27 != 1)
    {
      if (v27)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (!a7)
    {
      goto LABEL_12;
    }

LABEL_14:
    v131 = 0;
    v28 = 2;
    goto LABEL_15;
  }

  v27 = 3;
  if (a7)
  {
LABEL_9:
    v134 = 0;
    v131 = 1;
    goto LABEL_16;
  }

LABEL_11:
  if ((v27 | 2) != 3)
  {
    goto LABEL_14;
  }

LABEL_12:
  v131 = 0;
  v28 = 1;
LABEL_15:
  v134 = v28;
LABEL_16:
  __asm { FMOV            V2.2D, #-1.0 }

  v147 = _Q2;
  v148 = -1.0;
  v151 = 0;
  v153 = 0;
  v154 = 0;
  v152 = 0;
  *v155 = _Q2;
  *&v155[16] = 0xBFF0000000000000;
  v34 = *(a1 + 214);
  v35 = *(a1 + 116);
  v36 = *(a1 + 117);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = *(a1 + 112);
  v38 = *(a1 + 113);
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v142[0] = v17;
  v142[1] = v18;
  v142[2] = v34;
  v143 = v35;
  v144 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v145 = v37;
  v146 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_243272448(v38);
  }

  if (v36)
  {
    sub_243272448(v36);
  }

  v141 = 0;
  if (a7)
  {
    *__p = 0;
    v39 = CHVO2MaxPrior::estimatePrior(a6, (a1 + 130), __p, &v141, a9, v21);
  }

  else
  {
    memset(__p, 0, 24);
    v40 = *(a1 + 112);
    if (v40)
    {
      (*(*v40 + 56))(v40, __p);
    }

    v39 = CHVO2MaxPrior::estimatePhoneBasedPriorFromDailyInputs(__p, (a1 + 130), 0.0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  if (v141)
  {
    if (qword_28144B9A8 != -1)
    {
      dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
    }

    v41 = qword_28144B9B8;
    if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v141 code];
      *__p = 67109120;
      *&__p[4] = v42;
      _os_log_impl(&dword_24326D000, v41, OS_LOG_TYPE_DEBUG, "VO2Max, preliminary prior returned error: %d", __p, 8u);
    }
  }

  v135 = a7;
  v137 = a6;
  sub_243276A1C(v142, a1 + 62, a5, v39);
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v44 = *(a1 + 62);
  v43 = *(a1 + 63);
  v45 = 0.0;
  v46 = 0x8E38E38E38E38E39;
  if (v44 != v43)
  {
    v132 = a4;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    while (1)
    {
      v51 = *(v44 + 68);
      if (v51)
      {
        if (v51 == 1)
        {
          ++v50;
        }

        else
        {
          if (v49 >= v140)
          {
            v55 = v49 - v48;
            v56 = ((v49 - v48) >> 3) * v46;
            v57 = v56 + 1;
            if ((v56 + 1) > 0x38E38E38E38E38ELL)
            {
              sub_24326E4AC();
            }

            v58 = v46;
            v59 = ((v140 - v48) >> 3) * v46;
            if (2 * v59 > v57)
            {
              v57 = 2 * v59;
            }

            if (v59 >= 0x1C71C71C71C71C7)
            {
              v60 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v60 = v57;
            }

            if (v60)
            {
              sub_243272358(&v138, v60);
            }

            v61 = 72 * v56;
            *v61 = *v44;
            v62 = *(v44 + 16);
            v63 = *(v44 + 32);
            v64 = *(v44 + 48);
            *(v61 + 64) = *(v44 + 64);
            *(v61 + 32) = v63;
            *(v61 + 48) = v64;
            *(v61 + 16) = v62;
            v49 = 72 * v56 + 72;
            v47 = (v61 - v55);
            memcpy((v61 - v55), v48, v55);
            v65 = v138;
            v138 = v47;
            v139 = v49;
            v140 = 0;
            if (v65)
            {
              operator delete(v65);
              v47 = v138;
            }

            v46 = v58;
          }

          else
          {
            *v49 = *v44;
            v52 = *(v44 + 16);
            v53 = *(v44 + 32);
            v54 = *(v44 + 48);
            *(v49 + 64) = *(v44 + 64);
            *(v49 + 32) = v53;
            *(v49 + 48) = v54;
            *(v49 + 16) = v52;
            v49 += 72;
          }

          v139 = v49;
          v48 = v47;
          if (((v49 - v47) >> 3) * v46 > 0x1EB)
          {
LABEL_57:
            a4 = v132;
            if (v50 >= 1)
            {
              v45 = v50 / (((v49 - v47) >> 3) * v46 + v50);
            }

            break;
          }
        }
      }

      v44 += 72;
      if (v44 == v43)
      {
        goto LABEL_57;
      }
    }
  }

  *(a1 + 190) = v45;
  v66 = v137;
  sub_243273548(v142, &v138, v137, a1 + 130, &v147, v135, ((a1[52] - a1[61]) * 100.0) / a1[52], a9, a8, v39);
  v67 = *(a1 + 116);
  if (v67)
  {
    (*(*v67 + 48))(v67, &v152);
  }

  v68 = *(a1 + 112);
  if (v68)
  {
    v69 = (*(*v68 + 32))(v68);
  }

  else
  {
    v69 = 0;
  }

  v70 = -1.0;
  if (a1[2] == 1)
  {
    goto LABEL_65;
  }

  v72 = *a1;
  if (a1[214] != 3)
  {
    v71 = 0;
    if (v72 > 0x18 || ((1 << v72) & 0x1028000) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    if (v69)
    {
      v71 = 0;
      goto LABEL_74;
    }

    v92 = *&v147;
    v73 = -1.0;
    if (*&v147 != -1.0)
    {
      v73 = 65.0;
      if (*&v147 > 65.0)
      {
        v93 = 2;
LABEL_92:
        a1[197] = v93;
        goto LABEL_94;
      }

      v73 = 14.0;
      if (*&v147 < 14.0)
      {
        v93 = 3;
        goto LABEL_92;
      }

      a1[197] = 1;
      v73 = v92;
    }

LABEL_94:
    v69 = v150;
    v71 = v151;
    v70 = v148;
    if (qword_28144B9A8 != -1)
    {
      dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
    }

    v133 = a4;
    v94 = qword_28144B9B8;
    if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
    {
      *__p = 67240961;
      *&__p[4] = v69;
      *&__p[8] = 2049;
      *&__p[10] = *(&v147 + 1);
      *&__p[18] = 2049;
      *&__p[20] = v73;
      *&__p[28] = 2049;
      *&__p[30] = v70;
      _os_log_impl(&dword_24326D000, v94, OS_LOG_TYPE_DEBUG, "VO2Max,vo2MaxEstimationStatus,%{public}d,priorVO2Max,%{private}f,longitudinalVO2Max,%{private}f,sessionVO2Max,%{private}f", __p, 0x26u);
    }

    v95 = v152;
    v96 = v153;
    if (v152 == v153)
    {
      v125 = v152;
    }

    else
    {
      HIDWORD(v130) = v71;
      v97 = *(a3 + 8);
      do
      {
        v95[44] = 1;
        v95[46] = v135 ^ 1;
        v98 = *(a3 + 16);
        if (v97 >= v98)
        {
          v108 = 0xAAAAAAAAAAAAAAABLL * ((v97 - *a3) >> 6);
          v109 = v108 + 1;
          if (v108 + 1 > 0x155555555555555)
          {
            sub_24326E4AC();
          }

          v110 = 0xAAAAAAAAAAAAAAABLL * ((v98 - *a3) >> 6);
          if (2 * v110 > v109)
          {
            v109 = 2 * v110;
          }

          if (v110 >= 0xAAAAAAAAAAAAAALL)
          {
            v111 = 0x155555555555555;
          }

          else
          {
            v111 = v109;
          }

          if (v111)
          {
            sub_2432723B4(a3, v111);
          }

          v112 = ((v97 - *a3) >> 6 << 6);
          v113 = *v95;
          v114 = *(v95 + 1);
          v115 = *(v95 + 3);
          v112[2] = *(v95 + 2);
          v112[3] = v115;
          *v112 = v113;
          v112[1] = v114;
          v116 = *(v95 + 4);
          v117 = *(v95 + 5);
          v118 = *(v95 + 7);
          v112[6] = *(v95 + 6);
          v112[7] = v118;
          v112[4] = v116;
          v112[5] = v117;
          v119 = *(v95 + 8);
          v120 = *(v95 + 9);
          v121 = *(v95 + 11);
          v112[10] = *(v95 + 10);
          v112[11] = v121;
          v112[8] = v119;
          v112[9] = v120;
          v97 = (192 * v108 + 192);
          v122 = *(a3 + 8) - *a3;
          v123 = 192 * v108 - v122;
          memcpy(v112 - v122, *a3, v122);
          v124 = *a3;
          *a3 = v123;
          *(a3 + 8) = v97;
          *(a3 + 16) = 0;
          if (v124)
          {
            operator delete(v124);
          }
        }

        else
        {
          v99 = *v95;
          v100 = *(v95 + 1);
          v101 = *(v95 + 3);
          v97[2] = *(v95 + 2);
          v97[3] = v101;
          *v97 = v99;
          v97[1] = v100;
          v102 = *(v95 + 4);
          v103 = *(v95 + 5);
          v104 = *(v95 + 7);
          v97[6] = *(v95 + 6);
          v97[7] = v104;
          v97[4] = v102;
          v97[5] = v103;
          v105 = *(v95 + 8);
          v106 = *(v95 + 9);
          v107 = *(v95 + 11);
          v97[10] = *(v95 + 10);
          v97[11] = v107;
          v97[8] = v105;
          v97[9] = v106;
          v97 += 12;
        }

        *(a3 + 8) = v97;
        v95 += 48;
      }

      while (v95 != v96);
      v125 = v152;
      v95 = v153;
      v66 = v137;
      v71 = HIDWORD(v130);
      v69 = v69;
    }

    v74 = a2;
    *(a2 + 45) = v125 != v95;
    if (v69)
    {
      a4 = v133;
      goto LABEL_75;
    }

    *a2 = a8;
    *(a2 + 8) = *a1;
    *(a2 + 16) = v73;
    *(a2 + 24) = v148 != -1.0;
    *(a2 + 25) = *(a1 + 564);
    a4 = v133;
    if (a1[2] == 1 || (v74 = a2, !uuid_compare(a1 + 32, a1 + 48)))
    {
      v74[26] = 0;
    }

    else
    {
      v126 = (*(a1 + 106) > dbl_243279190[a1[214] != 3]) & ((a1[214] != 3) | *(a2 + 24));
      *(a2 + 26) = v126;
      if (v126)
      {
        v127 = 0xAAAAAAAAAAAAAAABLL * ((v66[1] - *v66) >> 6) >= a1[222];
        *(a2 + 28) = v127;
        if ((v131 & v127) == 1)
        {
          v128 = *(a1 + 572);
        }

        else
        {
          v128 = 0;
        }

        goto LABEL_124;
      }
    }

    v128 = 0;
    v74[28] = 0;
LABEL_124:
    v69 = 0;
    v74[27] = v128 & 1;
    goto LABEL_75;
  }

  if (v72 == 15)
  {
    goto LABEL_72;
  }

LABEL_65:
  v71 = 0;
LABEL_66:
  v69 = 4294967292;
LABEL_74:
  v73 = -1.0;
  v74 = a2;
LABEL_75:
  *(a5 + 32) = v73;
  *(a5 + 96) = v73;
  *(a5 + 112) = v71;
  *(a5 + 108) = *(v74 + 27);
  *(a5 + 136) = v70;
  *(a5 + 144) = v134;
  v75 = v73;
  *(a1 + 160) = v75;
  v76.n128_u64[0] = *(&v147 + 1);
  v77 = *&v147;
  *(a1 + 162) = v77;
  v78 = v70;
  *(a1 + 163) = v78;
  v79 = *v155;
  v80 = v148;
  *(a1 + 165) = v80;
  v81 = v76.n128_f64[0];
  *(a1 + 150) = v81;
  v82 = v138;
  a1[204] = 954437177 * ((v139 - v138) >> 3);
  v83 = v79;
  *(a1 + 166) = v83;
  *(a1 + 169) = vcvt_f32_f64(*&v155[8]);
  v84 = *(a1 + 116);
  if (v84)
  {
    v85 = *(a5 + 48);
    *&__p[32] = *(a5 + 32);
    v157 = v85;
    v86 = *(a5 + 16);
    *__p = *a5;
    *&__p[16] = v86;
    v87 = *(a5 + 80);
    v158 = *(a5 + 64);
    v159 = v87;
    v163 = *(a5 + 144);
    v88 = *(a5 + 128);
    v161 = *(a5 + 112);
    v162 = v88;
    v160 = *(a5 + 96);
    (*(*v84 + 88))(v84, __p, v21, v21);
    v89 = *(a1 + 116);
    v76.n128_u64[0] = *(&v147 + 1);
    v82 = v138;
    if (v89)
    {
      LODWORD(v130) = v71;
      WORD2(v129) = *(v74 + 27);
      LODWORD(v129) = v69;
      (*(*v89 + 96))(v89, v149, v150, *a1, 0x8E38E38E38E38E39 * ((v139 - v138) >> 3), *(a1 + 564), a1[214] == 3, v148, *&v147, v76, v22, v21, v73, v70, *(a1 + 106), *(a1 + 108), v129, v130);
      v76.n128_u64[0] = *(&v147 + 1);
      v82 = v138;
    }
  }

  *a4 = v76.n128_u64[0];
  if (v82)
  {
    v139 = v82;
    operator delete(v82);
  }

  if (v146)
  {
    sub_243272448(v146);
  }

  if (v144)
  {
    sub_243272448(v144);
  }

  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  v90 = *MEMORY[0x277D85DE8];
  return v69;
}

void sub_24326F724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_24327240C(&a21);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_24326F798(uint64_t a1, uint64_t a2)
{
  *(a2 + 228) = 100;
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = (100 * *(a1 + 76) / v2);
    v4 = (100 * *(a1 + 84) / v2);
    v5 = (100 * *(a1 + 80) / v2);
    v6 = (100 * *(a1 + 92) / v2);
    v7 = (100 * *(a1 + 120) / v2);
    v8 = (100 * *(a1 + 124) / v2);
    v9 = (100 * *(a1 + 132) / v2);
    v10 = (100 * *(a1 + 128) / v2);
  }

  else
  {
    v9 = 0;
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v10 = 0.0;
  }

  *(a2 + 224) = v9;
  *(a2 + 248) = v3;
  *(a2 + 252) = v4;
  *(a2 + 148) = v5;
  *(a2 + 152) = v6;
  *(a2 + 160) = v7;
  *(a2 + 164) = v8;
  *(a2 + 176) = v10;
  v11 = *(a1 + 296);
  if (v11 <= 0)
  {
    *(a2 + 168) = 0;
    v13 = 0.0;
  }

  else
  {
    v12 = *(a1 + 312);
    *(a2 + 168) = v12;
    v13 = 0.0;
    v14 = v11 - 1;
    if (v14)
    {
      v13 = *(a1 + 328) / v14;
    }
  }

  result = sqrt(v13);
  *(a2 + 172) = result;
  *(a2 + 192) = *(a1 + 16);
  return result;
}

void CHVO2MaxEstimator::CHVO2MaxEstimator(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  operator new();
}

void sub_24326FC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (v18)
  {
    sub_243272448(v18);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  sub_243272448(v17);
  if (!v16)
  {
LABEL_5:
    MEMORY[0x245D2DA50](v15, 0x10A0C40912AF422);
    sub_2432724B4(a15, 0);
    _Unwind_Resume(a1);
  }

LABEL_4:
  sub_243272448(v16);
  goto LABEL_5;
}

void CHVO2MaxEstimator::~CHVO2MaxEstimator(CHVO2MaxEstimator *this)
{
  sub_2432724B4(this, 0);
}

{
  sub_2432724B4(this, 0);
}

uint64_t CHVO2MaxEstimator::feedCalorieUpdate@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = *result;
  v33 = 0;
  v32 = 0;
  if (*(v11 + 8) == 1)
  {
    *a5 = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    sub_243272F0C(COERCE_DOUBLE(v11 + 64), a2, a3, a4, v41, a6, a7, a8, a9, a10);
    v13 = *v11;
    if (*(v11 + 8) == 1 || v13 > 0x18)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0x1028006u >> v13;
    }

    v12.n128_u64[0] = v42;
    if (*&v42 != -1.79769313e308 && (v13 ? (v16 = v13 == 26) : (v16 = 1), !v16 && ((v23 = *(v11 + 16), v23 != -1.79769313e308) ? (v24 = v23 < *&v42) : (v24 = 0), v24 && ((v15 & (*&v42 < v23 + 3600.0)) != 0 || *(v11 + 836) == 1))))
    {
      v12.n128_f64[0] = CFAbsoluteTimeGetCurrent();
      __p = 0;
      v30 = 0;
      v31 = 0;
      v25 = *(v11 + 896);
      if (v25)
      {
        v26 = v12.n128_f64[0];
        v38 = v44;
        v39 = v45;
        v40 = v46;
        *buf = v41[0];
        v35 = v41[1];
        v36 = v42;
        v37 = v43;
        (**v25)();
        if (qword_28144B9A0 != -1)
        {
          dispatch_once(&qword_28144B9A0, &unk_2855F1AD0);
        }

        v27 = qword_28144B9B0;
        if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
        {
          Current = CFAbsoluteTimeGetCurrent();
          *buf = 134349056;
          *&buf[4] = Current - v26;
          _os_log_impl(&dword_24326D000, v27, OS_LOG_TYPE_DEBUG, "Completed insert of input record; duration: %{public}f", buf, 0xCu);
        }
      }

      v17 = (v15 & 1) != 0 && __p != v30;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v11 + 176);
    v19 = *(v11 + 252);
    result = *(v11 + 896);
    if (result)
    {
      result = (*(*result + 32))(result, v12);
      v20 = result != 0;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v11 + 488);
    *a5 = v17 || v20;
    *(a5 + 8) = v18;
    *(a5 + 16) = v19 * 2.56;
    *(a5 + 20) = v20;
    *(a5 + 21) = v32;
    *(a5 + 23) = v33;
    *(a5 + 24) = v21;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_243270230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float CHVO2MaxEstimator::feedBodyMetrics(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 928);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(v3 + 568) = *(a2 + 6);
  *(v3 + 536) = v6;
  *(v3 + 552) = v7;
  *(v3 + 520) = v5;
  *(v3 + 200) = *(a2 + 1);
  *(v3 + 148) = *(a2 + 6);
  sub_243272568(v3 + 144);
  *(v3 + 616) = *(a2 + 5);
  result = *(a2 + 7);
  *(v3 + 620) = result;
  return result;
}

void CHVO2MaxEstimator::feedStreamingHeartRate(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 8) != 1)
  {
    sub_243272790(*a1 + 64, a2);
  }
}

uint64_t CHVO2MaxEstimator::feedRestingHeartRate(CHVO2MaxEstimator *this, float a2, float a3)
{
  v5 = *this;
  *(v5 + 576) = a2;
  *(v5 + 144) = a2;
  sub_243272568(v5 + 144);
  *(v5 + 624) = a2;
  *(v5 + 628) = a3;
  result = *(v5 + 928);
  if (result)
  {
    v8.n128_u32[0] = *(v5 + 576);
    v10 = *(*result + 40);
    v6.n128_f32[0] = a2;
    v7.n128_f32[0] = a3;

    return v10(v6, v7, v8);
  }

  return result;
}

float CHVO2MaxEstimator::feedWalkingHighHeartRate(CHVO2MaxEstimator *this, double a2)
{
  v2 = a2;
  v3 = (*(*this + 156) - v2) / (*(*this + 156) - *(*this + 152));
  result = fminf(1.0 - v3, 0.3);
  *(*this + 480) = result;
  return result;
}

float32x2_t CHVO2MaxEstimator::feedHRMaxFeatures(float32x2_t **a1, float64x2_t *a2)
{
  v2 = *a1;
  v3 = a2[1].f64[0];
  v2[75].f32[1] = v3;
  result = vcvt_f32_f64(*a2);
  v2[76] = result;
  return result;
}

void CHVO2MaxEstimator::feedWorkoutEvent(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v252 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 928);
  if (v6)
  {
    (*(*v6 + 24))(v6, a2);
  }

  *(v5 + 4) = *(a2 + 16);
  uuid_copy((v5 + 48), (a2 + 64));
  v7 = (v5 + 856);
  v8 = *(a2 + 48);
  *(v5 + 856) = *(a2 + 32);
  *(v5 + 872) = v8;
  *a3 = 0x7FEFFFFFFFFFFFFFLL;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0xBFF0000000000000;
  *(a3 + 45) = 0;
  *(a3 + 48) = 0;
  *(a3 + 68) = 0;
  *(a3 + 24) = 0;
  *(a3 + 28) = 0;
  *(a3 + 56) = 0;
  v9 = *(a2 + 16);
  if (v9 <= 0xA)
  {
    v10 = 1 << v9;
    if ((v10 & 0x281) != 0)
    {
      uuid_copy((v5 + 120), (a2 + 64));
      WorkoutTypeWithLocation = CardioHealth::getWorkoutTypeWithLocation(*(a2 + 96), *(a2 + 100));
      *(v5 + 116) = WorkoutTypeWithLocation;
      *v5 = WorkoutTypeWithLocation;
      *(v5 + 8) = *(a2 + 104);
      v12 = *a2;
      *(v5 + 16) = *a2;
      v13 = *(v5 + 896);
      if (v13)
      {
        v12 = (*(*v13 + 16))(v13, a2, v5 + 32);
        *(v5 + 16) = v12;
      }

      *(v5 + 184) = v12;
      *(v5 + 192) = *(a2 + 32);
      *(v5 + 840) = 1;
      goto LABEL_205;
    }

    if ((v10 & 0x402) == 0 || *(v5 + 840) != 1)
    {
      goto LABEL_205;
    }

    *(v5 + 848) = vabdd_f64(*(v5 + 176), *(v5 + 168));
    v14 = *(a2 + 24);
    uuid_copy((a3 + 29), (v5 + 48));
    memset(v168, 0, sizeof(v168));
    v16 = *(v5 + 912);
    if (v16)
    {
      (*(*v16 + 8))(v16, v168, 0, 7776000.0);
    }

    memset(__p, 0, 24);
    v17 = *(v5 + 896);
    if (v17)
    {
      (*(*v17 + 8))(v17, __p, *(v5 + 16));
      v18 = __p[0];
      v19 = __p[1];
      if (__p[0] != __p[1])
      {
        v20 = 0.0;
        v21 = 0.0;
        v22 = __p[0];
        v23 = 0.0;
        do
        {
          v24 = v22[3];
          v20 = v20 + v24;
          v21 = v21 + 1.0;
          if (v24 > v23)
          {
            v23 = v22[3];
          }

          v22 += 4;
        }

        while (v22 != __p[1]);
        v25 = 0;
        v26 = __p[0];
LABEL_22:
        if ((v19 - v26) < 0x380)
        {
          memset(buf, 0, 24);
          v27 = *(v5 + 912);
          if (v27)
          {
            v28 = (v18 + 8);
            if (v25)
            {
              v28 = (v5 + 16);
            }

            v15.n128_f64[0] = *(v5 + 16) + -31536000.0;
            (*(*v27 + 48))(v27, buf, v15, *v28);
            if (*buf == *&buf[8] || (v29 = *(*&buf[8] - 48), v29 <= 0.0) || (v20 = v20 + (28 - ((__p[1] - __p[0]) >> 5)) * v29, v21 = 28.0, v29 <= v23))
            {
              v29 = v23;
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          else
          {
            v29 = v23;
          }

          v23 = v29;
        }

        if (v21 <= 0.0)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = v20 / v21;
        }

        if (qword_28144B9A8 != -1)
        {
          dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
        }

        v31 = qword_28144B9B8;
        if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
        {
          v32 = "false";
          if (v21 > 0.0)
          {
            v32 = "true";
          }

          *buf = 136380931;
          *&buf[4] = v32;
          *&buf[12] = 2049;
          *&buf[14] = v30;
          _os_log_impl(&dword_24326D000, v31, OS_LOG_TYPE_DEBUG, "VO2Max,GetMeanMaxMets,canCalculateMeanMaxMets,%{private}s,meanMaxMets,%{private}.3f", buf, 0x16u);
        }

        v33 = v30;
        *(v5 + 632) = v33;
        v34 = v23;
        *(v5 + 636) = v34;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*(v5 + 892) > 0.0)
        {
          if (qword_28144B9A0 != -1)
          {
            dispatch_once(&qword_28144B9A0, &unk_2855F1AD0);
          }

          v35 = qword_28144B9B0;
          if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(v5 + 892);
            LODWORD(__p[0]) = 134218240;
            *(__p + 4) = *&v30;
            WORD2(__p[1]) = 2048;
            *(&__p[1] + 6) = *&v36;
            _os_log_impl(&dword_24326D000, v35, OS_LOG_TYPE_DEFAULT, "Overwriting meanMaxMets,calculated,%f,overwrite,%f", __p, 0x16u);
          }

          v30 = *(v5 + 892);
        }

        v165 = 0;
        v166 = 0;
        v167 = 0;
        v164 = 0.0;
        *v177 = 0;
        memset(__p, 0, sizeof(__p));
        v37 = sub_24326EB88(v5, a3, &v165, &v164, __p, v168, 0, v14, v30);
        v39 = v165;
        v38 = v166;
        if (v166 != v165)
        {
          do
          {
            uuid_copy(v39 + 20, (v5 + 48));
            *(v39 + 4) = *v5;
            *(v39 + 45) = *(v5 + 856);
            v39 += 192;
          }

          while (v39 != v38);
          v40 = *(v5 + 912);
          if (v40)
          {
            (*(*v40 + 16))(v40, &v165);
          }
        }

        v41 = *(v5 + 896);
        if (v41)
        {
          v42 = (*(*v41 + 32))(v41) == 0;
        }

        else
        {
          v42 = 1;
        }

        if (*(v5 + 8) != 1)
        {
          v45 = *v5;
          if (*v7 == 3)
          {
            if (v45 != 15 || !v42)
            {
              goto LABEL_59;
            }
          }

          else if (v45 > 0x18 || ((1 << v45) & 0x1028000) == 0 || !v42)
          {
            goto LABEL_59;
          }

          *buf = 0;
          *&buf[8] = v14;
          *&buf[16] = 0;
          *&buf[24] = 0;
          v51 = v164;
          *&buf[32] = v30;
          v170 = v164;
          v171 = *(v5 + 136);
          v172 = *(v5 + 564);
          v173 = 4;
          v174 = 0;
          v175 = 0;
          uuid_copy(&buf[16], (v5 + 48));
          v52 = *(v5 + 912);
          if (v52)
          {
            (*(*v52 + 24))(v52, buf);
            if (v51 > 0.0)
            {
              v53 = *(v5 + 912);
              v160[0] = 0.0;
              v160[1] = v14;
              v160[2] = v51;
              v161 = 1;
              v162 = v30;
              v163 = 0;
              (*(*v53 + 56))(v53, v160);
            }
          }
        }

LABEL_59:
        if (*(a3 + 26) == 1)
        {
          uuid_copy(&__p[9], (v5 + 48));
          v43 = *(v5 + 912);
          if (v43)
          {
            (*(*v43 + 32))(v43, __p);
            *(v5 + 792) = 1;
          }

          v44 = *(v5 + 896);
          if (v44)
          {
            (*(*v44 + 40))(v44, 1);
          }

          uuid_copy((v5 + 32), (v5 + 48));
        }

        else
        {
          if (qword_28144B9A8 != -1)
          {
            dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
          }

          v46 = qword_28144B9B8;
          if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_ERROR))
          {
            v47 = *(v5 + 848);
            v48 = *(a3 + 16);
            v49 = *(v5 + 8);
            *buf = 67240960;
            *&buf[4] = v37;
            *&buf[8] = 2050;
            *&buf[10] = v47;
            *&buf[18] = 2048;
            *&buf[20] = v48;
            *&buf[28] = 2050;
            *&buf[30] = v49;
            _os_log_impl(&dword_24326D000, v46, OS_LOG_TYPE_ERROR, "VO2Max,Failure to estimate,status,%{public}d,workout duration,%{public}.3f,estimate,%f,workout mode,%{public}ld", buf, 0x26u);
          }

          *a3 = 0x7FEFFFFFFFFFFFFFLL;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0xBFF0000000000000;
          *(v5 + 792) = 0;
        }

        if (*(v5 + 8) != 1)
        {
          v50 = *v5;
          if (*v7 == 3)
          {
            if (v50 != 15)
            {
              goto LABEL_86;
            }

LABEL_85:
            *(a3 + 48) = v30;
            goto LABEL_86;
          }

          if (v50 <= 0x18 && ((1 << v50) & 0x1028000) != 0)
          {
            goto LABEL_85;
          }
        }

LABEL_86:
        if (v165)
        {
          v166 = v165;
          operator delete(v165);
        }

        if (v168[0])
        {
          v168[1] = v168[0];
          operator delete(v168[0]);
        }

        v54 = *(v5 + 896);
        if (v54)
        {
          (*(*v54 + 24))(v54, a2, a3);
        }

        v55 = *(a3 + 16);
        v56 = *(a2 + 24);
        sub_24326F798(v5 + 144, v5 + 580);
        v57 = *(v5 + 928);
        if (v57)
        {
          __p[10] = *(v5 + 288);
          v58 = *(v5 + 272);
          *&__p[6] = *(v5 + 256);
          *&__p[8] = v58;
          v59 = *(v5 + 240);
          *&__p[2] = *(v5 + 224);
          *&__p[4] = v59;
          *__p = *(v5 + 208);
          (*(*v57 + 8))(v57, __p, *(v5 + 856), *(v5 + 16));
        }

        *(v5 + 776) = v37;
        *(v5 + 768) = *v5;
        *(v5 + 780) = *(v5 + 856);
        v60 = *(v5 + 864) * 100.0;
        *(v5 + 736) = v60;
        v61 = *(v5 + 848);
        *(v5 + 764) = v61;
        v62 = *(v5 + 896);
        if (v62)
        {
          LOBYTE(v62) = (*(*v62 + 48))(v62);
          *(v5 + 812) = 0x80000000;
          v63 = v62 ^ 1;
          if (v37)
          {
            v63 = 1;
          }

          if (v63)
          {
            v66 = 0;
          }

          else
          {
            v64 = *(v5 + 560);
            if (v64 == 0.0)
            {
              v66 = 0;
              LOBYTE(v62) = 1;
            }

            else
            {
              v65 = v55 / 3.5;
              *(v5 + 812) = ((v65 - v64) * 100.0 / v64);
              LOBYTE(v62) = 1;
              v66 = 1;
            }
          }
        }

        else
        {
          v66 = 0;
          *(v5 + 812) = 0x80000000;
        }

        *(v5 + 824) = v62;
        memset(buf, 0, 24);
        v67 = *(v5 + 912);
        if (v67)
        {
          (**v67)(v67, buf, 0, 0x7FFFFFFFLL, v56 + -7776000.0);
          v68 = *buf;
          if (*buf != *&buf[8])
          {
            v69 = 0;
            v70 = 0.0;
            v71 = 0.0;
            v72 = 1;
            v73 = 0.0;
            v74 = 0.0;
            v75 = *buf;
            v76 = 0.0;
            v77 = 0.0;
            v78 = 0.0;
            v79 = 0.0;
            do
            {
              v80 = v72;
              v81 = *(v75 + 32);
              v82 = v81;
              v83 = 0.0;
              if (v72 != 1)
              {
                v82 = v79 + (v81 - v79) / v72;
                v83 = v78 + (v81 - v79) * (v81 - v82);
                v77 = v83;
              }

              v78 = v83;
              v79 = v82;
              if (*(v75 + 24) <= v56 + -604800.0)
              {
                v81 = v70;
              }

              else if (v69)
              {
                v76 = v70 + (v81 - v70) / ++v69;
                v81 = v76;
              }

              else
              {
                v69 = 1;
                v76 = *(v75 + 32);
              }

              v84 = *(v75 + 40);
              v85 = v73 + 1.0;
              v86 = v71 + 1.0;
              if (v84 != 15)
              {
                v86 = v71;
              }

              if (v84 == 17)
              {
                v86 = v71;
              }

              else
              {
                v85 = v73;
              }

              if (v84 == 24)
              {
                v74 = v74 + 1.0;
              }

              else
              {
                v73 = v85;
              }

              if (v84 != 24)
              {
                v71 = v86;
              }

              v75 += 152;
              v72 = v80 + 1;
              v70 = v81;
            }

            while (v75 != *&buf[8]);
            v87 = *&buf[8] - *buf;
            if (v79 > 0.0)
            {
              v88 = 0.0;
              if (v69 <= 0)
              {
                v89 = 0.0;
              }

              else
              {
                v89 = v76;
              }

              v90 = v89 / v79;
              *(v5 + 688) = v90;
              if (v80 != 1)
              {
                v88 = v77 / ((v87 - 152) / 0x98uLL);
              }

              v91 = sqrt(v88);
              *(v5 + 684) = v91;
            }

            v92 = 0x86BCA1AF286BCA1BLL * (v87 >> 3);
            if (v92 >= 2)
            {
              v93 = *(v68 + 32) / *(v68 + 184);
              *(v5 + 692) = v93;
            }

            *(v5 + 696) = v71 / v92;
            *(v5 + 700) = v73 / v92;
            *(v5 + 704) = v74 / v92;
            v94 = v79;
LABEL_136:
            *&buf[8] = v68;
            v95 = *(v5 + 912);
            if (v95)
            {
              v96 = v56 + -7257600.0;
              (**v95)(v95, buf, 1, 42, v96);
              v97 = *buf;
              v98 = *&buf[8];
              v99 = *(v5 + 912);
              *(v5 + 708) = 678152731 * ((*&buf[8] - *buf) >> 3);
              if (v99)
              {
                v160[0] = 1.79769313e308;
                if ((*(*v99 + 40))(v99, 0, v160))
                {
                  v97 = *buf;
                  v98 = *&buf[8];
                  v100 = 0;
                  if (*&buf[8] != *buf)
                  {
                    v101 = 0x86BCA1AF286BCA1BLL * ((*&buf[8] - *buf) >> 3);
                    if (v101 <= 1)
                    {
                      v101 = 1;
                    }

                    v102 = (*buf + 24);
                    do
                    {
                      v103 = *v102;
                      v102 += 19;
                      if (v103 >= v160[0])
                      {
                        ++v100;
                      }

                      --v101;
                    }

                    while (v101);
                  }
                }

                else
                {
                  if (qword_28144B9A8 != -1)
                  {
                    dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
                  }

                  v104 = qword_28144B9B8;
                  if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(__p[0]) = 134349056;
                    *(__p + 4) = *&v96;
                    _os_log_impl(&dword_24326D000, v104, OS_LOG_TYPE_ERROR, "VO2Max,Analytics unexpectedly not able to retrieve a session record for the minimum algorithm version with startTime > %{public}.3f", __p, 0xCu);
                  }

                  v100 = -1;
                  v97 = *buf;
                  v98 = *&buf[8];
                }
              }

              else
              {
                v100 = -1;
              }

              *(v5 + 712) = v100;
              if (v98 != v97)
              {
                v105 = 0;
                v106 = 0.0;
                v107 = 1.0;
                v108 = 1.0;
                v109 = 0.0;
                do
                {
                  v110 = *(v98 - 120);
                  if (v105)
                  {
                    v111 = v106;
                    v98 -= 152;
                  }

                  else
                  {
                    if (v98 - 152 == v97)
                    {
                      v115 = 0.0;
                      v106 = *(v98 - 120);
                      goto LABEL_168;
                    }

                    v112 = (v98 - 272);
                    v98 -= 304;
                    v111 = v110;
                    v110 = *v112;
                    v105 = 1;
                  }

                  v113 = v107 * 0.890898718;
                  v107 = v107 * 0.890898718 + 1.0;
                  if (v111 == v110)
                  {
                    v106 = v111;
                  }

                  else
                  {
                    v106 = (v110 + v113 * v111) / (v113 + 1.0);
                  }

                  ++v105;
                  v109 = ((v110 - v106) * (v110 - v106) + v113 * (v109 + (v111 - v106) * (v111 - v106))) / v107;
                  v108 = v108 * 0.793700526 + 1.0;
                }

                while (v98 != v97);
                v114 = v107 * v107 - v108;
                v115 = 0.0;
                if (v114 > 0.0)
                {
                  v115 = sqrt(v107 * v107 / v114 * v109);
                }

LABEL_168:
                if (qword_28144B9A8 != -1)
                {
                  dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
                }

                v117 = qword_28144B9B8;
                if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(__p[0]) = 134283777;
                  *(__p + 4) = *&v106;
                  WORD2(__p[1]) = 2049;
                  *(&__p[1] + 6) = *&v115;
                  _os_log_impl(&dword_24326D000, v117, OS_LOG_TYPE_DEBUG, "VO2Max,weightedAvg,%{private}.3f,std,%{private}.3f", __p, 0x16u);
                }

                v116 = v106 + v115;
                goto LABEL_173;
              }
            }

            else
            {
              *(v5 + 708) = 0xFFFFFFFF00000000;
            }

            v116 = -1.0;
LABEL_173:
            *(v5 + 724) = v116;
            v118 = [objc_msgSend(MEMORY[0x277CBEBB0] "localTimeZone")];
            v119 = *buf;
            v120 = *&buf[8];
            if (*&buf[8] == *buf)
            {
              v126 = 0;
              *(v5 + 716) = 0;
            }

            else
            {
              v121 = 0;
              v122 = 0;
              do
              {
                v123 = vcvtmd_s64_f64((*(v120 - 128) + v118) / 86400.0);
                v124 = v120 - 152;
                v125 = v122 < v123;
                if (v122 <= v123)
                {
                  v122 = v123;
                }

                if (v125)
                {
                  ++v121;
                }

                v120 -= 152;
              }

              while (v124 != *buf);
              *(v5 + 716) = v121;
              v126 = *(v119 + 112);
            }

            *(v5 + 720) = v126;
            *(v5 + 584) = *(v5 + 536);
            *(v5 + 580) = *(v5 + 520);
            *(v5 + 588) = *(v5 + 564);
            v127 = *(v5 + 528);
            if (v127 != 0.0)
            {
              v128 = *(v5 + 524);
              if (v128 != 0.0)
              {
                *(v5 + 592) = v127 / (v128 * v128);
              }
            }

            *(v5 + 596) = v94;
            if (qword_28144B9A8 != -1)
            {
              dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
            }

            v129 = qword_28144B9B8;
            if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
            {
              v130 = *(v5 + 796);
              v131 = *(v5 + 800);
              v132 = *(v5 + 804);
              v133 = *(v5 + 808);
              LODWORD(__p[0]) = 67109888;
              HIDWORD(__p[0]) = v130;
              LOWORD(__p[1]) = 1024;
              *(&__p[1] + 2) = v131;
              HIWORD(__p[1]) = 1024;
              LODWORD(__p[2]) = v132;
              WORD2(__p[2]) = 1024;
              *(&__p[2] + 6) = v133;
              _os_log_impl(&dword_24326D000, v129, OS_LOG_TYPE_DEBUG, "VO2Max,pctHRSamplesValidMin,%d,pctHRSamplesValidMax,%d,pctHRSamplesWithRecentHR,%d,pctMETSamplesWithValidDelta,%d", __p, 0x1Au);
              if (qword_28144B9A8 != -1)
              {
                dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
              }
            }

            v134 = qword_28144B9B8;
            if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
            {
              v135 = *(v5 + 812);
              v136 = *(v5 + 560);
              LODWORD(__p[0]) = 67109632;
              HIDWORD(__p[0]) = v135;
              LOWORD(__p[1]) = 2048;
              *(&__p[1] + 2) = *&v136;
              v137 = v66 ? v55 / 3.5 : 0.0;
              WORD1(__p[2]) = 2048;
              *(&__p[2] + 4) = *&v137;
              _os_log_impl(&dword_24326D000, v134, OS_LOG_TYPE_DEBUG, "VO2Max,longitudinalConsistency,%d,old,%f,new,%f", __p, 0x1Cu);
              if (qword_28144B9A8 != -1)
              {
                dispatch_once(&qword_28144B9A8, &unk_2855F1AB0);
              }
            }

            v138 = qword_28144B9B8;
            if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(__p[0]) = 134231296;
              *(__p + 4) = *(v5 + 584);
              *(&__p[3] + 2) = *(v5 + 592);
              *(&__p[4] + 4) = *(v5 + 596);
              *(&__p[5] + 6) = *(v5 + 600);
              *&__p[7] = *(v5 + 604);
              *(&__p[8] + 2) = *(v5 + 608);
              *(&__p[9] + 4) = *(v5 + 612);
              *(&__p[10] + 6) = *(v5 + 616);
              *&__p[12] = *(v5 + 620);
              *(&__p[13] + 2) = *(v5 + 624);
              *(&__p[14] + 4) = *(v5 + 628);
              *(&__p[15] + 6) = *(v5 + 632);
              *&__p[17] = *(v5 + 636);
              *&v177[2] = *(v5 + 640);
              v179 = *(v5 + 648);
              v181 = v179;
              v183 = *(v5 + 652);
              v185 = *(v5 + 660);
              v187 = v185;
              v189 = *(v5 + 664);
              v191 = *(v5 + 676);
              v195 = v191;
              v193 = *(v5 + 680);
              v197 = v193;
              v199 = *(v5 + 684);
              v201 = *(v5 + 688);
              v203 = *(v5 + 692);
              v205 = *(v5 + 696);
              v207 = *(v5 + 700);
              v209 = *(v5 + 704);
              v217 = *(v5 + 724);
              v221 = *(v5 + 728);
              v223 = *(v5 + 732);
              v225 = *(v5 + 736);
              v227 = *(v5 + 740);
              v229 = *(v5 + 744);
              v231 = *(v5 + 748);
              v233 = *(v5 + 752);
              v235 = *(v5 + 756);
              v241 = *(v5 + 764);
              v251 = *(v5 + 760);
              v139 = *(v5 + 580);
              v140 = *(v5 + 588);
              v141 = *(v5 + 708);
              v142 = *(v5 + 712);
              v143 = *(v5 + 716);
              v144 = *(v5 + 720);
              v145 = *(v5 + 768);
              v146 = *(v5 + 780);
              v147 = *(v5 + 772);
              v148 = *(v5 + 776);
              v149 = *(v5 + 788);
              WORD2(__p[1]) = 1024;
              *(&__p[1] + 6) = v139;
              WORD1(__p[2]) = 1024;
              HIDWORD(__p[2]) = v140;
              LOWORD(__p[3]) = 2048;
              WORD1(__p[4]) = 2048;
              WORD2(__p[5]) = 2048;
              HIWORD(__p[6]) = 2048;
              LOWORD(__p[8]) = 2048;
              WORD1(__p[9]) = 2048;
              WORD2(__p[10]) = 2048;
              HIWORD(__p[11]) = 2048;
              LOWORD(__p[13]) = 2048;
              WORD1(__p[14]) = 2048;
              WORD2(__p[15]) = 2048;
              HIWORD(__p[16]) = 2048;
              *v177 = 2048;
              v178 = 2048;
              v180 = 2048;
              v182 = 2048;
              v184 = 2048;
              v186 = 2048;
              v188 = 2048;
              v190 = 2048;
              v192 = 2048;
              v194 = 2048;
              v196 = 2048;
              v198 = 2048;
              v200 = 2048;
              v202 = 2048;
              v204 = 2048;
              v206 = 2048;
              v208 = 2048;
              v210 = 1024;
              v211 = v141;
              v212 = 1024;
              v213 = v142;
              v214 = 1024;
              v215 = v143;
              v216 = 2048;
              v218 = 1024;
              v219 = v144;
              v220 = 2048;
              v222 = 2048;
              v224 = 2048;
              v226 = 2048;
              v228 = 2048;
              v230 = 2048;
              v232 = 2048;
              v234 = 2048;
              v236 = 1024;
              v237 = v145;
              v238 = 1024;
              v239 = v146;
              v240 = 2048;
              v242 = 1024;
              v243 = v147;
              v244 = 1024;
              v245 = v148;
              v246 = 1024;
              v247 = 3;
              v248 = 1024;
              v249 = v149;
              v250 = 2048;
              _os_log_impl(&dword_24326D000, v138, OS_LOG_TYPE_DEBUG, "VO2Max,age,%.2f,biologicalSex,%d,useBetaBlocker,%d,userBMI,%.2f,vo2MaxMean,%.2f,vo2MaxPrior,%.2f,hrMaxObserved,%.2f,hrMaxAgePredicted,%.2f,hrMaxAgeAndMedicationPredicted,%.2f,hrMinBodyMetricsPredicted,%.2f,hrOnset,%.2f,hrRestingObservedOneDay,%.2f,hrRestingObservedSevenDays,%.2f,maxMetsMean,%.2f,maxMetsHigh,%.2f,vo2MaxValue,%.2f,vo2MaxValueAdaptiveModel,%.2f,vo2MaxValueOutdoorPedestrianModel,%.2f,vo2MaxValueOOB,%.2f,vo2MaxValueAdaptiveModelOOB,%.2f,vo2MaxValueOutdoorPedestrianModelOOB,%.2f,efficiency,%.2f,clustersHRMeanPedestrianModel,%.2f,clustersMetsMeanPedestrianModel,%.2f,clustersHRMeanAdaptiveModel,%.2f,clustersMetsMeanAdaptiveModel,%.2f,vo2MaxStDev,%.2f,vo2MaxTrend,%.2f,vo2MaxTrendSingleEst,%.2f,workoutTypeRatioWalk,%.2f,workoutTypeRatioRun,%.2f,workoutTypeRatioHike,%.2f,lookbackNumEstimates,%d,lookbackNumEstimatesAfterUpdate,%d,lookbackNumDaysWithEstimate,%d,lookbackEWMAPlusWeightedStDev,%.2f,numWorkoutsContrToLatestEstimate,%d,pctGPSAvailability,%.2f,pctHeartRateAvailability,%.2f,pctBackgroundEscalation,%.2f,pctHRMax,%.2f,pctHRMin,%.2f,validGradeMean,%.2f,validGradeStd,%.2f,pctGradeAboveAnalyticsThreshold,%.2f,workoutType,%d,sessionType,%d,sessionDuration,%.2f,hrMinSource,%d,vo2MaxEstimationStatus,%d,arbitrationState,%d,limitState,%d,pctFailingKinetics,%.2f", __p, 0x1E4u);
            }

            v150 = *(v5 + 928);
            if (v150)
            {
              (**v150)(v150, v5 + 580);
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            *(a3 + 56) = *(v5 + 848);
            *(a3 + 64) = v37;
            *v5 = 0;
            *(v5 + 8) = 0;
            *(v5 + 16) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            sub_243278CB0(v5 + 144);
            if (*(v5 + 536) > 0.0)
            {
              *(v5 + 200) = *(v5 + 524);
              *(v5 + 148) = *(v5 + 544);
              sub_243272568(v5 + 144);
            }

            sub_2432726FC(v5 + 64);
            *(v5 + 504) = *(v5 + 496);
            v151 = *(v5 + 540);
            v152 = *(v5 + 548);
            *(v5 + 580) = 0xBF80000000000000;
            *(v5 + 588) = 0;
            __asm { FMOV            V2.4S, #-1.0 }

            *(v5 + 592) = _Q2;
            __asm { FMOV            V3.2S, #-1.0 }

            *(v5 + 608) = _D3;
            *(v5 + 616) = v151;
            *(v5 + 620) = v152;
            *(v5 + 624) = _Q2;
            *(v5 + 640) = _Q2;
            *(v5 + 656) = _Q2;
            *(v5 + 672) = _Q2;
            *(v5 + 688) = _Q2;
            *(v5 + 704) = -1082130432;
            *(v5 + 708) = -1;
            *(v5 + 716) = -1;
            *(v5 + 724) = _Q2;
            *(v5 + 740) = _Q2;
            *(v5 + 756) = -1082130432;
            *(v5 + 760) = _D3;
            *(v5 + 768) = 96;
            *(v5 + 785) = 0;
            *(v5 + 772) = 0u;
            *(v5 + 812) = 0;
            *(v5 + 796) = 0u;
            *(v5 + 820) = -1082130432;
            *(v5 + 824) = 0;
            *(v5 + 828) = 0xBF800000BF800000;
            *(v5 + 840) = 0;
            goto LABEL_205;
          }
        }

        else
        {
          v68 = 0;
        }

        v94 = 0.0;
        goto LABEL_136;
      }

      v23 = 0.0;
      v25 = 1;
      v26 = __p[0];
    }

    else
    {
      v19 = 0;
      v26 = 0;
      v18 = 0;
      v23 = 0.0;
      v25 = 1;
    }

    v21 = 0.0;
    v20 = 0.0;
    goto LABEL_22;
  }

LABEL_205:
  v159 = *MEMORY[0x277D85DE8];
}

void sub_243271A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void CHVO2MaxEstimator::retrocomputeVO2Max(uint64_t *a1, __int128 **a2, __int128 *a3, __int128 *a4, int a5, int a6, unsigned __int8 *src, double a8, double a9, double a10)
{
  v130 = *MEMORY[0x277D85DE8];
  if (*a2 == a2[1])
  {
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1AD0);
    }

    v15 = qword_28144B9B0;
    if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134283521;
      *&buf[4] = a8;
      v12 = "Will not retrocompute VO2Max due to absense of VO2MaxInputs, workoutEndTime:%{private}f";
      v13 = v15;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }
  }

  else if (*(*a2 + 27))
  {
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1AD0);
    }

    v11 = qword_28144B9B0;
    if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a8;
      v12 = "Attempting Retrocompute for phone/ipad estimate which is not supported, workoutEndTime:%{private}f";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_24326D000, v13, v14, v12, buf, 0xCu);
    }
  }

  else
  {
    v23 = *a1;
    uuid_copy((*a1 + 48), src);
    v24 = *a4;
    v25 = a4[1];
    v26 = a4[2];
    *(v23 + 568) = *(a4 + 6);
    *(v23 + 536) = v25;
    *(v23 + 552) = v26;
    *(v23 + 520) = v24;
    *(v23 + 856) = a6;
    *v23 = a5;
    *(v23 + 16) = *(*a2 + 4);
    *(v23 + 200) = *(a4 + 1);
    *(v23 + 148) = *(a4 + 6);
    sub_243272568(v23 + 144);
    v27 = a10;
    *(v23 + 144) = v27;
    sub_243272568(v23 + 144);
    *(v23 + 184) = *(v23 + 16);
    *(v23 + 192) = *(v23 + 856);
    v28 = *a2;
    v29 = a2[1];
    if (*a2 != v29)
    {
      do
      {
        sub_2432784A0(v23 + 144, v28, &__p);
        v30 = *(v23 + 928);
        if (v30)
        {
          v31 = *(v23 + 344);
          v105 = *(v23 + 328);
          v106 = v31;
          v107 = *(v23 + 360);
          v108 = *(v23 + 376);
          v32 = *(v23 + 312);
          v103 = *(v23 + 296);
          v104 = v32;
          v33 = *(v23 + 256);
          v126 = *(v23 + 240);
          v127 = v33;
          v128 = *(v23 + 272);
          v129 = *(v23 + 288);
          v34 = *(v23 + 224);
          v124 = *(v23 + 208);
          v125 = v34;
          v35 = *v28;
          v36 = v28[2];
          v115 = v28[1];
          v116 = v36;
          *buf = v35;
          v37 = v28[3];
          v38 = v28[4];
          v39 = v28[6];
          v119 = v28[5];
          v120 = v39;
          v117 = v37;
          v118 = v38;
          v102 = v113;
          v101[2] = v111;
          v101[3] = v112;
          v101[0] = __p;
          v101[1] = v110;
          (*(*v30 + 16))(v30, &v103, &v124, buf, v101);
        }

        v40 = *(v23 + 504);
        v41 = *(v23 + 512);
        if (v40 >= v41)
        {
          v46 = *(v23 + 496);
          v47 = 0x8E38E38E38E38E39 * ((v40 - v46) >> 3);
          v48 = v47 + 1;
          if (v47 + 1 > 0x38E38E38E38E38ELL)
          {
            sub_24326E4AC();
          }

          v49 = 0x8E38E38E38E38E39 * ((v41 - v46) >> 3);
          if (2 * v49 > v48)
          {
            v48 = 2 * v49;
          }

          if (v49 >= 0x1C71C71C71C71C7)
          {
            v50 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            sub_243272358(v23 + 496, v50);
          }

          v51 = 72 * v47;
          *v51 = __p;
          v52 = v110;
          v53 = v111;
          v54 = v112;
          *(v51 + 64) = v113;
          *(v51 + 32) = v53;
          *(v51 + 48) = v54;
          *(v51 + 16) = v52;
          v45 = 72 * v47 + 72;
          v55 = *(v23 + 496);
          v56 = *(v23 + 504) - v55;
          v57 = 72 * v47 - v56;
          memcpy((v51 - v56), v55, v56);
          v58 = *(v23 + 496);
          *(v23 + 496) = v57;
          *(v23 + 504) = v45;
          *(v23 + 512) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v40 = __p;
          v42 = v110;
          v43 = v111;
          v44 = v112;
          *(v40 + 64) = v113;
          *(v40 + 32) = v43;
          *(v40 + 48) = v44;
          *(v40 + 16) = v42;
          v45 = v40 + 72;
        }

        *(v23 + 504) = v45;
        v28 += 7;
      }

      while (v28 != v29);
    }

    *(v23 + 848) = vabdd_f64(*(v23 + 176), *(v23 + 168));
    *&v124 = 0x7FEFFFFFFFFFFFFFLL;
    DWORD2(v124) = 0;
    *&v125 = 0xBFF0000000000000;
    BYTE13(v126) = 0;
    DWORD1(v128) = 0;
    DWORD2(v125) = 0;
    BYTE12(v125) = 0;
    v127 = 0uLL;
    __p = 0uLL;
    *&v110 = 0;
    *&v101[0] = 0;
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *buf = 0u;
    sub_24326EB88(v23, &v124, &__p, v101, buf, a3, 1, a8, a9);
    v60 = *(&__p + 1);
    for (i = __p; i != v60; i += 192)
    {
      uuid_copy(i + 20, (v23 + 48));
      *(i + 4) = *v23;
      *(i + 45) = *(v23 + 856);
      v61 = *(src + 5);
      v62 = *(src + 6);
      if (v61 >= v62)
      {
        v73 = *(src + 4);
        v74 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v73) >> 6);
        v75 = v74 + 1;
        if (v74 + 1 > 0x155555555555555)
        {
          sub_24326E4AC();
        }

        v76 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v73) >> 6);
        if (2 * v76 > v75)
        {
          v75 = 2 * v76;
        }

        if (v76 >= 0xAAAAAAAAAAAAAALL)
        {
          v77 = 0x155555555555555;
        }

        else
        {
          v77 = v75;
        }

        if (v77)
        {
          sub_2432723B4((src + 32), v77);
        }

        v78 = 192 * v74;
        v79 = *i;
        v80 = *(i + 1);
        v81 = *(i + 3);
        *(v78 + 32) = *(i + 2);
        *(v78 + 48) = v81;
        *v78 = v79;
        *(v78 + 16) = v80;
        v82 = *(i + 4);
        v83 = *(i + 5);
        v84 = *(i + 7);
        *(v78 + 96) = *(i + 6);
        *(v78 + 112) = v84;
        *(v78 + 64) = v82;
        *(v78 + 80) = v83;
        v85 = *(i + 8);
        v86 = *(i + 9);
        v87 = *(i + 11);
        *(v78 + 160) = *(i + 10);
        *(v78 + 176) = v87;
        *(v78 + 128) = v85;
        *(v78 + 144) = v86;
        v72 = 192 * v74 + 192;
        v88 = *(src + 4);
        v89 = *(src + 5) - v88;
        v90 = 192 * v74 - v89;
        memcpy((v78 - v89), v88, v89);
        v91 = *(src + 4);
        *(src + 4) = v90;
        *(src + 5) = v72;
        *(src + 6) = 0;
        if (v91)
        {
          operator delete(v91);
        }
      }

      else
      {
        v63 = *i;
        v64 = *(i + 1);
        v65 = *(i + 3);
        v61[2] = *(i + 2);
        v61[3] = v65;
        *v61 = v63;
        v61[1] = v64;
        v66 = *(i + 4);
        v67 = *(i + 5);
        v68 = *(i + 7);
        v61[6] = *(i + 6);
        v61[7] = v68;
        v61[4] = v66;
        v61[5] = v67;
        v69 = *(i + 8);
        v70 = *(i + 9);
        v71 = *(i + 11);
        v61[10] = *(i + 10);
        v61[11] = v71;
        v61[8] = v69;
        v61[9] = v70;
        v72 = (v61 + 12);
      }

      *(src + 5) = v72;
    }

    if (BYTE10(v125))
    {
      uuid_copy(&v118 + 8, (v23 + 48));
      v92 = v121;
      *(src + 152) = v120;
      *(src + 168) = v92;
      *(src + 184) = v122;
      v93 = v117;
      *(src + 88) = v116;
      *(src + 104) = v93;
      v94 = v119;
      *(src + 120) = v118;
      *(src + 136) = v94;
      v95 = v115;
      *(src + 56) = *buf;
      *(src + 50) = v123;
      *(src + 72) = v95;
    }

    sub_24326F798(v23 + 144, v23 + 580);
    v96 = *(v23 + 928);
    if (v96)
    {
      v108 = *(v23 + 288);
      v97 = *(v23 + 272);
      v106 = *(v23 + 256);
      v107 = v97;
      v98 = *(v23 + 240);
      v104 = *(v23 + 224);
      v105 = v98;
      v103 = *(v23 + 208);
      (*(*v96 + 8))(v96, &v103, *(v23 + 856), *(v23 + 16));
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  v99 = *MEMORY[0x277D85DE8];
}

void sub_243272180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_2432721B8()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_28144B9B8 = result;
  return result;
}

void *sub_2432721E8(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_24327222C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_2432722D8(a1);
}

uint64_t sub_2432722D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

os_log_t sub_243272328()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_28144B9B0 = result;
  return result;
}

void sub_243272358(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_24326E59C();
}

void sub_2432723B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_24326E59C();
}

uint64_t sub_24327240C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_243272448(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_243272448(v3);
  }

  return a1;
}

void sub_243272448(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_2432724B4(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[117];
    if (v3)
    {
      sub_243272448(v3);
    }

    v4 = v2[115];
    if (v4)
    {
      sub_243272448(v4);
    }

    v5 = v2[113];
    if (v5)
    {
      sub_243272448(v5);
    }

    v6 = v2[62];
    if (v6)
    {
      v2[63] = v6;
      operator delete(v6);
    }

    v7 = v2[51];
    if (v7)
    {
      v2[52] = v7;
      operator delete(v7);
    }

    v8 = v2[48];
    if (v8)
    {
      v2[49] = v8;
      operator delete(v8);
    }

    sub_24327222C(v2 + 8);

    JUMPOUT(0x245D2DA50);
  }

  return result;
}

void sub_243272568(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4);
  if (*a1 >= 65.0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  v4 = fminf(*a1, 65.0);
  *(a1 + 16) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v2;
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1AF0);
  }

  v5 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_INFO))
  {
    v6 = *a1;
    v8 = 134218496;
    v9 = v6;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v2;
    _os_log_impl(&dword_24326D000, v5, OS_LOG_TYPE_INFO, "VO2Max,HR Bounds,observedRestingHR,%f,fhrHRMin,%f,fhrHRMax,%f", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

os_log_t sub_243272680()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_28144B9B0 = result;
  return result;
}

uint64_t sub_2432726B0(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2432726FC(a1);
  return a1;
}

void sub_2432726FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 128;
  }

  *(a1 + 32) = v6;
LABEL_8:
  *(a1 + 52) = 0;

  uuid_clear((a1 + 56));
}

void sub_243272790(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4 >= 0x79)
  {
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1B10);
    }

    v5 = qword_28144B9B0;
    if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 8) + ((*(a1 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 32) & 0x7FLL) + 8);
      *buf = 67240448;
      *&buf[4] = v6;
      *&buf[8] = 2050;
      *&buf[10] = v7;
      _os_log_impl(&dword_24326D000, v5, OS_LOG_TYPE_INFO, "HRBuffer full (size %{public}d), dropping sample from %{public}lf", buf, 0x12u);
    }

    v8 = vaddq_s64(*(a1 + 32), xmmword_2432791F0);
    *(a1 + 32) = v8;
    if (v8.i64[0] < 0x100uLL)
    {
      v4 = v8.u64[1];
    }

    else
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      v4 = *(a1 + 40);
      *(a1 + 32) -= 128;
    }

    *(a1 + 48) = 0;
  }

  if (v4 && *(*(*(a1 + 8) + (((v4 + *(a1 + 32) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v4 + *(a1 + 32) - 1) & 0x7F) + 8) > *(a2 + 40))
  {
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1B10);
    }

    v9 = qword_28144B9B0;
    v10 = os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEFAULT);
    v4 = *(a1 + 40);
    if (v10)
    {
      v11 = *(a2 + 40);
      v12 = *(*(*(a1 + 8) + (((v4 + *(a1 + 32) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v4 + *(a1 + 32) - 1) & 0x7F) + 8);
      *buf = 134349312;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      _os_log_impl(&dword_24326D000, v9, OS_LOG_TYPE_DEFAULT, "Warning, received out of order HR, new time %{public}lf, previous time %{public}lf", buf, 0x16u);
      v4 = *(a1 + 40);
    }
  }

  v13 = *(a1 + 16);
  v14 = *(a1 + 8);
  v15 = *a2;
  v16 = *(a2 + 40);
  v31 = *(a2 + 8);
  if (v13 == v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = 16 * (v13 - v14) - 1;
  }

  v18 = *(a1 + 32);
  v19 = v4 + v18;
  if (v17 == v4 + v18)
  {
    if (v18 < 0x80)
    {
      v20 = *(a1 + 24);
      v21 = v20 - *a1;
      if (v13 - v14 < v21)
      {
        operator new();
      }

      v22 = v21 >> 2;
      if (v20 == *a1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      sub_243273500(v23);
    }

    *(a1 + 32) = v18 - 128;
    *buf = *v14;
    *(a1 + 8) = v14 + 8;
    sub_2432733FC(a1, buf);
    v14 = *(a1 + 8);
    v4 = *(a1 + 40);
    v19 = v4 + *(a1 + 32);
  }

  v24 = (*&v14[(v19 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v19 & 0x7F));
  v24->i32[0] = v15;
  v24->i64[1] = v16;
  v24[1] = vextq_s8(v31, v31, 8uLL);
  *(a1 + 40) = v4 + 1;
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B10);
  }

  v25 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
  {
    v26 = *a2;
    v27 = *(a2 + 8);
    v28 = *(a2 + 16);
    v29 = *(a2 + 40);
    *buf = 134284289;
    *&buf[4] = v27;
    *&buf[12] = 1026;
    *&buf[14] = v26;
    *&buf[18] = 2049;
    *&buf[20] = v28;
    v33 = 2050;
    v34 = v29;
    _os_log_impl(&dword_24326D000, v25, OS_LOG_TYPE_DEBUG, "HRCollected,hr,%{private}f,source,%{public}d,conf,%{private}f,startTime,%{public}lf\n", buf, 0x26u);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_243272ED8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_243272F0C(double a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  v71 = *MEMORY[0x277D85DE8];
  v19 = *(*&a1 + 40);
  if (!v19)
  {
LABEL_17:
    v31 = 0;
    *(a5 + 32) = 0xFFEFFFFFFFFFFFFFLL;
    *(a5 + 48) = 0xFFEFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

  v12 = a1;
  v20 = *(*&a1 + 32);
  v10 = 2050;
  while (1)
  {
    v21 = *(*&v12 + 8);
    v11 = *(v21 + ((v20 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v20 & 0x7F);
    v22 = *(v11 + 8);
    if (v19 != 1)
    {
      v23 = vabdd_f64(a6, v22);
      if (v23 < 5.0)
      {
        break;
      }
    }

    if (v19 == 1)
    {
      goto LABEL_18;
    }

LABEL_9:
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1B10);
    }

    v24 = qword_28144B9B0;
    if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(v11 + 16);
      v25 = *(v11 + 24);
      v27 = *v11;
      v28 = *(v11 + 8);
      v29 = *(*&v12 + 40);
      *buf = 134284545;
      v49 = v25;
      v50 = 1026;
      v51 = v27;
      v52 = 2050;
      v53 = v26;
      v54 = 2050;
      v55 = v28;
      v56 = 1026;
      LODWORD(v57) = v29;
      _os_log_impl(&dword_24326D000, v24, OS_LOG_TYPE_DEBUG, "HRRejected,hr,%{private}f,source,%{public}d,conf,%{public}f,startTime,%{public}f,bufSize,%{public}d\n", buf, 0x2Cu);
    }

    v30 = vaddq_s64(*(*&v12 + 32), xmmword_2432791F0);
    *(*&v12 + 32) = v30;
    v20 = v30.i64[0];
    if (v30.i64[0] < 0x100uLL)
    {
      v19 = v30.i64[1];
    }

    else
    {
      operator delete(**(*&v12 + 8));
      *(*&v12 + 8) += 8;
      v19 = *(*&v12 + 40);
      v20 = *(*&v12 + 32) - 128;
      *(*&v12 + 32) = v20;
    }

    *(*&v12 + 48) = 0;
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  if (*(*&v12 + 48) == 1 && v23 >= vabdd_f64(a6, *(*(v21 + (((v20 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v20 + 1) & 0x7F) + 8)))
  {
    goto LABEL_9;
  }

LABEL_18:
  v32 = *v11;
  v33 = *(v11 + 16);
  v34 = *(v11 + 24);
  *(*&v12 + 48) = 1;
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B10);
  }

  v35 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
  {
    v36 = *(*&v12 + 40);
    v37 = *(*&v12 + 48);
    if (v36 >= 2)
    {
      v38 = *(*(*(*&v12 + 8) + (((*(*&v12 + 32) + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(*&v12 + 32) + 1) & 0x7F) + 8);
    }

    else
    {
      v38 = 0;
    }

    *buf = 134285569;
    v49 = v34;
    v50 = 1026;
    v51 = v32;
    v52 = 2050;
    v53 = v33;
    v54 = 2050;
    v55 = v22;
    v56 = 2050;
    v57 = a6;
    v58 = 2050;
    v59 = v22;
    v60 = 1026;
    *v61 = v36;
    *&v61[4] = 1026;
    *&v61[6] = v37;
    *v62 = 2050;
    *&v62[2] = v38;
    _os_log_impl(&dword_24326D000, v35, OS_LOG_TYPE_DEBUG, "HRSelected,hr,%{private}f,source,%{public}d,conf,%{public}f,startTime,%{public}f,time,%{public}f,oldestTime,%{public}f,bufSize,%{public}d,fOldestHRUsed,%{public}d,secondSampleTime,%{public}f\n", buf, 0x50u);
  }

  v39 = a7;
  *(a5 + 24) = v39;
  *(a5 + 32) = a6;
  v40 = v33;
  if (v32 == 4)
  {
    v40 = 1.0;
  }

  v41 = v34;
  *(a5 + 40) = v41;
  *(a5 + 44) = v40;
  *(a5 + 48) = v22;
  *(a5 + 64) = a8;
  *(a5 + 56) = a2;
  *(a5 + 72) = a3;
  *(a5 + 73) = 0;
  v42 = *(*&v12 + 52);
  *(a5 + 76) = 0;
  *(a5 + 80) = v42;
  *(a5 + 88) = a9;
  *(a5 + 96) = a10;
  *(a5 + 104) = a4;
  uuid_copy((a5 + 8), (*&v12 + 56));
  v31 = 1;
  *(a5 + 108) = 1;
  *&v10 = v34;
  v12 = v33;
  *&v11 = v22;
LABEL_28:
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B10);
  }

  v43 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134286593;
    v49 = a7;
    v50 = 1024;
    v51 = 0;
    v52 = 2048;
    v53 = a6;
    v54 = 2049;
    v55 = *&v10;
    v56 = 2050;
    v57 = v12;
    v58 = 2050;
    v59 = *&v11;
    v60 = 2049;
    *v61 = a8;
    *&v61[8] = 1025;
    *v62 = a2;
    *&v62[4] = 1025;
    *&v62[6] = a3;
    v63 = 1026;
    v64 = v31;
    v65 = 2049;
    v66 = a9;
    v67 = 2049;
    v68 = a10;
    v69 = 1025;
    v70 = a4;
    _os_log_impl(&dword_24326D000, v43, OS_LOG_TYPE_DEBUG, "MetsCollected,mets,%{private}f,source,%d,metComputeTime,%f,hr,%{private}f,hrConfidence,%{public}f,hrTime,%{public}f,grade,%{private}f,gradeType,%{private}d,gps,%{private}d,valid,%{public}d,cadence,%{private}f,pace,%{private}f,stroller,%{private}d", buf, 0x70u);
  }

  v44 = *MEMORY[0x277D85DE8];
}

os_log_t sub_2432733CC()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_28144B9B0 = result;
  return result;
}

void *sub_2432733FC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_243273500(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_243273500(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_24326E59C();
}

void sub_243273548(uint64_t a1, uint64_t *a2, double **a3, float *a4, uint64_t a5, int a6, float a7, double a8, double a9, double a10)
{
  v10 = a5;
  v247 = *MEMORY[0x277D85DE8];
  if (a7 > 20.0)
  {
    *(a5 + 24) = 0xFFFFFFF7FFFFFFF3;
    *a5 = 0xBFF0000000000000;
    goto LABEL_192;
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = v12 - *a2;
  v15 = 0x8E38E38E38E38E39 * (v14 >> 3);
  if (v15 > 0x31)
  {
    *v223 = 0;
    v224 = 0;
    v225 = 0;
    if (v13 == v12)
    {
      v26 = 0.0;
      v36 = 2.22044605e-16;
      v218 = 2.22044605e-16;
      v24 = 0.0;
      v21 = 0.0;
      v18 = 0.0;
      v37 = 2.22044605e-16;
      v35 = 0.0;
    }

    else
    {
      v18 = 0.0;
      v19 = 1;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      do
      {
        v27 = *(v13 + 16);
        v28 = v27 - v18;
        v18 = v18 + (v27 - v18) / v19;
        v20 = v20 + v28 * (v27 - v18);
        v29 = *(v13 + 24);
        v30 = *(v13 + 32);
        v31 = v29 - v21;
        v21 = v21 + (v29 - v21) / v19;
        v22 = v22 + v31 * (v29 - v21);
        v32 = v30 - v26;
        v26 = v26 + (v30 - v26) / v19;
        v25 = v25 + v32 * (v30 - v26);
        v33 = *(v13 + 40);
        v34 = v33 - v24;
        v24 = v24 + (v33 - v24) / v19;
        v23 = v23 + v34 * (v33 - v24);
        v13 += 72;
        ++v19;
      }

      while (v13 != v12);
      if ((v14 - 72) >= 0x48)
      {
        v38 = ((v14 - 72) / 0x48uLL);
        v218 = sqrt(v20 / v38) + 2.22044605e-16;
        v37 = sqrt(v22 / v38) + 2.22044605e-16;
        v36 = sqrt(v25 / v38) + 2.22044605e-16;
        v35 = v23 / v38;
      }

      else
      {
        v35 = 0.0;
        v36 = 2.22044605e-16;
        v218 = 2.22044605e-16;
        v37 = 2.22044605e-16;
      }
    }

    sub_243276AFC(buf, v15);
    v40 = *a2;
    v39 = a2[1];
    if (*a2 != v39)
    {
      v41 = 0;
      v42 = sqrt(v35) + 2.22044605e-16;
      do
      {
        v43 = *buf + v41;
        v44 = (*(v40 + 16) - v18) / v218;
        v46 = *(*buf + v41 + 8);
        v45 = *(*buf + v41 + 16);
        if (v46 >= v45)
        {
          v48 = *v43;
          v49 = v46 - *v43;
          v50 = (v49 >> 3) + 1;
          if (v50 >> 61)
          {
            sub_24326E4AC();
          }

          v51 = v45 - v48;
          if (v51 >> 2 > v50)
          {
            v50 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v50;
          }

          if (v52)
          {
            sub_24326E4C4(*buf + v41, v52);
          }

          v53 = (8 * (v49 >> 3));
          *v53 = v44;
          v47 = v53 + 1;
          memcpy(0, v48, v49);
          v54 = *v43;
          *v43 = 0;
          *(v43 + 8) = v47;
          *(v43 + 16) = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v46 = v44;
          v47 = v46 + 1;
        }

        *(v43 + 8) = v47;
        v55 = *buf + v41;
        v56 = (*(v40 + 24) - v21) / v37;
        v58 = *(*buf + v41 + 8);
        v57 = *(*buf + v41 + 16);
        if (v58 >= v57)
        {
          v60 = *v55;
          v61 = v58 - *v55;
          v62 = (v61 >> 3) + 1;
          if (v62 >> 61)
          {
            sub_24326E4AC();
          }

          v63 = v57 - v60;
          if (v63 >> 2 > v62)
          {
            v62 = v63 >> 2;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF8)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            sub_24326E4C4(*buf + v41, v64);
          }

          v65 = (8 * (v61 >> 3));
          *v65 = v56;
          v59 = v65 + 1;
          memcpy(0, v60, v61);
          v66 = *v55;
          *v55 = 0;
          *(v55 + 8) = v59;
          *(v55 + 16) = 0;
          if (v66)
          {
            operator delete(v66);
          }
        }

        else
        {
          *v58 = v56;
          v59 = v58 + 1;
        }

        *(v55 + 8) = v59;
        v67 = *buf + v41;
        v68 = (*(v40 + 32) - v26) / v36;
        v70 = *(*buf + v41 + 8);
        v69 = *(*buf + v41 + 16);
        if (v70 >= v69)
        {
          v72 = *v67;
          v73 = v70 - *v67;
          v74 = (v73 >> 3) + 1;
          if (v74 >> 61)
          {
            sub_24326E4AC();
          }

          v75 = v69 - v72;
          if (v75 >> 2 > v74)
          {
            v74 = v75 >> 2;
          }

          if (v75 >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v74;
          }

          if (v76)
          {
            sub_24326E4C4(*buf + v41, v76);
          }

          v77 = (8 * (v73 >> 3));
          *v77 = v68;
          v71 = v77 + 1;
          memcpy(0, v72, v73);
          v78 = *v67;
          *v67 = 0;
          *(v67 + 8) = v71;
          *(v67 + 16) = 0;
          if (v78)
          {
            operator delete(v78);
          }
        }

        else
        {
          *v70 = v68;
          v71 = v70 + 1;
        }

        *(v67 + 8) = v71;
        v79 = *buf + v41;
        v80 = (*(v40 + 40) - v24) / v42;
        v82 = *(*buf + v41 + 8);
        v81 = *(*buf + v41 + 16);
        if (v82 >= v81)
        {
          v84 = *v79;
          v85 = v82 - *v79;
          v86 = (v85 >> 3) + 1;
          if (v86 >> 61)
          {
            sub_24326E4AC();
          }

          v87 = v81 - v84;
          if (v87 >> 2 > v86)
          {
            v86 = v87 >> 2;
          }

          if (v87 >= 0x7FFFFFFFFFFFFFF8)
          {
            v88 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v86;
          }

          if (v88)
          {
            sub_24326E4C4(*buf + v41, v88);
          }

          v89 = (8 * (v85 >> 3));
          *v89 = v80;
          v83 = v89 + 1;
          memcpy(0, v84, v85);
          v90 = *v79;
          *v79 = 0;
          *(v79 + 8) = v83;
          *(v79 + 16) = 0;
          if (v90)
          {
            operator delete(v90);
          }
        }

        else
        {
          *v82 = v80;
          v83 = v82 + 1;
        }

        *(v79 + 8) = v83;
        v40 += 72;
        v41 += 24;
      }

      while (v40 != v39);
    }

    sub_243276AFC(&__src, 4uLL);
    v92 = __src;
    v91 = v227;
    if (__src != v227)
    {
      v93 = 0;
      v94 = *buf;
      v219 = (0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3) - 1) >> 2;
      v95 = **buf;
      do
      {
        ++v93;
        if (*(v94 + 8) != v95)
        {
          v96 = 0;
          v97 = v92[1];
          do
          {
            v98 = *(v94 + 24 * (v93 * v219));
            v99 = v92[2];
            if (v97 >= v99)
            {
              v100 = *v92;
              v101 = v97 - *v92;
              v102 = (v101 >> 3) + 1;
              if (v102 >> 61)
              {
                sub_24326E4AC();
              }

              v103 = v99 - v100;
              if (v103 >> 2 > v102)
              {
                v102 = v103 >> 2;
              }

              if (v103 >= 0x7FFFFFFFFFFFFFF8)
              {
                v104 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v104 = v102;
              }

              if (v104)
              {
                sub_24326E4C4(v92, v104);
              }

              v105 = (8 * (v101 >> 3));
              *v105 = *(v98 + 8 * v96);
              v97 = (v105 + 1);
              memcpy(0, v100, v101);
              v106 = *v92;
              *v92 = 0;
              v92[1] = v97;
              v92[2] = 0;
              if (v106)
              {
                operator delete(v106);
              }
            }

            else
            {
              *v97 = *(v98 + 8 * v96);
              v97 += 8;
            }

            v92[1] = v97;
            ++v96;
            v94 = *buf;
            v95 = **buf;
          }

          while (v96 < (*(*buf + 8) - **buf) >> 3);
          v10 = a5;
        }

        v92 += 3;
      }

      while (v92 != v91);
    }

    *uu1 = 0;
    v245 = 0;
    v246 = 0;
    v107 = sub_24326DBA0(v222, &__src, buf, 4, uu1, v223);
    if (!v107)
    {
      if (qword_28144B9A8 != -1)
      {
        dispatch_once(&qword_28144B9A8, &unk_2855F1B50);
      }

      v108 = qword_28144B9B8;
      if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_ERROR))
      {
        *v222 = 0;
        _os_log_impl(&dword_24326D000, v108, OS_LOG_TYPE_ERROR, "VO2Max,Clustering failed", v222, 2u);
      }
    }

    *v222 = uu1;
    sub_24326E818(v222);
    *uu1 = &__src;
    sub_24326E818(uu1);
    __src = buf;
    sub_24326E818(&__src);
    if (v107)
    {
      sub_243276BA0(&__src);
    }

    *(v10 + 24) = -5;
    if (*v223)
    {
      v224 = *v223;
      operator delete(*v223);
    }
  }

  else
  {
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
    }

    v16 = qword_28144B9B0;
    if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_INFO))
    {
      v17 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3);
      *buf = 134349056;
      *&buf[4] = v17;
      _os_log_impl(&dword_24326D000, v16, OS_LOG_TYPE_INFO, "InsufficientSamplesForClustering,%{public}zu", buf, 0xCu);
    }

    *(v10 + 24) = -1;
  }

  __src = 0;
  v227 = 0;
  v228 = 0;
  v109 = v10;
  v110 = *(v10 + 40);
  v111 = *(v10 + 48);
  v112 = (v10 + 40);
  if (v111 == v110)
  {
    v153 = 0;
    *(v109 + 28) = -9;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
    uuid_copy(buf, (v110 + 20));
    *uu1 = 0;
    v245 = 0;
    v113 = *a3;
    v114 = a3[1];
    if (*a3 != v114)
    {
      v115 = 0;
      do
      {
        if (uuid_compare(v113 + 20, buf))
        {
          v116 = *(v113 + 44);
          if (v116 == 1 || v116 == -1)
          {
            if (uuid_compare(uu1, v113 + 20))
            {
              uuid_copy(uu1, v113 + 20);
              ++v115;
            }

            if (v115 >= 0xB && a9 - v113[1] > 2419200.0)
            {
              break;
            }

            v118 = v227;
            if (v227 >= v228)
            {
              v129 = __src;
              v130 = v227 - __src;
              v131 = 0xAAAAAAAAAAAAAAABLL * ((v227 - __src) >> 6);
              v132 = v131 + 1;
              if (v131 + 1 > 0x155555555555555)
              {
                goto LABEL_198;
              }

              if (0x5555555555555556 * ((v228 - __src) >> 6) > v132)
              {
                v132 = 0x5555555555555556 * ((v228 - __src) >> 6);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v228 - __src) >> 6) >= 0xAAAAAAAAAAAAAALL)
              {
                v132 = 0x155555555555555;
              }

              if (v132)
              {
                sub_2432723B4(&__src, v132);
              }

              v133 = ((v227 - __src) >> 6 << 6);
              v134 = *v113;
              v135 = *(v113 + 1);
              v136 = *(v113 + 3);
              v133[2] = *(v113 + 2);
              v133[3] = v136;
              *v133 = v134;
              v133[1] = v135;
              v137 = *(v113 + 4);
              v138 = *(v113 + 5);
              v139 = *(v113 + 7);
              v133[6] = *(v113 + 6);
              v133[7] = v139;
              v133[4] = v137;
              v133[5] = v138;
              v140 = *(v113 + 8);
              v141 = *(v113 + 9);
              v142 = *(v113 + 11);
              v133[10] = *(v113 + 10);
              v133[11] = v142;
              v133[8] = v140;
              v133[9] = v141;
              v128 = 192 * v131 + 192;
              v143 = v133 - v130;
              memcpy(v133 - v130, v129, v130);
              v144 = __src;
              __src = v143;
              v227 = v128;
              v228 = 0;
              if (v144)
              {
                operator delete(v144);
              }
            }

            else
            {
              v119 = *v113;
              v120 = *(v113 + 1);
              v121 = *(v113 + 3);
              *(v227 + 2) = *(v113 + 2);
              *(v118 + 3) = v121;
              *v118 = v119;
              *(v118 + 1) = v120;
              v122 = *(v113 + 4);
              v123 = *(v113 + 5);
              v124 = *(v113 + 7);
              *(v118 + 6) = *(v113 + 6);
              *(v118 + 7) = v124;
              *(v118 + 4) = v122;
              *(v118 + 5) = v123;
              v125 = *(v113 + 8);
              v126 = *(v113 + 9);
              v127 = *(v113 + 11);
              *(v118 + 10) = *(v113 + 10);
              *(v118 + 11) = v127;
              *(v118 + 8) = v125;
              *(v118 + 9) = v126;
              v128 = (v118 + 24);
            }

            v227 = v128;
          }
        }

        v113 += 24;
      }

      while (v113 != v114);
    }

    v146 = *(a5 + 40);
    v145 = *(a5 + 48);
    v147 = v145 - v146;
    if (v145 - v146 >= 1)
    {
      v148 = v227;
      if ((v228 - v227) >= v147)
      {
        if (v146 == v145)
        {
          v154 = v227;
        }

        else
        {
          v154 = v227;
          do
          {
            v155 = *v146;
            v156 = *(v146 + 1);
            v157 = *(v146 + 3);
            *(v148 + 2) = *(v146 + 2);
            *(v148 + 3) = v157;
            *v148 = v155;
            *(v148 + 1) = v156;
            v158 = *(v146 + 4);
            v159 = *(v146 + 5);
            v160 = *(v146 + 7);
            *(v148 + 6) = *(v146 + 6);
            *(v148 + 7) = v160;
            *(v148 + 4) = v158;
            *(v148 + 5) = v159;
            v161 = *(v146 + 8);
            v162 = *(v146 + 9);
            v163 = *(v146 + 11);
            *(v148 + 10) = *(v146 + 10);
            *(v148 + 11) = v163;
            *(v148 + 8) = v161;
            *(v148 + 9) = v162;
            v146 += 192;
            v148 += 24;
            v154 += 24;
          }

          while (v146 != v145);
        }

        v227 = v154;
      }

      else
      {
        v149 = 0xAAAAAAAAAAAAAAABLL * ((v227 - __src) >> 6);
        v150 = v149 - 0x5555555555555555 * (v147 >> 6);
        if (v150 > 0x155555555555555)
        {
LABEL_198:
          sub_24326E4AC();
        }

        v151 = 0x5555555555555556 * ((v228 - __src) >> 6);
        if (v151 <= v150)
        {
          v151 = v149 - 0x5555555555555555 * (v147 >> 6);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v228 - __src) >> 6) >= 0xAAAAAAAAAAAAAALL)
        {
          v152 = 0x155555555555555;
        }

        else
        {
          v152 = v151;
        }

        if (v152)
        {
          sub_2432723B4(&__src, v152);
        }

        v164 = (v227 - __src) >> 6 << 6;
        v165 = (v164 + v147);
        v166 = v164;
        do
        {
          v167 = *v146;
          v168 = *(v146 + 1);
          v169 = *(v146 + 3);
          v166[2] = *(v146 + 2);
          v166[3] = v169;
          *v166 = v167;
          v166[1] = v168;
          v170 = *(v146 + 4);
          v171 = *(v146 + 5);
          v172 = *(v146 + 7);
          v166[6] = *(v146 + 6);
          v166[7] = v172;
          v166[4] = v170;
          v166[5] = v171;
          v173 = *(v146 + 8);
          v174 = *(v146 + 9);
          v175 = *(v146 + 11);
          v166[10] = *(v146 + 10);
          v166[11] = v175;
          v166[8] = v173;
          v166[9] = v174;
          v166 += 12;
          v146 += 192;
          v147 -= 192;
        }

        while (v147);
        memcpy(v165, v148, v227 - v148);
        v176 = &v165[v227 - v148];
        v227 = v148;
        v177 = v148 - __src;
        v178 = (v164 - (v148 - __src));
        memcpy(v178, __src, v177);
        v179 = __src;
        __src = v178;
        v227 = v176;
        v228 = 0;
        if (v179)
        {
          operator delete(v179);
        }
      }
    }

    v180 = -6;
    if (a3[1] != *a3)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v227 - __src) >> 6) >= 3)
      {
        v180 = 0;
      }

      else
      {
        v180 = -6;
      }
    }

    v109 = a5;
    *(a5 + 28) = v180;
    v153 = v180 == 0;
  }

  if (*(v109 + 24) && !v153)
  {
    *a5 = 0xBFF0000000000000;
    goto LABEL_190;
  }

  *uu1 = 0;
  if (!a6)
  {
    goto LABEL_169;
  }

  *buf = 0;
  a10 = CHVO2MaxPrior::estimatePrior(&__src, a4, uu1, buf, a8, *(a1 + 4));
  if (!*buf)
  {
    *(a5 + 64) = *uu1;
    goto LABEL_169;
  }

  if ([*buf code] == 2)
  {
    v181 = *(a5 + 24);
    if (!v181)
    {
      v181 = -7;
    }

    *(a5 + 24) = v181;
    *(a5 + 28) = -7;
    if (qword_28144B9A0 != -1)
    {
      dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
    }

    v182 = qword_28144B9B0;
    if (!os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_190;
    }

    *v223 = 0;
    v183 = "VO2Max prior failed efficiency calculation. No prior was computed.";
    goto LABEL_168;
  }

  v184 = *buf;
  *(a5 + 64) = *uu1;
  if (!v184 || [v184 code] != 1)
  {
LABEL_169:
    *(a5 + 8) = a10;
    v186 = *(a1 + 4);
    if (qword_28144B9A8 != -1)
    {
      dispatch_once(&qword_28144B9A8, &unk_2855F1B50);
    }

    v187 = qword_28144B9B8;
    v188 = a10 / v186;
    if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEFAULT))
    {
      v189 = a4[4];
      v190 = *a4;
      v191 = a4[1];
      v192 = a4[2];
      v193 = *(a5 + 8);
      *buf = 134285569;
      *&buf[4] = v189;
      *&buf[12] = 1025;
      *&buf[14] = v190;
      v230 = 2049;
      v231 = v191;
      v232 = 2049;
      v233 = v192;
      v234 = 2049;
      v235 = a8;
      v236 = 2049;
      v237 = *uu1;
      v238 = 2049;
      v239 = v193;
      v240 = 2049;
      v241 = v188 * 0.959999979 + 0.00659999996;
      v242 = 2049;
      v243 = v188 * 0.330000013 + -0.023;
      _os_log_impl(&dword_24326D000, v187, OS_LOG_TYPE_DEFAULT, "VO2Max,AdaptiveOutdoorPedestrianModel,ComputePriors,age,%{private}f,biologicalSex,%{private}u,height,%{private}f,weight,%{private}f,maxMets,%{private}f,efficiency,%{private}f,priorVO2Max,%{private}f,modelPriorCoefficient_a,%{private}f,modelPriorCoefficient_b,%{private}f", buf, 0x58u);
    }

    v194 = *(a1 + 16);
    if (v194)
    {
      (*(*v194 + 56))(v194, a4[4], *a4, a4[1], a4[2], a8, *uu1, *(a5 + 8), v188 * 0.959999979 + 0.00659999996, v188 * 0.330000013 + -0.023);
    }

    if (!*(a5 + 24))
    {
      *buf = 0;
      v195 = sub_2432752DC(a1, v112, 0, buf, v188, a10, 1.79769313e308, a9);
      *(a5 + 16) = v195;
      if (v195 == -1.0)
      {
        v196 = -6;
      }

      else
      {
        v196 = 0;
      }

      *(a5 + 24) = v196;
    }

    if (__src != v227)
    {
      v197 = 0uLL;
      v198 = __src;
      do
      {
        v199.f64[0] = v198[9];
        v199.f64[1] = v198[12] / 3.5;
        v197 = vaddq_f64(v197, v199);
        v198 += 24;
      }

      while (v198 != v227);
      *(a5 + 72) = vdivq_f64(v197, vdupq_lane_s64(COERCE__INT64((0xAAAAAAAAAAAAAAABLL * ((v227 - __src) >> 6))), 0));
    }

    *v223 = 0;
    v200 = *a3;
    v201 = a3[1];
    if (*a3 != v201)
    {
      v202 = v200[7];
      v203 = v200[8];
      v204 = v200[9];
      v205 = v204;
      v206 = (v203 - v205) / (v203 - v202);
      v207 = v200[12] / v204;
      log((1.0 - v206));
      v208 = (a9 - v200[1]) / 7776000.0 * -0.5 + 1.0;
      operator new();
    }

    v209 = sub_2432752DC(a1, &__src, 1, v223, v188, a10, 1.79769313e308, a9);
    *a5 = v209;
    if (v209 == -1.0)
    {
      v210 = -6;
    }

    else
    {
      v210 = 0;
      *(a5 + 32) = *v223;
    }

    *(a5 + 28) = v210;
    goto LABEL_190;
  }

  v185 = *(a5 + 24);
  if (!v185)
  {
    v185 = -8;
  }

  *(a5 + 24) = v185;
  *(a5 + 28) = -8;
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
  }

  v182 = qword_28144B9B0;
  if (!os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_190;
  }

  *v223 = 0;
  v183 = "VO2Max failed to calculate a prior due to invalid mean max METs.";
LABEL_168:
  _os_log_impl(&dword_24326D000, v182, OS_LOG_TYPE_ERROR, v183, v223, 2u);
LABEL_190:
  if (__src)
  {
    v227 = __src;
    operator delete(__src);
  }

LABEL_192:
  v211 = *MEMORY[0x277D85DE8];
}

void sub_243275158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  operator delete(v48);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2432752DC(uint64_t a1, void *a2, uint64_t a3, int *a4, double a5, double a6, double a7, double a8)
{
  v9 = a2;
  v82 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *uu1 = 0;
  v76 = 0;
  v11 = (a6 + -32.0) * 0.2;
  v12 = 0.0;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  v13 = 1.0;
  if (v11 <= 1.0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = *a2;
  v16 = a2[1];
  v17 = -1.0;
  if (*a2 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    v73 = a5 * 0.959999979 + 0.00659999996;
    v70 = v14;
    if (a7 == 1.79769313e308)
    {
      v20 = 0;
    }

    else
    {
      v20 = a3;
    }

    v71 = ((1.0 - v14) * 2.5 + v14 * 4.0) * 3.5;
    v72 = a5 * 0.330000013 + -0.023;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      v23 = *(v15 + 9);
      v24 = 0.0;
      if (v23 > 0.0)
      {
        v24 = *(v15 + 12) / v23;
      }

      v25 = *(v15 + 7);
      v26 = *(v15 + 8);
      v27 = v23;
      v28 = (v26 - v27) / (v26 - v25);
      v29 = (1.0 - v28);
      v30 = v24 - (v73 + v72 * log(v29));
      if (*(v15 + 6) <= 0x1DuLL)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v13;
      }

      v32 = v30 > 0.1 || v30 < -0.07;
      if (v32)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v31;
      }

      if (v20)
      {
        v34 = vabdd_f64(v30, a7);
        if (v34 <= 0.05)
        {
          if (v34 > 0.01)
          {
            v33 = v33 * exp2((v34 + -0.01) / -0.01);
          }
        }

        else
        {
          v33 = 0.0;
          v32 = 1;
        }
      }

      v35 = 1.0;
      if (v29 < 0.3)
      {
        v35 = v70 * (v29 / 0.3);
      }

      if (v35 < 0.0)
      {
        v35 = 0.0;
      }

      v36 = v33 * v35;
      if (*(v15 + 12) <= v71)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v36;
      }

      v38 = v37 * exp2((a8 - *(v15 + 1)) / -2694946.97);
      if (v38 > 0.0)
      {
        v21 = v21 + v30 * v38 * v23;
        v22 = v22 + v38;
        v19 = (v19 + 1);
        if (uuid_compare(uu1, v15 + 20))
        {
          uuid_copy(uu1, v15 + 20);
          ++*a4;
        }
      }

      if (qword_28144B9A8 != -1)
      {
        dispatch_once(&qword_28144B9A8, &unk_2855F1B50);
      }

      v39 = qword_28144B9B8;
      if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(v15 + 1);
        v41 = *(v15 + 6);
        v42 = *(v15 + 7);
        v43 = *(v15 + 8);
        v44 = *(v15 + 9);
        v45 = *(v15 + 12);
        v46 = *(v15 + 10);
        v47 = *(v15 + 14);
        v48 = *(v15 + 45);
        *buf = 134221312;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        *&buf[24] = v42;
        *&buf[32] = 2048;
        *&buf[34] = v43;
        *&buf[42] = 2048;
        *&buf[44] = v44;
        *&buf[52] = 2048;
        *&buf[54] = v45;
        *&buf[62] = 2048;
        *v78 = v46;
        *&v78[8] = 2048;
        *&v78[10] = v47;
        *&v78[18] = 2048;
        *&v78[20] = v29;
        *&v78[28] = 2048;
        *&v78[30] = v30;
        *&v78[38] = 1024;
        *&v78[40] = v32;
        *&v78[44] = 2048;
        *&v78[46] = v38;
        *&v78[54] = 1024;
        *&v78[56] = v48;
        *&v78[60] = 1024;
        *&v78[62] = a3;
        _os_log_impl(&dword_24326D000, v39, OS_LOG_TYPE_DEBUG, "VO2Max,AdaptiveOutdoorPedestrianModel,Longitudinal Estimate,ts,%.9f,size,%lld,hrMin,%f,hrMax,%f,hrMean,%f,vo2Mean,%f,hrConfidenceMean,%f,gradeMean,%f,oneMinusFHR,%f,residual,%f,failHistResidCheck,%d,confidence,%f,sessionType,%d,isLongitudinal,%d", buf, 0x82u);
      }

      v49 = *(a1 + 16);
      if (v49)
      {
        v50 = *v15;
        v51 = v15[1];
        v52 = v15[3];
        *&buf[32] = v15[2];
        *&buf[48] = v52;
        *buf = v50;
        *&buf[16] = v51;
        v53 = v15[4];
        v54 = v15[5];
        v55 = v15[7];
        *&v78[32] = v15[6];
        *&v78[48] = v55;
        *v78 = v53;
        *&v78[16] = v54;
        v56 = v15[8];
        v57 = v15[9];
        v58 = v15[11];
        v80 = v15[10];
        v81 = v58;
        *&v78[64] = v56;
        v79 = v57;
        (*(*v49 + 72))(v49, buf, a3, v29, v30, v32, v38);
      }

      v15 += 12;
      v13 = 1.0;
    }

    while (v15 != v16);
    v12 = 0.0;
    if (v22 <= 0.0)
    {
      v17 = -1.0;
    }

    else
    {
      v12 = v21 / v22;
      v17 = v21 / v22 + a6;
    }

    v9 = a2;
  }

  if (qword_28144B9A8 != -1)
  {
    dispatch_once(&qword_28144B9A8, &unk_2855F1B50);
  }

  v59 = qword_28144B9B8;
  if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEFAULT))
  {
    v60 = 0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 6);
    v61 = *a4;
    v62 = *a1;
    v63 = *(a1 + 4);
    *buf = 134219776;
    *&buf[4] = v60;
    *&buf[12] = 1024;
    *&buf[14] = v19;
    *&buf[18] = 1024;
    *&buf[20] = v61;
    *&buf[24] = 2048;
    *&buf[26] = a7;
    *&buf[34] = 2048;
    *&buf[36] = v62;
    *&buf[44] = 2048;
    *&buf[46] = v63;
    *&buf[54] = 2048;
    *&buf[56] = v12;
    *v78 = 2048;
    *&v78[2] = 0x3FB999999999999ALL;
    _os_log_impl(&dword_24326D000, v59, OS_LOG_TYPE_DEFAULT, "VO2Max,AdaptiveOutdoorPedestrianModel,Longitudinal Estimate,numClusters,%lu,numClustersContr,%u,numWorkoutsContr,%u,medianResidual,%f,hrMin,%f,hrMax,%f,meanResidual,%f,clusterResidualBoundsMax,%f", buf, 0x4Au);
  }

  v64 = *(a1 + 16);
  if (v64)
  {
    (*(*v64 + 80))(v64, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 6), v19, *a4, a7, *a1, *(a1 + 4), v12, 0.1);
  }

  v65 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_243275910(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v31 = 0;
  v32 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      if ((*(v2 + 64) & 1) == 0)
      {
        *(v2 + 16) = 0;
      }

      v9 = *(v2 + 8);
      if (v9 == 1.79769313e308 || v9 <= 0.0)
      {
        *(v2 + 8) = *v2;
      }

      v10 = *(v2 + 16);
      if (v10 > 0.0 && !v6)
      {
        v11 = v5;
        v12 = v4;
        if (v4 == v5)
        {
          v11 = v5;
        }

        else
        {
          do
          {
            if (vabds_f32(v10, v12[4]) > 5.0)
            {
              v31 = v4;
              v11 = v4;
            }

            v12 += 18;
          }

          while (v12 != v5);
        }

        if (v11 >= v32)
        {
          v16 = v11 - v4;
          v17 = 0x8E38E38E38E38E39 * ((v11 - v4) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0x38E38E38E38E38ELL)
          {
            sub_24326E4AC();
          }

          if (0x1C71C71C71C71C72 * ((v32 - v4) >> 3) > v18)
          {
            v18 = 0x1C71C71C71C71C72 * ((v32 - v4) >> 3);
          }

          if (0x8E38E38E38E38E39 * ((v32 - v4) >> 3) >= 0x1C71C71C71C71C7)
          {
            v18 = 0x38E38E38E38E38ELL;
          }

          if (v18)
          {
            sub_243272358(&__p, v18);
          }

          v19 = 72 * v17;
          *v19 = *v2;
          v20 = *(v2 + 16);
          v21 = *(v2 + 32);
          v22 = *(v2 + 48);
          *(v19 + 64) = *(v2 + 64);
          *(v19 + 32) = v21;
          *(v19 + 48) = v22;
          *(v19 + 16) = v20;
          v5 = 72 * v17 + 72;
          v23 = (72 * v17 - v16);
          memcpy((v19 - v16), v4, v16);
          v24 = __p;
          __p = v23;
          v31 = v5;
          v32 = 0;
          if (v24)
          {
            operator delete(v24);
            v4 = __p;
          }

          else
          {
            v4 = v23;
          }
        }

        else
        {
          *v11 = *v2;
          v13 = *(v2 + 16);
          v14 = *(v2 + 32);
          v15 = *(v2 + 48);
          *(v11 + 8) = *(v2 + 64);
          *(v11 + 2) = v14;
          *(v11 + 3) = v15;
          *(v11 + 1) = v13;
          v5 = (v11 + 72);
        }

        v31 = v5;
        v6 = 0x8E38E38E38E38E39 * ((v5 - v4) >> 3) > 2;
      }

      v25 = *(v2 + 20);
      if (v25 <= 8.1585)
      {
        *(v2 + 20) = 1085485875;
        v25 = 5.6;
      }

      v27 = *(v2 + 24);
      v26 = *(v2 + 32);
      if (v7 > 15.0 || v26 > 15.0)
      {
        if (v27 >= v8)
        {
          v28 = *(v2 + 24);
        }

        else
        {
          v28 = v8;
        }

        v29 = fmin(v25, (v28 / 2.23693991 * 5.0 + 5.0) * 3.5);
        *(v2 + 20) = v29;
      }

      *(v2 + 32) = fmin(fmax(v26, -0.3), 0.3);
      v2 += 72;
      v7 = v26;
      v8 = v27;
    }

    while (v2 != v3);
    if (v4)
    {
      v31 = v4;
      operator delete(v4);
    }
  }
}

void sub_243275C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_243275C44(float *a1, uint64_t *a2, uint64_t a3, double a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
  }

  v43 = v8;
  v44 = v7;
  v9 = a4 * 0.0004 + 0.018;
  v10 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
  {
    v11 = 954437177 * ((a2[1] - *a2) >> 3);
    *buf = 134219264;
    v52 = a4;
    v53 = 2048;
    v54 = v44;
    v55 = 2048;
    v56 = v8;
    v57 = 2048;
    v58 = a4 * 0.0004 + 0.018;
    v59 = 2048;
    v60 = 0x3F90624DD2F1A9FCLL;
    v61 = 1024;
    v62 = v11;
    _os_log_impl(&dword_24326D000, v10, OS_LOG_TYPE_DEBUG, "prior,%f,hrMin,%f,hrMax,%f,metsResponseRate,%f,metsRecoveryRate,%f,numPairs,%d", buf, 0x3Au);
  }

  *(a3 + 120) = v9;
  *(a3 + 128) = 0x3F90624DD2F1A9FCLL;
  v12 = *a2;
  v13 = a2[1];
  if (v12 != v13)
  {
    v49 = a4 * 1.2;
    v14 = 1.0;
    v48 = 1.0 - v9;
    v42 = (v43 - v44) / (a4 + -3.5);
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      v20 = *(v12 + 20);
      if (v20 > 0.0)
      {
        v21 = *v12;
        if (v19 != 0.0 && v21 >= v19 && v21 <= v19 + 15.0)
        {
          v47 = v17;
          v50 = v18;
          goto LABEL_20;
        }

        if (v18 > 0.0)
        {
          v18 = v18 * pow(0.98, v21 - v19);
        }

        v24 = *(v12 + 16);
        if (v24 > 0.0)
        {
          v47 = v17;
          v50 = v18;
          v25 = v24;
          v26 = (a1[1] - v24) / (a1[1] - *a1);
          v16 = fmax((a4 / v43 * 0.959999979 + 0.00659999996 + (a4 / v43 * 0.330000013 + -0.023) * log((1.0 - v26))) * v25, 5.6);
          v19 = v21 + -2.56;
          v15 = v16;
LABEL_20:
          v27 = v20;
          v28 = v21 - v19;
          v29 = v49 - v15;
          if (v49 - v15 < 3.5)
          {
            v29 = 3.5;
          }

          if (v29 >= v27 - v15)
          {
            v30 = v27 - v15;
          }

          else
          {
            v30 = v29;
          }

          v46 = v15 + (v14 - pow(v48, v28)) * v30;
          v31 = v46;
          *(v12 + 20) = v31;
          v32 = v27 - v16;
          if (v50 > 0.0)
          {
            v32 = v32 + (1.0 - pow(0.98, v28)) * v50;
          }

          v33 = v49 - v16;
          if (v49 - v16 < 3.5)
          {
            v33 = 3.5;
          }

          if (v33 < v32)
          {
            v32 = v33;
          }

          v34 = 0.984;
          if (v30 > 0.0)
          {
            v34 = v48;
          }

          v16 = v16 + (1.0 - pow(v34, v28)) * v32;
          v35 = v47 + v28 * (v27 - v16);
          v17 = 280.0;
          if (v35 <= 280.0)
          {
            v18 = v50;
            v15 = v46;
            if (v35 >= 0.0)
            {
              v17 = v47 + v28 * (v27 - v16);
            }

            else
            {
              v17 = 0.0;
              v18 = fmax(v50 + v35 / 18.0, 0.0);
            }

            v14 = 1.0;
          }

          else
          {
            v18 = v50 + v35 + -280.0;
            v14 = 1.0;
            v15 = v46;
          }

          if (v15 < v16)
          {
            v36 = v43 + -v42 * (a4 - v15);
            if (v36 >= v43)
            {
              v36 = v43;
            }

            if (v36 <= v44)
            {
              v36 = v44;
            }

            v37 = v44 + (v36 - v44) * 0.8;
            v38 = *(v12 + 16);
            if (v37 < v38)
            {
              v39 = v38 - v42 * (v16 - v15);
              if (v37 < v39)
              {
                v37 = v39;
              }

              v40 = v37;
              *(v12 + 16) = v40;
            }
          }

          v19 = v21;
          goto LABEL_50;
        }

        *(v12 + 20) = 0;
      }

LABEL_50:
      v12 += 72;
    }

    while (v12 != v13);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_2432760F4(float *a1, uint64_t *a2, double a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  __src = 0;
  v98 = 0;
  v99 = 0;
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = 0;
    v8 = a3 / v3;
    v9 = v8 * 0.959999979 + 0.00659999996;
    v10 = v8 * 0.330000013 + -0.023;
    while (1)
    {
      v11 = *(v5 + 16);
      if (v11 <= 0.0)
      {
        if (v7 >= v99)
        {
          v15 = __src;
          v16 = v7 - __src;
          v21 = (v7 - __src) >> 3;
          v22 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            sub_24326E4AC();
          }

          v23 = v99 - __src;
          if ((v99 - __src) >> 2 > v22)
          {
            v22 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_24326E4C4(&__src, v24);
          }

          v28 = (v7 - __src) >> 3;
          v29 = (8 * v21);
          v27 = (8 * v21 - 8 * v28);
          *v29 = 0;
          v7 = (v29 + 1);
          goto LABEL_26;
        }

        *v7 = 0;
        v7 += 8;
      }

      else
      {
        v12 = v11;
        v13 = (a1[1] - v11) / (a1[1] - *a1);
        v14 = (v9 + v10 * log((1.0 - v13))) * v12;
        if (v7 >= v99)
        {
          v15 = __src;
          v16 = v7 - __src;
          v17 = (v7 - __src) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_24326E4AC();
          }

          v19 = v99 - __src;
          if ((v99 - __src) >> 2 > v18)
          {
            v18 = v19 >> 2;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            sub_24326E4C4(&__src, v20);
          }

          v25 = (v7 - __src) >> 3;
          v26 = (8 * v17);
          v27 = (8 * v17 - 8 * v25);
          *v26 = fmax(v14, 5.6);
          v7 = (v26 + 1);
LABEL_26:
          memcpy(v27, v15, v16);
          v30 = __src;
          __src = v27;
          v98 = v7;
          v99 = 0;
          if (v30)
          {
            operator delete(v30);
          }

          goto LABEL_28;
        }

        *v7 = fmax(v14, 5.6);
        v7 += 8;
      }

LABEL_28:
      v98 = v7;
      v5 += 72;
      if (v5 == v4)
      {
        v31 = a2;
        v5 = *a2;
        v32 = a2[1];
        goto LABEL_31;
      }
    }
  }

  v32 = *a2;
  v31 = a2;
LABEL_31:
  v93 = 0;
  v33 = 0;
  v34 = 0x8E38E38E38E38E39 * ((v32 - v5) >> 3);
  v35 = v34 - 1;
  v91 = v34;
  v36 = v34 & 0x7FFFFFFF;
  v37 = 1;
  v94 = 0.0;
  v92 = 0.0;
  do
  {
    v96 = v33;
    if (v33)
    {
      if (v93 < 1)
      {
        break;
      }

      v94 = v92 / v93;
    }

    if (v91 >= 1)
    {
      v38 = 0;
      v39 = 0;
      v40 = -1;
      v41 = 0.0;
      v42 = 0.0;
      v43 = -1;
      while (1)
      {
        if (v40 < 0)
        {
          v40 = 0;
        }

        else
        {
          v44 = *(v5 + 72 * v38) + -45.0;
          if (*(v5 + 72 * v40) < v44 && v40 < v35)
          {
            v46 = (v5 + 72 * v40 + 72);
            v47 = (__src + 8 * v40);
            do
            {
              v48 = *(v46 - 13);
              if (v48 > 0.0)
              {
                v49 = v41 - v48;
                if (*v47 > 0.0)
                {
                  --v39;
                  v42 = v42 - *v47;
                  v41 = v49;
                }
              }

              v50 = *v46;
              v46 += 9;
              ++v40;
              ++v47;
            }

            while (v50 < v44 && v35 > v40);
          }
        }

        if (v43 < v35)
        {
          v52 = v35 - v43;
          v53 = (__src + 8 * v43 + 8);
          v54 = (v5 + 72 * v43 + 92);
          while (*(v54 - 5) < *(v5 + 72 * v38) + 45.0)
          {
            if (*v54 > 0.0 && *v53 > 0.0)
            {
              v41 = v41 + *v54;
              v42 = v42 + *v53;
              ++v39;
            }

            ++v43;
            ++v53;
            v54 += 18;
            if (!--v52)
            {
              v43 = v35;
              break;
            }
          }
        }

        if (v39 < 1)
        {
          goto LABEL_101;
        }

        v55 = v39;
        v56 = v41 / v39;
        v57 = v42 / v39;
        v58 = 0.0;
        v59 = 0.0;
        if (v40 <= v43)
        {
          v60 = v43 - v40 + 1;
          v61 = (__src + 8 * v40);
          v62 = 72 * v40 + 20;
          do
          {
            v63 = *(v5 + v62);
            if (v63 > 0.0)
            {
              v64 = *v61;
              if (*v61 > 0.0)
              {
                v65 = v63;
                v58 = v58 + vabdd_f64(v65 - v64, v56 - v57);
                v59 = v59 + vabdd_f64(v65, v56) + vabdd_f64(v64, v57);
              }
            }

            ++v61;
            v62 += 72;
            --v60;
          }

          while (v60);
        }

        v66 = v57 >= v56 ? v41 / v39 : v42 / v39;
        v67 = fmax(v66, 5.6);
        v68 = v58 / v55;
        if ((v37 & 1) == 0)
        {
          break;
        }

        if (qword_28144B9A0 != -1)
        {
          dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
        }

        v69 = qword_28144B9B0;
        if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
        {
          v70 = *(*v31 + 72 * v38 + 20);
          v71 = *(__src + v38);
          *buf = 67111168;
          v101 = v38;
          v102 = 1024;
          *v103 = v39;
          *&v103[4] = 2048;
          *&v103[6] = v56 - v57;
          *&v103[14] = 2048;
          *&v103[16] = v41 / v39;
          *&v103[24] = 2048;
          *&v103[26] = v42 / v39;
          v104 = 2048;
          v105 = v68;
          v106 = 2048;
          v107 = v67;
          v108 = 2048;
          v109 = v70;
          v110 = 2048;
          v111 = v71;
          _os_log_impl(&dword_24326D000, v69, OS_LOG_TYPE_DEBUG, "DynamicsShapeCheck1,%d,wSize,%d,meanOffset,%.2f,meanWRVO2,%.2f,meanHRVO2,%.2f,meanDev,%.3f,meanDemand,%.3f,vo2,%.2f,vo2FromHR,%.2f", buf, 0x54u);
        }

        if (v68 <= v67 * 0.2)
        {
          v5 = *v31;
          v82 = *v31 + 72 * v38;
          v83 = *(v82 + 20);
          if (v83 <= 0.0)
          {
            goto LABEL_101;
          }

          if (*(v82 + 16) <= 0.0)
          {
            goto LABEL_101;
          }

          v84 = *(__src + v38);
          if (v84 <= 0.0)
          {
            goto LABEL_101;
          }

          v92 = v92 + v83 - v84;
          ++v93;
          if (!*(v82 + 68))
          {
            goto LABEL_101;
          }

          if (qword_28144B9A0 != -1)
          {
            dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
          }

          v85 = qword_28144B9B0;
          v81 = 2;
          if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
          {
            v86 = *a2 + 72 * v38;
            v87 = *(v86 + 20);
            v88 = *(v86 + 16);
            v89 = *(__src + v38);
            *buf = 67109888;
            v101 = v38;
            v102 = 2048;
            *v103 = v87;
            *&v103[8] = 2048;
            *&v103[10] = v88;
            *&v103[18] = 2048;
            *&v103[20] = v89;
            _os_log_impl(&dword_24326D000, v85, OS_LOG_TYPE_DEBUG, "DynamicsPassed,%d,vo2,%.2f,hr,%.2f,vo2FromHR,%.2f", buf, 0x26u);
          }

          goto LABEL_92;
        }

        *(__src + v38) = 0;
        v5 = *v31;
        if (*(*v31 + 72 * v38 + 68))
        {
          if (qword_28144B9A0 != -1)
          {
            dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
          }

          v72 = qword_28144B9B0;
          if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109632;
            v101 = v38;
            v102 = 2048;
            *v103 = v68;
            *&v103[8] = 2048;
            *&v103[10] = v67;
            v73 = v72;
            v74 = "DynamicsCheck1Failed,%d,meanDev,%.3f,meanDemand,%.3f";
            v75 = 28;
            goto LABEL_90;
          }

          goto LABEL_91;
        }

LABEL_101:
        if (++v38 == v36)
        {
          goto LABEL_102;
        }
      }

      if ((v96 & 1) == 0)
      {
        goto LABEL_101;
      }

      v76 = v5 + 72 * v38;
      if (*(v76 + 68) != 2)
      {
        goto LABEL_101;
      }

      v77 = v59 / v55;
      if (v68 + v59 / v55 * -0.5 + vabdd_f64(*(v76 + 20) - *(__src + v38), v94) <= v67 * 0.3)
      {
        goto LABEL_101;
      }

      if (qword_28144B9A0 != -1)
      {
        dispatch_once(&qword_28144B9A0, &unk_2855F1B30);
      }

      v78 = qword_28144B9B0;
      if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
      {
        v79 = *(__src + v38);
        v80 = *(*v31 + 72 * v38 + 20);
        *buf = 67110912;
        v101 = v38;
        v102 = 2048;
        *v103 = v80;
        *&v103[8] = 2048;
        *&v103[10] = v79;
        *&v103[18] = 2048;
        *&v103[20] = v94;
        *&v103[28] = 1024;
        *&v103[30] = v39;
        v104 = 2048;
        v105 = v68;
        v106 = 2048;
        v107 = v77;
        v108 = 2048;
        v109 = v67;
        v73 = v78;
        v74 = "DynamicsCheck2Failed,%d,vo2,%.2f,vo2FromHR,%.2f,meanOffsetForSession,%.2f,windowSize,%d,meanDev,%.3f,meanChanges,%.3f,meanDemand,%.3f";
        v75 = 74;
LABEL_90:
        _os_log_impl(&dword_24326D000, v73, OS_LOG_TYPE_DEBUG, v74, buf, v75);
      }

LABEL_91:
      v81 = 1;
LABEL_92:
      v5 = *a2;
      *(*a2 + 72 * v38 + 68) = v81;
      v31 = a2;
      goto LABEL_101;
    }

LABEL_102:
    v37 = 0;
    v33 = 1;
  }

  while ((v96 & 1) == 0);
  if (__src)
  {
    v98 = __src;
    operator delete(__src);
  }

  v90 = *MEMORY[0x277D85DE8];
}

void sub_2432769F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_243276A1C(float *a1, uint64_t *a2, uint64_t a3, double a4)
{
  if (a2[1] != *a2)
  {
    sub_243275910(a1, a2);
    sub_243275C44(a1, a2, a3, a4);

    sub_2432760F4(a1, a2, a4);
  }
}

os_log_t sub_243276A9C()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_28144B9B0 = result;
  return result;
}

os_log_t sub_243276ACC()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_28144B9B8 = result;
  return result;
}

void *sub_243276AFC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24326E658(result, a2);
  }

  return result;
}

void sub_243276BA0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_243276C00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_243276C1C(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  n128_u64 = a2[-1].n128_u64;
  n128_f64 = a2[-2].n128_f64;
  v11 = a2[-3].n128_f64;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v56 = a2[-1].n128_f64[0];
        v55 = a2 - 1;
        result.n128_f64[0] = v56;
        if (v56 >= *v12)
        {
          return result;
        }

LABEL_107:
        v122 = *v12;
        *v12 = *v55;
        result = v122;
LABEL_108:
        *v55 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v57 = (v12 + 16);
      v60 = *(v12 + 16);
      v61 = (v12 + 32);
      v62 = *(v12 + 32);
      if (v60 >= *v12)
      {
        if (v62 < v60)
        {
          result = *v57;
          *v57 = *v61;
          *v61 = result;
          if (*(v12 + 16) < *v12)
          {
            v125 = *v12;
            *v12 = *v57;
            result.n128_u64[1] = v125.n128_u64[1];
            *v57 = v125;
          }
        }
      }

      else
      {
        if (v62 < v60)
        {
          v123 = *v12;
          *v12 = *v61;
          result = v123;
          goto LABEL_177;
        }

        v127 = *v12;
        *v12 = *v57;
        *v57 = v127;
        if (v62 < *(v12 + 16))
        {
          result = *v57;
          *v57 = *v61;
LABEL_177:
          *v61 = result;
        }
      }

      result.n128_u64[0] = *n128_u64;
      if (*n128_u64 >= v61->n128_f64[0])
      {
        return result;
      }

      result = *v61;
      *v61 = *n128_u64;
      *n128_u64 = result;
      result.n128_u64[0] = v61->n128_u64[0];
      if (v61->n128_f64[0] >= v57->n128_f64[0])
      {
        return result;
      }

      result = *v57;
      *v57 = *v61;
      *v61 = result;
LABEL_181:
      result.n128_u64[0] = *(v12 + 16);
      if (result.n128_f64[0] < *v12)
      {
        v128 = *v12;
        *v12 = *v57;
        result = v128;
        *v57 = v128;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_24327773C(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v63 = (v12 + 16);
      v65 = v12 == a2 || v63 == a2;
      if (a4)
      {
        if (!v65)
        {
          v66 = 0;
          v67 = v12;
          do
          {
            v68 = v63;
            result.n128_u64[0] = *(v67 + 16);
            if (result.n128_f64[0] < *v67)
            {
              v69 = *(v67 + 24);
              v70 = v66;
              while (1)
              {
                *(v12 + v70 + 16) = *(v12 + v70);
                if (!v70)
                {
                  break;
                }

                v71 = *(v12 + v70 - 16);
                v70 -= 16;
                if (result.n128_f64[0] >= v71)
                {
                  v72 = (v12 + v70 + 16);
                  goto LABEL_127;
                }
              }

              v72 = v12;
LABEL_127:
              *v72 = result.n128_u64[0];
              v72[1] = v69;
            }

            v63 = v68 + 1;
            v66 += 16;
            v67 = v68;
          }

          while (&v68[1] != a2);
        }
      }

      else if (!v65)
      {
        do
        {
          v99 = v63;
          result.n128_u64[0] = *(a1 + 16);
          if (result.n128_f64[0] < *a1)
          {
            v100 = *(a1 + 24);
            v101 = v63;
            do
            {
              *v101 = v101[-1];
              v102 = v101[-2].n128_f64[0];
              --v101;
            }

            while (result.n128_f64[0] < v102);
            v101->n128_u64[0] = result.n128_u64[0];
            v101->n128_u64[1] = v100;
          }

          ++v63;
          a1 = v99;
        }

        while (&v99[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v73 = (v13 - 2) >> 1;
        v74 = v73;
        do
        {
          v75 = v74;
          if (v73 >= v74)
          {
            v76 = (2 * v74) | 1;
            v77 = (v12 + 16 * v76);
            if (2 * v75 + 2 < v13 && *v77 < v77[2])
            {
              v77 += 2;
              v76 = 2 * v75 + 2;
            }

            v78 = (v12 + 16 * v75);
            v79 = *v78;
            if (*v77 >= *v78)
            {
              v80 = *(v78 + 1);
              do
              {
                v81 = v78;
                v78 = v77;
                *v81 = *v77;
                if (v73 < v76)
                {
                  break;
                }

                v82 = 2 * v76;
                v76 = (2 * v76) | 1;
                v77 = (v12 + 16 * v76);
                v83 = v82 + 2;
                if (v83 < v13 && *v77 < v77[2])
                {
                  v77 += 2;
                  v76 = v83;
                }
              }

              while (*v77 >= v79);
              *v78 = v79;
              *(v78 + 1) = v80;
            }
          }

          v74 = v75 - 1;
        }

        while (v75);
        do
        {
          v84 = 0;
          v124 = *v12;
          v85 = v12;
          do
          {
            v86 = v85;
            v87 = &v85[v84];
            v85 = v87 + 1;
            v88 = 2 * v84;
            v84 = (2 * v84) | 1;
            v89 = v88 + 2;
            if (v89 < v13)
            {
              v91 = v87[2].n128_f64[0];
              v90 = v87 + 2;
              if (v90[-1].n128_f64[0] < v91)
              {
                v85 = v90;
                v84 = v89;
              }
            }

            *v86 = *v85;
          }

          while (v84 <= ((v13 - 2) >> 1));
          if (v85 == --a2)
          {
            result = v124;
            *v85 = v124;
          }

          else
          {
            *v85 = *a2;
            result = v124;
            *a2 = v124;
            v92 = (&v85[1] - v12) >> 4;
            v93 = v92 < 2;
            v94 = v92 - 2;
            if (!v93)
            {
              v95 = v94 >> 1;
              v96 = (v12 + 16 * v95);
              result.n128_u64[0] = v85->n128_u64[0];
              if (v96->n128_f64[0] < v85->n128_f64[0])
              {
                v97 = v85->n128_i64[1];
                do
                {
                  v98 = v85;
                  v85 = v96;
                  *v98 = *v96;
                  if (!v95)
                  {
                    break;
                  }

                  v95 = (v95 - 1) >> 1;
                  v96 = (v12 + 16 * v95);
                }

                while (v96->n128_f64[0] < result.n128_f64[0]);
                v85->n128_u64[0] = result.n128_u64[0];
                v85->n128_u64[1] = v97;
              }
            }
          }

          v93 = v13-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *n128_u64;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v105 = *v14;
          *v14 = *n128_u64;
          *n128_u64 = v105;
          if (*v14 < *v12)
          {
            v106 = *v12;
            *v12 = *v14;
            *v14 = v106;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v103 = *v12;
          *v12 = *n128_u64;
          goto LABEL_26;
        }

        v109 = *v12;
        *v12 = *v14;
        *v14 = v109;
        if (*n128_u64 < *v14)
        {
          v103 = *v14;
          *v14 = *n128_u64;
LABEL_26:
          *n128_u64 = v103;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 2;
      v21 = *(v14 - 2);
      v22 = *n128_f64;
      if (v21 >= *(v12 + 16))
      {
        if (v22 < v21)
        {
          v110 = *v20;
          *v20 = *n128_f64;
          *n128_f64 = v110;
          if (*v20 < *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *n128_f64;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*n128_f64 < *v20)
        {
          v112 = *v20;
          *v20 = *n128_f64;
          v23 = v112;
LABEL_38:
          *n128_f64 = v23;
        }
      }

      v26 = (v12 + 32);
      v28 = v14[2];
      v27 = (v14 + 2);
      v29 = v28;
      v30 = *v11;
      if (v28 >= *(v12 + 32))
      {
        if (v30 < v29)
        {
          v113 = *v27;
          *v27 = *v11;
          *v11 = v113;
          if (*v27 < *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 < *v27)
        {
          v114 = *v27;
          *v27 = *v11;
          v31 = v114;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 >= *v20)
      {
        if (v35 < v34)
        {
          v116 = *v15;
          *v15 = *v27;
          *v27 = v116;
          if (*v15 < *v20)
          {
            v117 = *v20;
            *v20 = *v15;
            *v15 = v117;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v115 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v118 = *v20;
        *v20 = *v15;
        *v15 = v118;
        if (*v27 < *v15)
        {
          v115 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v115;
        }
      }

      v119 = *v12;
      *v12 = *v15;
      result.n128_u64[1] = v119.n128_u64[1];
      *v15 = v119;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 >= *v14)
    {
      if (v16 < v18)
      {
        v107 = *v12;
        *v12 = *n128_u64;
        result.n128_u64[1] = v107.n128_u64[1];
        *n128_u64 = v107;
        if (*v12 < *v14)
        {
          v108 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v108.n128_u64[1];
          *v12 = v108;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v111 = *v14;
      *v14 = *v12;
      result.n128_u64[1] = v111.n128_u64[1];
      *v12 = v111;
      if (*n128_u64 >= *v12)
      {
        goto LABEL_58;
      }

      v104 = *v12;
      *v12 = *n128_u64;
    }

    else
    {
      v104 = *v14;
      *v14 = *n128_u64;
    }

    result.n128_u64[1] = v104.n128_u64[1];
    *n128_u64 = v104;
LABEL_58:
    --a3;
    result.n128_u64[0] = *v12;
    if ((a4 & 1) != 0 || *(v12 - 16) < result.n128_f64[0])
    {
      v36 = 0;
      v37 = *(v12 + 8);
      do
      {
        v38 = *(v12 + v36 + 16);
        v36 += 16;
      }

      while (v38 < result.n128_f64[0]);
      v39 = v12 + v36;
      v40 = a2;
      if (v36 == 16)
      {
        v40 = a2;
        do
        {
          if (v39 >= v40)
          {
            break;
          }

          v42 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v42 >= result.n128_f64[0]);
      }

      else
      {
        do
        {
          v41 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v41 >= result.n128_f64[0]);
      }

      v12 += v36;
      if (v39 < v40)
      {
        v43 = v40;
        do
        {
          v120 = *v12;
          *v12 = *v43;
          *v43 = v120;
          do
          {
            v44 = *(v12 + 16);
            v12 += 16;
          }

          while (v44 < result.n128_f64[0]);
          do
          {
            v45 = v43[-1].n128_f64[0];
            --v43;
          }

          while (v45 >= result.n128_f64[0]);
        }

        while (v12 < v43);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v37;
      if (v39 < v40)
      {
        goto LABEL_79;
      }

      v46 = sub_2432778C0(a1, (v12 - 16), result);
      if (sub_2432778C0(v12, a2, v47))
      {
        a2 = (v12 - 16);
        if (!v46)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v46)
      {
LABEL_79:
        sub_243276C1C(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (result.n128_f64[0] >= *n128_u64)
      {
        v49 = v12 + 16;
        do
        {
          v12 = v49;
          if (v49 >= a2)
          {
            break;
          }

          v49 += 16;
        }

        while (result.n128_f64[0] >= *v12);
      }

      else
      {
        do
        {
          v48 = *(v12 + 16);
          v12 += 16;
        }

        while (result.n128_f64[0] >= v48);
      }

      v50 = a2;
      if (v12 < a2)
      {
        v50 = a2;
        do
        {
          v51 = v50[-1].n128_f64[0];
          --v50;
        }

        while (result.n128_f64[0] < v51);
      }

      v52 = *(a1 + 8);
      while (v12 < v50)
      {
        v121 = *v12;
        *v12 = *v50;
        *v50 = v121;
        do
        {
          v53 = *(v12 + 16);
          v12 += 16;
        }

        while (result.n128_f64[0] >= v53);
        do
        {
          v54 = v50[-1].n128_f64[0];
          --v50;
        }

        while (result.n128_f64[0] < v54);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      a4 = 0;
      *(v12 - 16) = result.n128_u64[0];
      *(v12 - 8) = v52;
    }
  }

  v57 = (v12 + 16);
  result.n128_u64[0] = *(v12 + 16);
  v58 = a2[-1].n128_f64[0];
  v55 = a2 - 1;
  v59 = v58;
  if (result.n128_f64[0] >= *v12)
  {
    if (v59 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v57;
    *v57 = *v55;
    *v55 = result;
    goto LABEL_181;
  }

  if (v59 < result.n128_f64[0])
  {
    goto LABEL_107;
  }

  v126 = *v12;
  *v12 = *v57;
  result.n128_u64[1] = v126.n128_u64[1];
  *v57 = v126;
  result.n128_u64[0] = v55->n128_u64[0];
  if (v55->n128_f64[0] < *(v12 + 16))
  {
    result = *v57;
    *v57 = *v55;
    goto LABEL_108;
  }

  return result;
}

__n128 sub_24327773C(__n128 *a1, double *a2, double *a3, _OWORD *a4, unint64_t *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
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
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < a1->n128_f64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u64[0] = *a4;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f64[0] = *a3;
      if (*a3 < *a2)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_f64[0] = *a2;
        if (*a2 < a1->n128_f64[0])
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

BOOL sub_2432778C0(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = a2[-1].n128_f64[0];
      n128_f64 = a2[-1].n128_f64;
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*n128_f64 >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *n128_f64;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *n128_f64;
LABEL_13:
        *n128_f64 = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *n128_f64;
      *n128_f64 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_24327773C(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2[-1].n128_f64;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (*v20 >= v18->n128_f64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_f64[0];
    n128_f64 = a2[-1].n128_f64;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_f64[0];
    if (v30->n128_f64[0] < v11->n128_f64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      *(v37 + 8) = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

double CHVO2MaxPrior::estimatePrior(double **a1, uint64_t a2, double *a3, void *a4, double a5, double a6)
{
  v52 = *MEMORY[0x277D85DE8];
  *a3 = 0.0;
  v6 = *a1;
  v7 = a1[1];
  v8 = qword_28144B9A8;
  if (*a1 == v7)
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = v6[8];
      v12 = v6[9];
      v13 = v6[7];
      v14 = v6[12];
      if (v8 != -1)
      {
        dispatch_once(&qword_28144B9A8, &unk_2855F1B70);
      }

      v15 = fmin((v12 - v13) / (v11 - v13), 1.0);
      v16 = v14 / 3.5;
      v17 = qword_28144B9B8;
      if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289539;
        *v47 = 0;
        *&v47[4] = 2082;
        *&v47[6] = &unk_243279961;
        *&v47[14] = 2049;
        *&v47[16] = v15;
        *&v47[24] = 2049;
        *&v47[26] = v16;
        _os_log_impl(&dword_24326D000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:VO2Max,ComputeEfficiency, fhr:%{private}f, mets:%{private}f}", buf, 0x26u);
        v8 = qword_28144B9A8;
      }

      else
      {
        v8 = -1;
      }

      if (v15 >= 0.1)
      {
        v18 = (v16 + -1.0) / v15;
        if (v18 > 20.0)
        {
          v18 = 20.0;
        }

        v9 = v9 + v18;
        v10 = v10 + 1.0;
      }

      v6 += 24;
    }

    while (v6 != v7);
  }

  v19 = v9 / v10;
  if (v10 <= 0.0)
  {
    v19 = 0.0;
  }

  *a3 = v19;
  if (v8 != -1)
  {
    dispatch_once(&qword_28144B9A8, &unk_2855F1B70);
  }

  v20 = qword_28144B9B8;
  if (os_log_type_enabled(qword_28144B9B8, OS_LOG_TYPE_DEBUG))
  {
    v21 = "false";
    v22 = *a3;
    *buf = 68289539;
    if (v10 > 0.0)
    {
      v21 = "true";
    }

    *v47 = 0;
    *&v47[4] = 2082;
    *&v47[6] = &unk_243279961;
    *&v47[14] = 2081;
    *&v47[16] = v21;
    *&v47[24] = 2049;
    *&v47[26] = v22;
    _os_log_impl(&dword_24326D000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:VO2Max,ComputeEfficiency, canCalculateEfficiency:%{private, location:escape_only}s, efficiency:%{private}f}", buf, 0x26u);
  }

  if (v10 <= 0.0)
  {
    *a3 = 10.0;
    v24 = 10.0;
    v23 = 2;
  }

  else
  {
    v23 = 0;
    v24 = *a3;
  }

  if (a5 <= 0.0)
  {
    v25 = 4.0;
  }

  else
  {
    v25 = a5;
  }

  if (a5 <= 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = 0.5;
  if (*a2 == 2)
  {
    v27 = 0.0;
  }

  if (*a2 == 1)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v27;
  }

  v29 = (*(a2 + 8) / (*(a2 + 4) * *(a2 + 4)));
  v30 = *(a2 + 16);
  v31 = ((v30 * -0.0007) + 0.1935) + v28 * -0.0277999993 + v29 * -0.00150000001 + v25 * 0.00520000001 + v24 * 0.00669600023;
  if (v31 * a6 > 40.0)
  {
    v32 = ((v30 * 0.00009) + 0.0772) + v28 * -0.0148 + v29 * -0.00120000006 + v25 * 0.00930000003 + v24 * 0.0125239994;
    if (v32 > v31)
    {
      v31 = v31 + fmin((v31 * a6 + -40.0) / 5.0, 1.0) * (v32 - v31);
    }
  }

  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B90);
  }

  v33 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a2 + 16);
    *buf = 134219264;
    v35 = *(a2 + 8);
    v36 = *(a2 + 4) * *(a2 + 4);
    *v47 = v34;
    *&v47[8] = 2048;
    *&v47[10] = v28;
    *&v47[18] = 2048;
    *&v47[20] = (v35 / v36);
    *&v47[28] = 2048;
    *&v47[30] = v25;
    v48 = 2048;
    v49 = v24;
    v50 = 2048;
    v51 = v31;
    _os_log_impl(&dword_24326D000, v33, OS_LOG_TYPE_DEBUG, "age,%.0f,sex1F0M,%.1f,BMI,%.1f,maxMets,%.2f,efficiency,%.2f,prior,%.4f", buf, 0x3Eu);
  }

  if (a4 && v26)
  {
    v44 = *MEMORY[0x277CCA450];
    v45 = @"Default values used for either efficiency or Mean Max METs. See error code for details.";
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CHErrorDomain" code:v26 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1)}];
  }

  v37 = *MEMORY[0x277D85DE8];
  return v31 * a6;
}

double CHVO2MaxPrior::estimatePhoneBasedPriorFromDailyInputs(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v12 = 1;
    v8 = 0.0;
    v7 = 0.0;
    v11 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = *(v3 + 24);
      if (v9 > -1.0)
      {
        ++v5;
      }

      if (v9 > -1.0 && v7 < v9)
      {
        v7 = *(v3 + 24);
      }

      v10 = *(v3 + 40);
      if (v10 > -1.0)
      {
        ++v6;
      }

      if (v10 > -1.0 && v8 < v10)
      {
        v8 = *(v3 + 40);
      }

      v3 += 56;
    }

    while (v3 != v4);
    v11 = v5 < 5;
    v12 = v6 < 5;
  }

  v13 = 1.0;
  if (!v11 || v7 >= 1.0)
  {
    v13 = v7;
  }

  v14 = 4.0;
  if (!v12 || v8 >= 4.0)
  {
    v14 = v8;
  }

  v15 = 66.0;
  if (a3 != 0.0)
  {
    v15 = a3;
  }

  return CHVO2MaxPrior::estimatePhoneBasedPrior(a2, v13, v14, v15);
}

double CHVO2MaxPrior::estimatePhoneBasedPrior(uint64_t a1, double a2, double a3, double a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = 0.0;
  if (*a1 == 1)
  {
    v7 = 1.0;
  }

  v8 = (a4 + -66.304949) / 10.402563;
  v9 = 0x40418345F9DF548FLL;
  LOBYTE(v9) = *(a1 + 44);
  v10 = (*(a1 + 16) + -50.798117) / 18.417043 * -4.458056 + 35.025573 + v9 * -8.799588 + (a2 + -9.625523) / 22.740925 * 1.738659 + (a3 + -11.870293) / 19.226343 * 1.227672 + ((*(a1 + 8) / (*(a1 + 4) * *(a1 + 4))) + -26.723352) / 5.188199 * -2.385802 + v7 * -4.701047;
  if (qword_28144B9A0 != -1)
  {
    dispatch_once(&qword_28144B9A0, &unk_2855F1B90);
  }

  v11 = v10 + v8 * -2.668202;
  v12 = qword_28144B9B0;
  if (os_log_type_enabled(qword_28144B9B0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 52);
    v14 = *(a1 + 54);
    v15 = *(a1 + 53);
    v18[0] = 68290563;
    v18[1] = 0;
    v19 = 2082;
    v20 = &unk_243279961;
    v21 = 2049;
    v22 = v11;
    v23 = 2049;
    v24 = a2;
    v25 = 2049;
    v26 = a3;
    v27 = 1026;
    v28 = v13;
    v29 = 1026;
    v30 = v14;
    v31 = 1026;
    v32 = v15;
    _os_log_impl(&dword_24326D000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Phone Based Prior, result:%{private}.3f, runningTimeMax:%{private}.2f, hikingTimeMax:%{private}.2f, isAgeSet:%{public}hhd, isWeightSet:%{public}hhd, isHeightSet:%{public}hhd}", v18, 0x42u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

os_log_t sub_243278440()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_28144B9B8 = result;
  return result;
}

os_log_t sub_243278470()
{
  result = os_log_create("com.apple.locationd.Motion", "VO2Max");
  qword_28144B9B0 = result;
  return result;
}

void sub_2432784A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  *a3 = *(a2 + 32);
  *(a3 + 8) = v6;
  *&v6 = *(a2 + 24) * 3.5;
  *(a3 + 16) = *(a2 + 40);
  *(a3 + 20) = v6;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 49) = 0u;
  v7 = *(a1 + 80);
  *(a1 + 152) = *(a1 + 64);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  *(a1 + 168) = v7;
  *(a1 + 216) = *(a1 + 128);
  *(a3 + 68) = 0;
  *(a1 + 232) = *(a1 + 144);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  v10 = *(a1 + 24);
  v11 = *(a2 + 32);
  if (v10 < 0.0)
  {
    v10 = *(a2 + 32);
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  ++*(a1 + 64);
  v12 = *(a2 + 56);
  v13 = *(a1 + 72);
  if (v12)
  {
    ++v13;
  }

  *(a1 + 72) = v13;
  if (v12)
  {
    v14 = *(a2 + 64);
    v15 = v14 > -0.02;
    if (*(a1 + 288) == 1)
    {
      v15 = v14 < 0.02 && v14 > -0.02;
    }

    *(a1 + 76) += v15;
    v16 = *(a1 + 128);
    if (fabs(v14) > 0.0525)
    {
      ++v16;
    }

    *(a1 + 128) = v16;
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a2 + 88);
  v17 = *(a2 + 96);
  if (v17 <= 0.0)
  {
    goto LABEL_24;
  }

  v19 = *(a2 + 80);
  v20 = *(a1 + 56) * 39.3700981;
  v21 = fmax((v20 + -59.0) * 0.0375 + 4.2, 4.2);
  if (v21 > 4.8)
  {
    v21 = 4.8;
  }

  v22 = v17 > 0.0;
  if (2.23693991 / v21 <= v17)
  {
    v22 = 0;
  }

  v23 = v18 * 60.0 > 140.0 || v22;
  if (*(a1 + 48) == 3 && (v23 & 1) != 0)
  {
LABEL_24:
    v23 = 0;
  }

  else if (v19 > 0x12 || ((1 << v19) & 0x60004) == 0)
  {
    v23 = 1;
  }

  v24 = *(a2 + 48);
  v25 = v24 == 0.0;
  *(a1 + 96) += v23;
  v26 = v24 <= 0.0 || v24 == 1.79769313e308;
  v27 = *(a2 + 32);
  if (v26)
  {
    v24 = *(a2 + 32);
  }

  if (vabdd_f64(v24, v27) < 5.0)
  {
    v25 = 1;
  }

  *(a1 + 132) += v25;
  if (v25 == 1)
  {
    v28.i32[0] = *(a2 + 40);
    v29 = *(a2 + 44);
    v30.i32[0] = *(a1 + 12);
    v31 = (v30.f32[0] - v28.f32[0]) / (v30.f32[0] - *(a1 + 8));
    v32 = 1.0 - v31;
    v34 = v32 > 0.0 && v29 > 0.35;
    v30.i32[1] = *(a2 + 40);
    v28.i32[1] = *(a1 + 8);
    *(a1 + 120) = vsub_s32(*(a1 + 120), vcgt_f32(v28, v30));
    if (v29 >= 0.6 && v32 >= *(a1 + 336))
    {
      *(a1 + 344) = v24;
      v27 = *(a2 + 32);
    }
  }

  else
  {
    v34 = 0;
  }

  *(a3 + 64) = v34;
  v35 = *(a1 + 88);
  *(a1 + 92) += v34;
  *(a1 + 100) += *(a2 + 96) <= 0.0 || (*(a2 + 104) & 1) == 0;
  v36 = *(a1 + 84) + *(a2 + 73);
  *(a1 + 80) += *(a2 + 72);
  *(a1 + 84) = v36;
  if (*(a2 + 76))
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 1;
  }

  *(a1 + 88) = v37;
  v38 = *(a1 + 116);
  if (*(a2 + 24) > 2.5)
  {
    ++v38;
  }

  *(a1 + 116) = v38;
  v39 = *(a1 + 272);
  v40 = *(a1 + 280);
  if (v39 >= v40)
  {
    v43 = *(a1 + 264);
    v44 = v39 - v43;
    v45 = (v39 - v43) >> 4;
    v46 = v45 + 1;
    if ((v45 + 1) >> 60)
    {
      goto LABEL_133;
    }

    v47 = v40 - v43;
    if (v47 >> 3 > v46)
    {
      v46 = v47 >> 3;
    }

    if (v47 >= 0x7FFFFFFFFFFFFFF0)
    {
      v48 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v46;
    }

    if (v48)
    {
      sub_243278DD8(v48);
    }

    v49 = (16 * v45);
    v50 = 0.0;
    if (v18 <= 0.0)
    {
      v50 = 1.0;
    }

    *v49 = v27;
    *(16 * v45 + 8) = v50;
    v42 = v49 + 2;
    memcpy(0, v43, v44);
    v51 = *(a1 + 264);
    *(a1 + 264) = 0;
    *(a1 + 272) = v42;
    *(a1 + 280) = 0;
    if (v51)
    {
      operator delete(v51);
    }
  }

  else
  {
    v41 = 0.0;
    if (v18 <= 0.0)
    {
      v41 = 1.0;
    }

    *v39 = v27;
    v39[1] = v41;
    v42 = v39 + 2;
  }

  *(a1 + 272) = v42;
  v52 = *(a1 + 264);
  if (v52 != v42)
  {
    v53 = *(a2 + 32);
    v54 = *(a1 + 264);
    while (vabdd_f64(v53, *v54) <= 122.56)
    {
      v54 += 2;
      if (v54 == v42)
      {
        goto LABEL_81;
      }
    }

    if (v54 != v42)
    {
      for (i = v54 + 2; i != v42; i += 2)
      {
        if (vabdd_f64(v53, *i) <= 122.56)
        {
          *v54 = *i;
          v54[1] = i[1];
          v54 += 2;
        }
      }
    }

    if (v54 != v42)
    {
      *(a1 + 272) = v54;
      v42 = v54;
    }
  }

LABEL_81:
  if (v52 == v42)
  {
    goto LABEL_85;
  }

  v56 = 0;
  do
  {
    v56 = (*(v52 + 8) + v56);
    v52 += 16;
  }

  while (v52 != v42);
  if (v56 <= 9)
  {
LABEL_85:
    ++*(a1 + 112);
    v57 = 1;
  }

  else
  {
    v57 = 0;
  }

  v58 = *(a2 + 32);
  v59 = *(a1 + 40) + 120.0;
  v60 = *(a1 + 68);
  if (v58 > v59)
  {
    ++v60;
  }

  *(a1 + 68) = v60;
  if (v15 & v23 & v34)
  {
    if (v58 <= v59)
    {
      v57 = 0;
    }

    ++*(a1 + 104);
    v61 = *(a2 + 64);
    v62 = *(a1 + 296);
    *(a1 + 296) = v62 + 1;
    if (v62)
    {
      v63 = *(a1 + 304);
      v64 = v61 - v63;
      v65 = v63 + (v61 - v63) / (v62 + 1);
      v66 = *(a1 + 320);
      *(a1 + 304) = v65;
      *(a1 + 312) = v65;
      v67 = v66 + v64 * (v61 - v65);
      *(a1 + 320) = v67;
      *(a1 + 328) = v67;
      if (v57)
      {
LABEL_94:
        *(a3 + 68) = 2;
        ++*(a1 + 108);
        goto LABEL_98;
      }
    }

    else
    {
      *(a1 + 304) = v61;
      *(a1 + 312) = v61;
      *(a1 + 320) = 0;
      if (v57)
      {
        goto LABEL_94;
      }
    }

    *(a3 + 68) = 1;
  }

  else
  {
    v61 = *(a2 + 64);
  }

LABEL_98:
  v68 = *(a2 + 88);
  v69 = v61 * 100.0;
  *(a3 + 24) = 2.23693991 / *(a2 + 96);
  *(a3 + 32) = v61 * 100.0;
  *(a3 + 48) = *(a2 + 44);
  *(a3 + 56) = v68;
  v70 = *(a2 + 32);
  v72 = *(a1 + 248);
  v71 = *(a1 + 256);
  if (v72 >= v71)
  {
    v74 = *(a1 + 240);
    v75 = v72 - v74;
    v76 = (v72 - v74) >> 4;
    v77 = v76 + 1;
    if (!((v76 + 1) >> 60))
    {
      v78 = v71 - v74;
      if (v78 >> 3 > v77)
      {
        v77 = v78 >> 3;
      }

      if (v78 >= 0x7FFFFFFFFFFFFFF0)
      {
        v79 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = v77;
      }

      if (v79)
      {
        sub_243278DD8(v79);
      }

      v80 = 16 * v76;
      *v80 = v70;
      *(v80 + 8) = v69;
      v73 = 16 * v76 + 16;
      memcpy(0, v74, v75);
      v81 = *(a1 + 240);
      *(a1 + 240) = 0;
      *(a1 + 248) = v73;
      *(a1 + 256) = 0;
      if (v81)
      {
        operator delete(v81);
      }

      goto LABEL_110;
    }

LABEL_133:
    sub_24326E4AC();
  }

  *v72 = v70;
  *(v72 + 8) = v69;
  v73 = v72 + 16;
LABEL_110:
  *(a1 + 248) = v73;
  v82 = *(a1 + 240);
  if (v82 == v73)
  {
    goto LABEL_123;
  }

  v83 = *(a2 + 32);
  v84 = *(a1 + 240);
  while (vabdd_f64(v83, *v84) <= 62.56)
  {
    v84 += 16;
    if (v84 == v73)
    {
      goto LABEL_123;
    }
  }

  if (v84 != v73)
  {
    for (j = v84 + 16; j != v73; j += 16)
    {
      if (vabdd_f64(v83, *j) <= 62.56)
      {
        *v84 = *j;
        *(v84 + 8) = *(j + 8);
        v84 += 16;
      }
    }
  }

  if (v84 == v73)
  {
LABEL_123:
    v84 = v73;
  }

  else
  {
    *(a1 + 248) = v84;
    v73 = v84;
  }

  v86 = 0.0;
  if (vabdd_f64(*(v73 - 16), *v82) >= 60.0)
  {
    if (v82 == v73)
    {
      goto LABEL_129;
    }

    v87 = v84 - v82;
    v88 = 1;
    v89 = 0.0;
    do
    {
      v90 = v82[1];
      v91 = v90 - v89;
      v89 = v89 + (v90 - v89) / v88;
      v86 = v86 + v91 * (v90 - v89);
      v82 += 2;
      ++v88;
    }

    while (v82 != v73);
    if ((v87 - 16) < 0x10)
    {
LABEL_129:
      v92 = 2.22044605e-16;
    }

    else
    {
      v92 = v86 / ((v87 - 16) >> 4) + 2.22044605e-16;
    }

    v86 = sqrt(v92);
  }

  *(a3 + 40) = v86;
}

__n128 sub_243278CB0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 288);
  memset(&v8[4], 0, 32);
  *a1 = xmmword_2432791A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 40) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3FFB333340000000;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v4 = (a1 + 240);
  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
    operator delete(v3);
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v5 = *(a1 + 264);
  if (v5)
  {
    *(a1 + 272) = v5;
    operator delete(v5);
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = v2;
  *(a1 + 296) = 0;
  *(a1 + 332) = 0;
  result = *v8;
  *(a1 + 300) = *v8;
  *(a1 + 316) = *&v8[16];
  *(a1 + 336) = 1050253722;
  *(a1 + 344) = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_243278DD8(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_24326E59C();
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

void operator new()
{
    ;
  }
}