void sub_8ADC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_8ADC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A58C(va);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_8ADCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

BOOL sub_8ADCC8(uint64_t a1)
{
  result = sub_83AA30(a1);
  if (result)
  {
    v3 = 136;
    if (*(a1 + 2552))
    {
      v3 = 128;
    }

    return *(a1 + 6000) > *(*(a1 + 2536) + v3);
  }

  return result;
}

void sub_8ADDB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5ED7B0(va);
  sub_5ED7B0(v2);
  _Unwind_Resume(a1);
}

void sub_8ADDE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 2568);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    if (v3 == 1 && *(a1 + 2528) >= 200)
    {
      sub_8F1718(a1 + 2576, &v56);
      sub_8C71E4(v49, &v56);
      sub_6817B4(v49, *(a1 + 2528), *(a1 + 2528) - 100, *(a1 + 12008));
      v50 = 1;
      sub_68179C(v49, 87);
      v5 = sub_8A4848(*(a1 + 11952), 0);
      if (*(v5 + 23) < 0)
      {
        sub_325C(__p, *v5, *(v5 + 8));
      }

      else
      {
        *__p = *v5;
        v48 = *(v5 + 16);
      }

      v6 = HIBYTE(v48);
      if (v48 < 0)
      {
        v6 = __p[1];
      }

      if (v6)
      {
        if (SHIBYTE(v52) < 0)
        {
          if (v48 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          sub_13B38(&v51, v7, v6);
        }

        else if (SHIBYTE(v48) < 0)
        {
          sub_13A68(&v51, __p[0], __p[1]);
        }

        else
        {
          v51 = *__p;
          v52 = v48;
        }
      }

      v8 = a2[1];
      if (v8 >= a2[2])
      {
        v9 = sub_8C7408(a2, v49);
      }

      else
      {
        sub_5F01C8(a2[1], v49);
        v9 = v8 + 704;
      }

      a2[1] = v9;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      sub_5C3378(v49);
      v10 = v60;
      if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      v11 = v59;
      if (v59)
      {
        do
        {
          v12 = *v11;
          sub_55F7FC((v11 + 2));
          operator delete(v11);
          v11 = v12;
        }

        while (v12);
      }

      v13 = v58;
      v58 = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v14 = v56;
      if (v56)
      {
        v15 = v57;
        v16 = v56;
        if (v57 != v56)
        {
          do
          {
            v17 = *(v15 - 1);
            v15 -= 3;
            if (v17 < 0)
            {
              operator delete(*v15);
            }
          }

          while (v15 != v14);
          v16 = v56;
        }

        v57 = v14;
        operator delete(v16);
      }
    }

    sub_8F0E8C(a1 + 2576, &v56);
    v18 = v56;
    if (v57 != v56)
    {
      v19 = 0;
      v20 = *(a1 + 2528);
      v43 = 0x4EC4EC4EC4EC4EC5 * (v57 - v56);
      do
      {
        v21 = v56;
        v22 = sub_8A4848(*(a1 + 11952), v19);
        sub_8C71E4(v49, &v21[13 * v19]);
        v23 = v20 - *(v22 + 232);
        sub_6817B4(v49, v20, v23, *(a1 + 12008));
        v50 = 1;
        if (*(v22 + 23) < 0)
        {
          sub_325C(__p, *v22, *(v22 + 8));
        }

        else
        {
          *__p = *v22;
          v48 = *(v22 + 16);
        }

        v24 = HIBYTE(v48);
        if (v48 < 0)
        {
          v24 = __p[1];
        }

        if (v24)
        {
          if (SHIBYTE(v52) < 0)
          {
            if (v48 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

            sub_13B38(&v51, v25, v24);
          }

          else if (SHIBYTE(v48) < 0)
          {
            sub_13A68(&v51, __p[0], __p[1]);
          }

          else
          {
            v51 = *__p;
            v52 = v48;
          }
        }

        v44 = v23;
        v45 = v19;
        v26 = *(v22 + 248);
        v27 = *(v22 + 256);
        if (v26 != v27)
        {
          v28 = v54;
          v46 = v27;
          do
          {
            while (1)
            {
              v29 = *(a1 + 2528);
              v30 = v29 - *v26;
              v31 = v29 - v26[1];
              v32 = *(a1 + 12008);
              if (v28 >= v55)
              {
                break;
              }

              sub_681678(v28, v30, v31, v32);
              v28 += 56;
              v54 = v28;
              v26 += 2;
              if (v26 == v27)
              {
                goto LABEL_72;
              }
            }

            v33 = 0x6DB6DB6DB6DB6DB7 * ((v28 - __src) >> 3) + 1;
            if (v33 > 0x492492492492492)
            {
              sub_1794();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v55 - __src) >> 3) > v33)
            {
              v33 = 0xDB6DB6DB6DB6DB6ELL * ((v55 - __src) >> 3);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v55 - __src) >> 3)) >= 0x249249249249249)
            {
              v34 = 0x492492492492492;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              if (v34 <= 0x492492492492492)
              {
                operator new();
              }

              sub_1808();
            }

            sub_681678(8 * ((v28 - __src) >> 3), v30, v31, v32);
            v28 = v35 + 56;
            v36 = __src;
            v37 = (v35 - (v54 - __src));
            memcpy(v37, __src, v54 - __src);
            __src = v37;
            v54 = v28;
            v55 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v27 = v46;
            v54 = v28;
            v26 += 2;
          }

          while (v26 != v46);
        }

LABEL_72:
        v38 = a2[1];
        v20 = v44;
        if (v38 >= a2[2])
        {
          v40 = sub_8C7408(a2, v49);
          v39 = v45;
        }

        else
        {
          sub_5F01C8(a2[1], v49);
          v39 = v45;
          v40 = v38 + 704;
        }

        a2[1] = v40;
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__p[0]);
        }

        sub_5C3378(v49);
        v19 = v39 + 1;
      }

      while (v19 != v43);
      v18 = v56;
    }

    if (v18)
    {
      v41 = v57;
      v42 = v18;
      if (v57 != v18)
      {
        do
        {
          v41 = sub_662AC8(v41 - 13);
        }

        while (v41 != v18);
        v42 = v56;
      }

      v57 = v18;
      operator delete(v42);
    }
  }
}

void sub_8AE3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  *(v23 + 8) = v22;
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_5C3378(&a22);
  sub_662AC8((v24 - 192));
  sub_5ED7B0(a13);
  _Unwind_Resume(a1);
}

void sub_8AE420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_5C3378(va);
  sub_681738(v12 - 192);
  sub_5ED7B0(v11);
  _Unwind_Resume(a1);
}

void sub_8AE4C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_8F14EC(a1 + 2576, &v24);
  sub_8A4A64(__p, v25);
  sub_8C7594(v20, &v24, __p);
  v4 = v19;
  if (v19)
  {
    do
    {
      v7 = *v4;
      v8 = *(v4 + 6);
      if (v8)
      {
        *(v4 + 7) = v8;
        operator delete(v8);
      }

      if (v4[39] < 0)
      {
        operator delete(*(v4 + 2));
      }

      operator delete(v4);
      v4 = v7;
    }

    while (v7);
  }

  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  sub_6817B4(v20, *(a1 + 2528), 0, *(a1 + 12008));
  v21 = 2;
  if (*(a1 + 5992) == 1)
  {
    sub_68179C(v20, 87);
  }

  if (*(a1 + 5994))
  {
LABEL_44:
    sub_5F01C8(&v27, v20);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v25[5] = a2;
    v26 = 0;
    operator new();
  }

  if (*(a1 + 5992) == 1)
  {
    v6 = **(a1 + 11952);
  }

  else
  {
    v9 = *(a1 + 11960);
    v6 = *v9;
    if (*v9 != v9[1])
    {
      if (*(v6 + 23) < 0)
      {
        v10 = *(v6 + 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else if (*(v6 + 23))
      {
        goto LABEL_25;
      }
    }

    v11 = *(a1 + 11968);
    v6 = *v11;
    v12 = v11[1];
    if (v6 != v12)
    {
      while (*(v6 + 30) != 1)
      {
        v6 = (v6 + 152);
        if (v6 == v12)
        {
          goto LABEL_40;
        }
      }
    }

    if (v6 == v12)
    {
LABEL_40:
      v27 = 0uLL;
      v28 = 0;
LABEL_42:
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      goto LABEL_44;
    }
  }

  if ((*(v6 + 23) & 0x80000000) == 0)
  {
LABEL_25:
    v13 = *v6;
    v28 = *(v6 + 2);
    v27 = v13;
    v14 = HIBYTE(v28);
    v15 = SHIBYTE(v28);
    v16 = *(&v13 + 1);
    if (v28 < 0)
    {
      v14 = *(&v27 + 1);
    }

    if (!v14)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v10 = *(v6 + 1);
LABEL_30:
  sub_325C(&v27, *v6, v10);
  v14 = HIBYTE(v28);
  v15 = SHIBYTE(v28);
  v16 = *(&v27 + 1);
  if (v28 < 0)
  {
    v14 = *(&v27 + 1);
  }

  if (!v14)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (SHIBYTE(v23) < 0)
  {
    if (v15 >= 0)
    {
      v17 = &v27;
    }

    else
    {
      v17 = v27;
    }

    sub_13B38(&v22, v17, v14);
  }

  else if (v15 < 0)
  {
    sub_13A68(&v22, v27, v16);
  }

  else
  {
    v22 = v27;
    v23 = v28;
  }

  goto LABEL_42;
}

void sub_8AE8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5C3378(va);
  sub_8A4BA8(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void sub_8AE970(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 2556))
  {
    sub_8F25C4(a1 + 2576, &v19);
    v18 = *(a1 + 2528) - *(a1 + 5952);
    sub_80A06C(a2, &v19, *(*(a1 + 2536) + 417), 3, (a1 + 5984));
    sub_68179C(a2, 5);
    sub_6817B4(a2, *(a1 + 2528), *(a1 + 5952), *(a1 + 12008));
    v4 = *(a1 + 12008);
    v5 = *(a1 + 5984);
    v6 = v4 <= v5;
    v7 = v4 - v5;
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    sub_6817C0(a2, v8);
    sub_64BC20(v17, "{valid_distance}");
    v16 = 1;
    sub_64E428(v17, "{valid_distance}", &v18, &v16);
    sub_682240(a2, v17);
    sub_53A868(v17);
    v9 = v22;
    if (v22)
    {
      do
      {
        v10 = *v9;
        sub_55F7FC((v9 + 2));
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = v21;
    v21 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = v19;
    if (v19)
    {
      v13 = v20;
      v14 = v19;
      if (v20 != v19)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v19;
      }

      v20 = v12;
      operator delete(v14);
    }
  }

  else
  {
    bzero(a2, 0x460uLL);
    sub_608080(a2);
    *(a2 + 856) = -1;
    *(a2 + 864) = 0;
    *(a2 + 872) = 0;
    *(a2 + 888) = 0;
    *(a2 + 880) = 0;
    *(a2 + 896) = 0;
    *(a2 + 904) = 2;
    *(a2 + 912) = -1;
    *(a2 + 920) = 0u;
    *(a2 + 936) = 0u;
    *(a2 + 952) = 0u;
    *(a2 + 968) = 0u;
    *(a2 + 984) = 0u;
    *(a2 + 1000) = 0u;
    *(a2 + 1016) = 0;
    *(a2 + 1024) = 1065353216;
    *(a2 + 1032) = 1;
    *(a2 + 1040) = 0;
    *(a2 + 1048) = 0u;
    *(a2 + 1064) = 0u;
    *(a2 + 1080) = 0u;
    *(a2 + 1096) = 0;
    *(a2 + 1104) = 1065353216;
    *(a2 + 1112) = 1;
  }
}

void sub_8AEB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5938B0(v3);
  sub_53A58C((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_8AEBA4(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_53A58C((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_8AEBD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 2528;
  if (*(a1 + 2556))
  {
    v4 = 5952;
  }

  v5 = *(a1 + v4);
  v25 = v5;
  sub_8F37D4(&v21);
  sub_80A06C(a2, &v21, *(*(a1 + 2536) + 418), 3, (a1 + 5984));
  sub_68179C(a2, 4);
  v6 = 136;
  if (*(a1 + 2552))
  {
    v6 = 128;
  }

  sub_6817B4(a2, v5, *(*(a1 + 2536) + v6), *(a1 + 12008));
  v7 = *(a1 + 12008);
  v8 = *(a1 + 5984);
  v9 = v7 <= v8;
  v10 = v7 - v8;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  sub_6817C0(a2, v11);
  sub_64BC20(v20, "{distance}");
  v19 = 1;
  sub_64E428(v20, "{distance}", &v25, &v19);
  sub_682240(a2, v20);
  sub_53A868(v20);
  v12 = v24;
  if (v24)
  {
    do
    {
      v13 = *v12;
      sub_55F7FC((v12 + 2));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v23;
  v23 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v21;
    if (v22 != v21)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v21;
    }

    v22 = v15;
    operator delete(v17);
  }
}

void sub_8AED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5938B0(v3);
  sub_53A58C((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_8AED98(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_53A58C((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_8AEDCC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 2557) == 1)
  {
    v4 = 136;
    if (*(a1 + 2552))
    {
      v4 = 128;
    }

    v5 = (*(a1 + 2536) + v4);
  }

  else
  {
    v5 = (a1 + 2528);
  }

  v41 = *v5;
  sub_8F247C(a1 + 2576, &v36);
  sub_80A2FC(a2, &v36);
  v6 = nullsub_1(&v36);
  sub_68215C(a2, v6);
  sub_809E40(a2, *(*(a1 + 2536) + 418));
  if (*(a1 + 11909) == 1)
  {
    v7 = *(a1 + 6592);
  }

  else
  {
    v7 = 0;
  }

  sub_6817B4(a2, v41, v7, *(a1 + 12008));
  v8 = *(a1 + 12008);
  v9 = *(a1 + 5984);
  v10 = v8 <= v9;
  v11 = v8 - v9;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_6817C0(a2, v12);
  sub_681D20(a2, (a1 + 5984));
  sub_8F5350(a1 + 2576, &v32);
  if (sub_6F390(&v32))
  {
    sub_80A308(a2, &v32);
  }

  v13 = (a1 + 5992);
  if (*v13)
  {
    v14 = 15;
  }

  else
  {
    v14 = 6;
  }

  sub_68179C(a2, v14);
  if ((*v13 & 1) == 0 && (v13[1] & 1) == 0)
  {
    sub_64BC20(v31, "{distance}");
    v30 = 1;
    sub_64E428(v31, "{distance}", &v41, &v30);
    sub_682240(a2, v31);
    sub_53A868(v31);
  }

  v15 = v35;
  if (v35)
  {
    do
    {
      v16 = *v15;
      sub_55F7FC((v15 + 2));
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = v34;
  v34 = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v32;
  if (v32)
  {
    v19 = v33;
    v20 = v32;
    if (v33 != v32)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v32;
    }

    v33 = v18;
    operator delete(v20);
  }

  v22 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v39;
  if (v39)
  {
    do
    {
      v24 = *v23;
      sub_55F7FC((v23 + 2));
      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v25 = v38;
  v38 = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = v36;
  if (v36)
  {
    v27 = v37;
    v28 = v36;
    if (v37 != v36)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = v36;
    }

    v37 = v26;
    operator delete(v28);
  }
}

void sub_8AF0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30)
{
  sub_53A868(&a10);
  sub_53A58C(&a30);
  sub_5938B0(v30);
  sub_662AC8((v31 - 144));
  _Unwind_Resume(a1);
}

void sub_8AF0FC(_Unwind_Exception *a1)
{
  sub_5938B0(v1);
  sub_662AC8(v2 - 144);
  _Unwind_Resume(a1);
}

void sub_8AF11C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 2556))
  {
    sub_8F5C40(a1 + 2576, &v20);
    sub_6828CC(a2, &v20, (a1 + 5984), 0, 0, 1);
    sub_68179C(a2, 42);
    v4 = *(a1 + 2528);
    v5 = *(a1 + 5984);
    v6 = *(a1 + 6000);
    v7 = sub_682B0C(a2);
    v8 = 12000;
    if (v7)
    {
      v8 = 12008;
    }

    v9 = *(a1 + v8);
    sub_6817B4(a2, v4 - v5, v6, v9);
    sub_6817C0(a2, v9);
    sub_6828D4(a2, 4);
    v10 = v24;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = v23;
    if (v23)
    {
      do
      {
        v12 = *v11;
        sub_55F7FC((v11 + 2));
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = __p;
    __p = 0;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = v20;
    if (v20)
    {
      v15 = v21;
      v16 = v20;
      if (v21 != v20)
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v20;
      }

      v21 = v14;
      operator delete(v16);
    }
  }

  else
  {
    *(a2 + 416) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = -1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = vnegq_f64(v18);
    *(a2 + 40) = v19;
    *(a2 + 56) = v19;
    *(a2 + 72) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x7FFFFFFF;
    *(a2 + 104) = v19;
    *(a2 + 120) = 0x7FFFFFFF;
    *(a2 + 128) = 0x7FFFFFFF;
    *(a2 + 132) = 0x7FFFFFFF7FFFFFFFLL;
    *(a2 + 152) = 0x8000000080000000;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0;
    *(a2 + 212) = 0x8000000080000000;
    *(a2 + 220) = 0x7FFFFFFF;
    *(a2 + 240) = xmmword_2297C00;
    *(a2 + 256) = 0u;
    *(a2 + 256) = 0x7FFFFFFF;
    *(a2 + 260) = 0x7FFFFFFF7FFFFFFFLL;
    *(a2 + 280) = 0xBFF0000000000000;
    *(a2 + 288) = 0xBFF0000000000000;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 320) = 1;
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(a2 + 356) = -1;
    *(a2 + 368) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 380) = -1;
    *(a2 + 384) = -1;
    *(a2 + 396) = 1;
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 424) = 0;
    *(a2 + 416) = 0;
    *(a2 + 428) = 0x7FFFFFFF7FFFFFFFLL;
    *(a2 + 440) = -1;
  }
}

void sub_8AF3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8AF40C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 2557);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3 == 1)
  {
    sub_857D88(&v49);
    sub_6828CC(&v36, &v49, (a1 + 5984), 0, 0, 1);
    sub_68179C(&v36, 43);
    v5 = *(a1 + 2536);
    if (*(v5 + 2440))
    {
      v6 = sub_67A924(v5);
      v7 = sub_67A2F8(*(a1 + 2536), *(a1 + 5996));
      if (v6 + v7 <= *(a1 + 6000))
      {
        v8 = v6;
        do
        {
          sub_8AF858(a1, v8, *(*(a1 + 2536) + 2448) + v8, v35);
          if (sub_5CBB30(v35) && v35[0] + v7 <= *(a1 + 6000))
          {
            v8 = v35[0];
          }

          if (sub_682B0C(&v36))
          {
            v10 = 12008;
          }

          else
          {
            v10 = 12000;
          }

          v11 = *(a1 + v10);
          sub_6817B4(&v36, v8 + v7, v8, v11);
          sub_6817C0(&v36, v11);
          sub_682A1C(&v36, *(*(a1 + 2536) + 422));
          sub_6828D4(&v36, 3);
          v12 = a2[1];
          if (v12 >= a2[2])
          {
            v9 = sub_7A5EF8(a2, &v36);
          }

          else
          {
            sub_7A6070(a2[1], &v36);
            v9 = v12 + 448;
          }

          a2[1] = v9;
          v8 += v6;
          sub_5941F8(v35);
        }

        while (v8 + v7 <= *(a1 + 6000));
      }
    }

    else
    {
      v13 = *(a1 + 6000);
      v14 = 136;
      if (*(a1 + 2552))
      {
        v14 = 128;
      }

      v15 = *(v5 + v14);
      v16 = sub_682B0C(&v36);
      v17 = 12000;
      if (v16)
      {
        v17 = 12008;
      }

      v18 = *(a1 + v17);
      sub_6817B4(&v36, v13, v15, v18);
      sub_6817C0(&v36, v18);
      v19 = a2[1];
      if (v19 >= a2[2])
      {
        v20 = sub_7A5EF8(a2, &v36);
      }

      else
      {
        sub_7A6070(a2[1], &v36);
        v20 = v19 + 448;
      }

      a2[1] = v20;
    }

    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    v21 = v43;
    if (v43)
    {
      v22 = v44;
      v23 = v43;
      if (v44 != v43)
      {
        do
        {
          v22 = sub_662AC8(v22 - 13);
        }

        while (v22 != v21);
        v23 = v43;
      }

      v44 = v21;
      operator delete(v23);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    v24 = v37;
    if (v37)
    {
      v25 = v38;
      v26 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = sub_53A868(v25 - 160);
        }

        while (v25 != v24);
        v26 = v37;
      }

      v38 = v24;
      operator delete(v26);
    }

    v27 = v53;
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = v52;
    if (v52)
    {
      do
      {
        v29 = *v28;
        sub_55F7FC((v28 + 2));
        operator delete(v28);
        v28 = v29;
      }

      while (v29);
    }

    v30 = v51;
    v51 = 0;
    if (v30)
    {
      operator delete(v30);
    }

    v31 = v49;
    if (v49)
    {
      v32 = v50;
      v33 = v49;
      if (v50 != v49)
      {
        do
        {
          v34 = *(v32 - 1);
          v32 -= 3;
          if (v34 < 0)
          {
            operator delete(*v32);
          }
        }

        while (v32 != v31);
        v33 = v49;
      }

      v50 = v31;
      operator delete(v33);
    }
  }
}

void sub_8AF7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64[1] = v65;
  sub_682DB0(&a64);
  sub_662AC8((v66 - 184));
  sub_5EC5AC(v64);
  _Unwind_Resume(a1);
}

uint64_t sub_8AF858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 6008);
  v6 = *(a1 + 6016);
  if (v5 == v6)
  {
LABEL_12:
    *(a4 + 8) = 0u;
    *(a4 + 424) = 0;
    *(a4 + 248) = 0u;
    *(a4 + 232) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 200) = 0u;
    *(a4 + 184) = 0u;
    *(a4 + 168) = 0u;
    *(a4 + 152) = 0u;
    *(a4 + 136) = 0u;
    *(a4 + 120) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 392) = 0u;
    *(a4 + 408) = 0u;
    *(a4 + 360) = 0u;
    *(a4 + 376) = 0u;
    *(a4 + 328) = 0u;
    *(a4 + 344) = 0u;
    *(a4 + 296) = 0u;
    *(a4 + 312) = 0u;
    *(a4 + 264) = 0u;
    *(a4 + 280) = 0u;
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a4 + 8);
    *(a4 + 168) = -1;
    *(a4 + 252) = 0;
    *(a4 + 192) = 0;
    *(a4 + 160) = -1;
    *(a4 + 200) = 0;
    *(a4 + 208) = 0;
    *(a4 + 184) = 0;
    *(a4 + 176) = 0;
    *(a4 + 216) = -1;
    *(a4 + 224) = -1;
    *(a4 + 232) = 0x7FFFFFFF;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 268) = 0;
    *(a4 + 260) = 0;
    *(a4 + 276) = 0;
    return sub_734CE0(a4 + 280);
  }

  else
  {
    while (1)
    {
      if (sub_684288(v5))
      {
        if (*v5 > a3)
        {
          goto LABEL_12;
        }

        if (*v5 >= a2)
        {
          v10 = sub_8A5C2C(*(a1 + 11976), v5[21]);
          if (sub_445A90(v10) || sub_683A0C(v10))
          {
            break;
          }
        }
      }

      v5 += 54;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    return sub_5F3168(a4, v5);
  }
}

void sub_8AF9F4(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

void sub_8AFA40(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_8F5E44(a1 + 2576, &v28);
  sub_6828CC(a2, &v28, (a1 + 5984), 0, 0, 1);
  sub_68179C(a2, 30);
  v4 = (a1 + 11905);
  if (*(a1 + 2557) == 1)
  {
    v5 = 136;
    if (*(a1 + 2552))
    {
      v5 = 128;
    }

    v6 = *(*(a1 + 2536) + v5);
    if (*v4 != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v9 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_18;
  }

  v6 = *(a1 + 6000);
  if (*v4 == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(a1 + 11911))
  {
    v7 = 11880;
  }

  else if (*(a1 + 11912))
  {
    v7 = 11888;
  }

  else if (*(a1 + 11913))
  {
    v7 = 11896;
  }

  else
  {
    v7 = 11872;
    if (*(a1 + 11906))
    {
      v7 = 11864;
    }
  }

  v10 = *(a1 + v7);
LABEL_18:
  v11 = sub_67A2F8(*(a1 + 2536), *(a1 + 5996));
  v12 = *(a1 + 6000);
  v13 = sub_682B0C(a2);
  if (v11 + v10 <= v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = 12000;
  if (v13)
  {
    v15 = 12008;
  }

  v16 = *(a1 + v15);
  sub_6817B4(a2, v6, v14, v16);
  sub_6817C0(a2, v16);
  sub_682A1C(a2, *(*(a1 + 2536) + 420));
  sub_6817D8(a2, *(a1 + 2528));
  v17 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v18 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v19 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = sub_89F42C(a1);
  }

  if (v17 <= v19)
  {
    sub_682A2C(a2, 1);
  }

  v20 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v31;
  if (v31)
  {
    do
    {
      v22 = *v21;
      sub_55F7FC((v21 + 2));
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = __p;
  __p = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = v28;
  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_8AFD24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8AFD38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8AFD54(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_89F42C(a1);
  sub_8F5E44((a1 + 322), &v18);
  sub_6828CC(a2, &v18, a1 + 748, 0, 0, 1);
  sub_68179C(a2, 30);
  v5 = a1[750];
  v6 = sub_682B0C(a2);
  if (v5 <= v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = 1500;
  if (v6)
  {
    v8 = 1501;
  }

  v9 = a1[v8];
  sub_6817B4(a2, v5, v7, v9);
  sub_6817C0(a2, v9);
  sub_6817D8(a2, a1[316]);
  v10 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v21;
  if (v21)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v18;
  if (v18)
  {
    v15 = v19;
    v16 = v18;
    if (v19 != v18)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v18;
    }

    v19 = v14;
    operator delete(v16);
  }
}

void sub_8AFEDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8AFF10(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_8F6558(a1 + 2576);
  sub_6828CC(a2, &v22, (a1 + 5984), 0, 0, 1);
  sub_68179C(a2, 32);
  v4 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
  v5 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
  if (!*(a1 + 2552))
  {
    v4 = v5;
  }

  if (*(a1 + 11912))
  {
    v6 = 11888;
  }

  else if (*(a1 + 11913))
  {
    v6 = 11896;
  }

  else
  {
    v6 = 11872;
    if (*(a1 + 11906))
    {
      v6 = 11864;
    }
  }

  v7 = *(a1 + v6);
  v8 = sub_682B0C(a2);
  v9 = 12000;
  if (v8)
  {
    v9 = 12008;
  }

  v10 = *(a1 + v9);
  sub_6817B4(a2, v4, v7, v10);
  sub_6817C0(a2, v10);
  sub_6817D8(a2, *(a1 + 2528));
  sub_682A1C(a2, *(*(a1 + 2536) + 421));
  v11 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v12 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v13 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = sub_89F42C(a1);
  }

  if (v11 <= v13)
  {
    sub_682A2C(a2, 1);
  }

  v14 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v25;
  if (v25)
  {
    do
    {
      v16 = *v15;
      sub_55F7FC((v15 + 2));
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = __p;
  __p = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = v22;
  if (v22)
  {
    v19 = v23;
    v20 = v22;
    if (v23 != v22)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v22;
    }

    v23 = v18;
    operator delete(v20);
  }
}

void sub_8B016C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B019C(_BYTE *a1)
{
  if (a1[11918] == 1)
  {
    if (a1[11906] == 1)
    {
      sub_8F7AF4(a1 + 2576);
    }

    sub_8F6F58((a1 + 2576));
  }

  sub_8F6AC8((a1 + 2576));
}

void sub_8B0418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B042C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B06A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B06C0(uint64_t a1)
{
  if (*(a1 + 11906) == 1)
  {
    sub_8FB0E0(a1 + 2576, a1 + 6592);
  }

  sub_8FB6AC(a1 + 2576, a1 + 6592);
}

void sub_8B0944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0974(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + 11910);
  v45 = 0;
  v44 = 0u;
  *v42 = 0u;
  *v43 = 0u;
  v46 = 1065353216;
  v47 = 1;
  v48 = 0;
  v49[0] = 0;
  *(v49 + 7) = 0;
  if (*(a1 + 11917) == 1)
  {
    sub_8FE110(a1 + 2576, 1, &v37);
    sub_6876C8(v42, &v37);
    v5 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = v40;
    if (v40)
    {
      do
      {
        v7 = *v6;
        sub_55F7FC((v6 + 2));
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = __p;
    __p = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = v37;
    if (v37)
    {
      v10 = v38;
      v11 = v37;
      if (v38 == v37)
      {
        goto LABEL_29;
      }

      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
LABEL_28:
      v11 = v37;
LABEL_29:
      v38 = v9;
      operator delete(v11);
    }
  }

  else
  {
    sub_8F73F4(a1 + 2576, 1, *v4, 1, &v37);
    sub_6876C8(v42, &v37);
    v13 = v41;
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = v40;
    if (v40)
    {
      do
      {
        v15 = *v14;
        sub_55F7FC((v14 + 2));
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    v16 = __p;
    __p = 0;
    if (v16)
    {
      operator delete(v16);
    }

    v9 = v37;
    if (v37)
    {
      v17 = v38;
      v11 = v37;
      if (v38 == v37)
      {
        goto LABEL_29;
      }

      do
      {
        v18 = *(v17 - 1);
        v17 -= 3;
        if (v18 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v9);
      goto LABEL_28;
    }
  }

  sub_6828CC(a2, v42, (a1 + 5984), 0, 0, 1);
  if (*(a1 + 2554))
  {
    if (*(a1 + 2554) == 3)
    {
      v19 = sub_8B51C0(a1);
    }

    else
    {
      v19 = sub_89F42C(a1);
    }
  }

  else
  {
    v19 = sub_8B5580(a1);
  }

  if (v19 == *(a1 + 5984))
  {
    sub_682A34(a2, 1);
  }

  v20 = *(a1 + 11872);
  v21 = sub_682B0C(a2);
  v22 = 12000;
  if (v21)
  {
    v22 = 12008;
  }

  v23 = *(a1 + v22);
  sub_6817B4(a2, v20, 0, v23);
  sub_6817C0(a2, v23);
  sub_682A1C(a2, *(*(a1 + 2536) + 424));
  sub_682A24(a2, 1);
  if (*(a1 + 5992))
  {
    v24 = 86;
  }

  else if (*v4)
  {
    v24 = 46;
  }

  else
  {
    v24 = 45;
  }

  sub_68179C(a2, v24);
  v25 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v26 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
    v27 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
    if (*(a1 + 2552))
    {
      v27 = v26;
    }
  }

  else
  {
    v27 = sub_89F42C(a1);
  }

  if (v25 <= v27)
  {
    sub_682A2C(a2, 1);
  }

  if (*(a1 + 5994) == 1)
  {
    sub_6828D4(a2, 3);
  }

  if ((*v4 & 1) == 0)
  {
    v28 = sub_67A384(*(a1 + 2536), *(a1 + 5996));
    sub_682764(a2, v28, 0);
  }

  v29 = v49[0];
  if (v49[0] && !atomic_fetch_add((v49[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    do
    {
      v31 = *v30;
      sub_55F7FC((v30 + 2));
      operator delete(v30);
      v30 = v31;
    }

    while (v31);
  }

  v32 = v43[1];
  v43[1] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v42[0];
  if (v42[0])
  {
    v34 = v42[1];
    v35 = v42[0];
    if (v42[1] != v42[0])
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v42[0];
    }

    v42[1] = v33;
    operator delete(v35);
  }
}

void sub_8B0E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_682DB0(v15);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B0E6C()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v7 = v6;
  v8 = (v0 + 11801);
  v26 = 0uLL;
  v27 = 0;
  if (*(v0 + 11917) == 1)
  {
    sub_8A5E48(&v24, *(v0 + 2536), *(v0 + 2544), v1, v2, *(v0 + 11996) - 1);
    sub_8FE1F4();
  }

  sub_8FC6D0((v0 + 2576), v1, v2, *(v0 + 11910), &v24);
  v9 = v26;
  if (v26)
  {
    v10 = *(&v26 + 1);
    v11 = v26;
    if (*(&v26 + 1) != v26)
    {
      do
      {
        v10 = sub_662AC8(v10 - 13);
      }

      while (v10 != v9);
      v11 = v26;
    }

    *(&v26 + 1) = v9;
    operator delete(v11);
  }

  v26 = v24;
  v27 = v25;
  sub_68275C(v7, &v26, 0, 0, 1);
  sub_681D20(v7, (v5 + 5984));
  v12 = *(v5 + 11872);
  if (v12 == *(v5 + 5984))
  {
    sub_682A34(v7, 1);
    v12 = *(v5 + 11872);
  }

  v13 = sub_682B0C(v7);
  v14 = 12000;
  if (v13)
  {
    v14 = 12008;
  }

  v15 = *(v5 + v14);
  sub_6817B4(v7, v12, 0, v15);
  sub_6817C0(v7, v15);
  sub_682A1C(v7, *(*(v5 + 2536) + 424));
  sub_682A24(v7, 1);
  sub_682AA0(v7);
  if (*(v5 + 5992))
  {
    v16 = 86;
  }

  else if (v8[109])
  {
    v16 = 46;
  }

  else
  {
    v16 = 45;
  }

  sub_68179C(v7, v16);
  v17 = sub_681D54(v7);
  if (*(v5 + 2555) == 1)
  {
    v18 = sub_67A1FC(*(v5 + 2536), *(v5 + 5996));
    v19 = sub_67A218(*(v5 + 2536), *(v5 + 5996));
    if (*(v5 + 2552))
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = sub_89F42C(v5);
  }

  if (v17 <= v19)
  {
    sub_682A2C(v7, 1);
  }

  if ((v8[109] & 1) == 0)
  {
    if (*(v5 + 2555) == 1 && *v8 == 1)
    {
      v20 = sub_67A3BC(*(v5 + 2536), *(v5 + 5996));
    }

    else
    {
      v20 = sub_67A384(*(v5 + 2536), *(v5 + 5996));
    }

    sub_682764(v7, v20, 0);
  }

  sub_6817D8(v7, *(v5 + 2528));
  sub_6817E0(v7, *(*(v4 + 1104) + 2616 * v3 + 1008));
  v21 = v26;
  if (v26)
  {
    v22 = *(&v26 + 1);
    v23 = v26;
    if (*(&v26 + 1) != v26)
    {
      do
      {
        v22 = sub_662AC8(v22 - 13);
      }

      while (v22 != v21);
      v23 = v26;
    }

    *(&v26 + 1) = v21;
    operator delete(v23);
  }
}

void sub_8B12B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
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
  sub_662AC8(va);
  sub_80B5D8(va1);
  sub_681738(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_8B1310(_Unwind_Exception *a1)
{
  sub_682DB0(v1);
  sub_681738(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_8B1348(uint64_t a1)
{
  v2 = sub_8A5C2C(*(a1 + 11976), *(a1 + 9840));
  if (*(a1 + 11906) == 1)
  {
    sub_8F8730(a1 + 2576, v2);
  }

  sub_8F82F8(a1 + 2576, v2);
}

void sub_8B15B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B15CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B181C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B1830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B184C(uint64_t a1)
{
  v1 = *(a1 + 11910);
  if (*(a1 + 11906) == 1)
  {
    sub_8F8FC8(a1 + 2576, a1 + 6152, v1);
  }

  sub_8F8B84(a1 + 2576, a1 + 6152, v1);
}

void sub_8B1AD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B1AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8B1B00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 2536);
  if (*(v4 + 2421) & 1) != 0 || (*(v4 + 2422))
  {
    v5 = *(*(result + 2544) + 1454);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    if (v5 == 1)
    {
      v6 = *(result + 6008);
      for (i = *(result + 6016); v6 != i; v6 += 54)
      {
        result = sub_6842B4(v6);
        if (result)
        {
          result = sub_67A630(*(v2 + 2536), *(v2 + 5996));
          if (*v6 + result <= *(v2 + 6000) && (*v6 != *(v2 + 6152) || *(v2 + 11916) != 1 || *(*(v2 + 2536) + 2421) == 1 && *(*(v2 + 2544) + 1527) == 1))
          {
            sub_8F9428(v2 + 2576, v6);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_8B1E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[1] = v10;
  sub_682DB0(&a9);
  sub_662AC8((v11 - 192));
  sub_5EC5AC(v9);
  _Unwind_Resume(a1);
}

void sub_8B1EF0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 11424) - *(a1 + 11416);
  if (v3)
  {
    v5 = 0;
    v6 = 0x4FA4FA4FA4FA4FA5 * (v3 >> 3);
    while (1)
    {
      v7 = (*(a1 + 11416) + 360 * v5);
      if ((sub_6C7D08(v7) & 1) != 0 && (sub_6C8F50(v7) & 1) == 0 && (sub_6C8F24(v7) & 1) == 0)
      {
        break;
      }

LABEL_4:
      if (++v5 == v6)
      {
        return;
      }
    }

    v54 = 0;
    v55 = 0uLL;
    v8 = *(a1 + 2528);
    if (sub_6C7CA8(v7))
    {
      sub_8FBA44(a1 + 2576, a1 + 6592, &__p);
      v9 = v54;
      if (v54)
      {
        v10 = v55;
        v11 = v54;
        if (v55 != v54)
        {
          do
          {
            v10 = sub_662AC8(v10 - 13);
          }

          while (v10 != v9);
LABEL_16:
          v11 = v54;
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_6C059C(a1 + 5088, v7, &__p);
      v9 = v54;
      if (v54)
      {
        v12 = v55;
        v11 = v54;
        if (v55 != v54)
        {
          do
          {
            v12 = sub_662AC8(v12 - 13);
          }

          while (v12 != v9);
          goto LABEL_16;
        }

LABEL_17:
        *&v55 = v9;
        operator delete(v11);
      }
    }

    v13 = __p;
    v54 = __p;
    v55 = v43;
    if (__p != v43)
    {
      if (sub_6810A0(__p))
      {
        sub_68275C(&__p, &v54, 0, 0, 1);
        sub_681D20(&__p, (a1 + 5984));
        v14 = v8;
        if (sub_6C7CA8(v7))
        {
          v15 = sub_67A518(*(a1 + 2536), *(a1 + 5996));
          v16 = *(a1 + 6592);
          v14 = v16 + v15 >= v8 ? v8 : v16 + v15;
          if (v16 < v8)
          {
            v8 = *(a1 + 6592);
          }
        }

        if (sub_6C7C84(v7) && (sub_6CA4CC(v7, &v41), v41.n128_i64[0] > *(a1 + 5984)) && (sub_6CA4CC(v7, &v40), sub_6CA4EC(v7, &v39), v40.n128_i64[0] < v39.n128_i64[0]))
        {
          sub_6CA4CC(v7, &v38);
          v17 = v38.n128_u64[0] - *(a1 + 5984);
        }

        else
        {
          sub_6CA4EC(v7, &v37);
          v17 = v37.n128_u64[0];
        }

        if (v17 < v14)
        {
          v14 = v17;
        }

        sub_6CA4EC(v7, &v41);
        v18 = v41.n128_i64[1];
        v19 = sub_682B0C(&__p);
        if (v18 >= v8)
        {
          v20 = v8;
        }

        else
        {
          v20 = v18;
        }

        v21 = 12000;
        if (v19)
        {
          v21 = 12008;
        }

        v22 = *(a1 + v21);
        sub_6817B4(&__p, v14, v20, v22);
        sub_6817C0(&__p, v22);
        sub_682A1C(&__p, *(*(a1 + 2536) + 423));
        v23 = sub_681D54(&__p);
        if (*(a1 + 2555) == 1)
        {
          v24 = sub_67A1FC(*(a1 + 2536), *(a1 + 5996));
          v25 = sub_67A218(*(a1 + 2536), *(a1 + 5996));
          if (*(a1 + 2552))
          {
            v25 = v24;
          }
        }

        else
        {
          v25 = sub_89F42C(a1);
        }

        if (v23 <= v25)
        {
          sub_682A2C(&__p, 1);
        }

        v26 = sub_6C7EA0(v7);
        sub_68179C(&__p, v26);
        if (sub_681D38(&__p) == 54)
        {
          sub_681D2C(&__p);
        }

        v27 = a2[1];
        if (v27 >= a2[2])
        {
          v28 = sub_7A5EF8(a2, &__p);
        }

        else
        {
          sub_7A6070(a2[1], &__p);
          v28 = v27 + 448;
        }

        a2[1] = v28;
        if (v52)
        {
          v53 = v52;
          operator delete(v52);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        v29 = v48;
        if (v48)
        {
          v30 = v49;
          v31 = v48;
          if (v49 != v48)
          {
            do
            {
              v30 = sub_662AC8(v30 - 13);
            }

            while (v30 != v29);
            v31 = v48;
          }

          v49 = v29;
          operator delete(v31);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        v32 = v43;
        if (v43)
        {
          v33 = *(&v43 + 1);
          v34 = v43;
          if (*(&v43 + 1) != v43)
          {
            do
            {
              v33 = sub_53A868(v33 - 160);
            }

            while (v33 != v32);
            v34 = v43;
          }

          *(&v43 + 1) = v32;
          operator delete(v34);
        }
      }

      v13 = v54;
    }

    if (v13)
    {
      v35 = v55;
      v36 = v13;
      if (v55 != v13)
      {
        do
        {
          v35 = sub_662AC8(v35 - 13);
        }

        while (v35 != v13);
        v36 = v54;
      }

      *&v55 = v13;
      operator delete(v36);
    }

    goto LABEL_4;
  }
}

void sub_8B2388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_682DB0(va);
  sub_681738(v18 - 112);
  sub_5EC5AC(v17);
  _Unwind_Resume(a1);
}

void sub_8B240C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + 11907);
  sub_9003E4(a1 + 2576, 1, *(a1 + 11910), &v28);
  sub_6828CC(a2, &v28, (a1 + 5984), 0, 0, 1);
  v5 = (a1 + 5996);
  v6 = *(a1 + 11864);
  v7 = sub_67A2DC(*(a1 + 2536), *(a1 + 5996));
  v8 = v7;
  if (v4[6] == 1)
  {
    if (*(a1 + 9672) < v7)
    {
      v8 = *(a1 + 9672);
    }

    if (v4[5] != 1)
    {
LABEL_3:
      if (v4[7] != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if (v4[5] != 1)
  {
    goto LABEL_3;
  }

  if (*(a1 + 8352) < v8)
  {
    v8 = *(a1 + 8352);
  }

  if (v4[7] != 1)
  {
LABEL_4:
    if (v4[9] != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*(a1 + 10552) < v8)
  {
    v8 = *(a1 + 10552);
  }

  if (v4[9] != 1)
  {
LABEL_5:
    if (*(a1 + 7904) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_26:
  v17 = *(a1 + 6584);
  if (*(a1 + 6152) - v17 < v8)
  {
    v8 = *(a1 + 6152) - v17;
  }

  if (*(a1 + 7904) == 1)
  {
LABEL_6:
    if (*(a1 + 7472) < v8)
    {
      v8 = *(a1 + 7472);
    }
  }

LABEL_8:
  v9 = *v4;
  v10 = sub_682B0C(a2);
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = 12000;
  if (v10)
  {
    v12 = 12008;
  }

  v13 = *(a1 + v12);
  sub_6817B4(a2, v6, v11, v13);
  sub_6817C0(a2, v13);
  sub_682A1C(a2, *(*(a1 + 2536) + 425));
  v14 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v15 = sub_67A1FC(*(a1 + 2536), *v5);
    v16 = sub_67A218(*(a1 + 2536), *v5);
    if (*(a1 + 2552))
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = sub_89F42C(a1);
  }

  if (v14 <= v16)
  {
    sub_682A2C(a2, 1);
  }

  sub_682A24(a2, 1);
  if (v4[3])
  {
    v18 = 49;
  }

  else
  {
    v18 = 48;
  }

  sub_68179C(a2, v18);
  if ((v4[3] & 1) == 0)
  {
    v19 = sub_67A3BC(*(a1 + 2536), *v5);
    sub_682764(a2, v19, 0);
  }

  v20 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = v31;
  if (v31)
  {
    do
    {
      v22 = *v21;
      sub_55F7FC((v21 + 2));
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = __p;
  __p = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = v28;
  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v27 = *(v25 - 1);
        v25 -= 3;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_8B271C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B2730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B29D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8B29E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8B2A04(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_8F6928(a1 + 2576, &v23);
  sub_6828CC(a2, &v23, (a1 + 5984), 0, 0, 1);
  v4 = (a1 + 5996);
  v5 = sub_67A2DC(*(a1 + 2536), *(a1 + 5996));
  v6 = v5;
  v7 = (a1 + 11912);
  if (*(a1 + 11913) == 1)
  {
    if (*(a1 + 9672) < v5)
    {
      v6 = *(a1 + 9672);
    }

    if (*v7 != 1)
    {
LABEL_3:
      if (*(a1 + 11914) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if (*v7 != 1)
  {
    goto LABEL_3;
  }

  if (*(a1 + 8352) < v6)
  {
    v6 = *(a1 + 8352);
  }

  if (*(a1 + 11914) != 1)
  {
LABEL_4:
    if (*(a1 + 11916) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*(a1 + 10552) < v6)
  {
    v6 = *(a1 + 10552);
  }

  if (*(a1 + 11916) != 1)
  {
LABEL_5:
    if (*(a1 + 7904) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_23:
  v14 = *(a1 + 6584);
  if (*(a1 + 6152) - v14 < v6)
  {
    v6 = *(a1 + 6152) - v14;
  }

  if (*(a1 + 7904) == 1)
  {
LABEL_6:
    if (*(a1 + 7472) < v6)
    {
      v6 = *(a1 + 7472);
    }
  }

LABEL_8:
  v8 = sub_682B0C(a2);
  v9 = 12000;
  if (v8)
  {
    v9 = 12008;
  }

  v10 = *(a1 + v9);
  sub_6817B4(a2, v6, 0, v10);
  sub_6817C0(a2, v10);
  sub_682A1C(a2, *(*(a1 + 2536) + 426));
  v11 = sub_681D54(a2);
  if (*(a1 + 2555) == 1)
  {
    v12 = sub_67A1FC(*(a1 + 2536), *v4);
    v13 = sub_67A218(*(a1 + 2536), *v4);
    if (*(a1 + 2552))
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = sub_89F42C(a1);
  }

  if (v11 <= v13)
  {
    sub_682A2C(a2, 1);
  }

  sub_682A24(a2, 1);
  sub_68179C(a2, 47);
  v15 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v26;
  if (v26)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = __p;
  __p = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = v23;
  if (v23)
  {
    v20 = v24;
    v21 = v23;
    if (v24 != v23)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v23;
    }

    v24 = v19;
    operator delete(v21);
  }
}

void sub_8B2CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B2CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B2F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8B2F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_681738(va);
  _Unwind_Resume(a1);
}

void sub_8B2F68(uint64_t a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  v5 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 6);
  if (v5 >= 2)
  {
    if (v4 < 1)
    {
      v12 = 0;
      v8 = 0;
    }

    else
    {
      v8 = 0x6DB6DB6DB6DB6DB7 * (v4 >> 6);
      while (1)
      {
        v9 = operator new(448 * v8, &std::nothrow);
        if (v9)
        {
          break;
        }

        v10 = v8 >> 1;
        v11 = v8 > 1;
        v8 >>= 1;
        if (!v11)
        {
          v12 = 0;
          v8 = v10;
          goto LABEL_9;
        }
      }

      v12 = v9;
    }

LABEL_9:
    sub_8D18E8(v3, v2, &v17, v5, v12, v8);
    if (v12)
    {
      operator delete(v12);
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 6);
    if (v13 != 1)
    {
      for (i = 1; i != v13; ++i)
      {
        v15 = sub_8A5830(a2, i - 1);
        v16 = sub_8A5830(a2, i);
        if (sub_682A68(v15) != 4 && !sub_682B2C(v15, v16))
        {
          sub_8A569C(a1, v15, v16);
        }
      }
    }
  }
}

void sub_8B30D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8B30E8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 6008);
  v3 = *(result + 6016);
  if (v2 != v3)
  {
    v4 = result;
    v6 = *(result + 11920);
    while (1)
    {
      result = sub_684288(v2);
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }

      v8 = sub_8A5C2C(*(v4 + 11976), *(v2 + 168));
      result = sub_683B64(v8);
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }

      if (sub_683B84(v8))
      {
        if (sub_445A90(v8))
        {
          sub_8B40B0(v4, v2, &v67);
          sub_798900(a2, &v67);
          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

          v9 = v74;
          if (v74)
          {
            v10 = v75;
            v11 = v74;
            if (v75 != v74)
            {
              do
              {
                v10 = sub_662AC8(v10 - 13);
              }

              while (v10 != v9);
              v11 = v74;
            }

            v75 = v9;
            operator delete(v11);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v12 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          v13 = v69;
          v7 = __p;
          if (v69 != __p)
          {
            do
            {
              v13 = sub_53A868(v13 - 160);
            }

            while (v13 != v12);
            goto LABEL_3;
          }
        }

        else
        {
          sub_8B4290(v4, v2, &v67);
          sub_798900(a2, &v67);
          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

          v16 = v74;
          if (v74)
          {
            v17 = v75;
            v18 = v74;
            if (v75 != v74)
            {
              do
              {
                v17 = sub_662AC8(v17 - 13);
              }

              while (v17 != v16);
              v18 = v74;
            }

            v75 = v16;
            operator delete(v18);
          }

          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v12 = __p;
          if (!__p)
          {
            goto LABEL_5;
          }

          v19 = v69;
          v7 = __p;
          if (v69 != __p)
          {
            do
            {
              v19 = sub_53A868(v19 - 160);
            }

            while (v19 != v12);
            goto LABEL_3;
          }
        }

        goto LABEL_4;
      }

      if (sub_683AE0(v8))
      {
        sub_8B4470(v4, v2, v8, 0, &v67);
        sub_682A58(&v67, v6);
        v14 = a2[1];
        if (v14 >= a2[2])
        {
          v15 = sub_7A5EF8(a2, &v67);
        }

        else
        {
          sub_7A6070(a2[1], &v67);
          v15 = v14 + 448;
        }

        a2[1] = v15;
        sub_8B4470(v4, v2, v8, 1, &v54);
        sub_682A58(&v54, v6);
        v24 = a2[1];
        if (v24 >= a2[2])
        {
          v25 = sub_7A5EF8(a2, &v54);
        }

        else
        {
          sub_7A6070(a2[1], &v54);
          v25 = v24 + 448;
        }

        a2[1] = v25;
        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        v26 = v61;
        if (v61)
        {
          v27 = v62;
          v28 = v61;
          if (v62 != v61)
          {
            do
            {
              v27 = sub_662AC8(v27 - 13);
            }

            while (v27 != v26);
            v28 = v61;
          }

          v62 = v26;
          operator delete(v28);
        }

        if (v59)
        {
          v60 = v59;
          operator delete(v59);
        }

        if (v57)
        {
          v58 = v57;
          operator delete(v57);
        }

        v29 = v55;
        if (v55)
        {
          v30 = v56;
          v31 = v55;
          if (v56 != v55)
          {
            do
            {
              v30 = sub_53A868(v30 - 160);
            }

            while (v30 != v29);
            v31 = v55;
          }

          v56 = v29;
          operator delete(v31);
        }

        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v32 = v74;
        if (v74)
        {
          v33 = v75;
          v34 = v74;
          if (v75 != v74)
          {
            do
            {
              v33 = sub_662AC8(v33 - 13);
            }

            while (v33 != v32);
            v34 = v74;
          }

          v75 = v32;
          operator delete(v34);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v69;
          v37 = __p;
          if (v69 != __p)
          {
            do
            {
              v36 = sub_53A868(v36 - 160);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v69 = v35;
          operator delete(v37);
        }

        ++v6;
        goto LABEL_5;
      }

      if (sub_683A1C(v8))
      {
        sub_8B4680();
      }

      if (sub_683BC0(v8))
      {
        sub_8B4860(v4, v2, &v67);
        sub_798900(a2, &v67);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v20 = v74;
        if (v74)
        {
          v21 = v75;
          v22 = v74;
          if (v75 != v74)
          {
            do
            {
              v21 = sub_662AC8(v21 - 13);
            }

            while (v21 != v20);
            v22 = v74;
          }

          v75 = v20;
          operator delete(v22);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        v23 = v69;
        v7 = __p;
        if (v69 != __p)
        {
          do
          {
            v23 = sub_53A868(v23 - 160);
          }

          while (v23 != v12);
          goto LABEL_3;
        }

LABEL_4:
        v69 = v12;
        operator delete(v7);
        goto LABEL_5;
      }

      if (sub_683BF4(v8))
      {
        break;
      }

      if (sub_683B48(v8))
      {
        sub_8B4C20(v4, v2, &v67);
        sub_798900(a2, &v67);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v42 = v74;
        if (v74)
        {
          v43 = v75;
          v44 = v74;
          if (v75 != v74)
          {
            do
            {
              v43 = sub_662AC8(v43 - 13);
            }

            while (v43 != v42);
            v44 = v74;
          }

          v75 = v42;
          operator delete(v44);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        v45 = v69;
        v7 = __p;
        if (v69 == __p)
        {
          goto LABEL_4;
        }

        do
        {
          v45 = sub_53A868(v45 - 160);
        }

        while (v45 != v12);
        goto LABEL_3;
      }

      if (sub_683BA4(v8))
      {
        sub_8B4E00(v4, v2, &v67);
        sub_798900(a2, &v67);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (v76)
        {
          v77 = v76;
          operator delete(v76);
        }

        v46 = v74;
        if (v74)
        {
          v47 = v75;
          v48 = v74;
          if (v75 != v74)
          {
            do
            {
              v47 = sub_662AC8(v47 - 13);
            }

            while (v47 != v46);
            v48 = v74;
          }

          v75 = v46;
          operator delete(v48);
        }

        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        if (v70)
        {
          v71 = v70;
          operator delete(v70);
        }

        v12 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }

        v49 = v69;
        v7 = __p;
        if (v69 == __p)
        {
          goto LABEL_4;
        }

        do
        {
          v49 = sub_53A868(v49 - 160);
        }

        while (v49 != v12);
        goto LABEL_3;
      }

      result = sub_683C28(v8);
      if (!result)
      {
        goto LABEL_6;
      }

      sub_8B4FE0(v4, v2, &v67);
      sub_798900(a2, &v67);
      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v76)
      {
        v77 = v76;
        operator delete(v76);
      }

      v50 = v74;
      if (v74)
      {
        v51 = v75;
        v52 = v74;
        if (v75 != v74)
        {
          do
          {
            v51 = sub_662AC8(v51 - 13);
          }

          while (v51 != v50);
          v52 = v74;
        }

        v75 = v50;
        operator delete(v52);
      }

      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      v12 = __p;
      if (__p)
      {
        v53 = v69;
        v7 = __p;
        if (v69 == __p)
        {
          goto LABEL_4;
        }

        do
        {
          v53 = sub_53A868(v53 - 160);
        }

        while (v53 != v12);
        goto LABEL_3;
      }

LABEL_5:
      result = sub_682A44(a2[1] - 448, v8 + 1);
LABEL_6:
      v2 += 432;
      if (v2 == v3)
      {
        return result;
      }
    }

    sub_8B4A40(v4, v2, &v67);
    sub_798900(a2, &v67);
    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v38 = v74;
    if (v74)
    {
      v39 = v75;
      v40 = v74;
      if (v75 != v74)
      {
        do
        {
          v39 = sub_662AC8(v39 - 13);
        }

        while (v39 != v38);
        v40 = v74;
      }

      v75 = v38;
      operator delete(v40);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v12 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }

    v41 = v69;
    v7 = __p;
    if (v69 == __p)
    {
      goto LABEL_4;
    }

    do
    {
      v41 = sub_53A868(v41 - 160);
    }

    while (v41 != v12);
LABEL_3:
    v7 = __p;
    goto LABEL_4;
  }

  return result;
}

void sub_8B3A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_682DB0(&a65);
  sub_5EC5AC(v65);
  _Unwind_Resume(a1);
}

void sub_8B3B90(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 11984);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return;
  }

  do
  {
    sub_8F59E8(v4, &v53);
    sub_6828CC(&v40, &v53, (a1 + 5984), 0, 0, 1);
    if (*(a1 + 6000) >= *(v4 + 32))
    {
      v8 = *(v4 + 32);
    }

    else
    {
      v8 = *(a1 + 6000);
    }

    v9 = sub_67AAA0(*(a1 + 2536), *(a1 + 5996));
    v10 = *(v4 + 32);
    v11 = *(a1 + 6000);
    v12 = sub_682B0C(&v40);
    if (v10 + v9 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10 + v9;
    }

    v14 = 12000;
    if (v12)
    {
      v14 = 12008;
    }

    v15 = *(a1 + v14);
    sub_6817B4(&v40, v13, v8, v15);
    sub_6817C0(&v40, v15);
    sub_682A1C(&v40, *(*(a1 + 2536) + 433));
    sub_68179C(&v40, 88);
    v16 = a2[1];
    if (v16 >= a2[2])
    {
      v17 = sub_7A5EF8(a2, &v40);
    }

    else
    {
      sub_7A6070(a2[1], &v40);
      v17 = v16 + 448;
    }

    a2[1] = v17;
    if (__p)
    {
      v52 = __p;
      operator delete(__p);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    v18 = v47;
    if (v47)
    {
      v19 = v48;
      v20 = v47;
      if (v48 == v47)
      {
        goto LABEL_55;
      }

      while (1)
      {
        v22 = *(v19 - 2);
        if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v23 = *(v19 - 8);
          if (v23)
          {
            goto LABEL_41;
          }

          goto LABEL_30;
        }

        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
        v23 = *(v19 - 8);
        if (v23)
        {
          break;
        }

LABEL_30:
        v24 = *(v19 - 10);
        *(v19 - 10) = 0;
        if (v24)
        {
          operator delete(v24);
        }

        v25 = v19 - 13;
        v26 = *(v19 - 13);
        if (v26)
        {
          v27 = *(v19 - 12);
          v21 = *(v19 - 13);
          if (v27 != v26)
          {
            do
            {
              v28 = *(v27 - 1);
              v27 -= 3;
              if (v28 < 0)
              {
                operator delete(*v27);
              }
            }

            while (v27 != v26);
            v21 = *v25;
          }

          *(v19 - 12) = v26;
          operator delete(v21);
        }

        v19 -= 13;
        if (v25 == v18)
        {
          v20 = v47;
LABEL_55:
          v48 = v18;
          operator delete(v20);
          goto LABEL_56;
        }
      }

      while (1)
      {
LABEL_41:
        v29 = *v23;
        if (*(v23 + 191) < 0)
        {
          operator delete(v23[21]);
          if ((*(v23 + 159) & 0x80000000) == 0)
          {
LABEL_43:
            if ((*(v23 + 135) & 0x80000000) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_50;
          }
        }

        else if ((*(v23 + 159) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        operator delete(v23[17]);
        if ((*(v23 + 135) & 0x80000000) == 0)
        {
LABEL_44:
          if ((*(v23 + 95) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v23[14]);
        if ((*(v23 + 95) & 0x80000000) == 0)
        {
LABEL_45:
          if ((*(v23 + 63) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_52;
        }

LABEL_51:
        operator delete(v23[9]);
        if ((*(v23 + 63) & 0x80000000) == 0)
        {
LABEL_46:
          if (*(v23 + 39) < 0)
          {
            goto LABEL_53;
          }

          goto LABEL_40;
        }

LABEL_52:
        operator delete(v23[5]);
        if (*(v23 + 39) < 0)
        {
LABEL_53:
          operator delete(v23[2]);
        }

LABEL_40:
        operator delete(v23);
        v23 = v29;
        if (!v29)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_56:
    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v30 = v41;
    if (v41)
    {
      v31 = v42;
      v32 = v41;
      if (v42 != v41)
      {
        do
        {
          v31 = sub_53A868(v31 - 160);
        }

        while (v31 != v30);
        v32 = v41;
      }

      v42 = v30;
      operator delete(v32);
    }

    v33 = v57;
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v34 = v56;
      if (!v56)
      {
        goto LABEL_68;
      }

      while (1)
      {
LABEL_79:
        v39 = *v34;
        if (*(v34 + 191) < 0)
        {
          operator delete(v34[21]);
          if ((*(v34 + 159) & 0x80000000) == 0)
          {
LABEL_81:
            if ((*(v34 + 135) & 0x80000000) == 0)
            {
              goto LABEL_82;
            }

            goto LABEL_88;
          }
        }

        else if ((*(v34 + 159) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

        operator delete(v34[17]);
        if ((*(v34 + 135) & 0x80000000) == 0)
        {
LABEL_82:
          if ((*(v34 + 95) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_89;
        }

LABEL_88:
        operator delete(v34[14]);
        if ((*(v34 + 95) & 0x80000000) == 0)
        {
LABEL_83:
          if ((*(v34 + 63) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }

LABEL_89:
        operator delete(v34[9]);
        if ((*(v34 + 63) & 0x80000000) == 0)
        {
LABEL_84:
          if (*(v34 + 39) < 0)
          {
            goto LABEL_91;
          }

          goto LABEL_78;
        }

LABEL_90:
        operator delete(v34[5]);
        if (*(v34 + 39) < 0)
        {
LABEL_91:
          operator delete(v34[2]);
        }

LABEL_78:
        operator delete(v34);
        v34 = v39;
        if (!v39)
        {
          goto LABEL_68;
        }
      }
    }

    v34 = v56;
    if (v56)
    {
      goto LABEL_79;
    }

LABEL_68:
    v35 = v55;
    v55 = 0;
    if (v35)
    {
      operator delete(v35);
    }

    v36 = v53;
    if (v53)
    {
      v37 = v54;
      v7 = v53;
      if (v54 != v53)
      {
        do
        {
          v38 = *(v37 - 1);
          v37 -= 3;
          if (v38 < 0)
          {
            operator delete(*v37);
          }
        }

        while (v37 != v36);
        v7 = v53;
      }

      v54 = v36;
      operator delete(v7);
    }

    v4 += 40;
  }

  while (v4 != v5);
}

void sub_8B404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[1] = v10;
  sub_682DB0(&a9);
  sub_662AC8((v11 - 192));
  sub_5EC5AC(v9);
  _Unwind_Resume(a1);
}

void sub_8B40B0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8F9BD0(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 79);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B4260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4290(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8F9AA0(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 78);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B4440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4470(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  sub_8F9EC0(a1 + 2576, a3, a4, &v24);
  sub_6828CC(a5, &v24, (a1 + 5984), 0, 0, 1);
  sub_68179C(a5, 77);
  if (a4)
  {
    sub_681A4C(a5, (a3 + 88));
  }

  else
  {
    sub_681A58(a5, (a3 + 88));
  }

  v10 = *a2;
  v11 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v12 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v13 = sub_682B0C(a5);
  v14 = 12000;
  if (v13)
  {
    v14 = 12008;
  }

  v15 = *(a1 + v14);
  sub_6817B4(a5, v11 + v10, v12 + v10, v15);
  sub_6817C0(a5, v15);
  sub_682A1C(a5, *(*(a1 + 2536) + 432));
  v16 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v27;
  if (v27)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = __p;
  __p = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v24;
  if (v24)
  {
    v21 = v25;
    v22 = v24;
    if (v25 != v24)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = v24;
    }

    v25 = v20;
    operator delete(v22);
  }
}

void sub_8B4650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4860(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8FAAF0(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 80);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B4A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4A40(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8FAC20(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 81);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B4BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4C20(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8FAD50(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 84);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B4DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4E00(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8FAE80(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 82);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B4FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B4FE0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_8FAFB0(&v20);
  sub_6828CC(a3, &v20, (a1 + 5984), 0, 0, 1);
  sub_68179C(a3, 85);
  v6 = *a2;
  v7 = sub_67A74C(*(a1 + 2536), *(a1 + 5996));
  v8 = sub_67A768(*(a1 + 2536), *(a1 + 5996));
  v9 = sub_682B0C(a3);
  v10 = 12000;
  if (v9)
  {
    v10 = 12008;
  }

  v11 = *(a1 + v10);
  sub_6817B4(a3, v7 + v6, v8 + v6, v11);
  sub_6817C0(a3, v11);
  sub_682A1C(a3, *(*(a1 + 2536) + 432));
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v23;
  if (v23)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = __p;
  __p = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v20;
  if (v20)
  {
    v17 = v21;
    v18 = v20;
    if (v21 != v20)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v20;
    }

    v21 = v16;
    operator delete(v18);
  }
}

void sub_8B5190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_8B51A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8B51C0(uint64_t a1)
{
  v2 = *(a1 + 2536);
  v3 = *(v2 + 2456) / 3.6;
  v4 = sub_67A384(v2, *(a1 + 5996));
  if (v4 < 0)
  {
    v5 = -5;
  }

  else
  {
    v5 = 5;
  }

  v6 = v4 / 10 + (((103 * (v5 + v4 % 10)) >> 15) & 1) + ((103 * (v5 + v4 % 10)) >> 10);
  v7 = sub_67A3A0(*(a1 + 2536), *(a1 + 5996));
  if (v7 < 0)
  {
    v8 = -5;
  }

  else
  {
    v8 = 5;
  }

  v9 = (((103 * (v8 + v7 % 10)) >> 15) & 1) + ((103 * (v8 + v7 % 10)) >> 10);
  v10 = v3 * v6 * 100.0;
  if (v10 >= 0.0)
  {
    v11 = v3 * v6 * 100.0;
    if (v10 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v12 = (v10 + v10) + 1;
  }

  else
  {
    v11 = v3 * v6 * 100.0;
    if (v10 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v12 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
  }

  v11 = (v12 >> 1);
LABEL_13:
  v13 = v7 / 10 + v9;
  if (v11 >= 9.22337204e18)
  {
    v15 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_22;
  }

  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v14 = (v10 + v10) + 1;
      goto LABEL_20;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v14 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_20:
    v10 = (v14 >> 1);
  }

  v15 = v10;
LABEL_22:
  v16 = *(a1 + 6000);
  if (v15 >= v16)
  {
    v17 = *(a1 + 6000);
  }

  else
  {
    v17 = v15;
  }

  v33 = v17;
  v18 = v3 * v13 * 100.0;
  if (v18 >= 0.0)
  {
    v19 = v3 * v13 * 100.0;
    if (v18 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v20 = (v18 + v18) + 1;
  }

  else
  {
    v19 = v3 * v13 * 100.0;
    if (v18 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v20 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
  }

  v19 = (v20 >> 1);
LABEL_31:
  if (v19 >= 9.22337204e18)
  {
    v22 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_40;
  }

  if (v18 >= 0.0)
  {
    if (v18 < 4.50359963e15)
    {
      v21 = (v18 + v18) + 1;
      goto LABEL_38;
    }
  }

  else if (v18 > -4.50359963e15)
  {
    v21 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
LABEL_38:
    v18 = (v21 >> 1);
  }

  v22 = v18;
LABEL_40:
  if (v22 < v16)
  {
    v16 = v22;
  }

  v32 = v16;
  sub_6844F4((a1 + 6008), &v33, &v32, 1, v31);
  v23 = sub_5CBB30(v31);
  v24 = v31[0];
  if (v31[0] >= v17)
  {
    v24 = v17;
  }

  if (v23)
  {
    v17 = v24;
  }

  sub_684A64(a1 + 6008, &v33, &v32, v30);
  v25 = sub_5CBB30(v30);
  v26 = v30[0];
  if (v30[0] >= v17)
  {
    v26 = v17;
  }

  if (v25)
  {
    v17 = v26;
  }

  if ((*(a1 + 11908) & 1) != 0 && *(a1 + 6592) < v17)
  {
    v17 = *(a1 + 6592);
  }

  if (sub_5CBB30((a1 + 6152)))
  {
    v27 = *(a1 + 6584);
    if (*(a1 + 6152) - v27 < v17)
    {
      v17 = *(a1 + 6152) - v27;
    }
  }

  if (v32 <= v17)
  {
    v28 = v17;
  }

  else
  {
    v28 = v32;
  }

  sub_5941F8(v30);
  sub_5941F8(v31);
  return v28;
}

void sub_8B5564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_5941F8(&a9);
  sub_5941F8(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_8B5580(uint64_t a1)
{
  v2 = (a1 + 11801);
  v3 = (a1 + 5996);
  v4 = sub_67A26C(*(a1 + 2536), *(a1 + 5996));
  v5 = *(a1 + 6000);
  if (v5 >= v4)
  {
    v5 = v4;
  }

  v41 = v5;
  if (*v2 == 1)
  {
    v6 = sub_67A288(*(a1 + 2536), *v3);
    v7 = *(a1 + 6000);
    if (v7 >= v6)
    {
      v7 = v6;
    }

    v8 = *v2;
    v40 = v7;
    if (v8)
    {
      v9 = sub_67A234(*(a1 + 2536), *v3);
      if (*(a1 + 6000) >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = *(a1 + 6000);
      }

      if (v2[107] != 1)
      {
        goto LABEL_11;
      }

LABEL_18:
      v11 = *(a1 + 6592);
      goto LABEL_19;
    }
  }

  else
  {
    v40 = v5;
  }

  v12 = sub_67A250(*(a1 + 2536), *v3);
  if (*(a1 + 6000) >= v12)
  {
    v10 = v12;
  }

  else
  {
    v10 = *(a1 + 6000);
  }

  if (v2[107] == 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v2[113] == 1)
  {
    v11 = *(a1 + 10552);
    goto LABEL_19;
  }

  if (v2[115] == 1)
  {
    v11 = *(a1 + 6152) - *(a1 + 6584);
    goto LABEL_19;
  }

  if (v2[111] == 1)
  {
    v11 = *(a1 + 8352);
LABEL_19:
    if (v11 >= v10)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  if (v2[109] == 1 && v3[3668] == 1)
  {
    return *(a1 + 9232);
  }

  if (*v2 == 1)
  {
    sub_6844C8((a1 + 6008), &v41, 1, v39);
    if (sub_5CBB30(v39))
    {
      v14 = v41;
      sub_5941F8(v39);
      return v14;
    }

    sub_6844C8((a1 + 6008), &v40, 1, v38);
    v15 = sub_5CBB30(v38);
    v16 = v38[0];
    sub_5941F8(v38);
    sub_5941F8(v39);
    if (v15)
    {
      return v16;
    }
  }

  v17 = v10;
  if (v3[2348] == 1)
  {
    v17 = *(a1 + 7912);
  }

  if (v3[1908])
  {
    v18 = v40;
  }

  else
  {
    v18 = v17;
  }

  if (sub_5CBB30((a1 + 6152)))
  {
    if (*(a1 + 6152) - *(a1 + 6584) <= v40)
    {
      v18 = v40;
    }

    else
    {
      v18 = *(a1 + 6152) - *(a1 + 6584);
    }

    v19 = v10;
    if (*v2 != 1)
    {
LABEL_42:
      v20 = v10;
      if (v2[1] != 1)
      {
        goto LABEL_43;
      }

LABEL_51:
      v20 = sub_8A5448(a1, v10);
      v27 = *(a1 + 11984);
      v23 = *v27;
      v22 = v27[1];
      if (v23 != v22)
      {
        goto LABEL_44;
      }

LABEL_52:
      v26 = v10;
      goto LABEL_66;
    }
  }

  else
  {
    v19 = v10;
    if (*v2 != 1)
    {
      goto LABEL_42;
    }
  }

  v19 = sub_6C7D34(a1 + 11440);
  v20 = v10;
  if (v2[1] == 1)
  {
    goto LABEL_51;
  }

LABEL_43:
  v21 = *(a1 + 11984);
  v23 = *v21;
  v22 = v21[1];
  if (v23 == v22)
  {
    goto LABEL_52;
  }

LABEL_44:
  v24 = v22 - v23 - 40;
  if (v24 > 0x27)
  {
    v28 = v24 / 0x28 + 1;
    v25 = v23 + 40 * (v28 & 0xFFFFFFFFFFFFFFELL);
    v29 = (v23 + 72);
    v30 = v28 & 0xFFFFFFFFFFFFFFELL;
    v31 = v10;
    v32 = v10;
    do
    {
      v33 = *(v29 - 5);
      v35 = *v29;
      v29 += 10;
      v34 = v35;
      if (v31 >= v33)
      {
        v31 = v33;
      }

      if (v32 >= v34)
      {
        v32 = v34;
      }

      v30 -= 2;
    }

    while (v30);
    if (v31 >= v32)
    {
      v26 = v32;
    }

    else
    {
      v26 = v31;
    }

    if (v28 == (v28 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_66;
    }
  }

  else
  {
    v25 = v23;
    v26 = v10;
  }

  do
  {
    if (v26 >= *(v25 + 32))
    {
      v26 = *(v25 + 32);
    }

    v25 += 40;
  }

  while (v25 != v22);
LABEL_66:
  v36 = v40;
  if (v40 <= v19)
  {
    v36 = v19;
  }

  if (v20 >= v10)
  {
    v37 = v10;
  }

  else
  {
    v37 = v20;
  }

  if (v18 < v37)
  {
    v37 = v18;
  }

  if (v26 < v37)
  {
    v37 = v26;
  }

  if (v36 >= v37)
  {
    return v37;
  }

  else
  {
    return v36;
  }
}

void sub_8B58F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_5941F8(&a9);
  sub_5941F8(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_8B5934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 6008);
  v7 = *(a1 + 6016);
  if (v6 == v7)
  {
LABEL_10:
    *(a5 + 8) = 0u;
    *(a5 + 424) = 0;
    *(a5 + 248) = 0u;
    *(a5 + 232) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 184) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 152) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 392) = 0u;
    *(a5 + 408) = 0u;
    *(a5 + 360) = 0u;
    *(a5 + 376) = 0u;
    *(a5 + 328) = 0u;
    *(a5 + 344) = 0u;
    *(a5 + 296) = 0u;
    *(a5 + 312) = 0u;
    *(a5 + 264) = 0u;
    *(a5 + 280) = 0u;
    *a5 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a5 + 8);
    *(a5 + 168) = -1;
    *(a5 + 252) = 0;
    *(a5 + 192) = 0;
    *(a5 + 160) = -1;
    *(a5 + 200) = 0;
    *(a5 + 208) = 0;
    *(a5 + 184) = 0;
    *(a5 + 176) = 0;
    *(a5 + 216) = -1;
    *(a5 + 224) = -1;
    *(a5 + 232) = 0x7FFFFFFF;
    *(a5 + 240) = 0;
    *(a5 + 248) = 0;
    *(a5 + 268) = 0;
    *(a5 + 260) = 0;
    *(a5 + 276) = 0;
    return sub_734CE0(a5 + 280);
  }

  else
  {
    while (1)
    {
      if (sub_684288(v6))
      {
        v12 = sub_8A5C2C(*(a1 + 11976), v6[21]);
        if (sub_683C48(v12, a2) && sub_684298(v6, a3, a4))
        {
          break;
        }
      }

      v6 += 54;
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    return sub_5F3168(a5, v6);
  }
}

void sub_8B5AC8(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_8B5B14(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v8 = a4;
  v13 = sub_83AA88(a1, a2, a3, a4, a5, a6);
  *v13 = off_266D240;
  v292 = v8;
  sub_902C8C((v13 + 2576), a2, a3, v8, a5, a6);
  *(a1 + 5952) = 0x7FFFFFFFFFFFFFFFLL;
  v14 = (a1 + 5992);
  *(a1 + 5960) = 0;
  *(a1 + 5968) = 0u;
  *(a1 + 5984) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 5992) = 0;
  *(a1 + 6000) = 0x7FFFFFFFFFFFFFFFLL;
  v291 = (a1 + 6008);
  *(a1 + 6008) = 0;
  *(a1 + 6016) = 0u;
  *(a1 + 6032) = 1;
  *(a1 + 6036) = 0;
  *(a1 + 6040) = -1;
  *(a1 + 6048) = -1;
  *(a1 + 6056) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 6112) = 0;
  *(a1 + 6096) = 0u;
  *(a1 + 6080) = 0u;
  *(a1 + 6064) = 0u;
  *(a1 + 6120) = 0xBFF0000000000000;
  *(a1 + 6152) = 0x7FFFFFFFFFFFFFFFLL;
  v287 = (a1 + 6160);
  v288 = (a1 + 6032);
  *(a1 + 6128) = 0;
  *(a1 + 6136) = 0u;
  sub_734CE0(a1 + 6160);
  *(a1 + 6320) = -1;
  *(a1 + 6312) = -1;
  *(a1 + 6352) = 0;
  *(a1 + 6360) = 0;
  *(a1 + 6344) = 0;
  *(a1 + 6328) = 0;
  *(a1 + 6336) = 0;
  *(a1 + 6368) = -1;
  *(a1 + 6376) = -1;
  *(a1 + 6384) = 0x7FFFFFFF;
  *(a1 + 6392) = 0;
  *(a1 + 6400) = 0;
  *(a1 + 6428) = 0;
  *(a1 + 6412) = 0;
  *(a1 + 6420) = 0;
  *(a1 + 6404) = 0;
  sub_734CE0(a1 + 6432);
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  *(a1 + 6584) = vnegq_f64(v15);
  v286 = (a1 + 6600);
  sub_734CE0(a1 + 6600);
  *(a1 + 6760) = -1;
  *(a1 + 6752) = -1;
  *(a1 + 6784) = 0;
  *(a1 + 6800) = 0;
  *(a1 + 6792) = 0;
  *(a1 + 6768) = 0;
  *(a1 + 6776) = 0;
  *(a1 + 6808) = -1;
  *(a1 + 6816) = -1;
  *(a1 + 6824) = 0x7FFFFFFF;
  *(a1 + 6832) = 0;
  *(a1 + 6840) = 0;
  *(a1 + 6868) = 0;
  *(a1 + 6852) = 0;
  *(a1 + 6860) = 0;
  *(a1 + 6844) = 0;
  sub_734CE0(a1 + 6872);
  v276 = (a1 + 6784);
  *(a1 + 7024) = 0;
  *(a1 + 7032) = 0x7FFFFFFFFFFFFFFFLL;
  v285 = (a1 + 7040);
  sub_734CE0(a1 + 7040);
  *(a1 + 7200) = -1;
  *(a1 + 7192) = -1;
  *(a1 + 7224) = 0;
  *(a1 + 7240) = 0;
  *(a1 + 7232) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7216) = 0;
  *(a1 + 7248) = -1;
  *(a1 + 7256) = -1;
  *(a1 + 7264) = 0x7FFFFFFF;
  *(a1 + 7272) = 0;
  *(a1 + 7280) = 0;
  *(a1 + 7308) = 0;
  *(a1 + 7292) = 0;
  *(a1 + 7300) = 0;
  *(a1 + 7284) = 0;
  sub_734CE0(a1 + 7312);
  *(a1 + 7464) = 0;
  *(a1 + 7472) = 0x7FFFFFFFFFFFFFFFLL;
  sub_734CE0(a1 + 7480);
  *(a1 + 7640) = -1;
  *(a1 + 7632) = -1;
  *(a1 + 7664) = 0;
  *(a1 + 7680) = 0;
  *(a1 + 7672) = 0;
  *(a1 + 7648) = 0;
  *(a1 + 7656) = 0;
  *(a1 + 7688) = -1;
  *(a1 + 7696) = -1;
  *(a1 + 7704) = 0x7FFFFFFF;
  *(a1 + 7712) = 0;
  *(a1 + 7720) = 0;
  *(a1 + 7748) = 0;
  *(a1 + 7732) = 0;
  *(a1 + 7740) = 0;
  *(a1 + 7724) = 0;
  v277 = (a1 + 7752);
  v278 = (a1 + 7664);
  sub_734CE0(a1 + 7752);
  v274 = (a1 + 6872);
  v275 = (a1 + 6432);
  *(a1 + 7904) = 0;
  *(a1 + 7912) = 0x7FFFFFFFFFFFFFFFLL;
  v16 = (a1 + 7920);
  sub_734CE0(a1 + 7920);
  *(a1 + 8080) = -1;
  *(a1 + 8072) = -1;
  v17 = (a1 + 8104);
  *(a1 + 8104) = 0;
  *(a1 + 8120) = 0;
  *(a1 + 8112) = 0;
  *(a1 + 8088) = 0;
  *(a1 + 8096) = 0;
  *(a1 + 8128) = -1;
  *(a1 + 8136) = -1;
  *(a1 + 8144) = 0x7FFFFFFF;
  *(a1 + 8152) = 0;
  *(a1 + 8160) = 0;
  *(a1 + 8188) = 0;
  *(a1 + 8172) = 0;
  *(a1 + 8180) = 0;
  v18 = (a1 + 0x2000);
  *(a1 + 8164) = 0;
  sub_734CE0(a1 + 0x2000);
  v272 = (a1 + 7224);
  v273 = (a1 + 7312);
  *(a1 + 8344) = 0;
  *(a1 + 8352) = 0x7FFFFFFFFFFFFFFFLL;
  v284 = (a1 + 8360);
  sub_734CE0(a1 + 8360);
  *(a1 + 8520) = -1;
  *(a1 + 8512) = -1;
  v271 = (a1 + 8544);
  *(a1 + 8544) = 0;
  *(a1 + 8560) = 0;
  *(a1 + 8552) = 0;
  *(a1 + 8528) = 0;
  *(a1 + 8536) = 0;
  *(a1 + 8568) = -1;
  *(a1 + 8576) = -1;
  *(a1 + 8584) = 0x7FFFFFFF;
  *(a1 + 8592) = 0;
  *(a1 + 8600) = 0;
  *(a1 + 8628) = 0;
  *(a1 + 8612) = 0;
  *(a1 + 8620) = 0;
  *(a1 + 8604) = 0;
  sub_734CE0(a1 + 8632);
  *(a1 + 8784) = 0;
  *(a1 + 8792) = 0x7FFFFFFFFFFFFFFFLL;
  v283 = (a1 + 8800);
  sub_734CE0(a1 + 8800);
  *(a1 + 8960) = -1;
  *(a1 + 8952) = -1;
  *(a1 + 8984) = 0;
  *(a1 + 9000) = 0;
  *(a1 + 8992) = 0;
  *(a1 + 8968) = 0;
  *(a1 + 8976) = 0;
  *(a1 + 9008) = -1;
  *(a1 + 9016) = -1;
  *(a1 + 9024) = 0x7FFFFFFF;
  *(a1 + 9032) = 0;
  *(a1 + 9040) = 0;
  *(a1 + 9068) = 0;
  *(a1 + 9052) = 0;
  *(a1 + 9060) = 0;
  *(a1 + 9044) = 0;
  v269 = sub_734CE0(a1 + 9072);
  v270 = (a1 + 8632);
  v268 = (a1 + 8984);
  *(a1 + 9224) = 0;
  *(a1 + 9232) = 0x7FFFFFFFFFFFFFFFLL;
  v282 = (a1 + 9240);
  sub_734CE0(a1 + 9240);
  *(a1 + 9400) = -1;
  *(a1 + 9392) = -1;
  v267 = (a1 + 9424);
  *(a1 + 9424) = 0;
  *(a1 + 9440) = 0;
  *(a1 + 9432) = 0;
  *(a1 + 9408) = 0;
  *(a1 + 9416) = 0;
  *(a1 + 9448) = -1;
  *(a1 + 9456) = -1;
  *(a1 + 9464) = 0x7FFFFFFF;
  *(a1 + 9472) = 0;
  *(a1 + 9480) = 0;
  *(a1 + 9508) = 0;
  *(a1 + 9492) = 0;
  *(a1 + 9500) = 0;
  *(a1 + 9484) = 0;
  sub_734CE0(a1 + 9512);
  *(a1 + 9664) = 0;
  *(a1 + 9672) = 0x7FFFFFFFFFFFFFFFLL;
  v281 = (a1 + 9680);
  sub_734CE0(a1 + 9680);
  *(a1 + 9840) = -1;
  *(a1 + 9832) = -1;
  *(a1 + 9864) = 0;
  *(a1 + 9880) = 0;
  *(a1 + 9872) = 0;
  *(a1 + 9848) = 0;
  *(a1 + 9856) = 0;
  *(a1 + 9888) = -1;
  *(a1 + 9896) = -1;
  *(a1 + 9904) = 0x7FFFFFFF;
  *(a1 + 9912) = 0;
  *(a1 + 9920) = 0;
  *(a1 + 9948) = 0;
  *(a1 + 9932) = 0;
  *(a1 + 9940) = 0;
  *(a1 + 9924) = 0;
  v265 = sub_734CE0(a1 + 9952);
  v266 = (a1 + 9512);
  v264 = (a1 + 9864);
  *(a1 + 10104) = 0;
  *(a1 + 10112) = 0x7FFFFFFFFFFFFFFFLL;
  v280 = (a1 + 10120);
  sub_734CE0(a1 + 10120);
  *(a1 + 10280) = -1;
  *(a1 + 10272) = -1;
  *(a1 + 10304) = 0;
  *(a1 + 10320) = 0;
  *(a1 + 10312) = 0;
  *(a1 + 10288) = 0;
  *(a1 + 10296) = 0;
  *(a1 + 10328) = -1;
  *(a1 + 10336) = -1;
  *(a1 + 10344) = 0x7FFFFFFF;
  *(a1 + 10352) = 0;
  *(a1 + 10360) = 0;
  *(a1 + 10388) = 0;
  *(a1 + 10372) = 0;
  *(a1 + 10380) = 0;
  *(a1 + 10364) = 0;
  sub_734CE0(a1 + 10392);
  *(a1 + 10544) = 0;
  *(a1 + 10552) = 0x7FFFFFFFFFFFFFFFLL;
  v279 = (a1 + 10560);
  sub_734CE0(a1 + 10560);
  v262 = (a1 + 10304);
  v263 = (a1 + 10392);
  *(a1 + 10720) = -1;
  *(a1 + 10712) = -1;
  *(a1 + 10752) = 0;
  *(a1 + 10760) = 0;
  *(a1 + 10744) = 0;
  *(a1 + 10728) = 0;
  *(a1 + 10736) = 0;
  *(a1 + 10768) = -1;
  *(a1 + 10776) = -1;
  *(a1 + 10784) = 0x7FFFFFFF;
  *(a1 + 10792) = 0;
  *(a1 + 10800) = 0;
  *(a1 + 10828) = 0;
  *(a1 + 10812) = 0;
  *(a1 + 10820) = 0;
  *(a1 + 10804) = 0;
  v260 = (a1 + 10832);
  v261 = (a1 + 10744);
  sub_734CE0(a1 + 10832);
  *(a1 + 10984) = 0x7FFFFFFFFFFFFFFFLL;
  sub_734CE0(a1 + 10992);
  *(a1 + 11152) = -1;
  *(a1 + 11144) = -1;
  *(a1 + 11184) = 0;
  *(a1 + 11192) = 0;
  *(a1 + 11176) = 0;
  *(a1 + 11160) = 0;
  *(a1 + 11168) = 0;
  *(a1 + 11200) = -1;
  *(a1 + 11208) = -1;
  *(a1 + 11216) = 0x7FFFFFFF;
  *(a1 + 11224) = 0;
  *(a1 + 11232) = 0;
  *(a1 + 11260) = 0;
  *(a1 + 11244) = 0;
  *(a1 + 11252) = 0;
  *(a1 + 11236) = 0;
  v258 = sub_734CE0(a1 + 11264);
  v259 = (a1 + 10992);
  v257 = (a1 + 11176);
  *(a1 + 11432) = 0;
  v289 = (a1 + 11416);
  *(a1 + 11416) = 0u;
  sub_6C6A34(a1 + 11440);
  *(a1 + 11840) = 0;
  *(a1 + 11832) = 0;
  __dst = (a1 + 11816);
  *(a1 + 11816) = 0u;
  *(a1 + 11800) = 0;
  *(a1 + 11808) = off_266BB28;
  *(a1 + 11848) = 0;
  *(a1 + 11852) = 1;
  *(a1 + 11856) = 0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vnegq_f64(v19);
  v255 = (a1 + 11864);
  *(a1 + 11864) = v20;
  *(a1 + 11880) = v20;
  *(a1 + 11896) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11911) = 0;
  *(a1 + 11904) = 0;
  *(a1 + 11920) = xmmword_229B660;
  *(a1 + 11936) = -1;
  *(a1 + 11944) = 0x7FFFFFFF;
  v8 += 138;
  *(a1 + 11952) = sub_50EA30(v8, a5) + 2032;
  *(a1 + 11960) = sub_50EA30(v8, a5) + 392;
  *(a1 + 11968) = sub_50EA30(v8, a5) + 416;
  *(a1 + 11976) = v292 + 1290;
  *(a1 + 11984) = sub_50EA30(v8, a5) + 1984;
  *(a1 + 11992) = 0;
  *(a1 + 11996) = a6 + 1;
  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  *(a1 + 12000) = vnegq_f64(v21);
  v22 = *v8 + 2616 * a5;
  *(a1 + 11920) = 1000 * *v22;
  *(a1 + 5952) = *(v22 + 1000);
  v23 = *(v22 + 160);
  v24 = 1;
  if ((v23 - 25 > 0x3F || ((1 << (v23 - 25)) & 0x9000000000000001) == 0) && v23 != 17)
  {
    v24 = 0;
  }

  *v14 = v24;
  v26 = v23 == 85 || v23 == 88;
  *(a1 + 5993) = v26;
  if (v23 - 82 >= 3)
  {
    if (v23 > 0x27)
    {
      LOBYTE(v27) = 0;
    }

    else
    {
      v27 = 0x8600050000uLL >> v23;
    }
  }

  else
  {
    LOBYTE(v27) = 1;
  }

  *(a1 + 5994) = v27 & 1;
  v28 = *(v22 + 24);
  if (v28 >= sub_4D1DC0(v292) || (v29 = sub_4D1F50(v292, *(v22 + 24)), v30 = *v29, v31 = &(*v29)[-**v29], *v31 < 0x2Fu))
  {
    LOBYTE(v35) = 0;
    v33 = (a1 + 6008);
  }

  else
  {
    v32 = *(v31 + 23);
    v33 = (a1 + 6008);
    if (v32 && (v34 = v30[v32], v34 <= 0x1A))
    {
      v35 = 0x4810001u >> v34;
    }

    else
    {
      LOBYTE(v35) = 0;
    }
  }

  *(a1 + 5995) = v35 & 1;
  *(a1 + 5996) = *(v22 + 2057);
  if (v33 == (v22 + 2064))
  {
    v37 = *(v22 + 2104);
    *v288 = *(v22 + 2088);
    *(a1 + 6048) = v37;
  }

  else
  {
    sub_5FCEE0(v33, *(v22 + 2064), *(v22 + 2072), 0x84BDA12F684BDA13 * ((*(v22 + 2072) - *(v22 + 2064)) >> 4));
    v36 = *(v22 + 2104);
    *v288 = *(v22 + 2088);
    *(a1 + 6048) = v36;
    sub_5FD2CC((a1 + 6064), *(v22 + 2120), *(v22 + 2128), 0xD37A6F4DE9BD37A7 * ((*(v22 + 2128) - *(v22 + 2120)) >> 3));
  }

  v38 = *(v22 + 2144);
  v39 = *(v22 + 2160);
  *(a1 + 6113) = *(v22 + 2169);
  *(a1 + 6088) = v38;
  *(a1 + 6104) = v39;
  *(a1 + 6136) = *(v22 + 2192);
  if (v289 != (v22 + 2008))
  {
    sub_5FB61C(v289, *(v22 + 2008), *(v22 + 2016), 0x4FA4FA4FA4FA4FA5 * ((*(v22 + 2016) - *(v22 + 2008)) >> 3));
  }

  *(a1 + 11803) = *(v22 + 2056);
  *(a1 + 11804) = sub_6834F4(v288);
  *(a1 + 11807) = sub_67AA20(a2, *(a1 + 5996));
  if (a1 + 11808 != v22 + 2232)
  {
    v40 = *(v22 + 2263);
    if (*(a1 + 11839) < 0)
    {
      if (v40 >= 0)
      {
        v42 = (v22 + 2240);
      }

      else
      {
        v42 = *(v22 + 2240);
      }

      if (v40 >= 0)
      {
        v43 = *(v22 + 2263);
      }

      else
      {
        v43 = *(v22 + 2248);
      }

      sub_13B38(__dst, v42, v43);
    }

    else if ((*(v22 + 2263) & 0x80) != 0)
    {
      sub_13A68(__dst, *(v22 + 2240), *(v22 + 2248));
    }

    else
    {
      v41 = *(v22 + 2240);
      *(a1 + 11832) = *(v22 + 2256);
      *__dst = v41;
    }
  }

  v44 = *(v22 + 2264);
  *(a1 + 11845) = *(v22 + 2269);
  *(a1 + 11840) = v44;
  *(a1 + 11992) = *(v22 + 380);
  v45 = *(v22 + 160);
  v46 = v45 - 41;
  if ((v45 & 0xFFFFFFFE) == 6 || v46 < 0x13)
  {
    v48 = 0;
    *(a1 + 11805) = 1;
    v293 = (a1 + 2536);
    if (v46 <= 0x12 && (*(*(a1 + 2536) + 2468) & 1) != 0)
    {
      v48 = *(v22 + 290);
    }
  }

  else
  {
    if (*(v22 + 2418))
    {
      v47 = 1;
    }

    else
    {
      v47 = *(v22 + 2419);
    }

    v48 = 0;
    *(a1 + 11805) = v47 & 1;
    v293 = (a1 + 2536);
  }

  *(a1 + 11806) = v48 & 1;
  v49 = *(v22 + 824);
  for (i = *(v22 + 832); v49 != i; v49 += 160)
  {
    sub_2512DC(a1 + 5960, (v49 + 152));
  }

  v290 = (a1 + 6000);
  v51 = *(v22 + 128);
  *(a1 + 5984) = v51;
  v52 = *(a1 + 2528);
  if (v52 < 0)
  {
    v53 = -50;
  }

  else
  {
    v53 = 50;
  }

  if (v52 / 100 != ((-5243 * (v53 + v52 % 100)) >> 19) + ((-5243 * (v53 + v52 % 100)) >> 31))
  {
    v54 = 2528;
    if (*(a1 + 2556))
    {
      v54 = 5952;
    }

    v55 = *(a1 + v54);
    if (v55 < 0)
    {
      v56 = -50;
    }

    else
    {
      v56 = 50;
    }

    if (v51 < 0)
    {
      v57 = -50;
    }

    else
    {
      v57 = 50;
    }

    v58 = v51 / 100 + (((5243 * (v57 + v51 % 100)) >> 19) + ((5243 * (v57 + v51 % 100)) >> 31));
    v59 = v55 - v51;
    if (v55 / 100 + (((5243 * (v56 + v55 % 100)) >> 19) + ((5243 * (v56 + v55 % 100)) >> 31)) > v58)
    {
      v52 = v59;
    }
  }

  *v290 = v52;
  v60 = *(v22 + 2008);
  v61 = *(v22 + 2016);
  if (v60 == v61)
  {
LABEL_68:
    sub_6C6A34(&__p);
  }

  else
  {
    while (!sub_6C7D24(v60))
    {
      v60 += 360;
      if (v60 == v61)
      {
        goto LABEL_68;
      }
    }

    sub_5F1934(&__p, v60);
  }

  sub_6BDD8C(a1 + 11440, &__p);
  sub_5C3168(&__p);
  v62 = sub_6C7864(a1 + 11440);
  *(a1 + 11800) = v62;
  *(a1 + 11801) = v62 & *(v22 + 2056);
  v63 = *(a1 + 11416);
  v64 = v63 != *(a1 + 11424) && !sub_6C7D24(v63);
  *(a1 + 11802) = v64;
  sub_897E24(a1, &__p);
  *(a1 + 7912) = __p;
  if (*(a1 + 7943) < 0)
  {
    operator delete(*v16);
  }

  *v16 = v295;
  *(a1 + 7936) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 7944) = v297;
  v65 = (a1 + 7952);
  if (*(a1 + 7975) < 0)
  {
    operator delete(*v65);
  }

  *v65 = v298;
  *(a1 + 7968) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 7976) = v300;
  *(a1 + 7984) = v301;
  v66 = (a1 + 7992);
  if (*(a1 + 8015) < 0)
  {
    operator delete(*v66);
  }

  *v66 = v302;
  *(a1 + 8008) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v67 = (a1 + 8016);
  if (*(a1 + 8039) < 0)
  {
    operator delete(*v67);
  }

  *v67 = v304;
  *(a1 + 8032) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 8040) = v306;
  v68 = (a1 + 8048);
  if (*(a1 + 8071) < 0)
  {
    operator delete(*v68);
  }

  *v68 = v307;
  *(a1 + 8064) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 8072) = v309[0];
  *(a1 + 8081) = *(v309 + 9);
  v69 = *v17;
  if (*v17)
  {
    *(a1 + 8112) = v69;
    operator delete(v69);
    *v17 = 0;
    *(a1 + 8112) = 0;
    *(a1 + 8120) = 0;
  }

  v70 = v310;
  *(a1 + 8120) = v311;
  *(a1 + 8104) = v70;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 8136) = v312;
  *(a1 + 8144) = v313;
  *(a1 + 8152) = v314;
  v71 = *(a1 + 8168);
  if (v71)
  {
    *(a1 + 8176) = v71;
    operator delete(v71);
    *(a1 + 8168) = 0;
    *(a1 + 8176) = 0;
    *(a1 + 8184) = 0;
  }

  *(a1 + 8168) = v315;
  *(a1 + 8184) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 8215) < 0)
  {
    operator delete(*v18);
  }

  *v18 = v317;
  *(a1 + 8208) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 8216) = v319;
  v72 = (a1 + 8224);
  if (*(a1 + 8247) < 0)
  {
    operator delete(*v72);
  }

  *v72 = v320;
  *(a1 + 8240) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 8248) = v322;
  *(a1 + 8256) = v323;
  v73 = (a1 + 8264);
  if (*(a1 + 8287) < 0)
  {
    operator delete(*v73);
  }

  *v73 = v324;
  *(a1 + 8280) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v74 = (a1 + 8288);
  if (*(a1 + 8311) < 0)
  {
    operator delete(*v74);
  }

  *(a1 + 8304) = v327;
  *v74 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 8312) = v328;
  v75 = (a1 + 8320);
  if (*(a1 + 8343) < 0)
  {
    operator delete(*v75);
  }

  *(a1 + 8336) = v330;
  *v75 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 8344) = sub_5CBB30((a1 + 7912));
  if ((*(a1 + 11906) & 1) != 0 || *(a1 + 11801) == 1)
  {
    v76 = sub_67A288(*v293, *(a1 + 5996));
    v77 = a1 + 7480;
  }

  else
  {
    v76 = sub_67A26C(*v293, *(a1 + 5996));
    v77 = a1 + 7480;
  }

  v78 = *v290;
  if (*v290 >= v76)
  {
    v78 = v76;
  }

  v331[0] = v78;
  sub_6844C8(v291, v331, 1, &__p);
  *(a1 + 7472) = __p;
  if (*(a1 + 7503) < 0)
  {
    operator delete(*v77);
  }

  *v77 = v295;
  *(v77 + 16) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 7504) = v297;
  v79 = (a1 + 7512);
  if (*(a1 + 7535) < 0)
  {
    operator delete(*v79);
  }

  *v79 = v298;
  *(a1 + 7528) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 7536) = v300;
  *(a1 + 7544) = v301;
  v80 = (a1 + 7552);
  if (*(a1 + 7575) < 0)
  {
    operator delete(*v80);
  }

  *v80 = v302;
  *(a1 + 7568) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v81 = (a1 + 7576);
  if (*(a1 + 7599) < 0)
  {
    operator delete(*v81);
  }

  *v81 = v304;
  *(a1 + 7592) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 7600) = v306;
  v82 = (a1 + 7608);
  if (*(a1 + 7631) < 0)
  {
    operator delete(*v82);
  }

  *v82 = v307;
  *(a1 + 7624) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 7632) = v309[0];
  *(a1 + 7641) = *(v309 + 9);
  v83 = *v278;
  if (*v278)
  {
    *(a1 + 7672) = v83;
    operator delete(v83);
    *v278 = 0;
    *(a1 + 7672) = 0;
    *(a1 + 7680) = 0;
  }

  v84 = v311;
  *(a1 + 7664) = v310;
  *(a1 + 7680) = v84;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 7696) = v312;
  *(a1 + 7704) = v313;
  *(a1 + 7712) = v314;
  v85 = *(a1 + 7728);
  if (v85)
  {
    *(a1 + 7736) = v85;
    operator delete(v85);
    *(a1 + 7728) = 0;
    *(a1 + 7736) = 0;
    *(a1 + 7744) = 0;
  }

  *(a1 + 7728) = v315;
  *(a1 + 7744) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 7775) < 0)
  {
    operator delete(*v277);
  }

  *v277 = v317;
  *(a1 + 7768) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 7776) = v319;
  v86 = (a1 + 7784);
  if (*(a1 + 7807) < 0)
  {
    operator delete(*v86);
  }

  *v86 = v320;
  *(a1 + 7800) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 7808) = v322;
  *(a1 + 7816) = v323;
  v87 = (a1 + 7824);
  if (*(a1 + 7847) < 0)
  {
    operator delete(*v87);
  }

  *v87 = v324;
  *(a1 + 7840) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v88 = (a1 + 7848);
  if (*(a1 + 7871) < 0)
  {
    operator delete(*v88);
  }

  *(a1 + 7864) = v327;
  *v88 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 7872) = v328;
  v89 = (a1 + 7880);
  if (*(a1 + 7903) < 0)
  {
    operator delete(*v89);
  }

  *(a1 + 7896) = v330;
  *v89 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 7904) = sub_5CBB30((a1 + 7472));
  sub_684D84(v291, &__p);
  *(a1 + 6152) = __p;
  if (*(a1 + 6183) < 0)
  {
    operator delete(*v287);
  }

  *v287 = v295;
  *(a1 + 6176) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 6184) = v297;
  v90 = (a1 + 6192);
  if (*(a1 + 6215) < 0)
  {
    operator delete(*v90);
  }

  *v90 = v298;
  *(a1 + 6208) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 6216) = v300;
  *(a1 + 6224) = v301;
  v91 = (a1 + 6232);
  if (*(a1 + 6255) < 0)
  {
    operator delete(*v91);
  }

  *v91 = v302;
  *(a1 + 6248) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v92 = (a1 + 6256);
  if (*(a1 + 6279) < 0)
  {
    operator delete(*v92);
  }

  *v92 = v304;
  *(a1 + 6272) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 6280) = v306;
  v93 = (a1 + 6288);
  if (*(a1 + 6311) < 0)
  {
    operator delete(*v93);
  }

  *v93 = v307;
  *(a1 + 6304) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 6312) = v309[0];
  *(a1 + 6321) = *(v309 + 9);
  v94 = *(a1 + 6344);
  if (v94)
  {
    *(a1 + 6352) = v94;
    operator delete(v94);
    *(a1 + 6344) = 0;
    *(a1 + 6352) = 0;
    *(a1 + 6360) = 0;
  }

  v95 = v310;
  *(a1 + 6360) = v311;
  *(a1 + 6344) = v95;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 6376) = v312;
  *(a1 + 6384) = v313;
  *(a1 + 6392) = v314;
  v96 = *(a1 + 6408);
  if (v96)
  {
    *(a1 + 6416) = v96;
    operator delete(v96);
    *(a1 + 6408) = 0;
    *(a1 + 6416) = 0;
    *(a1 + 6424) = 0;
  }

  *(a1 + 6408) = v315;
  *(a1 + 6424) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 6455) < 0)
  {
    operator delete(*v275);
  }

  *v275 = v317;
  *(a1 + 6448) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 6456) = v319;
  v97 = (a1 + 6464);
  if (*(a1 + 6487) < 0)
  {
    operator delete(*v97);
  }

  *v97 = v320;
  *(a1 + 6480) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 6488) = v322;
  *(a1 + 6496) = v323;
  v98 = (a1 + 6504);
  if (*(a1 + 6527) < 0)
  {
    operator delete(*v98);
  }

  *v98 = v324;
  *(a1 + 6520) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v99 = (a1 + 6528);
  if (*(a1 + 6551) < 0)
  {
    operator delete(*v99);
  }

  *(a1 + 6544) = v327;
  *v99 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 6552) = v328;
  v100 = (a1 + 6560);
  if (*(a1 + 6583) < 0)
  {
    operator delete(*v100);
  }

  *(a1 + 6576) = v330;
  *v100 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  if (sub_5CBB30((a1 + 6152)))
  {
    *(a1 + 6584) = 0;
    if (sub_6842D4(a1 + 6152))
    {
      if (*(v22 + 16) >= *(*(a1 + 6352) - 8))
      {
        v102 = *(*(a1 + 6352) - 8);
      }

      else
      {
        v102 = *(v22 + 16);
      }

      *(a1 + 6584) = sub_4D2544(v292, **(a1 + 6344), 0, v102, 1u, v101);
    }
  }

  sub_8B9A74(a1, &__p);
  *(a1 + 6592) = __p;
  if (*(a1 + 6623) < 0)
  {
    operator delete(*v286);
  }

  *v286 = v295;
  *(a1 + 6616) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 6624) = v297;
  v103 = (a1 + 6632);
  if (*(a1 + 6655) < 0)
  {
    operator delete(*v103);
  }

  *v103 = v298;
  *(a1 + 6648) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 6656) = v300;
  *(a1 + 6664) = v301;
  v104 = (a1 + 6672);
  if (*(a1 + 6695) < 0)
  {
    operator delete(*v104);
  }

  *v104 = v302;
  *(a1 + 6688) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v105 = (a1 + 6696);
  if (*(a1 + 6719) < 0)
  {
    operator delete(*v105);
  }

  *v105 = v304;
  *(a1 + 6712) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 6720) = v306;
  v106 = (a1 + 6728);
  if (*(a1 + 6751) < 0)
  {
    operator delete(*v106);
  }

  *v106 = v307;
  *(a1 + 6744) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 6752) = v309[0];
  *(a1 + 6761) = *(v309 + 9);
  v107 = *v276;
  if (*v276)
  {
    *(a1 + 6792) = v107;
    operator delete(v107);
    *v276 = 0;
    *(a1 + 6792) = 0;
    *(a1 + 6800) = 0;
  }

  v108 = v311;
  *(a1 + 6784) = v310;
  *(a1 + 6800) = v108;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 6816) = v312;
  *(a1 + 6824) = v313;
  *(a1 + 6832) = v314;
  v109 = *(a1 + 6848);
  if (v109)
  {
    *(a1 + 6856) = v109;
    operator delete(v109);
    *(a1 + 6848) = 0;
    *(a1 + 6856) = 0;
    *(a1 + 6864) = 0;
  }

  *(a1 + 6848) = v315;
  *(a1 + 6864) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 6895) < 0)
  {
    operator delete(*v274);
  }

  *v274 = v317;
  *(a1 + 6888) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 6896) = v319;
  v110 = (a1 + 6904);
  if (*(a1 + 6927) < 0)
  {
    operator delete(*v110);
  }

  *v110 = v320;
  *(a1 + 6920) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 6928) = v322;
  *(a1 + 6936) = v323;
  v111 = (a1 + 6944);
  if (*(a1 + 6967) < 0)
  {
    operator delete(*v111);
  }

  *v111 = v324;
  *(a1 + 6960) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v112 = (a1 + 6968);
  if (*(a1 + 6991) < 0)
  {
    operator delete(*v112);
  }

  *(a1 + 6984) = v327;
  *v112 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 6992) = v328;
  v113 = (a1 + 7000);
  if (*(a1 + 7023) < 0)
  {
    operator delete(*v113);
  }

  *(a1 + 7016) = v330;
  *v113 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 7024) = sub_5CBB30((a1 + 6592));
  sub_8B9F04(a1, &__p);
  *(a1 + 7032) = __p;
  if (*(a1 + 7063) < 0)
  {
    operator delete(*v285);
  }

  *v285 = v295;
  *(a1 + 7056) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 7064) = v297;
  v114 = (a1 + 7072);
  if (*(a1 + 7095) < 0)
  {
    operator delete(*v114);
  }

  *v114 = v298;
  *(a1 + 7088) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 7096) = v300;
  *(a1 + 7104) = v301;
  v115 = (a1 + 7112);
  if (*(a1 + 7135) < 0)
  {
    operator delete(*v115);
  }

  *v115 = v302;
  *(a1 + 7128) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v116 = (a1 + 7136);
  if (*(a1 + 7159) < 0)
  {
    operator delete(*v116);
  }

  *v116 = v304;
  *(a1 + 7152) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 7160) = v306;
  v117 = (a1 + 7168);
  if (*(a1 + 7191) < 0)
  {
    operator delete(*v117);
  }

  *v117 = v307;
  *(a1 + 7184) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 7192) = v309[0];
  *(a1 + 7201) = *(v309 + 9);
  v118 = *v272;
  if (*v272)
  {
    *(a1 + 7232) = v118;
    operator delete(v118);
    *v272 = 0;
    *(a1 + 7232) = 0;
    *(a1 + 7240) = 0;
  }

  v119 = v310;
  *(a1 + 7240) = v311;
  *(a1 + 7224) = v119;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 7256) = v312;
  *(a1 + 7264) = v313;
  *(a1 + 7272) = v314;
  v120 = *(a1 + 7288);
  if (v120)
  {
    *(a1 + 7296) = v120;
    operator delete(v120);
    *(a1 + 7288) = 0;
    *(a1 + 7296) = 0;
    *(a1 + 7304) = 0;
  }

  *(a1 + 7288) = v315;
  *(a1 + 7304) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 7335) < 0)
  {
    operator delete(*v273);
  }

  *v273 = v317;
  *(a1 + 7328) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 7336) = v319;
  v121 = (a1 + 7344);
  if (*(a1 + 7367) < 0)
  {
    operator delete(*v121);
  }

  *v121 = v320;
  *(a1 + 7360) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 7368) = v322;
  *(a1 + 7376) = v323;
  v122 = (a1 + 7384);
  if (*(a1 + 7407) < 0)
  {
    operator delete(*v122);
  }

  *v122 = v324;
  *(a1 + 7400) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v123 = (a1 + 7408);
  if (*(a1 + 7431) < 0)
  {
    operator delete(*v123);
  }

  *(a1 + 7424) = v327;
  *v123 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 7432) = v328;
  v124 = (a1 + 7440);
  if (*(a1 + 7463) < 0)
  {
    operator delete(*v124);
  }

  *(a1 + 7456) = v330;
  *v124 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 7464) = sub_5CBB30((a1 + 7032));
  v331[0] = sub_67A5A4(*v293, *(a1 + 5996));
  sub_684A3C(v291, v331, &__p);
  *(a1 + 8352) = __p;
  if (*(a1 + 8383) < 0)
  {
    operator delete(*v284);
  }

  *v284 = v295;
  *(a1 + 8376) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 8384) = v297;
  v125 = (a1 + 8392);
  if (*(a1 + 8415) < 0)
  {
    operator delete(*v125);
  }

  *v125 = v298;
  *(a1 + 8408) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 8416) = v300;
  *(a1 + 8424) = v301;
  v126 = (a1 + 8432);
  if (*(a1 + 8455) < 0)
  {
    operator delete(*v126);
  }

  *v126 = v302;
  *(a1 + 8448) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v127 = (a1 + 8456);
  if (*(a1 + 8479) < 0)
  {
    operator delete(*v127);
  }

  *v127 = v304;
  *(a1 + 8472) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 8480) = v306;
  v128 = (a1 + 8488);
  if (*(a1 + 8511) < 0)
  {
    operator delete(*v128);
  }

  *v128 = v307;
  *(a1 + 8504) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 8512) = v309[0];
  *(a1 + 8521) = *(v309 + 9);
  v129 = *v271;
  if (*v271)
  {
    *(a1 + 8552) = v129;
    operator delete(v129);
    *v271 = 0;
    *(a1 + 8552) = 0;
    *(a1 + 8560) = 0;
  }

  v130 = v311;
  *(a1 + 8544) = v310;
  *(a1 + 8560) = v130;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 8576) = v312;
  *(a1 + 8584) = v313;
  *(a1 + 8592) = v314;
  v131 = *(a1 + 8608);
  if (v131)
  {
    *(a1 + 8616) = v131;
    operator delete(v131);
    *(a1 + 8608) = 0;
    *(a1 + 8616) = 0;
    *(a1 + 8624) = 0;
  }

  *(a1 + 8608) = v315;
  *(a1 + 8624) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 8655) < 0)
  {
    operator delete(*v270);
  }

  *v270 = v317;
  *(a1 + 8648) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 8656) = v319;
  v132 = (a1 + 8664);
  if (*(a1 + 8687) < 0)
  {
    operator delete(*v132);
  }

  *v132 = v320;
  *(a1 + 8680) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 8688) = v322;
  *(a1 + 8696) = v323;
  v133 = (a1 + 8704);
  if (*(a1 + 8727) < 0)
  {
    operator delete(*v133);
  }

  *v133 = v324;
  *(a1 + 8720) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v134 = (a1 + 8728);
  if (*(a1 + 8751) < 0)
  {
    operator delete(*v134);
  }

  *(a1 + 8744) = v327;
  *v134 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 8752) = v328;
  v135 = (a1 + 8760);
  if (*(a1 + 8783) < 0)
  {
    operator delete(*v135);
  }

  *(a1 + 8776) = v330;
  *v135 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 8784) = sub_5CBB30((a1 + 8352));
  sub_8BA09C(a1, &__p);
  *(a1 + 8792) = __p;
  if (*(a1 + 8823) < 0)
  {
    operator delete(*v283);
  }

  *v283 = v295;
  *(a1 + 8816) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 8824) = v297;
  v136 = (a1 + 8832);
  if (*(a1 + 8855) < 0)
  {
    operator delete(*v136);
  }

  *v136 = v298;
  *(a1 + 8848) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 8856) = v300;
  *(a1 + 8864) = v301;
  v137 = (a1 + 8872);
  if (*(a1 + 8895) < 0)
  {
    operator delete(*v137);
  }

  *v137 = v302;
  *(a1 + 8888) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v138 = (a1 + 8896);
  if (*(a1 + 8919) < 0)
  {
    operator delete(*v138);
  }

  *v138 = v304;
  *(a1 + 8912) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 8920) = v306;
  v139 = (a1 + 8928);
  if (*(a1 + 8951) < 0)
  {
    operator delete(*v139);
  }

  *v139 = v307;
  *(a1 + 8944) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 8952) = v309[0];
  *(a1 + 8961) = *(v309 + 9);
  v140 = *v268;
  if (*v268)
  {
    *(a1 + 8992) = v140;
    operator delete(v140);
    *v268 = 0;
    *(a1 + 8992) = 0;
    *(a1 + 9000) = 0;
  }

  v141 = v310;
  *(a1 + 9000) = v311;
  *(a1 + 8984) = v141;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 9016) = v312;
  *(a1 + 9024) = v313;
  *(a1 + 9032) = v314;
  v142 = *(a1 + 9048);
  if (v142)
  {
    *(a1 + 9056) = v142;
    operator delete(v142);
    *(a1 + 9048) = 0;
    *(a1 + 9056) = 0;
    *(a1 + 9064) = 0;
  }

  *(a1 + 9048) = v315;
  *(a1 + 9064) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 9095) < 0)
  {
    operator delete(*v269);
  }

  *v269 = v317;
  *(v269 + 16) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 9096) = v319;
  v143 = (a1 + 9104);
  if (*(a1 + 9127) < 0)
  {
    operator delete(*v143);
  }

  *v143 = v320;
  *(a1 + 9120) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 9128) = v322;
  *(a1 + 9136) = v323;
  v144 = (a1 + 9144);
  if (*(a1 + 9167) < 0)
  {
    operator delete(*v144);
  }

  *v144 = v324;
  *(a1 + 9160) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v145 = (a1 + 9168);
  if (*(a1 + 9191) < 0)
  {
    operator delete(*v145);
  }

  *(a1 + 9184) = v327;
  *v145 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 9192) = v328;
  v146 = (a1 + 9200);
  if (*(a1 + 9223) < 0)
  {
    operator delete(*v146);
  }

  *(a1 + 9216) = v330;
  *v146 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 9224) = sub_5CBB30((a1 + 8792));
  if (*(a1 + 11906) == 1)
  {
    v147 = sub_67A2A4(*v293, *(a1 + 5996));
  }

  else
  {
    v148 = *v293;
    v149 = *(a1 + 5996);
    if (*(a1 + 11801) == 1)
    {
      v147 = sub_67A234(v148, v149);
    }

    else
    {
      v147 = sub_67A250(v148, v149);
    }
  }

  v150 = *v290;
  if (*v290 >= v147)
  {
    v150 = v147;
  }

  v331[0] = v150;
  sub_684A3C(v291, v331, &__p);
  *(a1 + 9232) = __p;
  if (*(a1 + 9263) < 0)
  {
    operator delete(*v282);
  }

  *v282 = v295;
  *(a1 + 9256) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 9264) = v297;
  v151 = (a1 + 9272);
  if (*(a1 + 9295) < 0)
  {
    operator delete(*v151);
  }

  *v151 = v298;
  *(a1 + 9288) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 9296) = v300;
  *(a1 + 9304) = v301;
  v152 = (a1 + 9312);
  if (*(a1 + 9335) < 0)
  {
    operator delete(*v152);
  }

  *v152 = v302;
  *(a1 + 9328) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v153 = (a1 + 9336);
  if (*(a1 + 9359) < 0)
  {
    operator delete(*v153);
  }

  *v153 = v304;
  *(a1 + 9352) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 9360) = v306;
  v154 = (a1 + 9368);
  if (*(a1 + 9391) < 0)
  {
    operator delete(*v154);
  }

  *v154 = v307;
  *(a1 + 9384) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 9392) = v309[0];
  *(a1 + 9401) = *(v309 + 9);
  v155 = *v267;
  if (*v267)
  {
    *(a1 + 9432) = v155;
    operator delete(v155);
    *v267 = 0;
    *(a1 + 9432) = 0;
    *(a1 + 9440) = 0;
  }

  v156 = v311;
  *(a1 + 9424) = v310;
  *(a1 + 9440) = v156;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 9456) = v312;
  *(a1 + 9464) = v313;
  *(a1 + 9472) = v314;
  v157 = *(a1 + 9488);
  if (v157)
  {
    *(a1 + 9496) = v157;
    operator delete(v157);
    *(a1 + 9488) = 0;
    *(a1 + 9496) = 0;
    *(a1 + 9504) = 0;
  }

  *(a1 + 9488) = v315;
  *(a1 + 9504) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 9535) < 0)
  {
    operator delete(*v266);
  }

  *v266 = v317;
  *(a1 + 9528) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 9536) = v319;
  v158 = (a1 + 9544);
  if (*(a1 + 9567) < 0)
  {
    operator delete(*v158);
  }

  *v158 = v320;
  *(a1 + 9560) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 9568) = v322;
  *(a1 + 9576) = v323;
  v159 = (a1 + 9584);
  if (*(a1 + 9607) < 0)
  {
    operator delete(*v159);
  }

  *v159 = v324;
  *(a1 + 9600) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v160 = (a1 + 9608);
  if (*(a1 + 9631) < 0)
  {
    operator delete(*v160);
  }

  *(a1 + 9624) = v327;
  *v160 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 9632) = v328;
  v161 = (a1 + 9640);
  if (*(a1 + 9663) < 0)
  {
    operator delete(*v161);
  }

  *(a1 + 9656) = v330;
  *v161 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 9664) = sub_5CBB30((a1 + 9232));
  sub_8BA234(a1, &__p);
  *(a1 + 9672) = __p;
  if (*(a1 + 9703) < 0)
  {
    operator delete(*v281);
  }

  *v281 = v295;
  *(a1 + 9696) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 9704) = v297;
  v162 = (a1 + 9712);
  if (*(a1 + 9735) < 0)
  {
    operator delete(*v162);
  }

  *v162 = v298;
  *(a1 + 9728) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 9736) = v300;
  *(a1 + 9744) = v301;
  v163 = (a1 + 9752);
  if (*(a1 + 9775) < 0)
  {
    operator delete(*v163);
  }

  *v163 = v302;
  *(a1 + 9768) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v164 = (a1 + 9776);
  if (*(a1 + 9799) < 0)
  {
    operator delete(*v164);
  }

  *v164 = v304;
  *(a1 + 9792) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 9800) = v306;
  v165 = (a1 + 9808);
  if (*(a1 + 9831) < 0)
  {
    operator delete(*v165);
  }

  *v165 = v307;
  *(a1 + 9824) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 9832) = v309[0];
  *(a1 + 9841) = *(v309 + 9);
  v166 = *v264;
  if (*v264)
  {
    *(a1 + 9872) = v166;
    operator delete(v166);
    *v264 = 0;
    *(a1 + 9872) = 0;
    *(a1 + 9880) = 0;
  }

  v167 = v310;
  *(a1 + 9880) = v311;
  *(a1 + 9864) = v167;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 9896) = v312;
  *(a1 + 9904) = v313;
  *(a1 + 9912) = v314;
  v168 = *(a1 + 9928);
  if (v168)
  {
    *(a1 + 9936) = v168;
    operator delete(v168);
    *(a1 + 9928) = 0;
    *(a1 + 9936) = 0;
    *(a1 + 9944) = 0;
  }

  *(a1 + 9928) = v315;
  *(a1 + 9944) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 9975) < 0)
  {
    operator delete(*v265);
  }

  *v265 = v317;
  *(v265 + 16) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 9976) = v319;
  v169 = (a1 + 9984);
  if (*(a1 + 10007) < 0)
  {
    operator delete(*v169);
  }

  *v169 = v320;
  *(a1 + 10000) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 10008) = v322;
  *(a1 + 10016) = v323;
  v170 = (a1 + 10024);
  if (*(a1 + 10047) < 0)
  {
    operator delete(*v170);
  }

  *v170 = v324;
  *(a1 + 10040) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v171 = (a1 + 10048);
  if (*(a1 + 10071) < 0)
  {
    operator delete(*v171);
  }

  *(a1 + 10064) = v327;
  *v171 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 10072) = v328;
  v172 = (a1 + 10080);
  if (*(a1 + 10103) < 0)
  {
    operator delete(*v172);
  }

  *(a1 + 10096) = v330;
  *v172 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 10104) = sub_5CBB30((a1 + 9672));
  sub_8BA3CC(a1, &__p);
  *(a1 + 10112) = __p;
  if (*(a1 + 10143) < 0)
  {
    operator delete(*v280);
  }

  *v280 = v295;
  *(a1 + 10136) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 10144) = v297;
  v173 = (a1 + 10152);
  if (*(a1 + 10175) < 0)
  {
    operator delete(*v173);
  }

  *v173 = v298;
  *(a1 + 10168) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 10176) = v300;
  *(a1 + 10184) = v301;
  v174 = (a1 + 10192);
  if (*(a1 + 10215) < 0)
  {
    operator delete(*v174);
  }

  *v174 = v302;
  *(a1 + 10208) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v175 = (a1 + 10216);
  if (*(a1 + 10239) < 0)
  {
    operator delete(*v175);
  }

  *v175 = v304;
  *(a1 + 10232) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 10240) = v306;
  v176 = (a1 + 10248);
  if (*(a1 + 10271) < 0)
  {
    operator delete(*v176);
  }

  *v176 = v307;
  *(a1 + 10264) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 10272) = v309[0];
  *(a1 + 10281) = *(v309 + 9);
  v177 = *v262;
  if (*v262)
  {
    *(a1 + 10312) = v177;
    operator delete(v177);
    *v262 = 0;
    *(a1 + 10312) = 0;
    *(a1 + 10320) = 0;
  }

  v178 = v311;
  *(a1 + 10304) = v310;
  *(a1 + 10320) = v178;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 10336) = v312;
  *(a1 + 10344) = v313;
  *(a1 + 10352) = v314;
  v179 = *(a1 + 10368);
  if (v179)
  {
    *(a1 + 10376) = v179;
    operator delete(v179);
    *(a1 + 10368) = 0;
    *(a1 + 10376) = 0;
    *(a1 + 10384) = 0;
  }

  *(a1 + 10368) = v315;
  *(a1 + 10384) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 10415) < 0)
  {
    operator delete(*v263);
  }

  *v263 = v317;
  *(a1 + 10408) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 10416) = v319;
  v180 = (a1 + 10424);
  if (*(a1 + 10447) < 0)
  {
    operator delete(*v180);
  }

  *v180 = v320;
  *(a1 + 10440) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 10448) = v322;
  *(a1 + 10456) = v323;
  v181 = (a1 + 10464);
  if (*(a1 + 10487) < 0)
  {
    operator delete(*v181);
  }

  *v181 = v324;
  *(a1 + 10480) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v182 = (a1 + 10488);
  if (*(a1 + 10511) < 0)
  {
    operator delete(*v182);
  }

  *(a1 + 10504) = v327;
  *v182 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 10512) = v328;
  v183 = (a1 + 10520);
  if (*(a1 + 10543) < 0)
  {
    operator delete(*v183);
  }

  *(a1 + 10536) = v330;
  *v183 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  *(a1 + 10544) = sub_5CBB30((a1 + 10112));
  v331[0] = sub_67A7D8(*v293, *(a1 + 5996));
  sub_6850A0(v291, v331, &__p);
  *(a1 + 10552) = __p;
  if (*(a1 + 10583) < 0)
  {
    operator delete(*v279);
  }

  *v279 = v295;
  *(a1 + 10576) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 10584) = v297;
  v184 = (a1 + 10592);
  if (*(a1 + 10615) < 0)
  {
    operator delete(*v184);
  }

  *v184 = v298;
  *(a1 + 10608) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 10616) = v300;
  *(a1 + 10624) = v301;
  v185 = (a1 + 10632);
  if (*(a1 + 10655) < 0)
  {
    operator delete(*v185);
  }

  *v185 = v302;
  *(a1 + 10648) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v186 = (a1 + 10656);
  if (*(a1 + 10679) < 0)
  {
    operator delete(*v186);
  }

  *v186 = v304;
  *(a1 + 10672) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 10680) = v306;
  v187 = (a1 + 10688);
  if (*(a1 + 10711) < 0)
  {
    operator delete(*v187);
  }

  *v187 = v307;
  *(a1 + 10704) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 10712) = v309[0];
  *(a1 + 10721) = *(v309 + 9);
  v188 = *v261;
  if (*v261)
  {
    *(a1 + 10752) = v188;
    operator delete(v188);
    *v261 = 0;
    *(a1 + 10752) = 0;
    *(a1 + 10760) = 0;
  }

  v189 = v311;
  *v261 = v310;
  *(a1 + 10760) = v189;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 10776) = v312;
  *(a1 + 10784) = v313;
  *(a1 + 10792) = v314;
  v190 = (a1 + 10808);
  v191 = *(a1 + 10808);
  if (v191)
  {
    *(a1 + 10816) = v191;
    operator delete(v191);
    *v190 = 0;
    *(a1 + 10816) = 0;
    *(a1 + 10824) = 0;
  }

  *v190 = v315;
  *(a1 + 10824) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 10855) < 0)
  {
    operator delete(*v260);
  }

  *v260 = v317;
  *(a1 + 10848) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 10856) = v319;
  v192 = (a1 + 10864);
  if (*(a1 + 10887) < 0)
  {
    operator delete(*v192);
  }

  *v192 = v320;
  *(a1 + 10880) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 10888) = v322;
  *(a1 + 10896) = v323;
  v193 = (a1 + 10904);
  if (*(a1 + 10927) < 0)
  {
    operator delete(*v193);
  }

  *v193 = v324;
  *(a1 + 10920) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v194 = (a1 + 10928);
  if (*(a1 + 10951) < 0)
  {
    operator delete(*v194);
  }

  *(a1 + 10944) = v327;
  *v194 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 10952) = v328;
  v195 = (a1 + 10960);
  if (*(a1 + 10983) < 0)
  {
    operator delete(*v195);
  }

  *(a1 + 10976) = v330;
  *v195 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  sub_8BA574(a1, &__p);
  *(a1 + 10984) = __p;
  if (*(a1 + 11015) < 0)
  {
    operator delete(*v259);
  }

  *v259 = v295;
  *(a1 + 11008) = v296;
  HIBYTE(v296) = 0;
  LOBYTE(v295) = 0;
  *(a1 + 11016) = v297;
  v196 = (a1 + 11024);
  if (*(a1 + 11047) < 0)
  {
    operator delete(*v196);
  }

  *v196 = v298;
  *(a1 + 11040) = v299;
  HIBYTE(v299) = 0;
  LOBYTE(v298) = 0;
  *(a1 + 11048) = v300;
  *(a1 + 11056) = v301;
  v197 = (a1 + 11064);
  if (*(a1 + 11087) < 0)
  {
    operator delete(*v197);
  }

  *v197 = v302;
  *(a1 + 11080) = v303;
  HIBYTE(v303) = 0;
  LOBYTE(v302) = 0;
  v198 = (a1 + 11088);
  if (*(a1 + 11111) < 0)
  {
    operator delete(*v198);
  }

  *v198 = v304;
  *(a1 + 11104) = v305;
  HIBYTE(v305) = 0;
  LOBYTE(v304) = 0;
  *(a1 + 11112) = v306;
  v199 = (a1 + 11120);
  if (*(a1 + 11143) < 0)
  {
    operator delete(*v199);
  }

  *v199 = v307;
  *(a1 + 11136) = v308;
  HIBYTE(v308) = 0;
  LOBYTE(v307) = 0;
  *(a1 + 11144) = v309[0];
  *(a1 + 11153) = *(v309 + 9);
  v200 = *v257;
  if (*v257)
  {
    *(a1 + 11184) = v200;
    operator delete(v200);
    *v257 = 0;
    *(a1 + 11184) = 0;
    *(a1 + 11192) = 0;
  }

  v201 = v311;
  *v257 = v310;
  *(a1 + 11192) = v201;
  *&v311 = 0;
  v310 = 0uLL;
  *(a1 + 11208) = v312;
  *(a1 + 11216) = v313;
  *(a1 + 11224) = v314;
  v202 = (a1 + 11240);
  v203 = *(a1 + 11240);
  if (v203)
  {
    *(a1 + 11248) = v203;
    operator delete(v203);
    *v202 = 0;
    *(a1 + 11248) = 0;
    *(a1 + 11256) = 0;
  }

  *v202 = v315;
  *(a1 + 11256) = v316;
  v316 = 0;
  v315 = 0uLL;
  if (*(a1 + 11287) < 0)
  {
    operator delete(*v258);
  }

  *v258 = v317;
  *(v258 + 16) = v318;
  HIBYTE(v318) = 0;
  LOBYTE(v317) = 0;
  *(a1 + 11288) = v319;
  v204 = (a1 + 11296);
  if (*(a1 + 11319) < 0)
  {
    operator delete(*v204);
  }

  *v204 = v320;
  *(a1 + 11312) = v321;
  HIBYTE(v321) = 0;
  LOBYTE(v320) = 0;
  *(a1 + 11320) = v322;
  *(a1 + 11328) = v323;
  v205 = (a1 + 11336);
  if (*(a1 + 11359) < 0)
  {
    operator delete(*v205);
  }

  *v205 = v324;
  *(a1 + 11352) = v325;
  HIBYTE(v325) = 0;
  LOBYTE(v324) = 0;
  v206 = (a1 + 11360);
  if (*(a1 + 11383) < 0)
  {
    operator delete(*v206);
  }

  *(a1 + 11376) = v327;
  *v206 = v326;
  HIBYTE(v327) = 0;
  LOBYTE(v326) = 0;
  *(a1 + 11384) = v328;
  v207 = (a1 + 11392);
  if (*(a1 + 11415) < 0)
  {
    operator delete(*v207);
  }

  *(a1 + 11408) = v330;
  *v207 = v329;
  HIBYTE(v330) = 0;
  LOBYTE(v329) = 0;
  sub_5941F8(&__p);
  if (*(a1 + 11800) == 1)
  {
    sub_912CAC(a1 + 2576, 1, 0, &__p);
    if (!sub_6810A0(&__p))
    {
      *(a1 + 11801) = 1;
    }

    v208 = *(&v302 + 1);
    if (*(&v302 + 1) && !atomic_fetch_add((*(&v302 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v208->__on_zero_shared)(v208);
      std::__shared_weak_count::__release_weak(v208);
    }

    v209 = v298;
    if (v298)
    {
      do
      {
        v210 = *v209;
        sub_55F7FC((v209 + 2));
        operator delete(v209);
        v209 = v210;
      }

      while (v210);
    }

    v211 = v296;
    v296 = 0;
    if (v211)
    {
      operator delete(v211);
    }

    v212 = __p;
    if (__p)
    {
      v213 = v295;
      v214 = __p;
      if (v295 != __p)
      {
        do
        {
          v215 = *(v213 - 1);
          v213 -= 3;
          if (v215 < 0)
          {
            operator delete(*v213);
          }
        }

        while (v213 != v212);
        v214 = __p;
      }

      *&v295 = v212;
      operator delete(v214);
    }
  }

  sub_898BD0(a1);
  if (*(a1 + 2555) == 1 && *(a1 + 11800) == 1)
  {
    v216 = *(a1 + 11801) ^ 1;
  }

  else
  {
    v216 = 0;
  }

  *(a1 + 11906) = v216 & 1;
  if (*(*v293 + 2416) == 1 && *(a1 + 2520) == 3 || *(*v293 + 2418) != 1 || (*(a1 + 5994) & 1) != 0 || (*v14 & 1) != 0 || *(a1 + 11804) != 1)
  {
    goto LABEL_412;
  }

  if (sub_683A0C(v288))
  {
    v217 = *(a1 + 11841);
    goto LABEL_413;
  }

  if (!sub_445A90(v288))
  {
LABEL_412:
    v217 = 0;
  }

  else
  {
    v217 = *(a1 + 11842);
  }

LABEL_413:
  *(a1 + 11910) = v217 & 1;
  v218 = sub_898D2C(a1);
  *(a1 + 11912) = v218;
  if (v218)
  {
    v219 = *(a1 + 8352) + sub_67A4C4(*v293, *(a1 + 5996));
    if (v219 >= *v290)
    {
      v219 = *v290;
    }

    if (*(a1 + 9224) == 1 && *(a1 + 8792) < v219)
    {
      v219 = *(a1 + 8792);
    }

    *(a1 + 11888) = v219;
  }

  *(a1 + 11916) = sub_898E58(a1);
  *(a1 + 11913) = sub_8BA708(a1);
  v220 = sub_67A4E0(*v293, *(a1 + 5996));
  if (*(a1 + 11912))
  {
    v221 = 8352;
    goto LABEL_424;
  }

  if (*(a1 + 11913) == 1)
  {
    v221 = 9672;
LABEL_424:
    *(a1 + 11918) = *(a1 + v221) < v220;
    if (*(a1 + 11805) != 1)
    {
      goto LABEL_433;
    }

    goto LABEL_427;
  }

  *(a1 + 11918) = 0;
  if (*(a1 + 11805) != 1)
  {
    goto LABEL_433;
  }

LABEL_427:
  if ((*(a1 + 11804) & 1) == 0 && (*(a1 + 11913) & 1) == 0 && sub_5CBB30((a1 + 10552)))
  {
    v222 = sub_5CBB30((a1 + 10984));
    v223 = (a1 + 10984);
    if (!v222)
    {
      v223 = (a1 + 6000);
    }

    v224 = *v223;
    v225 = v224 >= *(a1 + 10552) + sub_67A4FC(*v293, *(a1 + 5996));
    goto LABEL_434;
  }

LABEL_433:
  v225 = 0;
LABEL_434:
  *(a1 + 11914) = v225;
  v226 = sub_8BA8A4(a1);
  *(a1 + 11908) = v226;
  if (v226)
  {
    if (*(a1 + 6773) == 1)
    {
      LOBYTE(v227) = *(a1 + 5995);
    }

    else
    {
      LOBYTE(v227) = 1;
    }

    goto LABEL_449;
  }

  v228 = *(a1 + 11416);
  v229 = *(a1 + 11424);
  if (v228 == v229)
  {
    goto LABEL_445;
  }

  v230 = v229 - v228;
  v231 = 0x4FA4FA4FA4FA4FA5 * (v230 >> 3) + 1;
  v232 = v230 - 360;
  do
  {
    v233 = v232;
    v234 = *v289;
    if (v231 == 2)
    {
      v227 = sub_6C7CC8(v234);
      if (!v227)
      {
        goto LABEL_449;
      }

      goto LABEL_448;
    }

    v235 = sub_6C7D08(v234 + v232);
    --v231;
    v232 = v233 - 360;
  }

  while (!v235);
  v236 = sub_6C7CC8(*v289 + v233);
  if (v231)
  {
    v237 = v236;
  }

  else
  {
    v237 = 0;
  }

  if (v237)
  {
LABEL_448:
    LOBYTE(v227) = sub_6C7CD8(*v289 + v233);
    goto LABEL_449;
  }

LABEL_445:
  LOBYTE(v227) = 0;
LABEL_449:
  *(a1 + 11909) = v227 & 1;
  *(a1 + 11864) = sub_899434(a1);
  if (*(a1 + 2554))
  {
    if (*(a1 + 2554) == 3)
    {
      v238 = sub_8C4FD0(a1);
    }

    else
    {
      v238 = sub_89F42C(a1);
    }
  }

  else
  {
    v238 = sub_8C5390(a1);
  }

  *(a1 + 11872) = v238;
  if (*(a1 + 11913) == 1)
  {
    v239 = *(a1 + 9672) + sub_67A4C4(*v293, *(a1 + 5996));
    if (*v290 < v239)
    {
      v239 = *v290;
    }

    if (*(a1 + 10544) == 1 && *(a1 + 10112) < v239)
    {
      v239 = *(a1 + 10112);
    }

    *(a1 + 11896) = v239;
  }

  v240 = sub_89961C(a1);
  *(a1 + 11911) = v240;
  if (v240)
  {
    v241 = sub_67A5A4(*v293, *(a1 + 5996));
    v242 = *v290;
    if (*v290 >= v241)
    {
      v242 = v241;
    }

    if (*(a1 + 8784) == 1)
    {
      v242 = *(a1 + 8352);
    }

    *(a1 + 11880) = v242;
  }

  v243 = sub_67A2DC(*v293, *(a1 + 5996));
  v244 = sub_67A2C0(*v293, *(a1 + 5996));
  if (*(a1 + 11906) == 1 && *v255 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(a1 + 11907) = *v255 > v244 + v243;
    if ((*(a1 + 11992) & 1) == 0)
    {
      goto LABEL_478;
    }

    goto LABEL_481;
  }

  if (*(a1 + 11913))
  {
    *(a1 + 11907) = 1;
    if ((*(a1 + 11992) & 1) == 0)
    {
      goto LABEL_478;
    }

LABEL_481:
    v245 = 0;
  }

  else
  {
    if (*(a1 + 11918) != 1)
    {
      *(a1 + 11907) = 0;
      if ((*(a1 + 11992) & 1) == 0)
      {
        goto LABEL_478;
      }

      goto LABEL_481;
    }

    *(a1 + 11907) = *(a1 + 11912) & 1;
    if (*(a1 + 11992))
    {
      goto LABEL_481;
    }

LABEL_478:
    if (*(a1 + 2555) == 1)
    {
      v245 = sub_8A5A4C(a1);
    }

    else
    {
      if (*(a1 + 2559))
      {
        goto LABEL_481;
      }

      v251 = *(a1 + 6000);
      v252 = sub_89F42C(a1);
      if (v251 < 0)
      {
        v253 = -50;
      }

      else
      {
        v253 = 50;
      }

      if (v252 < 0)
      {
        v254 = -50;
      }

      else
      {
        v254 = 50;
      }

      v245 = v251 / 100 + (((5243 * (v253 + v251 % 100)) >> 19) + ((5243 * (v253 + v251 % 100)) >> 31)) > v252 / 100 + (((5243 * (v254 + v252 % 100)) >> 19) + ((5243 * (v254 + v252 % 100)) >> 31));
    }
  }

  *(a1 + 11904) = v245;
  *(a1 + 11905) = sub_8997B4(a1);
  *(a1 + 2557) = (*(*a1 + 104))(a1);
  *(a1 + 11915) = sub_8BAB68(a1, v292, a5);
  *(a1 + 2558) = (*(*a1 + 16))(a1, v292, a5);
  sub_899BD8(a1);
  v246 = sub_69AE30(v292);
  v247 = *v246;
  *(a1 + 11932) = *(v246 + 8);
  *(a1 + 11924) = v247;
  v248 = sub_69AE3C(v292);
  v249 = *v248;
  *(a1 + 11944) = *(v248 + 8);
  *(a1 + 11936) = v249;
  *(a1 + 11917) = sub_8BACDC(a1, v22);
  *(a1 + 12000) = *(v22 + 96);
  *(a1 + 12008) = *(v22 + 120);
  return a1;
}

void sub_8B95F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49, uint64_t a50, uint64_t a51, void **a52)
{
  v52[1476] = off_26696C8;
  if (*(v53 + 1736) < 0)
  {
    operator delete(*a13);
  }

  sub_5C3168((v52 + 1430));
  sub_5ED5A8(a49);
  sub_5941F8(a10);
  sub_5941F8((v52 + 1319));
  sub_5941F8((v52 + 1264));
  sub_5941F8((v52 + 1209));
  sub_5941F8((v52 + 1154));
  sub_5941F8((v52 + 1099));
  sub_5941F8((v52 + 1044));
  sub_5941F8((v52 + 989));
  sub_5941F8((v52 + 934));
  sub_5941F8((v52 + 879));
  sub_5941F8((v52 + 824));
  sub_5941F8((v52 + 769));
  sub_5940E0(a52);
  v55 = v52[745];
  if (v55)
  {
    v52[746] = v55;
    operator delete(v55);
  }

  sub_80BB28((v52 + 322));
  *v52 = off_266B730;
  sub_5970B4((v52 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_8B9A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = sub_67A6A0(*(a1 + 2536), *(a1 + 5996));
  sub_6844C8((a1 + 6008), &v118, 1, &v81);
  if (v96[20] == 1)
  {
    *a2 = v81;
    *(a2 + 8) = v82;
    v82 = 0uLL;
    v4 = v84;
    v5 = v86;
    *(a2 + 24) = v83;
    *(a2 + 32) = v4;
    *(a2 + 40) = v85;
    v86 = 0;
    v83 = 0;
    v85 = 0uLL;
    v6 = v87;
    *(a2 + 56) = v5;
    *(a2 + 64) = v6;
    *(a2 + 72) = v88;
    v7 = v89;
    v8 = v92;
    *(a2 + 96) = v90;
    *(a2 + 80) = v7;
    v89 = 0uLL;
    v9 = v91;
    *(a2 + 120) = v8;
    *(a2 + 104) = v9;
    v90 = 0;
    v91 = 0uLL;
    v92 = 0;
    *(a2 + 128) = v93;
    v10 = v94;
    *(a2 + 152) = v95;
    *(a2 + 136) = v10;
    v94 = 0uLL;
    *(a2 + 169) = *&v96[9];
    v11 = v97;
    *(a2 + 160) = *v96;
    *(a2 + 192) = v11;
    v12 = v101;
    *(a2 + 208) = v98;
    v95 = 0;
    v97 = 0uLL;
    v98 = 0;
    v13 = v99;
    v14 = v100;
    *(a2 + 248) = v12;
    *(a2 + 232) = v14;
    *(a2 + 216) = v13;
    *(a2 + 256) = v102;
    v15 = v105;
    *(a2 + 272) = v103;
    v102 = 0uLL;
    *(a2 + 280) = v104;
    v103 = 0;
    v104 = 0uLL;
    v105 = 0;
    v16 = v106;
    v17 = v108;
    *(a2 + 296) = v15;
    *(a2 + 304) = v16;
    *(a2 + 312) = v107;
    v107 = 0uLL;
    v18 = v109;
    *(a2 + 328) = v17;
    *(a2 + 336) = v18;
    *(a2 + 344) = v110;
    v19 = v111;
    v20 = v114;
    *(a2 + 368) = v112;
    *(a2 + 352) = v19;
    v108 = 0;
    v111 = 0uLL;
    v112 = 0;
    v21 = v113;
    *(a2 + 392) = v20;
    *(a2 + 376) = v21;
    v113 = 0uLL;
    *(a2 + 400) = v115;
    v22 = v116;
    *(a2 + 424) = v117;
    *(a2 + 408) = v22;
    v114 = 0;
    v116 = 0uLL;
    v117 = 0;
  }

  else
  {
    v80 = sub_67A684(*(a1 + 2536), *(a1 + 5996));
    sub_6844C8((a1 + 6008), &v80, 1, &v43);
    if (v96[21] == 1)
    {
      *a2 = v43;
      *(a2 + 8) = v44;
      v44 = 0uLL;
      v23 = v46;
      *(a2 + 24) = v45;
      *(a2 + 32) = v23;
      *(a2 + 40) = v47;
      v24 = v48;
      v25 = v49;
      v48 = 0;
      v45 = 0;
      v47 = 0uLL;
      *(a2 + 56) = v24;
      *(a2 + 64) = v25;
      *(a2 + 72) = v50;
      v26 = v51;
      *(a2 + 96) = v52;
      *(a2 + 80) = v26;
      v51 = 0uLL;
      v27 = v53;
      *(a2 + 120) = v54;
      *(a2 + 104) = v27;
      v52 = 0;
      v53 = 0uLL;
      v54 = 0;
      *(a2 + 128) = v55;
      v28 = v56;
      v29 = v60;
      *(a2 + 152) = v57;
      *(a2 + 136) = v28;
      v56 = 0uLL;
      v30 = v58[0];
      *(a2 + 169) = *(v58 + 9);
      *(a2 + 160) = v30;
      *(a2 + 192) = v59;
      *(a2 + 208) = v29;
      v57 = 0;
      v59 = 0uLL;
      v60 = 0;
      v31 = v61;
      v32 = v62;
      v33 = v65;
      *(a2 + 248) = v63;
      *(a2 + 232) = v32;
      *(a2 + 216) = v31;
      *(a2 + 256) = v64;
      *(a2 + 272) = v33;
      v64 = 0uLL;
      *(a2 + 280) = v66;
      v65 = 0;
      v66 = 0uLL;
      v34 = v67;
      v35 = v68;
      v67 = 0;
      *(a2 + 296) = v34;
      *(a2 + 304) = v35;
      *(a2 + 312) = v69;
      v69 = 0uLL;
      v36 = v71;
      *(a2 + 328) = v70;
      *(a2 + 336) = v36;
      *(a2 + 344) = v72;
      v37 = v73;
      v38 = v76;
      *(a2 + 368) = v74;
      *(a2 + 352) = v37;
      v70 = 0;
      v73 = 0uLL;
      v39 = v75;
      *(a2 + 392) = v38;
      *(a2 + 376) = v39;
      v76 = 0;
      v74 = 0;
      v75 = 0uLL;
      *(a2 + 400) = v77;
      v40 = v78;
      *(a2 + 424) = v79;
      *(a2 + 408) = v40;
      v78 = 0uLL;
      v79 = 0;
    }

    else
    {
      v42 = sub_67A6BC(*(a1 + 2536), *(a1 + 5996));
      sub_6844C8((a1 + 6008), &v42, 1, a2);
    }

    sub_5941F8(&v43);
  }

  return sub_5941F8(&v81);
}

void sub_8B9EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_5941F8(&a11);
  sub_5941F8(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_8B9F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 7024))
  {
    v5 = sub_67A7A0(*(a1 + 2536), *(a1 + 5996));
    return sub_6844F4((a1 + 6008), &v5, (a1 + 6592), 0, a2);
  }

  else
  {
    *(a2 + 8) = 0u;
    *(a2 + 424) = 0;
    *(a2 + 248) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *a2 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a2 + 8);
    *(a2 + 168) = -1;
    *(a2 + 252) = 0;
    *(a2 + 192) = 0;
    *(a2 + 160) = -1;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 184) = 0;
    *(a2 + 176) = 0;
    *(a2 + 216) = -1;
    *(a2 + 224) = -1;
    *(a2 + 232) = 0x7FFFFFFF;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 268) = 0;
    *(a2 + 260) = 0;
    *(a2 + 276) = 0;
    return sub_734CE0(a2 + 280);
  }
}

void sub_8BA050(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_8BA09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8784))
  {
    v5 = sub_67A5A4(*(a1 + 2536), *(a1 + 5996));
    return sub_6847A0(a1 + 6008, &v5, (a1 + 8352), a2);
  }

  else
  {
    *(a2 + 8) = 0u;
    *(a2 + 424) = 0;
    *(a2 + 248) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *a2 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a2 + 8);
    *(a2 + 168) = -1;
    *(a2 + 252) = 0;
    *(a2 + 192) = 0;
    *(a2 + 160) = -1;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 184) = 0;
    *(a2 + 176) = 0;
    *(a2 + 216) = -1;
    *(a2 + 224) = -1;
    *(a2 + 232) = 0x7FFFFFFF;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 268) = 0;
    *(a2 + 260) = 0;
    *(a2 + 276) = 0;
    return sub_734CE0(a2 + 280);
  }
}

void sub_8BA1E8(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_8BA234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 11804) == 1)
  {
    *(a2 + 8) = 0u;
    *(a2 + 424) = 0;
    *(a2 + 248) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *a2 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a2 + 8);
    *(a2 + 168) = -1;
    *(a2 + 252) = 0;
    *(a2 + 192) = 0;
    *(a2 + 160) = -1;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 184) = 0;
    *(a2 + 176) = 0;
    *(a2 + 216) = -1;
    *(a2 + 224) = -1;
    *(a2 + 232) = 0x7FFFFFFF;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 268) = 0;
    *(a2 + 260) = 0;
    *(a2 + 276) = 0;
    return sub_734CE0(a2 + 280);
  }

  else
  {
    v5 = sub_67A784(*(a1 + 2536), *(a1 + 5996));
    v6 = 0;
    v7 = v5;
    return sub_684A64(a1 + 6008, &v7, &v6, a2);
  }
}

void sub_8BA380(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_8BA3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 10104))
  {
    v7 = *(a1 + 9672);
    v6 = sub_67A5A4(*(a1 + 2536), *(a1 + 5996));
    v4 = sub_8A5C2C(*(a1 + 11976), *(a1 + 9840));
    return sub_8C5744(a1, v4, &v6, &v7, a2);
  }

  else
  {
    *(a2 + 8) = 0u;
    *(a2 + 424) = 0;
    *(a2 + 248) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *a2 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a2 + 8);
    *(a2 + 168) = -1;
    *(a2 + 252) = 0;
    *(a2 + 192) = 0;
    *(a2 + 160) = -1;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 184) = 0;
    *(a2 + 176) = 0;
    *(a2 + 216) = -1;
    *(a2 + 224) = -1;
    *(a2 + 232) = 0x7FFFFFFF;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 268) = 0;
    *(a2 + 260) = 0;
    *(a2 + 276) = 0;
    return sub_734CE0(a2 + 280);
  }
}

void sub_8BA528(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_8BA574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_5CBB30((a1 + 10552)))
  {
    v5 = sub_67A7BC(*(a1 + 2536), *(a1 + 5996));
    return sub_684F00((a1 + 6008), &v5, (a1 + 10552), a2);
  }

  else
  {
    *(a2 + 8) = 0u;
    *(a2 + 424) = 0;
    *(a2 + 248) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 408) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *a2 = 0x7FFFFFFFFFFFFFFFLL;
    sub_734CE0(a2 + 8);
    *(a2 + 168) = -1;
    *(a2 + 252) = 0;
    *(a2 + 192) = 0;
    *(a2 + 160) = -1;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 184) = 0;
    *(a2 + 176) = 0;
    *(a2 + 216) = -1;
    *(a2 + 224) = -1;
    *(a2 + 232) = 0x7FFFFFFF;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 268) = 0;
    *(a2 + 260) = 0;
    *(a2 + 276) = 0;
    return sub_734CE0(a2 + 280);
  }
}

void sub_8BA6BC(_Unwind_Exception *a1)
{
  v5 = v1[32];
  if (v5)
  {
    v1[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[25] = v6;
  operator delete(v6);
  sub_3E5388(v2);
  _Unwind_Resume(a1);
}

BOOL sub_8BA708(uint64_t a1)
{
  v1 = *(a1 + 2536);
  if (*(v1 + 2416) == 1 && *(a1 + 2520) == 3)
  {
    return 0;
  }

  if (*(v1 + 2418) != 1)
  {
    return 0;
  }

  v3 = (a1 + 5992);
  if (*(a1 + 5994) & 1) != 0 || (*v3)
  {
    return 0;
  }

  result = sub_684288(a1 + 9672);
  if (result)
  {
    v5 = sub_8A5C2C(*(a1 + 11976), *(a1 + 9840));
    if (sub_683A0C(v5))
    {
      if ((*(a1 + 11847) & 1) == 0)
      {
        return 0;
      }

LABEL_15:
      if ((*(a1 + 11804) & 1) == 0 && *(a1 + 10104) == 1 && (*(a1 + 11916) & 1) == 0)
      {
        v6 = *(a1 + 9672);
        v11 = v6;
        v7 = 6000;
        if (*(a1 + 10544))
        {
          v7 = 10112;
        }

        v8 = *(a1 + v7);
        if (v8 >= v6 + sub_67A4E0(*(a1 + 2536), v3[4]))
        {
          sub_6844C8((a1 + 6008), &v11, 1, v10);
          v9 = !sub_5CBB30(v10);
          sub_5941F8(v10);
          return v9;
        }
      }

      return 0;
    }

    result = sub_445A90(v5);
    if (result)
    {
      if (*(a1 + 11848) != 1)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  return result;
}

void sub_8BA890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5941F8(va);
  _Unwind_Resume(a1);
}

BOOL sub_8BA8A4(uint64_t a1)
{
  v1 = (a1 + 11804);
  if (*(a1 + 11807) != 1 || *(a1 + 2555) != 1 || (*(a1 + 5992) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if ((*(a1 + 5994) & 1) == 0 && *(a1 + 2520) != 3)
  {
    if (*v1 & 1) != 0 || (v1[110] & 1) != 0 || *(a1 + 7024) != 1 || (v1[112] & 1) != 0 || *(a1 + 6592) < sub_67A6D8(*(a1 + 2536), *(a1 + 5996), a1 + 6592) || (v1[109])
    {
      return 0;
    }

    sub_684C04((a1 + 6008), v12);
    if ((!sub_5CBB30(v12) || (v4 = sub_67A4FC(*(a1 + 2536), *(a1 + 5996)), v12[0] >= *(a1 + 6592) + v4)) && ((*(a1 + 6769) & 1) != 0 || (*(a1 + 6772) & 1) != 0 || *(a1 + 6773) == 1) && (sub_684280(a1 + 6592) || (*(a1 + 6772) & 1) != 0 || (*(a1 + 6773) & 1) != 0 || *(a1 + 6774) == 1) && (*(a1 + 11416) == *(a1 + 11424) || (v5 = sub_8A4C34(a1), v5 == -1) || (v6 = *(a1 + 11416), v7 = sub_67A534(*(a1 + 2536), *(a1 + 5996), a1 + 6592), sub_6C7D3C(v6 + 360 * v5) >= *(a1 + 6592) + v7)))
    {
      sub_6844C8((a1 + 6008), (a1 + 6592), 0, v11);
      if (sub_5CBB30(v11))
      {
        v8 = 0;
      }

      else
      {
        v9 = 6000;
        if (*(a1 + 7464))
        {
          v9 = 7032;
        }

        v10 = *(a1 + v9);
        v8 = v10 >= *(a1 + 6592) + sub_67A4FC(*(a1 + 2536), *(a1 + 5996));
      }

      sub_5941F8(v11);
    }

    else
    {
      v8 = 0;
    }

    sub_5941F8(v12);
    return v8;
  }

  return result;
}

void sub_8BAAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_5941F8(&a9);
  sub_5941F8(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_8BAB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_8EF098(a1 + 2576))
  {
    return 1;
  }

  v7 = *(a2 + 1104);
  if (0x3795876FF3795877 * ((*(a2 + 1112) - v7) >> 3) - 1 == a3)
  {
    return 0;
  }

  result = 0;
  v8 = v7 + 2616 * a3;
  v9 = *(v8 + 160);
  if ((v9 - 89 > 7 || v9 == 90) && (v9 > 0x18 || ((1 << v9) & 0x1C10000) == 0))
  {
    v12 = *(v8 + 384);
    result = 1;
    if (v12 > 5 || ((1 << v12) & 0x34) == 0)
    {
      v14 = *(v8 + 3000);
      if (v14 > 5 || ((1 << v14) & 0x34) == 0)
      {
        if (v9 - 41 > 0x12 || (*(v8 + 2776) - 41) >= 0x13)
        {
          v16 = *(a1 + 2536);
          if (*(v8 + 1029) == 1)
          {
            v17 = *(v16 + 48);
          }

          else
          {
            v17 = sub_67A908(v16, *(v8 + 2057));
          }

          return (*(v8 + 3624) <= v17) & (*(v8 + 5033) ^ 1u);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_8BACDC(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 2536) + 2545) != 1)
  {
    return 0;
  }

  sub_684350((a1 + 6008), v8);
  v4 = sub_683CD4(v8);
  if (v20 < 0)
  {
    operator delete(v19);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_4:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    operator delete(v11);
    v5 = __p;
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  operator delete(v13);
  if (v12 < 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  v5 = __p;
  if (__p)
  {
LABEL_8:
    v10 = v5;
    operator delete(v5);
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2520);
  if (v6 > 0x3F || ((1 << v6) & 0xF000000018000016) == 0 || (*(a1 + 2560) & 1) != 0)
  {
    return 0;
  }

  if (*(a2 + 704) & 1) != 0 || *(a2 + 712) != *(a2 + 720) || (*(a2 + 705) & 1) != 0 || (*(a1 + 11908) & 1) != 0 || (*(a1 + 11909) & 1) != 0 || (*(a1 + 11910) & 1) != 0 || (*(a1 + 11911) & 1) != 0 || (*(a1 + 11912) & 1) != 0 || (*(a1 + 11913) & 1) != 0 || (*(a1 + 11914))
  {
    return 0;
  }

  return (*(a1 + 11916) ^ 1) & 1;
}

void sub_8BAEA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_841FCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8BAEBC()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 11915) != 1 || *(v0 + 2558) != 1)
  {
    return 0;
  }

  v3 = v1;
  v4 = *(v0 + 2536);
  if (v4[2326] != 1)
  {
    return 1;
  }

  sub_8B5B14(v7, v4, *(v0 + 2544), v3, v2 + 1, *(v0 + 11996) - 1);
  if (v7[11913] & 1) != 0 || (v7[11912] & 1) != 0 || (v7[11908])
  {
    v5 = 0;
  }

  else
  {
    v5 = v7[11914] ^ 1;
  }

  sub_80B958(v7);
  return v5 & 1;
}

void sub_8BAFBC(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[2556] == 1)
  {
    (*(*a1 + 48))(&v31, a1);
    v4 = a2[1];
    if (v4 >= a2[2])
    {
      v6 = sub_7A5C30(a2, &v31);
    }

    else
    {
      sub_7A5A3C(v4, &v31);
      v6 = v5 + 1120;
    }

    a2[1] = v6;
    sub_5938B0(&v31);
  }

  if (a1[2557] == 1)
  {
    sub_8BB380(a1, &v31);
    v7 = v31;
    v8 = v32;
    if (v31 != v32)
    {
      v9 = a2[1];
      do
      {
        if (v9 < a2[2])
        {
          sub_7A5A3C(v9, v7);
          v9 = v10 + 1120;
        }

        else
        {
          v9 = sub_7A5C30(a2, v7);
        }

        a2[1] = v9;
        v7 += 1120;
      }

      while (v7 != v8);
      v7 = v31;
    }

    if (v7)
    {
      v11 = v32;
      v12 = v7;
      if (v32 != v7)
      {
        do
        {
          v11 = sub_5938B0((v11 - 140));
        }

        while (v11 != v7);
        v12 = v31;
      }

      v32 = v7;
      operator delete(v12);
    }
  }

  (*(*a1 + 56))(&v31, a1);
  v13 = a2[1];
  if (v13 >= a2[2])
  {
    v15 = sub_7A5C30(a2, &v31);
  }

  else
  {
    sub_7A5A3C(v13, &v31);
    v15 = v14 + 1120;
  }

  a2[1] = v15;
  sub_5938B0(&v31);
  if (a1[11909] == 1)
  {
    sub_8BB6B4(a1, &v31);
    v16 = a2[1];
    if (v16 >= a2[2])
    {
      v18 = sub_7A5C30(a2, &v31);
    }

    else
    {
      sub_7A5A3C(v16, &v31);
      v18 = v17 + 1120;
    }

    a2[1] = v18;
    sub_5938B0(&v31);
  }

  sub_8BB93C(a1, &__p);
  v19 = __p;
  v20 = v30;
  if (__p != v30)
  {
    v21 = a2[1];
    do
    {
      if (v21 < a2[2])
      {
        sub_7A5A3C(v21, v19);
        v21 = v22 + 1120;
      }

      else
      {
        v21 = sub_7A5C30(a2, v19);
      }

      a2[1] = v21;
      v19 += 1120;
    }

    while (v19 != v20);
  }

  sub_8BBD24(a1, a2);
  sub_83BC3C(a1, &v31);
  v23 = a2[1];
  if (v23 >= a2[2])
  {
    v25 = sub_7A5C30(a2, &v31);
  }

  else
  {
    sub_7A5A3C(v23, &v31);
    v25 = v24 + 1120;
  }

  a2[1] = v25;
  sub_5938B0(&v31);
  v26 = __p;
  if (__p)
  {
    v27 = v30;
    v28 = __p;
    if (v30 != __p)
    {
      do
      {
        v27 = sub_5938B0((v27 - 1120));
      }

      while (v27 != v26);
      v28 = __p;
    }

    v30 = v26;
    operator delete(v28);
  }
}

void sub_8BB294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5938B0(va);
  sub_5EC628(v5);
  _Unwind_Resume(a1);
}

void sub_8BB318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EC628(va);
  sub_5EC628(v2);
  _Unwind_Resume(a1);
}

void sub_8BB380(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 2557);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 5960);
    v6 = *(a1 + 5968);
    if (v5 != v6)
    {
      while (1)
      {
        v7 = *v5;
        if (*v5 == 0x7FFFFFFFFFFFFFFFLL || v7 > *(a1 + 2528))
        {
          break;
        }

        v8 = *(a1 + 2552) ? 128 : 136;
        if (v7 < *(*(a1 + 2536) + v8))
        {
          break;
        }

        if (++v5 == v6)
        {
          v9 = 2528;
          if (*(a1 + 2556))
          {
            v9 = 5952;
          }

          v30 = *(a1 + v9);
          sub_905718(a1 + 2576, &v28);
          v10 = v28;
          if (v29 != v28)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0x8E38E38E38E38E39 * (v29 - v28);
            do
            {
              sub_80A06C(v31, &v28[v11], *(*(a1 + 2536) + 418), 3, (a1 + 5984));
              sub_68179C(v31, 4);
              sub_6817B4(v31, v30, *(*(a1 + 5960) + 8 * v12), *(a1 + 12008));
              v15 = *(a1 + 12008);
              v16 = *(a1 + 5984);
              v17 = v15 <= v16;
              v18 = v15 - v16;
              if (v17)
              {
                v19 = 0;
              }

              else
              {
                v19 = v18;
              }

              sub_6817C0(v31, v19);
              sub_64BC20(v27, "{distance}");
              v26 = 1;
              sub_64E428(v27, "{distance}", &v30, &v26);
              sub_682240(v31, v27);
              v20 = a2[1];
              if (v20 >= a2[2])
              {
                v14 = sub_7A585C(a2, v31);
              }

              else
              {
                sub_5F4D20(a2[1], v31);
                v14 = v20 + 1120;
              }

              a2[1] = v14;
              v30 = *(*(a1 + 5960) + 8 * v12);
              sub_53A868(v27);
              sub_5938B0(v31);
              ++v12;
              v11 += 9;
            }

            while (v13 != v12);
            v10 = v28;
          }

          if (v10)
          {
            v24 = v29;
            v25 = v10;
            if (v29 != v10)
            {
              do
              {
                v24 -= 9;
                sub_8C6340(v24);
              }

              while (v24 != v10);
              v25 = v28;
            }

            v29 = v10;
            operator delete(v25);
          }

          return;
        }
      }
    }

    sub_8BEA18(a1, v31);
    v21 = a2[1];
    if (v21 >= a2[2])
    {
      v23 = sub_7A5C30(a2, v31);
    }

    else
    {
      sub_7A5A3C(v21, v31);
      v23 = v22 + 1120;
    }

    a2[1] = v23;
    sub_5938B0(v31);
  }
}