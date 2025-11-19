void sub_7EAB08(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  memset(v65, 0, sizeof(v65));
  v67 = 0;
  LODWORD(v68[0]) = -1;
  *(v68 + 3) = -1;
  memset(v68 + 7, 0, 26);
  v70 = 0;
  __p = 0uLL;
  v71 = 0;
  if ((*(a1 + 2510) & 1) == 0)
  {
    v7 = v68[0];
    *(a3 + 40) = v65[3];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v8;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = v7;
    v9 = *&v68[1];
    *(a3 + 112) = v68[3];
    *(a3 + 96) = v9;
    memset(&v68[1], 0, 24);
    *(a3 + 120) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    v70 = 0;
    __p = 0uLL;
    goto LABEL_5;
  }

  v6 = sub_7EB764(a1, a2);
  if (v6 == 5)
  {
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 88) = -1;
    *(a3 + 91) = -1;
    *(a3 + 95) = 0;
    *(a3 + 103) = 0;
    *(a3 + 111) = 0;
    *(a3 + 119) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
LABEL_5:
    *(a3 + 152) = 0;
    goto LABEL_6;
  }

  sub_92AC84(v6, &v61);
  if ((v63 & 0x80u) == 0)
  {
    v11 = v63;
  }

  else
  {
    v11 = v62;
  }

  if (v11 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 + 7 >= 0x17)
  {
    operator new();
  }

  v59[1] = 0;
  v60 = 0;
  HIBYTE(v60) = v11 + 7;
  strcpy(v59, "Driving");
  if (v11)
  {
    if ((v63 & 0x80u) == 0)
    {
      v12 = &v61;
    }

    else
    {
      v12 = v61;
    }

    memmove(v59 + 7, v12, v11);
  }

  *(v59 + v11 + 7) = 0;
  v13 = sub_9274F4(*(a1 + 4208), v59);
  if (__dst != v13)
  {
    v14 = *(v13 + 23);
    if (SHIBYTE(v65[0]) < 0)
    {
      if (v14 >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      if (v14 >= 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v13[1];
      }

      sub_13B38(__dst, v16, v17);
    }

    else if ((*(v13 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *v13, v13[1]);
    }

    else
    {
      v15 = *v13;
      v65[0] = v13[2];
      *__dst = v15;
    }
  }

  if (v6 <= 4)
  {
    sub_587F3C(dword_22A1B38[v6]);
  }

  v55 = 0;
  *v56 = -1;
  *&v56[3] = -1;
  *v53 = 0u;
  v54 = 0u;
  memset(&v56[7], 0, 33);
  v57 = 0uLL;
  v58 = 0uLL;
  v51[0] = v66;
  (sub_55D784)(v51, v66, v53);
  v68[0] = *v56;
  if (SHIBYTE(v68[3]) < 0)
  {
    operator delete(v68[1]);
  }

  *&v68[1] = *&v56[8];
  v68[3] = *&v56[24];
  v56[31] = 0;
  v56[8] = 0;
  LOBYTE(v68[4]) = v56[32];
  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p);
    __p = v57;
    v70 = v58;
    BYTE7(v58) = 0;
    LOBYTE(v57) = 0;
    v71 = BYTE8(v58);
    if ((v56[31] & 0x80000000) != 0)
    {
      operator delete(*&v56[8]);
    }
  }

  else
  {
    __p = v57;
    v70 = v58;
    BYTE7(v58) = 0;
    LOBYTE(v57) = 0;
    v71 = BYTE8(v58);
  }

  if (v55 != -1)
  {
    (off_266CCA8[v55])(v51, v53);
  }

  if ((*(a1 + 3991) & 1) != 0 || sub_4D1F6C(a2))
  {
    *a3 = *__dst;
    v18 = v65[3];
    *(a3 + 16) = v65[0];
    __dst[0] = 0;
    __dst[1] = 0;
    v19 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v19;
    *(a3 + 40) = v18;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = -1;
    v20 = v67;
    if (v67 == -1)
    {
LABEL_55:
      *(a3 + 88) = v68[0];
      *(a3 + 96) = *&v68[1];
      *(a3 + 112) = v68[3];
      memset(&v68[1], 0, 24);
      *(a3 + 120) = v68[4];
      *(a3 + 128) = __p;
      *(a3 + 144) = v70;
      v70 = 0;
      __p = 0uLL;
      *(a3 + 152) = v71;
      goto LABEL_56;
    }

LABEL_54:
    v53[0] = (a3 + 48);
    (off_266CCD0[v20])(v53, v66);
    *(a3 + 80) = v20;
    goto LABEL_55;
  }

  v21 = nullsub_1(a2);
  v22 = *v21;
  v23 = *(*v21 + 1176);
  if (v23 == *(v22 + 1184))
  {
    *a3 = *__dst;
    v30 = v65[3];
    *(a3 + 16) = v65[0];
    __dst[0] = 0;
    __dst[1] = 0;
    v31 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v31;
    *(a3 + 40) = v30;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = -1;
    v20 = v67;
    if (v67 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  *v53 = 0u;
  v54 = 0u;
  LODWORD(v55) = 1065353216;
  v24 = nullsub_1(v23);
  HIBYTE(v52) = 11;
  strcpy(v51, "{RouteName}");
  *&v49 = v51;
  v25 = sub_7F7DD4(v53, v51);
  v26 = (v25 + 5);
  if (v25 + 5 != v24)
  {
    v27 = *(v25 + 63);
    v28 = *(v24 + 23);
    if (v27 < 0)
    {
      if (v28 >= 0)
      {
        v32 = v24;
      }

      else
      {
        v32 = *v24;
      }

      if (v28 >= 0)
      {
        v33 = *(v24 + 23);
      }

      else
      {
        v33 = *(v24 + 8);
      }

      sub_13B38(v26, v32, v33);
    }

    else if ((*(v24 + 23) & 0x80) != 0)
    {
      sub_13A68(v26, *v24, *(v24 + 8));
    }

    else
    {
      v29 = *v24;
      *(v26 + 16) = *(v24 + 16);
      *v26 = v29;
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if ((v63 & 0x80u) == 0)
  {
    v34 = v63;
  }

  else
  {
    v34 = v62;
  }

  if (v34 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v34 + 17 >= 0x17)
  {
    operator new();
  }

  v50[0] = 103;
  v49 = *"Proactive_Driving";
  if (v34)
  {
    if ((v63 & 0x80u) == 0)
    {
      v35 = &v61;
    }

    else
    {
      v35 = v61;
    }

    memmove(v50 + 1, v35, v34);
  }

  *(v50 + v34 + 1) = 0;
  v36 = SHIBYTE(v50[0]);
  if ((SHIBYTE(v50[0]) & 0x8000000000000000) != 0)
  {
    v36 = *(&v49 + 1);
    v37 = (v50[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v37 - *(&v49 + 1)) < 0xA)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v50[0] & 0x7FFFFFFFFFFFFFFFuLL) < *(&v49 + 1) + 10 - v37)
      {
        sub_3244();
      }

LABEL_94:
      operator new();
    }

    v38 = v49;
  }

  else
  {
    if ((SHIBYTE(v50[0]) - 13) < 0xA)
    {
      goto LABEL_94;
    }

    v38 = &v49;
  }

  v39 = v38 + v36;
  *v39 = *"_RouteName";
  *(v39 + 4) = 25965;
  v40 = v36 + 10;
  if (SHIBYTE(v50[0]) < 0)
  {
    *(&v49 + 1) = v36 + 10;
  }

  else
  {
    HIBYTE(v50[0]) = v40 & 0x7F;
  }

  *(v38 + v40) = 0;
  *v51 = v49;
  v52 = v50[0];
  v41 = *(a1 + 4216);
  v47 = *(a1 + 4208);
  v48 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_6A58C4(v51, v53, &v47, 0, &v49);
  if (SHIBYTE(v65[3]) < 0)
  {
    operator delete(v65[1]);
  }

  *&v65[1] = v49;
  v65[3] = v50[0];
  HIBYTE(v50[0]) = 0;
  LOBYTE(v49) = 0;
  v42 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  *a3 = *__dst;
  *(a3 + 16) = v65[0];
  __dst[0] = 0;
  __dst[1] = 0;
  v65[0] = 0;
  *(a3 + 24) = *&v65[1];
  *(a3 + 40) = v65[3];
  memset(&v65[1], 0, 24);
  *(a3 + 48) = 0;
  *(a3 + 80) = -1;
  v43 = v67;
  if (v67 != -1)
  {
    *&v49 = a3 + 48;
    (off_266CCD0[v67])(&v49, v66);
    *(a3 + 80) = v43;
  }

  *(a3 + 88) = v68[0];
  *(a3 + 96) = *&v68[1];
  *(a3 + 112) = v68[3];
  memset(&v68[1], 0, 24);
  *(a3 + 120) = v68[4];
  *(a3 + 128) = __p;
  *(a3 + 144) = v70;
  v70 = 0;
  __p = 0uLL;
  *(a3 + 152) = v71;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  v44 = v54;
  if (v54)
  {
    while (1)
    {
      v45 = *v44;
      if (v44[63] < 0)
      {
        operator delete(*(v44 + 5));
        if ((v44[39] & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

LABEL_117:
        operator delete(*(v44 + 2));
        operator delete(v44);
        v44 = v45;
        if (!v45)
        {
          break;
        }
      }

      else
      {
        if (v44[39] < 0)
        {
          goto LABEL_117;
        }

LABEL_114:
        operator delete(v44);
        v44 = v45;
        if (!v45)
        {
          break;
        }
      }
    }
  }

  v46 = v53[0];
  v53[0] = 0;
  if (v46)
  {
    operator delete(v46);
  }

LABEL_56:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v63 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v61);
LABEL_6:
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v68[3]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v68[1]);
    v10 = v67;
    if (v67 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(__p);
  if (SHIBYTE(v68[3]) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = v67;
  if (v67 != -1)
  {
LABEL_12:
    (off_266CCA8[v10])(v53, v66);
  }

LABEL_13:
  v67 = -1;
  if ((SHIBYTE(v65[3]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v65[0]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(__dst[0]);
    return;
  }

  operator delete(v65[1]);
  if (SHIBYTE(v65[0]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_7EB674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a27);
  if (a46 < 0)
  {
    operator delete(a41);
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a52 & 0x80000000) == 0)
  {
LABEL_5:
    sub_594338(&a53);
    _Unwind_Resume(a1);
  }

  operator delete(a47);
  sub_594338(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_7EB764(uint64_t a1, unsigned int **a2)
{
  v4 = nullsub_1(a2);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 == v6)
  {
LABEL_5:
    if (!sub_E89A2C(*a1) || (*(a1 + 4032) & 1) != 0 || *(a1 + 3808) == 2)
    {
      v9 = sub_68C850(a2);
      v8 = sub_68C8EC(a2);
      return sub_92AA54(a1 + 4152, &v9, &v8);
    }
  }

  else
  {
    while (sub_4D26B4(v5, 0) != 0x7FFFFFFF && sub_4D26B4(v5, 1) != 0x7FFFFFFF)
    {
      v5 += 3164;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }
  }

  return 5;
}

void sub_7EB858(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*(a1 + 2506) == 1 && sub_67AEA4(a1 + 2576) && sub_68C590(a2) == 1)
  {
    if (!a3 || (v8 = nullsub_1(a2), v9 = *v8, v10 = v8[1], *v8 == v10))
    {
LABEL_8:
      sub_64B998(a4);
      a4[20] = 0;
      a4[21] = 0;
      a4[22] = 0;
      v11 = sub_68C590(a2);
      sub_663190(*(a1 + 4224), v11, 3, v12);
    }

    while (1)
    {
      sub_3B2A90(*a1);
      if ((sub_394BD0() & 1) == 0)
      {
        break;
      }

      v9 += 12656;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  sub_64B998(a4);
  a4[20] = 0;
  a4[21] = 0;
  a4[22] = 0;
}

void sub_7EB9E0(void **a1, void *a2)
{
  v4 = *sub_68F438(a2);
  __dst = 0uLL;
  v43 = 0;
  if (sub_67DFE4(v4))
  {
    v5 = sub_67E004(v4);
    v6 = nullsub_1(v5 + 504);
    if (&__dst != v6)
    {
      v7 = *(v6 + 23);
      if (SHIBYTE(v43) < 0)
      {
        if (v7 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = *v6;
        }

        if (v7 >= 0)
        {
          v15 = *(v6 + 23);
        }

        else
        {
          v15 = *(v6 + 8);
        }

        sub_13B38(&__dst, v14, v15);
      }

      else if ((*(v6 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v6, *(v6 + 8));
      }

      else
      {
        v8 = *v6;
        v43 = *(v6 + 16);
        __dst = v8;
      }
    }

    goto LABEL_46;
  }

  v9 = sub_3AF6B4(*a1);
  v10 = *sub_67E020(v4);
  sub_5E94A4(v9, v10, 0, &v39);
  sub_4E51E0(v9, v10 & 0xFFFFFFFFFFFFLL, &v37);
  sub_64AC90(&v35, &v37, 0);
  sub_735048(&v39, &v26);
  v11 = nullsub_1(&v26);
  if (&__dst != v11)
  {
    v12 = *(v11 + 23);
    if (SHIBYTE(v43) < 0)
    {
      if (v12 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v12 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = *(v11 + 8);
      }

      sub_13B38(&__dst, v16, v17);
    }

    else if ((*(v11 + 23) & 0x80) != 0)
    {
      sub_13A68(&__dst, *v11, *(v11 + 8));
    }

    else
    {
      v13 = *v11;
      v43 = *(v11 + 16);
      __dst = v13;
    }
  }

  if (v34 < 0)
  {
    operator delete(v33);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  else if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v29);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v27);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v35);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
LABEL_33:
    v18 = v39;
    if (!v39)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v37);
  v18 = v39;
  if (!v39)
  {
    goto LABEL_46;
  }

LABEL_42:
  v19 = v40;
  v20 = v18;
  if (v40 != v18)
  {
    do
    {
      v19 = sub_310F30(v19 - 144);
    }

    while (v19 != v18);
    v20 = v39;
  }

  v40 = v18;
  operator delete(v20);
LABEL_46:
  v21 = sub_68C454(a2, 0);
  v22 = *(v21 + 1176);
  if (v22 == *(v21 + 1184))
  {
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
  }

  else
  {
    v23 = nullsub_1(v22);
    if (*(v23 + 23) < 0)
    {
      sub_325C(&v35, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      v36 = *(v23 + 16);
      v35 = v24;
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0uLL;
  v38 = 0;
  v25 = HIBYTE(v43);
  if (v43 < 0)
  {
    v25 = *(&__dst + 1);
  }

  if (v25)
  {
    operator new();
  }

  operator new();
}

void sub_7EC2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v44 - 121) & 0x80000000) == 0)
  {
LABEL_3:
    if (a44 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(*(v44 - 144));
  if (a44 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((*(v44 - 89) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  if ((*(v44 - 89) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v44 - 112));
  _Unwind_Resume(a1);
}

void sub_7EC454()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x7EC444);
  }

  JUMPOUT(0x7EC3DCLL);
}

void sub_7EC464(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v6 = sub_7EB764(a1, a2);
  sub_92AC84(v6, &v55);
  v7 = sub_68C454(a2, 0);
  if ((*(a1 + 4140) & 1) != 0 || *(a1 + 3792) == 2)
  {
    v8 = 0;
    v9 = v57;
    if ((v57 & 0x80u) == 0)
    {
      v10 = v57;
    }

    else
    {
      v10 = v56;
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v7 + 1176) != *(v7 + 1184);
    v9 = v57;
    if ((v57 & 0x80u) == 0)
    {
      v10 = v57;
    }

    else
    {
      v10 = v56;
    }

    if (v10)
    {
LABEL_15:
      if (v10 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      v11 = v7;
      if (v10 + 17 >= 0x17)
      {
        operator new();
      }

      v54 = 103;
      HIBYTE(v54) = v10 + 17;
      v53 = *"Proactive_Driving";
      if (v10)
      {
        if ((v9 & 0x80u) == 0)
        {
          v12 = &v55;
        }

        else
        {
          v12 = v55;
        }

        memmove(&v54 + 1, v12, v10);
      }

      *(&v54 + v10 + 1) = 0;
      v50 = 0u;
      v51 = 0u;
      v52 = 1065353216;
      if (v8)
      {
        v13 = nullsub_1(*(v11 + 1176));
        v48[0] = "{RouteName}";
        v14 = sub_353894(&v50, "{RouteName}");
        v15 = (v14 + 5);
        if (v14 + 5 != v13)
        {
          v16 = *(v14 + 63);
          v17 = *(v13 + 23);
          if (v16 < 0)
          {
            if (v17 >= 0)
            {
              v19 = v13;
            }

            else
            {
              v19 = *v13;
            }

            if (v17 >= 0)
            {
              v20 = *(v13 + 23);
            }

            else
            {
              v20 = *(v13 + 8);
            }

            sub_13B38(v15, v19, v20);
          }

          else if ((*(v13 + 23) & 0x80) != 0)
          {
            sub_13A68(v15, *v13, *(v13 + 8));
          }

          else
          {
            v18 = *v13;
            *(v15 + 16) = *(v13 + 16);
            *v15 = v18;
          }
        }

        v21 = SHIBYTE(v54);
        if ((SHIBYTE(v54) & 0x8000000000000000) != 0)
        {
          v21 = *(&v53 + 1);
          if ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - *(&v53 + 1) < 0xA)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v54 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v53 + 1) + 10 - ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
            {
              sub_3244();
            }

LABEL_41:
            operator new();
          }

          v22 = v53;
        }

        else
        {
          if ((SHIBYTE(v54) - 13) < 0xA)
          {
            goto LABEL_41;
          }

          v22 = &v53;
        }

        qmemcpy(v22 + v21, "_RouteName", 10);
        v23 = v21 + 10;
        if (SHIBYTE(v54) < 0)
        {
          *(&v53 + 1) = v21 + 10;
        }

        else
        {
          HIBYTE(v54) = v23 & 0x7F;
        }

        *(v22 + v23) = 0;
      }

      v24 = *(a1 + 4216);
      v46 = *(a1 + 4208);
      v47 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_6A58C4(&v53, &v50, &v46, 0, v48);
      v25 = v47;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      v26 = *(a1 + 4208);
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      sub_7EDA50(&v45, v26, v48, __p);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
        v27 = a3[21];
        if (v27 < a3[22])
        {
          goto LABEL_55;
        }
      }

      else
      {
        v27 = a3[21];
        if (v27 < a3[22])
        {
LABEL_55:
          sub_64BC20(v27, &v45);
          v28 = v27 + 160;
          a3[21] = v27 + 160;
LABEL_58:
          a3[21] = v28;
          if (!v8)
          {
            goto LABEL_82;
          }

          v29 = (v57 & 0x80u) == 0 ? v57 : v56;
          if (!v29)
          {
            goto LABEL_82;
          }

          if (v29 + 17 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          v30 = *(a1 + 4208);
          if (v29 + 17 >= 0x17)
          {
            operator new();
          }

          v42.__r_.__value_.__r.__words[2] = 103;
          *&v42.__r_.__value_.__l.__data_ = *"Proactive_Driving";
          if ((v57 & 0x80u) == 0)
          {
            v31 = &v55;
          }

          else
          {
            v31 = v55;
          }

          memmove(&v42.__r_.__value_.__r.__words[2] + 1, v31, v29);
          *(&v42.__r_.__value_.__r.__words[2] + v29 + 1) = 0;
          v32 = sub_9274F4(v30, &v42);
          if (*(v32 + 23) < 0)
          {
            sub_325C(__p, *v32, v32[1]);
          }

          else
          {
            v33 = *v32;
            v44 = v32[2];
            *__p = v33;
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          v34 = *(a1 + 4208);
          v40[0] = 0;
          v40[1] = 0;
          v41 = 0;
          sub_7EDA50(&v42, v34, __p, v40);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
            v35 = a3[21];
            if (v35 < a3[22])
            {
              goto LABEL_76;
            }
          }

          else
          {
            v35 = a3[21];
            if (v35 < a3[22])
            {
LABEL_76:
              sub_64BC20(v35, &v42);
              v36 = v35 + 160;
              a3[21] = v35 + 160;
              goto LABEL_79;
            }
          }

          v36 = sub_5C4594(a3 + 20, &v42);
LABEL_79:
          a3[21] = v36;
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_83:
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_84;
              }

LABEL_88:
              operator delete(v48[0]);
              v37 = v51;
              if (!v51)
              {
                goto LABEL_95;
              }

              while (1)
              {
LABEL_92:
                v38 = *v37;
                if (v37[63] < 0)
                {
                  operator delete(*(v37 + 5));
                  if ((v37[39] & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

LABEL_94:
                  operator delete(*(v37 + 2));
                  operator delete(v37);
                  v37 = v38;
                  if (!v38)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {
                  if (v37[39] < 0)
                  {
                    goto LABEL_94;
                  }

LABEL_91:
                  operator delete(v37);
                  v37 = v38;
                  if (!v38)
                  {
                    goto LABEL_95;
                  }
                }
              }
            }

LABEL_87:
            operator delete(v45.__r_.__value_.__l.__data_);
            if ((v49 & 0x80000000) == 0)
            {
LABEL_84:
              v37 = v51;
              if (v51)
              {
                goto LABEL_92;
              }

LABEL_95:
              v39 = v50;
              *&v50 = 0;
              if (v39)
              {
                operator delete(v39);
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(v53);
                if ((v57 & 0x80) != 0)
                {
                  goto LABEL_99;
                }
              }

              else if ((v57 & 0x80) != 0)
              {
                goto LABEL_99;
              }

              return;
            }

            goto LABEL_88;
          }

LABEL_82:
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        }
      }

      v28 = sub_5C4594(a3 + 20, &v45);
      goto LABEL_58;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

  if ((v9 & 0x80) != 0)
  {
LABEL_99:
    operator delete(v55);
  }
}

void sub_7ECB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a43 < 0)
  {
    operator delete(a38);
    sub_2CD04(&a44);
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_2CD04(&a44);
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
LABEL_9:
      if (*(v44 - 97) < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(v44 - 144));
  if (*(v44 - 97) < 0)
  {
LABEL_10:
    operator delete(*(v44 - 120));
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

void sub_7ECC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1F1A8(&a24);
  sub_2CD04(&a29);
  if (*(v29 - 121) < 0)
  {
    JUMPOUT(0x7ECC60);
  }

  JUMPOUT(0x7ECC38);
}

void sub_7ECC98()
{
  if (*(v0 - 97) < 0)
  {
    JUMPOUT(0x7ECC40);
  }

  JUMPOUT(0x7ECC70);
}

void sub_7ECCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_2CD04(&a29);
  if (*(v29 - 121) < 0)
  {
    JUMPOUT(0x7ECC60);
  }

  JUMPOUT(0x7ECC38);
}

void sub_7ECCC0()
{
  if (*(v0 - 97) < 0)
  {
    JUMPOUT(0x7ECC40);
  }

  JUMPOUT(0x7ECC70);
}

std::string *sub_7ECCD0@<X0>(std::string *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  switch(a2)
  {
    case 1:
      *(a4 + 23) = 19;
      strcpy(a4, "Fastest_route_label");
      return result;
    case 2:
      *(a4 + 23) = 16;
      strcpy(a4, "Best_route_label");
      return result;
    case 3:
      v7 = "Suggested_route_label";
      goto LABEL_13;
    case 4:
      *(a4 + 23) = 20;
      *(a4 + 16) = 1818583649;
      v8 = "Simplest_route_label";
      goto LABEL_18;
    case 5:
      *(a4 + 23) = 11;
      strcpy(a4, "Fewer_turns");
      return result;
    case 6:
      *(a4 + 23) = 20;
      *(a4 + 16) = 1818583649;
      v8 = "Shortest_route_label";
LABEL_18:
      *a4 = *v8;
      *(a4 + 20) = 0;
      return result;
    case 7:
      *(a4 + 23) = 17;
      strcpy(a4, "Avoids_busy_roads");
      return result;
    case 8:
      v7 = "Alternate_route_label";
LABEL_13:
      *(a4 + 23) = 21;
      *a4 = *v7;
      *(a4 + 13) = *(v7 + 13);
      *(a4 + 21) = 0;
      return result;
    case 9:
      v5 = "Tolls_required";
      goto LABEL_29;
    case 10:
      v5 = "Toll_congestion_zone_required";
LABEL_29:
      v6 = "";
      goto LABEL_30;
    case 11:
      v10 = "Avoids_tolls";
      if (a3 && !result[158].__r_.__value_.__s.__data_[9])
      {
        v10 = "";
      }

      return sub_2345C(a4, v10);
    case 12:
      v5 = "Highways_required";
      v6 = "Highways_required_label";
      goto LABEL_30;
    case 13:
      v5 = "Avoids_highways";
      v6 = "Avoids_highways_label";
      goto LABEL_30;
    case 14:
      v5 = "Avoids_traffic";
      v6 = "Avoids_traffic_label";
      goto LABEL_30;
    case 15:
      v5 = "Avoids_ferries";
      v6 = "Avoids_ferries_label";
      goto LABEL_30;
    case 16:
      v5 = "Avoids_railway_shuttles";
      v6 = "Avoids_railway_shuttles_label";
LABEL_30:
      if (a3)
      {
        v10 = v6;
      }

      else
      {
        v10 = v5;
      }

      return sub_2345C(a4, v10);
    case 17:
      return sub_195A048(a4, "Avoids_environmental_zone_restrictions", 0x26uLL);
    case 18:
      *(a4 + 23) = 12;
      strcpy(a4, "Avoids_hills");
      return result;
    case 19:
      v9 = "Avoids_stairs";
      goto LABEL_23;
    case 20:
      *(a4 + 23) = 14;
      strcpy(a4, "Avoids_walking");
      return result;
    case 21:
      v9 = "Avoids_charge";
      goto LABEL_23;
    case 22:
      v9 = "Other_network";
LABEL_23:
      *(a4 + 23) = 13;
      *a4 = *v9;
      *(a4 + 5) = *(v9 + 5);
      *(a4 + 13) = 0;
      break;
    case 23:
      *(a4 + 23) = 15;
      strcpy(a4, "Fewer_emissions");
      break;
    case 24:
      if (a3)
      {
        v11 = 24;
      }

      else
      {
        v11 = 18;
      }

      if (a3)
      {
        operator new();
      }

      result = 0x696D61463A564544;
      qmemcpy(a4, "DEV:Familiar_rou", 16);
      *(a4 + 16) = (v11 << 56) | 0x6574;
      break;
    default:
      return result;
  }

  return result;
}

void sub_7ED130(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_7ED1B0@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (*a1 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (v3 != 8)
    {
      if (v3 == 9)
      {
        *(a2 + 23) = 20;
        strcpy(a2, "Detour_area_incident");
        return result;
      }

      if (v3 != 10)
      {
        return result;
      }

LABEL_17:
      v4 = "One_area_incident_included";
      v5 = 26;
      return sub_195A048(a2, v4, v5);
    }

    v4 = "Avoids_one_area_incident";
    v5 = 24;
    return sub_195A048(a2, v4, v5);
  }

  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        *(a2 + 23) = 18;
        strcpy(a2, "Avoids_area_events");
        break;
      case 4:
        *(a2 + 23) = 18;
        strcpy(a2, "Detour_area_events");
        break;
      case 5:
        *(a2 + 23) = 20;
        strcpy(a2, "Area_events_included");
        break;
    }

    return result;
  }

  if (v3 == 1)
  {
    *(a2 + 23) = 21;
    strcpy(a2, "Avoids_area_incidents");
    return result;
  }

  if (v3 == 2)
  {
    v4 = "Area_incidents_included";
    v5 = 23;
    return sub_195A048(a2, v4, v5);
  }

  return result;
}

void sub_7ED374(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_7ED390(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2 == 1)
  {
    sub_568F30(*(a2 + 8), "_Stop", *(a1 + 3544), 0, &v12);
    v4 = std::string::insert(&v12, 0, "MPR_NUM_STOPS", 0xDuLL);
    __p = *v4;
    v5 = __p.__r_.__value_.__r.__words[2];
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = HIBYTE(v5);
    if ((v6 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v6 & 0x80u) == 0)
    {
      size = v6;
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (size >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = size;
    if (size)
    {
      memmove(&__dst, p_p, size);
      *(&__dst + size) = 0;
      if (v15 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __toupper(p_p->__r_.__value_.__s.__data_[0]);
        p_dst = (p_dst + 1);
        p_p = (p_p + 1);
        --size;
      }

      while (size);
      v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = __dst;
      a3[2] = v15;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(v12.__r_.__value_.__l.__data_);
        return;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = __dst;
      a3[2] = v15;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }
}

void sub_7ED558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_7ED5CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 256))
  {
    switch(*(a2 + 256))
    {
      case 1:
        HIBYTE(__p[2]) = 11;
        *(__p + 7) = 1413565510;
        v5 = "MOSTLY_FLAT";
        goto LABEL_10;
      case 2:
        v7 = "GENTLY_UPHILL";
        goto LABEL_13;
      case 3:
        HIBYTE(__p[2]) = 15;
        strcpy(__p, "GENTLY_DOWNHILL");
        break;
      case 4:
        HIBYTE(__p[2]) = 11;
        *(__p + 7) = 1280067912;
        v5 = "GENTLE_HILL";
        goto LABEL_10;
      case 5:
        HIBYTE(__p[2]) = 12;
        strcpy(__p, "GENTLE_HILLS");
        break;
      case 6:
        HIBYTE(__p[2]) = 17;
        strcpy(__p, "MODERATELY_UPHILL");
        break;
      case 7:
        HIBYTE(__p[2]) = 19;
        strcpy(__p, "MODERATELY_DOWNHILL");
        break;
      case 8:
        v7 = "MODERATE_HILL";
LABEL_13:
        HIBYTE(__p[2]) = 13;
        __p[0] = *v7;
        *(__p + 5) = *(v7 + 5);
        BYTE5(__p[1]) = 0;
        break;
      case 9:
        v6 = "MODERATE_HILLS";
        goto LABEL_19;
      case 0xA:
        v6 = "STEEPLY_UPHILL";
        goto LABEL_19;
      case 0xB:
        HIBYTE(__p[2]) = 16;
        strcpy(__p, "STEEPLY_DOWNHILL");
        break;
      case 0xC:
        HIBYTE(__p[2]) = 10;
        strcpy(__p, "STEEP_HILL");
        break;
      case 0xD:
        HIBYTE(__p[2]) = 11;
        *(__p + 7) = 1397509193;
        v5 = "STEEP_HILLS";
LABEL_10:
        __p[0] = *v5;
        BYTE3(__p[1]) = 0;
        break;
      case 0xE:
        v6 = "CLIMB_DISTANCE";
LABEL_19:
        HIBYTE(__p[2]) = 14;
        __p[0] = *v6;
        *(__p + 6) = *(v6 + 6);
        BYTE6(__p[1]) = 0;
        break;
      default:
        memset(__p, 0, 24);
        break;
    }

    v8 = sub_9274F4(*(a1 + 4192), __p);
    sub_64C184(a3, v8);
    if (*(a2 + 256) == 14)
    {
      sub_64AEEC(&v9, 0);
      sub_64E428(a3, "{ClimbDistance}", a2, &v9);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_7ED878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7ED8D0(uint64_t a1, unsigned int *a2)
{
  result = a2[1];
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = *a2;
      if (v3 < 3)
      {
        return dword_22A1B4C[v3];
      }
    }

    else if (result == 3 && !*a2)
    {
      return 1;
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    return 0;
  }

  result = 3;
  switch(*a2)
  {
    case 1u:
    case 2u:
    case 4u:
    case 0x2Au:
    case 0x33u:
      return result;
    case 3u:
    case 5u:
    case 6u:
    case 0x2Fu:
      return 4;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x30u:
    case 0x31u:
      return 0;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x32u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      goto LABEL_5;
    default:
      if (*a2 != 999)
      {
        return 0;
      }

LABEL_5:
      result = 6;
      break;
  }

  return result;
}

void sub_7EDA50(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a4 + 8);
  }

  if (v7)
  {
    v8 = "Concatenate_Period";
  }

  else
  {
    v8 = "Instruction_Period";
  }

  v32 = 18;
  *__p = *v8;
  v30 = *(v8 + 8);
  v31 = 0;
  v9 = sub_9274F4(a2, __p);
  if (*(v9 + 23) < 0)
  {
    sub_325C(a1, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    a1->__r_.__value_.__r.__words[2] = v9[2];
    *&a1->__r_.__value_.__l.__data_ = v10;
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (size >= 14)
  {
    v13 = v12 + size;
    v14 = v12;
    do
    {
      v15 = memchr(v14, 123, size - 13);
      if (!v15)
      {
        break;
      }

      if (*v15 == 0x63757274736E697BLL && *(v15 + 6) == 0x7D316E6F69746375)
      {
        if (v15 != v13 && v15 - v12 != -1)
        {
          v17 = *(a3 + 23);
          if (v17 >= 0)
          {
            v18 = a3;
          }

          else
          {
            v18 = *a3;
          }

          if (v17 >= 0)
          {
            v19 = *(a3 + 23);
          }

          else
          {
            v19 = *(a3 + 8);
          }

          std::string::replace(a1, v15 - v12, 0xEuLL, v18, v19);
        }

        break;
      }

      v14 = (v15 + 1);
      size = v13 - v14;
    }

    while (v13 - v14 >= 14);
  }

  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  if (v21)
  {
    v22 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v22 & 0x80u) == 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v22 & 0x80u) != 0)
    {
      v22 = a1->__r_.__value_.__l.__size_;
    }

    if (v22 >= 14)
    {
      v24 = v23 + v22;
      v25 = v23;
      do
      {
        v26 = memchr(v25, 123, v22 - 13);
        if (!v26)
        {
          break;
        }

        if (*v26 == 0x63757274736E697BLL && *(v26 + 6) == 0x7D326E6F69746375)
        {
          if (v26 != v24 && v26 - v23 != -1)
          {
            if (v20 >= 0)
            {
              v28 = a4;
            }

            else
            {
              v28 = *a4;
            }

            std::string::replace(a1, v26 - v23, 0xEuLL, v28, v21);
          }

          return;
        }

        v25 = (v26 + 1);
        v22 = v24 - v25;
      }

      while (v24 - v25 >= 14);
    }
  }
}

void sub_7EDCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_7EDCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__src)
{
  *a1 = a2;
  memcpy((a1 + 8), __src, 0x92CuLL);
  if (__src[2375] < 0)
  {
    sub_325C((a1 + 2360), *(__src + 294), *(__src + 295));
  }

  else
  {
    v10 = *(__src + 147);
    *(a1 + 2376) = *(__src + 296);
    *(a1 + 2360) = v10;
  }

  v11 = *(__src + 2376);
  v12 = *(__src + 2392);
  v13 = *(__src + 2408);
  *(a1 + 2432) = *(__src + 2424);
  *(a1 + 2416) = v13;
  *(a1 + 2400) = v12;
  *(a1 + 2384) = v11;
  v14 = *(__src + 2440);
  v15 = *(__src + 2456);
  v16 = *(__src + 2472);
  *(a1 + 2496) = *(__src + 2488);
  *(a1 + 2480) = v16;
  *(a1 + 2464) = v15;
  *(a1 + 2448) = v14;
  v17 = *(__src + 2504);
  v18 = *(__src + 2520);
  v19 = *(__src + 2536);
  *(a1 + 2560) = *(__src + 2552);
  *(a1 + 2544) = v19;
  *(a1 + 2528) = v18;
  *(a1 + 2512) = v17;
  sub_527724(a1 + 2576, a4);
  sub_92AA50(a1 + 4152, a2);
  sub_21E2C18(a3, 4, *(a4 + 968));
}

void sub_7EDE2C(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v4);
  sub_1F1A8(v1 + v3);
  sub_528AB4(v1 + 2576);
  if (*(v1 + 2383) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_7EDE7C(std::string *a1, uint64_t a2, char *a3)
{
  v6 = sub_3EB950(a2);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      if ((*(v7 + 1162) & 1) == 0)
      {
        v9 = *v7;
        if (*v7 == 23)
        {
          if (!v7[2] && !*(v7 + 1136))
          {
            goto LABEL_4;
          }

          v9 = *v7;
        }

        if (v9 == 24 && !v7[2] && (v7[284] & 1) == 0 && a1[167].__r_.__value_.__s.__data_[18] == 1)
        {
          sub_64C184(a3, "{SFSymbol}");
          sub_588170(1, &v20);
          sub_64BF94(a3, "{SFSymbol}");
        }

        v10 = v7[2];
        v16[0] = *v7;
        v16[2] = v10;
        v17[0] = 0;
        v18 = 0;
        if (*(v7 + 1136) == 1)
        {
          sub_52B7D8(v17, (v7 + 4));
          v18 = 1;
        }

        v11 = *(v7 + 286);
        *&v19[15] = *(v7 + 1159);
        *v19 = v11;
        sub_7EE2C4(a1, v16, 0, &v20);
        if (v18 == 1)
        {
          sub_3A9518(v17);
        }

        sub_64C184(a3, &v20);
        v12 = a1[166].__r_.__value_.__s.__data_[7];
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (v12)
        {
          break;
        }
      }

LABEL_4:
      v7 += 292;
    }

    while (v7 != v8);
  }

  result = sub_3EB950(a2);
  for (i = *result; i != result[1]; i += 1168)
  {
    v15 = *i == 23 && *(i + 8) == 0;
    if (v15 && !*(i + 1136))
    {
      if (*a3 != *(a3 + 1))
      {
        memset(&v20, 0, sizeof(v20));
        sub_64FB18(a3, qword_22A18D8, &v20.__r_.__value_.__l.__data_);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      sub_64C184(a3, "{SFSymbol}");
      sub_588170(0, &v20);
      sub_64BF94(a3, "{SFSymbol}");
    }
  }

  return result;
}

void sub_7EE230(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_7EE2C4(std::string *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v8 = *(a2 + 8);
  if ((v8 - 6) > 4)
  {
    v11 = *a2;
    v26 = *a2;
    v27 = v8;
    v28[0] = 0;
    v29 = 0;
    if (*(a2 + 1136) == 1)
    {
      sub_52B7D8(v28, a2 + 16);
      v29 = 1;
      v11 = v26;
    }

    *v30 = *(a2 + 1144);
    *&v30[15] = *(a2 + 1159);
    v43 = 0;
    v42 = 0uLL;
    if (v11)
    {
      sub_7F17EC(a1, v11, a3, &v38);
    }

    else if (v27)
    {
      sub_7F1CCC(&v27, &v38);
    }

    else
    {
      if (*v30 != 1 || !*&v30[8])
      {
        goto LABEL_19;
      }

      sub_7F1EAC(a1, v30, &v38);
    }

    v42 = v38;
    v43 = v39;
LABEL_19:
    if (v29 == 1)
    {
      sub_3A9518(v28);
    }

    v12 = HIBYTE(v43);
    if (v43 < 0)
    {
      v12 = *(&v42 + 1);
    }

    if (v12)
    {
      v13 = sub_9274F4(a1[174].__r_.__value_.__r.__words[2], &v42);
      if (*(v13 + 23) < 0)
      {
        sub_325C(a4, *v13, v13[1]);
      }

      else
      {
        v14 = *v13;
        a4->__r_.__value_.__r.__words[2] = v13[2];
        *&a4->__r_.__value_.__l.__data_ = v14;
      }
    }

    else
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    return;
  }

  if ((*(a2 + 1136) & 1) == 0)
  {
    sub_4F0F0C();
  }

  sub_52B7D8(&v38, a2 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v31 = *a2;
  v32 = v10;
  v33[0] = 0;
  v34 = 0;
  if (*(a2 + 1136) == 1)
  {
    sub_52B7D8(v33, a2 + 16);
    v34 = 1;
    v9 = v31;
  }

  *v35 = *(a2 + 1144);
  *&v35[15] = *(a2 + 1159);
  v37 = 0;
  __p[0] = 0;
  __p[1] = 0;
  if (v9)
  {
    sub_7F17EC(a1, v9, a3, &v42);
  }

  else if (v32)
  {
    sub_7F1CCC(&v32, &v42);
  }

  else
  {
    if (*v35 != 1 || !*&v35[8])
    {
      goto LABEL_34;
    }

    sub_7F1EAC(a1, v35, &v42);
  }

  *__p = v42;
  v37 = v43;
LABEL_34:
  if (v34 == 1)
  {
    sub_3A9518(v33);
  }

  v15 = HIBYTE(v37);
  if (v37 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    v16 = sub_9274F4(a1[174].__r_.__value_.__r.__words[2], __p);
    if (*(v16 + 23) < 0)
    {
      sub_325C(a4, *v16, v16[1]);
    }

    else
    {
      v17 = *v16;
      a4->__r_.__value_.__r.__words[2] = v16[2];
      *&a4->__r_.__value_.__l.__data_ = v17;
    }

    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    if (size >= 14)
    {
      v20 = v19 + size;
      v21 = v19;
      do
      {
        v22 = memchr(v21, 123, size - 13);
        if (!v22)
        {
          break;
        }

        if (*v22 == 0x636E49616572417BLL && *(v22 + 6) == 0x7D746E656469636ELL)
        {
          if (v22 != v20 && v22 - v19 != -1)
          {
            if ((v41 & 0x80u) == 0)
            {
              v24 = v40;
            }

            else
            {
              v24 = v40[0];
            }

            if ((v41 & 0x80u) == 0)
            {
              v25 = v41;
            }

            else
            {
              v25 = v40[1];
            }

            std::string::replace(a4, v22 - v19, 0xEuLL, v24, v25);
          }

          break;
        }

        v21 = (v22 + 1);
        size = v20 - v21;
      }

      while (v20 - v21 >= 14);
    }
  }

  else
  {
    *(&a4->__r_.__value_.__s + 23) = 0;
    a4->__r_.__value_.__s.__data_[0] = 0;
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  sub_3A9518(&v38);
}

void sub_7EE698(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  sub_3A9518(&STACK[0x940]);
  _Unwind_Resume(a1);
}

void sub_7EE72C(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_64B998(a2);
  v5 = sub_68C7DC(a1);
  v4 = 1;
  sub_64E428(a2, "{distance}", &v5, &v4);
  sub_64C184(a2, "{distance}");
}

void sub_7EE80C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_68C5B4(a2);
  if (sub_67AE58(a1 + 2576) && *(a1 + 3996) == 1 && v6 != 0)
  {
    sub_568F30(v6, "_Stop", *(a1 + 3544), 0, v27);
    v14 = std::string::insert(v27, 0, "MPR_NUM_STOPS", 0xDuLL);
    v32 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v32 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v32 >= 0)
    {
      v16 = HIBYTE(v32);
    }

    else
    {
      v16 = __p[1];
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v30 = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
      *(&__dst + v16) = 0;
      if (v30 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __toupper(*v15);
        p_dst = (p_dst + 1);
        v15 = (v15 + 1);
        --v16;
      }

      while (v16);
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
LABEL_38:
        if ((v27[23] & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

LABEL_70:
        operator delete(*v27);
LABEL_39:
        std::to_string(&v26, v6);
        v32 = 0xC00000000000000;
        *__p = *"{StopsCount}";
        v33 = v26;
        memset(&v26, 0, sizeof(v26));
        memset(v27, 0, sizeof(v27));
        v28 = 1065353216;
        sub_2C7D4(v27, __p);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32) & 0x80000000) == 0)
          {
LABEL_41:
            if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_63;
          }
        }

        else if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        operator delete(__p[0]);
        if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          v18 = *(a1 + 4200);
          v24 = *(a1 + 4192);
          v25 = v18;
          if (!v18)
          {
LABEL_44:
            sub_6A58C4(&__dst, v27, &v24, 0, __p);
            v19 = v25;
            if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v19->__on_zero_shared)(v19);
              std::__shared_weak_count::__release_weak(v19);
            }

            sub_64C184(a3, __p);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
            }

            v20 = *&v27[16];
            if (!*&v27[16])
            {
LABEL_50:
              v21 = *v27;
              *v27 = 0;
              if (v21)
              {
                operator delete(v21);
              }

              if (v30 < 0)
              {
                operator delete(__dst);
              }

              return;
            }

            while (1)
            {
              v22 = *v20;
              if (*(v20 + 63) < 0)
              {
                operator delete(v20[5]);
                if (*(v20 + 39) < 0)
                {
LABEL_60:
                  operator delete(v20[2]);
                }
              }

              else if (*(v20 + 39) < 0)
              {
                goto LABEL_60;
              }

              operator delete(v20);
              v20 = v22;
              if (!v22)
              {
                goto LABEL_50;
              }
            }
          }

LABEL_43:
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_44;
        }

LABEL_63:
        operator delete(v26.__r_.__value_.__l.__data_);
        v18 = *(a1 + 4200);
        v24 = *(a1 + 4192);
        v25 = v18;
        if (!v18)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    if ((v27[23] & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_70;
  }

  if (*(a1 + 3991) == 1)
  {

    sub_7EDE7C(a1, a2, a3);
  }

  else if (sub_68EC58(a2))
  {
    v8 = *(a3 + 8);
    if (*a3 == v8)
    {
      v23 = sub_68EC68(a2);

      sub_64C184(a3, v23);
    }

    else
    {
      v9 = std::string::append((v8 - 24), qword_22A18D8, 6uLL);
      v10 = sub_68EC68(a2);
      v11 = v10[23];
      if (v11 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v10;
      }

      if (v11 >= 0)
      {
        v13 = v10[23];
      }

      else
      {
        v13 = *(v10 + 1);
      }

      std::string::append(v9, v12, v13);
    }
  }
}

void sub_7EECE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a18);
  if (a31 < 0)
  {
    operator delete(a26);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_7EEDD4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_64B9EC(a3, (a1 + 3753), qword_22A18D8);
  v7 = sub_68C7DC(a2);
  v6 = 1;
  sub_64E428(a3, "{distance}", &v7, &v6);
  sub_64C184(a3, "{distance}");
  sub_7EE80C(a1, a2, a3);
}

void sub_7EEE80(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_64B9EC(a3, (a1 + 3753), qword_22A18D8);
  if (*(a1 + 3991) == 1)
  {
    v6 = sub_3EB950(a2);
    if (*v6 != v6[1])
    {
      v7 = sub_3EB950(a2);
      v8 = *v7;
      if ((*(*v7 + 1160) & 1) == 0)
      {
        v9 = *(v8 + 8);
        v12[0] = *v8;
        v12[2] = v9;
        v13[0] = 0;
        v14 = 0;
        if (*(v8 + 1136) == 1)
        {
          sub_52B7D8(v13, v8 + 16);
          v14 = 1;
        }

        v10 = *(v8 + 1144);
        *&v15[15] = *(v8 + 1159);
        *v15 = v10;
        sub_7EE2C4(a1, v12, 1, &v16);
        if (v14 == 1)
        {
          sub_3A9518(v13);
        }

        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          sub_64C184(a3, &v16);
          if (*(v8 + 1144) == 1)
          {
            if (*(v8 + 1152))
            {
              sub_7EF05C(a1, v8 + 1144);
            }
          }
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_7EEFF4(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x478]) == 1)
  {
    sub_3A9518(v2 + 16);
    sub_53A868(v1);
    _Unwind_Resume(a1);
  }

  sub_53A868(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_7EF05C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (*a2 == 1 && result != 0)
  {
    std::to_string(&v4, result);
    sub_649C24(v5, "{StopsCount}");
  }

  return result;
}

void sub_7EF0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_53F320(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7EF114(_BYTE *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1[3991] & 1) == 0)
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  if (a1[2504] == 1)
  {
    v6 = sub_67AE68((a1 + 2576));
    if (v6 != 0x7FFFFFFF && v6 > SHIDWORD(v6))
    {
      __p[0] = 0x100000027;
      sub_5880E4(__p, a3);
      return;
    }
  }

  v7 = sub_3EB950(a2);
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    if (*(v8 + 1161))
    {
      goto LABEL_9;
    }

    v10 = sub_3EB950(a2);
    v11 = *v10;
    v12 = *v8;
    if (*v8 == **v10)
    {
      if (*(v8 + 8) == v11[2])
      {
        v13 = *(v8 + 1136);
        v14 = *(v11 + 1136);
        if (v13 != v14 || v13 == 0)
        {
          if (v13 == v14)
          {
            goto LABEL_8;
          }
        }

        else if (sub_65901C(v8 + 16, (v11 + 4)))
        {
          goto LABEL_8;
        }
      }

      v12 = *v8;
    }

    if (v12 == 23 && !*(v8 + 8) && (*(v8 + 1136) & 1) == 0)
    {
LABEL_8:
      if (sub_7EA908(a1, v8) >> 32)
      {
        operator new();
      }
    }

LABEL_9:
    v8 += 1168;
  }

  if (sub_68DFF0(a2))
  {
    operator new();
  }

  if (sub_68E388(a2))
  {
    operator new();
  }

  if ((sub_68D828(a2, 4) & 1) != 0 || sub_68D828(a2, 9))
  {
    operator new();
  }

  __p[0] = a1;
  sub_7F81D4(0, 0, __p, 0, 1);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 55) = 0;
  *(a3 + 63) = 0;
  *(a3 + 71) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
}

void sub_7EF6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_7EF718(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  memset(v65, 0, sizeof(v65));
  v67 = 0;
  LODWORD(v68[0]) = -1;
  *(v68 + 3) = -1;
  memset(v68 + 7, 0, 26);
  v70 = 0;
  __p = 0uLL;
  v71 = 0;
  if ((*(a1 + 2510) & 1) == 0)
  {
    v7 = v68[0];
    *(a3 + 40) = v65[3];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v8;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = v7;
    v9 = *&v68[1];
    *(a3 + 112) = v68[3];
    *(a3 + 96) = v9;
    memset(&v68[1], 0, 24);
    *(a3 + 120) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    v70 = 0;
    __p = 0uLL;
    goto LABEL_5;
  }

  v6 = sub_7EB764(a1, a2);
  if (v6 == 5)
  {
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 88) = -1;
    *(a3 + 91) = -1;
    *(a3 + 95) = 0;
    *(a3 + 103) = 0;
    *(a3 + 111) = 0;
    *(a3 + 119) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
LABEL_5:
    *(a3 + 152) = 0;
    goto LABEL_6;
  }

  sub_92AC84(v6, &v61);
  if ((v63 & 0x80u) == 0)
  {
    v11 = v63;
  }

  else
  {
    v11 = v62;
  }

  if (v11 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 + 7 >= 0x17)
  {
    operator new();
  }

  v59[1] = 0;
  v60 = 0;
  HIBYTE(v60) = v11 + 7;
  strcpy(v59, "Driving");
  if (v11)
  {
    if ((v63 & 0x80u) == 0)
    {
      v12 = &v61;
    }

    else
    {
      v12 = v61;
    }

    memmove(v59 + 7, v12, v11);
  }

  *(v59 + v11 + 7) = 0;
  v13 = sub_9274F4(*(a1 + 4208), v59);
  if (__dst != v13)
  {
    v14 = *(v13 + 23);
    if (SHIBYTE(v65[0]) < 0)
    {
      if (v14 >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      if (v14 >= 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v13[1];
      }

      sub_13B38(__dst, v16, v17);
    }

    else if ((*(v13 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *v13, v13[1]);
    }

    else
    {
      v15 = *v13;
      v65[0] = v13[2];
      *__dst = v15;
    }
  }

  if (v6 <= 4)
  {
    sub_587F3C(dword_22A1B38[v6]);
  }

  v55 = 0;
  *v56 = -1;
  *&v56[3] = -1;
  *v53 = 0u;
  v54 = 0u;
  memset(&v56[7], 0, 33);
  v57 = 0uLL;
  v58 = 0uLL;
  v51[0] = v66;
  (sub_55D784)(v51, v66, v53);
  v68[0] = *v56;
  if (SHIBYTE(v68[3]) < 0)
  {
    operator delete(v68[1]);
  }

  *&v68[1] = *&v56[8];
  v68[3] = *&v56[24];
  v56[31] = 0;
  v56[8] = 0;
  LOBYTE(v68[4]) = v56[32];
  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p);
    __p = v57;
    v70 = v58;
    BYTE7(v58) = 0;
    LOBYTE(v57) = 0;
    v71 = BYTE8(v58);
    if ((v56[31] & 0x80000000) != 0)
    {
      operator delete(*&v56[8]);
    }
  }

  else
  {
    __p = v57;
    v70 = v58;
    BYTE7(v58) = 0;
    LOBYTE(v57) = 0;
    v71 = BYTE8(v58);
  }

  if (v55 != -1)
  {
    (off_266CCA8[v55])(v51, v53);
  }

  if ((*(a1 + 3991) & 1) != 0 || sub_4D1F6C(a2))
  {
    *a3 = *__dst;
    v18 = v65[3];
    *(a3 + 16) = v65[0];
    __dst[0] = 0;
    __dst[1] = 0;
    v19 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v19;
    *(a3 + 40) = v18;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = -1;
    v20 = v67;
    if (v67 == -1)
    {
LABEL_55:
      *(a3 + 88) = v68[0];
      *(a3 + 96) = *&v68[1];
      *(a3 + 112) = v68[3];
      memset(&v68[1], 0, 24);
      *(a3 + 120) = v68[4];
      *(a3 + 128) = __p;
      *(a3 + 144) = v70;
      v70 = 0;
      __p = 0uLL;
      *(a3 + 152) = v71;
      goto LABEL_56;
    }

LABEL_54:
    v53[0] = (a3 + 48);
    (off_266CCD0[v20])(v53, v66);
    *(a3 + 80) = v20;
    goto LABEL_55;
  }

  v21 = nullsub_1(a2);
  v22 = *v21;
  v23 = *(*v21 + 1176);
  if (v23 == *(v22 + 1184))
  {
    *a3 = *__dst;
    v30 = v65[3];
    *(a3 + 16) = v65[0];
    __dst[0] = 0;
    __dst[1] = 0;
    v31 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v31;
    *(a3 + 40) = v30;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = -1;
    v20 = v67;
    if (v67 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  *v53 = 0u;
  v54 = 0u;
  LODWORD(v55) = 1065353216;
  v24 = nullsub_1(v23);
  HIBYTE(v52) = 11;
  strcpy(v51, "{RouteName}");
  *&v49 = v51;
  v25 = sub_7F7DD4(v53, v51);
  v26 = (v25 + 5);
  if (v25 + 5 != v24)
  {
    v27 = *(v25 + 63);
    v28 = *(v24 + 23);
    if (v27 < 0)
    {
      if (v28 >= 0)
      {
        v32 = v24;
      }

      else
      {
        v32 = *v24;
      }

      if (v28 >= 0)
      {
        v33 = *(v24 + 23);
      }

      else
      {
        v33 = *(v24 + 8);
      }

      sub_13B38(v26, v32, v33);
    }

    else if ((*(v24 + 23) & 0x80) != 0)
    {
      sub_13A68(v26, *v24, *(v24 + 8));
    }

    else
    {
      v29 = *v24;
      *(v26 + 16) = *(v24 + 16);
      *v26 = v29;
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if ((v63 & 0x80u) == 0)
  {
    v34 = v63;
  }

  else
  {
    v34 = v62;
  }

  if (v34 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v34 + 17 >= 0x17)
  {
    operator new();
  }

  v50[0] = 103;
  v49 = *"Proactive_Driving";
  if (v34)
  {
    if ((v63 & 0x80u) == 0)
    {
      v35 = &v61;
    }

    else
    {
      v35 = v61;
    }

    memmove(v50 + 1, v35, v34);
  }

  *(v50 + v34 + 1) = 0;
  v36 = SHIBYTE(v50[0]);
  if ((SHIBYTE(v50[0]) & 0x8000000000000000) != 0)
  {
    v36 = *(&v49 + 1);
    v37 = (v50[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v37 - *(&v49 + 1)) < 0xA)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v50[0] & 0x7FFFFFFFFFFFFFFFuLL) < *(&v49 + 1) + 10 - v37)
      {
        sub_3244();
      }

LABEL_94:
      operator new();
    }

    v38 = v49;
  }

  else
  {
    if ((SHIBYTE(v50[0]) - 13) < 0xA)
    {
      goto LABEL_94;
    }

    v38 = &v49;
  }

  v39 = v38 + v36;
  *v39 = *"_RouteName";
  *(v39 + 4) = 25965;
  v40 = v36 + 10;
  if (SHIBYTE(v50[0]) < 0)
  {
    *(&v49 + 1) = v36 + 10;
  }

  else
  {
    HIBYTE(v50[0]) = v40 & 0x7F;
  }

  *(v38 + v40) = 0;
  *v51 = v49;
  v52 = v50[0];
  v41 = *(a1 + 4216);
  v47 = *(a1 + 4208);
  v48 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_6A58C4(v51, v53, &v47, 0, &v49);
  if (SHIBYTE(v65[3]) < 0)
  {
    operator delete(v65[1]);
  }

  *&v65[1] = v49;
  v65[3] = v50[0];
  HIBYTE(v50[0]) = 0;
  LOBYTE(v49) = 0;
  v42 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  *a3 = *__dst;
  *(a3 + 16) = v65[0];
  __dst[0] = 0;
  __dst[1] = 0;
  v65[0] = 0;
  *(a3 + 24) = *&v65[1];
  *(a3 + 40) = v65[3];
  memset(&v65[1], 0, 24);
  *(a3 + 48) = 0;
  *(a3 + 80) = -1;
  v43 = v67;
  if (v67 != -1)
  {
    *&v49 = a3 + 48;
    (off_266CCD0[v67])(&v49, v66);
    *(a3 + 80) = v43;
  }

  *(a3 + 88) = v68[0];
  *(a3 + 96) = *&v68[1];
  *(a3 + 112) = v68[3];
  memset(&v68[1], 0, 24);
  *(a3 + 120) = v68[4];
  *(a3 + 128) = __p;
  *(a3 + 144) = v70;
  v70 = 0;
  __p = 0uLL;
  *(a3 + 152) = v71;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  v44 = v54;
  if (v54)
  {
    while (1)
    {
      v45 = *v44;
      if (v44[63] < 0)
      {
        operator delete(*(v44 + 5));
        if ((v44[39] & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

LABEL_117:
        operator delete(*(v44 + 2));
        operator delete(v44);
        v44 = v45;
        if (!v45)
        {
          break;
        }
      }

      else
      {
        if (v44[39] < 0)
        {
          goto LABEL_117;
        }

LABEL_114:
        operator delete(v44);
        v44 = v45;
        if (!v45)
        {
          break;
        }
      }
    }
  }

  v46 = v53[0];
  v53[0] = 0;
  if (v46)
  {
    operator delete(v46);
  }

LABEL_56:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v63 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v61);
LABEL_6:
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v68[3]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v68[1]);
    v10 = v67;
    if (v67 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(__p);
  if (SHIBYTE(v68[3]) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = v67;
  if (v67 != -1)
  {
LABEL_12:
    (off_266CCA8[v10])(v53, v66);
  }

LABEL_13:
  v67 = -1;
  if ((SHIBYTE(v65[3]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v65[0]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(__dst[0]);
    return;
  }

  operator delete(v65[1]);
  if (SHIBYTE(v65[0]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_7F0284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a27);
  if (a46 < 0)
  {
    operator delete(a41);
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a52 & 0x80000000) == 0)
  {
LABEL_5:
    sub_596F7C(&a53);
    _Unwind_Resume(a1);
  }

  operator delete(a47);
  sub_596F7C(&a53);
  _Unwind_Resume(a1);
}

void sub_7F0374(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*(a1 + 2506) == 1 && sub_67AEA4(a1 + 2576) && sub_68C590(a2) == 1)
  {
    if (!a3 || (v8 = nullsub_1(a2), v9 = *v8, v10 = *(v8 + 8), *v8 == v10))
    {
LABEL_8:
      sub_64B998(a4);
      a4[20] = 0;
      a4[21] = 0;
      a4[22] = 0;
      v12 = sub_68C590(a2);
      sub_663190(*(a1 + 4224), v12, 3, v13);
    }

    while (1)
    {
      v11 = sub_3B2A90(*a1);
      if ((sub_4B94D8(v11, v9) & 1) == 0)
      {
        break;
      }

      v9 += 1582;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  sub_64B998(a4);
  a4[20] = 0;
  a4[21] = 0;
  a4[22] = 0;
}

void sub_7F04FC(void **a1, void *a2)
{
  v4 = *sub_68F438(a2);
  __dst = 0uLL;
  v43 = 0;
  if (sub_67DFE4(v4))
  {
    v5 = sub_67E004(v4);
    v6 = nullsub_1(v5 + 504);
    if (&__dst != v6)
    {
      v7 = *(v6 + 23);
      if (SHIBYTE(v43) < 0)
      {
        if (v7 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = *v6;
        }

        if (v7 >= 0)
        {
          v15 = *(v6 + 23);
        }

        else
        {
          v15 = *(v6 + 8);
        }

        sub_13B38(&__dst, v14, v15);
      }

      else if ((*(v6 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v6, *(v6 + 8));
      }

      else
      {
        v8 = *v6;
        v43 = *(v6 + 16);
        __dst = v8;
      }
    }

    goto LABEL_46;
  }

  v9 = sub_3AF6B4(*a1);
  v10 = *sub_67E020(v4);
  sub_5E94A4(v9, v10, 0, &v39);
  sub_4E51E0(v9, v10 & 0xFFFFFFFFFFFFLL, &v37);
  sub_64AC90(&v35, &v37, 0);
  sub_738918(&v39, &v26);
  v11 = nullsub_1(&v26);
  if (&__dst != v11)
  {
    v12 = *(v11 + 23);
    if (SHIBYTE(v43) < 0)
    {
      if (v12 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v12 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = *(v11 + 8);
      }

      sub_13B38(&__dst, v16, v17);
    }

    else if ((*(v11 + 23) & 0x80) != 0)
    {
      sub_13A68(&__dst, *v11, *(v11 + 8));
    }

    else
    {
      v13 = *v11;
      v43 = *(v11 + 16);
      __dst = v13;
    }
  }

  if (v34 < 0)
  {
    operator delete(v33);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  else if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v29);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v27);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v35);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
LABEL_33:
    v18 = v39;
    if (!v39)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v37);
  v18 = v39;
  if (!v39)
  {
    goto LABEL_46;
  }

LABEL_42:
  v19 = v40;
  v20 = v18;
  if (v40 != v18)
  {
    do
    {
      v19 = sub_310F30(v19 - 144);
    }

    while (v19 != v18);
    v20 = v39;
  }

  v40 = v18;
  operator delete(v20);
LABEL_46:
  v21 = sub_68C454(a2, 0);
  v22 = *(v21 + 1176);
  if (v22 == *(v21 + 1184))
  {
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
  }

  else
  {
    v23 = nullsub_1(v22);
    if (*(v23 + 23) < 0)
    {
      sub_325C(&v35, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      v36 = *(v23 + 16);
      v35 = v24;
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0uLL;
  v38 = 0;
  v25 = HIBYTE(v43);
  if (v43 < 0)
  {
    v25 = *(&__dst + 1);
  }

  if (v25)
  {
    operator new();
  }

  operator new();
}

void sub_7F0DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v44 - 121) & 0x80000000) == 0)
  {
LABEL_3:
    if (a44 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(*(v44 - 144));
  if (a44 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((*(v44 - 89) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  if ((*(v44 - 89) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v44 - 112));
  _Unwind_Resume(a1);
}

void sub_7F0F70()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x7F0F60);
  }

  JUMPOUT(0x7F0EF8);
}

void sub_7F0F80(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v6 = sub_7EB764(a1, a2);
  sub_92AC84(v6, &v55);
  v7 = sub_68C454(a2, 0);
  if ((*(a1 + 4140) & 1) != 0 || *(a1 + 3792) == 2)
  {
    v8 = 0;
    v9 = v57;
    if ((v57 & 0x80u) == 0)
    {
      v10 = v57;
    }

    else
    {
      v10 = v56;
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v7 + 1176) != *(v7 + 1184);
    v9 = v57;
    if ((v57 & 0x80u) == 0)
    {
      v10 = v57;
    }

    else
    {
      v10 = v56;
    }

    if (v10)
    {
LABEL_15:
      if (v10 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      v11 = v7;
      if (v10 + 17 >= 0x17)
      {
        operator new();
      }

      v54 = 103;
      HIBYTE(v54) = v10 + 17;
      v53 = *"Proactive_Driving";
      if (v10)
      {
        if ((v9 & 0x80u) == 0)
        {
          v12 = &v55;
        }

        else
        {
          v12 = v55;
        }

        memmove(&v54 + 1, v12, v10);
      }

      *(&v54 + v10 + 1) = 0;
      v50 = 0u;
      v51 = 0u;
      v52 = 1065353216;
      if (v8)
      {
        v13 = nullsub_1(*(v11 + 1176));
        v48[0] = "{RouteName}";
        v14 = sub_353894(&v50, "{RouteName}");
        v15 = (v14 + 5);
        if (v14 + 5 != v13)
        {
          v16 = *(v14 + 63);
          v17 = *(v13 + 23);
          if (v16 < 0)
          {
            if (v17 >= 0)
            {
              v19 = v13;
            }

            else
            {
              v19 = *v13;
            }

            if (v17 >= 0)
            {
              v20 = *(v13 + 23);
            }

            else
            {
              v20 = *(v13 + 8);
            }

            sub_13B38(v15, v19, v20);
          }

          else if ((*(v13 + 23) & 0x80) != 0)
          {
            sub_13A68(v15, *v13, *(v13 + 8));
          }

          else
          {
            v18 = *v13;
            *(v15 + 16) = *(v13 + 16);
            *v15 = v18;
          }
        }

        v21 = SHIBYTE(v54);
        if ((SHIBYTE(v54) & 0x8000000000000000) != 0)
        {
          v21 = *(&v53 + 1);
          if ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - *(&v53 + 1) < 0xA)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v54 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v53 + 1) + 10 - ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
            {
              sub_3244();
            }

LABEL_41:
            operator new();
          }

          v22 = v53;
        }

        else
        {
          if ((SHIBYTE(v54) - 13) < 0xA)
          {
            goto LABEL_41;
          }

          v22 = &v53;
        }

        qmemcpy(v22 + v21, "_RouteName", 10);
        v23 = v21 + 10;
        if (SHIBYTE(v54) < 0)
        {
          *(&v53 + 1) = v21 + 10;
        }

        else
        {
          HIBYTE(v54) = v23 & 0x7F;
        }

        *(v22 + v23) = 0;
      }

      v24 = *(a1 + 4216);
      v46 = *(a1 + 4208);
      v47 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_6A58C4(&v53, &v50, &v46, 0, v48);
      v25 = v47;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      v26 = *(a1 + 4208);
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      sub_7EDA50(&v45, v26, v48, __p);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
        v27 = a3[21];
        if (v27 < a3[22])
        {
          goto LABEL_55;
        }
      }

      else
      {
        v27 = a3[21];
        if (v27 < a3[22])
        {
LABEL_55:
          sub_64BC20(v27, &v45);
          v28 = v27 + 160;
          a3[21] = v27 + 160;
LABEL_58:
          a3[21] = v28;
          if (!v8)
          {
            goto LABEL_82;
          }

          v29 = (v57 & 0x80u) == 0 ? v57 : v56;
          if (!v29)
          {
            goto LABEL_82;
          }

          if (v29 + 17 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          v30 = *(a1 + 4208);
          if (v29 + 17 >= 0x17)
          {
            operator new();
          }

          v42.__r_.__value_.__r.__words[2] = 103;
          *&v42.__r_.__value_.__l.__data_ = *"Proactive_Driving";
          if ((v57 & 0x80u) == 0)
          {
            v31 = &v55;
          }

          else
          {
            v31 = v55;
          }

          memmove(&v42.__r_.__value_.__r.__words[2] + 1, v31, v29);
          *(&v42.__r_.__value_.__r.__words[2] + v29 + 1) = 0;
          v32 = sub_9274F4(v30, &v42);
          if (*(v32 + 23) < 0)
          {
            sub_325C(__p, *v32, v32[1]);
          }

          else
          {
            v33 = *v32;
            v44 = v32[2];
            *__p = v33;
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          v34 = *(a1 + 4208);
          v40[0] = 0;
          v40[1] = 0;
          v41 = 0;
          sub_7EDA50(&v42, v34, __p, v40);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
            v35 = a3[21];
            if (v35 < a3[22])
            {
              goto LABEL_76;
            }
          }

          else
          {
            v35 = a3[21];
            if (v35 < a3[22])
            {
LABEL_76:
              sub_64BC20(v35, &v42);
              v36 = v35 + 160;
              a3[21] = v35 + 160;
              goto LABEL_79;
            }
          }

          v36 = sub_5C4594(a3 + 20, &v42);
LABEL_79:
          a3[21] = v36;
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_83:
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_84;
              }

LABEL_88:
              operator delete(v48[0]);
              v37 = v51;
              if (!v51)
              {
                goto LABEL_95;
              }

              while (1)
              {
LABEL_92:
                v38 = *v37;
                if (v37[63] < 0)
                {
                  operator delete(*(v37 + 5));
                  if ((v37[39] & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

LABEL_94:
                  operator delete(*(v37 + 2));
                  operator delete(v37);
                  v37 = v38;
                  if (!v38)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {
                  if (v37[39] < 0)
                  {
                    goto LABEL_94;
                  }

LABEL_91:
                  operator delete(v37);
                  v37 = v38;
                  if (!v38)
                  {
                    goto LABEL_95;
                  }
                }
              }
            }

LABEL_87:
            operator delete(v45.__r_.__value_.__l.__data_);
            if ((v49 & 0x80000000) == 0)
            {
LABEL_84:
              v37 = v51;
              if (v51)
              {
                goto LABEL_92;
              }

LABEL_95:
              v39 = v50;
              *&v50 = 0;
              if (v39)
              {
                operator delete(v39);
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(v53);
                if ((v57 & 0x80) != 0)
                {
                  goto LABEL_99;
                }
              }

              else if ((v57 & 0x80) != 0)
              {
                goto LABEL_99;
              }

              return;
            }

            goto LABEL_88;
          }

LABEL_82:
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        }
      }

      v28 = sub_5C4594(a3 + 20, &v45);
      goto LABEL_58;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

  if ((v9 & 0x80) != 0)
  {
LABEL_99:
    operator delete(v55);
  }
}

void sub_7F1698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a43 < 0)
  {
    operator delete(a38);
    sub_2CD04(&a44);
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_2CD04(&a44);
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
LABEL_9:
      if (*(v44 - 97) < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(v44 - 144));
  if (*(v44 - 97) < 0)
  {
LABEL_10:
    operator delete(*(v44 - 120));
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

void sub_7F1794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1F1A8(&a24);
  sub_2CD04(&a29);
  if (*(v29 - 121) < 0)
  {
    JUMPOUT(0x7F177CLL);
  }

  JUMPOUT(0x7F1754);
}

void sub_7F17B4()
{
  if (*(v0 - 97) < 0)
  {
    JUMPOUT(0x7F175CLL);
  }

  JUMPOUT(0x7F178CLL);
}

void sub_7F17C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_2CD04(&a29);
  if (*(v29 - 121) < 0)
  {
    JUMPOUT(0x7F177CLL);
  }

  JUMPOUT(0x7F1754);
}

void sub_7F17DC()
{
  if (*(v0 - 97) < 0)
  {
    JUMPOUT(0x7F175CLL);
  }

  JUMPOUT(0x7F178CLL);
}

std::string *sub_7F17EC@<X0>(std::string *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  switch(a2)
  {
    case 1:
      *(a4 + 23) = 19;
      strcpy(a4, "Fastest_route_label");
      return result;
    case 2:
      *(a4 + 23) = 16;
      strcpy(a4, "Best_route_label");
      return result;
    case 3:
      v7 = "Suggested_route_label";
      goto LABEL_13;
    case 4:
      *(a4 + 23) = 20;
      *(a4 + 16) = 1818583649;
      v8 = "Simplest_route_label";
      goto LABEL_18;
    case 5:
      *(a4 + 23) = 11;
      strcpy(a4, "Fewer_turns");
      return result;
    case 6:
      *(a4 + 23) = 20;
      *(a4 + 16) = 1818583649;
      v8 = "Shortest_route_label";
LABEL_18:
      *a4 = *v8;
      *(a4 + 20) = 0;
      return result;
    case 7:
      *(a4 + 23) = 17;
      strcpy(a4, "Avoids_busy_roads");
      return result;
    case 8:
      v7 = "Alternate_route_label";
LABEL_13:
      *(a4 + 23) = 21;
      *a4 = *v7;
      *(a4 + 13) = *(v7 + 13);
      *(a4 + 21) = 0;
      return result;
    case 9:
      v5 = "Tolls_required";
      goto LABEL_29;
    case 10:
      v5 = "Toll_congestion_zone_required";
LABEL_29:
      v6 = "";
      goto LABEL_30;
    case 11:
      v10 = "Avoids_tolls";
      if (a3 && !result[158].__r_.__value_.__s.__data_[9])
      {
        v10 = "";
      }

      return sub_2345C(a4, v10);
    case 12:
      v5 = "Highways_required";
      v6 = "Highways_required_label";
      goto LABEL_30;
    case 13:
      v5 = "Avoids_highways";
      v6 = "Avoids_highways_label";
      goto LABEL_30;
    case 14:
      v5 = "Avoids_traffic";
      v6 = "Avoids_traffic_label";
      goto LABEL_30;
    case 15:
      v5 = "Avoids_ferries";
      v6 = "Avoids_ferries_label";
      goto LABEL_30;
    case 16:
      v5 = "Avoids_railway_shuttles";
      v6 = "Avoids_railway_shuttles_label";
LABEL_30:
      if (a3)
      {
        v10 = v6;
      }

      else
      {
        v10 = v5;
      }

      return sub_2345C(a4, v10);
    case 17:
      return sub_195A048(a4, "Avoids_environmental_zone_restrictions", 0x26uLL);
    case 18:
      *(a4 + 23) = 12;
      strcpy(a4, "Avoids_hills");
      return result;
    case 19:
      v9 = "Avoids_stairs";
      goto LABEL_23;
    case 20:
      *(a4 + 23) = 14;
      strcpy(a4, "Avoids_walking");
      return result;
    case 21:
      v9 = "Avoids_charge";
      goto LABEL_23;
    case 22:
      v9 = "Other_network";
LABEL_23:
      *(a4 + 23) = 13;
      *a4 = *v9;
      *(a4 + 5) = *(v9 + 5);
      *(a4 + 13) = 0;
      break;
    case 23:
      *(a4 + 23) = 15;
      strcpy(a4, "Fewer_emissions");
      break;
    case 24:
      if (a3)
      {
        v11 = 24;
      }

      else
      {
        v11 = 18;
      }

      if (a3)
      {
        operator new();
      }

      result = 0x696D61463A564544;
      qmemcpy(a4, "DEV:Familiar_rou", 16);
      *(a4 + 16) = (v11 << 56) | 0x6574;
      break;
    default:
      return result;
  }

  return result;
}

void sub_7F1C4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_7F1CCC@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (*a1 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (v3 != 8)
    {
      if (v3 == 9)
      {
        *(a2 + 23) = 20;
        strcpy(a2, "Detour_area_incident");
        return result;
      }

      if (v3 != 10)
      {
        return result;
      }

LABEL_17:
      v4 = "One_area_incident_included";
      v5 = 26;
      return sub_195A048(a2, v4, v5);
    }

    v4 = "Avoids_one_area_incident";
    v5 = 24;
    return sub_195A048(a2, v4, v5);
  }

  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        *(a2 + 23) = 18;
        strcpy(a2, "Avoids_area_events");
        break;
      case 4:
        *(a2 + 23) = 18;
        strcpy(a2, "Detour_area_events");
        break;
      case 5:
        *(a2 + 23) = 20;
        strcpy(a2, "Area_events_included");
        break;
    }

    return result;
  }

  if (v3 == 1)
  {
    *(a2 + 23) = 21;
    strcpy(a2, "Avoids_area_incidents");
    return result;
  }

  if (v3 == 2)
  {
    v4 = "Area_incidents_included";
    v5 = 23;
    return sub_195A048(a2, v4, v5);
  }

  return result;
}

void sub_7F1E90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_7F1EAC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2 == 1)
  {
    sub_568F30(*(a2 + 8), "_Stop", *(a1 + 3544), 0, &v12);
    v4 = std::string::insert(&v12, 0, "MPR_NUM_STOPS", 0xDuLL);
    __p = *v4;
    v5 = __p.__r_.__value_.__r.__words[2];
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = HIBYTE(v5);
    if ((v6 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v6 & 0x80u) == 0)
    {
      size = v6;
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (size >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = size;
    if (size)
    {
      memmove(&__dst, p_p, size);
      *(&__dst + size) = 0;
      if (v15 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __toupper(p_p->__r_.__value_.__s.__data_[0]);
        p_dst = (p_dst + 1);
        p_p = (p_p + 1);
        --size;
      }

      while (size);
      v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = __dst;
      a3[2] = v15;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(v12.__r_.__value_.__l.__data_);
        return;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = __dst;
      a3[2] = v15;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }
}

void sub_7F2074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_7F20E8(uint64_t a1, unsigned int *a2)
{
  result = a2[1];
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = *a2;
      if (v3 < 3)
      {
        return dword_22A1B4C[v3];
      }
    }

    else if (result == 3 && !*a2)
    {
      return 1;
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    return 0;
  }

  result = 3;
  switch(*a2)
  {
    case 1u:
    case 2u:
    case 4u:
    case 0x2Au:
    case 0x33u:
      return result;
    case 3u:
    case 5u:
    case 6u:
    case 0x2Fu:
      return 4;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x30u:
    case 0x31u:
      return 0;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x32u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      goto LABEL_5;
    default:
      if (*a2 != 999)
      {
        return 0;
      }

LABEL_5:
      result = 6;
      break;
  }

  return result;
}

void sub_7F2268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__src)
{
  *a1 = a2;
  memcpy((a1 + 8), __src, 0x92CuLL);
  if (__src[2375] < 0)
  {
    sub_325C((a1 + 2360), *(__src + 294), *(__src + 295));
  }

  else
  {
    v10 = *(__src + 147);
    *(a1 + 2376) = *(__src + 296);
    *(a1 + 2360) = v10;
  }

  v11 = *(__src + 2376);
  v12 = *(__src + 2392);
  v13 = *(__src + 2408);
  *(a1 + 2432) = *(__src + 2424);
  *(a1 + 2416) = v13;
  *(a1 + 2400) = v12;
  *(a1 + 2384) = v11;
  v14 = *(__src + 2440);
  v15 = *(__src + 2456);
  v16 = *(__src + 2472);
  *(a1 + 2496) = *(__src + 2488);
  *(a1 + 2480) = v16;
  *(a1 + 2464) = v15;
  *(a1 + 2448) = v14;
  v17 = *(__src + 2504);
  v18 = *(__src + 2520);
  v19 = *(__src + 2536);
  *(a1 + 2560) = *(__src + 2552);
  *(a1 + 2544) = v19;
  *(a1 + 2528) = v18;
  *(a1 + 2512) = v17;
  sub_527724(a1 + 2576, a4);
  sub_92AA50(a1 + 4152, a2);
  sub_21E2C18(a3, 4, *(a4 + 968));
}

void sub_7F23B8(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v4);
  sub_1F1A8(v1 + v3);
  sub_528AB4(v1 + 2576);
  if (*(v1 + 2383) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_7F2408(std::string *a1, uint64_t a2, char *a3)
{
  v6 = sub_3EB950(a2);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      if ((*(v7 + 1162) & 1) == 0)
      {
        v9 = *v7;
        if (*v7 == 23)
        {
          if (!v7[2] && !*(v7 + 1136))
          {
            goto LABEL_4;
          }

          v9 = *v7;
        }

        if (v9 == 24 && !v7[2] && (v7[284] & 1) == 0 && a1[167].__r_.__value_.__s.__data_[18] == 1)
        {
          sub_64C184(a3, "{SFSymbol}");
          sub_588170(1, &v20);
          sub_64BF94(a3, "{SFSymbol}");
        }

        v10 = v7[2];
        v16[0] = *v7;
        v16[2] = v10;
        v17[0] = 0;
        v18 = 0;
        if (*(v7 + 1136) == 1)
        {
          sub_52B7D8(v17, (v7 + 4));
          v18 = 1;
        }

        v11 = *(v7 + 286);
        *&v19[15] = *(v7 + 1159);
        *v19 = v11;
        sub_7F2850(a1, v16, 0, &v20);
        if (v18 == 1)
        {
          sub_3A9518(v17);
        }

        sub_64C184(a3, &v20);
        v12 = a1[166].__r_.__value_.__s.__data_[7];
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (v12)
        {
          break;
        }
      }

LABEL_4:
      v7 += 292;
    }

    while (v7 != v8);
  }

  result = sub_3EB950(a2);
  for (i = *result; i != result[1]; i += 1168)
  {
    v15 = *i == 23 && *(i + 8) == 0;
    if (v15 && !*(i + 1136))
    {
      if (*a3 != *(a3 + 1))
      {
        memset(&v20, 0, sizeof(v20));
        sub_64FB18(a3, qword_22A18D8, &v20.__r_.__value_.__l.__data_);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      sub_64C184(a3, "{SFSymbol}");
      sub_588170(0, &v20);
      sub_64BF94(a3, "{SFSymbol}");
    }
  }

  return result;
}

void sub_7F27BC(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_7F2850(std::string *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v8 = *(a2 + 8);
  if ((v8 - 6) > 4)
  {
    v11 = *a2;
    v26 = *a2;
    v27 = v8;
    v28[0] = 0;
    v29 = 0;
    if (*(a2 + 1136) == 1)
    {
      sub_52B7D8(v28, a2 + 16);
      v29 = 1;
      v11 = v26;
    }

    *v30 = *(a2 + 1144);
    *&v30[15] = *(a2 + 1159);
    v43 = 0;
    v42 = 0uLL;
    if (v11)
    {
      sub_7F5DE4(a1, v11, a3, &v38);
    }

    else if (v27)
    {
      sub_7F62C4(&v27, &v38);
    }

    else
    {
      if (*v30 != 1 || !*&v30[8])
      {
        goto LABEL_19;
      }

      sub_7F64A4(a1, v30, &v38);
    }

    v42 = v38;
    v43 = v39;
LABEL_19:
    if (v29 == 1)
    {
      sub_3A9518(v28);
    }

    v12 = HIBYTE(v43);
    if (v43 < 0)
    {
      v12 = *(&v42 + 1);
    }

    if (v12)
    {
      v13 = sub_9274F4(a1[174].__r_.__value_.__r.__words[2], &v42);
      if (*(v13 + 23) < 0)
      {
        sub_325C(a4, *v13, v13[1]);
      }

      else
      {
        v14 = *v13;
        a4->__r_.__value_.__r.__words[2] = v13[2];
        *&a4->__r_.__value_.__l.__data_ = v14;
      }
    }

    else
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    return;
  }

  if ((*(a2 + 1136) & 1) == 0)
  {
    sub_4F0F0C();
  }

  sub_52B7D8(&v38, a2 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v31 = *a2;
  v32 = v10;
  v33[0] = 0;
  v34 = 0;
  if (*(a2 + 1136) == 1)
  {
    sub_52B7D8(v33, a2 + 16);
    v34 = 1;
    v9 = v31;
  }

  *v35 = *(a2 + 1144);
  *&v35[15] = *(a2 + 1159);
  v37 = 0;
  __p[0] = 0;
  __p[1] = 0;
  if (v9)
  {
    sub_7F5DE4(a1, v9, a3, &v42);
  }

  else if (v32)
  {
    sub_7F62C4(&v32, &v42);
  }

  else
  {
    if (*v35 != 1 || !*&v35[8])
    {
      goto LABEL_34;
    }

    sub_7F64A4(a1, v35, &v42);
  }

  *__p = v42;
  v37 = v43;
LABEL_34:
  if (v34 == 1)
  {
    sub_3A9518(v33);
  }

  v15 = HIBYTE(v37);
  if (v37 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    v16 = sub_9274F4(a1[174].__r_.__value_.__r.__words[2], __p);
    if (*(v16 + 23) < 0)
    {
      sub_325C(a4, *v16, v16[1]);
    }

    else
    {
      v17 = *v16;
      a4->__r_.__value_.__r.__words[2] = v16[2];
      *&a4->__r_.__value_.__l.__data_ = v17;
    }

    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    if (size >= 14)
    {
      v20 = v19 + size;
      v21 = v19;
      do
      {
        v22 = memchr(v21, 123, size - 13);
        if (!v22)
        {
          break;
        }

        if (*v22 == 0x636E49616572417BLL && *(v22 + 6) == 0x7D746E656469636ELL)
        {
          if (v22 != v20 && v22 - v19 != -1)
          {
            if ((v41 & 0x80u) == 0)
            {
              v24 = v40;
            }

            else
            {
              v24 = v40[0];
            }

            if ((v41 & 0x80u) == 0)
            {
              v25 = v41;
            }

            else
            {
              v25 = v40[1];
            }

            std::string::replace(a4, v22 - v19, 0xEuLL, v24, v25);
          }

          break;
        }

        v21 = (v22 + 1);
        size = v20 - v21;
      }

      while (v20 - v21 >= 14);
    }
  }

  else
  {
    *(&a4->__r_.__value_.__s + 23) = 0;
    a4->__r_.__value_.__s.__data_[0] = 0;
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  sub_3A9518(&v38);
}

void sub_7F2C24(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  sub_3A9518(&STACK[0x940]);
  _Unwind_Resume(a1);
}

void sub_7F2CB8(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_64B998(a2);
  v5 = sub_68C7DC(a1);
  v4 = 1;
  sub_64E428(a2, "{distance}", &v5, &v4);
  sub_64C184(a2, "{distance}");
}

void sub_7F2D98(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_68C5B4(a2);
  if (sub_67AE58(a1 + 2576) && *(a1 + 3996) == 1 && v6 != 0)
  {
    sub_568F30(v6, "_Stop", *(a1 + 3544), 0, v28);
    v9 = std::string::insert(v28, 0, "MPR_NUM_STOPS", 0xDuLL);
    v33 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v33 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v33 >= 0)
    {
      v11 = HIBYTE(v33);
    }

    else
    {
      v11 = __p[1];
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v31 = v11;
    if (v11)
    {
      memmove(&__dst, v10, v11);
      *(&__dst + v11) = 0;
      if (v31 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __toupper(*v10);
        p_dst = (p_dst + 1);
        v10 = (v10 + 1);
        --v11;
      }

      while (v11);
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
LABEL_42:
        if ((v28[23] & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_71:
        operator delete(*v28);
LABEL_43:
        std::to_string(&v27, v6);
        v33 = 0xC00000000000000;
        *__p = *"{StopsCount}";
        v34 = v27;
        memset(&v27, 0, sizeof(v27));
        memset(v28, 0, sizeof(v28));
        v29 = 1065353216;
        sub_2C7D4(v28, __p);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v33) & 0x80000000) == 0)
          {
LABEL_45:
            if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_67;
          }
        }

        else if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        operator delete(__p[0]);
        if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_46:
          v19 = *(a1 + 4200);
          v25 = *(a1 + 4192);
          v26 = v19;
          if (!v19)
          {
LABEL_48:
            sub_6A58C4(&__dst, v28, &v25, 0, __p);
            v20 = v26;
            if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v20->__on_zero_shared)(v20);
              std::__shared_weak_count::__release_weak(v20);
            }

            sub_64C184(a3, __p);
            if (SHIBYTE(v33) < 0)
            {
              operator delete(__p[0]);
            }

            v21 = *&v28[16];
            if (!*&v28[16])
            {
LABEL_54:
              v22 = *v28;
              *v28 = 0;
              if (v22)
              {
                operator delete(v22);
              }

              if (v31 < 0)
              {
                operator delete(__dst);
              }

              return;
            }

            while (1)
            {
              v23 = *v21;
              if (*(v21 + 63) < 0)
              {
                operator delete(v21[5]);
                if (*(v21 + 39) < 0)
                {
LABEL_64:
                  operator delete(v21[2]);
                }
              }

              else if (*(v21 + 39) < 0)
              {
                goto LABEL_64;
              }

              operator delete(v21);
              v21 = v23;
              if (!v23)
              {
                goto LABEL_54;
              }
            }
          }

LABEL_47:
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_48;
        }

LABEL_67:
        operator delete(v27.__r_.__value_.__l.__data_);
        v19 = *(a1 + 4200);
        v25 = *(a1 + 4192);
        v26 = v19;
        if (!v19)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    operator delete(__p[0]);
    if ((v28[23] & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_71;
  }

  if (*(a1 + 4024) == 1)
  {
    v8 = *nullsub_1(a2) + 12008;

    sub_7F66E0(a1, v8, a3);
  }

  else if (*(a1 + 3991) == 1)
  {

    sub_7F2408(a1, a2, a3);
  }

  else if (sub_68EC58(a2))
  {
    v12 = a3[1];
    if (*a3 == v12)
    {
      v24 = sub_68EC68(a2);

      sub_64C184(a3, v24);
    }

    else
    {
      v13 = std::string::append((v12 - 24), qword_22A18D8, 6uLL);
      v14 = sub_68EC68(a2);
      v15 = v14[23];
      if (v15 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = *v14;
      }

      if (v15 >= 0)
      {
        v17 = v14[23];
      }

      else
      {
        v17 = *(v14 + 1);
      }

      std::string::append(v13, v16, v17);
    }
  }
}

void sub_7F32E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a18);
  if (a31 < 0)
  {
    operator delete(a26);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_7F33CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_64B9EC(a3, (a1 + 3753), qword_22A18D8);
  v7 = sub_68C7DC(a2);
  v6 = 1;
  sub_64E428(a3, "{distance}", &v7, &v6);
  sub_64C184(a3, "{distance}");
  sub_7F2D98(a1, a2, a3);
}

void sub_7F3478(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_64B9EC(a3, (a1 + 3753), qword_22A18D8);
  if (*(a1 + 3991) == 1)
  {
    v6 = sub_3EB950(a2);
    if (*v6 != v6[1])
    {
      v7 = sub_3EB950(a2);
      v8 = *v7;
      if ((*(*v7 + 1160) & 1) == 0)
      {
        v9 = *(v8 + 8);
        v12[0] = *v8;
        v12[2] = v9;
        v13[0] = 0;
        v14 = 0;
        if (*(v8 + 1136) == 1)
        {
          sub_52B7D8(v13, v8 + 16);
          v14 = 1;
        }

        v10 = *(v8 + 1144);
        *&v15[15] = *(v8 + 1159);
        *v15 = v10;
        sub_7F2850(a1, v12, 1, &v16);
        if (v14 == 1)
        {
          sub_3A9518(v13);
        }

        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          sub_64C184(a3, &v16);
          if (*(v8 + 1144) == 1)
          {
            if (*(v8 + 1152))
            {
              sub_7F3654(a1, v8 + 1144);
            }
          }
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_7F35EC(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x478]) == 1)
  {
    sub_3A9518(v2 + 16);
    sub_53A868(v1);
    _Unwind_Resume(a1);
  }

  sub_53A868(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_7F3654(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (*a2 == 1 && result != 0)
  {
    std::to_string(&v4, result);
    sub_649C24(v5, "{StopsCount}");
  }

  return result;
}

void sub_7F36E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_53F320(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7F370C(_BYTE *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1[3991] & 1) == 0)
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  if (a1[2504] == 1)
  {
    v6 = sub_67AE68((a1 + 2576));
    if (v6 != 0x7FFFFFFF && v6 > SHIDWORD(v6))
    {
      __p[0] = 0x100000027;
      sub_5880E4(__p, a3);
      return;
    }
  }

  v7 = sub_3EB950(a2);
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    if (*(v8 + 1161))
    {
      goto LABEL_9;
    }

    v10 = sub_3EB950(a2);
    v11 = *v10;
    v12 = *v8;
    if (*v8 == **v10)
    {
      if (*(v8 + 8) == v11[2])
      {
        v13 = *(v8 + 1136);
        v14 = *(v11 + 1136);
        if (v13 != v14 || v13 == 0)
        {
          if (v13 == v14)
          {
            goto LABEL_8;
          }
        }

        else if (sub_65901C(v8 + 16, (v11 + 4)))
        {
          goto LABEL_8;
        }
      }

      v12 = *v8;
    }

    if (v12 == 23 && !*(v8 + 8) && (*(v8 + 1136) & 1) == 0)
    {
LABEL_8:
      if (sub_7EA908(a1, v8) >> 32)
      {
        operator new();
      }
    }

LABEL_9:
    v8 += 1168;
  }

  if (sub_68DFF0(a2))
  {
    operator new();
  }

  if (sub_68E388(a2))
  {
    operator new();
  }

  if ((sub_68D828(a2, 4) & 1) != 0 || sub_68D828(a2, 9))
  {
    operator new();
  }

  __p[0] = a1;
  sub_7F92F8(0, 0, __p, 0, 1);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 55) = 0;
  *(a3 + 63) = 0;
  *(a3 + 71) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
}

void sub_7F3CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_7F3D10(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  *__dst = 0u;
  memset(v65, 0, sizeof(v65));
  v67 = 0;
  LODWORD(v68[0]) = -1;
  *(v68 + 3) = -1;
  memset(v68 + 7, 0, 26);
  v70 = 0;
  __p = 0uLL;
  v71 = 0;
  if ((*(a1 + 2510) & 1) == 0)
  {
    v7 = v68[0];
    *(a3 + 40) = v65[3];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v8;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = v7;
    v9 = *&v68[1];
    *(a3 + 112) = v68[3];
    *(a3 + 96) = v9;
    memset(&v68[1], 0, 24);
    *(a3 + 120) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    v70 = 0;
    __p = 0uLL;
    goto LABEL_5;
  }

  v6 = sub_7EB764(a1, a2);
  if (v6 == 5)
  {
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 88) = -1;
    *(a3 + 91) = -1;
    *(a3 + 95) = 0;
    *(a3 + 103) = 0;
    *(a3 + 111) = 0;
    *(a3 + 119) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
LABEL_5:
    *(a3 + 152) = 0;
    goto LABEL_6;
  }

  sub_92AC84(v6, &v61);
  if ((v63 & 0x80u) == 0)
  {
    v11 = v63;
  }

  else
  {
    v11 = v62;
  }

  if (v11 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 + 7 >= 0x17)
  {
    operator new();
  }

  v59[1] = 0;
  v60 = 0;
  HIBYTE(v60) = v11 + 7;
  strcpy(v59, "Driving");
  if (v11)
  {
    if ((v63 & 0x80u) == 0)
    {
      v12 = &v61;
    }

    else
    {
      v12 = v61;
    }

    memmove(v59 + 7, v12, v11);
  }

  *(v59 + v11 + 7) = 0;
  v13 = sub_9274F4(*(a1 + 4208), v59);
  if (__dst != v13)
  {
    v14 = *(v13 + 23);
    if (SHIBYTE(v65[0]) < 0)
    {
      if (v14 >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      if (v14 >= 0)
      {
        v17 = *(v13 + 23);
      }

      else
      {
        v17 = v13[1];
      }

      sub_13B38(__dst, v16, v17);
    }

    else if ((*(v13 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *v13, v13[1]);
    }

    else
    {
      v15 = *v13;
      v65[0] = v13[2];
      *__dst = v15;
    }
  }

  if (v6 <= 4)
  {
    sub_587F3C(dword_22A1B38[v6]);
  }

  v55 = 0;
  *v56 = -1;
  *&v56[3] = -1;
  *v53 = 0u;
  v54 = 0u;
  memset(&v56[7], 0, 33);
  v57 = 0uLL;
  v58 = 0uLL;
  v51[0] = v66;
  (sub_55D784)(v51, v66, v53);
  v68[0] = *v56;
  if (SHIBYTE(v68[3]) < 0)
  {
    operator delete(v68[1]);
  }

  *&v68[1] = *&v56[8];
  v68[3] = *&v56[24];
  v56[31] = 0;
  v56[8] = 0;
  LOBYTE(v68[4]) = v56[32];
  if (SHIBYTE(v70) < 0)
  {
    operator delete(__p);
    __p = v57;
    v70 = v58;
    BYTE7(v58) = 0;
    LOBYTE(v57) = 0;
    v71 = BYTE8(v58);
    if ((v56[31] & 0x80000000) != 0)
    {
      operator delete(*&v56[8]);
    }
  }

  else
  {
    __p = v57;
    v70 = v58;
    BYTE7(v58) = 0;
    LOBYTE(v57) = 0;
    v71 = BYTE8(v58);
  }

  if (v55 != -1)
  {
    (off_266CCA8[v55])(v51, v53);
  }

  if ((*(a1 + 3991) & 1) != 0 || sub_4D1F6C(a2))
  {
    *a3 = *__dst;
    v18 = v65[3];
    *(a3 + 16) = v65[0];
    __dst[0] = 0;
    __dst[1] = 0;
    v19 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v19;
    *(a3 + 40) = v18;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = -1;
    v20 = v67;
    if (v67 == -1)
    {
LABEL_55:
      *(a3 + 88) = v68[0];
      *(a3 + 96) = *&v68[1];
      *(a3 + 112) = v68[3];
      memset(&v68[1], 0, 24);
      *(a3 + 120) = v68[4];
      *(a3 + 128) = __p;
      *(a3 + 144) = v70;
      v70 = 0;
      __p = 0uLL;
      *(a3 + 152) = v71;
      goto LABEL_56;
    }

LABEL_54:
    v53[0] = (a3 + 48);
    (off_266CCD0[v20])(v53, v66);
    *(a3 + 80) = v20;
    goto LABEL_55;
  }

  v21 = nullsub_1(a2);
  v22 = *v21;
  v23 = *(*v21 + 1176);
  if (v23 == *(v22 + 1184))
  {
    *a3 = *__dst;
    v30 = v65[3];
    *(a3 + 16) = v65[0];
    __dst[0] = 0;
    __dst[1] = 0;
    v31 = *&v65[1];
    v65[0] = 0;
    v65[1] = 0;
    *(a3 + 24) = v31;
    *(a3 + 40) = v30;
    *&v65[2] = 0uLL;
    *(a3 + 48) = 0;
    *(a3 + 80) = -1;
    v20 = v67;
    if (v67 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  *v53 = 0u;
  v54 = 0u;
  LODWORD(v55) = 1065353216;
  v24 = nullsub_1(v23);
  HIBYTE(v52) = 11;
  strcpy(v51, "{RouteName}");
  *&v49 = v51;
  v25 = sub_7F7DD4(v53, v51);
  v26 = (v25 + 5);
  if (v25 + 5 != v24)
  {
    v27 = *(v25 + 63);
    v28 = *(v24 + 23);
    if (v27 < 0)
    {
      if (v28 >= 0)
      {
        v32 = v24;
      }

      else
      {
        v32 = *v24;
      }

      if (v28 >= 0)
      {
        v33 = *(v24 + 23);
      }

      else
      {
        v33 = *(v24 + 8);
      }

      sub_13B38(v26, v32, v33);
    }

    else if ((*(v24 + 23) & 0x80) != 0)
    {
      sub_13A68(v26, *v24, *(v24 + 8));
    }

    else
    {
      v29 = *v24;
      *(v26 + 16) = *(v24 + 16);
      *v26 = v29;
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  if ((v63 & 0x80u) == 0)
  {
    v34 = v63;
  }

  else
  {
    v34 = v62;
  }

  if (v34 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v34 + 17 >= 0x17)
  {
    operator new();
  }

  v50[0] = 103;
  v49 = *"Proactive_Driving";
  if (v34)
  {
    if ((v63 & 0x80u) == 0)
    {
      v35 = &v61;
    }

    else
    {
      v35 = v61;
    }

    memmove(v50 + 1, v35, v34);
  }

  *(v50 + v34 + 1) = 0;
  v36 = SHIBYTE(v50[0]);
  if ((SHIBYTE(v50[0]) & 0x8000000000000000) != 0)
  {
    v36 = *(&v49 + 1);
    v37 = (v50[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v37 - *(&v49 + 1)) < 0xA)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v50[0] & 0x7FFFFFFFFFFFFFFFuLL) < *(&v49 + 1) + 10 - v37)
      {
        sub_3244();
      }

LABEL_94:
      operator new();
    }

    v38 = v49;
  }

  else
  {
    if ((SHIBYTE(v50[0]) - 13) < 0xA)
    {
      goto LABEL_94;
    }

    v38 = &v49;
  }

  v39 = v38 + v36;
  *v39 = *"_RouteName";
  *(v39 + 4) = 25965;
  v40 = v36 + 10;
  if (SHIBYTE(v50[0]) < 0)
  {
    *(&v49 + 1) = v36 + 10;
  }

  else
  {
    HIBYTE(v50[0]) = v40 & 0x7F;
  }

  *(v38 + v40) = 0;
  *v51 = v49;
  v52 = v50[0];
  v41 = *(a1 + 4216);
  v47 = *(a1 + 4208);
  v48 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_6A58C4(v51, v53, &v47, 0, &v49);
  if (SHIBYTE(v65[3]) < 0)
  {
    operator delete(v65[1]);
  }

  *&v65[1] = v49;
  v65[3] = v50[0];
  HIBYTE(v50[0]) = 0;
  LOBYTE(v49) = 0;
  v42 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  *a3 = *__dst;
  *(a3 + 16) = v65[0];
  __dst[0] = 0;
  __dst[1] = 0;
  v65[0] = 0;
  *(a3 + 24) = *&v65[1];
  *(a3 + 40) = v65[3];
  memset(&v65[1], 0, 24);
  *(a3 + 48) = 0;
  *(a3 + 80) = -1;
  v43 = v67;
  if (v67 != -1)
  {
    *&v49 = a3 + 48;
    (off_266CCD0[v67])(&v49, v66);
    *(a3 + 80) = v43;
  }

  *(a3 + 88) = v68[0];
  *(a3 + 96) = *&v68[1];
  *(a3 + 112) = v68[3];
  memset(&v68[1], 0, 24);
  *(a3 + 120) = v68[4];
  *(a3 + 128) = __p;
  *(a3 + 144) = v70;
  v70 = 0;
  __p = 0uLL;
  *(a3 + 152) = v71;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  v44 = v54;
  if (v54)
  {
    while (1)
    {
      v45 = *v44;
      if (v44[63] < 0)
      {
        operator delete(*(v44 + 5));
        if ((v44[39] & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

LABEL_117:
        operator delete(*(v44 + 2));
        operator delete(v44);
        v44 = v45;
        if (!v45)
        {
          break;
        }
      }

      else
      {
        if (v44[39] < 0)
        {
          goto LABEL_117;
        }

LABEL_114:
        operator delete(v44);
        v44 = v45;
        if (!v45)
        {
          break;
        }
      }
    }
  }

  v46 = v53[0];
  v53[0] = 0;
  if (v46)
  {
    operator delete(v46);
  }

LABEL_56:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v63 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v61);
LABEL_6:
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v68[3]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v68[1]);
    v10 = v67;
    if (v67 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(__p);
  if (SHIBYTE(v68[3]) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = v67;
  if (v67 != -1)
  {
LABEL_12:
    (off_266CCA8[v10])(v53, v66);
  }

LABEL_13:
  v67 = -1;
  if ((SHIBYTE(v65[3]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v65[0]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(__dst[0]);
    return;
  }

  operator delete(v65[1]);
  if (SHIBYTE(v65[0]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_7F487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a27);
  if (a46 < 0)
  {
    operator delete(a41);
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a52 & 0x80000000) == 0)
  {
LABEL_5:
    sub_597624(&a53);
    _Unwind_Resume(a1);
  }

  operator delete(a47);
  sub_597624(&a53);
  _Unwind_Resume(a1);
}

void sub_7F496C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*(a1 + 2506) == 1 && sub_67AEA4(a1 + 2576) && sub_68C590(a2) == 1)
  {
    if (!a3 || (v8 = nullsub_1(a2), v9 = *v8, v10 = v8[1], *v8 == v10))
    {
LABEL_8:
      sub_64B998(a4);
      a4[20] = 0;
      a4[21] = 0;
      a4[22] = 0;
      v11 = sub_68C590(a2);
      sub_663190(*(a1 + 4224), v11, 3, v12);
    }

    while (1)
    {
      sub_3B2A90(*a1);
      if ((sub_394BD0() & 1) == 0)
      {
        break;
      }

      v9 += 12656;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  sub_64B998(a4);
  a4[20] = 0;
  a4[21] = 0;
  a4[22] = 0;
}

void sub_7F4AF4(void **a1, void *a2)
{
  v4 = *sub_68F438(a2);
  __dst = 0uLL;
  v43 = 0;
  if (sub_67DFE4(v4))
  {
    v5 = sub_67E004(v4);
    v6 = nullsub_1(v5 + 504);
    if (&__dst != v6)
    {
      v7 = *(v6 + 23);
      if (SHIBYTE(v43) < 0)
      {
        if (v7 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = *v6;
        }

        if (v7 >= 0)
        {
          v15 = *(v6 + 23);
        }

        else
        {
          v15 = *(v6 + 8);
        }

        sub_13B38(&__dst, v14, v15);
      }

      else if ((*(v6 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v6, *(v6 + 8));
      }

      else
      {
        v8 = *v6;
        v43 = *(v6 + 16);
        __dst = v8;
      }
    }

    goto LABEL_46;
  }

  v9 = sub_3AF6B4(*a1);
  v10 = *sub_67E020(v4);
  sub_5E94A4(v9, v10, 0, &v39);
  sub_4E51E0(v9, v10 & 0xFFFFFFFFFFFFLL, &v37);
  sub_64AC90(&v35, &v37, 0);
  sub_73BE28(&v39, &v26);
  v11 = nullsub_1(&v26);
  if (&__dst != v11)
  {
    v12 = *(v11 + 23);
    if (SHIBYTE(v43) < 0)
    {
      if (v12 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v12 >= 0)
      {
        v17 = *(v11 + 23);
      }

      else
      {
        v17 = *(v11 + 8);
      }

      sub_13B38(&__dst, v16, v17);
    }

    else if ((*(v11 + 23) & 0x80) != 0)
    {
      sub_13A68(&__dst, *v11, *(v11 + 8));
    }

    else
    {
      v13 = *v11;
      v43 = *(v11 + 16);
      __dst = v13;
    }
  }

  if (v34 < 0)
  {
    operator delete(v33);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  else if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v31);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v29);
  if ((v28 & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v27);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v35);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
LABEL_33:
    v18 = v39;
    if (!v39)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v37);
  v18 = v39;
  if (!v39)
  {
    goto LABEL_46;
  }

LABEL_42:
  v19 = v40;
  v20 = v18;
  if (v40 != v18)
  {
    do
    {
      v19 = sub_310F30(v19 - 144);
    }

    while (v19 != v18);
    v20 = v39;
  }

  v40 = v18;
  operator delete(v20);
LABEL_46:
  v21 = sub_68C454(a2, 0);
  v22 = *(v21 + 1176);
  if (v22 == *(v21 + 1184))
  {
    HIBYTE(v36) = 0;
    LOBYTE(v35) = 0;
  }

  else
  {
    v23 = nullsub_1(v22);
    if (*(v23 + 23) < 0)
    {
      sub_325C(&v35, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      v36 = *(v23 + 16);
      v35 = v24;
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0uLL;
  v38 = 0;
  v25 = HIBYTE(v43);
  if (v43 < 0)
  {
    v25 = *(&__dst + 1);
  }

  if (v25)
  {
    operator new();
  }

  operator new();
}

void sub_7F53BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v44 - 121) & 0x80000000) == 0)
  {
LABEL_3:
    if (a44 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(*(v44 - 144));
  if (a44 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((*(v44 - 89) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  if ((*(v44 - 89) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v44 - 112));
  _Unwind_Resume(a1);
}

void sub_7F5568()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x7F5558);
  }

  JUMPOUT(0x7F54F0);
}

void sub_7F5578(uint64_t a1, unsigned int **a2, uint64_t *a3)
{
  v6 = sub_7EB764(a1, a2);
  sub_92AC84(v6, &v55);
  v7 = sub_68C454(a2, 0);
  if ((*(a1 + 4140) & 1) != 0 || *(a1 + 3792) == 2)
  {
    v8 = 0;
    v9 = v57;
    if ((v57 & 0x80u) == 0)
    {
      v10 = v57;
    }

    else
    {
      v10 = v56;
    }

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *(v7 + 1176) != *(v7 + 1184);
    v9 = v57;
    if ((v57 & 0x80u) == 0)
    {
      v10 = v57;
    }

    else
    {
      v10 = v56;
    }

    if (v10)
    {
LABEL_15:
      if (v10 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      v11 = v7;
      if (v10 + 17 >= 0x17)
      {
        operator new();
      }

      v54 = 103;
      HIBYTE(v54) = v10 + 17;
      v53 = *"Proactive_Driving";
      if (v10)
      {
        if ((v9 & 0x80u) == 0)
        {
          v12 = &v55;
        }

        else
        {
          v12 = v55;
        }

        memmove(&v54 + 1, v12, v10);
      }

      *(&v54 + v10 + 1) = 0;
      v50 = 0u;
      v51 = 0u;
      v52 = 1065353216;
      if (v8)
      {
        v13 = nullsub_1(*(v11 + 1176));
        v48[0] = "{RouteName}";
        v14 = sub_353894(&v50, "{RouteName}");
        v15 = (v14 + 5);
        if (v14 + 5 != v13)
        {
          v16 = *(v14 + 63);
          v17 = *(v13 + 23);
          if (v16 < 0)
          {
            if (v17 >= 0)
            {
              v19 = v13;
            }

            else
            {
              v19 = *v13;
            }

            if (v17 >= 0)
            {
              v20 = *(v13 + 23);
            }

            else
            {
              v20 = *(v13 + 8);
            }

            sub_13B38(v15, v19, v20);
          }

          else if ((*(v13 + 23) & 0x80) != 0)
          {
            sub_13A68(v15, *v13, *(v13 + 8));
          }

          else
          {
            v18 = *v13;
            *(v15 + 16) = *(v13 + 16);
            *v15 = v18;
          }
        }

        v21 = SHIBYTE(v54);
        if ((SHIBYTE(v54) & 0x8000000000000000) != 0)
        {
          v21 = *(&v53 + 1);
          if ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - *(&v53 + 1) < 0xA)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v54 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v53 + 1) + 10 - ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
            {
              sub_3244();
            }

LABEL_41:
            operator new();
          }

          v22 = v53;
        }

        else
        {
          if ((SHIBYTE(v54) - 13) < 0xA)
          {
            goto LABEL_41;
          }

          v22 = &v53;
        }

        qmemcpy(v22 + v21, "_RouteName", 10);
        v23 = v21 + 10;
        if (SHIBYTE(v54) < 0)
        {
          *(&v53 + 1) = v21 + 10;
        }

        else
        {
          HIBYTE(v54) = v23 & 0x7F;
        }

        *(v22 + v23) = 0;
      }

      v24 = *(a1 + 4216);
      v46 = *(a1 + 4208);
      v47 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_6A58C4(&v53, &v50, &v46, 0, v48);
      v25 = v47;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      v26 = *(a1 + 4208);
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      sub_7EDA50(&v45, v26, v48, __p);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
        v27 = a3[21];
        if (v27 < a3[22])
        {
          goto LABEL_55;
        }
      }

      else
      {
        v27 = a3[21];
        if (v27 < a3[22])
        {
LABEL_55:
          sub_64BC20(v27, &v45);
          v28 = v27 + 160;
          a3[21] = v27 + 160;
LABEL_58:
          a3[21] = v28;
          if (!v8)
          {
            goto LABEL_82;
          }

          v29 = (v57 & 0x80u) == 0 ? v57 : v56;
          if (!v29)
          {
            goto LABEL_82;
          }

          if (v29 + 17 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          v30 = *(a1 + 4208);
          if (v29 + 17 >= 0x17)
          {
            operator new();
          }

          v42.__r_.__value_.__r.__words[2] = 103;
          *&v42.__r_.__value_.__l.__data_ = *"Proactive_Driving";
          if ((v57 & 0x80u) == 0)
          {
            v31 = &v55;
          }

          else
          {
            v31 = v55;
          }

          memmove(&v42.__r_.__value_.__r.__words[2] + 1, v31, v29);
          *(&v42.__r_.__value_.__r.__words[2] + v29 + 1) = 0;
          v32 = sub_9274F4(v30, &v42);
          if (*(v32 + 23) < 0)
          {
            sub_325C(__p, *v32, v32[1]);
          }

          else
          {
            v33 = *v32;
            v44 = v32[2];
            *__p = v33;
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          v34 = *(a1 + 4208);
          v40[0] = 0;
          v40[1] = 0;
          v41 = 0;
          sub_7EDA50(&v42, v34, __p, v40);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
            v35 = a3[21];
            if (v35 < a3[22])
            {
              goto LABEL_76;
            }
          }

          else
          {
            v35 = a3[21];
            if (v35 < a3[22])
            {
LABEL_76:
              sub_64BC20(v35, &v42);
              v36 = v35 + 160;
              a3[21] = v35 + 160;
              goto LABEL_79;
            }
          }

          v36 = sub_5C4594(a3 + 20, &v42);
LABEL_79:
          a3[21] = v36;
          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_83:
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_84;
              }

LABEL_88:
              operator delete(v48[0]);
              v37 = v51;
              if (!v51)
              {
                goto LABEL_95;
              }

              while (1)
              {
LABEL_92:
                v38 = *v37;
                if (v37[63] < 0)
                {
                  operator delete(*(v37 + 5));
                  if ((v37[39] & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

LABEL_94:
                  operator delete(*(v37 + 2));
                  operator delete(v37);
                  v37 = v38;
                  if (!v38)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {
                  if (v37[39] < 0)
                  {
                    goto LABEL_94;
                  }

LABEL_91:
                  operator delete(v37);
                  v37 = v38;
                  if (!v38)
                  {
                    goto LABEL_95;
                  }
                }
              }
            }

LABEL_87:
            operator delete(v45.__r_.__value_.__l.__data_);
            if ((v49 & 0x80000000) == 0)
            {
LABEL_84:
              v37 = v51;
              if (v51)
              {
                goto LABEL_92;
              }

LABEL_95:
              v39 = v50;
              *&v50 = 0;
              if (v39)
              {
                operator delete(v39);
              }

              if (SHIBYTE(v54) < 0)
              {
                operator delete(v53);
                if ((v57 & 0x80) != 0)
                {
                  goto LABEL_99;
                }
              }

              else if ((v57 & 0x80) != 0)
              {
                goto LABEL_99;
              }

              return;
            }

            goto LABEL_88;
          }

LABEL_82:
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        }
      }

      v28 = sub_5C4594(a3 + 20, &v45);
      goto LABEL_58;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

  if ((v9 & 0x80) != 0)
  {
LABEL_99:
    operator delete(v55);
  }
}

void sub_7F5C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a43 < 0)
  {
    operator delete(a38);
    sub_2CD04(&a44);
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_2CD04(&a44);
    if ((*(v44 - 121) & 0x80000000) == 0)
    {
LABEL_9:
      if (*(v44 - 97) < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(v44 - 144));
  if (*(v44 - 97) < 0)
  {
LABEL_10:
    operator delete(*(v44 - 120));
    _Unwind_Resume(a1);
  }

LABEL_13:
  _Unwind_Resume(a1);
}

void sub_7F5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1F1A8(&a24);
  sub_2CD04(&a29);
  if (*(v29 - 121) < 0)
  {
    JUMPOUT(0x7F5D74);
  }

  JUMPOUT(0x7F5D4CLL);
}

void sub_7F5DAC()
{
  if (*(v0 - 97) < 0)
  {
    JUMPOUT(0x7F5D54);
  }

  JUMPOUT(0x7F5D84);
}

void sub_7F5DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_2CD04(&a29);
  if (*(v29 - 121) < 0)
  {
    JUMPOUT(0x7F5D74);
  }

  JUMPOUT(0x7F5D4CLL);
}

void sub_7F5DD4()
{
  if (*(v0 - 97) < 0)
  {
    JUMPOUT(0x7F5D54);
  }

  JUMPOUT(0x7F5D84);
}

std::string *sub_7F5DE4@<X0>(std::string *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  switch(a2)
  {
    case 1:
      *(a4 + 23) = 19;
      strcpy(a4, "Fastest_route_label");
      return result;
    case 2:
      *(a4 + 23) = 16;
      strcpy(a4, "Best_route_label");
      return result;
    case 3:
      v7 = "Suggested_route_label";
      goto LABEL_13;
    case 4:
      *(a4 + 23) = 20;
      *(a4 + 16) = 1818583649;
      v8 = "Simplest_route_label";
      goto LABEL_18;
    case 5:
      *(a4 + 23) = 11;
      strcpy(a4, "Fewer_turns");
      return result;
    case 6:
      *(a4 + 23) = 20;
      *(a4 + 16) = 1818583649;
      v8 = "Shortest_route_label";
LABEL_18:
      *a4 = *v8;
      *(a4 + 20) = 0;
      return result;
    case 7:
      *(a4 + 23) = 17;
      strcpy(a4, "Avoids_busy_roads");
      return result;
    case 8:
      v7 = "Alternate_route_label";
LABEL_13:
      *(a4 + 23) = 21;
      *a4 = *v7;
      *(a4 + 13) = *(v7 + 13);
      *(a4 + 21) = 0;
      return result;
    case 9:
      v5 = "Tolls_required";
      goto LABEL_29;
    case 10:
      v5 = "Toll_congestion_zone_required";
LABEL_29:
      v6 = "";
      goto LABEL_30;
    case 11:
      v10 = "Avoids_tolls";
      if (a3 && !result[158].__r_.__value_.__s.__data_[9])
      {
        v10 = "";
      }

      return sub_2345C(a4, v10);
    case 12:
      v5 = "Highways_required";
      v6 = "Highways_required_label";
      goto LABEL_30;
    case 13:
      v5 = "Avoids_highways";
      v6 = "Avoids_highways_label";
      goto LABEL_30;
    case 14:
      v5 = "Avoids_traffic";
      v6 = "Avoids_traffic_label";
      goto LABEL_30;
    case 15:
      v5 = "Avoids_ferries";
      v6 = "Avoids_ferries_label";
      goto LABEL_30;
    case 16:
      v5 = "Avoids_railway_shuttles";
      v6 = "Avoids_railway_shuttles_label";
LABEL_30:
      if (a3)
      {
        v10 = v6;
      }

      else
      {
        v10 = v5;
      }

      return sub_2345C(a4, v10);
    case 17:
      return sub_195A048(a4, "Avoids_environmental_zone_restrictions", 0x26uLL);
    case 18:
      *(a4 + 23) = 12;
      strcpy(a4, "Avoids_hills");
      return result;
    case 19:
      v9 = "Avoids_stairs";
      goto LABEL_23;
    case 20:
      *(a4 + 23) = 14;
      strcpy(a4, "Avoids_walking");
      return result;
    case 21:
      v9 = "Avoids_charge";
      goto LABEL_23;
    case 22:
      v9 = "Other_network";
LABEL_23:
      *(a4 + 23) = 13;
      *a4 = *v9;
      *(a4 + 5) = *(v9 + 5);
      *(a4 + 13) = 0;
      break;
    case 23:
      *(a4 + 23) = 15;
      strcpy(a4, "Fewer_emissions");
      break;
    case 24:
      if (a3)
      {
        v11 = 24;
      }

      else
      {
        v11 = 18;
      }

      if (a3)
      {
        operator new();
      }

      result = 0x696D61463A564544;
      qmemcpy(a4, "DEV:Familiar_rou", 16);
      *(a4 + 16) = (v11 << 56) | 0x6574;
      break;
    default:
      return result;
  }

  return result;
}

void sub_7F6244(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_7F62C4@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (*a1 > 5)
  {
    if (v3 <= 7)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (v3 != 8)
    {
      if (v3 == 9)
      {
        *(a2 + 23) = 20;
        strcpy(a2, "Detour_area_incident");
        return result;
      }

      if (v3 != 10)
      {
        return result;
      }

LABEL_17:
      v4 = "One_area_incident_included";
      v5 = 26;
      return sub_195A048(a2, v4, v5);
    }

    v4 = "Avoids_one_area_incident";
    v5 = 24;
    return sub_195A048(a2, v4, v5);
  }

  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        *(a2 + 23) = 18;
        strcpy(a2, "Avoids_area_events");
        break;
      case 4:
        *(a2 + 23) = 18;
        strcpy(a2, "Detour_area_events");
        break;
      case 5:
        *(a2 + 23) = 20;
        strcpy(a2, "Area_events_included");
        break;
    }

    return result;
  }

  if (v3 == 1)
  {
    *(a2 + 23) = 21;
    strcpy(a2, "Avoids_area_incidents");
    return result;
  }

  if (v3 == 2)
  {
    v4 = "Area_incidents_included";
    v5 = 23;
    return sub_195A048(a2, v4, v5);
  }

  return result;
}

void sub_7F6488(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_7F64A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2 == 1)
  {
    sub_568F30(*(a2 + 8), "_Stop", *(a1 + 3544), 0, &v12);
    v4 = std::string::insert(&v12, 0, "MPR_NUM_STOPS", 0xDuLL);
    __p = *v4;
    v5 = __p.__r_.__value_.__r.__words[2];
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = HIBYTE(v5);
    if ((v6 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v6 & 0x80u) == 0)
    {
      size = v6;
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (size >= 0x17)
    {
      operator new();
    }

    HIBYTE(v15) = size;
    if (size)
    {
      memmove(&__dst, p_p, size);
      *(&__dst + size) = 0;
      if (v15 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __toupper(p_p->__r_.__value_.__s.__data_[0]);
        p_dst = (p_dst + 1);
        p_p = (p_p + 1);
        --size;
      }

      while (size);
      v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = __dst;
      a3[2] = v15;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_18:
        if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(v12.__r_.__value_.__l.__data_);
        return;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *a3 = __dst;
      a3[2] = v15;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }
  }
}

void sub_7F666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_7F66E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 256))
  {
    switch(*(a2 + 256))
    {
      case 1:
        HIBYTE(__p[2]) = 11;
        *(__p + 7) = 1413565510;
        v5 = "MOSTLY_FLAT";
        goto LABEL_10;
      case 2:
        v7 = "GENTLY_UPHILL";
        goto LABEL_13;
      case 3:
        HIBYTE(__p[2]) = 15;
        strcpy(__p, "GENTLY_DOWNHILL");
        break;
      case 4:
        HIBYTE(__p[2]) = 11;
        *(__p + 7) = 1280067912;
        v5 = "GENTLE_HILL";
        goto LABEL_10;
      case 5:
        HIBYTE(__p[2]) = 12;
        strcpy(__p, "GENTLE_HILLS");
        break;
      case 6:
        HIBYTE(__p[2]) = 17;
        strcpy(__p, "MODERATELY_UPHILL");
        break;
      case 7:
        HIBYTE(__p[2]) = 19;
        strcpy(__p, "MODERATELY_DOWNHILL");
        break;
      case 8:
        v7 = "MODERATE_HILL";
LABEL_13:
        HIBYTE(__p[2]) = 13;
        __p[0] = *v7;
        *(__p + 5) = *(v7 + 5);
        BYTE5(__p[1]) = 0;
        break;
      case 9:
        v6 = "MODERATE_HILLS";
        goto LABEL_19;
      case 0xA:
        v6 = "STEEPLY_UPHILL";
        goto LABEL_19;
      case 0xB:
        HIBYTE(__p[2]) = 16;
        strcpy(__p, "STEEPLY_DOWNHILL");
        break;
      case 0xC:
        HIBYTE(__p[2]) = 10;
        strcpy(__p, "STEEP_HILL");
        break;
      case 0xD:
        HIBYTE(__p[2]) = 11;
        *(__p + 7) = 1397509193;
        v5 = "STEEP_HILLS";
LABEL_10:
        __p[0] = *v5;
        BYTE3(__p[1]) = 0;
        break;
      case 0xE:
        v6 = "CLIMB_DISTANCE";
LABEL_19:
        HIBYTE(__p[2]) = 14;
        __p[0] = *v6;
        *(__p + 6) = *(v6 + 6);
        BYTE6(__p[1]) = 0;
        break;
      default:
        memset(__p, 0, 24);
        break;
    }

    v8 = sub_9274F4(*(a1 + 4192), __p);
    sub_64C184(a3, v8);
    if (*(a2 + 256) == 14)
    {
      sub_64AEEC(&v9, 0);
      sub_64E428(a3, "{ClimbDistance}", a2, &v9);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_7F698C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7F69E4(uint64_t a1, unsigned int *a2)
{
  result = a2[1];
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = *a2;
      if (v3 < 3)
      {
        return dword_22A1B4C[v3];
      }
    }

    else if (result == 3 && !*a2)
    {
      return 1;
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    return 0;
  }

  result = 3;
  switch(*a2)
  {
    case 1u:
    case 2u:
    case 4u:
    case 0x2Au:
    case 0x33u:
      return result;
    case 3u:
    case 5u:
    case 6u:
    case 0x2Fu:
      return 4;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x30u:
    case 0x31u:
      return 0;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x32u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      goto LABEL_5;
    default:
      if (*a2 != 999)
      {
        return 0;
      }

LABEL_5:
      result = 6;
      break;
  }

  return result;
}

uint64_t sub_7F6B64(uint64_t *a1, uint64_t a2)
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
  sub_64BC20(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_5C46E0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_7F6C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7F6CB0(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_7F71B0(v10, v10 + 2, v9, a3);
        case 4uLL:

          return sub_7F730C(v10, v10 + 2, v10 + 4, v9, a3);
        case 5uLL:

          return sub_7F7404(v10, v10 + 2, v10 + 4, v10 + 6, v9, a3);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v25 = *a3;
        v26 = sub_7ED8D0(v25, v9);
        result = sub_7ED8D0(v25, v10);
        if (v26 > result)
        {
          v27 = *v10;
          *v10 = *v9;
          *v9 = v27;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v40 = (v13 - 2) >> 1;
        v41 = v40 + 1;
        v42 = &v10[2 * v40];
        do
        {
          sub_7F7A98(v10, a3, (a2 - v10) >> 3, v42);
          v42 -= 2;
          --v41;
        }

        while (v41);
        do
        {
          result = sub_7F7C28(v10, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_7F71B0(&v8[2 * (v13 >> 1)], v8, v9, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_7F71B0(v8, &v8[2 * (v13 >> 1)], v9, a3);
      v51 = v12;
      v16 = a5;
      v17 = v9;
      v18 = &v8[2 * v14];
      sub_7F71B0(v8 + 2, v18 - 2, a2 - 4, a3);
      sub_7F71B0(v8 + 4, &v8[2 * v14 + 2], a2 - 6, a3);
      sub_7F71B0(v18 - 2, v15, &v8[2 * v14 + 2], a3);
      v19 = *v8;
      *v8 = *v18;
      *v18 = v19;
      v9 = v17;
      a5 = v16;
      v12 = v51;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v20 = *a3;
    v21 = sub_7ED8D0(*a3, v8 - 2);
    if (v21 <= sub_7ED8D0(v20, v8))
    {
      result = sub_7F7538(v8, a2, a3);
      v10 = result;
      goto LABEL_23;
    }

LABEL_18:
    v22 = sub_7F76E4(v8, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v24 = sub_7F7880(v8, v22, a3);
    v10 = v22 + 2;
    result = sub_7F7880(v22 + 2, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_21:
      result = sub_7F6CB0(v8, v22, a3, -v12, a5 & 1);
      v10 = v22 + 2;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v28 = v10 + 2;
  v30 = v10 == a2 || v28 == a2;
  if (a5)
  {
    if (!v30)
    {
      v31 = 0;
      v32 = v10;
      do
      {
        v34 = v32;
        v32 = v28;
        v35 = *a3;
        v36 = sub_7ED8D0(*a3, v28);
        result = sub_7ED8D0(v35, v34);
        if (v36 > result)
        {
          v52 = *v32;
          v37 = v31;
          do
          {
            *(v10 + v37 + 8) = *(v10 + v37);
            if (!v37)
            {
              v33 = v10;
              goto LABEL_47;
            }

            v37 -= 8;
            v38 = *a3;
            v39 = sub_7ED8D0(*a3, &v52);
            result = sub_7ED8D0(v38, (v10 + v37));
          }

          while (v39 > result);
          v33 = (v10 + v37 + 8);
LABEL_47:
          *v33 = v52;
        }

        v28 = v32 + 2;
        v31 += 8;
      }

      while (v32 + 2 != a2);
    }
  }

  else if (!v30)
  {
    v44 = v10 - 2;
    do
    {
      v45 = v8;
      v8 = v28;
      v46 = *a3;
      v47 = sub_7ED8D0(*a3, v28);
      result = sub_7ED8D0(v46, v45);
      if (v47 > result)
      {
        v52 = *v8;
        v48 = v44;
        do
        {
          *(v48 + 2) = *(v48 + 1);
          v49 = *a3;
          v50 = sub_7ED8D0(*a3, &v52);
          result = sub_7ED8D0(v49, v48);
          v48 -= 2;
        }

        while (v50 > result);
        *(v48 + 2) = v52;
      }

      v28 = v8 + 2;
      v44 += 2;
    }

    while (v8 + 2 != a2);
  }

  return result;
}

uint64_t sub_7F71B0(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_7ED8D0(*a4, a2);
  v10 = sub_7ED8D0(v8, a1);
  v11 = *a4;
  v12 = sub_7ED8D0(*a4, a3);
  v13 = sub_7ED8D0(v11, a2);
  if (v9 > v10)
  {
    v14 = *a1;
    if (v12 <= v13)
    {
      *a1 = *a2;
      *a2 = v14;
      v19 = *a4;
      v20 = sub_7ED8D0(*a4, a3);
      if (v20 <= sub_7ED8D0(v19, a2))
      {
        return 1;
      }

      v14 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v14;
    return 1;
  }

  if (v12 > v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    v16 = *a4;
    v17 = sub_7ED8D0(*a4, a2);
    if (v17 > sub_7ED8D0(v16, a1))
    {
      v18 = *a1;
      *a1 = *a2;
      *a2 = v18;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_7F730C(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  sub_7F71B0(a1, a2, a3, a5);
  v10 = *a5;
  v11 = sub_7ED8D0(*a5, a4);
  result = sub_7ED8D0(v10, a3);
  if (v11 > result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a5;
    v15 = sub_7ED8D0(*a5, a3);
    result = sub_7ED8D0(v14, a2);
    if (v15 > result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a5;
      v18 = sub_7ED8D0(v17, a2);
      result = sub_7ED8D0(v17, a1);
      if (v18 > result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_7F7404(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6)
{
  sub_7F730C(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = sub_7ED8D0(*a6, a5);
  result = sub_7ED8D0(v12, a4);
  if (v13 > result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a6;
    v17 = sub_7ED8D0(*a6, a4);
    result = sub_7ED8D0(v16, a3);
    if (v17 > result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a6;
      v20 = sub_7ED8D0(*a6, a3);
      result = sub_7ED8D0(v19, a2);
      if (v20 > result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a6;
        v23 = sub_7ED8D0(v22, a2);
        result = sub_7ED8D0(v22, a1);
        if (v23 > result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_7F7538(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = a2;
  v24 = *a1;
  v6 = a2 - 2;
  v7 = *a3;
  v8 = sub_7ED8D0(*a3, &v24);
  if (v8 <= sub_7ED8D0(v7, v6))
  {
    v12 = a1 + 2;
    do
    {
      v9 = v12;
      if (v12 >= v4)
      {
        break;
      }

      v13 = *a3;
      v14 = sub_7ED8D0(*a3, &v24);
      v15 = sub_7ED8D0(v13, v9);
      v12 = v9 + 2;
    }

    while (v14 <= v15);
  }

  else
  {
    v9 = a1;
    do
    {
      v9 += 2;
      v10 = *a3;
      v11 = sub_7ED8D0(*a3, &v24);
    }

    while (v11 <= sub_7ED8D0(v10, v9));
  }

  if (v9 < v4)
  {
    do
    {
      v4 -= 2;
      v16 = *a3;
      v17 = sub_7ED8D0(*a3, &v24);
    }

    while (v17 > sub_7ED8D0(v16, v4));
  }

  while (v9 < v4)
  {
    v18 = *v9;
    *v9 = *v4;
    *v4 = v18;
    do
    {
      v9 += 2;
      v19 = *a3;
      v20 = sub_7ED8D0(*a3, &v24);
    }

    while (v20 <= sub_7ED8D0(v19, v9));
    do
    {
      v4 -= 2;
      v21 = *a3;
      v22 = sub_7ED8D0(*a3, &v24);
    }

    while (v22 > sub_7ED8D0(v21, v4));
  }

  if (v9 - 2 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v24;
  return v9;
}

unsigned int *sub_7F76E4(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  v23 = *a1;
  do
  {
    v6 += 2;
    v7 = *a3;
    v8 = sub_7ED8D0(*a3, &a1[v6]);
  }

  while (v8 > sub_7ED8D0(v7, &v23));
  v9 = &a1[v6];
  v10 = &a1[v6 - 2];
  if (v6 == 2)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 2;
      v13 = *a3;
      v14 = sub_7ED8D0(*a3, a2);
    }

    while (v14 <= sub_7ED8D0(v13, &v23));
  }

  else
  {
    do
    {
      a2 -= 2;
      v11 = *a3;
      v12 = sub_7ED8D0(*a3, a2);
    }

    while (v12 <= sub_7ED8D0(v11, &v23));
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v15 += 2;
        v18 = *a3;
        v19 = sub_7ED8D0(*a3, v15);
      }

      while (v19 > sub_7ED8D0(v18, &v23));
      do
      {
        v16 -= 2;
        v20 = *a3;
        v21 = sub_7ED8D0(*a3, v16);
      }

      while (v21 <= sub_7ED8D0(v20, &v23));
    }

    while (v15 < v16);
    v10 = v15 - 2;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v23;
  return v10;
}

BOOL sub_7F7880(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 2;
        v8 = *a3;
        v9 = sub_7ED8D0(*a3, a2 - 2);
        if (v9 > sub_7ED8D0(v8, a1))
        {
          v10 = *a1;
          *a1 = *v7;
          *v7 = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_7F71B0(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      sub_7F730C(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      sub_7F7404(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 4;
  sub_7F71B0(a1, a1 + 2, a1 + 4, a3);
  v12 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *a3;
    v16 = sub_7ED8D0(*a3, v12);
    if (v16 > sub_7ED8D0(v15, v11))
    {
      break;
    }

LABEL_20:
    v11 = v12;
    v13 += 8;
    v12 += 2;
    if (v12 == a2)
    {
      return 1;
    }
  }

  v22 = *v12;
  v17 = v13;
  do
  {
    *(a1 + v17 + 24) = *(a1 + v17 + 16);
    if (v17 == -16)
    {
      *a1 = v22;
      if (++v14 != 8)
      {
        goto LABEL_20;
      }

      return v12 + 2 == a2;
    }

    v18 = *a3;
    v19 = sub_7ED8D0(*a3, &v22);
    v20 = sub_7ED8D0(v18, (a1 + v17 + 8));
    v17 -= 8;
  }

  while (v19 > v20);
  *(a1 + v17 + 24) = v22;
  if (++v14 != 8)
  {
    goto LABEL_20;
  }

  return v12 + 2 == a2;
}

uint64_t sub_7F7A98(uint64_t result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v27[11] = v4;
    v27[12] = v5;
    v7 = a4;
    v8 = result;
    v26 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v11 = (a4 - result) >> 2;
      v12 = v11 + 1;
      v13 = (result + 8 * (v11 + 1));
      v14 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v15 = *a2;
        v16 = sub_7ED8D0(*a2, (result + 8 * (v11 + 1)));
        if (v16 > sub_7ED8D0(v15, v13 + 2))
        {
          v13 += 2;
          v12 = v14;
        }
      }

      v17 = *a2;
      v18 = sub_7ED8D0(*a2, v13);
      result = sub_7ED8D0(v17, v7);
      if (v18 <= result)
      {
        v27[0] = *v7;
        do
        {
          v21 = v13;
          *v7 = *v13;
          if (v26 < v12)
          {
            break;
          }

          v22 = (2 * v12) | 1;
          v13 = (v8 + 8 * v22);
          v23 = 2 * v12 + 2;
          if (v23 < a3)
          {
            v24 = *a2;
            v25 = sub_7ED8D0(*a2, (v8 + 8 * v22));
            if (v25 > sub_7ED8D0(v24, v13 + 2))
            {
              v13 += 2;
              v22 = v23;
            }
          }

          v19 = *a2;
          v20 = sub_7ED8D0(*a2, v13);
          result = sub_7ED8D0(v19, v27);
          v7 = v21;
          v12 = v22;
        }

        while (v20 <= result);
        *v21 = v27[0];
      }
    }
  }

  return result;
}

char *sub_7F7C28(char *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v32[11] = v4;
    v32[12] = v5;
    v8 = 0;
    v31 = *result;
    v9 = (a4 - 2) >> 1;
    v29 = result;
    v10 = result;
    do
    {
      v11 = &v10[2 * v8];
      v12 = v11 + 2;
      v13 = (2 * v8) | 1;
      v14 = 2 * v8 + 2;
      if (v14 < a4)
      {
        v15 = v11 + 4;
        v16 = *a3;
        v17 = sub_7ED8D0(*a3, v11 + 2);
        result = sub_7ED8D0(v16, v15);
        if (v17 > result)
        {
          v12 = v15;
          v13 = v14;
        }
      }

      *v10 = *v12;
      v10 = v12;
      v8 = v13;
    }

    while (v13 <= v9);
    v18 = (a2 - 8);
    if (v12 == (a2 - 8))
    {
      *v12 = v31;
    }

    else
    {
      *v12 = *v18;
      *v18 = v31;
      v19 = (v12 - v29 + 8) >> 3;
      v20 = v19 < 2;
      v21 = v19 - 2;
      if (!v20)
      {
        v22 = v21 >> 1;
        v23 = &v29[8 * (v21 >> 1)];
        v24 = *a3;
        v25 = sub_7ED8D0(*a3, v23);
        result = sub_7ED8D0(v24, v12);
        if (v25 > result)
        {
          v32[0] = *v12;
          do
          {
            v26 = v23;
            *v12 = *v23;
            if (!v22)
            {
              break;
            }

            v22 = (v22 - 1) >> 1;
            v23 = &v29[8 * v22];
            v27 = *a3;
            v28 = sub_7ED8D0(*a3, v23);
            result = sub_7ED8D0(v27, v32);
            v12 = v26;
          }

          while (v28 > result);
          *v26 = v32[0];
        }
      }
    }
  }

  return result;
}

uint64_t **sub_7F7DD4(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_7F81BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7F81D4(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          return sub_7F86D4(v10, v10 + 2, v9, a3);
        case 4uLL:

          return sub_7F8830(v10, v10 + 2, v10 + 4, v9, a3);
        case 5uLL:

          return sub_7F8928(v10, v10 + 2, v10 + 4, v10 + 6, v9, a3);
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v25 = *a3;
        v26 = sub_7F20E8(v25, v9);
        result = sub_7F20E8(v25, v10);
        if (v26 > result)
        {
          v27 = *v10;
          *v10 = *v9;
          *v9 = v27;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v40 = (v13 - 2) >> 1;
        v41 = v40 + 1;
        v42 = &v10[2 * v40];
        do
        {
          sub_7F8FBC(v10, a3, (a2 - v10) >> 3, v42);
          v42 -= 2;
          --v41;
        }

        while (v41);
        do
        {
          result = sub_7F914C(v10, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_7F86D4(&v8[2 * (v13 >> 1)], v8, v9, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_7F86D4(v8, &v8[2 * (v13 >> 1)], v9, a3);
      v51 = v12;
      v16 = a5;
      v17 = v9;
      v18 = &v8[2 * v14];
      sub_7F86D4(v8 + 2, v18 - 2, a2 - 4, a3);
      sub_7F86D4(v8 + 4, &v8[2 * v14 + 2], a2 - 6, a3);
      sub_7F86D4(v18 - 2, v15, &v8[2 * v14 + 2], a3);
      v19 = *v8;
      *v8 = *v18;
      *v18 = v19;
      v9 = v17;
      a5 = v16;
      v12 = v51;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v20 = *a3;
    v21 = sub_7F20E8(*a3, v8 - 2);
    if (v21 <= sub_7F20E8(v20, v8))
    {
      result = sub_7F8A5C(v8, a2, a3);
      v10 = result;
      goto LABEL_23;
    }

LABEL_18:
    v22 = sub_7F8C08(v8, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v24 = sub_7F8DA4(v8, v22, a3);
    v10 = v22 + 2;
    result = sub_7F8DA4(v22 + 2, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_21:
      result = sub_7F81D4(v8, v22, a3, -v12, a5 & 1);
      v10 = v22 + 2;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v28 = v10 + 2;
  v30 = v10 == a2 || v28 == a2;
  if (a5)
  {
    if (!v30)
    {
      v31 = 0;
      v32 = v10;
      do
      {
        v34 = v32;
        v32 = v28;
        v35 = *a3;
        v36 = sub_7F20E8(*a3, v28);
        result = sub_7F20E8(v35, v34);
        if (v36 > result)
        {
          v52 = *v32;
          v37 = v31;
          do
          {
            *(v10 + v37 + 8) = *(v10 + v37);
            if (!v37)
            {
              v33 = v10;
              goto LABEL_47;
            }

            v37 -= 8;
            v38 = *a3;
            v39 = sub_7F20E8(*a3, &v52);
            result = sub_7F20E8(v38, (v10 + v37));
          }

          while (v39 > result);
          v33 = (v10 + v37 + 8);
LABEL_47:
          *v33 = v52;
        }

        v28 = v32 + 2;
        v31 += 8;
      }

      while (v32 + 2 != a2);
    }
  }

  else if (!v30)
  {
    v44 = v10 - 2;
    do
    {
      v45 = v8;
      v8 = v28;
      v46 = *a3;
      v47 = sub_7F20E8(*a3, v28);
      result = sub_7F20E8(v46, v45);
      if (v47 > result)
      {
        v52 = *v8;
        v48 = v44;
        do
        {
          *(v48 + 2) = *(v48 + 1);
          v49 = *a3;
          v50 = sub_7F20E8(*a3, &v52);
          result = sub_7F20E8(v49, v48);
          v48 -= 2;
        }

        while (v50 > result);
        *(v48 + 2) = v52;
      }

      v28 = v8 + 2;
      v44 += 2;
    }

    while (v8 + 2 != a2);
  }

  return result;
}

uint64_t sub_7F86D4(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_7F20E8(*a4, a2);
  v10 = sub_7F20E8(v8, a1);
  v11 = *a4;
  v12 = sub_7F20E8(*a4, a3);
  v13 = sub_7F20E8(v11, a2);
  if (v9 > v10)
  {
    v14 = *a1;
    if (v12 <= v13)
    {
      *a1 = *a2;
      *a2 = v14;
      v19 = *a4;
      v20 = sub_7F20E8(*a4, a3);
      if (v20 <= sub_7F20E8(v19, a2))
      {
        return 1;
      }

      v14 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v14;
    return 1;
  }

  if (v12 > v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    v16 = *a4;
    v17 = sub_7F20E8(*a4, a2);
    if (v17 > sub_7F20E8(v16, a1))
    {
      v18 = *a1;
      *a1 = *a2;
      *a2 = v18;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_7F8830(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  sub_7F86D4(a1, a2, a3, a5);
  v10 = *a5;
  v11 = sub_7F20E8(*a5, a4);
  result = sub_7F20E8(v10, a3);
  if (v11 > result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a5;
    v15 = sub_7F20E8(*a5, a3);
    result = sub_7F20E8(v14, a2);
    if (v15 > result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a5;
      v18 = sub_7F20E8(v17, a2);
      result = sub_7F20E8(v17, a1);
      if (v18 > result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_7F8928(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t *a6)
{
  sub_7F8830(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = sub_7F20E8(*a6, a5);
  result = sub_7F20E8(v12, a4);
  if (v13 > result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a6;
    v17 = sub_7F20E8(*a6, a4);
    result = sub_7F20E8(v16, a3);
    if (v17 > result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a6;
      v20 = sub_7F20E8(*a6, a3);
      result = sub_7F20E8(v19, a2);
      if (v20 > result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a6;
        v23 = sub_7F20E8(v22, a2);
        result = sub_7F20E8(v22, a1);
        if (v23 > result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_7F8A5C(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = a2;
  v24 = *a1;
  v6 = a2 - 2;
  v7 = *a3;
  v8 = sub_7F20E8(*a3, &v24);
  if (v8 <= sub_7F20E8(v7, v6))
  {
    v12 = a1 + 2;
    do
    {
      v9 = v12;
      if (v12 >= v4)
      {
        break;
      }

      v13 = *a3;
      v14 = sub_7F20E8(*a3, &v24);
      v15 = sub_7F20E8(v13, v9);
      v12 = v9 + 2;
    }

    while (v14 <= v15);
  }

  else
  {
    v9 = a1;
    do
    {
      v9 += 2;
      v10 = *a3;
      v11 = sub_7F20E8(*a3, &v24);
    }

    while (v11 <= sub_7F20E8(v10, v9));
  }

  if (v9 < v4)
  {
    do
    {
      v4 -= 2;
      v16 = *a3;
      v17 = sub_7F20E8(*a3, &v24);
    }

    while (v17 > sub_7F20E8(v16, v4));
  }

  while (v9 < v4)
  {
    v18 = *v9;
    *v9 = *v4;
    *v4 = v18;
    do
    {
      v9 += 2;
      v19 = *a3;
      v20 = sub_7F20E8(*a3, &v24);
    }

    while (v20 <= sub_7F20E8(v19, v9));
    do
    {
      v4 -= 2;
      v21 = *a3;
      v22 = sub_7F20E8(*a3, &v24);
    }

    while (v22 > sub_7F20E8(v21, v4));
  }

  if (v9 - 2 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v24;
  return v9;
}

unsigned int *sub_7F8C08(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  v23 = *a1;
  do
  {
    v6 += 2;
    v7 = *a3;
    v8 = sub_7F20E8(*a3, &a1[v6]);
  }

  while (v8 > sub_7F20E8(v7, &v23));
  v9 = &a1[v6];
  v10 = &a1[v6 - 2];
  if (v6 == 2)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 2;
      v13 = *a3;
      v14 = sub_7F20E8(*a3, a2);
    }

    while (v14 <= sub_7F20E8(v13, &v23));
  }

  else
  {
    do
    {
      a2 -= 2;
      v11 = *a3;
      v12 = sub_7F20E8(*a3, a2);
    }

    while (v12 <= sub_7F20E8(v11, &v23));
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v15 += 2;
        v18 = *a3;
        v19 = sub_7F20E8(*a3, v15);
      }

      while (v19 > sub_7F20E8(v18, &v23));
      do
      {
        v16 -= 2;
        v20 = *a3;
        v21 = sub_7F20E8(*a3, v16);
      }

      while (v21 <= sub_7F20E8(v20, &v23));
    }

    while (v15 < v16);
    v10 = v15 - 2;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v23;
  return v10;
}

BOOL sub_7F8DA4(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 2;
        v8 = *a3;
        v9 = sub_7F20E8(*a3, a2 - 2);
        if (v9 > sub_7F20E8(v8, a1))
        {
          v10 = *a1;
          *a1 = *v7;
          *v7 = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_7F86D4(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      sub_7F8830(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      sub_7F8928(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 4;
  sub_7F86D4(a1, a1 + 2, a1 + 4, a3);
  v12 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *a3;
    v16 = sub_7F20E8(*a3, v12);
    if (v16 > sub_7F20E8(v15, v11))
    {
      break;
    }

LABEL_20:
    v11 = v12;
    v13 += 8;
    v12 += 2;
    if (v12 == a2)
    {
      return 1;
    }
  }

  v22 = *v12;
  v17 = v13;
  do
  {
    *(a1 + v17 + 24) = *(a1 + v17 + 16);
    if (v17 == -16)
    {
      *a1 = v22;
      if (++v14 != 8)
      {
        goto LABEL_20;
      }

      return v12 + 2 == a2;
    }

    v18 = *a3;
    v19 = sub_7F20E8(*a3, &v22);
    v20 = sub_7F20E8(v18, (a1 + v17 + 8));
    v17 -= 8;
  }

  while (v19 > v20);
  *(a1 + v17 + 24) = v22;
  if (++v14 != 8)
  {
    goto LABEL_20;
  }

  return v12 + 2 == a2;
}