void sub_94E874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_94E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_94E8B0(uint64_t a1@<X0>, unint64_t ***a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 24);
  if ((v4 - 2) >= 2)
  {
    if (v4 != 1)
    {
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 40) = -1;
      *(a4 + 43) = -1;
      *(a4 + 47) = 0;
      *(a4 + 55) = 0;
      *(a4 + 63) = 0;
      *(a4 + 71) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      return;
    }

    v12 = ***a2;
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) > v12)
    {
      v14 = sub_3A25A8(*(a1 + 40), __ROR8__(*(*a3 + 48 * v12 + 24), 32), 0, "trip");
      v15 = sub_92FC60(*(a1 + 40), *(v14 + *(v14 - *v14 + 6)), 0, "line");
      v16 = *(v15 + *(v15 - *v15 + 6));
      v17 = *(a1 + 24);

      sub_9A809C(v17, v16, a4);
      return;
    }

LABEL_12:
    sub_6FAB4();
  }

  v6 = ***a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v6)
  {
    goto LABEL_12;
  }

  v8 = sub_3A25A8(*(a1 + 40), __ROR8__(*(*a3 + 48 * v6 + 24), 32), 0, "trip");
  v9 = *(v8 + *(v8 - *v8 + 6));
  v10 = *(a1 + 40);

  sub_9A7CF4(v10, v9, a4);
}

void sub_94EA7C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = **a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v5)
  {
    sub_6FAB4();
  }

  v8 = *a3 + 48 * v5;
  v9 = *(v8 + 36);
  v10 = __ROR8__(*(v8 + 24), 32);
  v11 = sub_3A231C(a1[5], v10, 0);
  v12 = &v11[-*v11];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v13 += &v11[*&v11[v13]];
    }
  }

  v14 = (v13 + 4 * HIDWORD(v10) + 4 + *(v13 + 4 * HIDWORD(v10) + 4));
  v15 = (v14 - *v14);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = *(v14 + v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = *&v11[24 * (v17 + v9) + 4 + *(v12 + 3) + *&v11[*(v12 + 3)]];
  v19 = sub_3A25A8(a1[5], v10, 0, "trip");
  v20 = *(a2 + 24);
  if (v20 <= 1)
  {
    if (!*(a2 + 24))
    {
      v29 = sub_502FF8(a1[4], v18, 0, "stop");
      v30 = sub_93D480(a1[4], *(v29 + *(v29 - *v29 + 12)), 0, "station");
      v31 = (v30 - *v30);
      if (*v31 >= 9u && (v32 = v31[4]) != 0)
      {
        v33 = (v30 + v32 + *(v30 + v32));
        memset(&v75, 0, sizeof(v75));
        sub_943AEC(&v75, *v33);
        v77 = v33 + 1;
        v76 = &v33[*v33 + 1];
        sub_943E24(&v77, &v76, &v75, sub_509164);
        v34 = *&v75.__r_.__value_.__l.__data_;
        v35 = v75.__r_.__value_.__r.__words[2];
      }

      else
      {
        v35 = 0;
        v34 = 0uLL;
      }

      *__p = v34;
      v74 = v35;
      sub_94F690(a4, a1, __p);
      v42 = __p[0];
      if (__p[0])
      {
        v49 = __p[1];
        v44 = __p[0];
        if (__p[1] == __p[0])
        {
          goto LABEL_73;
        }

        do
        {
          v50 = *(v49 - 3);
          if (v50)
          {
            v51 = *(v49 - 2);
            v52 = *(v49 - 3);
            if (v51 != v50)
            {
              do
              {
                if (*(v51 - 1) < 0)
                {
                  operator delete(*(v51 - 24));
                }

                v51 -= 32;
              }

              while (v51 != v50);
              v52 = *(v49 - 3);
            }

            *(v49 - 2) = v50;
            operator delete(v52);
          }

          v53 = (v49 - 64);
          if (*(v49 - 41) < 0)
          {
            operator delete(*v53);
          }

          v49 -= 64;
        }

        while (v53 != v42);
        goto LABEL_72;
      }

      return;
    }

    if (v20 == 1)
    {
      v21 = sub_502FF8(a1[4], v18, 0, "stop");
      v22 = sub_93D2F4(a1[4], *(v21 + *(v21 - *v21 + 10)), 0, "hall");
      v23 = (v22 - *v22);
      if (*v23 >= 9u && (v24 = v23[4]) != 0)
      {
        v25 = (v22 + v24 + *(v22 + v24));
        memset(&v75, 0, sizeof(v75));
        sub_943AEC(&v75, *v25);
        v77 = v25 + 1;
        v76 = &v25[*v25 + 1];
        sub_943E24(&v77, &v76, &v75, sub_509164);
        v26 = *&v75.__r_.__value_.__l.__data_;
        v27 = v75.__r_.__value_.__r.__words[2];
      }

      else
      {
        v27 = 0;
        v26 = 0uLL;
      }

      *__p = v26;
      v74 = v27;
      sub_94F690(a4, a1, __p);
      v42 = __p[0];
      if (__p[0])
      {
        v43 = __p[1];
        v44 = __p[0];
        if (__p[1] == __p[0])
        {
          goto LABEL_73;
        }

        do
        {
          v45 = *(v43 - 3);
          if (v45)
          {
            v46 = *(v43 - 2);
            v47 = *(v43 - 3);
            if (v46 != v45)
            {
              do
              {
                if (*(v46 - 1) < 0)
                {
                  operator delete(*(v46 - 24));
                }

                v46 -= 32;
              }

              while (v46 != v45);
              v47 = *(v43 - 3);
            }

            *(v43 - 2) = v45;
            operator delete(v47);
          }

          v48 = (v43 - 64);
          if (*(v43 - 41) < 0)
          {
            operator delete(*v48);
          }

          v43 -= 64;
        }

        while (v48 != v42);
LABEL_72:
        v44 = __p[0];
LABEL_73:
        __p[1] = v42;
LABEL_74:
        operator delete(v44);
        return;
      }

      return;
    }

LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  if (v20 != 2)
  {
    if (v20 == 3)
    {
      v28 = *(v19 + *(v19 - *v19 + 6));
      if (byte_27B18F0[23] < 0)
      {
        sub_325C(&v75, *byte_27B18F0, *&byte_27B18F0[8]);
      }

      else
      {
        v75 = *byte_27B18F0;
      }

      v59 = sub_92FC60(a1[5], v28, 0, "line");
      v60 = (v59 - *v59);
      if (*v60 >= 0x2Bu && (v61 = v60[21]) != 0)
      {
        v62 = *(v59 + v61);
      }

      else
      {
        v62 = 2;
      }

      sub_9CBE3C(v62, __p);
      size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v75;
      }

      else
      {
        v64 = v75.__r_.__value_.__r.__words[0];
      }

      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v75.__r_.__value_.__l.__size_;
      }

      if (size >= 6)
      {
        v65 = v64 + size;
        v66 = v64;
        do
        {
          v67 = memchr(v66, 123, size - 5);
          if (!v67)
          {
            break;
          }

          if (*v67 == 1685015931 && *(v67 + 2) == 32101)
          {
            if (v67 != v65 && v67 - v64 != -1)
            {
              if (v74 >= 0)
              {
                v69 = __p;
              }

              else
              {
                v69 = __p[0];
              }

              if (v74 >= 0)
              {
                v70 = HIBYTE(v74);
              }

              else
              {
                v70 = __p[1];
              }

              std::string::replace(&v75, v67 - v64, 6uLL, v69, v70);
            }

            break;
          }

          v66 = (v67 + 1);
          size = v65 - v66;
        }

        while (v65 - v66 >= 6);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p[0]);
      }

      v71 = sub_9274F4(a1[8], &v75);
      if (*(v71 + 23) < 0)
      {
        sub_325C(a4, *v71, v71[1]);
      }

      else
      {
        v72 = *v71;
        *(a4 + 16) = v71[2];
        *a4 = v72;
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        v44 = v75.__r_.__value_.__r.__words[0];
        goto LABEL_74;
      }

      return;
    }

    goto LABEL_20;
  }

  v36 = sub_502FF8(a1[4], v18, 0, "stop");
  v37 = (v36 - *v36);
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = (v36 + v38 + *(v36 + v38));
    memset(&v75, 0, sizeof(v75));
    sub_943AEC(&v75, *v39);
    v77 = v39 + 1;
    v76 = &v39[*v39 + 1];
    sub_943E24(&v77, &v76, &v75, sub_509164);
    v40 = *&v75.__r_.__value_.__l.__data_;
    v41 = v75.__r_.__value_.__r.__words[2];
  }

  else
  {
    v41 = 0;
    v40 = 0uLL;
  }

  *__p = v40;
  v74 = v41;
  sub_94F690(a4, a1, __p);
  v42 = __p[0];
  if (__p[0])
  {
    v54 = __p[1];
    v44 = __p[0];
    if (__p[1] == __p[0])
    {
      goto LABEL_73;
    }

    do
    {
      v55 = *(v54 - 3);
      if (v55)
      {
        v56 = *(v54 - 2);
        v57 = *(v54 - 3);
        if (v56 != v55)
        {
          do
          {
            if (*(v56 - 1) < 0)
            {
              operator delete(*(v56 - 24));
            }

            v56 -= 32;
          }

          while (v56 != v55);
          v57 = *(v54 - 3);
        }

        *(v54 - 2) = v55;
        operator delete(v57);
      }

      v58 = (v54 - 64);
      if (*(v54 - 41) < 0)
      {
        operator delete(*v58);
      }

      v54 -= 64;
    }

    while (v58 != v42);
    goto LABEL_72;
  }
}

void sub_94F1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_94F278(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = **a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v5)
  {
    sub_6FAB4();
  }

  v8 = sub_3A25A8(*(a1 + 40), __ROR8__(*(*a3 + 48 * v5 + 24), 32), 0, "trip");
  if (*(a2 + 24) == 3)
  {
    v9 = *(v8 + *(v8 - *v8 + 6));
    strcpy(&__s, "Pinned_{Mode}_Lines");
    HIDWORD(__s.__r_.__value_.__r.__words[2]) = unk_22A49C4;
    v10 = sub_92FC60(*(a1 + 40), v9, 0, "line");
    v11 = (v10 - *v10);
    if (*v11 >= 0x2Bu && (v12 = v11[21]) != 0)
    {
      v13 = *(v10 + v12);
    }

    else
    {
      v13 = 2;
    }

    sub_9CBE3C(v13, __p);
    p_s = &__s;
    v15 = (dword_10 + 3);
    do
    {
      v16 = memchr(p_s, 123, (v15 - 5));
      if (!v16)
      {
        break;
      }

      if (*v16 == 1685015931 && *(v16 + 2) == 32101)
      {
        if (v16 != &__s.__r_.__value_.__r.__words[2] + 3 && v16 - &__s != -1)
        {
          if ((v23 & 0x80u) == 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          if ((v23 & 0x80u) == 0)
          {
            v19 = v23;
          }

          else
          {
            v19 = __p[1];
          }

          std::string::replace(&__s, v16 - &__s, 6uLL, v18, v19);
        }

        break;
      }

      p_s = (v16 + 1);
      v15 = (&__s.__r_.__value_.__r.__words[2] + 3 - p_s);
    }

    while (&__s.__r_.__value_.__r.__words[2] + 3 - p_s >= 6);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = sub_9274F4(*(a1 + 64), &__s);
    if (*(v20 + 23) < 0)
    {
      sub_325C(a4, *v20, v20[1]);
    }

    else
    {
      v21 = *v20;
      *(a4 + 16) = v20[2];
      *a4 = v21;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

void sub_94F490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_94F4E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  strcpy(&__s, "NearbyVehicle_{Mode}");
  __s.__r_.__value_.__s.__data_[21] = unk_22A49DD;
  HIWORD(__s.__r_.__value_.__r.__words[2]) = unk_22A49DE;
  sub_9CBE3C(a2, __p);
  p_s = &__s;
  v6 = dword_14;
  do
  {
    v7 = memchr(p_s, 123, (v6 - 5));
    if (!v7)
    {
      break;
    }

    if (*v7 == 1685015931 && *(v7 + 2) == 32101)
    {
      if (v7 != &__s.__r_.__value_.__r.__words[2] + 4 && v7 - &__s != -1)
      {
        if ((v14 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v14 & 0x80u) == 0)
        {
          v10 = v14;
        }

        else
        {
          v10 = __p[1];
        }

        std::string::replace(&__s, v7 - &__s, 6uLL, v9, v10);
      }

      break;
    }

    p_s = (v7 + 1);
    v6 = (&__s.__r_.__value_.__r.__words[2] + 4 - p_s);
  }

  while (&__s.__r_.__value_.__r.__words[2] + 4 - p_s >= 6);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_9274F4(*(a1 + 64), &__s);
  if (*(v11 + 23) < 0)
  {
    sub_325C(a3, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    *(a3 + 16) = v11[2];
    *a3 = v12;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_94F640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_94F690(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  nullsub_1(&v10);
  sub_9D6590(a3, *(a2 + 8) + 968, &__p);
  sub_9D43A4(&__p, a1);
  v6 = __p;
  if (__p)
  {
    v7 = v12;
    v8 = __p;
    if (v12 == __p)
    {
LABEL_11:
      v12 = v6;
      operator delete(v8);
      return;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_9:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = __p;
        goto LABEL_11;
      }
    }
  }
}

void sub_94F760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94F774(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_933CC4(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_94F7D8(void *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 152 * v2;
  __p = 0;
  v16 = v6;
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
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 48) = v7;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(v6 + 144) = *(a2 + 144);
  v8 = *a1;
  v9 = a1[1];
  v10 = 152 * v2 + *a1 - v9;
  v17 = 152 * v2 + 152;
  sub_94F9C0(a1, v8, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  __p = v11;
  v16 = v11;
  sub_94FBB8(&__p, v11);
  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_94F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_94FB80(va);
  _Unwind_Resume(a1);
}

void sub_94F9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *(a4 + 16) = *(v4 + 16);
      *a4 = v5;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      v6 = *(v4 + 24);
      *(a4 + 40) = *(v4 + 40);
      *(a4 + 24) = v6;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      v7 = *(v4 + 64);
      *(a4 + 48) = *(v4 + 48);
      *(a4 + 64) = v7;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v4 + 72);
      *(a4 + 88) = *(v4 + 88);
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v4 + 96);
      *(a4 + 112) = *(v4 + 112);
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v4 + 120);
      *(a4 + 136) = *(v4 + 136);
      *(v4 + 120) = 0;
      *(v4 + 128) = 0;
      *(v4 + 136) = 0;
      *(a4 + 144) = *(v4 + 144);
      v4 += 152;
      a4 += 152;
    }

    while (v4 != a3);
  }

  sub_94FAE0(a1, a2, a3);
}

void sub_94FAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; i += 152)
    {
      v5 = *(i + 120);
      if (v5)
      {
        *(i + 128) = v5;
        operator delete(v5);
      }

      v6 = *(i + 96);
      if (v6)
      {
        *(i + 104) = v6;
        operator delete(v6);
      }

      v7 = *(i + 72);
      if (v7)
      {
        *(i + 80) = v7;
        operator delete(v7);
      }

      if (*(i + 47) < 0)
      {
        operator delete(*(i + 24));
        if (*(i + 23) < 0)
        {
LABEL_14:
          operator delete(*i);
        }
      }

      else if (*(i + 23) < 0)
      {
        goto LABEL_14;
      }
    }
  }
}

uint64_t sub_94FB80(uint64_t a1)
{
  sub_94FBB8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_94FBB8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    v5 = *(i - 32);
    if (v5)
    {
      *(i - 24) = v5;
      operator delete(v5);
    }

    v6 = *(i - 56);
    if (v6)
    {
      *(i - 48) = v6;
      operator delete(v6);
    }

    v7 = *(i - 80);
    if (v7)
    {
      *(i - 72) = v7;
      operator delete(v7);
    }

    if (*(i - 105) < 0)
    {
      operator delete(*(i - 128));
      if (*(i - 129) < 0)
      {
LABEL_14:
        operator delete(*(i - 152));
      }
    }

    else if (*(i - 129) < 0)
    {
      goto LABEL_14;
    }
  }
}

void **sub_94FC68(void **a1)
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
        v3 = sub_399184(v3 - 456);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_94FCC4(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_936CE0(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_94FE10(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_933D54(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_94FDFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94FFA4(va);
  _Unwind_Resume(a1);
}

void sub_94FE10(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v10 = v4 + v7;
      v11 = v6 + v7;
      v12 = *(v4 + v7);
      *(v11 + 16) = *(v4 + v7 + 16);
      *v11 = v12;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      *(v6 + v7 + 24) = 0;
      *(v11 + 56) = -1;
      v13 = *(v4 + v7 + 56);
      if (v13 != -1)
      {
        v17 = v6 + v7 + 24;
        (off_266DDC8[v13])(&v17, v10 + 24);
        *(v11 + 56) = v13;
      }

      *(v11 + 64) = *(v10 + 64);
      v8 = *(v10 + 72);
      *(v11 + 88) = *(v10 + 88);
      *(v11 + 72) = v8;
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 72) = 0;
      *(v11 + 96) = *(v10 + 96);
      v9 = *(v10 + 104);
      *(v11 + 120) = *(v10 + 120);
      *(v11 + 104) = v9;
      *(v10 + 112) = 0;
      *(v10 + 120) = 0;
      *(v10 + 104) = 0;
      *(v11 + 128) = *(v10 + 128);
      *(v11 + 144) = 0;
      *(v11 + 152) = 0;
      *(v11 + 136) = 0;
      *(v11 + 136) = *(v10 + 136);
      *(v11 + 152) = *(v10 + 152);
      *(v10 + 136) = 0;
      *(v10 + 144) = 0;
      *(v10 + 152) = 0;
      v7 += 160;
    }

    while (v10 + 160 != v5);
    do
    {
      sub_933D54(v4);
      v4 += 160;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t sub_94FFA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_933D54(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_94FFF8()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B1908 = 0u;
  unk_27B1918 = 0u;
  dword_27B1928 = 1065353216;
  sub_3A9A34(&xmmword_27B1908, v0);
  sub_3A9A34(&xmmword_27B1908, v3);
  sub_3A9A34(&xmmword_27B1908, __p);
  sub_3A9A34(&xmmword_27B1908, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B1898 = 0;
    qword_27B18A0 = 0;
    qword_27B1890 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_950310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B18A8)
  {
    qword_27B18B0 = qword_27B18A8;
    operator delete(qword_27B18A8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9506CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9509A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::random_device::~random_device(&a9);
  sub_939D44(v17 + 40);
  _Unwind_Resume(a1);
}

void sub_9509DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_950A04(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0x27FFFFFFFLL;
  *a3 = &off_266DB00;
  a3[2] = 0;
  v6 = a3 + 2;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0x7FFFFFFFFFFFFFFFLL;
  if (*(a2 + 744) == *(a2 + 752) && *(a2 + 768) != 1)
  {
    v7 = sub_9514B8(a1 + 2616, a1 + 104, (a1 + 2616));
  }

  else
  {
    v7 = sub_9514B8(a1 + 2608, a1 + 104, (a1 + 2608));
  }

  *(a3 + 2) = 10 * v7;
  a3[5] = *(a1 + 16);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_9DE520(a1 + 24, (a2 + 744), &__p, &v16);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v6 != &v16)
  {
    sub_950BEC(v6, v16, v17, 0x193D4BB7E327A977 * ((v17 - v16) >> 3));
  }

  v8 = v16;
  if (v16)
  {
    v9 = v16;
    if (v17 != v16)
    {
      v10 = v17 - 568;
      do
      {
        sub_938500(v10 + 3);
        v12 = *v10;
        if (*v10)
        {
          *(v10 + 1) = v12;
          operator delete(v12);
        }

        v11 = v10 == v8;
        v10 -= 568;
      }

      while (!v11);
      v9 = v16;
    }

    v17 = v8;
    operator delete(v9);
  }
}

void sub_950B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_951434(va);
  sub_939CA4(v4);
  _Unwind_Resume(a1);
}

void sub_950BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_939CA4(v10);
  _Unwind_Resume(a1);
}

void sub_950BEC(uint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0x193D4BB7E327A977 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        v12 = v10 - 568;
        do
        {
          sub_938500((v12 + 24));
          v14 = *v12;
          if (*v12)
          {
            *(v12 + 8) = v14;
            operator delete(v14);
          }

          v13 = v12 == v9;
          v12 -= 568;
        }

        while (!v13);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x73615A240E6C2BLL)
    {
      v21 = 0x193D4BB7E327A977 * (v8 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x39B0AD12073615)
      {
        v23 = 0x73615A240E6C2BLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x73615A240E6C2BLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1] - v9;
  if (0x193D4BB7E327A977 * (v15 >> 3) >= a4)
  {
    sub_950F60(a2, a3, v9);
    v17 = v16;
    v18 = a1[1];
    if (v18 != v16)
    {
      v19 = v18 - 568;
      do
      {
        sub_938500((v19 + 24));
        v20 = *v19;
        if (*v19)
        {
          *(v19 + 8) = v20;
          operator delete(v20);
        }

        v13 = v19 == v17;
        v19 -= 568;
      }

      while (!v13);
    }

    a1[1] = v17;
  }

  else
  {
    sub_950F60(a2, a2 + v15, v9);

    sub_950E20(a1, (a2 + v15), a3);
  }
}

void *sub_950E20(void *result, void *a2, void *a3)
{
  v3 = result;
  v10 = result[1];
  if (a2 == a3)
  {
    v6 = result[1];
  }

  else
  {
    v5 = a2 + 3;
    v6 = result[1];
    do
    {
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v8 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = v5 - 3;
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      result = sub_938270(v6 + 3, v5);
      v6[70] = v5[67];
      v6 = (v10 + 568);
      v10 += 568;
      v5 += 71;
    }

    while (v9 + 71 != a3);
  }

  v3[1] = v6;
  return result;
}

void sub_950F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  sub_938484(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_950F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = (a3 + v6);
    v8 = a1 + v6;
    if (a1 == a3)
    {
      v7[3] = *(v8 + 24);
      sub_594568((v7 + 4), v8 + 32);
      sub_594568((v7 + 27), v8 + 216);
      sub_594568((v7 + 47), v8 + 376);
    }

    else
    {
      sub_31F64((a3 + v6), *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
      v7[3] = *(v8 + 24);
      sub_594568((v7 + 4), v8 + 32);
      sub_5F9F30(v7 + 24, *(v8 + 192), *(v8 + 200), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 200) - *(v8 + 192)) >> 5));
      sub_594568((v7 + 27), v8 + 216);
      sub_594568((v7 + 47), v8 + 376);
      sub_95109C(v7 + 67, *(v8 + 536), *(v8 + 544), (*(v8 + 544) - *(v8 + 536)) >> 5);
    }

    *(a3 + v6 + 560) = *(a1 + v6 + 560);
    v6 += 568;
  }

  while (a1 + v6 != v5);
  return v5;
}

void sub_95109C(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
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

    if (!(a4 >> 59))
    {
      v27 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v29 = 0x7FFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v25 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v25 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = *v5;
            }

            if (v25 >= 0)
            {
              v24 = *(v5 + 23);
            }

            else
            {
              v24 = v5[1];
            }

            sub_13B38(v8, v23, v24);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v26 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v26;
          }
        }

        *(v8 + 24) = *(v5 + 24);
        v5 += 4;
        v8 += 32;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 9);
      v13 -= 4;
      if (v33 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[v5];
        if (v5 != v8)
        {
          v21 = *(v20 + 23);
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v21 >= 0)
            {
              v18 = *(v20 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = v20[2];
            *v19 = v22;
          }
        }

        v19[24] = *(v20 + 24);
        v16 += 32;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v34 = v13;
    v30 = v13;
    if (v15 != a3)
    {
      v30 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v30, *v15, *(v15 + 1));
          v32 = v34;
        }

        else
        {
          v31 = *v15;
          v30[2] = *(v15 + 2);
          *v30 = v31;
          v32 = v30;
        }

        *(v30 + 24) = v15[24];
        v15 += 32;
        v30 = v32 + 4;
        v34 = v32 + 4;
      }

      while (v15 != a3);
    }

    a1[1] = v30;
  }
}

void sub_951404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_95141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void **sub_951434(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 568;
      do
      {
        sub_938500(v5 + 3);
        v7 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v7;
          operator delete(v7);
        }

        v6 = v5 == v2;
        v5 -= 568;
      }

      while (!v6);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_9514B8(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  result = a3[1];
  if (result != *a3)
  {
    v5 = 0xB5026F5AA96619E9;
    v6 = result - *a3 + 1;
    if (result - *a3 == -1)
    {
      v16 = *(a2 + 2496);
      v17 = (v16 + 1) % 0x138uLL;
      if ((*(a2 + 8 * v17) & 1) == 0)
      {
        v5 = 0;
      }

      v18 = v5 ^ *(a2 + 8 * ((v16 + 156) % 0x138uLL)) ^ ((*(a2 + 8 * v17) & 0x7FFFFFFELL | *(a2 + 8 * v16) & 0xFFFFFFFF80000000) >> 1);
      *(a2 + 8 * v16) = v18;
      *(a2 + 2496) = v17;
      v19 = (((v18 >> 29) & 0x555555555 ^ v18) << 17) & 0x71D67FFFEDA60000 ^ (v18 >> 29) & 0x555555555 ^ v18;
      return (((v19 << 37) & 0xFFF7E80000000000 ^ v19) >> 43) ^ v19;
    }

    else
    {
      v7 = __clz(v6);
      v8 = -32;
      if (((v6 << v7) & 0x7FFFFFFF) == 0)
      {
        v8 = -31;
      }

      v9 = 0xFFFFFFFFFFFFFFFFLL >> (v8 + (v7 | 0x40u));
      v10 = *(a2 + 2496);
      do
      {
        v11 = v10;
        v10 = (v10 + 1) % 0x138;
        if (*(a2 + 8 * v10))
        {
          v12 = 0xB5026F5AA96619E9;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12 ^ *(a2 + 8 * ((v11 + 156) % 0x138)) ^ ((*(a2 + 8 * v10) & 0x7FFFFFFELL | *(a2 + 8 * v11) & 0xFFFFFFFF80000000) >> 1);
        *(a2 + 8 * v11) = v13;
        v14 = (((v13 >> 29) & 0x555555555 ^ v13) << 17) & 0x71D67FFFEDA60000 ^ (v13 >> 29) & 0x555555555 ^ v13;
        v15 = ((((v14 << 37) & 0xFFF7E80000000000 ^ v14) >> 43) ^ v14) & v9;
      }

      while (v6 <= v15);
      *(a2 + 2496) = v10;
      return v4 + v15;
    }
  }

  return result;
}

void sub_951658()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B1960 = 0u;
  *algn_27B1970 = 0u;
  dword_27B1980 = 1065353216;
  sub_3A9A34(&xmmword_27B1960, v0);
  sub_3A9A34(&xmmword_27B1960, v3);
  sub_3A9A34(&xmmword_27B1960, __p);
  sub_3A9A34(&xmmword_27B1960, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B1938 = 0;
    qword_27B1940 = 0;
    qword_27B1930 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9518A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1948)
  {
    qword_27B1950 = qword_27B1948;
    operator delete(qword_27B1948);
  }

  _Unwind_Resume(exception_object);
}

void sub_951BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_951D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_951D6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &off_266DA70;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = xmmword_22983D0;
  *(a3 + 8) = *(a1 + 16);
  *(a3 + 12) = 2;
  v6 = *(a2 + 632) - *(a2 + 624);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 600);
  v8 = *(a2 + 608);
  if (v7 != v8)
  {
    v9 = *(a2 + 648);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 656) - v9) >> 4);
    do
    {
      v11 = *v7;
      v12 = v7[1];
      while (v11 != v12)
      {
        if (*(v11 + 24) == 3)
        {
          v13 = *v11;
          v14 = *(v11 + 8);
          while (v13 != v14)
          {
            if (v10 <= *v13)
            {
              sub_6FAB4();
            }

            v15 = (v9 + 48 * *v13);
            v16 = *v15;
            for (i = v15[1]; v16 != i; *((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v18)
            {
              v18 = *v16++;
            }

            ++v13;
          }
        }

        v11 += 56;
      }

      v7 += 4;
    }

    while (v7 != v8);
  }

  if (*(a2 + 632) != *(a2 + 624))
  {
    sub_9521B8(a1, *(a2 + 624), *(a2 + 596), 1, __p);
  }

  v19 = *(a2 + 648);
  v20 = *(a2 + 656);
  if (v19 != v20)
  {
    while (1)
    {
      sub_952B18(a1, v19, __p);
      v21 = *(a3 + 48);
      if (v21 < *(a3 + 56))
      {
        break;
      }

      v24 = sub_956068((a3 + 40), __p);
      v25 = SHIBYTE(v33);
      *(a3 + 48) = v24;
      if (v25 < 0)
      {
        operator delete(v32);
        sub_934E08(&v29);
        v23 = __p[0];
        if (!__p[0])
        {
          goto LABEL_22;
        }

LABEL_28:
        __p[1] = v23;
        operator delete(v23);
        goto LABEL_22;
      }

      sub_934E08(&v29);
      v23 = __p[0];
      if (__p[0])
      {
        goto LABEL_28;
      }

LABEL_22:
      v19 += 48;
      if (v19 == v20)
      {
        goto LABEL_31;
      }
    }

    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *v21 = 0;
    *(v21 + 8) = 0;
    *v21 = *__p;
    *(v21 + 16) = v28;
    __p[0] = 0;
    __p[1] = 0;
    v28 = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 0;
    *(v21 + 24) = v29;
    *(v21 + 40) = v30;
    v29 = 0uLL;
    v30 = 0;
    *(v21 + 48) = v31;
    v22 = v32;
    *(v21 + 72) = v33;
    *(v21 + 56) = v22;
    v33 = 0;
    v32 = 0uLL;
    *(a3 + 48) = v21 + 80;
    sub_934E08(&v29);
    v23 = __p[0];
    if (!__p[0])
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_31:
  v26 = *(a1 + 32);
  *(a3 + 64) = *v26;
  *(a3 + 68) = v26[1];
  *(a3 + 72) = v26[2];
  *(a3 + 76) = sub_953098(a1, a2);
}

void sub_952154(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  sub_939808(v1);
  _Unwind_Resume(a1);
}

void sub_9521B8(uint64_t *a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 48) = 0x8000000080000000;
  *(a5 + 56) = -1;
  v8 = (a5 + 56);
  *(a5 + 72) = 0u;
  v9 = a5 + 72;
  *(a5 + 64) = -1;
  *(a5 + 200) = 0;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 208) = -1;
  *(a5 + 211) = -1;
  *(a5 + 223) = 0;
  *(a5 + 215) = 0;
  *(a5 + 239) = 0;
  *(a5 + 231) = 0;
  *(a5 + 248) = 0;
  *(a5 + 272) = 0;
  *(a5 + 256) = 0;
  *(a5 + 264) = 0;
  *(a5 + 280) = -1;
  *(a5 + 288) = 0;
  *(a5 + 296) = 0;
  *(a5 + 304) = 0;
  v10 = sub_3A25A8(a1[8], a2[1] | (*a2 << 32), 0, "trip");
  v11 = *(v10 + *(v10 - *v10 + 6));
  v12 = *a2;
  v13 = a2[3];
  v14 = sub_3A231C(a1[8], a2[1] | (v12 << 32), 0);
  v15 = &v14[-*v14];
  if (*v15 < 5u)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 2);
    if (*(v15 + 2))
    {
      v16 += &v14[*&v14[v16]];
    }
  }

  v17 = (v16 + 4 * v12 + 4 + *(v16 + 4 * v12 + 4));
  v18 = (v17 - *v17);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = *(v17 + v19);
  }

  else
  {
    v20 = -1;
  }

  v58 = *&v14[24 * v20 + 4 + 24 * v13 + *(v15 + 3) + *&v14[*(v15 + 3)]];
  v21 = a1[8];
  v22 = sub_92FC60(v21, v11, 0, "line");
  v23 = (v22 - *v22);
  if (*v23 >= 5u && (v24 = v23[2]) != 0)
  {
    v25 = *(v22 + v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_2C939C(v21, 1u, 0);
  if (!v26 || (v27 = &v26[-*v26], *v27 < 0xDu) || (v28 = *(v27 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v53 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v29 = &v26[v28 + *&v26[v28]];
  v30 = &v29[-*v29];
  if (*v30 >= 0xBu)
  {
    v31 = *(v30 + 5);
    if (v31)
    {
      if (v29[v31])
      {
        v25 = nullsub_1(v25);
      }
    }
  }

  *v8 = v25;
  *(a5 + 64) = sub_502230(a1[6], &v58);
  sub_9582B4(a2[1] | (*a2 << 32), a2[3], a1[8], &v56);
  if (*(a5 + 95) < 0)
  {
    operator delete(*v9);
  }

  *v9 = v56;
  *(v9 + 16) = v57;
  sub_958420(a2[1] | (*a2 << 32), a2[3], a1[8], &v56);
  if (*(a5 + 119) < 0)
  {
    operator delete(*(a5 + 96));
  }

  *(a5 + 96) = v56;
  *(a5 + 112) = v57;
  sub_9535A8(a1, a2, a4, &v56);
  if (*(a5 + 143) < 0)
  {
    operator delete(*(a5 + 120));
    *(a5 + 120) = v56;
    *(a5 + 136) = v57;
    v32 = *(a5 + 119);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_26:
      if (!v32)
      {
        if (*(a5 + 95) < 0)
        {
          sub_13A68((a5 + 96), *(a5 + 72), *(a5 + 80));
        }

        else
        {
          *(a5 + 96) = *v9;
          *(a5 + 112) = *(v9 + 16);
        }
      }

      goto LABEL_39;
    }
  }

  else
  {
    *(a5 + 120) = v56;
    *(a5 + 136) = v57;
    v32 = *(a5 + 119);
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  if (!*(a5 + 104))
  {
    v33 = *(a5 + 95);
    if (v33 >= 0)
    {
      v34 = v9;
    }

    else
    {
      v34 = *(a5 + 72);
    }

    if (v33 >= 0)
    {
      v35 = *(a5 + 95);
    }

    else
    {
      v35 = *(a5 + 80);
    }

    sub_13B38(a5 + 96, v34, v35);
  }

LABEL_39:
  v36 = sub_92FC60(a1[8], v11, 0, "line");
  v37 = (v36 - *v36);
  if (*v37 >= 0x25u && (v38 = v37[18]) != 0)
  {
    v39 = *(v36 + v38);
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_3A25A8(a1[8], a2[1] | (*a2 << 32), 0, "trip");
  v41 = (v40 - *v40);
  if (*v41 < 0x13u)
  {
    LOBYTE(v42) = 0;
  }

  else
  {
    v42 = v41[9];
    if (v42)
    {
      LOBYTE(v42) = *(v40 + v42 + *(v40 + v42)) != 0;
    }
  }

  if (((v42 & 1) != 0 || v39 == 1 || *(a1[3] + 1433) >= 2u) && ((a1[1] >> v39) & 1) == 0)
  {
    if ((a5 + 24) != a2 + 14)
    {
      sub_956400((a5 + 24), *(a2 + 7), *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
    }

    v43 = *(a5 + 24);
    v44 = *(a5 + 32);
    if (v43 != v44)
    {
      if (a3 < 0)
      {
        v45 = -5;
      }

      else
      {
        v45 = 5;
      }

      v46 = vdup_n_s32(a3 / -10 + (((-103 * (v45 + a3 % 10)) >> 15) & 1) + ((-103 * (v45 + a3 % 10)) >> 10));
      do
      {
        *v43 = vadd_s32(v46, *v43);
        v43 += 5;
      }

      while (v43 != v44);
    }
  }

  if (a2[21] != 0x7FFFFFFF && a2[22] != 0x7FFFFFFF)
  {
    v48 = a2[22];
    if (a3 < 0)
    {
      v49 = -5;
    }

    else
    {
      v49 = 5;
    }

    v50 = a3 / -10 + (((-103 * (v49 + a3 % 10)) >> 15) & 1) + ((-103 * (v49 + a3 % 10)) >> 10);
    *(a5 + 48) = v50 + a2[21];
    *(a5 + 52) = v50 + v48;
  }

  sub_953790(a1, a2, &v56);
  v51 = *(a5 + 144);
  if (v51)
  {
    *(a5 + 152) = v51;
    operator delete(v51);
  }

  *(a5 + 144) = v56;
  *(a5 + 160) = v57;
  sub_953954(a1, a2);
}

void sub_952B18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  v6 = (a3 + 56);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  if (a3 != a2)
  {
    sub_31F64(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v7 = sub_3A25A8(*(a1 + 64), *(a2 + 28) | (*(a2 + 24) << 32), 0, "trip");
  sub_958D9C(*(v7 + *(v7 - *v7 + 6)), *(a1 + 5), *(a1 + 72), *(a1 + 40), *(a1 + 64), *(a1 + 24), &v36);
  if (*(a3 + 79) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v36;
  *(a3 + 72) = v37;
  *(a3 + 48) = *(a2 + 45);
  v8 = sub_3A25A8(*(a1 + 64), *(a2 + 28) | (*(a2 + 24) << 32), 0, "trip");
  v9 = *(v8 + *(v8 - *v8 + 6));
  if (*(a2 + 44))
  {
    if (*(a2 + 44) != 1)
    {
      return;
    }

    v10 = sub_92FC60(*(a1 + 64), v9, 0, "line");
    sub_9A809C(*(a1 + 40), *(v10 + *(v10 - *v10 + 6)), v30);
    LODWORD(v39[0]) = -1;
    *(v39 + 3) = -1;
    memset(v39 + 7, 0, 26);
    v41 = 0;
    __p = 0uLL;
    v42 = 0;
    v44 = 0;
    v43 = 0uLL;
    v38 = 0;
    LODWORD(v36) = 3;
    sub_5410A0(&v36 + 8, v30);
    v11 = *(a3 + 32);
    if (v11 >= *(a3 + 40))
    {
      sub_94A210((a3 + 24), &v36);
      v27 = SHIBYTE(v44);
      *(a3 + 32) = v28;
      if (v27 < 0)
      {
        operator delete(v43);
        if (SHIBYTE(v41) < 0)
        {
          goto LABEL_11;
        }
      }

      else if (SHIBYTE(v41) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v11 = v36;
      *(v11 + 8) = 0;
      *(v11 + 40) = -1;
      v12 = v38;
      if (v38 != -1)
      {
        v45 = v11 + 8;
        (off_266DE18[v38])(&v45, &v36 + 8);
        *(v11 + 40) = v12;
      }

      *(v11 + 48) = v39[0];
      v13 = *&v39[1];
      *(v11 + 72) = v39[3];
      *(v11 + 56) = v13;
      memset(&v39[1], 0, 24);
      *(v11 + 80) = v39[4];
      v14 = __p;
      *(v11 + 104) = v41;
      *(v11 + 88) = v14;
      v41 = 0;
      __p = 0uLL;
      *(v11 + 112) = v42;
      v15 = v43;
      *(v11 + 136) = v44;
      *(v11 + 120) = v15;
      v44 = 0;
      v43 = 0uLL;
      *(a3 + 32) = v11 + 144;
      if (SHIBYTE(v41) < 0)
      {
LABEL_11:
        operator delete(__p);
        if (SHIBYTE(v39[3]) < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_26;
      }
    }

    if (SHIBYTE(v39[3]) < 0)
    {
LABEL_12:
      operator delete(v39[1]);
      v16 = v38;
      if (v38 == -1)
      {
LABEL_28:
        v38 = -1;
        if (v35 < 0)
        {
          operator delete(v34);
          if ((v33 & 0x80000000) == 0)
          {
LABEL_30:
            v29 = v31;
            if (v31 == -1)
            {
              return;
            }

LABEL_34:
            (off_266DDF0[v29])(&v45, v30);
            return;
          }
        }

        else if ((v33 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        operator delete(v32);
        v29 = v31;
        if (v31 == -1)
        {
          return;
        }

        goto LABEL_34;
      }

LABEL_27:
      (off_266DDF0[v16])(&v45, &v36 + 8);
      goto LABEL_28;
    }

LABEL_26:
    v16 = v38;
    if (v38 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v18 = *(a2 + 24);
  v17 = *(a2 + 28);
  v19 = *(a2 + 36);
  v20 = sub_3A231C(*(a1 + 64), v17 | (v18 << 32), 0);
  v21 = &v20[-*v20];
  if (*v21 < 5u)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v21 + 2);
    if (*(v21 + 2))
    {
      v22 += &v20[*&v20[v22]];
    }
  }

  v23 = (v22 + 4 * v18 + 4 + *(v22 + 4 * v18 + 4));
  v24 = (v23 - *v23);
  if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
  {
    v26 = *(v23 + v25);
  }

  else
  {
    v26 = -1;
  }

  sub_954B08(a1, v9, *&v20[24 * (v26 + v19) + 4 + *(v21 + 3) + *&v20[*(v21 + 3)]], &v36);
  sub_94BD48((a3 + 24), *(a3 + 32), v36, *(&v36 + 1), 0x8E38E38E38E38E39 * ((*(&v36 + 1) - v36) >> 4));
  sub_934E08(&v36);
}

void sub_952F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
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
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_948038(va1);
  sub_53E440(va);
  sub_95304C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_95304C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_934E08((a1 + 24));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_953098(void *a1, uint64_t a2)
{
  v3 = *(a2 + 624);
  v61 = *(a2 + 632);
  if (v3 == v61)
  {
LABEL_52:
    v43 = sub_93C858(a2);
    if (*v43)
    {
      v44 = v43[1] == -1;
    }

    else
    {
      v44 = 1;
    }

    if (v44 || (v45 = v43[2], v45 == -1) || ((v46 = *v43, v47 = a1[8], v48 = sub_3A25A8(v47, *v43, 0, "trip"), v49 = sub_92FC60(v47, *(v48 + *(v48 - *v48 + 6)), 0, "line"), v50 = (v49 - *v49), *v50 < 0x3Du) || (v51 = v50[30]) == 0 || !*(v49 + v51)) && ((v52 = a1[7], (v53 = **(v52 + 3896)) == 0) || !sub_39F47C(v53, v46, v45, *(v52 + 3904))))
    {
      a1 = (a1[4] + 4);
    }
  }

  else
  {
    while (1)
    {
      v4 = v3[2];
      v5 = v3[1] | (*v3 << 32);
      v6 = a1[8];
      v7 = sub_3A25A8(v6, v5, 0, "trip");
      v8 = sub_92FC60(v6, *(v7 + *(v7 - *v7 + 6)), 0, "line");
      v9 = (v8 - *v8);
      if (*v9 >= 0x3Du)
      {
        v10 = v9[30];
        if (v10)
        {
          if (*(v8 + v10))
          {
            break;
          }
        }
      }

      v11 = a1[7];
      v12 = **(v11 + 3896);
      if (v12)
      {
        if (sub_39F47C(v12, v5, v4, *(v11 + 3904)))
        {
          break;
        }
      }

      v13 = *(v3 + 3);
      v14 = *(v3 + 4);
      if (v13 != v14)
      {
        v62 = v3;
        while (1)
        {
          v15 = *(*v13 + 12);
          v16 = *(*v13 + 8) | (*(*v13 + 4) << 32);
          v17 = a1[8];
          v18 = sub_3A25A8(v17, v16, 0, "trip");
          v19 = *(v18 + *(v18 - *v18 + 6));
          v69 = "line";
          LODWORD(v64[0]) = v19;
          v70 = 0;
          v66 = &v70;
          v67 = v64;
          v20 = *(v17 + 3856) + 1;
          *(v17 + 3856) = v20;
          if (!*v17)
          {
LABEL_64:
            sub_2C9894(&v66);
LABEL_65:
            exception = __cxa_allocate_exception(0x40uLL);
            v65 = HIDWORD(v19);
            v70 = v19;
            v64[0] = sub_7FCF0(6u);
            v64[1] = v56;
            sub_2C956C("Failed to acquire entity ", &v69, " in quad node ", " at position ", " on layer ", v64, &v66);
            if ((v68 & 0x80u) == 0)
            {
              v57 = &v66;
            }

            else
            {
              v57 = v66;
            }

            if ((v68 & 0x80u) == 0)
            {
              v58 = v68;
            }

            else
            {
              v58 = v67;
            }

            v59 = sub_2D390(exception, v57, v58);
          }

          if (*(v17 + 592) == v19)
          {
            ++*(v17 + 3864);
            *(v17 + 600) = v20;
            v21 = *(v17 + 608);
            if (!v21)
            {
              goto LABEL_64;
            }
          }

          else if (*(v17 + 616) == v19)
          {
            ++*(v17 + 3864);
            *(v17 + 624) = v20;
            v21 = *(v17 + 632);
            if (!v21)
            {
              goto LABEL_64;
            }
          }

          else if (*(v17 + 640) == v19)
          {
            ++*(v17 + 3864);
            *(v17 + 648) = v20;
            v21 = *(v17 + 656);
            if (!v21)
            {
              goto LABEL_64;
            }
          }

          else if (*(v17 + 664) == v19)
          {
            ++*(v17 + 3864);
            *(v17 + 672) = v20;
            v21 = *(v17 + 680);
            if (!v21)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v22 = *(v17 + 648);
            v23 = *(v17 + 624);
            v24 = *(v17 + 600);
            v25 = v24 >= v20;
            if (v24 < v20)
            {
              v20 = *(v17 + 600);
            }

            v26 = 24;
            if (v25)
            {
              v26 = 0;
            }

            v27 = v23 >= v20;
            if (v23 < v20)
            {
              v20 = *(v17 + 624);
            }

            v28 = 25;
            if (v27)
            {
              v28 = v26;
            }

            v29 = v22 >= v20;
            if (v22 < v20)
            {
              v20 = *(v17 + 648);
            }

            v63 = v20;
            v30 = *(v17 + 672);
            if (v29)
            {
              v31 = v28;
            }

            else
            {
              v31 = 26;
            }

            v21 = sub_2D52A4(*v17, 6, v19, 1);
            v32 = 27;
            if (v30 >= v63)
            {
              v32 = v31;
            }

            v3 = v62;
            v33 = v17 + 16 + 24 * v32;
            *v33 = v64[0];
            *(v33 + 8) = *(v17 + 3856);
            *(v33 + 16) = v21;
            if (!v21)
            {
              goto LABEL_64;
            }
          }

          v34 = (v21 + *v21);
          v35 = (v34 - *v34);
          if (*v35 < 0xFu)
          {
            goto LABEL_65;
          }

          v36 = v35[7];
          if (!v36)
          {
            goto LABEL_65;
          }

          v37 = (v34 + v36 + *(v34 + v36));
          if (*v37 <= HIDWORD(v19))
          {
            goto LABEL_65;
          }

          v38 = (&v37[HIDWORD(v19) + 1] + v37[HIDWORD(v19) + 1]);
          v39 = (v38 - *v38);
          if (*v39 >= 0x3Du)
          {
            v40 = v39[30];
            if (v40)
            {
              if (*(v38 + v40))
              {
                break;
              }
            }
          }

          v41 = a1[7];
          v42 = **(v41 + 3896);
          if (v42)
          {
            if (sub_39F47C(v42, v16, v15, *(v41 + 3904)))
            {
              break;
            }
          }

          v13 += 32;
          if (v13 == v14)
          {
            goto LABEL_3;
          }
        }

        return *a1;
      }

LABEL_3:
      v3 += 30;
      if (v3 == v61)
      {
        goto LABEL_52;
      }
    }
  }

  return *a1;
}

void sub_953578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9535A8(uint64_t *a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_957DF8(a2[1] | (*a2 << 32), a2[3], a1[8], a1[9], a3 ^ 1, v12);
  if (SHIBYTE(v13) < 0)
  {
    if (v12[1])
    {
      sub_325C(a4, v12[0], v12[1]);
      goto LABEL_14;
    }

LABEL_7:
    v7 = sub_3A25A8(a1[8], a2[1] | (*a2 << 32), 0, "trip");
    v8 = *(v7 + *(v7 - *v7 + 6));
    sub_95885C(v8, a1[8], a1[3], __p);
    if (SHIBYTE(v11) < 0)
    {
      if (__p[1])
      {
        sub_325C(a4, __p[0], __p[1]);
        goto LABEL_13;
      }
    }

    else if (HIBYTE(v11))
    {
      *a4 = *__p;
      *(a4 + 16) = v11;
      goto LABEL_13;
    }

    v9 = sub_92FC60(a1[8], v8, 0, "line");
    sub_958AFC(*(v9 + *(v9 - *v9 + 6)), a1[5], a1[3], a4);
LABEL_13:
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v13) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(v12[0]);
      return;
    }

LABEL_14:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!HIBYTE(v13))
  {
    goto LABEL_7;
  }

  *a4 = *v12;
  *(a4 + 16) = v13;
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_17;
  }
}

void sub_953738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_953790(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *v14 = 0u;
  *__p = 0u;
  v16 = 1065353216;
  v13 = sub_955418(a1, a2[1] | (*a2 << 32), a2[3]);
  if (v13 != -1)
  {
    sub_956B30(v14, &v13);
  }

  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  while (v7 != v6)
  {
    v13 = sub_955418(a1, *(*v7 + 8) | (*(*v7 + 4) << 32), *(*v7 + 16));
    if (v13 != -1)
    {
      sub_956B30(v14, &v13);
    }

    v7 += 32;
  }

  v8 = __p[0];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v8)
  {
    v9 = 0;
    v10 = -1;
    v11 = v8;
    do
    {
      v11 = *v11;
      ++v10;
      v9 += 8;
    }

    while (v11);
    if (v10 < 0x1FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v14[0];
  v14[0] = 0;
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_9538F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_953904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_953918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_95392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_953940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_953954(void *a1, unsigned int *a2)
{
  v4 = sub_3A25A8(a1[8], a2[1] | (*a2 << 32), 0, "trip");
  v5 = *(v4 + *(v4 - *v4 + 6));
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v9 = sub_3A231C(a1[8], v6 | (v7 << 32), 0);
  v10 = &v9[-*v9];
  if (*v10 < 5u)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 2);
    if (*(v10 + 2))
    {
      v11 += &v9[*&v9[v11]];
    }
  }

  v12 = (v11 + 4 * v7 + 4 + *(v11 + 4 * v7 + 4));
  v13 = (v12 - *v12);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = *(v12 + v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = sub_502FF8(a1[6], *&v9[24 * v15 + 4 + 24 * v8 + *(v10 + 3) + *&v9[*(v10 + 3)]], 0, "stop");
  v17 = *(v16 + *(v16 - *v16 + 12));
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[8];
  v21 = a1[3];

  sub_9A8ED8(v18, v19, v20, v5, v17, v21);
}

uint64_t sub_953AA4(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = a2[3];
  v5 = sub_3A231C(*(a1 + 64), a2[1] | (v3 << 32), 0);
  v6 = &v5[-*v5];
  if (*v6 < 5u)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v7 += &v5[*&v5[v7]];
    }
  }

  v8 = (v7 + 4 * v3 + 4 + *(v7 + 4 * v3 + 4));
  v9 = (v8 - *v8);
  if (*v9 >= 0xDu && (v10 = v9[6]) != 0)
  {
    v11 = *(v8 + v10);
  }

  else
  {
    v11 = -1;
  }

  v29 = *&v5[24 * v11 + 4 + 24 * v4 + *(v6 + 3) + *&v5[*(v6 + 3)]];
  v12 = sub_502FF8(*(a1 + 48), v29, 0, "stop");
  v13 = *(v12 + *(v12 - *v12 + 12));
  v14 = *(a1 + 48);
  if (v13 > 0xFFFFFFFEFFFFFFFFLL || v13 == 0)
  {
    return sub_502230(v14, &v29);
  }

  v17 = sub_93D480(v14, v13, 0, "station");
  v18 = (v17 - *v17);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v20 = *(v17 + v19);
    v21 = sub_2C939C(v14, 1u, 0);
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v20 = 0;
    v21 = sub_2C939C(v14, 1u, 0);
    if (!v21)
    {
      goto LABEL_30;
    }
  }

  v22 = &v21[-*v21];
  if (*v22 < 0xDu || (v23 = *(v22 + 6)) == 0)
  {
LABEL_30:
    exception = __cxa_allocate_exception(0x40uLL);
    v28 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v24 = &v21[v23 + *&v21[v23]];
  v25 = &v24[-*v24];
  if (*v25 < 0xBu)
  {
    return v20;
  }

  v26 = *(v25 + 5);
  result = v20;
  if (v26 && v24[v26])
  {

    return nullsub_1(v20);
  }

  return result;
}

void sub_953CE4(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_956600(a4, (*(a2 + 32) - *(a2 + 24)) >> 5);
  v7 = *(a2 + 24);
  v64 = *(a2 + 32);
  if (v7 != v64)
  {
    if (a3 < 0)
    {
      v8 = -5;
    }

    else
    {
      v8 = 5;
    }

    v9 = a3 / -10 + (((-103 * (v8 + a3 % 10)) >> 15) & 1) + ((-103 * (v8 + a3 % 10)) >> 10);
    while (1)
    {
      v10 = *v7;
      v12 = *(*v7 + 4);
      v11 = *(*v7 + 8);
      v13 = *(*v7 + 16);
      nullsub_1(&v88);
      v14 = v11 | (v12 << 32);
      v15 = sub_3A231C(*(a1 + 64), v14, 0);
      v16 = &v15[-*v15];
      if (*v16 < 5u)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v16 + 2);
        if (*(v16 + 2))
        {
          v17 += &v15[*&v15[v17]];
        }
      }

      v18 = (v17 + 4 * v12 + 4 + *(v17 + 4 * v12 + 4));
      v19 = (v18 - *v18);
      if (*v19 < 0x1Du || (v20 = v19[14]) == 0 || (v21 = *(v18 + v20), v21 == -1))
      {
        v93 = 0uLL;
        v94 = 0;
        v95 = 2;
        v96 = sub_12331FC();
        v98 = 0;
        v99 = 0;
        __p = 0;
      }

      else
      {
        v22 = &v15[4 * v21 + *(v16 + 9) + *&v15[*(v16 + 9)]];
        sub_509164((v22 + 4 + *(v22 + 4)), &v93);
      }

      sub_9D69F4(&v93, v89);
      v23 = __p;
      if (__p)
      {
        v24 = v98;
        v25 = __p;
        if (v98 != __p)
        {
          do
          {
            if (*(v24 - 1) < 0)
            {
              operator delete(*(v24 - 3));
            }

            v24 -= 4;
          }

          while (v24 != v23);
          v25 = __p;
        }

        v98 = v23;
        operator delete(v25);
      }

      if (SHIBYTE(v94) < 0)
      {
        operator delete(v93);
      }

      v26 = *(a1 + 64);
      v27 = sub_3A25A8(v26, v14, 0, "trip");
      v28 = (v27 - *v27);
      if (*v28 >= 5u && (v29 = v28[2]) != 0)
      {
        v30 = *(v27 + v29);
      }

      else
      {
        v30 = 0;
      }

      v31 = sub_2C939C(v26, 1u, 0);
      if (!v31 || (v32 = &v31[-*v31], *v32 < 0xDu) || (v33 = *(v32 + 6)) == 0)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v62 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
      }

      v34 = &v31[v33 + *&v31[v33]];
      v35 = &v34[-*v34];
      if (*v35 >= 0xBu)
      {
        v36 = *(v35 + 5);
        if (v36)
        {
          if (v34[v36])
          {
            v30 = nullsub_1(v30);
          }
        }
      }

      sub_95572C(a1, v14, v13, v89, &v93);
      v65 = 0x8000000080000000;
      LOWORD(v66) = 0;
      if (SHIBYTE(v90) < 0)
      {
        sub_325C(&v67, v89[0], v89[1]);
      }

      else
      {
        v67 = *v89;
        v68 = v90;
      }

      v69 = v30;
      sub_64B998(&v70);
      v85 = 0;
      if (SHIBYTE(v94) < 0)
      {
        sub_325C(&v86, v93, *(&v93 + 1));
        if (SHIBYTE(v94) < 0)
        {
          operator delete(v93);
        }
      }

      else
      {
        v86 = v93;
        v87 = v94;
      }

      v37 = sub_3A25A8(*(a1 + 64), v14, 0, "trip");
      v38 = (v37 - *v37);
      if (*v38 >= 0x13u)
      {
        v39 = v38[9];
        if (v39)
        {
          if (*(v37 + v39 + *(v37 + v39)))
          {
            goto LABEL_73;
          }
        }
      }

      v40 = *(v10 + 28);
      v41 = a3 == 0x7FFFFFFF || v40 == 0x7FFFFFFF;
      v42 = (v9 + v40) << 32;
      if (v41)
      {
        v42 = 0x7FFFFFFF00000000;
      }

      v43 = v42 | (v9 + *(v10 + 24));
      v44 = *(v10 + 32);
      v65 = v43;
      LOWORD(v66) = v44;
      v45 = sub_3A25A8(*(a1 + 64), v14, 0, "trip");
      v46 = sub_92FC60(*(a1 + 64), *(v45 + *(v45 - *v45 + 6)), 0, "line");
      v47 = (v46 - *v46);
      if (*v47 < 0x25u)
      {
        goto LABEL_73;
      }

      v48 = v47[18];
      if (!v48)
      {
        goto LABEL_73;
      }

      v49 = *(v46 + v48);
      if ((v49 - 2) >= 2)
      {
        if (v49 == 1)
        {
          v51 = v7[24];
          if ((v51 - 3) < 2)
          {
            sub_64B9C4(&v93, (*(a1 + 24) + 1177));
            sub_53D784(&v70, &v93);
            sub_6081F0(&v93);
            sub_9CDF10(v51, *(a1 + 72), &v70, 0, 0x7FFFFFFF);
            goto LABEL_71;
          }

          if (!v7[24])
          {
            goto LABEL_69;
          }

          if (v51 == 2)
          {
            sub_64B9C4(&v93, (*(a1 + 24) + 1177));
            sub_53D784(&v70, &v93);
            sub_6081F0(&v93);
            v50 = 2;
            sub_9CDF10(2, *(a1 + 72), &v70, 0, 0x7FFFFFFF);
            goto LABEL_72;
          }
        }
      }

      else if (*(a1 + 4) == 1)
      {
        if (!v66)
        {
LABEL_69:
          v50 = 1;
          goto LABEL_72;
        }

        if (v65 != 0x7FFFFFFF && v66 == 1 && HIDWORD(v65) != 0x7FFFFFFF && !BYTE1(v66) && v65 / 60 == SHIDWORD(v65) / 60)
        {
          v50 = 2;
LABEL_72:
          v85 = v50;
          goto LABEL_73;
        }

LABEL_71:
        v50 = 3;
        goto LABEL_72;
      }

LABEL_73:
      if (v92 < 0)
      {
        operator delete(v91);
        if (SHIBYTE(v90) < 0)
        {
          goto LABEL_79;
        }

LABEL_75:
        v52 = a4[1];
        if (v52 < a4[2])
        {
          goto LABEL_76;
        }

LABEL_80:
        sub_956920(a4, &v65);
        v59 = SHIBYTE(v87);
        a4[1] = v60;
        if (v59 < 0)
        {
          operator delete(v86);
          sub_6081F0(&v70);
          if ((SHIBYTE(v68) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

        else
        {
          sub_6081F0(&v70);
          if ((SHIBYTE(v68) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

LABEL_82:
        operator delete(v67);
        v7 += 32;
        if (v7 == v64)
        {
          return;
        }
      }

      else
      {
        if ((SHIBYTE(v90) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

LABEL_79:
        operator delete(v89[0]);
        v52 = a4[1];
        if (v52 >= a4[2])
        {
          goto LABEL_80;
        }

LABEL_76:
        v53 = v65;
        *(v52 + 8) = v66;
        *v52 = v53;
        v54 = v67;
        *(v52 + 32) = v68;
        *(v52 + 16) = v54;
        v68 = 0;
        v67 = 0uLL;
        *(v52 + 40) = v69;
        *(v52 + 48) = 0;
        *(v52 + 56) = 0;
        *(v52 + 64) = 0;
        *(v52 + 48) = v70;
        v70 = 0uLL;
        *(v52 + 64) = v71;
        *(v52 + 72) = 0;
        *(v52 + 80) = 0;
        *(v52 + 88) = 0;
        *(v52 + 72) = v72;
        *(v52 + 88) = v73;
        *(v52 + 96) = 0;
        v71 = 0;
        v72 = 0uLL;
        v73 = 0;
        *(v52 + 104) = 0;
        *(v52 + 112) = 0;
        *(v52 + 96) = v74;
        v74 = 0uLL;
        *(v52 + 112) = v75;
        *(v52 + 120) = 0;
        *(v52 + 128) = 0;
        *(v52 + 136) = 0;
        *(v52 + 120) = v76;
        *(v52 + 136) = v77;
        v75 = 0;
        v76 = 0uLL;
        v77 = 0;
        v55 = v78;
        v78 = 0;
        *(v52 + 144) = v55;
        LODWORD(v55) = v79;
        *(v52 + 156) = v80;
        *(v52 + 152) = v55;
        v56 = v81;
        *(v52 + 176) = v82;
        *(v52 + 160) = v56;
        v81 = 0uLL;
        v57 = v83;
        *(v52 + 200) = v84;
        *(v52 + 184) = v57;
        v84 = 0;
        v82 = 0;
        v83 = 0uLL;
        *(v52 + 208) = v85;
        v58 = v86;
        *(v52 + 232) = v87;
        *(v52 + 216) = v58;
        v87 = 0;
        v86 = 0uLL;
        a4[1] = v52 + 240;
        sub_6081F0(&v70);
        if (SHIBYTE(v68) < 0)
        {
          goto LABEL_82;
        }

LABEL_7:
        v7 += 32;
        if (v7 == v64)
        {
          return;
        }
      }
    }
  }
}

void sub_954494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  sub_6081F0(v59 + 48);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
    sub_509680(&a46);
    sub_9379D4(v58);
    _Unwind_Resume(a1);
  }

  sub_509680(&a46);
  sub_9379D4(v58);
  _Unwind_Resume(a1);
}

void sub_954580(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[3];
  v7 = sub_3A231C(*(a1 + 64), a2[1] | (v5 << 32), 0);
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v9 += &v7[*&v7[v9]];
    }
  }

  v10 = (v9 + 4 * v5 + 4 + *(v9 + 4 * v5 + 4));
  v11 = (v10 - *v10);
  if (*v11 >= 0xDu && (v12 = v11[6]) != 0)
  {
    v13 = *(v10 + v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = *&v7[24 * v13 + 4 + 24 * v6 + *(v8 + 3) + *&v7[*(v8 + 3)]];
  v15 = sub_502FF8(*(a1 + 48), v14, 0, "stop");
  v16 = *(v15 + *(v15 - *v15 + 10));
  v17 = sub_502FF8(*(a1 + 48), v14, 0, "stop");
  v18 = *(v17 + *(v17 - *v17 + 12));
  if (v18 > 0xFFFFFFFEFFFFFFFFLL || v18 == 0)
  {
    if (v16 > 0xFFFFFFFEFFFFFFFFLL || v16 == 0)
    {
      v21 = sub_502FF8(*(a1 + 48), v14, 0, "stop");
      v22 = (v21 - *v21);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v24 = (v21 + v23 + *(v21 + v23));
        v58 = 0uLL;
        v59 = 0;
        sub_943AEC(&v58, *v24);
        v61 = v24 + 1;
        v60 = &v24[*v24 + 1];
        sub_943E24(&v61, &v60, &v58, sub_509164);
        v25 = v58;
        v26 = v59;
      }

      else
      {
        v26 = 0;
        v25 = 0uLL;
      }

      *__p = v25;
      v57 = v26;
      sub_955648(a3, a1, __p);
      v33 = __p[0];
      if (__p[0])
      {
        v46 = __p[1];
        v35 = __p[0];
        if (__p[1] == __p[0])
        {
          goto LABEL_74;
        }

        do
        {
          v47 = *(v46 - 3);
          if (v47)
          {
            v48 = *(v46 - 2);
            v49 = *(v46 - 3);
            if (v48 != v47)
            {
              do
              {
                if (*(v48 - 1) < 0)
                {
                  operator delete(*(v48 - 24));
                }

                v48 -= 32;
              }

              while (v48 != v47);
              v49 = *(v46 - 3);
            }

            *(v46 - 2) = v47;
            operator delete(v49);
          }

          v50 = (v46 - 64);
          if (*(v46 - 41) < 0)
          {
            operator delete(*v50);
          }

          v46 -= 64;
        }

        while (v50 != v33);
        goto LABEL_73;
      }
    }

    else
    {
      v40 = sub_93D2F4(*(a1 + 48), v16, 0, "hall");
      v41 = (v40 - *v40);
      if (*v41 >= 9u && (v42 = v41[4]) != 0)
      {
        v43 = (v40 + v42 + *(v40 + v42));
        v58 = 0uLL;
        v59 = 0;
        sub_943AEC(&v58, *v43);
        v61 = v43 + 1;
        v60 = &v43[*v43 + 1];
        sub_943E24(&v61, &v60, &v58, sub_509164);
        v44 = v58;
        v45 = v59;
      }

      else
      {
        v45 = 0;
        v44 = 0uLL;
      }

      *__p = v44;
      v57 = v45;
      sub_955648(a3, a1, __p);
      v33 = __p[0];
      if (__p[0])
      {
        v51 = __p[1];
        v35 = __p[0];
        if (__p[1] == __p[0])
        {
          goto LABEL_74;
        }

        do
        {
          v52 = *(v51 - 3);
          if (v52)
          {
            v53 = *(v51 - 2);
            v54 = *(v51 - 3);
            if (v53 != v52)
            {
              do
              {
                if (*(v53 - 1) < 0)
                {
                  operator delete(*(v53 - 24));
                }

                v53 -= 32;
              }

              while (v53 != v52);
              v54 = *(v51 - 3);
            }

            *(v51 - 2) = v52;
            operator delete(v54);
          }

          v55 = (v51 - 64);
          if (*(v51 - 41) < 0)
          {
            operator delete(*v55);
          }

          v51 -= 64;
        }

        while (v55 != v33);
        goto LABEL_73;
      }
    }
  }

  else
  {
    v27 = sub_93D480(*(a1 + 48), v18, 0, "station");
    v28 = (v27 - *v27);
    if (*v28 >= 9u && (v29 = v28[4]) != 0)
    {
      v30 = (v27 + v29 + *(v27 + v29));
      v58 = 0uLL;
      v59 = 0;
      sub_943AEC(&v58, *v30);
      v61 = v30 + 1;
      v60 = &v30[*v30 + 1];
      sub_943E24(&v61, &v60, &v58, sub_509164);
      v31 = v58;
      v32 = v59;
    }

    else
    {
      v32 = 0;
      v31 = 0uLL;
    }

    *__p = v31;
    v57 = v32;
    sub_955648(a3, a1, __p);
    v33 = __p[0];
    if (__p[0])
    {
      v34 = __p[1];
      v35 = __p[0];
      if (__p[1] == __p[0])
      {
        goto LABEL_74;
      }

      do
      {
        v36 = *(v34 - 3);
        if (v36)
        {
          v37 = *(v34 - 2);
          v38 = *(v34 - 3);
          if (v37 != v36)
          {
            do
            {
              if (*(v37 - 1) < 0)
              {
                operator delete(*(v37 - 24));
              }

              v37 -= 32;
            }

            while (v37 != v36);
            v38 = *(v34 - 3);
          }

          *(v34 - 2) = v36;
          operator delete(v38);
        }

        v39 = (v34 - 64);
        if (*(v34 - 41) < 0)
        {
          operator delete(*v39);
        }

        v34 -= 64;
      }

      while (v39 != v33);
LABEL_73:
      v35 = __p[0];
LABEL_74:
      __p[1] = v33;
      operator delete(v35);
    }
  }
}

void sub_954A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_954AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_954AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_954B08(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_92FC60(a1[8], a2, 0, "line");
  v8 = sub_502FF8(a1[6], a3, 0, "stop");
  v9 = *(v8 + *(v8 - *v8 + 12));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = sub_92FC60(a1[8], a2, 0, "line");
  v11 = (v10 - *v10);
  if (*v11 >= 0x49u)
  {
    v12 = v11[36];
    if (v12)
    {
      if (*(v10 + v12 + *(v10 + v12)))
      {
        operator new();
      }
    }
  }

  if (*a4 == a4[1])
  {
    sub_9A8ED8(a1[5], a1[6], a1[8], a2, v9, a1[3]);
  }
}

void sub_955354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_948038(&a27);
  sub_53E440(&a13);
  sub_934E08(v27);
  _Unwind_Resume(a1);
}

void sub_9553A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_948038(&a27);
  sub_53E440(&a13);
  if (v28)
  {
    operator delete(v28);
  }

  sub_934E08(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_955418(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_3A25A8(*(a1 + 64), a2, 0, "trip");
  v7 = (v6 - *v6);
  if (*v7 >= 9u)
  {
    v8 = v7[4];
    if (v8)
    {
      v9 = a3 + 1;
      v10 = *(v6 + v8);
      v11 = v9 <= v10 ? v10 : v9;
      if (v9 < v10)
      {
        v12 = (a2 >> 30) & 0x3FFFFFFFCLL;
        while (1)
        {
          v13 = sub_3A231C(*(a1 + 64), a2, 0);
          v14 = &v13[-*v13];
          if (*v14 < 5u)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v14 + 2);
            if (*(v14 + 2))
            {
              v15 += &v13[*&v13[v15]];
            }
          }

          v16 = (v15 + v12 + 4 + *(v15 + v12 + 4));
          v17 = (v16 - *v16);
          if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
          {
            v19 = *(v16 + v18);
          }

          else
          {
            v19 = -1;
          }

          v20 = *&v13[24 * v19 + 4 + 24 * v9 + *(v14 + 3) + *&v13[*(v14 + 3)]];
          v32 = v20;
          v21 = sub_2C939C(*(a1 + 48), v20, 1);
          if (!v21)
          {
            break;
          }

          v22 = &v21[-*v21];
          if (*v22 < 0x1Du)
          {
            break;
          }

          v23 = *(v22 + 14);
          if (!v23 || *&v21[v23 + *&v21[v23]] <= HIDWORD(v20))
          {
            break;
          }

          v24 = sub_3A231C(*(a1 + 64), a2, 0);
          v25 = &v24[-*v24];
          if (*v25 < 5u)
          {
            v26 = 0;
          }

          else
          {
            v26 = *(v25 + 2);
            if (*(v25 + 2))
            {
              v26 += &v24[*&v24[v26]];
            }
          }

          v27 = (v26 + v12 + 4 + *(v26 + v12 + 4));
          v28 = (v27 - *v27);
          if (*v28 >= 0xDu && (v29 = v28[6]) != 0)
          {
            v30 = *(v27 + v29);
          }

          else
          {
            v30 = -1;
          }

          if (!v24[24 * v30 + 22 + 24 * v9 + *(v25 + 3) + *&v24[*(v25 + 3)]])
          {
            return sub_502230(*(a1 + 48), &v32);
          }

          ++v9;
          result = -1;
          if (v11 == v9)
          {
            return result;
          }
        }
      }
    }
  }

  return -1;
}

void sub_955648(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  nullsub_1(&v10);
  sub_9D6590(a3, *(a2 + 24) + 968, &__p);
  sub_9D43A4(&__p, a1);
  v6 = __p;
  if (__p)
  {
    v7 = v12;
    v8 = __p;
    if (v12 == __p)
    {
LABEL_11:
      v12 = v6;
      operator delete(v8);
      return;
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_9:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = __p;
        goto LABEL_11;
      }
    }
  }
}

void sub_955718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_95572C(uint64_t *a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = sub_3A25A8(a1[8], a2, 0, "trip");
  v11 = sub_92FC60(a1[8], *(v10 + *(v10 - *v10 + 6)), 0, "line");
  v12 = (v11 - *v11);
  if (*v12 < 0x25u)
  {
    goto LABEL_11;
  }

  v13 = v12[18];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = *(a4 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 1);
  }

  if (!v14 || *(v11 + v13) - 4 <= 0xFFFFFFFD)
  {
LABEL_11:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v15 = a1[8];
  v16 = sub_3A25A8(v15, a2, 0, "trip");
  v17 = sub_92FC60(v15, *(v16 + *(v16 - *v16 + 6)), 0, "line");
  v18 = (v17 - *v17);
  if (*v18 >= 0x29u && (v19 = v18[20]) != 0 && *(v17 + v19))
  {
    HIBYTE(v42) = 0;
    LOBYTE(v41[0]) = 0;
  }

  else
  {
    sub_9582B4(a2, a3, a1[8], v41);
  }

  sub_958420(a2, a3, a1[8], v39);
  strcpy(v43, "{VehicleNumber}");
  v44 = 0xF00000000000000;
  if (*(a4 + 23) < 0)
  {
    sub_325C(&v45, *a4, *(a4 + 1));
  }

  else
  {
    v45 = *a4;
    v46 = *(a4 + 2);
  }

  *v47 = *"{Direction}";
  v48 = 0xB00000000000000;
  if (SHIBYTE(v42) < 0)
  {
    sub_325C(&v49, v41[0], v41[1]);
  }

  else
  {
    v49 = *v41;
    v50 = v42;
  }

  *v51 = *"{Headsign}";
  v52 = 0xA00000000000000;
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(&__p, v39[0], v39[1]);
  }

  else
  {
    __p = *v39;
    v54 = v40;
  }

  *v36 = 0u;
  v37 = 0u;
  v38 = 1065353216;
  sub_2C7D4(v36, v43);
  sub_2C7D4(v36, v47);
  sub_2C7D4(v36, v51);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_41;
    }
  }

  else if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v51[0]);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v49);
  if ((SHIBYTE(v48) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_43:
    operator delete(v45);
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_42:
  operator delete(v47[0]);
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_43;
  }

LABEL_28:
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_44:
  operator delete(v43[0]);
LABEL_29:
  v20 = HIBYTE(v40);
  if (v40 < 0)
  {
    v20 = v39[1];
  }

  v21 = 12;
  if (!v20)
  {
    v21 = 15;
  }

  v22 = &qword_27B1A00;
  if (v20)
  {
    v22 = &qword_27B19E8;
  }

  v23 = &algn_27B19F0[15];
  if (!v20)
  {
    v23 = &unk_27B1A17;
  }

  if (*v23 < 0)
  {
    if (v20)
    {
      v24 = algn_27B19F0;
    }

    else
    {
      v24 = &unk_27B1A08;
    }

    sub_325C(v43, qword_27B1988[v21], *v24);
  }

  else
  {
    *v43 = *v22;
    v44 = v22[2];
  }

  v25 = sub_3A25A8(a1[8], a2, 0, "trip");
  v26 = (v25 - *v25);
  v28 = *v26 >= 0x1Bu && (v27 = v26[13]) != 0 && *(v25 + v27) != 0;
  sub_9CD974(v36, 0, 0, v28, a1[9], v43);
  v29 = a1[10];
  v34 = a1[9];
  v35 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  sub_6A58C4(v43, v36, &v34, 0, a5);
  v30 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  v31 = v37;
  if (v37)
  {
    while (1)
    {
      v32 = *v31;
      if (v31[63] < 0)
      {
        operator delete(*(v31 + 5));
        if ((v31[39] & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_66:
        operator delete(*(v31 + 2));
        operator delete(v31);
        v31 = v32;
        if (!v32)
        {
          break;
        }
      }

      else
      {
        if (v31[39] < 0)
        {
          goto LABEL_66;
        }

LABEL_63:
        operator delete(v31);
        v31 = v32;
        if (!v32)
        {
          break;
        }
      }
    }
  }

  v33 = v36[0];
  v36[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
    if (SHIBYTE(v42) < 0)
    {
LABEL_73:
      operator delete(v41[0]);
    }
  }

  else if (SHIBYTE(v42) < 0)
  {
    goto LABEL_73;
  }
}

void sub_955C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_2CD04(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_955D6C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6F96F96F96F96F97 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xD20D20D20D20D2)
  {
    sub_1794();
  }

  if (0xDF2DF2DF2DF2DF2ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDF2DF2DF2DF2DF2ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6F96F96F96F96F97 * ((a1[2] - *a1) >> 3)) >= 0x69069069069069)
  {
    v5 = 0xD20D20D20D20D2;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xD20D20D20D20D2)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_955ED0(v6, a2);
  v7 = 312 * v2 + 312;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_955ED0(v12, v11);
      v11 += 312;
      v12 += 312;
    }

    while (v11 != v9);
    do
    {
      sub_937A74(v8);
      v8 += 312;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

__n128 sub_955ED0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v3;
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = -1;
  v7 = *(a2 + 200);
  if (v7 != -1)
  {
    v8 = a1;
    v12 = a1 + 168;
    (off_266DE18[v7])(&v12, a2 + 168);
    a1 = v8;
    *(v8 + 200) = v7;
  }

  *(a1 + 208) = *(a2 + 208);
  v9 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v9;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 216) = 0;
  *(a1 + 240) = *(a2 + 240);
  v10 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v10;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  result = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = result;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  return result;
}

uint64_t sub_956068(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
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
  v14 = v6;
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
  *(v6 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 56) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v15 = 80 * v2 + 80;
  v16 = 0;
  sub_956220(a1, &__p);
  v8 = a1[1];
  v9 = v14;
  while (1)
  {
    v10 = v15;
    if (v15 == v9)
    {
      break;
    }

    v15 -= 80;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      sub_934E08((v10 - 56));
      v11 = *(v10 - 80);
      if (v11)
      {
LABEL_16:
        *(v10 - 72) = v11;
        operator delete(v11);
      }
    }

    else
    {
      sub_934E08((v10 - 56));
      v11 = *(v10 - 80);
      if (v11)
      {
        goto LABEL_16;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_95620C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_95636C(va);
  _Unwind_Resume(a1);
}

void sub_956220(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v8 + 48) = *(v7 + 48);
      v9 = *(v7 + 56);
      *(v8 + 72) = *(v7 + 72);
      *(v8 + 56) = v9;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      v7 += 80;
      v8 += 80;
    }

    while (v7 != v4);
    while (*(v5 + 79) < 0)
    {
      operator delete(*(v5 + 56));
      sub_934E08((v5 + 24));
      v10 = *v5;
      if (*v5)
      {
        goto LABEL_10;
      }

LABEL_5:
      v5 += 80;
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    sub_934E08((v5 + 24));
    v10 = *v5;
    if (!*v5)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v5 + 8) = v10;
    operator delete(v10);
    goto LABEL_5;
  }

LABEL_11:
  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_95636C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      sub_934E08((i - 56));
      v4 = *(i - 80);
      if (!v4)
      {
        continue;
      }

LABEL_8:
      *(i - 72) = v4;
      operator delete(v4);
      continue;
    }

    sub_934E08((i - 56));
    v4 = *(i - 80);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_956400(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 7);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_956594(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
    sub_6081F0(a1 + 48);
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    sub_6081F0(a1 + 48);
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*(a1 + 16));
  return a1;
}

void *sub_956600(void *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_9566D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9566E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9566E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      sub_6081F0(i - 192);
      if ((*(i - 201) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else
    {
      sub_6081F0(i - 192);
      if ((*(i - 201) & 0x80000000) == 0)
      {
        continue;
      }
    }

    operator delete(*(i - 224));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_95677C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 1);
      *(a4 + 32) = v6[4];
      *(a4 + 16) = v8;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = 0;
      *(a4 + 40) = v6[5];
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 3);
      *(a4 + 64) = v6[8];
      v6[6] = 0;
      v6[7] = 0;
      v6[8] = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 15);
      v9 = v6[18];
      *(a4 + 136) = v6[17];
      v6[15] = 0;
      v6[16] = 0;
      v6[17] = 0;
      v6[18] = 0;
      *(a4 + 144) = v9;
      LODWORD(v7) = *(v6 + 38);
      *(a4 + 156) = *(v6 + 78);
      *(a4 + 152) = v7;
      v10 = *(v6 + 10);
      *(a4 + 176) = v6[22];
      *(a4 + 160) = v10;
      v6[21] = 0;
      v6[22] = 0;
      v6[20] = 0;
      v11 = *(v6 + 23);
      *(a4 + 200) = v6[25];
      *(a4 + 184) = v11;
      v6[24] = 0;
      v6[25] = 0;
      v6[23] = 0;
      *(a4 + 208) = *(v6 + 52);
      v12 = *(v6 + 27);
      *(a4 + 232) = v6[29];
      *(a4 + 216) = v12;
      v6[28] = 0;
      v6[29] = 0;
      v6[27] = 0;
      v6 += 30;
      a4 += 240;
    }

    while (v6 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      if (*(v5 + 239) < 0)
      {
        operator delete(v5[27]);
        sub_6081F0((v5 + 6));
        if ((*(v5 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_6081F0((v5 + 6));
        if ((*(v5 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      operator delete(v5[2]);
LABEL_5:
      v5 += 30;
    }
  }
}

double sub_956920(uint64_t a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((*(a1 + 8) - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(v6 + 120) = *(a2 + 120);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v9 = *(a2 + 136);
  v10 = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(v6 + 136) = v9;
  *(v6 + 144) = v10;
  LODWORD(v9) = *(a2 + 152);
  *(v6 + 156) = *(a2 + 156);
  *(v6 + 152) = v9;
  v11 = *(a2 + 160);
  *(v6 + 176) = *(a2 + 176);
  *(v6 + 160) = v11;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v12 = *(a2 + 184);
  *(v6 + 200) = *(a2 + 200);
  *(v6 + 184) = v12;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(v6 + 208) = *(a2 + 208);
  v13 = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(v6 + 216) = v13;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v14 = *(a1 + 8);
  v15 = 240 * v2 + *a1 - v14;
  sub_95677C(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = 240 * v2 + 240;
  *(a1 + 8) = v17;
  if (v16)
  {
    operator delete(v16);
    *&v17 = 240 * v2 + 240;
  }

  return *&v17;
}

void sub_956B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9566E8(va);
  _Unwind_Resume(a1);
}

void *sub_956B30(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_956E64()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B1A18 = 0u;
  unk_27B1A28 = 0u;
  dword_27B1A38 = 1065353216;
  sub_3A9A34(&xmmword_27B1A18, v0);
  sub_3A9A34(&xmmword_27B1A18, v3);
  sub_3A9A34(&xmmword_27B1A18, __p);
  sub_3A9A34(&xmmword_27B1A18, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B1990 = 0;
    qword_27B1998 = 0;
    qword_27B1988 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_9571BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B19A0)
  {
    qword_27B19A8 = qword_27B19A0;
    operator delete(qword_27B19A0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_957280@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = -1;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FFFFFFF;
  *(a1 + 148) = 1;
  return result;
}

void sub_9572CC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = -1;
  *(a6 + 8) = 0u;
  v9 = a6 + 8;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = -1;
  *(a6 + 64) = 0x7FFFFFFF;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0x7FFFFFFF;
  *(a6 + 148) = 0;
  *a6 = sub_957C08(a1, a2, a3);
  v10 = sub_502FF8(a3, a1, 0, "stop");
  v11 = (v10 - *v10);
  if (*v11 < 0x2Bu || (v12 = v11[21]) == 0)
  {
    HIBYTE(v57.__locale_) = 0;
    LOBYTE(__dst) = 0;
    v16 = (a6 + 32);
    if ((*(a6 + 55) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = (v10 + v12);
  v14 = *v13;
  v15 = *(v13 + v14);
  if (v15 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v57.__locale_) = *(v13 + v14);
  if (!v15)
  {
    *(&__dst + v15) = 0;
    v16 = (a6 + 32);
    if ((*(a6 + 55) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  memcpy(&__dst, v13 + v14 + 4, v15);
  *(&__dst + v15) = 0;
  v16 = (a6 + 32);
  if (*(a6 + 55) < 0)
  {
LABEL_8:
    operator delete(v16->__locale_);
  }

LABEL_9:
  *&v16->__locale_ = __dst;
  v16[2].__locale_ = v57.__locale_;
  v17 = *(a6 + 55);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a6 + 40);
  }

  if (!v17)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_32:
      if (v18 < 0)
      {
        *(a6 + 40) = 3;
        v16 = *(a6 + 32);
      }

      else
      {
        *(a6 + 55) = 3;
      }

      LODWORD(v16->__locale_) = 4412501;
      goto LABEL_36;
    }

    sub_19594F8(&__dst);
    sub_4A5C(&__dst, "Could not resolve time zone for stop ", 37);
    std::ostream::operator<<();
    if ((v65 & 0x10) != 0)
    {
      v20 = v64;
      if (v64 < v61)
      {
        v64 = v61;
        v20 = v61;
      }

      v21 = v60;
      v19 = v20 - v60;
      if (v20 - v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if ((v65 & 8) == 0)
      {
        v19 = 0;
        HIBYTE(v55) = 0;
LABEL_27:
        *(__p + v19) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(__p[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62);
        }

        std::locale::~locale(&v57);
        std::ostream::~ostream();
        std::ios::~ios();
        v18 = *(a6 + 55);
        goto LABEL_32;
      }

      v21 = v58;
      v19 = v59 - v58;
      if ((v59 - v58) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_90:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v55) = v19;
    if (v19)
    {
      memmove(__p, v21, v19);
    }

    goto LABEL_27;
  }

LABEL_36:
  v22 = sub_502FF8(a3, a1, 0, "stop");
  v23 = *(v22 + *(v22 - *v22 + 10));
  if (v23)
  {
    v24 = v23 >= 0xFFFFFFFF00000000;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  if (v25 == 1)
  {
    v26 = sub_93D2F4(a3, v23, 0, "hall");
    v27 = (v26 - *v26);
    if (*v27 >= 9u)
    {
      v28 = v27[4];
      if (v28)
      {
LABEL_48:
        v30 = (v26 + v28 + *(v26 + v28));
        __dst = 0uLL;
        v57.__locale_ = 0;
        sub_943AEC(&__dst, *v30);
        v67[0] = v30 + 1;
        v66 = &v30[*v30 + 1];
        sub_943E24(v67, &v66, &__dst, sub_509164);
        v31 = __dst;
        locale = v57.__locale_;
        goto LABEL_50;
      }
    }
  }

  else
  {
    v26 = sub_502FF8(a3, a1, 0, "stop");
    v29 = (v26 - *v26);
    if (*v29 >= 9u)
    {
      v28 = v29[4];
      if (v28)
      {
        goto LABEL_48;
      }
    }
  }

  locale = 0;
  v31 = 0uLL;
LABEL_50:
  *v52 = v31;
  v53 = locale;
  nullsub_1(v67);
  sub_9D6590(v52, a4 + 968, &__dst);
  sub_9D43A4(&__dst, __p);
  v33 = __dst;
  if (!__dst)
  {
    goto LABEL_60;
  }

  v34 = *(&__dst + 1);
  v35 = __dst;
  if (*(&__dst + 1) != __dst)
  {
    while (1)
    {
      if (*(v34 - 1) < 0)
      {
        operator delete(*(v34 - 3));
        v36 = v34 - 7;
        if ((*(v34 - 33) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

LABEL_57:
        operator delete(*v36);
        v34 = v36;
        if (v36 == v33)
        {
LABEL_58:
          v35 = __dst;
          break;
        }
      }

      else
      {
        v36 = v34 - 7;
        if (*(v34 - 33) < 0)
        {
          goto LABEL_57;
        }

LABEL_54:
        v34 = v36;
        if (v36 == v33)
        {
          goto LABEL_58;
        }
      }
    }
  }

  *(&__dst + 1) = v33;
  operator delete(v35);
LABEL_60:
  if (*(a6 + 31) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *__p;
  *(v9 + 16) = v55;
  HIBYTE(v55) = 0;
  LOBYTE(__p[0]) = 0;
  v37 = v52[0];
  if (v52[0])
  {
    v38 = v52[1];
    v39 = v52[0];
    if (v52[1] != v52[0])
    {
      do
      {
        v40 = *(v38 - 3);
        if (v40)
        {
          v41 = *(v38 - 2);
          v42 = *(v38 - 3);
          if (v41 != v40)
          {
            do
            {
              if (*(v41 - 1) < 0)
              {
                operator delete(*(v41 - 24));
              }

              v41 -= 32;
            }

            while (v41 != v40);
            v42 = *(v38 - 3);
          }

          *(v38 - 2) = v40;
          operator delete(v42);
        }

        v43 = (v38 - 64);
        if (*(v38 - 41) < 0)
        {
          operator delete(*v43);
        }

        v38 -= 64;
      }

      while (v43 != v37);
      v39 = v52[0];
    }

    v52[1] = v37;
    operator delete(v39);
  }

  if (a5)
  {
    if (v25)
    {
      v44 = sub_93D2F4(a3, v23, 0, "hall");
      v45 = v44 + *(v44 - *v44 + 6);
      v46 = *v45;
      LODWORD(v45) = *(v45 + 4);
      if (v45 >= 0xFFFFFFFE)
      {
        v45 = 4294967294;
      }

      else
      {
        v45 = v45;
      }

      *(a6 + 56) = v46 | (v45 << 32);
      *(a6 + 64) = 0x7FFFFFFF;
      sub_990680(&__dst);
    }

    v47 = sub_502FF8(a3, a1, 0, "stop");
    v48 = v47 + *(v47 - *v47 + 6);
    v49 = *v48;
    LODWORD(v48) = *(v48 + 4);
    if (v48 >= 0xFFFFFFFE)
    {
      v48 = 4294967294;
    }

    else
    {
      v48 = v48;
    }

    *(a6 + 56) = v49 | (v48 << 32);
    *(a6 + 64) = 0x7FFFFFFF;
    sub_99161C();
  }
}

void sub_957A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_95AA48(v20);
  _Unwind_Resume(a1);
}

void sub_957B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_9354C4(va1);
  sub_941AEC(va);
  sub_95AA48(v3);
  _Unwind_Resume(a1);
}

void sub_957BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_941AEC(va);
  sub_95AA48(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_957C08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 584))
  {
    v20 = *(a2 + 24);
    v21 = *(a2 + 32);
    if (v20 != v21)
    {
      while (*v20 != a1)
      {
        if (++v20 == v21)
        {
          goto LABEL_2;
        }
      }
    }

    if (v20 != v21)
    {
      return *(a2 + 48);
    }
  }

LABEL_2:
  v5 = sub_502FF8(a3, a1, 0, "stop");
  v6 = *(v5 + *(v5 - *v5 + 10));
  if (v6 <= 0xFFFFFFFEFFFFFFFFLL && v6 != 0)
  {
    v10 = sub_93D2F4(a3, v6, 0, "hall");
    v11 = (v10 - *v10);
    if (*v11 >= 5u)
    {
      v9 = v11[2];
      if (v9)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    v12 = 0;
    v13 = sub_2C939C(a3, 1u, 0);
    if (!v13)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v10 = sub_502FF8(a3, a1, 0, "stop");
  v8 = (v10 - *v10);
  if (*v8 < 5u)
  {
    goto LABEL_14;
  }

  v9 = v8[2];
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = *(v10 + v9);
  v13 = sub_2C939C(a3, 1u, 0);
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_15:
  v14 = &v13[-*v13];
  if (*v14 < 0xDu || (v15 = *(v14 + 6)) == 0)
  {
LABEL_30:
    exception = __cxa_allocate_exception(0x40uLL);
    v23 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v16 = &v13[v15 + *&v13[v15]];
  v17 = &v16[-*v16];
  if (*v17 < 0xBu)
  {
    return v12;
  }

  v18 = *(v17 + 5);
  if (!v18 || !v16[v18])
  {
    return v12;
  }

  return nullsub_1(v12);
}

void sub_957DF8(unint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v12 = sub_3A25A8(a3, a1, 0, "trip");
  v13 = sub_92FC60(a3, *(v12 + *(v12 - *v12 + 6)), 0, "line");
  v14 = (v13 - *v13);
  if (*v14 >= 0x29u && (v15 = v14[20]) != 0 && *(v13 + v15))
  {
    HIBYTE(v27) = 0;
    LOBYTE(v26[0]) = 0;
  }

  else
  {
    sub_9582B4(a1, a2, a3, v26);
  }

  sub_958420(a1, a2, a3, v24);
  v16 = HIBYTE(v27);
  if (v27 < 0)
  {
    v16 = v26[1];
  }

  if (v16)
  {
    goto LABEL_9;
  }

  v17 = HIBYTE(v25);
  if (v25 < 0)
  {
    v17 = v24[1];
  }

  if (!v17)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    goto LABEL_45;
  }

  if (!a5)
  {
LABEL_9:
    *__dst = *"{Direction}";
    v29 = 0xB00000000000000;
    if (SHIBYTE(v27) < 0)
    {
      sub_325C(&v30, v26[0], v26[1]);
    }

    else
    {
      v30 = *v26;
      v31 = v27;
    }

    *v32 = *"{Headsign}";
    v33 = 0xA00000000000000;
    if (SHIBYTE(v25) < 0)
    {
      sub_325C(&__p, v24[0], v24[1]);
    }

    else
    {
      __p = *v24;
      v35 = v25;
    }

    *v21 = 0u;
    *v22 = 0u;
    v23 = 1065353216;
    sub_2C7D4(v21, __dst);
    sub_2C7D4(v21, v32);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v32[0]);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

LABEL_29:
    operator delete(v30);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_25:
      __dst[0] = 0;
      __dst[1] = 0;
      v29 = 0;
      if ((byte_27B1AE7 & 0x80000000) == 0)
      {
LABEL_26:
        *__dst = xmmword_27B1AD0;
        v29 = unk_27B1AE0;
        goto LABEL_32;
      }

LABEL_31:
      sub_13A68(__dst, xmmword_27B1AD0, *(&xmmword_27B1AD0 + 1));
LABEL_32:
      sub_9CD974(v21, 0, 0, 0, a4, __dst);
      sub_6A5584(__dst, v21, a4, 0, a6);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst[0]);
      }

      v18 = v22[0];
      if (!v22[0])
      {
LABEL_35:
        v19 = v21[0];
        v21[0] = 0;
        if (v19)
        {
          operator delete(v19);
        }

        goto LABEL_45;
      }

      while (1)
      {
        v20 = *v18;
        if (*(v18 + 63) < 0)
        {
          operator delete(v18[5]);
          if (*(v18 + 39) < 0)
          {
LABEL_42:
            operator delete(v18[2]);
          }
        }

        else if (*(v18 + 39) < 0)
        {
          goto LABEL_42;
        }

        operator delete(v18);
        v18 = v20;
        if (!v20)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_30:
    operator delete(__dst[0]);
    __dst[0] = 0;
    __dst[1] = 0;
    v29 = 0;
    if ((byte_27B1AE7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_325C(a6, v24[0], v24[1]);
  }

  else
  {
    *a6 = *v24;
    *(a6 + 16) = v25;
  }

LABEL_45:
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return;
    }

LABEL_49:
    operator delete(v26[0]);
    return;
  }

  operator delete(v24[0]);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_49;
  }
}

void sub_9581D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  _Unwind_Resume(exception_object);
}

void sub_9582B4(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a1;
  sub_95858C(a3, &v16, a2, v12);
  nullsub_1(&v7);
  sub_9D69F4(v12, v8);
  if (SHIBYTE(v9) < 0)
  {
    sub_325C(a4, v8[0], v8[1]);
  }

  else
  {
    *a4 = *v8;
    *(a4 + 16) = v9;
  }

  if (v11 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
LABEL_6:
      v5 = v14;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v8[0]);
  v5 = v14;
  if (!v14)
  {
LABEL_7:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12[0]);
    return;
  }

LABEL_11:
  v6 = v15;
  if (v15 == v5)
  {
    v15 = v5;
    operator delete(v5);
    if (v13 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      v6 -= 4;
    }

    while (v6 != v5);
    v15 = v5;
    operator delete(v14);
    if (v13 < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_9583F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_509680(va);
  sub_395478(va1);
  _Unwind_Resume(a1);
}

void sub_95840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_395478(va);
  _Unwind_Resume(a1);
}

void sub_958420(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a1;
  sub_9586F4(a3, &v16, a2, v12);
  nullsub_1(&v7);
  sub_9D69F4(v12, v8);
  if (SHIBYTE(v9) < 0)
  {
    sub_325C(a4, v8[0], v8[1]);
  }

  else
  {
    *a4 = *v8;
    *(a4 + 16) = v9;
  }

  if (v11 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
LABEL_6:
      v5 = v14;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v8[0]);
  v5 = v14;
  if (!v14)
  {
LABEL_7:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12[0]);
    return;
  }

LABEL_11:
  v6 = v15;
  if (v15 == v5)
  {
    v15 = v5;
    operator delete(v5);
    if (v13 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      v6 -= 4;
    }

    while (v6 != v5);
    v15 = v5;
    operator delete(v14);
    if (v13 < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_95855C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_509680(va);
  sub_395478(va1);
  _Unwind_Resume(a1);
}

void sub_958578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_395478(va);
  _Unwind_Resume(a1);
}

void sub_95858C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_3A231C(a1, *a2, 0);
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v9 += &v7[*&v7[v9]];
    }
  }

  v10 = v9 + 4 * *(a2 + 4);
  v11 = (v10 + 4 + *(v10 + 4));
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 >= 0x27)
  {
    v14 = v12[19];
    if (v12[19])
    {
      v14 = (v14 + v11 + *(v14 + v11));
    }

    v15 = v12[8];
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = -1;
    if (a3 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v13 < 0x11)
  {
    goto LABEL_21;
  }

  v14 = 0;
  v15 = v12[8];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_9:
  v16 = *(v11 + v15);
  if (a3 == -1)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (!v14 || *v14 <= a3 || (v17 = v14[a3 + 1], v17 == -1))
  {
LABEL_17:
    v17 = v16;
    if (v16 != -1)
    {
      goto LABEL_18;
    }

LABEL_21:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 2;
    *(a4 + 32) = sub_12331FC();
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    return;
  }

LABEL_18:
  v18 = &v7[4 * v17 + *(v8 + 5) + *&v7[*(v8 + 5)]];
  v19 = (v18 + 4 + *(v18 + 4));

  sub_509164(v19, a4);
}

void sub_9586F4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_3A231C(a1, *a2, 0);
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 2);
    if (*(v8 + 2))
    {
      v9 += &v7[*&v7[v9]];
    }
  }

  v10 = v9 + 4 * *(a2 + 4);
  v11 = (v10 + 4 + *(v10 + 4));
  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 >= 0x25)
  {
    v14 = v12[18];
    if (v12[18])
    {
      v14 = (v14 + v11 + *(v14 + v11));
    }

    v15 = v12[7];
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = -1;
    if (a3 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v13 < 0xF)
  {
    goto LABEL_21;
  }

  v14 = 0;
  v15 = v12[7];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_9:
  v16 = *(v11 + v15);
  if (a3 == -1)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (!v14 || *v14 <= a3 || (v17 = v14[a3 + 1], v17 == -1))
  {
LABEL_17:
    v17 = v16;
    if (v16 != -1)
    {
      goto LABEL_18;
    }

LABEL_21:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 2;
    *(a4 + 32) = sub_12331FC();
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    return;
  }

LABEL_18:
  v18 = &v7[4 * v17 + *(v8 + 4) + *&v7[*(v8 + 4)]];
  v19 = (v18 + 4 + *(v18 + 4));

  sub_509164(v19, a4);
}

void sub_95885C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_92FC60(a2, a1, 0, "line");
  v9 = (v8 - *v8);
  if (*v9 >= 0x35u)
  {
    v10 = v9[26];
    if (v10)
    {
      if (*(v8 + v10))
      {
        a4[23] = 0;
        *a4 = 0;
        return;
      }
    }
  }

  v11 = sub_92FC60(a2, a1, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 >= 0xFu && (v13 = v12[7]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_943AEC(__p, *v14);
    v33 = v14 + 1;
    v32 = &v14[*v14 + 1];
    sub_943E24(&v33, &v32, __p, sub_509164);
    v15 = *__p;
    v16 = v31;
  }

  else
  {
    v16 = 0;
    v15 = 0uLL;
  }

  *v28 = v15;
  v29 = v16;
  nullsub_1(&v33);
  sub_9D6590(v28, a3 + 968, __p);
  sub_9D4538(__p, a4);
  v17 = __p[0];
  if (__p[0])
  {
    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_20:
      __p[1] = v17;
      operator delete(v19);
      goto LABEL_21;
    }

    while (1)
    {
      if (*(v18 - 1) < 0)
      {
        operator delete(*(v18 - 3));
        v20 = v18 - 7;
        if (*(v18 - 33) < 0)
        {
LABEL_18:
          operator delete(*v20);
        }
      }

      else
      {
        v20 = v18 - 7;
        if (*(v18 - 33) < 0)
        {
          goto LABEL_18;
        }
      }

      v18 = v20;
      if (v20 == v17)
      {
        v19 = __p[0];
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v21 = v28[0];
  if (v28[0])
  {
    v22 = v28[1];
    v23 = v28[0];
    if (v28[1] != v28[0])
    {
      do
      {
        v24 = *(v22 - 3);
        if (v24)
        {
          v25 = *(v22 - 2);
          v26 = *(v22 - 3);
          if (v25 != v24)
          {
            do
            {
              if (*(v25 - 1) < 0)
              {
                operator delete(*(v25 - 24));
              }

              v25 -= 32;
            }

            while (v25 != v24);
            v26 = *(v22 - 3);
          }

          *(v22 - 2) = v24;
          operator delete(v26);
        }

        v27 = (v22 - 64);
        if (*(v22 - 41) < 0)
        {
          operator delete(*v27);
        }

        v22 -= 64;
      }

      while (v27 != v21);
      v23 = v28[0];
    }

    v28[1] = v21;
    operator delete(v23);
  }
}

void sub_958AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_958ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  sub_9354C4(&a13);
  sub_941AEC(&a9);
  _Unwind_Resume(a1);
}

void sub_958AFC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_93E04C(a2, a1, 0, "system");
  v9 = (v8 - *v8);
  if (*v9 >= 0x13u)
  {
    v10 = v9[9];
    if (v10)
    {
      if (*(v8 + v10))
      {
        a4[23] = 0;
        *a4 = 0;
        return;
      }
    }
  }

  v11 = sub_93E04C(a2, a1, 0, "system");
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_943AEC(__p, *v14);
    v33 = v14 + 1;
    v32 = &v14[*v14 + 1];
    sub_943E24(&v33, &v32, __p, sub_509164);
    v15 = *__p;
    v16 = v31;
  }

  else
  {
    v16 = 0;
    v15 = 0uLL;
  }

  *v28 = v15;
  v29 = v16;
  nullsub_1(&v33);
  sub_9D6590(v28, a3 + 968, __p);
  sub_9D43A4(__p, a4);
  v17 = __p[0];
  if (__p[0])
  {
    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_20:
      __p[1] = v17;
      operator delete(v19);
      goto LABEL_21;
    }

    while (1)
    {
      if (*(v18 - 1) < 0)
      {
        operator delete(*(v18 - 3));
        v20 = v18 - 7;
        if (*(v18 - 33) < 0)
        {
LABEL_18:
          operator delete(*v20);
        }
      }

      else
      {
        v20 = v18 - 7;
        if (*(v18 - 33) < 0)
        {
          goto LABEL_18;
        }
      }

      v18 = v20;
      if (v20 == v17)
      {
        v19 = __p[0];
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v21 = v28[0];
  if (v28[0])
  {
    v22 = v28[1];
    v23 = v28[0];
    if (v28[1] != v28[0])
    {
      do
      {
        v24 = *(v22 - 3);
        if (v24)
        {
          v25 = *(v22 - 2);
          v26 = *(v22 - 3);
          if (v25 != v24)
          {
            do
            {
              if (*(v25 - 1) < 0)
              {
                operator delete(*(v25 - 24));
              }

              v25 -= 32;
            }

            while (v25 != v24);
            v26 = *(v22 - 3);
          }

          *(v22 - 2) = v24;
          operator delete(v26);
        }

        v27 = (v22 - 64);
        if (*(v22 - 41) < 0)
        {
          operator delete(*v27);
        }

        v22 -= 64;
      }

      while (v27 != v21);
      v23 = v28[0];
    }

    v28[1] = v21;
    operator delete(v23);
  }
}

void sub_958D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_958D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  sub_9354C4(&a13);
  sub_941AEC(&a9);
  _Unwind_Resume(a1);
}

void sub_958D9C(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_95885C(a1, a5, a6, v39);
  v14 = sub_92FC60(a5, a1, 0, "line");
  v15 = *(v14 + *(v14 - *v14 + 6));
  if (!a2)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(v40);
  v17 = HIBYTE(v40);
  if (v40 < 0)
  {
    v16 = v39[1];
  }

  if (v16)
  {
    HIBYTE(v38) = 0;
    LOBYTE(v37[0]) = 0;
  }

  else
  {
LABEL_6:
    sub_958AFC(v15, a4, a6, v37);
    v17 = HIBYTE(v40);
  }

  *__dst = *"{Line}";
  v42 = 0x600000000000000;
  if (v17 < 0)
  {
    sub_325C(&v43, v39[0], v39[1]);
  }

  else
  {
    v43 = *v39;
    v44 = v40;
  }

  v46 = 0x800000000000000;
  *v45 = *"{System}";
  if (SHIBYTE(v38) < 0)
  {
    sub_325C(&__p, v37[0], v37[1]);
  }

  else
  {
    __p = *v37;
    v48 = v38;
  }

  *v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  sub_2C7D4(v34, __dst);
  sub_2C7D4(v34, v45);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_28:
      operator delete(v43);
      if ((SHIBYTE(v42) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      operator delete(__dst[0]);
      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v45[0]);
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (SHIBYTE(v42) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  __dst[0] = 0;
  __dst[1] = 0;
  v42 = 0;
  v18 = sub_92FC60(a5, a1, 0, "line");
  v19 = (v18 - *v18);
  if (*v19 >= 0x4Fu && (v20 = v19[39]) != 0 && *(v18 + v20))
  {
    if (SHIBYTE(v42) < 0)
    {
      if (byte_27B1AB7 >= 0)
      {
        v31 = &xmmword_27B1AA0;
      }

      else
      {
        v31 = xmmword_27B1AA0;
      }

      if (byte_27B1AB7 >= 0)
      {
        v32 = byte_27B1AB7;
      }

      else
      {
        v32 = *(&xmmword_27B1AA0 + 1);
      }

      sub_13B38(__dst, v31, v32);
    }

    else if (byte_27B1AB7 < 0)
    {
      sub_13A68(__dst, xmmword_27B1AA0, *(&xmmword_27B1AA0 + 1));
    }

    else
    {
      *__dst = xmmword_27B1AA0;
      v42 = unk_27B1AB0;
    }

    v23 = sub_92FC60(a5, a1, 0, "line");
    v33 = (v23 - *v23);
    if (*v33 >= 0x2Bu)
    {
      v26 = v33[21];
      v25 = 1;
      if (!v26)
      {
        goto LABEL_42;
      }

LABEL_40:
      v27 = *(v23 + v26);
      goto LABEL_43;
    }

    v25 = 1;
  }

  else
  {
    if (SHIBYTE(v42) < 0)
    {
      if (byte_27B1ACF >= 0)
      {
        v21 = &xmmword_27B1AB8;
      }

      else
      {
        v21 = xmmword_27B1AB8;
      }

      if (byte_27B1ACF >= 0)
      {
        v22 = byte_27B1ACF;
      }

      else
      {
        v22 = *(&xmmword_27B1AB8 + 1);
      }

      sub_13B38(__dst, v21, v22);
    }

    else if (byte_27B1ACF < 0)
    {
      sub_13A68(__dst, xmmword_27B1AB8, *(&xmmword_27B1AB8 + 1));
    }

    else
    {
      *__dst = xmmword_27B1AB8;
      v42 = unk_27B1AC8;
    }

    v23 = sub_92FC60(a5, a1, 0, "line");
    v24 = (v23 - *v23);
    if (*v24 < 0x2Bu)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v26 = v24[21];
      if (v26)
      {
        goto LABEL_40;
      }
    }
  }

LABEL_42:
  v27 = 2;
LABEL_43:
  sub_9CD974(v34, v27, v25, 1, a3, __dst);
  sub_6A5584(__dst, v34, a3, 0, a7);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst[0]);
  }

  v28 = v35;
  if (v35)
  {
    while (1)
    {
      v29 = *v28;
      if (v28[63] < 0)
      {
        operator delete(*(v28 + 5));
        if ((v28[39] & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_51:
        operator delete(*(v28 + 2));
        operator delete(v28);
        v28 = v29;
        if (!v29)
        {
          break;
        }
      }

      else
      {
        if (v28[39] < 0)
        {
          goto LABEL_51;
        }

LABEL_48:
        operator delete(v28);
        v28 = v29;
        if (!v29)
        {
          break;
        }
      }
    }
  }

  v30 = v34[0];
  v34[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_58:
    operator delete(v39[0]);
    return;
  }

  operator delete(v37[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_58;
  }
}

void sub_95922C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_1AB28(&a27);
  if (a20 < 0)
  {
    operator delete(a15);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(a21);
LABEL_8:
  _Unwind_Resume(a1);
}

void sub_9592FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v6 = sub_93C810(a1);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v20 = sub_502FF8(a2, v6, 0, "stop");
        v21 = (v20 - *v20);
        if (*v21 >= 0x3Bu && (v22 = v21[29]) != 0)
        {
          v23 = (v20 + v22 + *(v20 + v22));
        }

        else
        {
          v23 = 0;
        }

        sub_509164(v23, v36);
        nullsub_1(v32);
        sub_9D69F4(v36, a4);
        v24 = v39;
        if (!v39)
        {
          goto LABEL_58;
        }

        v29 = v40;
        v26 = v39;
        if (v40 == v39)
        {
          goto LABEL_57;
        }

        do
        {
          if (*(v29 - 1) < 0)
          {
            operator delete(*(v29 - 3));
          }

          v29 -= 4;
        }

        while (v29 != v24);
        goto LABEL_56;
      }

      if (v7 == 2)
      {
        v12 = sub_93D2F4(a2, v6, 0, "hall");
        v13 = (v12 - *v12);
        if (*v13 >= 0x29u && (v14 = v13[20]) != 0)
        {
          v15 = (v12 + v14 + *(v12 + v14));
        }

        else
        {
          v15 = 0;
        }

        sub_509164(v15, v36);
        nullsub_1(v32);
        sub_9D69F4(v36, a4);
        v24 = v39;
        if (!v39)
        {
          goto LABEL_58;
        }

        v28 = v40;
        v26 = v39;
        if (v40 == v39)
        {
          goto LABEL_57;
        }

        do
        {
          if (*(v28 - 1) < 0)
          {
            operator delete(*(v28 - 3));
          }

          v28 -= 4;
        }

        while (v28 != v24);
        goto LABEL_56;
      }
    }

LABEL_13:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 24) = 2;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 32) = 0;
    return;
  }

  if (v7 > 4)
  {
    goto LABEL_13;
  }

  if (v7 == 3)
  {
    v16 = sub_93D480(a2, v6, 0, "station");
    v17 = (v16 - *v16);
    if (*v17 >= 0x31u && (v18 = v17[24]) != 0)
    {
      v19 = (v16 + v18 + *(v16 + v18));
    }

    else
    {
      v19 = 0;
    }

    sub_509164(v19, v36);
    nullsub_1(v32);
    sub_9D69F4(v36, a4);
    v24 = v39;
    if (!v39)
    {
      goto LABEL_58;
    }

    v25 = v40;
    v26 = v39;
    if (v40 == v39)
    {
      goto LABEL_57;
    }

    do
    {
      if (*(v25 - 1) < 0)
      {
        operator delete(*(v25 - 3));
      }

      v25 -= 4;
    }

    while (v25 != v24);
    goto LABEL_56;
  }

  v35 = v6;
  v8 = sub_503310(a2, v6, 0, "access point");
  v9 = (v8 - *v8);
  if (*v9 >= 0x23u && (v10 = v9[17]) != 0)
  {
    v11 = (v8 + v10 + *(v8 + v10));
  }

  else
  {
    v11 = 0;
  }

  sub_509164(v11, v36);
  v27 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v27 = v36[1];
  }

  if (v27)
  {
    v32[0] = sub_12331FC();
    if (sub_1232EE0(&v38, v32))
    {
      sub_959778(a4, &v41, v36);
      goto LABEL_50;
    }
  }

  sub_959860(a2, &v35, &__p);
  v30 = __p;
  if (__p != v34)
  {
    sub_9597D0(a2, *__p, v32);
    sub_959778(a4, &v41, v32);
    sub_395478(v32);
    v30 = __p;
    if (!__p)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 24) = 2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 32) = 0;
  if (v30)
  {
LABEL_49:
    v34 = v30;
    operator delete(v30);
  }

LABEL_50:
  v24 = v39;
  if (!v39)
  {
    goto LABEL_58;
  }

  v31 = v40;
  v26 = v39;
  if (v40 != v39)
  {
    do
    {
      if (*(v31 - 1) < 0)
      {
        operator delete(*(v31 - 3));
      }

      v31 -= 4;
    }

    while (v31 != v24);
LABEL_56:
    v26 = v39;
  }

LABEL_57:
  v40 = v24;
  operator delete(v26);
LABEL_58:
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_959720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_395478(&a10);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
    sub_395478(&a22);
    _Unwind_Resume(a1);
  }

  sub_395478(&a22);
  _Unwind_Resume(a1);
}

void sub_9597D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_93D480(a1, a2, 0, "station");
  v5 = (v4 - *v4);
  if (*v5 >= 0x31u && (v6 = v5[24]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
    v8 = a3;
  }

  else
  {
    v7 = 0;
    v8 = a3;
  }

  sub_509164(v7, v8);
}

void sub_959860(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_503310(a1, *a2, 0, "access point");
  v6 = (v5 - *v5);
  if (*v6 >= 0x11u && (v7 = v6[8]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_959938(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_959954@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 696);
  v4 = *(result + 624);
  if (0xEEEEEEEEEEEEEEEFLL * ((*(result + 632) - v4) >> 3) <= v3)
  {
    sub_6FAB4();
  }

  v5 = v4 + 120 * v3;
  v6 = *(v5 + 48);
  v8 = v5 + 24;
  v7 = *(v5 + 24);
  if (v6 >= (*(v8 + 8) - v7) >> 5)
  {
    sub_6FAB4();
  }

  v9 = v7 + 32 * v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = *(v9 + 8);
  if (v10 != *v9)
  {
    if (((v10 - *v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 24) = *(v9 + 24);
  return result;
}

uint64_t sub_959A2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 632);
    for (i = a4; v5 != v6; v5 += 30)
    {
      v8 = *v5;
      v9 = v5[3];
      v10 = sub_3A231C(a3, v5[1] | (v8 << 32), 0);
      v11 = &v10[-*v10];
      if (*v11 < 5u)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v11 + 2);
        if (*(v11 + 2))
        {
          v12 += &v10[*&v10[v12]];
        }
      }

      v13 = (v12 + 4 * v8 + 4 + *(v12 + 4 * v8 + 4));
      v14 = (v13 - *v13);
      if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
      {
        v16 = *(v13 + v15);
      }

      else
      {
        v16 = -1;
      }

      v20 = *&v10[24 * v16 + 4 + 24 * v9 + *(v11 + 3) + *&v10[*(v11 + 3)]];
      sub_A2324(&i, &v20);
    }
  }

  else if (!*(a1 + 584))
  {
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    if (v17 != v18)
    {
      operator new();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return sub_2CAA68(a4);
}

void sub_959C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_959CC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  result = sub_93C810(a1);
  v43 = result;
  v44 = v11;
  if (a2)
  {
    v12 = *(a1 + 632) - *(a1 + 624);
    if (v12)
    {
      if (!((0xEEEEEEEEEEEEEEEFLL * (v12 >> 3)) >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    v13 = *(a1 + 624);
    v14 = *(a1 + 632);
    for (__src = a5; v13 != v14; v13 += 30)
    {
      v15 = sub_3A25A8(a4, v13[1] | (*v13 << 32), 0, "trip");
      *&v41 = *(v15 + *(v15 - *v15 + 6));
      sub_A2324(&__src, &v41);
    }

    return sub_2CAA68(a5);
  }

  if (v11 > 2)
  {
    if (v11 > 4)
    {
      if (v11 == 5)
      {
        __src = result;
        sub_95AC54(a5, &__src, v46, 1uLL);
      }

      else if (v11 == 6)
      {
        v25 = sub_3A25A8(a4, result, 0, "trip");
        __src = *(v25 + *(v25 - *v25 + 6));
        sub_95AC54(a5, &__src, v46, 1uLL);
      }

      return sub_2CAA68(a5);
    }

    if (v11 != 3)
    {
      sub_959860(a3, &v43, &__src);
      v16 = __src;
      if (__src != v46[0])
      {
        sub_95A3B4(a3, __src, &v41);
        v17 = *a5;
        if (*a5)
        {
          a5[1] = v17;
          operator delete(v17);
        }

        *a5 = v41;
        a5[2] = v42;
        v16 = __src;
      }

      if (v16)
      {
        v46[0] = v16;
        operator delete(v16);
      }

      return sub_2CAA68(a5);
    }

    v26 = sub_93D480(a3, result, 0, "station");
    v27 = (v26 - *v26);
    if (*v27 >= 0xFu)
    {
      v28 = v27[7];
      if (v28)
      {
        v29 = (v26 + v28 + *(v26 + v28));
        v30 = *v29;
        if (v30)
        {
          v31 = 8 * v30;
          v32 = v29 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v32 += 2;
            v31 -= 8;
          }

          while (v31);
        }
      }
    }

LABEL_44:
    v40 = *a5;
    if (*a5)
    {
      a5[1] = v40;
      operator delete(v40);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return sub_2CAA68(a5);
  }

  switch(v11)
  {
    case 0:
      return result;
    case 1:
      v33 = sub_502FF8(a3, result, 0, "stop");
      v34 = (v33 - *v33);
      if (*v34 >= 0xFu)
      {
        v35 = v34[7];
        if (v35)
        {
          v36 = (v33 + v35 + *(v33 + v35));
          v37 = *v36;
          if (v37)
          {
            v38 = 8 * v37;
            v39 = v36 + 1;
            do
            {
              if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
              {
                operator new();
              }

              v39 += 2;
              v38 -= 8;
            }

            while (v38);
          }
        }
      }

      goto LABEL_44;
    case 2:
      v18 = sub_93D2F4(a3, result, 0, "hall");
      v19 = (v18 - *v18);
      if (*v19 >= 0xFu)
      {
        v20 = v19[7];
        if (v20)
        {
          v21 = (v18 + v20 + *(v18 + v20));
          v22 = *v21;
          if (v22)
          {
            v23 = 8 * v22;
            v24 = v21 + 1;
            do
            {
              if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
              {
                operator new();
              }

              v24 += 2;
              v23 -= 8;
            }

            while (v23);
          }
        }
      }

      goto LABEL_44;
  }

  return sub_2CAA68(a5);
}

void sub_95A33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_95A3B4(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_93D480(a1, *a2, 0, "station");
  v6 = (v5 - *v5);
  if (*v6 >= 0xFu && (v7 = v6[7]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = a3;
    v10 = a1;
  }

  else
  {
    v8 = 0;
    v9 = a3;
    v10 = a1;
  }

  sub_95ABA0(v10, v8, v9);
}

uint64_t sub_95A454(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    v8 = *a1;
    while ((*(v8 + 1128) - 2) > 2)
    {
      v8 += 1136;
      if (v8 == v5)
      {
        goto LABEL_5;
      }
    }

    v11 = 0;
    while (1)
    {
      v32 = *(v6 + 1128);
      if (v32 == 3)
      {
        v31 = sub_4D1DB8(v6 + 32);
      }

      else
      {
        if (v32 != 2)
        {
          goto LABEL_43;
        }

        v31 = sub_5039D4(v6, a2);
      }

      v11 += v31;
LABEL_43:
      v6 += 1136;
      if (v6 == v5)
      {
        v9 = *a1;
        v10 = a1[1];
        if (*a1 == v10)
        {
          return v11;
        }

LABEL_7:
        v12 = 0;
        while (2)
        {
          v13 = *(v9 + 1128);
          if (v13 != 1)
          {
            if (v13 == 3)
            {
              v12 += *(sub_3CF22C(v9 + 32) + 4);
              goto LABEL_9;
            }

            if (v13 == 2)
            {
              v14 = *(v9 + 16);
              v41 = *v9;
              LODWORD(v42[0]) = v14;
              v47 = 2;
              v15 = sub_503828(&v41);
              v16 = *(v9 + 16);
              v34 = *v9;
              LODWORD(v35[0]) = v16;
              v40 = 2;
              v17 = sub_50360C(&v34);
              if (HIDWORD(v15) == 0x7FFFFFFF || HIDWORD(v17) == 0x7FFFFFFF)
              {
                v18 = 10 * (v15 - v17);
                v19 = v40;
                if (v40 == -1)
                {
LABEL_30:
                  if (v47 != -1)
                  {
LABEL_35:
                    (off_266DE90[v47])(&v34, &v41);
                  }

LABEL_36:
                  v12 += v18;
                  goto LABEL_9;
                }
              }

              else
              {
                v18 = 10 * (HIDWORD(v15) - HIDWORD(v17));
                v19 = v40;
                if (v40 == -1)
                {
                  goto LABEL_30;
                }
              }

              (off_266DE90[v19])(v48, &v34);
              goto LABEL_30;
            }

LABEL_9:
            v9 += 1136;
            if (v9 == v10)
            {
              return v11;
            }

            continue;
          }

          break;
        }

        if (!a3)
        {
          goto LABEL_9;
        }

        v20 = *v9;
        v21 = *(v9 + 16);
        *(v42 + 12) = *(v9 + 28);
        v42[0] = v21;
        v41 = v20;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v23 = *(v9 + 48);
        v22 = *(v9 + 56);
        if (v22 != v23)
        {
          if (((v22 - v23) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v46 = *(v9 + 72);
        v47 = 1;
        v24 = sub_503828(&v41);
        v25 = *v9;
        v26 = *(v9 + 16);
        *(v35 + 12) = *(v9 + 28);
        v34 = v25;
        v35[0] = v26;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        v28 = *(v9 + 48);
        v27 = *(v9 + 56);
        if (v27 != v28)
        {
          if (((v27 - v28) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v39 = *(v9 + 72);
        v40 = 1;
        v29 = sub_50360C(&v34);
        if (HIDWORD(v24) == 0x7FFFFFFF || HIDWORD(v29) == 0x7FFFFFFF)
        {
          v18 = 10 * (v24 - v29);
          v30 = v40;
          if (v40 == -1)
          {
LABEL_34:
            if (v47 != -1)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else
        {
          v18 = 10 * (HIDWORD(v24) - HIDWORD(v29));
          v30 = v40;
          if (v40 == -1)
          {
            goto LABEL_34;
          }
        }

        (off_266DE90[v30])(v48, &v34);
        goto LABEL_34;
      }
    }
  }

LABEL_5:
  if ((a3 & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (*a1 != v10)
  {
    goto LABEL_7;
  }

  return v11;
}

void sub_95A83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_95B404(&a9);
  sub_95B404(&STACK[0x470]);
  _Unwind_Resume(a1);
}

BOOL sub_95A88C(uint64_t a1)
{
  v1 = *(a1 + 624);
  v2 = *(a1 + 632);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = *(a1 + 696);
  if (0xEEEEEEEEEEEEEEEFLL * ((v2 - v1) >> 3) <= v3)
  {
    sub_6FAB4();
  }

  return *(v1 + 120 * v3 + 24) != *(v1 + 120 * v3 + 32);
}

BOOL sub_95A8EC(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = **(a4 + 3896);
  if (v8 && (v11 = sub_39F47C(v8, a1, a2, *(a4 + 3904))) != 0 && (v12 = v11[5], 0xCCCCCCCCCCCCCCCDLL * ((v11[6] - v12) >> 2) > a3) && *(v12 + 20 * a3) != 255)
  {
    v13 = *(sub_95AE74(a4, a1, a2, a3, 0) + 18);
  }

  else
  {
    v14 = sub_3A231C(a5, a1, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (*(v15 + 2))
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = (v16 + 4 * HIDWORD(a1) + 4 + *(v16 + 4 * HIDWORD(a1) + 4));
    v18 = (v17 - *v17);
    if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
    {
      v20 = *(v17 + v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v14[24 * v20 + 22 + 24 * a3 + *(v15 + 3) + *&v14[*(v15 + 3)]] != 0;
  }

  return (v13 & 1) == 0;
}

uint64_t sub_95AA48(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    v2 = *(a1 + 96);
    if (!v2)
    {
LABEL_3:
      v3 = *(a1 + 72);
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v2 = *(a1 + 96);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  v5 = *(a1 + 104);
  v6 = v2;
  if (v5 == v2)
  {
    goto LABEL_22;
  }

  do
  {
    if (*(v5 - 1) < 0)
    {
      operator delete(*(v5 - 3));
      if ((*(v5 - 33) & 0x80000000) == 0)
      {
LABEL_14:
        if (*(v5 - 65) < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    else if ((*(v5 - 33) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(*(v5 - 7));
    if (*(v5 - 65) < 0)
    {
LABEL_19:
      operator delete(*(v5 - 11));
      v7 = *(v5 - 26);
      if (v7 == -1)
      {
        goto LABEL_11;
      }

LABEL_20:
      (off_266DE68[v7])(&v8, v5 - 17);
      goto LABEL_11;
    }

LABEL_15:
    v7 = *(v5 - 26);
    if (v7 != -1)
    {
      goto LABEL_20;
    }

LABEL_11:
    *(v5 - 26) = -1;
    v5 -= 18;
  }

  while (v5 != v2);
  v6 = *(a1 + 96);
LABEL_22:
  *(a1 + 104) = v2;
  operator delete(v6);
  v3 = *(a1 + 72);
  if (v3)
  {
LABEL_4:
    *(a1 + 80) = v3;
    operator delete(v3);
  }

LABEL_5:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_25:
    operator delete(*(a1 + 8));
    return a1;
  }

  if (*(a1 + 31) < 0)
  {
    goto LABEL_25;
  }

  return a1;
}

void sub_95ABA0(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v4 = *a2;
    if (v4)
    {
      v6 = 8 * v4;
      v7 = (a2 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v8 = *v7;
          sub_2512DC(a3, &v8);
        }

        ++v7;
        v6 -= 8;
      }

      while (v6);
    }
  }
}

void sub_95AC38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_95AC54(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

uint64_t sub_95AE74(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v9 = sub_95B1D4(a1, a2, a3, a5);
  if (v9)
  {
    v10 = a4;
    v11 = v9[5];
    if (0xCCCCCCCCCCCCCCCDLL * ((v9[6] - v11) >> 2) > a4 && *(v11 + 20 * a4) != 255)
    {
      return v11 + 20 * v10;
    }
  }

  if (a5 != 1)
  {
    if (!a5)
    {
      __val = a3;
      v13 = HIDWORD(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v15 = a2;
      v16 = exception;
      v30.__r_.__value_.__r.__words[0] = __PAIR64__(v15, v13);
      sub_2FF494(&v30, &v31);
      sub_23E08("Could not obtain stop time update for trip ", &v31, &v32);
      sub_30F54(", schedule index ", &v32, &v33);
      std::to_string(&v30, __val);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v30;
      }

      else
      {
        v17 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v33, v17, size);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      sub_30F54(", and stop index ", &v34, &v35);
      std::to_string(&v29, a4);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v29;
      }

      else
      {
        v21 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v29.__r_.__value_.__l.__size_;
      }

      v23 = std::string::append(&v35, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v37 = v23->__r_.__value_.__r.__words[2];
      v36 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (v37 >= 0)
      {
        v25 = &v36;
      }

      else
      {
        v25 = v36;
      }

      if (v37 >= 0)
      {
        v26 = HIBYTE(v37);
      }

      else
      {
        v26 = *(&v36 + 1);
      }

      v27 = sub_2D390(v16, v25, v26);
    }

    v11 = v9[5];
    v10 = a4;
    return v11 + 20 * v10;
  }

  return 0;
}

void sub_95B070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((*(v45 - 81) & 0x80000000) == 0)
    {
LABEL_5:
      if ((a45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v45 - 81) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v45 - 104));
  if ((a45 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a40);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a16);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a34);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_16:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_17:
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(__p);
  goto LABEL_17;
}

uint64_t *sub_95B1D4(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v8 = **(a1 + 3896);
  if (!v8 || (result = sub_39F47C(v8, a2, a3, *(a1 + 3904))) == 0)
  {
    if (!a4)
    {
      v10 = HIDWORD(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = a2;
      v13 = exception;
      v21.__r_.__value_.__r.__words[0] = __PAIR64__(v12, v10);
      sub_2FF494(&v21, &v22);
      sub_23E08("Could not obtain trip update for trip ", &v22, &v23);
      sub_30F54(" and schedule index ", &v23, &v24);
      std::to_string(&v21, a3);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v21;
      }

      else
      {
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v24, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v26 = v16->__r_.__value_.__r.__words[2];
      v25 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      if (v26 >= 0)
      {
        v19 = HIBYTE(v26);
      }

      else
      {
        v19 = *(&v25 + 1);
      }

      v20 = sub_2D390(v13, v18, v19);
    }

    return 0;
  }

  return result;
}

void sub_95B324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_95B404(uint64_t a1)
{
  v2 = *(a1 + 1128);
  if (v2 != -1)
  {
    (off_266DE90[v2])(&v4, a1);
  }

  *(a1 + 1128) = -1;
  return a1;
}

void sub_95B800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B1A88)
  {
    qword_27B1A90 = qword_27B1A88;
    operator delete(qword_27B1A88);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_95B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = a5;
  *&result = 0x8000000080000000;
  *(a1 + 156) = 0x8000000080000000;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_95B980(uint64_t a1, char **a2)
{
  sub_2CE7AC(a1 + 32, *(a1 + 40), *a2, a2[1], (a2[1] - *a2) >> 3);
  sub_2CE7AC(a1 + 80, *(a1 + 88), *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

uint64_t *sub_95B9D8(uint64_t *a1, unint64_t a2, int a3)
{
  v6 = sub_3A25A8(a1[3], a2, 0, "trip");
  v7 = *(v6 + *(v6 - *v6 + 6));
  v8 = sub_3A25A8(a1[3], a2, 0, "trip");
  v9 = (v8 - *v8);
  if (*v9 >= 9u)
  {
    v10 = v9[4];
    if (v10)
    {
      if (a3 + 1 < *(v8 + v10))
      {
        v11 = sub_3A231C(a1[3], a2, 0);
        v12 = &v11[-*v11];
        if (*v12 < 5u)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v12 + 2);
          if (*(v12 + 2))
          {
            v13 += &v11[*&v11[v13]];
          }
        }

        v14 = (a2 >> 30) & 0x3FFFFFFFCLL;
        v15 = (v13 + v14 + 4 + *(v13 + v14 + 4));
        v16 = (v15 - *v15);
        if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
        {
          v18 = *(v15 + v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = *&v11[24 * (v18 + a3) + 4 + *(v12 + 3) + *&v11[*(v12 + 3)]];
        v20 = sub_3A231C(a1[3], a2, 0);
        v21 = &v20[-*v20];
        if (*v21 < 5u)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v21 + 2);
          if (*(v21 + 2))
          {
            v22 += &v20[*&v20[v22]];
          }
        }

        v23 = (v22 + v14 + 4 + *(v22 + v14 + 4));
        v24 = (v23 - *v23);
        if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
        {
          v26 = *(v23 + v25);
        }

        else
        {
          v26 = -1;
        }

        v27 = *&v20[24 * (v26 + a3 + 1) + 4 + *(v21 + 3) + *&v20[*(v21 + 3)]];
        v29 = a1[5];
        v28 = a1[6];
        if (v29 >= v28)
        {
          v31 = a1[4];
          v32 = v29 - v31;
          v33 = (v29 - v31) >> 3;
          v34 = v33 + 1;
          if ((v33 + 1) >> 61)
          {
            sub_1794();
          }

          v35 = v28 - v31;
          if (v35 >> 2 > v34)
          {
            v34 = v35 >> 2;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            if (!(v36 >> 61))
            {
              operator new();
            }

            goto LABEL_48;
          }

          v37 = (v29 - v31) >> 3;
          v38 = (8 * v33);
          v39 = (8 * v33 - 8 * v37);
          *v38 = v19;
          v30 = v38 + 1;
          memcpy(v39, v31, v32);
          a1[4] = v39;
          a1[5] = v30;
          a1[6] = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v29 = v19;
          v30 = v29 + 8;
        }

        a1[5] = v30;
        v40 = a1[14];
        v41 = a1[15];
        if (v40 < v41)
        {
          *v40 = v7;
          *(v40 + 1) = v19;
          v42 = v40 + 24;
          *(v40 + 2) = v27;
LABEL_46:
          a1[14] = v42;
          return a1;
        }

        v43 = a1[13];
        v44 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v43) >> 3) + 1;
        if (v44 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v43) >> 3);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x555555555555555)
        {
          v46 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v46 = v44;
        }

        if (!v46)
        {
          v47 = (8 * ((v40 - v43) >> 3));
          *v47 = v7;
          v47[1] = v19;
          v47[2] = v27;
          v42 = v47 + 3;
          v48 = v47 - (v40 - v43);
          memcpy(v48, v43, v40 - v43);
          a1[13] = v48;
          a1[14] = v42;
          a1[15] = 0;
          if (v43)
          {
            operator delete(v43);
          }

          goto LABEL_46;
        }

        if (v46 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_48:
        sub_1808();
      }
    }
  }

  return a1;
}

void sub_95BD68(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1[1] + 11688))
  {
    v50 = 0;
    __dst = 0;
    v52 = 0;
    v5 = a1[16];
    v4 = a1[17];
    if (v4 != v5)
    {
      if (((v4 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v6 = a1[10];
    for (i = a1[11]; v6 != i; ++v6)
    {
      *&v53 = *v6;
      DWORD2(v54) = 1;
      sub_95C428(a1, &v53, &__p);
      sub_95F494(&v50, __dst, __p, v49, (v49 - __p) >> 3);
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }
    }

    v8 = a1[7];
    v9 = a1[8];
    while (v8 != v9)
    {
      *&v53 = *v8;
      DWORD2(v54) = 0;
      sub_95C428(a1, &v53, &__p);
      sub_95F494(&v50, __dst, __p, v49, (v49 - __p) >> 3);
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }

      ++v8;
    }

    v10 = a1[13];
    for (j = a1[14]; v10 != j; v10 += 24)
    {
      v53 = *v10;
      *&v54 = *(v10 + 16);
      DWORD2(v54) = 2;
      sub_95C428(a1, &v53, &__p);
      sub_95F494(&v50, __dst, __p, v49, (v49 - __p) >> 3);
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }
    }

    v12 = 126 - 2 * __clz((__dst - v50) >> 3);
    if (__dst == v50)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    sub_95F8B4(v50, __dst, &v53, v13, 1);
    v14 = v50;
    v15 = __dst;
    if (v50 != __dst)
    {
      v16 = v50 - 8;
      while (v16 + 16 != __dst)
      {
        v17 = *(v16 + 2);
        v16 += 8;
        if (v17 == *(v16 + 2) && v16[4] == v16[12])
        {
          v19 = v16 + 16;
          if (v16 + 16 != __dst)
          {
            do
            {
              if (*v16 != *v19 || v16[4] != v19[4])
              {
                v21 = v19[4];
                *(v16 + 2) = *v19;
                v16 += 8;
                v16[4] = v21;
              }

              v19 += 8;
            }

            while (v19 != v15);
            v15 = __dst;
          }

          if (v16 + 8 != v15)
          {
            v15 = v16 + 8;
            __dst = v16 + 8;
          }

          break;
        }
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_960D0C(a2, (v15 - v14) >> 3);
    v22 = v50;
    v23 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v32 = *v22;
        v33 = *(a1[1] + 11688);
        if (*(v22 + 4) == 1)
        {
          v36 = v33 + 8;
          v34 = *(v33 + 8);
          v35 = *(v36 + 8);
        }

        else
        {
          v37 = v33 + 32;
          v34 = *(v33 + 32);
          v35 = *(v37 + 8);
        }

        if (0x823EE08FB823EE09 * ((v35 - v34) >> 3) <= v32)
        {
          sub_6FAB4();
        }

        sub_39A0FC(&v53, v34 + 456 * v32);
        v38 = a2[1];
        if (v38 < a2[2])
        {
          *v38 = v53;
          v24 = v54;
          *(v38 + 32) = v55;
          *(v38 + 16) = v24;
          v55 = 0;
          v54 = 0uLL;
          *(v38 + 40) = v56;
          *(v38 + 64) = 0;
          *(v38 + 72) = 0;
          *(v38 + 56) = 0;
          *(v38 + 56) = v57;
          *(v38 + 72) = v58;
          v57 = 0uLL;
          v25 = v59;
          *(v38 + 96) = v60;
          *(v38 + 80) = v25;
          v58 = 0;
          v59 = 0uLL;
          v60 = 0;
          *(v38 + 104) = v61;
          *(v38 + 120) = 0;
          *(v38 + 128) = 0;
          *(v38 + 136) = 0;
          *(v38 + 120) = v62;
          *(v38 + 136) = v63;
          v62 = 0uLL;
          v26 = v64;
          *(v38 + 160) = v65;
          *(v38 + 144) = v26;
          v63 = 0;
          v64 = 0uLL;
          v65 = 0;
          *(v38 + 168) = v66;
          *(v38 + 184) = 0;
          *(v38 + 192) = 0;
          *(v38 + 200) = 0;
          *(v38 + 184) = v67;
          *(v38 + 200) = v68;
          v67 = 0uLL;
          v27 = v69;
          *(v38 + 224) = v70;
          *(v38 + 208) = v27;
          v68 = 0;
          v69 = 0uLL;
          v70 = 0;
          *(v38 + 232) = v71;
          *(v38 + 248) = 0;
          *(v38 + 256) = 0;
          *(v38 + 264) = 0;
          *(v38 + 248) = v72;
          *(v38 + 264) = v73;
          v72 = 0uLL;
          v28 = v74;
          *(v38 + 288) = v75;
          *(v38 + 272) = v28;
          v73 = 0;
          v74 = 0uLL;
          v75 = 0;
          *(v38 + 296) = v76;
          *(v38 + 312) = 0;
          *(v38 + 320) = 0;
          *(v38 + 328) = 0;
          *(v38 + 312) = v77;
          *(v38 + 320) = v78;
          v77 = 0;
          *&v78 = 0;
          v29 = v79;
          *(v38 + 352) = v80;
          *(v38 + 336) = v29;
          *(&v78 + 1) = 0;
          v79 = 0uLL;
          v80 = 0;
          *(v38 + 360) = v81;
          *(v38 + 376) = 0;
          *(v38 + 384) = 0;
          *(v38 + 392) = 0;
          *(v38 + 376) = v82;
          *(v38 + 384) = v83;
          v82 = 0;
          v83 = 0uLL;
          v30 = v85;
          *(v38 + 400) = v84;
          *(v38 + 416) = v30;
          *(v38 + 424) = 0;
          *(v38 + 432) = 0;
          *(v38 + 440) = 0;
          *(v38 + 424) = v86;
          *(v38 + 432) = v87;
          v86 = 0;
          v87 = 0uLL;
          *(v38 + 448) = v88;
          v31 = v38 + 456;
        }

        else
        {
          v31 = sub_961080(a2, &v53);
        }

        a2[1] = v31;
        sub_399184(&v53);
        v22 += 2;
      }

      while (v22 != v23);
    }

    sub_95C85C(a1, a2);
    if (*a1 == 1)
    {
      sub_39CE1C(a2);
    }

    v39 = *a2;
    v40 = a2[1];
    v41 = v40 - *a2;
    v42 = 0x823EE08FB823EE09 * (v41 >> 3);
    if (v41 < 1)
    {
      v47 = 0;
      v43 = 0;
    }

    else
    {
      v43 = 0x823EE08FB823EE09 * (v41 >> 3);
      while (1)
      {
        v44 = operator new(456 * v43, &std::nothrow);
        if (v44)
        {
          break;
        }

        v45 = v43 >> 1;
        v46 = v43 > 1;
        v43 >>= 1;
        if (!v46)
        {
          v47 = 0;
          v43 = v45;
          goto LABEL_63;
        }
      }

      v47 = v44;
    }

LABEL_63:
    sub_961334(v39, v40, v42, v47, v43);
    if (v47)
    {
      operator delete(v47);
    }

    if (v50)
    {
      __dst = v50;
      operator delete(v50);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_95C384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (v16)
  {
    operator delete(v16);
  }

  sub_94FC68(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_95C428(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = (a1 + 156);
  if (*(a1 + 156) == 0x7FFFFFFF)
  {
    v5 = *(a1 + 152);
    v6 = *(a2 + 24);
    if (v6 != 2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = *a2;
    v10 = *(a1 + 8);
    *&v11 = 0xFFFFFFFF00000000;
    *(&v11 + 1) = 0xFFFFFFFF00000000;
    v46 = v11;
    v45 = *(a2 + 8);
    v44 = 0;
    v43 = 0uLL;
    sub_95DCF4(v10, v45, 0, v5, v5, 1, v8, &v46, &v45, &v43);
    v7 = v43;
    v12 = *(&v43 + 1);
    v13 = v43;
    v14 = a1;
    if (v43 == *(&v43 + 1))
    {
LABEL_29:
      if (v13 == *(&v43 + 1))
      {
        goto LABEL_51;
      }

      v28 = v13 + 7;
      if (v13 + 7 == *(&v43 + 1))
      {
        v29 = v13;
LABEL_49:
        if (v29 != v12)
        {
          *(&v7 + 1) = v29;
        }

        goto LABEL_51;
      }

      v29 = v13;
      while (1)
      {
        v31 = v13[7];
        v32 = *(v13 + 32);
        v13 = v28;
        v33 = *(*(v14 + 8) + 11688);
        if (v32 == 1)
        {
          v36 = v33 + 8;
          v34 = *(v33 + 8);
          v35 = *(v36 + 8);
        }

        else
        {
          v37 = v33 + 32;
          v34 = *(v33 + 32);
          v35 = *(v37 + 8);
        }

        if (0x823EE08FB823EE09 * ((v35 - v34) >> 3) <= v31)
        {
          break;
        }

        v38 = v34 + 456 * v31;
        v39 = *(v38 + 424);
        v40 = *(v38 + 432);
        while (v39 != v40)
        {
          if (*(v39 + 96) == 1)
          {
            v41 = *(v39 + 16);
            v42 = *(v39 + 24);
            if (v41 != v42)
            {
              while (*v41 != v8)
              {
                if (++v41 == v42)
                {
                  goto LABEL_40;
                }
              }
            }

            if (v41 != v42)
            {
              v30 = *v13;
              *(v29 + 3) = *(v13 + 3);
              *v29 = v30;
              v29 += 7;
              break;
            }
          }

LABEL_40:
          v39 += 104;
        }

        v28 = v13 + 7;
        if (v13 + 7 == v12)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v15 = *(*(a1 + 8) + 11688);
      v13 = v43;
      while (1)
      {
        v16 = *v13;
        if (*(v13 + 4) == 1)
        {
          v17 = v15[1];
          v18 = v15[2];
        }

        else
        {
          v17 = v15[4];
          v18 = v15[5];
        }

        if (0x823EE08FB823EE09 * ((v18 - v17) >> 3) <= v16)
        {
          break;
        }

        v19 = v17 + 456 * v16;
        v20 = *(v19 + 424);
        v21 = *(v19 + 432);
        while (1)
        {
          if (v20 == v21)
          {
            goto LABEL_29;
          }

          if (*(v20 + 96) == 1)
          {
            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v23 != v22)
            {
              while (*v23 != v8)
              {
                if (++v23 == v22)
                {
                  goto LABEL_17;
                }
              }
            }

            if (v23 != v22)
            {
              break;
            }
          }

LABEL_17:
          v20 += 104;
        }

        v13 += 7;
        if (v13 == *(&v43 + 1))
        {
          goto LABEL_51;
        }
      }
    }

    sub_6FAB4();
  }

  if (*(a1 + 160) == 0x7FFFFFFF)
  {
    v4 = (a1 + 152);
  }

  v5 = *v4;
  v6 = *(a2 + 24);
  if (v6 == 2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v6 == 1)
  {
    v24 = *(a1 + 8);
    v25 = *a2;
    v44 = 0;
    v43 = 0uLL;
    *&v26 = 0xFFFFFFFF00000000;
    *(&v26 + 1) = 0xFFFFFFFF00000000;
    v46 = v26;
    v45 = v26;
    sub_95DCF4(v24, v25, 0, v5, v5, 0, 0xFFFFFFFF00000000, &v46, &v45, &v43);
    v7 = v43;
  }

  else
  {
    if (v6)
    {
      v27 = 0;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      goto LABEL_54;
    }

    sub_95D75C(*(a1 + 8), *a2, 0, v5, v5, &v43);
    v7 = v43;
  }

LABEL_51:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27 = v7;
  if (*(&v7 + 1) != v7)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((*(&v7 + 1) - v7) >> 2)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

LABEL_54:
  if (v27)
  {
    operator delete(v27);
  }
}