void sub_DAE2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAE2BC(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAE40C(uint64_t a1)
{
  sub_DACA48((a1 + 312));
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    v3 = *(a1 + 168);
    v4 = *(a1 + 160);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 160);
    }

    *(a1 + 168) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = *(a1 + 144);
    v7 = *(a1 + 136);
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *(a1 + 136);
    }

    *(a1 + 144) = v5;
    operator delete(v7);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_3EEA68(v9 - 1096);
      }

      while (v9 != v8);
      v10 = *(a1 + 32);
    }

    *(a1 + 40) = v8;
    operator delete(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 8);
    if (v12 != v11)
    {
      do
      {
        v12 -= 80;
        sub_3ED230(v12);
      }

      while (v12 != v11);
      v13 = *(a1 + 8);
    }

    *(a1 + 16) = v11;
    operator delete(v13);
  }

  return a1;
}

uint64_t sub_DAE540(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_D9F6DC(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v6 = *(a2 + 64);
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      *(a1 + 92) = *(a2 + 92);
LABEL_21:
      *(a1 + 64) = v6;
      *(a1 + 80) = v5;
      *(a1 + 48) = v7;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_22;
    }

    v11 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_D9F6DC(v11);
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      v5 = *(a2 + 80);
      v7 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_21;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_22:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DAE6BC(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAE7BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_DAE8A8(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_D0F4FC(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_D7DE54(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DAE8A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_5C1158(v5 - 7808);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_CFD5E4((a1 + 24), a2 + 24);
  v7 = *(a1 + 1112);
  if (v7)
  {
    v8 = (a1 + 1112);
    v9 = *(a1 + 1120);
    v10 = *(a1 + 1112);
    if (v9 != v7)
    {
      do
      {
        v9 = sub_3A9518(v9 - 1120);
      }

      while (v9 != v7);
      v10 = *v8;
    }

    *(a1 + 1120) = v7;
    operator delete(v10);
    *v8 = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1128) = 0;
  *(a2 + 1112) = 0u;
  sub_D09358(a1 + 1136, a2 + 1136);
  v11 = *(a2 + 1968);
  *(a1 + 1952) = *(a2 + 1952);
  *(a1 + 1968) = v11;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2016);
  v14 = *(a2 + 2032);
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2032) = v14;
  *(a1 + 2016) = v13;
  *(a1 + 2000) = v12;
  v15 = *(a2 + 2064);
  v16 = *(a2 + 2080);
  v17 = *(a2 + 2096);
  *(a1 + 2048) = *(a2 + 2048);
  *(a1 + 2096) = v17;
  *(a1 + 2080) = v16;
  *(a1 + 2064) = v15;
  v18 = *(a2 + 2128);
  v19 = *(a2 + 2144);
  v20 = *(a2 + 2154);
  *(a1 + 2112) = *(a2 + 2112);
  *(a1 + 2154) = v20;
  *(a1 + 2144) = v19;
  *(a1 + 2128) = v18;
  memcpy((a1 + 2176), (a2 + 2176), 0xAF0uLL);
  v21 = *(a1 + 4976);
  if (v21)
  {
    *(a1 + 4984) = v21;
    operator delete(v21);
    *(a1 + 4976) = 0;
    *(a1 + 4984) = 0;
    *(a1 + 4992) = 0;
  }

  *(a1 + 4976) = *(a2 + 4976);
  *(a1 + 4992) = *(a2 + 4992);
  *(a2 + 4992) = 0;
  *(a2 + 4976) = 0u;
  v22 = (a1 + 5000);
  if (*(a1 + 5023) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 5000);
  *(a1 + 5016) = *(a2 + 5016);
  *v22 = v23;
  *(a2 + 5023) = 0;
  *(a2 + 5000) = 0;
  sub_6BA20(a1 + 5024, (a2 + 5024));
  *(a1 + 5064) = *(a2 + 5064);
  return a1;
}

void sub_DAEAD0(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_D71E14(a1, *a3, a3[1], 0x6FB586FB586FB587 * ((a3[1] - *a3) >> 3));
  sub_E78844((a1 + 3));
}

void sub_DAED60(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 1680) = v4;
    operator delete(v4);
  }

  sub_616CD4(v1 + 1632);
  sub_528AB4(v1 + 24);
  sub_44FD90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DAEDD4(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t *a11, char a12, uint64_t a13, uint64_t a14)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_D7EBF4(a1 + 80, *a11, a11[1], 0xEEEEEEEEEEEEEEEFLL * ((a11[1] - *a11) >> 4));
  *(a1 + 104) = a12;
  *(a1 + 105) = sub_44F320(a4);
  sub_4ED880(a13, a1 + 112);
  *(a1 + 144) = a13;
  *(a1 + 152) = sub_4EF390(a13);
  *(a1 + 160) = v16;
  sub_E80194(*(a1 + 16), a1 + 168);
  v17 = *a14;
  v18 = *(a14 + 8);
  if (*a14 != v18)
  {
    while (v17[44] != 2)
    {
      v17 += 110;
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }
  }

  if (v17 == v18)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v17 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 344, v17);
  return a1;
}

void sub_DAF014(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44D36C((v1 + 168));
  sub_4F3AA4(v1 + 112);
  sub_49AE64(v2);
  _Unwind_Resume(a1);
}

void sub_DAF068(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = v9;
  v12 = *(a1 + 80);
  sub_DAF6F0(&__p, *(a1 + 88));
  sub_DAF1A0(a2, v3, v4, v5, v6, v7, v8, &v22, v10, v11, &v21, v12, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v20;
    v15 = __p;
    if (v20 == __p)
    {
LABEL_13:
      v20 = v13;
      operator delete(v15);
      return;
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v16 = *(v14 - 6);
        if (!v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v16 = *(v14 - 6);
        if (!v16)
        {
          goto LABEL_8;
        }
      }

      do
      {
        v17 = *v16;
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
LABEL_8:
      v18 = *(v14 - 8);
      *(v14 - 8) = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v14 -= 9;
      if (v14 == v13)
      {
        v15 = __p;
        goto LABEL_13;
      }
    }
  }
}

void sub_DAF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_D71160(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _OWORD *a6, void *a7, uint64_t *a8, uint64_t *a9, void *a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v18 = a7[1];
  if (v18 != *a7)
  {
    if (((v18 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v80 = *a8;
  v19 = sub_3B2E6C(a5);
  sub_2C1B08(v62, v19);
  v68 = 1;
  sub_E85008(a2, v62, &v69);
  v20 = sub_3B6890(a5);
  v48 = *v20;
  v21 = *(v20 + 8);
  sub_5F4380(v59, a9);
  memset(v60, 0, sizeof(v60));
  sub_5713F4(v60, a9[136], a9[137], 0xAF8AF8AF8AF8AF8BLL * ((a9[137] - a9[136]) >> 5));
  sub_5DAD70(v61, (a9 + 139));
  v22 = sub_E7A5E0(a2);
  v23 = sub_DAFE54(a2, a4, a3, a5);
  v24 = sub_E7FD98(a2);
  v25 = a6;
  v57 = sub_E80738(a2);
  v58 = v26;
  sub_99A14(&v55, a10);
  v54 = *a11;
  v27 = sub_E7AAC4(a2);
  sub_5ADDC(v52, a12);
  *__p = *a13;
  v51 = *(a13 + 16);
  *(a13 + 8) = 0;
  *(a13 + 16) = 0;
  *a13 = 0;
  v28 = sub_E89630(a2);
  sub_DAFFC4(a1, a3, a4, a5, v25, &v81, &v80, &v69, v48, v21, v59, v22, v23, v24 & 0xFFFFFFFFFFLL, &v57, &v55, &v54, v27, v52, __p, v28);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_16:
      __p[1] = v29;
      operator delete(v31);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v30 - 1) < 0)
      {
        operator delete(*(v30 - 3));
        v32 = *(v30 - 6);
        if (v32)
        {
          do
          {
LABEL_10:
            v33 = *v32;
            operator delete(v32);
            v32 = v33;
          }

          while (v33);
        }
      }

      else
      {
        v32 = *(v30 - 6);
        if (v32)
        {
          goto LABEL_10;
        }
      }

      v34 = *(v30 - 8);
      *(v30 - 8) = 0;
      if (v34)
      {
        operator delete(v34);
      }

      v30 -= 9;
      if (v30 == v29)
      {
        v31 = __p[0];
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v35 = v53;
  if (v53)
  {
    do
    {
      v36 = *v35;
      v37 = *(v35 + 12);
      if (v37 != -1)
      {
        (off_2673DD8[v37])(&v80, v35 + 5);
      }

      *(v35 + 12) = -1;
      if (*(v35 + 39) < 0)
      {
        operator delete(v35[2]);
      }

      operator delete(v35);
      v35 = v36;
    }

    while (v36);
  }

  v38 = v52[0];
  v52[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v55;
  if (v55)
  {
    v40 = v56;
    v41 = v55;
    if (v56 != v55)
    {
      do
      {
        v42 = *(v40 - 1);
        v40 -= 3;
        if (v42 < 0)
        {
          operator delete(*v40);
        }
      }

      while (v40 != v39);
      v41 = v55;
    }

    v56 = v39;
    operator delete(v41);
  }

  sub_5C0F34(v61);
  v43 = v60[0];
  if (v60[0])
  {
    v44 = v60[1];
    v45 = v60[0];
    if (v60[1] != v60[0])
    {
      do
      {
        v44 = sub_3A9518(v44 - 1120);
      }

      while (v44 != v43);
      v45 = v60[0];
    }

    v60[1] = v43;
    operator delete(v45);
  }

  sub_559E70(v59);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v77 < 0)
  {
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
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

  if (v68 == 1)
  {
    if (v67 < 0)
    {
      operator delete(v66);
      if ((v65 & 0x80000000) == 0)
      {
LABEL_52:
        if ((v63 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_58:
        operator delete(v62[0]);
        v46 = v81;
        if (!v81)
        {
          return a1;
        }

        goto LABEL_54;
      }
    }

    else if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v64);
    if (v63 < 0)
    {
      goto LABEL_58;
    }
  }

LABEL_53:
  v46 = v81;
  if (v81)
  {
LABEL_54:
    v82 = v46;
    operator delete(v46);
  }

  return a1;
}

void sub_DAF644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void **a38)
{
  sub_5706DC((v38 + 1088));
  sub_559E70(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v41 = *(v39 - 112);
  if (v41)
  {
    *(v39 - 104) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void *sub_DAF6F0(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_DAF7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_DAFCF8(&a11);
  *(v11 + 8) = v12;
  sub_DAFD90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DAF818(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  *a1 = v4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = *(a2 + 10);
  prime = *(a2 + 2);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v5, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 2));
    v7 = *(a1 + 16);
    v8 = prime >= *&v7;
    if (prime > *&v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(*(a1 + 32) / *(a1 + 40));
    if (*&v7 < 3uLL || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v7)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 3); i; i = *i)
  {
    sub_DAF9C4(v5, i + 2);
  }

  if (a2[71] < 0)
  {
    sub_325C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v13 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v13;
  }

  return a1;
}

void *sub_DAF9C4(void *a1, unint64_t *a2)
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

uint64_t sub_DAFCF8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
LABEL_9:
      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
    }
  }

  return a1;
}

void ***sub_DAFD90(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 == v2)
      {
LABEL_14:
        v1[1] = v2;
        operator delete(v5);
        return v3;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = *(v4 - 6);
          if (!v6)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v6 = *(v4 - 6);
          if (!v6)
          {
            goto LABEL_9;
          }
        }

        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
LABEL_9:
        v8 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v8)
        {
          operator delete(v8);
        }

        v4 -= 9;
        if (v4 == v2)
        {
          v5 = **v3;
          goto LABEL_14;
        }
      }
    }
  }

  return result;
}

uint64_t sub_DAFE54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_E7A5E0(a1);
  result = sub_EA7118(v7);
  if (result)
  {
    v9 = *a2;
    if (*a2 == a2[1])
    {
      return 0;
    }

    else
    {
      v10 = *a3;
      if (*a3 == *(a3 + 8))
      {
        return 0;
      }

      else
      {
        v22 = 15;
        v20 = 0;
        strcpy(v21, "RerouteCategory");
        __p = 0;
        v19 = 0;
        v11 = sub_3AEC94(a4, v21, &__p);
        sub_4EB344(&v23, v11);
        result = sub_4EB214(v9, v10, &v23);
        v12 = __p;
        if (__p)
        {
          v13 = result;
          v14 = v19;
          v15 = __p;
          if (v19 != __p)
          {
            do
            {
              v16 = *(v14 - 1);
              v14 -= 3;
              if (v16 < 0)
              {
                operator delete(*v14);
              }
            }

            while (v14 != v12);
            v15 = __p;
          }

          v19 = v12;
          operator delete(v15);
          result = v13;
        }

        if (v22 < 0)
        {
          v17 = result;
          operator delete(v21[0]);
          return v17;
        }
      }
    }
  }

  return result;
}

void sub_DAFFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DAFFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, void *a7, int *a8, uint64_t a9, int a10, uint64_t a11, char a12, char a13, uint64_t a14, uint64_t *a15, uint64_t a16, void *a17, char a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 8) = *a6;
  *(a1 + 24) = *(a6 + 16);
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a1 + 32) = 0u;
  v27 = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 32) = *a11;
  *(a1 + 48) = *(a11 + 16);
  *(a11 + 16) = 0;
  *a11 = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a11 + 24);
  *(a1 + 72) = *(a11 + 40);
  *(a11 + 40) = 0;
  *(a11 + 24) = 0u;
  sub_55A4D0(a1 + 80, a11 + 48);
  sub_55A4D0(v27 + 544, a11 + 544);
  *(v27 + 1056) = 0;
  *(v27 + 1040) = 0u;
  *(v27 + 1040) = *(a11 + 1040);
  *(v27 + 1056) = *(a11 + 1056);
  *(a11 + 1056) = 0;
  *(a11 + 1040) = 0u;
  *(v27 + 1080) = 0;
  *(v27 + 1064) = 0u;
  *(v27 + 1064) = *(a11 + 1064);
  *(v27 + 1072) = *(a11 + 1072);
  *(a11 + 1080) = 0;
  *(a11 + 1064) = 0u;
  *(v27 + 1104) = 0;
  *(v27 + 1088) = 0u;
  *(v27 + 1088) = *(a11 + 1088);
  *(v27 + 1104) = *(a11 + 1104);
  *(a11 + 1104) = 0;
  *(a11 + 1088) = 0u;
  sub_5DB550(v27 + 1112, a11 + 1112);
  v28 = *a8;
  *(v27 + 1931) = *(a8 + 3);
  *(v27 + 1928) = v28;
  *(v27 + 1936) = 0;
  *(v27 + 1952) = 0;
  *(v27 + 1944) = 0;
  *(v27 + 1936) = *(a8 + 2);
  *(v27 + 1952) = *(a8 + 3);
  *(a8 + 1) = 0;
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  v29 = *(a8 + 3);
  *(v27 + 1960) = *(a8 + 2);
  *(v27 + 1976) = v29;
  *(v27 + 1992) = a8[16];
  *(v27 + 2016) = 0;
  *(v27 + 2008) = 0;
  *(v27 + 2000) = 0;
  *(v27 + 2000) = *(a8 + 18);
  *(v27 + 2016) = *(a8 + 11);
  *(a8 + 10) = 0;
  *(a8 + 11) = 0;
  *(a8 + 9) = 0;
  *(v27 + 2024) = a8[24];
  *(v27 + 2032) = 0;
  *(v27 + 2048) = 0;
  *(v27 + 2040) = 0;
  *(v27 + 2032) = *(a8 + 26);
  *(v27 + 2048) = *(a8 + 15);
  *(a8 + 13) = 0;
  *(a8 + 14) = 0;
  *(a8 + 15) = 0;
  v30 = *(a8 + 8);
  *(v27 + 2072) = *(a8 + 18);
  *(v27 + 2056) = v30;
  *(a8 + 17) = 0;
  *(a8 + 18) = 0;
  *(a8 + 16) = 0;
  *(v27 + 2080) = *(a8 + 152);
  v31 = *(a8 + 20);
  *(v27 + 2096) = *(a8 + 168);
  *(v27 + 2088) = v31;
  *(v27 + 2104) = 0;
  *(v27 + 2120) = 0;
  *(v27 + 2112) = 0;
  *(v27 + 2104) = *(a8 + 11);
  *(v27 + 2120) = *(a8 + 24);
  *(a8 + 22) = 0;
  *(a8 + 23) = 0;
  *(a8 + 24) = 0;
  *(v27 + 2128) = a4;
  v32 = *a3;
  v33 = *(a3 + 8);
  if (*a3 != v33)
  {
    while (v32[44] != 1)
    {
      v32 += 110;
      if (v32 == v33)
      {
        goto LABEL_6;
      }
    }
  }

  if (v32 == v33)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v32 = &unk_27337E8;
  }

  sub_4E9DA4(v27 + 2136, v32);
  v34 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    while (v34[44] != 2)
    {
      v34 += 110;
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }
  }

  if (v34 == v35)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v34 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 2608, v34);
  *(a1 + 3048) = *a7;
  *(a1 + 3056) = a3;
  *(a1 + 3064) = a9;
  *(a1 + 3072) = a10;
  *(a1 + 3076) = a12;
  *(a1 + 3077) = a13;
  *(a1 + 3080) = a14;
  v36 = *a15;
  *(a1 + 3096) = *(a15 + 2);
  *(a1 + 3088) = v36;
  *(a1 + 3104) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3104) = *a16;
  *(a1 + 3120) = *(a16 + 16);
  *a16 = 0;
  *(a16 + 8) = 0;
  *(a16 + 16) = 0;
  *(a1 + 3128) = *a17;
  *(a1 + 3136) = *a5;
  *(a1 + 3152) = a18;
  v37 = *a19;
  *(a1 + 3168) = a19[1];
  *a19 = 0;
  *(a1 + 3160) = v37;
  a19[1] = 0;
  v38 = a19[3];
  v39 = *(a19 + 8);
  v40 = a19[2];
  *(a1 + 3176) = v40;
  *(a1 + 3184) = v38;
  *(a1 + 3192) = v39;
  if (v38)
  {
    v41 = *(v40 + 8);
    v42 = *(a1 + 3168);
    if ((v42 & (v42 - 1)) != 0)
    {
      if (v41 >= v42)
      {
        v41 %= v42;
      }
    }

    else
    {
      v41 &= v42 - 1;
    }

    *(v37 + 8 * v41) = a1 + 3176;
    a19[2] = 0;
    a19[3] = 0;
  }

  *(a1 + 3216) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3200) = *a20;
  *(a1 + 3216) = *(a20 + 16);
  *a20 = 0;
  *(a20 + 8) = 0;
  *(a20 + 16) = 0;
  *(a1 + 3224) = a21;
  return a1;
}

void sub_DB0428(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339A0);
  sub_44FDEC(v2 + 2136);
  sub_D71D0C(v3);
  sub_D0AA6C(v2);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DB048C(uint64_t a1)
{
  v2 = *(a1 + 3200);
  if (v2)
  {
    v3 = *(a1 + 3208);
    v4 = *(a1 + 3200);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 3208) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        v5 = *(v3 - 48);
        if (v5)
        {
          do
          {
LABEL_7:
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v7 = *(v3 - 64);
      *(v3 - 64) = 0;
      if (v7)
      {
        operator delete(v7);
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 3200);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v8 = *(a1 + 3176);
  if (v8)
  {
    do
    {
      v9 = *v8;
      v10 = *(v8 + 12);
      if (v10 != -1)
      {
        (off_2673DD8[v10])(&v25, v8 + 5);
      }

      *(v8 + 12) = -1;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v11 = *(a1 + 3160);
  *(a1 + 3160) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 3104);
  if (v12)
  {
    v13 = *(a1 + 3112);
    v14 = *(a1 + 3104);
    if (v13 != v12)
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
      v14 = *(a1 + 3104);
    }

    *(a1 + 3112) = v12;
    operator delete(v14);
  }

  sub_44FDEC(a1 + 2608);
  sub_44FDEC(a1 + 2168);
  v16 = *(a1 + 2136);
  if (v16)
  {
    *(a1 + 2144) = v16;
    operator delete(v16);
  }

  if (*(a1 + 2111) < 0)
  {
    operator delete(*(a1 + 2088));
  }

  v17 = *(a1 + 2064);
  if (v17)
  {
    *(a1 + 2072) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 2032);
  if (v18)
  {
    *(a1 + 2040) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 1968);
  if (v19)
  {
    *(a1 + 1976) = v19;
    operator delete(v19);
  }

  sub_5C0F34(a1 + 1144);
  v20 = *(a1 + 1120);
  if (v20)
  {
    v21 = *(a1 + 1128);
    v22 = *(a1 + 1120);
    if (v21 != v20)
    {
      do
      {
        v21 = sub_3A9518(v21 - 1120);
      }

      while (v21 != v20);
      v22 = *(a1 + 1120);
    }

    *(a1 + 1128) = v20;
    operator delete(v22);
  }

  sub_559E70((a1 + 32));
  v23 = *(a1 + 8);
  if (v23)
  {
    *(a1 + 16) = v23;
    operator delete(v23);
  }

  return a1;
}

uint64_t sub_DB06B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v16);
  if (a1 != a2)
  {
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    while (1)
    {
      sub_4A5C(&v16, v10, v11);
      a1 += 24;
      if (a1 == a2)
      {
        break;
      }

      v27 = *a3;
      sub_4A5C(&v16, &v27, 1);
      v12 = *(a1 + 23);
      if (v12 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v12 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }
    }
  }

  if ((v26 & 0x10) != 0)
  {
    v13 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v13 = v22;
    }

    v14 = __src;
    v8 = v13 - __src;
    if (v13 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    v14 = v19;
    v8 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v14, v8);
  }

LABEL_26:
  a4[v8] = 0;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_DB0978()
{
  byte_27B68C7 = 3;
  LODWORD(qword_27B68B0) = 5136193;
  byte_27B68DF = 3;
  LODWORD(qword_27B68C8) = 5136194;
  byte_27B68F7 = 3;
  LODWORD(qword_27B68E0) = 5136195;
  byte_27B690F = 15;
  strcpy(&qword_27B68F8, "vehicle_mass_kg");
  byte_27B6927 = 21;
  strcpy(&xmmword_27B6910, "vehicle_cargo_mass_kg");
  byte_27B693F = 19;
  strcpy(&qword_27B6928, "vehicle_aux_power_w");
  byte_27B6957 = 15;
  strcpy(&qword_27B6940, "dcdc_efficiency");
  strcpy(&qword_27B6958, "drive_train_efficiency");
  HIBYTE(word_27B696E) = 22;
  operator new();
}

void sub_DB0D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B6870)
  {
    qword_27B6878 = qword_27B6870;
    operator delete(qword_27B6870);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DB0E74()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *sub_3B8500(v1);
  sub_DEB870(4, v3, v2);
  sub_7E9A4(&v76);
  v73 = v4;
  v74 = v2;
  v75 = v3;
  if (sub_E7F8D4(v3))
  {
    sub_3B6984(v2);
  }

  sub_E7C46C(v3);
  v40[176] = 0;
  v40[304] = 0;
  v40[312] = 0;
  v40[440] = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v53 = 0x3FF0000000000000;
  v54 = 0u;
  v55 = 0;
  v56 = 5;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0x7FFFFFFF;
  v65 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v66 = -1;
  v67 = 0x7FFFFFFF;
  v68 = 0;
  v69 = 0;
  v70 = -1;
  v71 = -1;
  v72 = 0;
  sub_E8041C(v3, v40);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_4E3D18(v36);
  sub_4E3D18(v35);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v27 = -1;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v17 = -1;
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v10 = 0;
  v9 = 0;
  v11 = 0;
  v7 = 0u;
  v6 = 0u;
  v8 = 1065353216;
  memset(&v5[520], 0, 24);
  sub_787F9C(v5);
}

void sub_DB3E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_1959728(&STACK[0x2830]);
  sub_CDF878(v53 - 208);
  sub_60A84C(&STACK[0x6F0]);
  sub_D3C228(&STACK[0x530]);
  sub_D1D638(&STACK[0x4970]);
  sub_D130AC(&STACK[0x5BC8]);
  sub_14CA828(&STACK[0x4D08]);
  sub_14CA828(&STACK[0x4E08]);
  sub_CD6274(&STACK[0x50E8]);
  sub_D40D4C(&STACK[0x5120]);
  sub_D71160(&STACK[0x53E8]);
  sub_5C010(&STACK[0x5400]);
  sub_D9F480(&STACK[0x5440]);
  sub_1A104(&STACK[0x5648]);
  sub_616CD4(&STACK[0x5660]);
  sub_44FD90(&STACK[0x5688]);
  sub_419F70(&STACK[0x56A0]);
  sub_419F70(&STACK[0x5720]);
  *v52 = &STACK[0x57A8];
  sub_DC1694(&STACK[0x4970]);
  sub_454784(&STACK[0x57C0]);
  sub_454784(&STACK[0x57F0]);
  sub_34BE0(&STACK[0x5820]);
  sub_44D36C(&STACK[0x5838]);
  sub_5287C0(&STACK[0x58E8]);
  _Unwind_Resume(a1);
}

void sub_DB448C(uint64_t a1, uint64_t *a2, int *a3, const std::error_condition *a4)
{
  sub_7C6B8(4, a4, *a2);
  v14 = 18;
  strcpy(__p, "InternalError[All]");
  sub_7BDA0(4, __p, *a2);
  if (v14 < 0)
  {
    operator delete(*__p);
    if (!sub_7E7E4(3u))
    {
      goto LABEL_29;
    }
  }

  else if (!sub_7E7E4(3u))
  {
    goto LABEL_29;
  }

  sub_19594F8(__p);
  sub_DE8554(*a3, __dst);
  if ((v24 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v8 = v24;
  }

  else
  {
    v8 = __dst[1];
  }

  sub_4A5C(__p, v7, v8);
  if (v24 < 0)
  {
    operator delete(__dst[0]);
    v9 = v22;
    if ((v22 & 0x10) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        v10 = 0;
        v24 = 0;
LABEL_24:
        *(__dst + v10) = 0;
        sub_7E854(__dst, 3u);
        if (v24 < 0)
        {
          operator delete(__dst[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        std::locale::~locale(&__p[16]);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_29:
        sub_DB6830(__p, 0, a4, a2[1], a2[2]);
      }

      v12 = v15;
      v10 = v16 - v15;
      if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_31:
        sub_3244();
      }

LABEL_19:
      if (v10 >= 0x17)
      {
        operator new();
      }

      v24 = v10;
      if (v10)
      {
        memmove(__dst, v12, v10);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = v22;
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = v21;
  if (v21 < v18)
  {
    v21 = v18;
    v11 = v18;
  }

  v12 = __src;
  v10 = v11 - __src;
  if (v11 - __src >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_31;
  }

  goto LABEL_19;
}

void sub_DB47C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 81) < 0)
  {
    operator delete(*(v9 - 104));
    sub_1959728(&a9);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a9);
  _Unwind_Resume(a1);
}

void sub_DB4828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_DB4844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4[0] = *a2;
  LODWORD(v4[1]) = 2;
  __p[0] = v2;
  LOBYTE(__p[1]) = sub_E88F70(v4);
  v6 = v3;
  sub_D11BD4(v4, v7);
}

void sub_DB4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9DA0(&a9);
  sub_D130AC(v9 - 160);
  _Unwind_Resume(a1);
}

double sub_DB4B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    sub_DB6C90(v8, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  }

  *v8 = *(a3 + 8);
  sub_435834(&v9, (a3 + 24));
  v5 = *(a3 + 48);
  *a1 = 0;
  result = *v8;
  v7 = v9;
  *(a1 + 8) = *v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = v10;
  *(a1 + 48) = v5;
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0;
  *(a1 + 912) = 0;
  *(a1 + 904) = 0;
  return result;
}

void sub_DB4E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9DA0(&a9);
  sub_D1D638(v9);
  _Unwind_Resume(a1);
}

double sub_DB4E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    if (*a2 != a3 + 112)
    {
      sub_DB710C(*a2, *(a3 + 112), *(a3 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 120) - *(a3 + 112)) >> 3));
    }

    if (sub_4EE128(*(a2 + 8)))
    {
      v6 = *(a2 + 16);
      v8 = *v6;
      v7 = v6[1];
      if (v7 != *v6)
      {
        do
        {
          v7 = sub_44FDEC(v7 - 440);
        }

        while (v7 != v8);
      }

      v10 = *(a3 + 136);
      v9 = *(a3 + 144);
      v11 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 4);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = v9 == v10;
      v6[1] = v8;
      if (v9 == v10)
      {
        v13 = v11 + 1;
      }

      else
      {
        v13 = v11;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 + 1;
      }

      if (v15 != 1)
      {
        v28 = 1;
        v29 = 464;
        do
        {
          v31 = nullsub_1(*(a2 + 24));
          v32 = sub_F69688(*v31 + 552 * (v28 >> 1));
          if (*v32 != -1 || *(v32 + 2) != 3)
          {
            v34 = (*(a3 + 136) + v29);
            v35 = (v34 - 56);
            v36 = *(a2 + 16);
            v37 = *(v36 + 8);
            if (v37 >= *(v36 + 16))
            {
              v30 = sub_DB7378(*(a2 + 16), v35, v34);
            }

            else
            {
              sub_DB7694(*(v36 + 8), v35, *v34);
              v30 = v37 + 440;
              *(v36 + 8) = v37 + 440;
            }

            *(v36 + 8) = v30;
          }

          v28 += 2;
          v29 += 480;
        }

        while (v15 != v28);
      }
    }

    v78 = 0;
    v79 = 0;
    v80 = 0;
    v79 = sub_CE9DE4(&v78);
    sub_F74004((v79 - 24), *(a2 + 24), 1);
    v16 = *(a2 + 32);
    v17 = *(a2 + 40);
    v18 = *(a2 + 48);
    v55[0] = &v78;
    v19 = sub_3B6890(v18);
    v20 = *v19;
    LODWORD(__p[0]) = *(v19 + 8);
    v55[1] = v20;
    BYTE4(__p[0]) = sub_E7C414(v16);
    __p[1] = v17;
    LOBYTE(v57) = 1;
    v58 = v18;
    sub_D01A24(v55, v74);
    if ((v74[0] & 1) == 0)
    {
      LODWORD(v55[0]) = 10;
      sub_DB448C(v73, *(a2 + 56), v55, &v75);
    }

    BYTE7(v45) = 9;
    strcpy(v44, "UserRoute");
    sub_DAB314(&v77, v55);
    sub_7CA38(4, v44, v55, *(a2 + 72));
    v21 = __p[1];
    if (__p[1])
    {
      v22 = v57;
      v23 = __p[1];
      if (v57 != __p[1])
      {
        do
        {
          v24 = *(v22 - 25);
          v22 -= 6;
          if (v24 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v21);
        v23 = __p[1];
      }

      v57 = v21;
      operator delete(v23);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v55[0]);
      if ((SBYTE7(v45) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else if ((SBYTE7(v45) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    operator delete(v44[0]);
LABEL_39:
    v38 = sub_FF3D04(*(a2 + 32), *(a2 + 40), 3);
    v43 = *(a2 + 40);
    v39 = sub_6910B0();
    v40 = sub_394BD0();
    v41 = *(a2 + 16);
    sub_E8041C(*(a2 + 32), v44);
    v42 = sub_E89654(*(a2 + 32));
    v55[0] = &v78;
    v55[1] = &v75;
    __p[0] = &v76;
    __p[1] = (v38 | 0x10);
    LODWORD(v57) = v39;
    BYTE4(v57) = v40;
    v58 = v41;
    v61 = v46;
    *v62 = *v47;
    *&v62[15] = *&v47[15];
    v59 = *v44;
    v60 = v45;
    v64 = 0;
    v63 = 0;
    v65 = 0;
    if (v49 != v48)
    {
      if (((v49 - v48) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v66 = v50;
    v67 = v51;
    v68 = v52;
    v69 = v53;
    sub_81988(v70, &v54);
    v71 = v43;
    v70[3] = v42;
    v72 = 0;
    if (v54)
    {
      operator delete(v54);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    sub_D3A150(v55, a1);
  }

  *v55 = *(a3 + 8);
  sub_435834(__p, (a3 + 24));
  v25 = *(a3 + 48);
  *a1 = 0;
  result = *v55;
  v27 = *__p;
  *(a1 + 8) = *v55;
  *(a1 + 24) = v27;
  *(a1 + 40) = v57;
  *(a1 + 48) = v25;
  return result;
}

void sub_DB5568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1A104(&a43);
  sub_D3C228(v65);
  sub_D7A354(&a65);
  sub_DB6E14(v66 - 216);
  a65 = v66 - 128;
  sub_DC1694(&a65);
  _Unwind_Resume(a1);
}

double sub_DB5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    sub_E89678(&v8);
  }

  v8 = *(a3 + 8);
  sub_435834(&v9, (a3 + 24));
  v5 = *(a3 + 48);
  *a1 = 0;
  result = *&v8;
  v7 = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = v10;
  *(a1 + 48) = v5;
  return result;
}

double sub_DB57A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a3)
  {
    sub_456238(*a2);
    v6 = a2[2];
    *&v12 = 0;
    v7 = v6[1];
    if (v7 != *v6)
    {
      if ((0x6FB586FB586FB587 * ((v7 - *v6) >> 3)) < 0x94F2094F2094F3)
      {
        operator new();
      }

      sub_1794();
    }

    sub_E89678(&v12 + 8);
  }

  *v11 = *(a3 + 8);
  sub_435834(&v12, (a3 + 24));
  v8 = *(a3 + 48);
  *a1 = 0;
  result = *v11;
  v10 = v12;
  *(a1 + 8) = *v11;
  *(a1 + 24) = v10;
  *(a1 + 40) = v13;
  *(a1 + 48) = v8;
  return result;
}

void sub_DB5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_9DA0(&a15);
  sub_DB5EB8(v53);
  sub_DBDBA0(&a53);
  _Unwind_Resume(a1);
}

void sub_DB5AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_77B480(v53 + 24);
  sub_44FD90(&a53);
  _Unwind_Resume(a1);
}

void sub_DB5AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_4EA79C(va);
  _Unwind_Resume(a1);
}

void sub_DB5AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v8)
  {
    v10 = v7 - 440;
    v11 = -v8;
    do
    {
      v10 = sub_44FDEC(v10) - 440;
      v11 += 440;
    }

    while (v11);
  }

  sub_4EA79C(va);
  _Unwind_Resume(a1);
}

double sub_DB5B1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (*a5)
  {
    if ((atomic_load_explicit(&qword_27B8868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B8868))
    {
      sub_DBE97C(&unk_27B6988);
      __cxa_guard_release(&qword_27B8868);
    }

    v13 = *a6;
    v12 = a6 + 8;
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_27B6988;
    }

    v15 = *a2;
    v27 = *(a2 + 1);
    v16 = a2[3];
    if (*a4 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v18 = *(a4 + 32);
      v17 = *(a4 + 40);
      if (v17 != v18)
      {
        if (0x86BCA1AF286BCA1BLL * ((v17 - v18) >> 3) < 0x1AF286BCA1AF287)
        {
          operator new();
        }

        sub_1794();
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
    }

    v23 = a2[4];
    v24 = a2[5];
    v25 = a2[6];
    v26 = v22 & *(a4 + 56) & 1;
    *&v31 = v15;
    *(&v31 + 1) = a3;
    *&v32 = a5 + 8;
    *(&v32 + 1) = v14;
    v33 = v16;
    v34 = &v28;
    v35 = v23;
    v36 = v25;
    v37 = v27;
    v38 = v26;
    v39 = v24;
    sub_E89678(&v40);
  }

  v31 = *(a5 + 8);
  sub_435834(&v32, (a5 + 24));
  v19 = *(a5 + 48);
  *a1 = 0;
  result = *&v31;
  v21 = v32;
  *(a1 + 8) = v31;
  *(a1 + 24) = v21;
  *(a1 + 40) = v33;
  *(a1 + 48) = v19;
  return result;
}

void sub_DB5E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_9DA0(&a49);
  sub_CD15B8(v49);
  _Unwind_Resume(a1);
}

void sub_DB5E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DB5EB8(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8464);
    if (v2)
    {
      *(a1 + 8472) = v2;
      operator delete(v2);
    }

    sub_60B2B4(a1 + 8);
    return a1;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return a1;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 24);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 24));
      }

      v5 -= 32;
    }

    while (v5 != v4);
    v6 = *(a1 + 24);
  }

  *(a1 + 32) = v4;
  operator delete(v6);
  return a1;
}

double sub_DB5F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a3)
  {
    v38 = sub_7EA60(*(a2 + 8));
    LODWORD(v39) = 2;
    v8 = *a2;
    HIBYTE(__p[2]) = 17;
    strcpy(__p, "RequestLatency_ms");
    v42[0] = __p;
    v9 = sub_A1D1C(v8, __p);
    v10 = *(v9 + 12);
    if (v10 == -1)
    {
      if (v39 == -1)
      {
        goto LABEL_8;
      }
    }

    else if (v39 == -1)
    {
      v11 = v9;
      (off_2673EC8[v10])(v42, v9 + 5);
      *(v11 + 12) = -1;
      goto LABEL_8;
    }

    v42[0] = v9 + 5;
    (off_2673F10[v39])(v42);
LABEL_8:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      v15 = v39;
      if (v39 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = v39;
      if (v39 == -1)
      {
LABEL_13:
        v16 = *(a2 + 16);
        v17 = sub_3B2E6C(*(a2 + 24));
        sub_2C1B08(__p, v17);
        v29 = 1;
        sub_E855B8(v16, __p, &v38);
        if (v29 != 1)
        {
          goto LABEL_17;
        }

        if (v28 < 0)
        {
          operator delete(v27);
          if ((v26 & 0x80000000) == 0)
          {
LABEL_16:
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

LABEL_20:
            operator delete(__p[0]);
LABEL_17:
            v18 = sub_3B6890(*(a2 + 24));
            v19 = *v18;
            v20 = *(v18 + 8);
            v21 = sub_E800B8(*(a2 + 16));
            v24 = *(a2 + 24);
            v22 = *(a2 + 40);
            v23 = *a2;
            sub_D71F30(__p, &v38);
            v30 = v40;
            v31 = v41;
            v32 = a3 + 8;
            v33 = vextq_s8(v24, v24, 8uLL);
            v34 = v19;
            v35 = v20;
            memset(v36, 0, 24);
            sub_353184(v36, *v22, v22[1], 0xAAAAAAAAAAAAAAABLL * ((v22[1] - *v22) >> 3));
            v36[3] = v21 & 0xFFFFFFFFFFLL;
            v36[4] = a4 + 8;
            sub_5ADDC(&v37, v23);
            sub_CFDD00(__p);
          }
        }

        else if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        operator delete(__p[3]);
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    (off_2673EC8[v15])(__p, &v38);
    goto LABEL_13;
  }

  *__p = *(a3 + 8);
  sub_435834(&__p[2], (a3 + 24));
  v12 = *(a3 + 48);
  *a1 = 0;
  result = *__p;
  v14 = *&__p[2];
  *(a1 + 8) = *__p;
  *(a1 + 24) = v14;
  *(a1 + 40) = __p[4];
  *(a1 + 48) = v12;
  return result;
}

void sub_DB630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_9DA0(&a11);
  sub_DB63FC(v52);
  sub_D71D0C(&a52);
  _Unwind_Resume(a1);
}

void sub_DB6340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_DBFC60(&a11);
  sub_D71D0C(&a52);
  _Unwind_Resume(a1);
}

void sub_DB635C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_1A104((v52 + 248));
  sub_D71D0C(&a11);
  sub_D71D0C(&a52);
  _Unwind_Resume(a1);
}

void sub_DB63C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D71D80(va);
  _Unwind_Resume(a1);
}

void sub_DB63D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_5BC80(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_DB63FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_14CA828(a1 + 264);
    sub_14CA828(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_DB64A0(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      return a1;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 == v2)
    {
      goto LABEL_63;
    }

    while (1)
    {
      v6 = *(v3 - 3);
      if (v6)
      {
        v7 = *(v3 - 2);
        v8 = *(v3 - 3);
        if (v7 != v6)
        {
          do
          {
            v10 = *(v7 - 4);
            if (v10)
            {
              do
              {
                v11 = *v10;
                operator delete(v10);
                v10 = v11;
              }

              while (v11);
            }

            v12 = *(v7 - 6);
            *(v7 - 6) = 0;
            if (v12)
            {
              operator delete(v12);
            }

            v13 = *(v7 - 9);
            if (v13)
            {
              do
              {
                v14 = *v13;
                operator delete(v13);
                v13 = v14;
              }

              while (v14);
            }

            v15 = *(v7 - 11);
            *(v7 - 11) = 0;
            if (v15)
            {
              operator delete(v15);
            }

            v16 = v7 - 14;
            v17 = *(v7 - 14);
            if (v17)
            {
              v18 = *(v7 - 13);
              v9 = *(v7 - 14);
              if (v18 != v17)
              {
                v19 = *(v7 - 13);
                do
                {
                  v21 = *(v19 - 5);
                  v19 -= 40;
                  v20 = v21;
                  if (v21)
                  {
                    *(v18 - 4) = v20;
                    operator delete(v20);
                  }

                  v18 = v19;
                }

                while (v19 != v17);
                v9 = *v16;
              }

              *(v7 - 13) = v17;
              operator delete(v9);
            }

            v7 -= 14;
          }

          while (v16 != v6);
          v8 = *(v3 - 3);
        }

        *(v3 - 2) = v6;
        operator delete(v8);
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
        v22 = *(v3 - 16);
        if (v22)
        {
LABEL_35:
          v25 = *(v3 - 15);
          v26 = v22;
          if (v25 != v22)
          {
            do
            {
              v25 = sub_3EEA68(v25 - 1096);
            }

            while (v25 != v22);
            v26 = *(v3 - 16);
          }

          *(v3 - 15) = v22;
          operator delete(v26);
          v23 = v3 - 19;
          v24 = *(v3 - 19);
          if (!v24)
          {
            goto LABEL_7;
          }

LABEL_39:
          v27 = *(v3 - 18);
          v5 = v24;
          if (v27 != v24)
          {
            do
            {
              v28 = *(v27 - 3);
              if (v28)
              {
                v29 = *(v27 - 2);
                v30 = *(v27 - 3);
                if (v29 != v28)
                {
                  do
                  {
                    v31 = v29 - 32;
                    v32 = *(v29 - 2);
                    if (v32 != -1)
                    {
                      (off_2673E98[v32])(&v38, v29 - 32);
                    }

                    *(v29 - 2) = -1;
                    v29 -= 32;
                  }

                  while (v31 != v28);
                  v30 = *(v27 - 3);
                }

                *(v27 - 2) = v28;
                operator delete(v30);
              }

              v33 = *(v27 - 8);
              if (v33 != -1)
              {
                (off_2673E98[v33])(&v39, v27 - 7);
              }

              v34 = v27 - 10;
              *(v27 - 8) = -1;
              if (*(v27 - 57) < 0)
              {
                operator delete(*v34);
              }

              v27 -= 10;
            }

            while (v34 != v24);
            v5 = *v23;
          }

          *(v3 - 18) = v24;
          operator delete(v5);
          goto LABEL_7;
        }
      }

      else
      {
        v22 = *(v3 - 16);
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v23 = v3 - 19;
      v24 = *(v3 - 19);
      if (v24)
      {
        goto LABEL_39;
      }

LABEL_7:
      v3 = v23;
      if (v23 == v2)
      {
        v4 = *(a1 + 8);
LABEL_63:
        *(a1 + 16) = v2;
LABEL_64:
        operator delete(v4);
        return a1;
      }
    }
  }

  v35 = *(a1 + 24);
  if (v35)
  {
    v36 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 1) < 0)
        {
          operator delete(*(v36 - 24));
        }

        v36 -= 32;
      }

      while (v36 != v35);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v35;
    goto LABEL_64;
  }

  return a1;
}

uint64_t sub_DB6790(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_DC1D58(a1, (a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_DB6830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_3B2E6C(a4);
  sub_2C1B08(v12, v7);
  v13 = 1;
  sub_E73488(a5, v12);
  v8 = sub_3B2E6C(a4);
  sub_2C1B08(v10, v8);
  v11 = 1;
  sub_E73A88(a5, v10);
  sub_3B6890(a4);
  sub_E6359C(v9, a4);
}

void sub_DB6BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_D71D0C(v46 + 64);
  sub_44FD90(v47);
  sub_D71D0C(&a21);
  sub_D71D80(&a11);
  sub_5287C0(&a46);
  sub_44FD90(&STACK[0x3F8]);
  sub_D71D80(v48 - 256);
  sub_D71D80(v48 - 176);
  _Unwind_Resume(a1);
}

void sub_DB6C90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = sub_394BD0();
  *(a1 + 4) = sub_6910B0();
  *(a1 + 8) = sub_E7C414(a2);
  sub_E89434(a2, (a1 + 16));
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  sub_E89450(a2, (a1 + 56));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3B9ACA0000000000;
  sub_E8041C(a2, a1 + 112);
  *(a1 + 288) = sub_E89654(a2);
  *(a1 + 296) = a3;
  sub_E882B4(a2, (a1 + 304));
  sub_E889B4(a2, (a1 + 328));
  sub_E88C70(a2, (a1 + 352));
  *(a1 + 384) = a4;
  *(a1 + 392) = a5;
  *(a1 + 400) = 0x1000000;
  sub_D75D50(a1);
}

void sub_DB6D84(_Unwind_Exception *a1)
{
  v4 = *(v1 + 352);
  if (v4)
  {
    *(v1 + 360) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 328);
  if (v5)
  {
    *(v1 + 336) = v5;
    operator delete(v5);
  }

  sub_4E3C94((v1 + 304));
  sub_44D36C((v2 + 32));
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  sub_1A104((v1 + 56));
  sub_1A104((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_DB6E14(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      if (v3 != v2)
      {
        v5 = *(a1 + 40);
        do
        {
          v8 = *(v5 - 3);
          v5 -= 3;
          v7 = v8;
          if (v8)
          {
            v9 = *(v3 - 2);
            v6 = v7;
            if (v9 != v7)
            {
              do
              {
                v11 = *(v9 - 3);
                if (v11)
                {
                  v12 = *(v9 - 2);
                  v13 = *(v9 - 3);
                  if (v12 != v11)
                  {
                    do
                    {
                      v14 = *(v12 - 5);
                      if (v14)
                      {
                        *(v12 - 4) = v14;
                        operator delete(v14);
                      }

                      v12 -= 56;
                    }

                    while (v12 != v11);
                    v13 = *(v9 - 3);
                  }

                  *(v9 - 2) = v11;
                  operator delete(v13);
                }

                v15 = v9 - 6;
                v16 = *(v9 - 6);
                if (v16)
                {
                  v17 = *(v9 - 5);
                  v10 = *(v9 - 6);
                  if (v17 != v16)
                  {
                    do
                    {
                      v18 = *(v17 - 9);
                      if (v18)
                      {
                        *(v17 - 8) = v18;
                        operator delete(v18);
                      }

                      v19 = *(v17 - 12);
                      if (v19)
                      {
                        *(v17 - 11) = v19;
                        operator delete(v19);
                      }

                      v17 -= 136;
                    }

                    while (v17 != v16);
                    v10 = *v15;
                  }

                  *(v9 - 5) = v16;
                  operator delete(v10);
                }

                v9 -= 6;
              }

              while (v15 != v7);
              v6 = *v5;
            }

            *(v3 - 2) = v7;
            operator delete(v6);
          }

          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v4);
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = *(a1 + 16);
      v22 = *(a1 + 8);
      if (v24 != v23)
      {
        v25 = *(a1 + 16);
        do
        {
          v28 = *(v25 - 3);
          v25 -= 3;
          v27 = v28;
          if (v28)
          {
            v29 = *(v24 - 2);
            v26 = v27;
            if (v29 != v27)
            {
              v30 = *(v24 - 2);
              do
              {
                v33 = *(v30 - 3);
                v30 -= 3;
                v32 = v33;
                if (v33)
                {
                  v34 = *(v29 - 2);
                  v31 = v32;
                  if (v34 != v32)
                  {
                    v35 = v34 - 128;
                    do
                    {
                      v37 = *(v35 + 72);
                      if (v37)
                      {
                        *(v35 + 80) = v37;
                        operator delete(v37);
                      }

                      v38 = *(v35 + 48);
                      if (v38)
                      {
                        *(v35 + 56) = v38;
                        operator delete(v38);
                      }

                      v39 = *(v35 + 24);
                      if (v39)
                      {
                        *(v35 + 32) = v39;
                        operator delete(v39);
                      }

                      v40 = *v35;
                      if (*v35)
                      {
                        *(v35 + 8) = v40;
                        operator delete(v40);
                      }

                      v41 = *(v35 - 24);
                      if (v41)
                      {
                        *(v35 - 16) = v41;
                        operator delete(v41);
                      }

                      v42 = *(v35 - 48);
                      if (v42)
                      {
                        *(v35 - 40) = v42;
                        operator delete(v42);
                      }

                      v43 = *(v35 - 72);
                      if (v43)
                      {
                        *(v35 - 64) = v43;
                        operator delete(v43);
                      }

                      v44 = *(v35 - 96);
                      if (v44)
                      {
                        *(v35 - 88) = v44;
                        operator delete(v44);
                      }

                      v45 = *(v35 - 120);
                      if (v45)
                      {
                        *(v35 - 112) = v45;
                        operator delete(v45);
                      }

                      v46 = *(v35 - 144);
                      if (v46)
                      {
                        *(v35 - 136) = v46;
                        operator delete(v46);
                      }

                      v36 = (v35 - 160);
                      v35 -= 288;
                    }

                    while (v36 != v32);
                    v31 = *v30;
                  }

                  *(v29 - 2) = v32;
                  operator delete(v31);
                }

                v29 = v30;
              }

              while (v30 != v27);
              v26 = *v25;
            }

            *(v24 - 2) = v27;
            operator delete(v26);
          }

          v24 = v25;
        }

        while (v25 != v23);
        v22 = *(a1 + 8);
      }

      *(a1 + 16) = v23;
LABEL_78:
      operator delete(v22);
    }
  }

  else
  {
    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 24);
      if (v21 != v20)
      {
        do
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 24));
          }

          v21 -= 32;
        }

        while (v21 != v20);
        v22 = *(a1 + 24);
      }

      *(a1 + 32) = v20;
      goto LABEL_78;
    }
  }

  return a1;
}

void sub_DB710C(char ***a1, char **a2, char **a3, unint64_t a4)
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

    sub_1794();
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
          sub_146EC(v8, *v5, v5[1], (v5[1] - *v5) >> 2);
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
        sub_146EC(v8, *v18, v18[1], (v18[1] - *v18) >> 2);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_49D948(a1, (v5 + v16), a3, v15);
}

uint64_t sub_DB7378(uint64_t *a1, uint64_t a2, int *a3)
{
  v3 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v6 = 0x94F2094F2094F2;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  v25 = 8 * ((a1[1] - *a1) >> 3);
  sub_DB7694(v25, a2, *a3);
  v7 = 440 * v3 + 440;
  v8 = *a1;
  v9 = a1[1];
  v10 = 440 * v3 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v25 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      *(v12 + 63) = *(v11 + 63);
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 16) = v13;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 72) = 0;
      *(v12 + 72) = *(v11 + 72);
      *(v12 + 88) = *(v11 + 11);
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      v16 = *(v11 + 6);
      *(v12 + 112) = v11[112];
      *(v12 + 96) = v16;
      v17 = *(v11 + 120);
      *(v12 + 136) = *(v11 + 136);
      *(v12 + 120) = v17;
      *(v12 + 152) = *(v11 + 19);
      *(v12 + 160) = *(v11 + 10);
      *(v11 + 19) = 0;
      *(v11 + 20) = 0;
      *(v11 + 21) = 0;
      v18 = *(v11 + 22);
      *(v12 + 184) = *(v11 + 46);
      *(v12 + 176) = v18;
      v19 = *(v11 + 12);
      *(v12 + 208) = *(v11 + 26);
      *(v12 + 192) = v19;
      *(v11 + 25) = 0;
      *(v11 + 26) = 0;
      *(v11 + 24) = 0;
      v20 = *(v11 + 216);
      *(v12 + 232) = *(v11 + 29);
      *(v12 + 216) = v20;
      *(v11 + 28) = 0;
      *(v11 + 29) = 0;
      *(v11 + 27) = 0;
      v21 = *(v11 + 15);
      *(v12 + 256) = *(v11 + 32);
      *(v12 + 240) = v21;
      *(v11 + 30) = 0;
      *(v11 + 31) = 0;
      *(v11 + 32) = 0;
      v22 = *(v11 + 264);
      *(v12 + 280) = *(v11 + 35);
      *(v12 + 264) = v22;
      *(v11 + 33) = 0;
      *(v11 + 34) = 0;
      *(v11 + 35) = 0;
      v23 = *(v11 + 38);
      *(v12 + 288) = *(v11 + 18);
      *(v12 + 304) = v23;
      *(v12 + 312) = 0;
      *(v12 + 320) = 0;
      *(v12 + 328) = 0;
      *(v12 + 312) = *(v11 + 39);
      *(v12 + 320) = *(v11 + 20);
      *(v11 + 39) = 0;
      *(v11 + 40) = 0;
      *(v11 + 41) = 0;
      *(v12 + 336) = 0;
      *(v12 + 344) = 0;
      *(v12 + 352) = 0;
      *(v12 + 336) = *(v11 + 21);
      *(v12 + 352) = *(v11 + 44);
      *(v11 + 42) = 0;
      *(v11 + 43) = 0;
      *(v11 + 44) = 0;
      *(v12 + 360) = 0;
      *(v12 + 368) = 0;
      *(v12 + 376) = 0;
      *(v12 + 360) = *(v11 + 45);
      *(v12 + 368) = *(v11 + 23);
      *(v11 + 46) = 0;
      *(v11 + 47) = 0;
      *(v11 + 45) = 0;
      *(v12 + 384) = *(v11 + 24);
      *(v12 + 408) = 0;
      *(v12 + 416) = 0;
      *(v12 + 400) = 0;
      *(v12 + 400) = *(v11 + 25);
      *(v12 + 416) = *(v11 + 52);
      *(v11 + 50) = 0;
      *(v11 + 51) = 0;
      *(v11 + 52) = 0;
      *(v12 + 424) = *(v11 + 106);
      *(v12 + 432) = *(v11 + 54);
      v11 += 440;
      v12 += 440;
    }

    while (v11 != v9);
    do
    {
      v8 = (sub_44FDEC(v8) + 440);
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

void sub_DB7680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB7694(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 72) = 0;
  *(a1 + 16) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 72);
  v8 = *(a2 + 80);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v10;
  v11 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v11;
  sub_81988((a1 + 152), a2 + 152);
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = a3;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = -1;
  *(a1 + 392) = -1;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  return a1;
}

void sub_DB77C4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DB77E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
      while (1)
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_6;
        }

        v10 = *(v4 - 2);
        v7 = v8;
        if (v10 != v8)
        {
          break;
        }

LABEL_5:
        *(v4 - 2) = v8;
        operator delete(v7);
LABEL_6:
        v4 = v6;
        if (v6 == v5)
        {
          return a1;
        }
      }

      while (1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 3));
          v11 = v10 - 6;
          v12 = *(v10 - 6);
          if (v12)
          {
LABEL_16:
            v13 = *(v10 - 5);
            v14 = v12;
            if (v13 != v12)
            {
              do
              {
                v13 = sub_4547F0(v13 - 552);
              }

              while (v13 != v12);
              v14 = *v11;
            }

            *(v10 - 5) = v12;
            operator delete(v14);
          }
        }

        else
        {
          v11 = v10 - 6;
          v12 = *(v10 - 6);
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v10 = v11;
        if (v11 == v8)
        {
          v7 = *v6;
          goto LABEL_5;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_DB78E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateSelectionModule", 0x1CuLL);
  LOBYTE(v7) = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D0ACE4((a2 + 24), "Runtime", &v7, a1);
    *(a2 + 32) = v5;
    if (*(a1 + 8))
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v7, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    if (*(a1 + 8))
    {
      goto LABEL_9;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DB8054((a2 + 24), "Savings.none", &v8, &v7);
    v5 = result;
    *(a2 + 32) = result;
    if (!*(a1 + 8))
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8208(v5, "Savings.none", &v8, &v7);
    v5 += 48;
    *(a2 + 32) = v5;
    if (!*(a1 + 8))
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DB8358((a2 + 24), "Savings.>0s", &v8, &v7);
    v5 = result;
    *(a2 + 32) = result;
    if (*(a1 + 8) < 0x3Du)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB850C(v5, "Savings.>0s", &v8, &v7);
    v5 += 48;
    *(a2 + 32) = v5;
    if (*(a1 + 8) < 0x3Du)
    {
      goto LABEL_23;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DB8054((a2 + 24), "Savings.>60s", &v8, &v7);
    v5 = result;
    *(a2 + 32) = result;
    if (*(a1 + 8) < 0x5Bu)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8208(v5, "Savings.>60s", &v8, &v7);
    v5 += 48;
    *(a2 + 32) = v5;
    if (*(a1 + 8) < 0x5Bu)
    {
      goto LABEL_23;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DB8054((a2 + 24), "Savings.>90s", &v8, &v7);
    v5 = result;
    *(a2 + 32) = result;
    if (*(a1 + 8) < 0x79u)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8208(v5, "Savings.>90s", &v8, &v7);
    v5 += 48;
    *(a2 + 32) = v5;
    if (*(a1 + 8) < 0x79u)
    {
LABEL_23:
      if (*(a1 + 12) != 1)
      {
        return result;
      }

      goto LABEL_24;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DB865C((a2 + 24), "Savings.>120s", &v8, &v7);
    v5 = result;
    *(a2 + 32) = result;
    if (*(a1 + 8) < 0xB5u)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = sub_DB8810(v5, "Savings.>120s", &v8, &v7);
    v5 += 48;
    *(a2 + 32) = v5;
    if (*(a1 + 8) < 0xB5u)
    {
      goto LABEL_23;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DB865C((a2 + 24), "Savings.>180s", &v8, &v7);
    v5 = result;
    *(a2 + 32) = result;
    if (*(a1 + 12) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_DB8810(v5, "Savings.>180s", &v8, &v7);
    v5 += 48;
    *(a2 + 32) = v5;
    if (*(a1 + 12) != 1)
    {
      return result;
    }
  }

LABEL_24:
  v8 = 4;
  v7 = 1;
  if (v5 >= *(a2 + 40))
  {
    result = sub_DA9CE4((a2 + 24), "PreventedDeclinedDetour", &v8, &v7);
  }

  else
  {
    sub_DA9E98(v5, "PreventedDeclinedDetour", &v8, &v7);
    result = v5 + 48;
  }

  *(a2 + 32) = result;
  return result;
}

void sub_DB7CE0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_DB7DB4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xE21A291C077975B9 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_3EEA68(v10 - 1096);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x3BCBADC7F10D14)
    {
      v12 = 0xE21A291C077975B9 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1DE5D6E3F8868ALL)
      {
        v14 = 0x3BCBADC7F10D14;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3BCBADC7F10D14)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xE21A291C077975B9 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_4D4310(v8, v5);
        v5 += 1096;
        v8 += 1096;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1096;
      result = sub_3EEA68(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_4D4310(v8, v5);
        v5 += 1096;
        v8 += 1096;
        v16 -= 1096;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_3ED4B8(v15 + v19, v17 + v19);
        v19 += 1096;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_DB8028(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 1096;
    v7 = -v4;
    do
    {
      v6 = sub_3EEA68(v6) - 1096;
      v7 += 1096;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_DB8054(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DB8208(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DB81F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB8208(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DB8358(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DB850C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DB84F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB850C(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DB865C(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DB8810(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DB87FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DB8810(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DB8960(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateGuidanceModule", 0x1BuLL);
  v19 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D0ACE4((a2 + 24), "Runtime", &v19, a1);
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v19, a1);
    v5 = v4 + 48;
  }

  *(a2 + 32) = v5;
  v18 = 4;
  v17 = 1;
  if (v5 >= *(a2 + 40))
  {
    v6 = sub_D799AC((a2 + 24), "ETAUGuidanceProcessed", &v18, &v17);
    *(a2 + 32) = v6;
    v16 = 1;
    if (v6 >= *(a2 + 40))
    {
LABEL_6:
      v7 = sub_D0C808((a2 + 24), "UpdateUserRouteBuilding", &v16, a1 + 1);
      *(a2 + 32) = v7;
      v15 = 1;
      if (v7 >= *(a2 + 40))
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_D79B60(v5, "ETAUGuidanceProcessed", &v18, &v17);
    v6 = v5 + 48;
    *(a2 + 32) = v6;
    v16 = 1;
    if (v6 >= *(a2 + 40))
    {
      goto LABEL_6;
    }
  }

  sub_D0C9BC(v6, "UpdateUserRouteBuilding", &v16, a1 + 1);
  v7 = v6 + 48;
  *(a2 + 32) = v7;
  v15 = 1;
  if (v7 >= *(a2 + 40))
  {
LABEL_7:
    v8 = sub_D0CB0C((a2 + 24), "DodgeballDetection", &v15, a1 + 2);
    *(a2 + 32) = v8;
    v14 = 1;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_D0CCC0(v7, "DodgeballDetection", &v15, a1 + 2);
  v8 = v7 + 48;
  *(a2 + 32) = v8;
  v14 = 1;
  if (v8 >= *(a2 + 40))
  {
LABEL_8:
    v9 = sub_D0AFE8((a2 + 24), "DodgeballPopulation", &v14, a1 + 3);
    *(a2 + 32) = v9;
    v13 = 1;
    if (v9 >= *(a2 + 40))
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_D0B19C(v8, "DodgeballPopulation", &v14, a1 + 3);
  v9 = v8 + 48;
  *(a2 + 32) = v9;
  v13 = 1;
  if (v9 >= *(a2 + 40))
  {
LABEL_9:
    v10 = sub_DBB838((a2 + 24), "AlternateGuidanceBuilding", &v13, a1 + 4);
    *(a2 + 32) = v10;
    v12 = 1;
    if (v10 >= *(a2 + 40))
    {
LABEL_10:
      v11 = sub_D769CC((a2 + 24), "DisplayETAUpdate", &v12, a1 + 5);
      goto LABEL_17;
    }

LABEL_16:
    sub_D76B80(v10, "DisplayETAUpdate", &v12, a1 + 5);
    v11 = v10 + 48;
LABEL_17:
    *(a2 + 32) = v11;
    sub_DB8D64(a1 + 6, (a2 + 24));
  }

LABEL_15:
  sub_DBB9EC(v9, "AlternateGuidanceBuilding", &v13, a1 + 4);
  v10 = v9 + 48;
  *(a2 + 32) = v10;
  v12 = 1;
  if (v10 >= *(a2 + 40))
  {
    goto LABEL_10;
  }

  goto LABEL_16;
}

void sub_DB8C80(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBB698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DBB838(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBB9EC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBB9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBB9EC(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DBBB3C(void *a1, uint64_t *a2)
{
  if (*a1)
  {
    LOBYTE(v6) = 4;
    LODWORD(__p[0]) = 1;
    v3 = a2[1];
    if (v3 >= a2[2])
    {
      v4 = sub_DBC0B8(a2, "Notification.ETAUsIssuingDodgeballsCount", &v6, __p);
    }

    else
    {
      sub_DBC26C(a2[1], "Notification.ETAUsIssuingDodgeballsCount", &v6, __p);
      v4 = v3 + 48;
      a2[1] = v3 + 48;
    }

    a2[1] = v4;
  }

  operator new();
}

void sub_DBBDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DBBE04@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_DBC094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_DBC0B8(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBC26C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBC258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC26C(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBC3BC(uint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DBC58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC5A0(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DBC770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC784(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBC938(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBC924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBC938(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBCA88(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBCC3C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBCC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBCC3C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBCD8C(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBCF40(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBCF2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBCF40(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBD090(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBD244(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBD230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBD244(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

void sub_DBD394(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    operator new();
  }

  if (*a1 != 0x7FFFFFFF)
  {
    operator new();
  }

  operator new();
}

void sub_DBDB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_DBDBA0(void **a1)
{
  sub_77B480((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_44FDEC(v3 - 440);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_DBDC04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateAnalyticsModule", 0x1CuLL);
  LOBYTE(__p[0]) = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_CCEBC0((a2 + 24), "Runtime", __p, a1);
    *(a2 + 32) = v5;
    v6 = (a1 + 8);
    if (!*(a1 + 8))
    {
LABEL_3:
      LOBYTE(__p[0]) = 1;
      if (v5 < *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else
  {
    sub_CCED74(*(a2 + 32), "Runtime", __p, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    v6 = (a1 + 8);
    if (!*(a1 + 8))
    {
      goto LABEL_3;
    }
  }

  LOBYTE(__p[0]) = 2;
  if (v5 >= *(a2 + 40))
  {
    v5 = sub_D0CB0C((a2 + 24), "AnalyticsData.Size", __p, v6);
  }

  else
  {
    sub_D0CCC0(v5, "AnalyticsData.Size", __p, v6);
    v5 += 48;
  }

  *(a2 + 32) = v5;
  LOBYTE(__p[0]) = 1;
  if (v5 < *(a2 + 40))
  {
LABEL_4:
    sub_DBEBEC(v5, "FineGrainedETAAnalytics.Runtime", __p, (a1 + 16));
    v7 = v5 + 48;
    *(a2 + 32) = v7;
    LOBYTE(__p[0]) = 1;
    if (v7 >= *(a2 + 40))
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v7 = sub_DBEA38((a2 + 24), "FineGrainedETAAnalytics.Runtime", __p, (a1 + 16));
  *(a2 + 32) = v7;
  LOBYTE(__p[0]) = 1;
  if (v7 >= *(a2 + 40))
  {
LABEL_5:
    v8 = sub_DBED44((a2 + 24), "FineGrainedETAAnalytics.StackedExperiments.Runtime", __p, (a1 + 40));
    *(a2 + 32) = v8;
    LOBYTE(__p[0]) = 1;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_DBEEF8(v7, "FineGrainedETAAnalytics.StackedExperiments.Runtime", __p, (a1 + 40));
  v8 = v7 + 48;
  *(a2 + 32) = v8;
  LOBYTE(__p[0]) = 1;
  if (v8 >= *(a2 + 40))
  {
LABEL_6:
    v9 = sub_DBF050((a2 + 24), "FineGrainedETAAnalytics.ScenarioInstanceDetection.Runtime", __p, (a1 + 48));
    *(a2 + 32) = v9;
    LOBYTE(__p[0]) = 1;
    if (v9 >= *(a2 + 40))
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_DBF204(v8, "FineGrainedETAAnalytics.ScenarioInstanceDetection.Runtime", __p, (a1 + 48));
  v9 = v8 + 48;
  *(a2 + 32) = v9;
  LOBYTE(__p[0]) = 1;
  if (v9 >= *(a2 + 40))
  {
LABEL_7:
    v10 = sub_DBF35C((a2 + 24), "FineGrainedETAAnalytics.MessagePopulation.Runtime", __p, (a1 + 56));
    *(a2 + 32) = v10;
    v11 = (a1 + 24);
    if (!*(a1 + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  sub_DBF510(v9, "FineGrainedETAAnalytics.MessagePopulation.Runtime", __p, (a1 + 56));
  v10 = v9 + 48;
  *(a2 + 32) = v10;
  v11 = (a1 + 24);
  if (!*(a1 + 24))
  {
LABEL_8:
    v12 = (a1 + 32);
    if (!*(a1 + 32))
    {
      goto LABEL_9;
    }

LABEL_35:
    LOBYTE(__p[0]) = 4;
    if (v10 >= *(a2 + 40))
    {
      v10 = sub_DA69A0((a2 + 24), "FineGrainedETAAnalytics.NumSkippedExperiments", __p, v12);
      *(a2 + 32) = v10;
      v13 = (a1 + 36);
      if (*(a1 + 36))
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_DA6B54(v10, "FineGrainedETAAnalytics.NumSkippedExperiments", __p, v12);
      v10 += 48;
      *(a2 + 32) = v10;
      v13 = (a1 + 36);
      if (*(a1 + 36))
      {
        goto LABEL_39;
      }
    }

LABEL_10:
    LOBYTE(__p[0]) = 1;
    if (v10 < *(a2 + 40))
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_31:
  LOBYTE(__p[0]) = 2;
  if (v10 >= *(a2 + 40))
  {
    v10 = sub_389CC8((a2 + 24), "FineGrainedETAAnalytics.Size", __p, v11);
    *(a2 + 32) = v10;
    v12 = (a1 + 32);
    if (*(a1 + 32))
    {
      goto LABEL_35;
    }
  }

  else
  {
    sub_389E7C(v10, "FineGrainedETAAnalytics.Size", __p, v11);
    v10 += 48;
    *(a2 + 32) = v10;
    v12 = (a1 + 32);
    if (*(a1 + 32))
    {
      goto LABEL_35;
    }
  }

LABEL_9:
  v13 = (a1 + 36);
  if (!*(a1 + 36))
  {
    goto LABEL_10;
  }

LABEL_39:
  LOBYTE(__p[0]) = 4;
  if (v10 >= *(a2 + 40))
  {
    v10 = sub_D7C624((a2 + 24), "FineGrainedETAAnalytics.NumActiveExperiments", __p, v13);
  }

  else
  {
    sub_D7C7D8(v10, "FineGrainedETAAnalytics.NumActiveExperiments", __p, v13);
    v10 += 48;
  }

  *(a2 + 32) = v10;
  LOBYTE(__p[0]) = 1;
  if (v10 < *(a2 + 40))
  {
LABEL_11:
    sub_D11A7C(v10, "ClosureAnalytics.Runtime", __p, (a1 + 64));
    v14 = v10 + 48;
    *(a2 + 32) = v14;
    v15 = (a1 + 72);
    if (!*(a1 + 72))
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v14 = sub_D118C8((a2 + 24), "ClosureAnalytics.Runtime", __p, (a1 + 64));
  *(a2 + 32) = v14;
  v15 = (a1 + 72);
  if (!*(a1 + 72))
  {
LABEL_12:
    LOBYTE(__p[0]) = 1;
    if (v14 < *(a2 + 40))
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_44:
  LOBYTE(__p[0]) = 2;
  if (v14 >= *(a2 + 40))
  {
    v14 = sub_D0CE10((a2 + 24), "ClosureAnalytics.Size", __p, v15);
  }

  else
  {
    sub_D0CFC4(v14, "ClosureAnalytics.Size", __p, v15);
    v14 += 48;
  }

  *(a2 + 32) = v14;
  LOBYTE(__p[0]) = 1;
  if (v14 < *(a2 + 40))
  {
LABEL_13:
    sub_D7FA9C(v14, "TrajectoryAnalytics.Runtime", __p, (a1 + 80));
    v16 = v14 + 48;
    *(a2 + 32) = v16;
    v17 = (a1 + 88);
    if (!*(a1 + 88))
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = sub_D7F8E8((a2 + 24), "TrajectoryAnalytics.Runtime", __p, (a1 + 80));
  *(a2 + 32) = v16;
  v17 = (a1 + 88);
  if (!*(a1 + 88))
  {
LABEL_14:
    LOBYTE(__p[0]) = 1;
    if (v16 < *(a2 + 40))
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_49:
  LOBYTE(__p[0]) = 2;
  if (v16 >= *(a2 + 40))
  {
    v16 = sub_D0B5F0((a2 + 24), "TrajectoryAnalytics.Size", __p, v17);
  }

  else
  {
    sub_D0B7A4(v16, "TrajectoryAnalytics.Size", __p, v17);
    v16 += 48;
  }

  *(a2 + 32) = v16;
  LOBYTE(__p[0]) = 1;
  if (v16 < *(a2 + 40))
  {
LABEL_15:
    sub_CCFCB0(v16, "RouteAnalytics.Runtime", __p, (a1 + 96));
    v18 = v16 + 48;
    *(a2 + 32) = v18;
    v19 = (a1 + 104);
    if (!*(a1 + 104))
    {
      goto LABEL_16;
    }

LABEL_54:
    LOBYTE(__p[0]) = 2;
    if (v18 >= *(a2 + 40))
    {
      v18 = sub_D0AFE8((a2 + 24), "RouteAnalytics.Size", __p, v19);
      *(a2 + 32) = v18;
      v20 = (a1 + 112);
      if (*(a1 + 112))
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_D0B19C(v18, "RouteAnalytics.Size", __p, v19);
      v18 += 48;
      *(a2 + 32) = v18;
      v20 = (a1 + 112);
      if (*(a1 + 112))
      {
        goto LABEL_58;
      }
    }

LABEL_17:
    v21 = (a1 + 116);
    if (!*(a1 + 116))
    {
      goto LABEL_18;
    }

LABEL_62:
    v36.__r_.__value_.__s.__data_[0] = 4;
    LODWORD(__p[0]) = 0;
    if (v18 >= *(a2 + 40))
    {
      v18 = sub_D7FF0C((a2 + 24), "ClosureAnalytics.NumInactiveSoftClosures", &v36, v21, __p);
      *(a2 + 32) = v18;
      v22 = (a1 + 120);
      if (*(a1 + 120))
      {
        goto LABEL_66;
      }
    }

    else
    {
      sub_D800D0(v18, "ClosureAnalytics.NumInactiveSoftClosures", &v36, v21, __p);
      v18 += 48;
      *(a2 + 32) = v18;
      v22 = (a1 + 120);
      if (*(a1 + 120))
      {
        goto LABEL_66;
      }
    }

LABEL_19:
    v23 = (a1 + 124);
    if (!*(a1 + 124))
    {
      goto LABEL_20;
    }

LABEL_70:
    v36.__r_.__value_.__s.__data_[0] = 4;
    LODWORD(__p[0]) = 0;
    if (v18 >= *(a2 + 40))
    {
      v24 = sub_D80854((a2 + 24), "ClosureAnalytics.NumGeometryPatches", &v36, v23, __p);
    }

    else
    {
      sub_D80A18(v18, "ClosureAnalytics.NumGeometryPatches", &v36, v23, __p);
      v24 = v18 + 48;
    }

    *(a2 + 32) = v24;
    if (*(a1 + 141))
    {
      return;
    }

    goto LABEL_74;
  }

LABEL_53:
  v18 = sub_CCFAFC((a2 + 24), "RouteAnalytics.Runtime", __p, (a1 + 96));
  *(a2 + 32) = v18;
  v19 = (a1 + 104);
  if (*(a1 + 104))
  {
    goto LABEL_54;
  }

LABEL_16:
  v20 = (a1 + 112);
  if (!*(a1 + 112))
  {
    goto LABEL_17;
  }

LABEL_58:
  v36.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v18 >= *(a2 + 40))
  {
    v18 = sub_D7FBF4((a2 + 24), "ClosureAnalytics.NumActiveSoftClosures", &v36, v20, __p);
    *(a2 + 32) = v18;
    v21 = (a1 + 116);
    if (*(a1 + 116))
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_D7FDB8(v18, "ClosureAnalytics.NumActiveSoftClosures", &v36, v20, __p);
    v18 += 48;
    *(a2 + 32) = v18;
    v21 = (a1 + 116);
    if (*(a1 + 116))
    {
      goto LABEL_62;
    }
  }

LABEL_18:
  v22 = (a1 + 120);
  if (!*(a1 + 120))
  {
    goto LABEL_19;
  }

LABEL_66:
  v36.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 0;
  if (v18 >= *(a2 + 40))
  {
    v18 = sub_D80224((a2 + 24), "ClosureAnalytics.NumHardClosures", &v36, v22, __p);
    *(a2 + 32) = v18;
    v23 = (a1 + 124);
    if (*(a1 + 124))
    {
      goto LABEL_70;
    }
  }

  else
  {
    sub_D803E8(v18, "ClosureAnalytics.NumHardClosures", &v36, v22, __p);
    v18 += 48;
    *(a2 + 32) = v18;
    v23 = (a1 + 124);
    if (*(a1 + 124))
    {
      goto LABEL_70;
    }
  }

LABEL_20:
  if (*(a1 + 141))
  {
    return;
  }

LABEL_74:
  if ((*(a1 + 140) & 1) == 0)
  {
    v25 = *(a1 + 128);
    if (v25 != 0.0)
    {
      if (v25 <= 0.0)
      {
        v25 = -v25;
      }

      if (v25 >= 2.22044605e-16)
      {
        std::to_string(&v36, *(a1 + 136));
        v26 = std::string::insert(&v36, 0, "EV.PredictionError.RelativeErrorRate.KM_", 0x28uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v38 = v26->__r_.__value_.__r.__words[2];
        *__p = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v35 = 6;
        v28 = *(a1 + 128) * 100.0;
        v34 = v28;
        v33 = 1;
        v29 = *(a2 + 32);
        if (v29 >= *(a2 + 40))
        {
          v32 = sub_DBF668((a2 + 24), __p, &v35, &v34, &v33);
          v30 = HIBYTE(v38);
        }

        else
        {
          v30 = HIBYTE(v38);
          if (SHIBYTE(v38) < 0)
          {
            sub_325C(*(a2 + 32), __p[0], __p[1]);
          }

          else
          {
            v31 = *__p;
            *(v29 + 16) = v38;
            *v29 = v31;
          }

          *(v29 + 24) = 6;
          *(v29 + 32) = v28;
          *(v29 + 40) = 1;
          v32 = v29 + 48;
        }

        *(a2 + 32) = v32;
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_DBE5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 + 32) = v24;
  operator delete(__p);
  if (a17 < 0)
  {
    operator delete(a12);
    sub_9DA0(v23);
    _Unwind_Resume(a1);
  }

  sub_9DA0(v23);
  _Unwind_Resume(a1);
}

void sub_DBE638(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE664(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE690(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE6BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE6E8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE714(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE740(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE76C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE798(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE7C4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE7F0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE81C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE848(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE874(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE88C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE8B8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE8E4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE924(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DBE950(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DBE97C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 23) = 0;
  *(a1 + 39) = 0;
  *(a1 + 31) = 0;
  *(a1 + 47) = 0;
  sub_60AB38(a1 + 48);
  *(a1 + 7888) = 0u;
  *(a1 + 7872) = 0u;
  *(a1 + 7856) = 0u;
  return a1;
}

void sub_DBE9CC(_Unwind_Exception *a1)
{
  sub_5DAA94((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_DBE9F0(void *a1)
{
  v2 = a1[258];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[248];
  if (v3)
  {
    a1[249] = v3;
    operator delete(v3);
  }

  sub_77B480((a1 + 12));
  return a1;
}

uint64_t sub_DBEA38(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBEBEC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBEBD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBEBEC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBED44(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBEEF8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBEEE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBEEF8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBF050(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBF204(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBF1F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBF204(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBF35C(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DBF510(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_DBF4FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBF510(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DBF668(uint64_t *a1, uint64_t a2, char *a3, double *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((a1[1] - *a1) >> 4);
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v8 + *a1 - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v8 + 48;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 48;
}

void sub_DBF850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DBF864(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  if (*a1)
  {
    sub_DBF8E8(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_DBF8E8(uint64_t a1, void **a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 != a2)
  {
    v4 = *(a1 + 8);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (v7)
      {
        v26 = v4;
        v8 = *(v3 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          v25 = v3;
          while (1)
          {
            if (*(v8 - 1) < 0)
            {
              operator delete(*(v8 - 3));
              v10 = *(v8 - 13);
              if (v10)
              {
LABEL_17:
                v13 = *(v8 - 12);
                v14 = v10;
                if (v13 != v10)
                {
                  do
                  {
                    v13 = sub_3EEA68(v13 - 1096);
                  }

                  while (v13 != v10);
                  v14 = *(v8 - 13);
                }

                *(v8 - 12) = v10;
                operator delete(v14);
                v11 = v8 - 16;
                v12 = *(v8 - 16);
                if (!v12)
                {
                  goto LABEL_11;
                }

LABEL_21:
                v15 = *(v8 - 15);
                v9 = v12;
                if (v15 != v12)
                {
                  do
                  {
                    v16 = *(v15 - 3);
                    if (v16)
                    {
                      v17 = *(v15 - 2);
                      v18 = *(v15 - 3);
                      if (v17 != v16)
                      {
                        do
                        {
                          v19 = v17 - 32;
                          v20 = *(v17 - 2);
                          if (v20 != -1)
                          {
                            (off_2673E98[v20])(&v27, v17 - 32);
                          }

                          *(v17 - 2) = -1;
                          v17 -= 32;
                        }

                        while (v19 != v16);
                        v18 = *(v15 - 3);
                      }

                      *(v15 - 2) = v16;
                      operator delete(v18);
                    }

                    v21 = *(v15 - 8);
                    if (v21 != -1)
                    {
                      (off_2673E98[v21])(&v28, v15 - 7);
                    }

                    v22 = v15 - 10;
                    *(v15 - 8) = -1;
                    if (*(v15 - 57) < 0)
                    {
                      operator delete(*v22);
                    }

                    v15 -= 10;
                  }

                  while (v22 != v12);
                  v9 = *v11;
                }

                *(v8 - 15) = v12;
                operator delete(v9);
                goto LABEL_11;
              }
            }

            else
            {
              v10 = *(v8 - 13);
              if (v10)
              {
                goto LABEL_17;
              }
            }

            v11 = v8 - 16;
            v12 = *(v8 - 16);
            if (v12)
            {
              goto LABEL_21;
            }

LABEL_11:
            v8 = v11;
            if (v11 == v6)
            {
              v3 = v25;
              v5 = *v26;
              v2 = a2;
              break;
            }
          }
        }

        *(v3 - 2) = v6;
        operator delete(v5);
        v4 = v26;
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  *(a1 + 8) = v2;
}

uint64_t sub_DBFAE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingUpdateResponseBuilderModule", 0x22uLL);
  v8 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D0ACE4((a2 + 24), "Runtime", &v8, a1);
    *(a2 + 32) = v5;
    v7 = 2;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v8, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    v7 = 2;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      result = sub_D0B2EC((a2 + 24), "SessionState.Size", &v7, a1 + 1);
      *(a2 + 32) = result;
      return result;
    }
  }

  sub_D0B4A0(v5, "SessionState.Size", &v7, a1 + 1);
  result = v5 + 48;
  *(a2 + 32) = v5 + 48;
  return result;
}

void sub_DBFC08(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DBFC60(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2673EC8[v4])(&v15, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = *(a1 + 256);
    v8 = *(a1 + 248);
    if (v7 != v6)
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
      v8 = *(a1 + 248);
    }

    *(a1 + 256) = v6;
    operator delete(v8);
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    *(a1 + 184) = v10;
    operator delete(v10);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    *(a1 + 112) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 80) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    *(a1 + 16) = v13;
    operator delete(v13);
  }

  return a1;
}

void sub_DBFDA8(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a3;
  sub_E83344(a2, a1 + 1);
  operator new();
}

void sub_DBFFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D9FE7C(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_DBFFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingRouteSnappingModule", 0x1AuLL);
  v11 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D0ACE4((a2 + 24), "Runtime", &v11, a1);
    v6 = result;
    *(a2 + 32) = result;
    if (*(a1 + 8) != 1)
    {
LABEL_3:
      if (*(a1 + 9) != 1)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = sub_D0AE98(*(a2 + 32), "Runtime", &v11, a1);
    v6 = v4 + 48;
    *(a2 + 32) = v6;
    if (*(a1 + 8) != 1)
    {
      goto LABEL_3;
    }
  }

  v10 = 4;
  v9 = 1;
  if (v6 >= *(a2 + 40))
  {
    result = sub_D7557C((a2 + 24), "HasLocalWaypoints", &v10, &v9);
    v6 = result;
    *(a2 + 32) = result;
    if (*(a1 + 9) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_D75730(v6, "HasLocalWaypoints", &v10, &v9);
    v6 += 48;
    *(a2 + 32) = v6;
    if (*(a1 + 9) != 1)
    {
      return result;
    }
  }

LABEL_10:
  v8 = 4;
  v7 = 1;
  if (v6 >= *(a2 + 40))
  {
    result = sub_D75880((a2 + 24), "CrossesLocalArea", &v8, &v7);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D75A34(v6, "CrossesLocalArea", &v8, &v7);
    result = v6 + 48;
    *(a2 + 32) = v6 + 48;
  }

  return result;
}

void sub_DC01D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DC022C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_E82110(a2, a9, a1 + 128);
  *(a1 + 176) = a8;
  *(a1 + 184) = a7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a9;
  *(a1 + 216) = a10;
  *(a1 + 224) = sub_E82FAC(a2);
  *(a1 + 232) = *a6;
  v15 = sub_3B6890(*(a1 + 208));
  v16 = *v15;
  *(a1 + 140) = *(v15 + 8);
  *(a1 + 132) = v16;
  sub_1019024();
}

void sub_DC07B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  v53 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v53;
    operator delete(v53);
  }

  *(v48 + 64) = v51;
  sub_D78EB0(&__p);
  sub_D78EB0(&a48);
  v54 = *(v48 + 104);
  if (v54)
  {
    *(v48 + 112) = v54;
    operator delete(v54);
  }

  sub_5ECEBC(v50);
  sub_39393C((v48 + 56));
  sub_39393C(v49);
  v55 = *v48;
  if (*v48)
  {
    *(v48 + 8) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

BOOL sub_DC0888(unsigned int **a1, uint64_t a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = &(*a1)[v2];
  v5 = *(a2 + 8);
  do
  {
    v12.n128_u64[0] = *v3;
    v12.n128_u64[1] = &off_2669FE0;
    sub_434934(&v13, &v12);
    v8 = sub_434C20(v5, &v13);
    v9 = __p;
    if (__p)
    {
      v10 = v15;
      v6 = __p;
      if (v15 != __p)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 3));
          }

          v10 -= 4;
        }

        while (v10 != v9);
        v6 = __p;
      }

      v15 = v9;
      operator delete(v6);
    }

    v7 = ++v3 == v4 || v8;
  }

  while (v7 != 1);
  return v8;
}

void sub_DC096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

void sub_DC0980(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((8 * (v6 >> 3)), v11);
    v12 = (8 * (v6 >> 3) - v6);
    sub_CF031C(a1, v5, v4, v12);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = 8 * (v6 >> 3) + v11;
    if (v13)
    {
      operator delete(v13);
    }
  }
}

void sub_DC0B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC0B3C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v1 = **(a1 + 16);
    v2 = **(a1 + 8);
    if (v1 != v2)
    {
      v3 = **(a1 + 16);
      v24 = **(a1 + 8);
      do
      {
        v6 = *(v3 - 3);
        v3 -= 3;
        v5 = v6;
        if (v6)
        {
          v26 = v3;
          v7 = *(v1 - 2);
          v4 = v5;
          if (v7 != v5)
          {
            v25 = v1;
            while (1)
            {
              if (*(v7 - 1) < 0)
              {
                operator delete(*(v7 - 3));
                v9 = *(v7 - 13);
                if (v9)
                {
LABEL_18:
                  v12 = *(v7 - 12);
                  v13 = v9;
                  if (v12 != v9)
                  {
                    do
                    {
                      v12 = sub_3EEA68(v12 - 1096);
                    }

                    while (v12 != v9);
                    v13 = *(v7 - 13);
                  }

                  *(v7 - 12) = v9;
                  operator delete(v13);
                  v10 = v7 - 16;
                  v11 = *(v7 - 16);
                  if (!v11)
                  {
                    goto LABEL_12;
                  }

LABEL_22:
                  v14 = *(v7 - 15);
                  v8 = v11;
                  if (v14 != v11)
                  {
                    do
                    {
                      v15 = *(v14 - 3);
                      if (v15)
                      {
                        v16 = *(v14 - 2);
                        v17 = *(v14 - 3);
                        if (v16 != v15)
                        {
                          do
                          {
                            v18 = v16 - 32;
                            v19 = *(v16 - 2);
                            if (v19 != -1)
                            {
                              (off_2673E98[v19])(&v27, v16 - 32);
                            }

                            *(v16 - 2) = -1;
                            v16 -= 32;
                          }

                          while (v18 != v15);
                          v17 = *(v14 - 3);
                        }

                        *(v14 - 2) = v15;
                        operator delete(v17);
                      }

                      v20 = *(v14 - 8);
                      if (v20 != -1)
                      {
                        (off_2673E98[v20])(&v28, v14 - 7);
                      }

                      v21 = v14 - 10;
                      *(v14 - 8) = -1;
                      if (*(v14 - 57) < 0)
                      {
                        operator delete(*v21);
                      }

                      v14 -= 10;
                    }

                    while (v21 != v11);
                    v8 = *v10;
                  }

                  *(v7 - 15) = v11;
                  operator delete(v8);
                  goto LABEL_12;
                }
              }

              else
              {
                v9 = *(v7 - 13);
                if (v9)
                {
                  goto LABEL_18;
                }
              }

              v10 = v7 - 16;
              v11 = *(v7 - 16);
              if (v11)
              {
                goto LABEL_22;
              }

LABEL_12:
              v7 = v10;
              if (v10 == v5)
              {
                v1 = v25;
                v4 = *v26;
                v2 = v24;
                break;
              }
            }
          }

          *(v1 - 2) = v5;
          operator delete(v4);
          v3 = v26;
        }

        v1 = v3;
      }

      while (v3 != v2);
    }
  }

  return a1;
}

uint64_t sub_DC0D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_DC0E60(a1, a2);
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if (0x86BCA1AF286BCA1BLL * ((v5 - v6) >> 3) < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = *(a2 + 48);
  sub_DAF818(a1 + 56, (a2 + 56));
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  return a1;
}

void sub_DC0E38(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_CEFBD8(v1);
  _Unwind_Resume(a1);
}

void *sub_DC0E60(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_DC0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_DC0B3C(&a11);
  *(v11 + 8) = v12;
  sub_DC11B4(&a9);
  _Unwind_Resume(a1);
}

void sub_DC0FA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_DC1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 128;
    v15 = -v12;
    do
    {
      sub_60B38C(v14);
      v14 -= 128;
      v15 += 128;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_CDF538(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DC10A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3ED39C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_DC1184(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void ***sub_DC11B4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = **result;
    if (v1)
    {
      v2 = result;
      sub_DBF8E8(*result, v1);
      operator delete(**v2);
      return v2;
    }
  }

  return result;
}

void *sub_DC1204(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_DC13A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DC1694(va);
  _Unwind_Resume(a1);
}

void sub_DC13B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_DC15BC(va2);
  sub_DB77E4(va1);
  *(a3 + 8) = a2;
  sub_DC1694(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DC13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v8 = v6 - 24;
      sub_49E958(v4, *(v6 - 3), *(v6 - 2), 0xF128CFC4A33F128DLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 24), *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v7;
      }

      v4 = v10 + 48;
      v10 += 48;
      v6 += 3;
    }

    while (v8 + 48 != a3);
  }

  return v4;
}

void sub_DC14D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_DC1500(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v7 = v4 - 6;
          v8 = *(v4 - 6);
          if (v8)
          {
LABEL_10:
            v9 = *(v4 - 5);
            v10 = v8;
            if (v9 != v8)
            {
              do
              {
                v9 = sub_4547F0(v9 - 552);
              }

              while (v9 != v8);
              v10 = *v7;
            }

            *(v4 - 5) = v8;
            operator delete(v10);
          }
        }

        else
        {
          v7 = v4 - 6;
          v8 = *(v4 - 6);
          if (v8)
          {
            goto LABEL_10;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****sub_DC15BC(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_15:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = v4 - 6;
          v7 = *(v4 - 6);
          if (v7)
          {
LABEL_11:
            v8 = *(v4 - 5);
            v9 = v7;
            if (v8 != v7)
            {
              do
              {
                v8 = sub_4547F0(v8 - 552);
              }

              while (v8 != v7);
              v9 = *v6;
            }

            *(v4 - 5) = v7;
            operator delete(v9);
          }
        }

        else
        {
          v6 = v4 - 6;
          v7 = *(v4 - 6);
          if (v7)
          {
            goto LABEL_11;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_15;
        }
      }
    }
  }

  return a1;
}

void sub_DC1694(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 != v2)
  {
    v6 = v1[1];
    while (1)
    {
      v9 = *(v6 - 3);
      v6 -= 3;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = *(v4 - 2);
      v7 = v8;
      if (v10 != v8)
      {
        break;
      }

LABEL_5:
      *(v4 - 2) = v8;
      operator delete(v7);
LABEL_6:
      v4 = v6;
      if (v6 == v2)
      {
        v5 = **a1;
        goto LABEL_20;
      }
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v11 = v10 - 6;
        v12 = *(v10 - 6);
        if (v12)
        {
LABEL_16:
          v13 = *(v10 - 5);
          v14 = v12;
          if (v13 != v12)
          {
            do
            {
              v13 = sub_4547F0(v13 - 552);
            }

            while (v13 != v12);
            v14 = *v11;
          }

          *(v10 - 5) = v12;
          operator delete(v14);
        }
      }

      else
      {
        v11 = v10 - 6;
        v12 = *(v10 - 6);
        if (v12)
        {
          goto LABEL_16;
        }
      }

      v10 = v11;
      if (v11 == v8)
      {
        v7 = *v6;
        goto LABEL_5;
      }
    }
  }

LABEL_20:
  v1[1] = v2;

  operator delete(v5);
}

void sub_DC1910(_Unwind_Exception *a1)
{
  sub_419F70(v1 + 128);
  sub_419F70(v1);
  _Unwind_Resume(a1);
}

void sub_DC192C(_Unwind_Exception *a1)
{
  sub_DACA48((v1 + 312));
  sub_419F70(v2 + 128);
  sub_419F70(v2);
  _Unwind_Resume(a1);
}

void sub_DC1950(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = sub_6910B0();
  v12 = sub_E7C46C(a1);
  v13 = sub_394BD0();
  v14 = sub_394BD0();
  if (*(nullsub_1(a6) + 128) == 1)
  {
    v15 = nullsub_1(a6);
    v16 = sub_4F96C8(v15);
  }

  else
  {
    v16 = 0;
  }

  v60 = sub_E7C160(a1);
  v61 = v17;
  v18 = sub_3B6890(a7);
  v19 = *(v18 + 4);
  v20 = *(v18 + 8);
  sub_E8041C(a1, v56);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  if (!v20)
  {
    v21 = *a5;
    v22 = a5[1];
    if (*a5 != v22)
    {
      while (*(v21 + 176) == 1)
      {
        v21 += 440;
        if (v21 == v22)
        {
          goto LABEL_11;
        }
      }
    }

    if (v21 == v22)
    {
LABEL_11:
      v45[0] = 0;
      v45[1] = 0;
      v46 = 0;
    }

    else
    {
      *v45 = *(v21 + 288);
      v46 = *(v21 + 304);
    }

    HIBYTE(v53) = 15;
    strcpy(v52, "RerouteCategory");
    memset(__p, 0, 24);
    v23 = sub_3AEC94(a7, v52, __p);
    sub_4EB344(&v47, v23);
    v24 = sub_4EB3E0(v56, &v47);
    v25 = __p[0];
    if (__p[0])
    {
      v26 = __p[1];
      v27 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v28 = *(v26 - 1);
          v26 -= 3;
          if (v28 < 0)
          {
            operator delete(*v26);
          }
        }

        while (v26 != v25);
        v27 = __p[0];
      }

      __p[1] = v25;
      operator delete(v27);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    strcpy(__p, "FilteredRerouteHistory");
    HIBYTE(__p[2]) = 22;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v29 = sub_3AEC94(a7, __p, &v47);
    sub_4EAA24(v50, v29);
    sub_4EAA28(a6, v45, v19, v14, v24, v50, v52);
    v30 = v47;
    *v54 = *v52;
    v55 = v53;
    v52[1] = 0;
    v53 = 0;
    v52[0] = 0;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
      {
        do
        {
          v33 = *(v31 - 1);
          v31 -= 3;
          if (v33 < 0)
          {
            operator delete(*v31);
          }
        }

        while (v31 != v30);
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v52[0] = sub_4EF368(a6);
  LODWORD(v52[1]) = v34;
  sub_4ED880(a6, v45);
  v35 = sub_4EF5DC(a6);
  v36 = sub_4EF360(a6);
  sub_DAC7F8(a8, a3, a4, a2, v40, v12, v13, v14, v16, &v60, v54, v56, v52, v45, v35, v36);
  v37 = v45[1];
  if (v45[1])
  {
    v38 = v46;
    v39 = v45[1];
    if (v46 != v45[1])
    {
      do
      {
        v38 -= 72;
        sub_3E4690(v38);
      }

      while (v38 != v37);
      v39 = v45[1];
    }

    v46 = v37;
    operator delete(v39);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (v59)
  {
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void sub_DC1CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_44D36C(&a48);
  _Unwind_Resume(a1);
}

void sub_DC1D58(uint64_t a1, void *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = a2[4];
    v5 = a2[3];
    if (v4 != v3)
    {
      do
      {
        v4 = sub_49AEC0(v4 - 30);
      }

      while (v4 != v3);
      v5 = a2[3];
    }

    a2[4] = v3;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    v8 = *a2;
    if (v7 != v6)
    {
      do
      {
        v7 = sub_49AEC0(v7 - 30);
      }

      while (v7 != v6);
      v8 = *a2;
    }

    a2[1] = v6;

    operator delete(v8);
  }
}

void sub_DC1E00()
{
  byte_27B890F = 3;
  LODWORD(qword_27B88F8) = 5136193;
  byte_27B8927 = 3;
  LODWORD(qword_27B8910) = 5136194;
  byte_27B893F = 3;
  LODWORD(qword_27B8928) = 5136195;
  byte_27B8957 = 15;
  strcpy(&qword_27B8940, "vehicle_mass_kg");
  byte_27B896F = 21;
  strcpy(&xmmword_27B8958, "vehicle_cargo_mass_kg");
  byte_27B8987 = 19;
  strcpy(&qword_27B8970, "vehicle_aux_power_w");
  byte_27B899F = 15;
  strcpy(&qword_27B8988, "dcdc_efficiency");
  strcpy(&qword_27B89A0, "drive_train_efficiency");
  HIBYTE(word_27B89B6) = 22;
  operator new();
}

void sub_DC2208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B88B8)
  {
    qword_27B88C0 = qword_27B88B8;
    operator delete(qword_27B88B8);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_DC22FC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = *sub_3B8500(v3);
  v14 = sub_74700();
  __p = 0uLL;
  v17 = 0;
  v26[0] = 1851878480;
  v27 = 4;
  sub_D89468(&v28, &__p);
  v7 = __p;
  if (__p)
  {
    v8 = *(&__p + 1);
    v9 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v10 = *(v8 - 25);
        v8 -= 6;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    *(&__p + 1) = v7;
    operator delete(v9);
  }

  HIBYTE(v17) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(6, &__p, v6);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(v25);
  if (!sub_E8166C(v5) || (sub_3AF4C8(v4) & 1) != 0)
  {
    sub_DEF4CC(v5, v4, v26);
    if (sub_E8166C(v5))
    {
      __dst[0] = 4;
      LODWORD(__p) = 1;
      v11 = *v29;
      if (*v29 >= v30)
      {
        v12 = sub_D895C0(&v28, "RequestWithTrafficAttached", __dst, &__p);
      }

      else
      {
        sub_D89774(*v29, "RequestWithTrafficAttached", __dst, &__p);
        v12 = v11 + 48;
      }

      *v29 = v12;
    }

    if (sub_E7F33C(v5))
    {
      if (sub_3B6984(v4))
      {
        operator new();
      }
    }

    v24[91] = v14;
    v24[92] = v26;
    v24[93] = v25;
    v24[94] = v6;
    v24[95] = v4;
    v24[96] = v2;
    v24[86] = v6;
    v24[87] = v5;
    v24[88] = v25;
    v24[89] = v2;
    v24[90] = v4;
    sub_E79F40(v5, v24);
    v13 = sub_E7A5E0(v5);
    sub_4FC024(1, v13, v24);
    v23[23] = 8;
    strcpy(v23, "Historic");
    v22 = 4;
    strcpy(v21, "Live");
    *&__p = v5;
    DWORD2(__p) = 1;
    v17 = v4;
    LOBYTE(v18) = sub_E88F70(&__p);
    v19 = 0;
    sub_D11BD4(&__p, &v20);
  }

  operator new();
}

void sub_DC452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_D35A8C(&STACK[0xCF0]);
  sub_DB048C(&STACK[0x1200]);
  sub_CD5434(&STACK[0x1EB8]);
  sub_DC5E8C(v20 - 216);
  sub_D0F460(&STACK[0x2000]);
  sub_DB64A0(&STACK[0x33D8]);
  STACK[0x2000] = &STACK[0x3448];
  sub_DC6748(&STACK[0x2000]);
  sub_CF0134(&STACK[0x3460]);
  sub_DB6E14(&STACK[0x3510]);
  sub_CEBCA0(&STACK[0x3598]);
  sub_CDF878(v20 - 160);
  sub_CF0134(&STACK[0x3818]);
  sub_DAE40C(&STACK[0x38C8]);
  sub_419F70(&STACK[0x3B70]);
  sub_419F70(&STACK[0x3BF0]);
  sub_DB6E14(&STACK[0x3C78]);
  sub_CEBCA0(&STACK[0x3D00]);
  sub_DAAEFC(&STACK[0x3F80]);
  sub_D9F480(&STACK[0x4070]);
  sub_CD6274(&STACK[0x4278]);
  sub_CF4478(&STACK[0x42B0]);
  sub_D130AC(&STACK[0x4388]);
  if (SLOBYTE(STACK[0x43FF]) < 0)
  {
    operator delete(STACK[0x43E8]);
  }

  if (SLOBYTE(STACK[0x4417]) < 0)
  {
    operator delete(STACK[0x4400]);
  }

  sub_5287C0(&STACK[0x4418]);
  sub_9DA0(&STACK[0x4738]);
  _Unwind_Resume(a1);
}

uint64_t sub_DC4D28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_DC4D70(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v31.n128_u64[0] = a3;
  v31.n128_u64[1] = a4;
  sub_7C6B8(6, &v31, *a1);
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v18);
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
    v8 = *(a2 + 8);
  }

  sub_4A5C(&v18, v7, v8);
  if ((v28 & 0x10) != 0)
  {
    v10 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v10 = v24;
    }

    v11 = v23;
    v9 = v10 - v23;
    if (v10 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v9 = 0;
      v17 = 0;
LABEL_19:
      *(&__dst + v9) = 0;
      sub_7E854(&__dst, 3u);
      if (v17 < 0)
      {
        operator delete(__dst);
      }

      if (v26 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v20);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_24:
      v12 = a1[1];
      v13 = sub_7EA0C(a1[2]);
      v29 = v12;
      v30 = v13;
      sub_434934(&v14, &v31);
      sub_D7189C(v15, 0, &v14, a1[4], a1[1]);
    }

    v11 = v21;
    v9 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v17 = v9;
  if (v9)
  {
    memmove(&__dst, v11, v9);
  }

  goto LABEL_19;
}

void sub_DC51D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x3F0]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x3F0]);
  _Unwind_Resume(a1);
}

void sub_DC5220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_1758FB8(&STACK[0x3F0]);
  sub_1758FB8(&a63);
  sub_D7208C(&a19);
  sub_D71160(&a10);
  sub_CF3C94(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_DC5290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingDooMCountryFilterModule", 0x1EuLL);
  v9 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D0ACE4((a2 + 24), "Runtime", &v9, a1);
    v6 = result;
    *(a2 + 32) = result;
    if (*(a1 + 8) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_D0AE98(*(a2 + 32), "Runtime", &v9, a1);
    v6 = v4 + 48;
    *(a2 + 32) = v6;
    if (*(a1 + 8) != 1)
    {
      return result;
    }
  }

  v8 = 4;
  v7 = 1;
  if (v6 >= *(a2 + 40))
  {
    result = sub_DC5FCC((a2 + 24), "Filtered", &v8, &v7);
    *(a2 + 32) = result;
  }

  else
  {
    sub_DC6180(v6, "Filtered", &v8, &v7);
    result = v6 + 48;
    *(a2 + 32) = v6 + 48;
  }

  return result;
}

void sub_DC53E4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DC5428(uint64_t a1, const void **a2)
{
  sub_1757EA4(v68, 0, 0);
  v70 |= 0x400000u;
  v71 = 0;
  sub_EE1660(v68);
  v32[0].n128_u8[0] = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v41, 0, sizeof(v41));
  v49 = 0u;
  v48 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 5;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0x7FFFFFFF;
  v60 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  v61 = -1;
  v62 = 0x7FFFFFFF;
  v63 = 0;
  v64 = 0;
  v65 = -1;
  v66 = -1;
  v67 = 0;
  v4 = sub_73EC4(*a1);
  sub_4EC868(v32, v4);
  sub_4EE138(v32, 0);
  sub_4EF378(v32);
  sub_EE1810(v32, v68);
  LOBYTE(v30) = 1;
  v5 = *(a1 + 8);
  v25[0] = COERCE_VOID_(sub_7EA60(*(a1 + 16)));
  v6 = v5[4];
  if (v6 >= v5[5])
  {
    v7 = sub_D8B2BC(v5 + 3, "Runtime", &v30, v25);
  }

  else
  {
    sub_D8B470(v5[4], "Runtime", &v30, v25);
    v7 = v6 + 48;
    v5[4] = v6 + 48;
  }

  v5[4] = v7;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v8)
  {
    if (v8 + 8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v8 + 8 > 0x16)
    {
      operator new();
    }

    v25[1] = 0;
    v26 = 0;
    HIBYTE(v26) = v8 + 8;
    v25[0] = 0x2E656D69746E7552;
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(&v25[1], v9, v8);
    *(&v25[1] + v8) = 0;
    v31 = 1;
    v10 = *(a1 + 8);
    v11 = sub_7EA60(*(a1 + 16));
    v30 = v11;
    v12 = v10[4];
    if (v12 >= v10[5])
    {
      v10[4] = sub_DC62D0(v10 + 3, v25, &v31, &v30);
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_43;
    }

    v13 = v31;
    if (SHIBYTE(v26) < 0)
    {
      v24 = v11;
      sub_325C(v10[4], v25[0], v25[1]);
      v11 = v24;
    }

    else
    {
      v14 = *v25;
      *(v12 + 16) = v26;
      *v12 = v14;
    }

    *(v12 + 24) = v13;
    *(v12 + 32) = v11;
    *(v12 + 40) = 1;
    v10[4] = v12 + 48;
    v10[4] = v12 + 48;
    if (SHIBYTE(v26) < 0)
    {
LABEL_43:
      operator delete(v25[0]);
    }
  }

LABEL_18:
  sub_7C9C0(6, *(a1 + 8), *(a1 + 24));
  sub_3B2E78(*(a1 + 32), v25);
  sub_7C9C0(1, v25, *(a1 + 24));
  v15 = __p;
  if (__p)
  {
    v16 = v28;
    v17 = __p;
    if (v28 != __p)
    {
      do
      {
        v18 = *(v16 - 25);
        v16 -= 6;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p;
    }

    v28 = v15;
    operator delete(v17);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  v19 = *(a1 + 40);
  sub_1757EA4(v25, 0, 0);
  v20 = v25[1];
  if ((v25[1] & 2) != 0)
  {
    v20 = 0;
  }

  else if (v25[1])
  {
    v20 = *(v25[1] & 0xFFFFFFFFFFFFFFFCLL);
  }

  v21 = v69;
  if ((v69 & 2) != 0)
  {
    v21 = 0;
  }

  else if (v69)
  {
    v21 = *(v69 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v20 == v21)
  {
    sub_175C55C(v25, v68);
  }

  else
  {
    sub_175C1D0(v25, v68);
  }

  sub_1757EA4(v29, 0, 0);
  v22 = *(v19 + 24);
  if (!v22)
  {
    sub_2B7420();
  }

  (*(*v22 + 48))(v22, v25);
  sub_1758FB8(v29);
  sub_1758FB8(v25);
  sub_5287C0(v32);
  return sub_1758FB8(v68);
}

void sub_DC58B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v15 + 32) = v14;
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5287C0(&STACK[0x490]);
    sub_1758FB8(&STACK[0x740]);
    _Unwind_Resume(a1);
  }

  sub_5287C0(&STACK[0x490]);
  sub_1758FB8(&STACK[0x740]);
  _Unwind_Resume(a1);
}

uint64_t sub_DC59C4(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_CC97E8(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_CC999C(a1[1], a2, a3, a4);
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_DC5A2C(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v7 = sub_DA9CE4(a1, a2, a3, a4);
    a1[1] = v7;
    return v7 - 48;
  }

  else
  {
    sub_DA9E98(a1[1], a2, a3, a4);
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_DC5A94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingDooMSelectionModule", 0x1AuLL);
  v6 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D0ACE4((a2 + 24), "Runtime", &v6, a1);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v6, a1);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}