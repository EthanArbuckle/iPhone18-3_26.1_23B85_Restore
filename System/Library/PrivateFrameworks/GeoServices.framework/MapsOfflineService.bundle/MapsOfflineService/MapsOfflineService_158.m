void sub_9C33A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a20;
    if (!a20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_9C341C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        v8 = *v2;
        v9 = *(v2 + 5);
        if (v9)
        {
          *(v2 + 6) = v9;
          operator delete(v9);
        }

        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v8;
      }

      while (v8);
    }

    *(a1 + 16) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      bzero(*a1, 8 * v3);
    }

    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != v4)
  {
    do
    {
      v6 = *(v5 - 3);
      if (v6)
      {
        *(v5 - 2) = v6;
        operator delete(v6);
      }

      v7 = v5 - 6;
      if (*(v5 - 25) < 0)
      {
        operator delete(*v7);
      }

      v5 -= 6;
    }

    while (v7 != v4);
  }

  *(a1 + 48) = v4;
}

__n128 sub_9C34EC@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6 = *a2;
  v7 = *(a2 + 8);
  v17[0] = a1;
  if (v7 - v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v7 - v6;
    while (1)
    {
      v9 = operator new(8 * v8, &std::nothrow);
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
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_9C7C98(v6, v7, v17, v7 - v6, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = **a2;
  v14 = a1[22];
  if (0x823EE08FB823EE09 * ((a1[23] - v14) >> 3) <= v13)
  {
    sub_6FAB4();
  }

  sub_9D6E68(v14 + 456 * v13 + 272, v17);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *v17;
  *(a3 + 16) = v18;
  HIBYTE(v18) = 0;
  LOBYTE(v17[0]) = 0;
  if (v20 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  v15 = *(a3 + 24);
  if (v15)
  {
    *(a3 + 32) = v15;
    operator delete(v15);
  }

  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  return result;
}

void sub_9C36A4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  sub_B8580(v1);
  _Unwind_Resume(a1);
}

void sub_9C36C4(uint64_t a1@<X0>, unint64_t **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if ((a4 + 24) != a2)
  {
    sub_31F64((a4 + 24), *a2, a2[1], a2[1] - *a2);
  }

  v8 = a2[1] - *a2;
  if (v8 == 8)
  {
    v9 = **a2;
    v10 = *(a1 + 176);
    if (0x823EE08FB823EE09 * ((*(a1 + 184) - v10) >> 3) <= v9)
    {
      sub_6FAB4();
    }

    v11 = v10 + 456 * v9;
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_16:
        v12 = *(a4 + 23);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a4 + 8);
        }

        if (!v12)
        {
          sub_9D6E68(v11 + 144, v13);
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          *a4 = *v13;
          *(a4 + 16) = v14;
          HIBYTE(v14) = 0;
          LOBYTE(v13[0]) = 0;
          if (v16 < 0)
          {
            operator delete(__p);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(v13[0]);
            }
          }
        }

        return;
      }

      sub_9D6E68(v11 + 336, v13);
    }

    else
    {
      sub_9D6E68(v11 + 208, v13);
    }

    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v13;
    *(a4 + 16) = v14;
    HIBYTE(v14) = 0;
    LOBYTE(v13[0]) = 0;
    if (v16 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    goto LABEL_16;
  }

  if (v8 >= 9)
  {
    operator new();
  }
}

void sub_9C3A5C(void *a1, void *a2, char **a3)
{
  sub_9C3B8C(a1, a2, &v15);
  v6 = a2[296];
  if (v6)
  {
    a2[297] = v6;
    operator delete(v6);
    a2[296] = 0;
    a2[297] = 0;
    a2[298] = 0;
  }

  v7 = *(&v15 + 1);
  *(a2 + 148) = v15;
  a2[298] = v16;
  sub_2CE7AC((a2 + 296), v7, *a3, a3[1], (a3[1] - *a3) >> 3);
  v8 = a2[296];
  v9 = a2[297];
  *&v15 = a1;
  if (v9 - v8 < 129)
  {
    v14 = 0;
    v10 = 0;
  }

  else
  {
    v10 = v9 - v8;
    while (1)
    {
      v11 = operator new(8 * v10, &std::nothrow);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        v14 = 0;
        v10 = v12;
        goto LABEL_10;
      }
    }

    v14 = v11;
  }

LABEL_10:
  sub_9C9648(v8, v9, &v15, v9 - v8, v14, v10);
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_9C3B74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C3B8C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v88 = 0u;
  v89 = 0u;
  v90 = 1065353216;
  sub_A21C90(v87, a2);
  v5 = 0x924924924924924;
  while (1)
  {
    sub_A21CE8(v87, __p);
    v6 = sub_A21B4C(v87, __p);
    sub_98ED24(__p);
    if (!v6)
    {
      break;
    }

    v86 = 0;
    v85 = 0u;
    *__p = 0u;
    memset(v84, 0, sizeof(v84));
    v7 = *sub_A21CB8(v87);
    if (v7 <= 5)
    {
      if (v7 == 2)
      {
        v22 = sub_A21CB8(v87);
        sub_A21730(v87, &v77);
        sub_9C4A38(a1, v22, &v77, __src);
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_45;
        }

        sub_A21730(v87, &v77);
        sub_9C507C(&v77, __src);
      }
    }

    else
    {
      switch(v7)
      {
        case 6:
          v9 = sub_A21CB8(v87);
          sub_A21834(v87, 2uLL, &v77);
          sub_9C51E4(a1, v9, &v77, __src);
          break;
        case 7:
          v10 = sub_A21CB8(v87);
          sub_A21730(v87, &v77);
          v82 = 0;
          v81 = 0u;
          *__src = 0u;
          memset(v80, 0, sizeof(v80));
          v11 = *(v10 + 2000);
          v12 = *(v10 + 2008);
          if (v11 == v12)
          {
            v13 = 0;
          }

          else if (**(v78 - 1))
          {
            v13 = 0;
            do
            {
              if (*(v11 + 27))
              {
                if (v13 < v80[0])
                {
                  v14 = *v11;
                  *(v13 + 12) = *(v11 + 12);
                  *v13 = v14;
                  v13 = (v13 + 28);
                }

                else
                {
                  v15 = __src[0];
                  v16 = 0x6DB6DB6DB6DB6DB7 * ((v13 - __src[0]) >> 2);
                  v17 = v16 + 1;
                  if ((v16 + 1) > 0x924924924924924)
                  {
                    sub_1794();
                  }

                  if (0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2) > v17)
                  {
                    v17 = 0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2);
                  }

                  if ((0x6DB6DB6DB6DB6DB7 * ((v80[0] - __src[0]) >> 2)) < 0x492492492492492)
                  {
                    v5 = v17;
                  }

                  if (v5)
                  {
                    if (v5 <= 0x924924924924924)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v18 = v13;
                  v19 = (4 * ((v13 - __src[0]) >> 2));
                  v20 = *v11;
                  *(v19 + 12) = *(v11 + 12);
                  *v19 = v20;
                  v13 = (28 * v16 + 28);
                  v21 = (28 * v16 - (v18 - v15));
                  memcpy(v19 - (v18 - v15), v15, v18 - v15);
                  __src[0] = v21;
                  __src[1] = v13;
                  v80[0] = 0;
                  if (v15)
                  {
                    operator delete(v15);
                  }

                  v5 = 0x924924924924924;
                }

                __src[1] = v13;
              }

              v11 = (v11 + 28);
            }

            while (v11 != v12);
          }

          else
          {
            v13 = 0;
            do
            {
              while (v13 < v80[0])
              {
                v66 = *v11;
                *(v13 + 12) = *(v11 + 12);
                *v13 = v66;
                v13 = (v13 + 28);
                __src[1] = v13;
                v11 = (v11 + 28);
                if (v11 == v12)
                {
                  goto LABEL_174;
                }
              }

              v67 = __src[0];
              v68 = 0x6DB6DB6DB6DB6DB7 * ((v13 - __src[0]) >> 2);
              v69 = v68 + 1;
              if ((v68 + 1) > 0x924924924924924)
              {
                sub_1794();
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2) > v69)
              {
                v69 = 0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((v80[0] - __src[0]) >> 2)) < 0x492492492492492)
              {
                v5 = v69;
              }

              if (v5)
              {
                if (v5 <= 0x924924924924924)
                {
                  operator new();
                }

                sub_1808();
              }

              v70 = v13;
              v71 = (4 * ((v13 - __src[0]) >> 2));
              v72 = *v11;
              *(v71 + 12) = *(v11 + 12);
              *v71 = v72;
              v13 = (28 * v68 + 28);
              v73 = (28 * v68 - (v70 - v67));
              memcpy(v71 - (v70 - v67), v67, v70 - v67);
              __src[0] = v73;
              __src[1] = v13;
              v80[0] = 0;
              if (v67)
              {
                operator delete(v67);
              }

              v5 = 0x924924924924924;
              __src[1] = v13;
              v11 = (v11 + 28);
            }

            while (v11 != v12);
          }

LABEL_174:
          sub_981D00(&v80[1], v80[2], __src[0], v13, 0x6DB6DB6DB6DB6DB7 * ((v13 - __src[0]) >> 2));
          v23 = __p[0];
          if (!__p[0])
          {
            goto LABEL_35;
          }

LABEL_34:
          __p[1] = v23;
          operator delete(v23);
          goto LABEL_35;
        case 8:
          v8 = sub_A21CB8(v87);
          sub_A21730(v87, &v77);
          sub_9C4DBC(v8, &v77, __src);
          break;
        default:
          goto LABEL_45;
      }
    }

    v23 = __p[0];
    if (__p[0])
    {
      goto LABEL_34;
    }

LABEL_35:
    *__p = *__src;
    v84[0] = v80[0];
    __src[1] = 0;
    v80[0] = 0;
    __src[0] = 0;
    if (v84[1])
    {
      v84[2] = v84[1];
      operator delete(v84[1]);
    }

    *&v84[1] = *&v80[1];
    v84[3] = v80[3];
    memset(&v80[1], 0, 24);
    v24 = v85;
    if (v85)
    {
      *(&v85 + 1) = v85;
      operator delete(v85);
      v24 = v80[1];
    }

    v85 = v81;
    v86 = v82;
    v82 = 0;
    v81 = 0uLL;
    if (v24)
    {
      v80[2] = v24;
      operator delete(v24);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

LABEL_45:
    if (__p[0] == __p[1])
    {
      goto LABEL_83;
    }

    sub_9C47F0(a1, __p, &v77);
    sub_9C36C4(a1, &v77, 1, __src);
    v25 = sub_9C70F4(a1 + 25, __src);
    if (v25)
    {
      v26 = v25[8];
    }

    else
    {
      v27 = a1[31];
      v91[0] = 0xAAAAAAAAAAAAAAABLL * ((v27 - a1[30]) >> 4);
      if (v27 >= a1[32])
      {
        v28 = sub_9C73E8(a1 + 30, __src);
      }

      else
      {
        sub_9C75AC(v27, __src);
        v28 = v27 + 48;
        a1[31] = v27 + 48;
      }

      a1[31] = v28;
      sub_9C7720(a1 + 25, __src);
      v26 = v91[0];
    }

    *(sub_A21CB8(v87) + 1992) = v26;
    v30 = v77;
    v29 = v78;
    while (v30 != v29)
    {
      v31 = *v30;
      v91[0] = *v30;
      if (*(&v88 + 1))
      {
        v32 = vcnt_s8(*(&v88 + 8));
        v32.i16[0] = vaddlv_u8(v32);
        if (v32.u32[0] > 1uLL)
        {
          v33 = v31;
          if (*(&v88 + 1) <= v31)
          {
            v33 = v31 % *(&v88 + 1);
          }
        }

        else
        {
          v33 = (*(&v88 + 1) - 1) & v31;
        }

        v34 = *(v88 + 8 * v33);
        if (v34)
        {
          v35 = *v34;
          if (v35)
          {
            if (v32.u32[0] < 2uLL)
            {
              while (1)
              {
                v36 = v35[1];
                if (v36 == v31)
                {
                  if (v35[2] == v31)
                  {
                    goto LABEL_53;
                  }
                }

                else if ((v36 & (*(&v88 + 1) - 1)) != v33)
                {
                  goto LABEL_75;
                }

                v35 = *v35;
                if (!v35)
                {
                  goto LABEL_75;
                }
              }
            }

            do
            {
              v37 = v35[1];
              if (v37 == v31)
              {
                if (v35[2] == v31)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                if (v37 >= *(&v88 + 1))
                {
                  v37 %= *(&v88 + 1);
                }

                if (v37 != v33)
                {
                  break;
                }
              }

              v35 = *v35;
            }

            while (v35);
          }
        }
      }

LABEL_75:
      sub_9C6938(&v88, v91);
      sub_2512DC(a3, v30);
LABEL_53:
      ++v30;
    }

    v38 = (sub_A21CB8(v87) + 3448);
    if (v38 != &v77)
    {
      sub_31F64(v38, v77, v78, (v78 - v77) >> 3);
    }

    if (v80[1])
    {
      v80[2] = v80[1];
      operator delete(v80[1]);
    }

    if ((SHIBYTE(v80[0]) & 0x80000000) == 0)
    {
      v39 = v77;
      if (!v77)
      {
        goto LABEL_83;
      }

LABEL_82:
      v78 = v39;
      operator delete(v39);
      goto LABEL_83;
    }

    operator delete(__src[0]);
    v39 = v77;
    if (v77)
    {
      goto LABEL_82;
    }

LABEL_83:
    if (v84[1] == v84[2])
    {
      goto LABEL_123;
    }

    sub_9C47F0(a1, &v84[1], &v77);
    sub_9C36C4(a1, &v77, 1, __src);
    v40 = sub_9C70F4(a1 + 25, __src);
    if (v40)
    {
      v41 = v40[8];
    }

    else
    {
      v42 = a1[31];
      v91[0] = 0xAAAAAAAAAAAAAAABLL * ((v42 - a1[30]) >> 4);
      if (v42 >= a1[32])
      {
        v43 = sub_9C73E8(a1 + 30, __src);
      }

      else
      {
        sub_9C75AC(v42, __src);
        v43 = v42 + 48;
        a1[31] = v42 + 48;
      }

      a1[31] = v43;
      sub_9C7720(a1 + 25, __src);
      v41 = v91[0];
    }

    *(sub_A21CB8(v87) + 1984) = v41;
    v45 = v77;
    v44 = v78;
    while (v45 != v44)
    {
      v46 = *v45;
      v91[0] = *v45;
      if (*(&v88 + 1))
      {
        v47 = vcnt_s8(*(&v88 + 8));
        v47.i16[0] = vaddlv_u8(v47);
        if (v47.u32[0] > 1uLL)
        {
          v48 = v46;
          if (*(&v88 + 1) <= v46)
          {
            v48 = v46 % *(&v88 + 1);
          }
        }

        else
        {
          v48 = (*(&v88 + 1) - 1) & v46;
        }

        v49 = *(v88 + 8 * v48);
        if (v49)
        {
          v50 = *v49;
          if (v50)
          {
            if (v47.u32[0] < 2uLL)
            {
              while (1)
              {
                v52 = v50[1];
                if (v52 == v46)
                {
                  if (v50[2] == v46)
                  {
                    goto LABEL_93;
                  }
                }

                else if ((v52 & (*(&v88 + 1) - 1)) != v48)
                {
                  goto LABEL_115;
                }

                v50 = *v50;
                if (!v50)
                {
                  goto LABEL_115;
                }
              }
            }

            do
            {
              v51 = v50[1];
              if (v51 == v46)
              {
                if (v50[2] == v46)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                if (v51 >= *(&v88 + 1))
                {
                  v51 %= *(&v88 + 1);
                }

                if (v51 != v48)
                {
                  break;
                }
              }

              v50 = *v50;
            }

            while (v50);
          }
        }
      }

LABEL_115:
      sub_9C6938(&v88, v91);
      sub_2512DC(a3, v45);
LABEL_93:
      ++v45;
    }

    v53 = (sub_A21CB8(v87) + 3472);
    if (v53 != &v77)
    {
      sub_31F64(v53, v77, v78, (v78 - v77) >> 3);
    }

    if (v80[1])
    {
      v80[2] = v80[1];
      operator delete(v80[1]);
    }

    if ((SHIBYTE(v80[0]) & 0x80000000) == 0)
    {
      v54 = v77;
      if (!v77)
      {
        goto LABEL_123;
      }

LABEL_122:
      v78 = v54;
      operator delete(v54);
      goto LABEL_123;
    }

    operator delete(__src[0]);
    v54 = v77;
    if (v77)
    {
      goto LABEL_122;
    }

LABEL_123:
    v55 = v85;
    if (v85 != *(&v85 + 1))
    {
      sub_9C47F0(a1, &v85, __src);
      v57 = __src[0];
      v56 = __src[1];
      if (__src[0] != __src[1])
      {
        v58 = __src[0];
        do
        {
          v59 = *v58;
          v77 = *v58;
          if (*(&v88 + 1))
          {
            v60 = vcnt_s8(*(&v88 + 8));
            v60.i16[0] = vaddlv_u8(v60);
            if (v60.u32[0] > 1uLL)
            {
              v61 = v59;
              if (*(&v88 + 1) <= v59)
              {
                v61 = v59 % *(&v88 + 1);
              }
            }

            else
            {
              v61 = (*(&v88 + 1) - 1) & v59;
            }

            v62 = *(v88 + 8 * v61);
            if (v62)
            {
              v63 = *v62;
              if (v63)
              {
                if (v60.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v65 = v63[1];
                    if (v65 == v59)
                    {
                      if (v63[2] == v59)
                      {
                        goto LABEL_147;
                      }
                    }

                    else if ((v65 & (*(&v88 + 1) - 1)) != v61)
                    {
                      goto LABEL_146;
                    }

                    v63 = *v63;
                    if (!v63)
                    {
                      goto LABEL_146;
                    }
                  }
                }

                do
                {
                  v64 = v63[1];
                  if (v64 == v59)
                  {
                    if (v63[2] == v59)
                    {
                      goto LABEL_147;
                    }
                  }

                  else
                  {
                    if (v64 >= *(&v88 + 1))
                    {
                      v64 %= *(&v88 + 1);
                    }

                    if (v64 != v61)
                    {
                      break;
                    }
                  }

                  v63 = *v63;
                }

                while (v63);
              }
            }
          }

LABEL_146:
          sub_9C6938(&v88, &v77);
          sub_2512DC(a3, v58);
LABEL_147:
          ++v58;
        }

        while (v58 != v56);
      }

      if (v57)
      {
        operator delete(v57);
      }

      v55 = v85;
    }

    if (v55)
    {
      *(&v85 + 1) = v55;
      operator delete(v55);
    }

    if (v84[1])
    {
      v84[2] = v84[1];
      operator delete(v84[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_A21708(v87);
  }

  sub_98ED24(v87);
  v74 = v89;
  if (v89)
  {
    do
    {
      v75 = *v74;
      operator delete(v74);
      v74 = v75;
    }

    while (v75);
  }

  v76 = v88;
  *&v88 = 0;
  if (v76)
  {
    operator delete(v76);
  }
}

void sub_9C46D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_11BD8(v43 - 144);
  v45 = *v42;
  if (*v42)
  {
    *(v42 + 8) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

void sub_9C47F0(uint64_t a1@<X0>, unsigned int **a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*a1 + 11688);
      v10 = *v3;
      if (*(v3 + 4) == 1)
      {
        v12 = v9[1];
        v11 = v9[2];
      }

      else
      {
        v12 = v9[4];
        v11 = v9[5];
      }

      if (0x823EE08FB823EE09 * ((v11 - v12) >> 3) <= v10)
      {
        sub_6FAB4();
      }

      v13 = sub_9C6C6C((a1 + 136), v3);
      if (v13)
      {
        v14 = v13[3];
        if (v8 >= v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v15 = v12 + 456 * v10;
        v16 = *(a1 + 184);
        v23 = 0x823EE08FB823EE09 * ((v16 - *(a1 + 176)) >> 3);
        if (v16 >= *(a1 + 192))
        {
          v17 = sub_399DB8((a1 + 176), v15);
        }

        else
        {
          sub_39A0FC(v16, v15);
          v17 = v16 + 456;
          *(a1 + 184) = v16 + 456;
        }

        *(a1 + 184) = v17;
        sub_9C6D84((a1 + 136), v3);
        v14 = v23;
        v8 = a3[1];
        v7 = a3[2];
        if (v8 >= v7)
        {
LABEL_16:
          v18 = *a3;
          v19 = v8 - *a3;
          v20 = (v19 >> 3) + 1;
          if (v20 >> 61)
          {
            sub_1794();
          }

          if ((v7 - v18) >> 2 > v20)
          {
            v20 = (v7 - v18) >> 2;
          }

          if (v7 - v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (8 * (v19 >> 3));
          v7 = 0;
          *v22 = v14;
          v8 = v22 + 1;
          memcpy(0, v18, v19);
          *a3 = 0;
          a3[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }

          goto LABEL_4;
        }
      }

      *v8++ = v14;
LABEL_4:
      a3[1] = v8;
      v3 += 7;
    }

    while (v3 != v4);
  }
}

void sub_9C4A08(_Unwind_Exception *exception_object)
{
  *(v2 + 184) = v3;
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C4A38(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v7 = a3[1];
  if (v7 == *a3 || (v8 = *(v7 - 8), *v8 != 6) && (v7 - 8 == *a3 || (v8 = *(v7 - 16), *v8 != 6)))
  {
    v11 = 1;
    v12 = *(a2 + 2000);
    v13 = *(a2 + 2008);
    if (v12 == v13)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (*(*(a1 + 16) + 1444) >= 2u)
  {
    v9 = *(v8 + 2000);
    v10 = *(v8 + 2008);
    if (v9 != v10)
    {
      do
      {
        if (*(v9 + 27) == 1)
        {
          sub_981B9C(a4 + 24, v9);
        }

        v9 += 28;
      }

      while (v9 != v10);
      v14 = *(v8 + 2000);
      for (i = *(v8 + 2008); v14 != i; v14 += 28)
      {
        if (*(v14 + 27) == 1)
        {
          sub_981B9C(a4, v14);
        }
      }
    }
  }

  v11 = 0;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2008);
  if (v12 != v13)
  {
    do
    {
LABEL_19:
      if (((*(v12 + 24) & 1) != 0 || (*(v12 + 25) & 1) != 0 || *(v12 + 26) == 1) && (*(v12 + 19) != 1 || (*(v12 + 21) & 1) != 0 || (*(v12 + 17) & 1) != 0 || (*(v12 + 20) & 1) != 0 || (*(v12 + 18) & 1) != 0 || (*(v12 + 22) & 1) != 0 || *(v12 + 16) == 1))
      {
        sub_981B9C(a4 + 24, v12);
      }

      v12 += 28;
    }

    while (v12 != v13);
    v12 = *(a2 + 2000);
    v13 = *(a2 + 2008);
    if (v12 == v13)
    {
      goto LABEL_53;
    }

    while (1)
    {
LABEL_37:
      if (((*(*(a1 + 16) + 1444) < 2u) & ~v11) != 0)
      {
        if (*(v12 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (*(v12 + 24))
      {
        goto LABEL_43;
      }

      if ((*(v12 + 25) & 1) != 0 || *(v12 + 26) == 1)
      {
LABEL_43:
        if (*(v12 + 19) != 1 || (*(v12 + 21) & 1) != 0 || (*(v12 + 17) & 1) != 0 || (*(v12 + 20) & 1) != 0 || (*(v12 + 18) & 1) != 0 || (*(v12 + 22) & 1) != 0 || *(v12 + 16) == 1)
        {
          sub_981B9C(a4, v12);
        }
      }

LABEL_36:
      v12 += 28;
      if (v12 == v13)
      {
        v12 = *(a2 + 2000);
        v13 = *(a2 + 2008);
        goto LABEL_53;
      }
    }
  }

LABEL_15:
  if (v12 != v13)
  {
    goto LABEL_37;
  }

LABEL_53:
  while (v12 != v13)
  {
    if (*(v12 + 19) == 1 && (*(v12 + 21) & 1) == 0 && (*(v12 + 17) & 1) == 0 && (*(v12 + 20) & 1) == 0 && (*(v12 + 18) & 1) == 0 && (*(v12 + 22) & 1) == 0 && (*(v12 + 16) & 1) == 0)
    {
      sub_981B9C(a4 + 48, v12);
    }

    v12 += 28;
  }
}

uint64_t sub_9C4D68(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_9C4DBC(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *a2;
  v5 = a2[1];
  while (v5 != v6)
  {
    v8 = *(v5 - 8);
    v5 -= 8;
    v7 = v8;
    v9 = *v8;
    if (*v8 == 8 || v9 == 2)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v6 - 8);
LABEL_10:
  __p = 0;
  v19 = 0;
  v20 = 0;
  v11 = *(v7 + 251);
  v12 = *(v7 + 250);
  if (v11 != v12)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 2)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  p_p = &__p;
  v13 = *(a1 + 2000);
  v14 = *(a1 + 2008);
  while (v13 != v14)
  {
    if (*(v13 + 23) != 1 || (*(v13 + 24) & 1) != 0 || (*(v13 + 25) & 1) != 0 || *(v13 + 26) == 1) && (*(v13 + 19) != 1 || (*(v13 + 21) & 1) != 0 || (*(v13 + 17) & 1) != 0 || (*(v13 + 20) & 1) != 0 || (*(v13 + 18) & 1) != 0 || (*(v13 + 22) & 1) != 0 || (*(v13 + 16)))
    {
      v15 = __p;
      if (__p != v19)
      {
        while (*v15 != *v13 || *(v15 + 4) != *(v13 + 4))
        {
          v15 += 2;
          if (v15 == v19)
          {
            goto LABEL_14;
          }
        }
      }

      if (v15 == v19)
      {
LABEL_14:
        sub_981B9C(a3, v13);
      }
    }

    v13 += 28;
  }

  sub_981D00(a3 + 24, *(a3 + 32), *a3, *(a3 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 2));
  v16 = *(a1 + 2000);
  v17 = *(a1 + 2008);
  while (v16 != v17)
  {
    if (*(v16 + 19) == 1 && (*(v16 + 21) & 1) == 0 && (*(v16 + 17) & 1) == 0 && (*(v16 + 20) & 1) == 0 && (*(v16 + 18) & 1) == 0 && (*(v16 + 22) & 1) == 0 && (*(v16 + 16) & 1) == 0)
    {
      sub_981B9C(a3 + 48, v16);
    }

    v16 += 28;
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_9C5038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_9C4D68(v11);
  _Unwind_Resume(a1);
}

void *sub_9C507C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *a1;
  v3 = a1[1];
  while (v3 != v4)
  {
    v6 = *(v3 - 8);
    v3 -= 8;
    v5 = v6;
    v7 = *v6;
    if (*v6 == 8 || v7 == 2)
    {
      v9 = *(v5 + 250);
      v10 = *(v5 + 251);
      if (v9 == v10)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  v11 = *(v4 - 8);
  v9 = *(v11 + 2000);
  v10 = *(v11 + 2008);
  if (v9 == v10)
  {
LABEL_11:
    v12 = 0;
    v13 = 0uLL;
    return sub_981D00(a2 + 24, v12, v13, *(&v13 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v13 + 1) - v13) >> 2));
  }

  do
  {
LABEL_14:
    if (*(v9 + 23) == 1 && (*(v9 + 24) & 1) == 0 && (*(v9 + 25) & 1) == 0 && (*(v9 + 26) & 1) == 0 && (*(v9 + 19) != 1 || (*(v9 + 21) & 1) != 0 || (*(v9 + 17) & 1) != 0 || (*(v9 + 20) & 1) != 0 || (*(v9 + 18) & 1) != 0 || (*(v9 + 22) & 1) != 0 || *(v9 + 16) == 1))
    {
      sub_981B9C(a2, v9);
    }

    v9 += 28;
  }

  while (v9 != v10);
  v12 = *(a2 + 32);
  v13 = *a2;
  return sub_981D00(a2 + 24, v12, v13, *(&v13 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v13 + 1) - v13) >> 2));
}

void sub_9C51E4(uint64_t a1@<X0>, uint64_t a2@<X1>, int ***a3@<X2>, uint64_t a4@<X8>)
{
  if (*(*(a1 + 16) + 1444) >= 2u)
  {
    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v5 = *a3;
    v6 = *(a2 + 2000);
    v7 = *(a2 + 2008);
    if (v6 == v7)
    {
      v8 = 0;
      v9 = 0;
      v18 = a3[1];
      if (v5 != v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = **v5;
      do
      {
        if (v10 == 9 || (*(v6 + 27) & 1) != 0)
        {
          v11 = v8 - v9;
          v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
          v13 = v12 + 1;
          if ((v12 + 1) > 0x924924924924924)
          {
            sub_1794();
          }

          if (0xDB6DB6DB6DB6DB6ELL * (-v9 >> 2) > v13)
          {
            v13 = 0xDB6DB6DB6DB6DB6ELL * (-v9 >> 2);
          }

          if ((0x6DB6DB6DB6DB6DB7 * (-v9 >> 2)) >= 0x492492492492492)
          {
            v14 = 0x924924924924924;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            if (v14 <= 0x924924924924924)
            {
              operator new();
            }

            sub_1808();
          }

          v15 = 28 * v12;
          v16 = *v6;
          *(v15 + 12) = *(v6 + 12);
          *v15 = v16;
          v8 = (28 * v12 + 28);
          v17 = (v15 + 28 * (v11 / -28));
          memcpy(v17, v9, v11);
          if (v9)
          {
            operator delete(v9);
          }

          v9 = v17;
        }

        v6 = (v6 + 28);
      }

      while (v6 != v7);
      v5 = *a3;
      v18 = a3[1];
      if (*a3 != v18)
      {
LABEL_23:
        while (**v5 != 2)
        {
          if (++v5 == v18)
          {
            goto LABEL_50;
          }
        }
      }
    }

    if (v5 == v18 || (v19 = *v5, v20 = *(v19 + 250), v21 = *(v19 + 251), v20 == v21))
    {
LABEL_50:
      v23 = 0;
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        if (*(v20 + 24) == 1 && (*(v20 + 19) != 1 || (*(v20 + 21) & 1) != 0 || (*(v20 + 17) & 1) != 0 || (*(v20 + 20) & 1) != 0 || (*(v20 + 18) & 1) != 0 || (*(v20 + 22) & 1) != 0 || *(v20 + 16) == 1))
        {
          v24 = v22 - v23;
          v25 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
          v26 = v25 + 1;
          if ((v25 + 1) > 0x924924924924924)
          {
            sub_1794();
          }

          if (0xDB6DB6DB6DB6DB6ELL * (-v23 >> 2) > v26)
          {
            v26 = 0xDB6DB6DB6DB6DB6ELL * (-v23 >> 2);
          }

          if ((0x6DB6DB6DB6DB6DB7 * (-v23 >> 2)) >= 0x492492492492492)
          {
            v27 = 0x924924924924924;
          }

          else
          {
            v27 = v26;
          }

          if (v27)
          {
            if (v27 <= 0x924924924924924)
            {
              operator new();
            }

            sub_1808();
          }

          v28 = 28 * v25;
          v29 = *v20;
          *(v28 + 12) = *(v20 + 12);
          *v28 = v29;
          v22 = (28 * v25 + 28);
          v30 = (v28 + 28 * (v24 / -28));
          memcpy(v30, v23, v24);
          if (v23)
          {
            operator delete(v23);
          }

          v23 = v30;
        }

        v20 = (v20 + 28);
      }

      while (v20 != v21);
    }

    *(a4 + 64) = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v31 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
    sub_981D00(a4 + 24, 0, v9, v8, v31);
    v33 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
    if (0x6DB6DB6DB6DB6DB7 * ((*(a4 + 16) - *a4) >> 2) < (v33 + v31))
    {
      if ((v33 + v31) <= 0x924924924924924)
      {
        operator new();
      }

      sub_1794();
    }

    sub_981D00(a4, *(a4 + 8), v9, v8, v31);
    sub_981D00(a4, *(a4 + 8), v23, v22, v33);
    if (v23)
    {
      operator delete(v23);
    }

    if (v9)
    {

      operator delete(v9);
    }
  }
}

void sub_9C572C(_Unwind_Exception *a1)
{
  sub_9C4D68(v2);
  if (v3)
  {
    operator delete(v3);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_9C5794(uint64_t a1)
{
  v1 = *(a1 + 424);
  v2 = *(a1 + 432);
  if (v1 != v2)
  {
    v3 = v1 + 16;
    LODWORD(v4) = -1;
    while (1)
    {
      v5 = v3 - 16;
      v10 = *(v3 - 8);
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      v6 = *(v3 + 80);
      if (v6 == 1)
      {
        sub_398970(v11, v3);
        v16 = 1;
      }

      v7 = v10 - 1;
      if (v10 - 1) < 7 && ((0x77u >> v7))
      {
        v8 = dword_22A5D04[v7];
        if (v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 == 4)
        {
          v8 = 14;
        }

        else
        {
          v8 = 0;
        }

        if (v6)
        {
LABEL_17:
          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          if (v12)
          {
            v13 = v12;
            operator delete(v12);
          }

          if (v11[0])
          {
            v11[1] = v11[0];
            operator delete(v11[0]);
          }
        }
      }

      if (v8 <= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v8;
      }

      v3 += 104;
      if (v5 + 104 == v2)
      {
        return v4;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t *sub_9C58D8(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x823EE08FB823EE09 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_399184(v10 - 456);
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

    if (a4 <= 0x8FB823EE08FB82)
    {
      v12 = 0x823EE08FB823EE09 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x47DC11F7047DC1)
      {
        v14 = 0x8FB823EE08FB82;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x8FB823EE08FB82)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x823EE08FB823EE09 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_9C5B78(v8, v5);
        v5 += 57;
        v8 += 456;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 456;
      result = sub_399184(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = (a2 + v16);
    if (v15 != v8)
    {
      do
      {
        result = sub_9C5B78(v8, v5);
        v5 += 57;
        v8 += 456;
        v16 -= 456;
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
        result = sub_39A0FC(v15 + v19 * 8, &v17[v19]);
        v19 += 57;
      }

      while (&v17[v19] != a3);
      v18 = v15 + v19 * 8;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_9C5B4C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 456;
    v7 = -v4;
    do
    {
      v6 = sub_399184(v6) - 456;
      v7 += 456;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_9C5B78(uint64_t result, void *a2)
{
  v3 = result;
  *result = *a2;
  if (result == a2)
  {
    *(result + 40) = *(a2 + 5);
    *(result + 104) = *(a2 + 13);
    *(result + 168) = *(a2 + 21);
    *(result + 232) = *(a2 + 29);
    *(result + 296) = *(a2 + 37);
    *(result + 360) = *(a2 + 45);
    v6 = *(a2 + 25);
    *(result + 416) = a2[52];
    *(result + 400) = v6;
    *(result + 448) = *(a2 + 224);
  }

  else
  {
    v4 = *(a2 + 39);
    if (*(result + 39) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a2 + 2;
      }

      else
      {
        v7 = a2[2];
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 39);
      }

      else
      {
        v8 = a2[3];
      }

      sub_13B38(result + 16, v7, v8);
    }

    else if ((*(a2 + 39) & 0x80) != 0)
    {
      sub_13A68((result + 16), a2[2], a2[3]);
    }

    else
    {
      v5 = *(a2 + 1);
      *(result + 32) = a2[4];
      *(result + 16) = v5;
    }

    *(v3 + 40) = *(a2 + 5);
    sub_398424((v3 + 56), a2[7], a2[8], (a2[8] - a2[7]) >> 5);
    v9 = *(a2 + 103);
    if (*(v3 + 103) < 0)
    {
      if (v9 >= 0)
      {
        v11 = a2 + 10;
      }

      else
      {
        v11 = a2[10];
      }

      if (v9 >= 0)
      {
        v12 = *(a2 + 103);
      }

      else
      {
        v12 = a2[11];
      }

      sub_13B38(v3 + 80, v11, v12);
    }

    else if ((*(a2 + 103) & 0x80) != 0)
    {
      sub_13A68((v3 + 80), a2[10], a2[11]);
    }

    else
    {
      v10 = *(a2 + 5);
      *(v3 + 96) = a2[12];
      *(v3 + 80) = v10;
    }

    *(v3 + 104) = *(a2 + 13);
    sub_398424((v3 + 120), a2[15], a2[16], (a2[16] - a2[15]) >> 5);
    v13 = *(a2 + 167);
    if (*(v3 + 167) < 0)
    {
      if (v13 >= 0)
      {
        v15 = a2 + 18;
      }

      else
      {
        v15 = a2[18];
      }

      if (v13 >= 0)
      {
        v16 = *(a2 + 167);
      }

      else
      {
        v16 = a2[19];
      }

      sub_13B38(v3 + 144, v15, v16);
    }

    else if ((*(a2 + 167) & 0x80) != 0)
    {
      sub_13A68((v3 + 144), a2[18], a2[19]);
    }

    else
    {
      v14 = *(a2 + 9);
      *(v3 + 160) = a2[20];
      *(v3 + 144) = v14;
    }

    *(v3 + 168) = *(a2 + 21);
    sub_398424((v3 + 184), a2[23], a2[24], (a2[24] - a2[23]) >> 5);
    v17 = *(a2 + 231);
    if (*(v3 + 231) < 0)
    {
      if (v17 >= 0)
      {
        v19 = a2 + 26;
      }

      else
      {
        v19 = a2[26];
      }

      if (v17 >= 0)
      {
        v20 = *(a2 + 231);
      }

      else
      {
        v20 = a2[27];
      }

      sub_13B38(v3 + 208, v19, v20);
    }

    else if ((*(a2 + 231) & 0x80) != 0)
    {
      sub_13A68((v3 + 208), a2[26], a2[27]);
    }

    else
    {
      v18 = *(a2 + 13);
      *(v3 + 224) = a2[28];
      *(v3 + 208) = v18;
    }

    *(v3 + 232) = *(a2 + 29);
    sub_398424((v3 + 248), a2[31], a2[32], (a2[32] - a2[31]) >> 5);
    v21 = *(a2 + 295);
    if (*(v3 + 295) < 0)
    {
      if (v21 >= 0)
      {
        v23 = a2 + 34;
      }

      else
      {
        v23 = a2[34];
      }

      if (v21 >= 0)
      {
        v24 = *(a2 + 295);
      }

      else
      {
        v24 = a2[35];
      }

      sub_13B38(v3 + 272, v23, v24);
    }

    else if ((*(a2 + 295) & 0x80) != 0)
    {
      sub_13A68((v3 + 272), a2[34], a2[35]);
    }

    else
    {
      v22 = *(a2 + 17);
      *(v3 + 288) = a2[36];
      *(v3 + 272) = v22;
    }

    *(v3 + 296) = *(a2 + 37);
    sub_398424((v3 + 312), a2[39], a2[40], (a2[40] - a2[39]) >> 5);
    v25 = *(a2 + 359);
    if (*(v3 + 359) < 0)
    {
      if (v25 >= 0)
      {
        v27 = a2 + 42;
      }

      else
      {
        v27 = a2[42];
      }

      if (v25 >= 0)
      {
        v28 = *(a2 + 359);
      }

      else
      {
        v28 = a2[43];
      }

      sub_13B38(v3 + 336, v27, v28);
    }

    else if ((*(a2 + 359) & 0x80) != 0)
    {
      sub_13A68((v3 + 336), a2[42], a2[43]);
    }

    else
    {
      v26 = *(a2 + 21);
      *(v3 + 352) = a2[44];
      *(v3 + 336) = v26;
    }

    *(v3 + 360) = *(a2 + 45);
    sub_398424((v3 + 376), a2[47], a2[48], (a2[48] - a2[47]) >> 5);
    v29 = *(a2 + 25);
    *(v3 + 416) = a2[52];
    *(v3 + 400) = v29;
    sub_9C5F08((v3 + 424), a2[53], a2[54], 0x4EC4EC4EC4EC4EC5 * ((a2[54] - a2[53]) >> 3));
    *(v3 + 448) = *(a2 + 224);
    return v3;
  }

  return result;
}

void sub_9C5F08(void **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) < a4)
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
          if (*(v10 - 8) == 1)
          {
            v12 = *(v10 - 4);
            if (v12)
            {
              *(v10 - 3) = v12;
              operator delete(v12);
            }

            v13 = *(v10 - 7);
            if (v13)
            {
              *(v10 - 6) = v13;
              operator delete(v13);
            }

            v14 = *(v10 - 11);
            if (v14)
            {
              *(v10 - 10) = v14;
              operator delete(v14);
            }
          }

          v10 -= 104;
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

    if (a4 <= 0x276276276276276)
    {
      v28 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v29 = 2 * v28;
      if (2 * v28 <= a4)
      {
        v29 = a4;
      }

      if (v28 >= 0x13B13B13B13B13BLL)
      {
        v30 = 0x276276276276276;
      }

      else
      {
        v30 = v29;
      }

      if (v30 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v24 = *v5;
        *(v8 + 2) = *(v5 + 2);
        *v8 = v24;
        sub_9C62E0((v8 + 16), (v5 + 2));
        v8 += 104;
        v5 += 13;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      if (*(v15 - 8) == 1)
      {
        v25 = *(v15 - 4);
        if (v25)
        {
          *(v15 - 3) = v25;
          operator delete(v25);
        }

        v26 = *(v15 - 7);
        if (v26)
        {
          *(v15 - 6) = v26;
          operator delete(v26);
        }

        v27 = *(v15 - 11);
        if (v27)
        {
          *(v15 - 10) = v27;
          operator delete(v27);
        }
      }

      v15 -= 104;
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15 - v8);
    v17 = v15 - v8;
    if (v15 != v8)
    {
      v18 = a2;
      do
      {
        v19 = *v18;
        *(v8 + 2) = *(v18 + 2);
        *v8 = v19;
        sub_9C62E0((v8 + 16), (v18 + 2));
        v18 += 13;
        v8 += 104;
      }

      while (v18 != v16);
      v15 = a1[1];
    }

    v31 = v15;
    v20 = v15;
    if (v16 != a3)
    {
      v21 = v5 + v17 + 16;
      v20 = v15;
      do
      {
        v23 = v21 - 16;
        v22 = *(v21 - 16);
        *(v20 + 2) = *(v21 - 8);
        *v20 = v22;
        v20[16] = 0;
        v20[96] = 0;
        if (*(v21 + 80) == 1)
        {
          sub_398970((v20 + 16), v21);
          v20[96] = 1;
          v20 = v31;
        }

        v20 += 104;
        v31 = v20;
        v21 += 104;
      }

      while ((v23 + 104) != a3);
    }

    a1[1] = v20;
  }
}

void sub_9C62A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_398D68(v10);
  sub_39A6A8(&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

void sub_9C62C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_398D68(v11);
  sub_39A6A8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_9C62E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 80) == *(a2 + 80))
  {
    if (!*(result + 80))
    {
      return v2;
    }

    if (result != a2)
    {
      sub_31F64(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
      v4 = *(a2 + 24);
      *(v2 + 26) = *(a2 + 26);
      *(v2 + 24) = v4;
      sub_3865E0((v2 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
      sub_3865E0((v2 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
      return v2;
    }

    v8 = *(a2 + 24);
    *(result + 26) = *(a2 + 26);
    *(result + 24) = v8;
  }

  else if (*(result + 80))
  {
    v5 = *(result + 56);
    if (v5)
    {
      *(v2 + 64) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 32);
    if (v6)
    {
      *(v2 + 40) = v6;
      operator delete(v6);
    }

    v7 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v7;
      operator delete(v7);
    }

    *(v2 + 80) = 0;
    return v2;
  }

  else
  {
    result = sub_398970(result, a2);
    *(v2 + 80) = 1;
  }

  return result;
}

void sub_9C63F8(void ***a1, void **a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
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
          v12 = *(v10 - 3);
          if (v12)
          {
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v13 = v10 - 6;
          if (*(v10 - 25) < 0)
          {
            operator delete(*v13);
          }

          v10 -= 6;
        }

        while (v13 != v8);
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

    if (a4 <= 0x555555555555555)
    {
      v31 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v32 = 2 * v31;
      if (2 * v31 <= a4)
      {
        v32 = a4;
      }

      if (v31 >= 0x2AAAAAAAAAAAAAALL)
      {
        v33 = 0x555555555555555;
      }

      else
      {
        v33 = v32;
      }

      if (v33 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        if (a2 != v8)
        {
          v27 = &v8[v24];
          v28 = &a2[v24];
          v29 = HIBYTE(a2[v24 + 2]);
          if (SHIBYTE(v8[v24 + 2]) < 0)
          {
            if (v29 >= 0)
            {
              v25 = &a2[v24];
            }

            else
            {
              v25 = a2[v24];
            }

            if (v29 >= 0)
            {
              v26 = HIBYTE(a2[v24 + 2]);
            }

            else
            {
              v26 = a2[v24 + 1];
            }

            sub_13B38(v27, v25, v26);
          }

          else if ((HIBYTE(a2[v24 + 2]) & 0x80) != 0)
          {
            sub_13A68(v27, a2[v24], a2[v24 + 1]);
          }

          else
          {
            v30 = *v28;
            *(v27 + 16) = v28[2];
            *v27 = v30;
          }

          sub_31F64(&v8[v24 + 3], a2[v24 + 3], a2[v24 + 4], (a2[v24 + 4] - a2[v24 + 3]) >> 3);
        }

        v24 += 6;
      }

      while (&a2[v24] != a3);
      v14 = a1[1];
      v8 = (v8 + v24 * 8);
    }

    if (v14 != v8)
    {
      do
      {
        v35 = *(v14 - 24);
        if (v35)
        {
          *(v14 - 16) = v35;
          operator delete(v35);
        }

        v36 = (v14 - 48);
        if (*(v14 - 25) < 0)
        {
          operator delete(*v36);
        }

        v14 -= 48;
      }

      while (v36 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15);
    if (v14 != v8)
    {
      v17 = 0;
      do
      {
        if (a2 != v8)
        {
          v20 = &v8[v17 / 8];
          v21 = &a2[v17 / 8];
          v22 = HIBYTE(a2[v17 / 8 + 2]);
          if (SHIBYTE(v8[v17 / 8 + 2]) < 0)
          {
            if (v22 >= 0)
            {
              v18 = &a2[v17 / 8];
            }

            else
            {
              v18 = a2[v17 / 8];
            }

            if (v22 >= 0)
            {
              v19 = HIBYTE(a2[v17 / 8 + 2]);
            }

            else
            {
              v19 = a2[v17 / 8 + 1];
            }

            sub_13B38(v20, v18, v19);
          }

          else if ((HIBYTE(a2[v17 / 8 + 2]) & 0x80) != 0)
          {
            sub_13A68(v20, a2[v17 / 8], a2[v17 / 8 + 1]);
          }

          else
          {
            v23 = *v21;
            *(v20 + 16) = v21[2];
            *v20 = v23;
          }

          sub_31F64(&v8[v17 / 8 + 3], a2[v17 / 8 + 3], a2[v17 / 8 + 4], (a2[v17 / 8 + 4] - a2[v17 / 8 + 3]) >> 3);
        }

        v17 += 48;
      }

      while (v15 != v17);
      v14 = a1[1];
    }

    v37 = v14;
    v34 = v14;
    if (v16 != a3)
    {
      v34 = v14;
      do
      {
        sub_9C683C(v34, v16);
        v16 += 3;
        v34 = v37 + 48;
        v37 += 48;
      }

      while (v16 != a3);
    }

    a1[1] = v34;
  }
}

void sub_9C6790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9C67C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_9C67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9C67C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_9C67C0(uint64_t a1)
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
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 6;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

uint64_t sub_9C683C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return a1;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_9C6914(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

void *sub_9C6938(void *a1, unint64_t *a2)
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

uint64_t *sub_9C6C6C(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = *a2;
  v5 = (v4 + ((v3 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v3 ^ 0x385FFF1BDBLL;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v4 + ((v3 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v3 ^ 0x385FFF1BDBLL;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 + 0xFFFFFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v5)
        {
          if (*(result + 4) == v4 && *(result + 20) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v14 == v5)
      {
        if (*(result + 4) == v4 && *(result + 20) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_9C6D84(void *a1, unsigned int *a2)
{
  v2 = *(a2 + 4);
  v3 = *a2;
  v4 = (v3 + ((v2 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v2 ^ 0x385FFF1BDBLL;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + ((v2 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v2 ^ 0x385FFF1BDBLL;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 + 0xFFFFFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 4) == v3 && *(v9 + 20) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 4) != v3 || *(v9 + 20) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

uint64_t **sub_9C70F4(void *a1, uint64_t a2)
{
  v4 = sub_9C730C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    if (v11 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v15 = a2 + 24;
    v14 = *(a2 + 24);
    v16 = *(v15 + 8) - v14;
    if (v7.u32[0] < 2uLL)
    {
      v17 = *&v5 - 1;
      while (1)
      {
        v18 = v10[1];
        if (v18 == v6)
        {
          v19 = *(v10 + 39);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = v10[3];
          }

          if (v19 == v12)
          {
            v21 = v20 >= 0 ? (v10 + 2) : v10[2];
            if (!memcmp(v21, v13, v12))
            {
              v23 = v10[5];
              v22 = v10[6];
              if (v22 - v23 == v16)
              {
                if (v23 == v22)
                {
                  return v10;
                }

                for (i = v14; *v23 == *i; ++i)
                {
                  v23 += 8;
                  if (v23 == v22)
                  {
                    return v10;
                  }
                }
              }
            }
          }
        }

        else if ((v18 & v17) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v25 = v10[1];
      if (v25 == v6)
      {
        v26 = *(v10 + 39);
        v27 = v26;
        if (v26 < 0)
        {
          v26 = v10[3];
        }

        if (v26 == v12)
        {
          v28 = v27 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v28, v13, v12))
          {
            v30 = v10[5];
            v29 = v10[6];
            if (v29 - v30 == v16)
            {
              if (v30 == v29)
              {
                return v10;
              }

              for (j = v14; *v30 == *j; ++j)
              {
                v30 += 8;
                if (v30 == v29)
                {
                  return v10;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v25 >= *&v5)
        {
          v25 %= *&v5;
        }

        if (v25 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

unint64_t sub_9C730C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  if (v11 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v11 >= 0)
  {
    v4 = HIBYTE(v11);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = (sub_AAD8(&v12, v3, v4) + 0x388152A534) ^ 0xDEADBEEF;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); v6 != i; v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v8)
  {
    v8 = *v6++;
  }

  return v5;
}

uint64_t sub_9C73E8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_9C75AC(v15, a2);
  v6 = 48 * v2 + 48;
  v7 = *a1;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v15 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 40) = *(v10 + 5);
      *(v10 + 3) = 0;
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      v10 += 3;
      v11 += 48;
    }

    while (v10 != v8);
    do
    {
      v13 = *(v7 + 24);
      if (v13)
      {
        *(v7 + 32) = v13;
        operator delete(v13);
      }

      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v7 += 48;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9C7598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9C76A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C75AC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return a1;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_9C7684(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_9C76A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_9C7720(void *a1, uint64_t a2)
{
  v4 = sub_9C730C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_51;
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
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_51:
    operator new();
  }

  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v15 = a2 + 24;
  v14 = *(a2 + 24);
  v31 = *(v15 + 8) - v14;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v23 = v10[1];
      if (v23 == v5)
      {
        v24 = *(v10 + 39);
        v25 = v24;
        if (v24 < 0)
        {
          v24 = v10[3];
        }

        if (v24 == v12)
        {
          v26 = v25 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v26, v13, v12))
          {
            v28 = v10[5];
            v27 = v10[6];
            if (v27 - v28 == v31)
            {
              if (v28 == v27)
              {
                return v10;
              }

              for (i = v14; *v28 == *i; ++i)
              {
                v28 += 8;
                if (v28 == v27)
                {
                  return v10;
                }
              }
            }
          }
        }
      }

      else if ((v23 & (*&v6 - 1)) != v8)
      {
        goto LABEL_51;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v16 = v10[1];
    if (v16 == v5)
    {
      break;
    }

    if (v16 >= *&v6)
    {
      v16 %= *&v6;
    }

    if (v16 != v8)
    {
      goto LABEL_51;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_51;
    }
  }

  v17 = *(v10 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v10[3];
  }

  if (v17 != v12)
  {
    goto LABEL_18;
  }

  v19 = v18 >= 0 ? (v10 + 2) : v10[2];
  if (memcmp(v19, v13, v12))
  {
    goto LABEL_18;
  }

  v21 = v10[5];
  v20 = v10[6];
  if (v20 - v21 != v31)
  {
    goto LABEL_18;
  }

  if (v21 != v20)
  {
    for (j = v14; *v21 == *j; ++j)
    {
      v21 += 8;
      if (v21 == v20)
      {
        return v10;
      }
    }

    goto LABEL_18;
  }

  return v10;
}

void sub_9C7B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

void sub_9C7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C7B98(uint64_t a1, __int128 *a2, void *a3)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v8 = *(a2 + 3);
    v7 = *(a2 + 4);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_325C(a1, *a2, *(a2 + 1));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = *(a2 + 3);
  v10 = *(a2 + 4);
  v9 = v10 - v11;
  if (v10 != v11)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 48) = *a3;
  return a1;
}

void sub_9C7C74(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

double sub_9C7C98(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v96 = a1;
  if (a4 < 2)
  {
    return *&v11;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *(*a3 + 176);
    v8 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v7) >> 3);
    if (v8 <= v6 || v8 <= *a1)
    {
LABEL_121:
      sub_6FAB4();
    }

    v9 = v7 + 456 * *a1;
    v10 = sub_9C5794(v7 + 456 * v6);
    if (v10 > sub_9C5794(v9))
    {
      v12 = *v96;
      *v96 = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return *&v11;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return *&v11;
    }

    v13 = a1 + 1;
    if (a1 + 1 == a2)
    {
      return *&v11;
    }

    v14 = a1;
    while (1)
    {
      v93 = v13;
      v16 = *v13;
      v17 = *(*a3 + 176);
      v18 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v17) >> 3);
      if (v18 <= v16 || v18 <= *v14)
      {
        goto LABEL_121;
      }

      v19 = v17 + 456 * *v14;
      v20 = sub_9C5794(v17 + 456 * v16);
      if (v20 > sub_9C5794(v19))
      {
        v21 = v93;
        v22 = *v93;
        v94 = *v93;
        while (1)
        {
          *v21 = *v14;
          if (v14 == v96)
          {
            break;
          }

          v25 = *(*a3 + 176);
          v26 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v25) >> 3);
          if (v26 <= v22 || v26 <= *(v14 - 1))
          {
            goto LABEL_121;
          }

          v98 = v14 - 1;
          v99 = *(v14 - 1);
          v97 = v14;
          v100 = *(*a3 + 176);
          v27 = v25 + 456 * v22;
          v28 = *(v27 + 424);
          v29 = *(v27 + 432);
          if (v28 != v29)
          {
            v30 = v28 + 40;
            v31 = -1;
            v101 = *(v27 + 432);
            while (1)
            {
              v32 = v30 - 40;
              v103 = *(v30 - 32);
              LOBYTE(v105) = 0;
              if (*(v30 + 56) == 1)
              {
                v105 = 0;
                v34 = *(v30 - 24);
                v33 = *(v30 - 16);
                if (v33 != v34)
                {
                  if (((v33 - v34) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v106 = 0;
                v36 = *(v30 + 8);
                v35 = *(v30 + 16);
                if (v35 != v36)
                {
                  if (((v35 - v36) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                __p = 0;
                v38 = *(v30 + 32);
                v37 = *(v30 + 40);
                if (v37 != v38)
                {
                  if (((v37 - v38) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v29 = v101;
              }

              v39 = v103 - 1;
              if (v103 - 1) < 7 && ((0x77u >> v39))
              {
                v40 = dword_22A5D04[v39];
                if (*(v30 + 56))
                {
                  goto LABEL_48;
                }
              }

              else
              {
                if (v103 == 4)
                {
                  v40 = 14;
                }

                else
                {
                  v40 = 0;
                }

                if (*(v30 + 56))
                {
LABEL_48:
                  if (__p)
                  {
                    operator delete(__p);
                  }

                  if (v106)
                  {
                    operator delete(v106);
                  }

                  if (v105)
                  {
                    operator delete(v105);
                  }
                }
              }

              if (v40 > v31)
              {
                v31 = v40;
              }

              v30 += 104;
              if (v32 + 104 == v29)
              {
                goto LABEL_55;
              }
            }
          }

          v31 = -1;
LABEL_55:
          v41 = v100 + 456 * v99;
          v42 = *(v41 + 424);
          v43 = *(v41 + 432);
          if (v42 != v43)
          {
            v44 = v42 + 40;
            v23 = -1;
            v102 = *(v41 + 432);
            while (1)
            {
              v45 = v44 - 40;
              v104 = *(v44 - 32);
              LOBYTE(v105) = 0;
              if (*(v44 + 56) == 1)
              {
                v105 = 0;
                v47 = *(v44 - 24);
                v46 = *(v44 - 16);
                if (v46 != v47)
                {
                  if (((v46 - v47) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v106 = 0;
                v49 = *(v44 + 8);
                v48 = *(v44 + 16);
                if (v48 != v49)
                {
                  if (((v48 - v49) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                __p = 0;
                v51 = *(v44 + 32);
                v50 = *(v44 + 40);
                if (v50 != v51)
                {
                  if (((v50 - v51) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v43 = v102;
              }

              v52 = v104 - 1;
              if (v104 - 1) < 7 && ((0x77u >> v52))
              {
                v53 = dword_22A5D04[v52];
                if (*(v44 + 56))
                {
                  goto LABEL_79;
                }
              }

              else
              {
                if (v104 == 4)
                {
                  v53 = 14;
                }

                else
                {
                  v53 = 0;
                }

                if (*(v44 + 56))
                {
LABEL_79:
                  if (__p)
                  {
                    operator delete(__p);
                  }

                  if (v106)
                  {
                    operator delete(v106);
                  }

                  if (v105)
                  {
                    operator delete(v105);
                  }
                }
              }

              if (v53 > v23)
              {
                v23 = v53;
              }

              v44 += 104;
              if (v45 + 104 == v43)
              {
                goto LABEL_20;
              }
            }
          }

          v23 = -1;
LABEL_20:
          v15 = v97;
          v21 = v97;
          v24 = v31 <= v23;
          v14 = v98;
          v22 = v94;
          if (v24)
          {
            goto LABEL_13;
          }
        }

        v15 = v96;
LABEL_13:
        *v15 = v22;
      }

      v13 = v93 + 1;
      v14 = v93;
      if (v93 + 1 == a2)
      {
        return *&v11;
      }
    }
  }

  v55 = a4 >> 1;
  v56 = a4 >> 1;
  v57 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    v59 = a1;
    sub_9C8690(a1, &a1[v56], a3, a4 >> 1, a5);
    v61 = &a5[v55];
    sub_9C8690(&v96[v56], a2, a3, v57, v61);
    v62 = v61;
    v63 = a5;
    v64 = &a5[a4];
    do
    {
      if (v62 == v64)
      {
        if (v63 == v61)
        {
          return *&v11;
        }

        v82 = &a5[v56] - v63 - 8;
        if (v82 >= 0x38)
        {
          if ((v96 - v63) >= 0x20)
          {
            v84 = v59 + 2;
            v85 = (v82 >> 3) + 1;
            v86 = v85 & 0x3FFFFFFFFFFFFFFCLL;
            v83 = &v63[v86];
            v59 = (v59 + v86 * 8);
            v87 = (v63 + 2);
            v88 = v85 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v11 = *(v87 - 1);
              v89 = *v87;
              *(v84 - 1) = v11;
              *v84 = v89;
              v84 += 2;
              v87 += 2;
              v88 -= 4;
            }

            while (v88);
            if (v85 == (v85 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return *&v11;
            }
          }

          else
          {
            v83 = v63;
          }
        }

        else
        {
          v83 = v63;
        }

        do
        {
          v90 = *v83++;
          *v59++ = v90;
        }

        while (v83 != v61);
        return *&v11;
      }

      v65 = v62;
      v66 = *v62;
      v67 = *(*a3 + 176);
      v68 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v67) >> 3);
      if (v68 <= v66 || v68 <= *v63)
      {
        goto LABEL_121;
      }

      v69 = v67 + 456 * *v63;
      v70 = sub_9C5794(v67 + 456 * v66);
      v71 = sub_9C5794(v69);
      if (v70 <= v71)
      {
        v72 = v63;
      }

      else
      {
        v72 = v65;
      }

      v63 += v70 <= v71;
      v73 = v70 > v71;
      v62 = &v65[v73];
      *v59++ = *v72;
      ++v96;
    }

    while (v63 != v61);
    if (v62 != v64)
    {
      v74 = v64 - v65 - v73 * 8 - 8;
      if (v74 <= 0x57)
      {
        goto LABEL_125;
      }

      if ((v96 - v65 - v73 * 8) < 0x20)
      {
        goto LABEL_125;
      }

      v75 = v59 + 2;
      v76 = (v74 >> 3) + 1;
      v77 = 8 * (v76 & 0x3FFFFFFFFFFFFFFCLL);
      v62 = (v62 + v77);
      v59 = (v59 + v77);
      v78 = &v65[v73 + 2];
      v79 = v76 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *(v78 - 1);
        v80 = *v78;
        *(v75 - 1) = v11;
        *v75 = v80;
        v75 += 2;
        v78 += 4;
        v79 -= 4;
      }

      while (v79);
      if (v76 != (v76 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_125:
        do
        {
          v81 = *v62++;
          *v59++ = v81;
        }

        while (v62 != v64);
      }
    }
  }

  else
  {
    sub_9C7C98(a1, &a1[v56], a3, a4 >> 1, a5, a6);
    sub_9C7C98(&v96[v56], a2, a3, v57, a5, a6);

    *&v11 = sub_9C8DB4(v96, &v96[v56], a2, a3, v55, v57, a5, a6).n128_u64[0];
  }

  return *&v11;
}

void sub_9C85D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_398D68(a20);
  _Unwind_Resume(a1);
}

unint64_t *sub_9C8690(unint64_t *result, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = result;
    if (a4 == 1)
    {
LABEL_11:
      *v5 = *v6;
      return result;
    }

    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v7 = a2 - 1;
      v8 = v9;
      v10 = *(*a3 + 176);
      v11 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v10) >> 3);
      if (v11 <= v9 || v11 <= *result)
      {
LABEL_90:
        sub_6FAB4();
      }

      v12 = v7;
      v13 = v10 + 456 * *result;
      v14 = sub_9C5794(v10 + 456 * v8);
      result = sub_9C5794(v13);
      if (v14 <= result)
      {
        v15 = v6;
      }

      else
      {
        v15 = v12;
      }

      *v5++ = *v15;
      if (v14 <= result)
      {
        v6 = v12;
      }

      goto LABEL_11;
    }

    v85 = a5;
    if (a4 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v16 = result + 1;
      *a5 = *result;
      if (result + 1 == a2)
      {
        return result;
      }

      v17 = a5;
LABEL_20:
      v20 = v17;
      v21 = *(*a3 + 176);
      v22 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v21) >> 3);
      if (v22 <= *v16 || v22 <= *v17)
      {
        goto LABEL_90;
      }

      v23 = v21 + 456 * *v17;
      v24 = sub_9C5794(v21 + 456 * *v16);
      result = sub_9C5794(v23);
      v18 = v20 + 1;
      v17 = v20 + 1;
      if (v24 <= result)
      {
        goto LABEL_19;
      }

      v20[1] = *v20;
      v18 = v5;
      if (v20 == v5)
      {
        goto LABEL_19;
      }

      v79 = v20 + 1;
      v81 = v16;
LABEL_25:
      v25 = *(*a3 + 176);
      v26 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v25) >> 3);
      if (v26 <= *v16)
      {
        goto LABEL_90;
      }

      v27 = *(v20 - 1);
      if (v26 <= v27)
      {
        goto LABEL_90;
      }

      v28 = v25 + 456 * *v16;
      v29 = *(v28 + 424);
      v30 = *(v28 + 432);
      if (v29 == v30)
      {
        result = sub_9C5794(v25 + 456 * v27);
        v18 = v20;
        goto LABEL_18;
      }

      v82 = v20 - 1;
      v83 = v25 + 456 * v27;
      v84 = v20;
      v31 = v29 + 40;
      v32 = -1;
      v87 = *(v28 + 432);
      while (1)
      {
        v33 = v31 - 40;
        v88 = *(v31 - 32);
        LOBYTE(v89) = 0;
        if (*(v31 + 56) == 1)
        {
          v89 = 0;
          v35 = *(v31 - 24);
          v34 = *(v31 - 16);
          if (v34 != v35)
          {
            if (((v34 - v35) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v90 = 0;
          v37 = *(v31 + 8);
          v36 = *(v31 + 16);
          if (v36 != v37)
          {
            if (((v36 - v37) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          __p = 0;
          v39 = *(v31 + 32);
          v38 = *(v31 + 40);
          if (v38 != v39)
          {
            if (((v38 - v39) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v30 = v87;
        }

        v40 = v88 - 1;
        if (v88 - 1) < 7 && ((0x77u >> v40))
        {
          v41 = dword_22A5D04[v40];
          if (*(v31 + 56))
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v88 == 4)
          {
            v41 = 14;
          }

          else
          {
            v41 = 0;
          }

          if (*(v31 + 56))
          {
LABEL_51:
            if (__p)
            {
              operator delete(__p);
            }

            if (v90)
            {
              operator delete(v90);
            }

            if (v89)
            {
              operator delete(v89);
            }
          }
        }

        if (v41 > v32)
        {
          v32 = v41;
        }

        v31 += 104;
        if (v33 + 104 == v30)
        {
          result = sub_9C5794(v83);
          if (v32 > result)
          {
            v5 = v85;
            *v84 = *(v84 - 1);
            v16 = v81;
            v20 = v82;
            if (v82 == v85)
            {
              v18 = v85;
              goto LABEL_18;
            }

            goto LABEL_25;
          }

          v18 = v84;
          v5 = v85;
          v16 = v81;
LABEL_18:
          v17 = v79;
LABEL_19:
          v19 = *v16++;
          *v18 = v19;
          if (v16 == a2)
          {
            return result;
          }

          goto LABEL_20;
        }
      }
    }

    v42 = a4 >> 1;
    v43 = a4 >> 1;
    v44 = &result[v43];
    v45 = result;
    sub_9C7C98(result, &result[v43], a3, v42, a5, v42);
    result = sub_9C7C98(v44, a2, a3, a4 - v42, &v5[v43], a4 - v42);
    v48 = v5;
    v49 = v44;
    do
    {
      v50 = v49;
      if (v49 == a2)
      {
        v69 = v85;
        if (v45 == v44)
        {
          return result;
        }

        v70 = v44 - v45 - 8;
        if (v70 >= 0x38)
        {
          if ((v48 - v45) >= 0x20)
          {
            v72 = v85 + 2;
            v73 = (v70 >> 3) + 1;
            v74 = v73 & 0x3FFFFFFFFFFFFFFCLL;
            v69 = &v85[v74];
            v71 = &v45[v74];
            v75 = (v45 + 2);
            v76 = v73 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v77 = *v75;
              *(v72 - 1) = *(v75 - 1);
              *v72 = v77;
              v75 += 2;
              v72 += 2;
              v76 -= 4;
            }

            while (v76);
            if (v73 == (v73 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v71 = v45;
          }
        }

        else
        {
          v71 = v45;
        }

        do
        {
          v78 = *v71++;
          *v69++ = v78;
        }

        while (v71 != v44);
        return result;
      }

      v51 = *(*a3 + 176);
      v52 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v51) >> 3);
      if (v52 <= *v49 || v52 <= *v45)
      {
        goto LABEL_90;
      }

      v53 = v51 + 456 * *v45;
      v54 = sub_9C5794(v51 + 456 * *v49);
      result = sub_9C5794(v53);
      if (v54 <= result)
      {
        v55 = v45;
      }

      else
      {
        v55 = v50;
      }

      v56 = v54 > result;
      v49 = &v50[v56];
      *v85++ = *v55;
      v48 += 8;
      v45 += v54 <= result;
    }

    while (v45 != v44);
    v57 = a2;
    v58 = v85;
    if (v49 != a2)
    {
      v59 = a2 - v50 - v56 * 8 - 8;
      if (v59 < 0x58)
      {
        goto LABEL_93;
      }

      v57 = a2;
      if ((v48 - v50 - v56 * 8) < 0x20)
      {
        goto LABEL_93;
      }

      v60 = 0;
      v61 = (v59 >> 3) + 1;
      v62 = v61 & 0x3FFFFFFFFFFFFFFCLL;
      v63 = &v85[v62];
      v49 = (v49 + v62 * 8);
      v64 = &v50[v56 + 2];
      v65 = v61 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v66 = &v85[v60];
        v67 = *v64;
        *v66 = *(v64 - 1);
        *(v66 + 1) = v67;
        v64 += 4;
        v60 += 4;
        v65 -= 4;
      }

      while (v65);
      v58 = v63;
      v57 = a2;
      if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_93:
        do
        {
          v68 = *v49++;
          *v58++ = v68;
        }

        while (v49 != v57);
      }
    }
  }

  return result;
}

void sub_9C8D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (!v27)
  {
    sub_398D68(v26 + 16);
    _Unwind_Resume(a1);
  }

  operator delete(v27);
  sub_398D68(v26 + 16);
  _Unwind_Resume(a1);
}

__n128 sub_9C8DB4(unint64_t *a1, unint64_t *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v102 = a6;
  if (!a6)
  {
    return result;
  }

  while (1)
  {
    v105 = a2;
    if (v102 <= a8 || a5 <= a8)
    {
      break;
    }

    if (!a5)
    {
      return result;
    }

    v12 = 0;
    v13 = -a5;
    while (1)
    {
      v14 = *(*a4 + 176);
      v15 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v14) >> 3);
      if (v15 <= *a2)
      {
        goto LABEL_93;
      }

      v16 = a1;
      v17 = a1[v12 / 8];
      if (v15 <= v17)
      {
        goto LABEL_93;
      }

      v18 = v14 + 456 * v17;
      v19 = sub_9C5794(v14 + 456 * *a2);
      if (v19 > sub_9C5794(v18))
      {
        break;
      }

      v12 += 8;
      v21 = __CFADD__(v13++, 1);
      a2 = v105;
      if (v21)
      {
        return result;
      }
    }

    v22 = v102;
    v23 = v105;
    __src = a7;
    v100 = a3;
    v104 = a4;
    if (-v13 >= v102)
    {
      if (v13 == -1)
      {
        v78 = a1[v12 / 8];
        a1[v12 / 8] = *v105;
        *v105 = v78;
        return result;
      }

      v33 = -v13 / 2;
      v103 = &a1[v33];
      v25 = v105;
      if (v105 != a3)
      {
        v34 = *v104;
        v35 = (a3 - v105) >> 3;
        v25 = v105;
        do
        {
          v36 = &v25[v35 >> 1];
          v37 = *(v34 + 176);
          v38 = 0x823EE08FB823EE09 * ((*(v34 + 184) - v37) >> 3);
          if (v38 <= *v36)
          {
            goto LABEL_93;
          }

          v39 = v103[v12 / 8];
          if (v38 <= v39)
          {
            goto LABEL_93;
          }

          v40 = v37 + 456 * v39;
          v41 = sub_9C5794(v37 + 456 * *v36);
          v42 = sub_9C5794(v40);
          if (v41 <= v42)
          {
            v35 >>= 1;
          }

          else
          {
            v35 += ~(v35 >> 1);
          }

          if (v41 > v42)
          {
            v25 = v36 + 1;
          }
        }

        while (v35);
        v23 = v105;
        v22 = v102;
        v33 = -v13 / 2;
      }

      v24 = (v25 - v23) >> 3;
      v26 = &v103[v12 / 8];
    }

    else
    {
      v24 = v102 / 2;
      v25 = &v105[v102 / 2];
      v26 = v105;
      if (v105 - a1 != v12)
      {
        v27 = (v105 - a1 - v12) >> 3;
        v26 = &a1[v12 / 8];
        do
        {
          v28 = *(*v104 + 176);
          v29 = 0x823EE08FB823EE09 * ((*(*v104 + 184) - v28) >> 3);
          if (v29 <= *v25)
          {
            goto LABEL_93;
          }

          v30 = &v26[8 * (v27 >> 1)];
          if (v29 <= *v30)
          {
            goto LABEL_93;
          }

          v31 = v28 + 456 * *v30;
          v32 = sub_9C5794(v28 + 456 * *v25);
          if (v32 > sub_9C5794(v31))
          {
            v27 >>= 1;
          }

          else
          {
            v26 = (v30 + 1);
            v27 += ~(v27 >> 1);
          }
        }

        while (v27);
        v23 = v105;
        v16 = a1;
        v22 = v102;
        v24 = v102 / 2;
      }

      v33 = (v26 - v16 - v12) >> 3;
    }

    a5 = -(v33 + v13);
    v43 = v22 - v24;
    v44 = v22;
    v45 = v24;
    v46 = sub_9C948C(v26, v23, v25);
    v47 = v45;
    a3 = v46;
    if (v33 + v47 >= v44 - (v33 + v47) - v13)
    {
      v50 = v43;
      v51 = v47;
      sub_9C8DB4(v46, v25, v100, v104, -(v33 + v13), v50, __src, a8);
      a5 = v33;
      a7 = __src;
      v102 = v51;
      a1 = (a1 + v12);
      a2 = v26;
      a4 = v104;
      if (!v51)
      {
        return result;
      }
    }

    else
    {
      v48 = v33;
      a7 = __src;
      sub_9C8DB4(&a1[v12 / 8], v26, v46, v104, v48, v47, __src, a8);
      v49 = a3;
      a3 = v100;
      v102 = v43;
      a1 = v49;
      a2 = v25;
      a4 = v104;
      if (!v43)
      {
        return result;
      }
    }
  }

  if (a5 <= v102)
  {
    if (a2 != a1)
    {
      v61 = a2 - a1 - 8;
      v62 = a7;
      v63 = a1;
      if (v61 < 0x18)
      {
        goto LABEL_96;
      }

      v62 = a7;
      v63 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_96;
      }

      v64 = (v61 >> 3) + 1;
      v65 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      v62 = &a7[v65];
      v63 = &a1[v65];
      v66 = (a1 + 2);
      v67 = a7 + 2;
      v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v69 = *v66;
        *(v67 - 1) = *(v66 - 1);
        *v67 = v69;
        v66 += 2;
        v67 += 2;
        v68 -= 4;
      }

      while (v68);
      if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_96:
        do
        {
          v70 = *v63++;
          *v62 = v70;
          v62 += 8;
        }

        while (v63 != a2);
      }

      while (a2 != a3)
      {
        v71 = *(*a4 + 176);
        v72 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v71) >> 3);
        if (v72 <= *a2 || v72 <= *a7)
        {
LABEL_93:
          sub_6FAB4();
        }

        v73 = a2;
        v74 = v71 + 456 * *a7;
        v75 = sub_9C5794(v71 + 456 * *a2);
        v76 = sub_9C5794(v74);
        if (v75 <= v76)
        {
          v77 = a7;
        }

        else
        {
          v77 = v73;
        }

        a2 = &v73[v75 > v76];
        a7 += v75 <= v76;
        *a1++ = *v77;
        if (a7 == v62)
        {
          return result;
        }
      }

      memmove(a1, a7, v62 - a7);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v52 = a3 - a2 - 8;
  if (v52 < 0x18)
  {
    v54 = a7;
    v53 = a2;
  }

  else
  {
    v53 = a2;
    v54 = a7;
    if ((a7 - a2) > 0x1F)
    {
      v55 = (v52 >> 3) + 1;
      v56 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      v54 = &a7[v56];
      v53 = &a2[v56];
      v57 = (a2 + 2);
      v58 = (a7 + 2);
      v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v57[-1];
        v60 = *v57;
        v58[-1] = result;
        *v58 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 4;
      }

      while (v59);
      if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_70;
      }
    }
  }

  do
  {
    v79 = *v53++;
    *v54 = v79;
    v54 += 8;
  }

  while (v53 != a3);
LABEL_70:
  v80 = a3;
  v81 = a2;
  while (v81 != a1)
  {
    v82 = *(v54 - 1);
    v83 = *(*a4 + 176);
    v84 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v83) >> 3);
    if (v84 <= v82)
    {
      goto LABEL_93;
    }

    v85 = *(v81 - 1);
    if (v84 <= v85)
    {
      goto LABEL_93;
    }

    v86 = v83 + 456 * v85;
    v87 = sub_9C5794(v83 + 456 * v82);
    v88 = sub_9C5794(v86);
    if (v87 <= v88)
    {
      v89 = v54;
    }

    else
    {
      v89 = v81;
    }

    if (v87 <= v88)
    {
      v54 -= 8;
    }

    else
    {
      --v81;
    }

    *(a3 - 1) = *(v89 - 1);
    a3 -= 8;
    v80 -= 8;
    if (v54 == a7)
    {
      return result;
    }
  }

  if (v54 != a7)
  {
    v90 = v54 - a7 - 8;
    if (v90 < 0x48 || (v54 - v80) < 0x20)
    {
      v91 = v54;
LABEL_86:
      v92 = a3 - 8;
      do
      {
        v93 = *(v91 - 1);
        v91 -= 8;
        *v92 = v93;
        v92 -= 8;
      }

      while (v91 != a7);
      return result;
    }

    v94 = (a3 - 16);
    v95 = (v90 >> 3) + 1;
    v96 = 8 * (v95 & 0x3FFFFFFFFFFFFFFCLL);
    v91 = &v54[-v96];
    a3 -= v96;
    v97 = (v54 - 16);
    v98 = v95 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v97;
      v94[-1] = v97[-1];
      *v94 = result;
      v94 -= 2;
      v97 -= 2;
      v98 -= 4;
    }

    while (v98);
    if (v95 != (v95 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_86;
    }
  }

  return result;
}

char *sub_9C948C(char *__src, uint64_t a2, void *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

double sub_9C9648(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return v30.n128_f64[0];
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *(*a3 + 176);
    v8 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v7) >> 3);
    if (v8 > v6)
    {
      v9 = *a1;
      if (v8 > *a1)
      {
        if (*(v7 + 456 * v6 + 449) > *(v7 + 456 * v9 + 449))
        {
          *a1 = v6;
          *(a2 - 1) = v9;
        }

        return v30.n128_f64[0];
      }
    }

LABEL_55:
    sub_6FAB4();
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return v30.n128_f64[0];
    }

    v10 = a1 + 1;
    if (a1 + 1 == a2)
    {
      return v30.n128_f64[0];
    }

    v11 = 0;
    v12 = *(*a3 + 176);
    v13 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v12) >> 3);
    v14 = a1;
    while (1)
    {
      v16 = v10;
      v17 = *v10;
      if (v13 <= v17)
      {
        goto LABEL_55;
      }

      v18 = *v14;
      if (v13 <= v18)
      {
        goto LABEL_55;
      }

      v19 = *(v12 + 456 * v17 + 449);
      if (v19 > *(v12 + 456 * v18 + 449))
      {
        v20 = v11;
        do
        {
          *(a1 + v20 + 8) = v18;
          if (!v20)
          {
            v15 = a1;
            goto LABEL_13;
          }

          v18 = *(a1 + v20 - 8);
          if (v13 <= v18)
          {
            goto LABEL_55;
          }

          v20 -= 8;
        }

        while (v19 > *(v12 + 456 * v18 + 449));
        v15 = (a1 + v20 + 8);
LABEL_13:
        *v15 = v17;
      }

      v10 = v16 + 1;
      v11 += 8;
      v14 = v16;
      if (v16 + 1 == a2)
      {
        return v30.n128_f64[0];
      }
    }
  }

  v22 = a4 >> 1;
  v23 = a4 >> 1;
  v24 = a4 - (a4 >> 1);
  v25 = &a1[v23];
  v26 = a1;
  if (a4 <= a6)
  {
    sub_9C9A58(a1, v25, a3, a4 >> 1, a5);
    v34 = &a5[v22];
    sub_9C9A58(&v26[v23], a2, a3, v24, v34);
    v35 = *a3;
    v36 = v34;
    v37 = a5;
    v38 = v26;
    v39 = &a5[a4];
    do
    {
      if (v36 == v39)
      {
        if (v37 == v34)
        {
          return v30.n128_f64[0];
        }

        v59 = &a5[v23] - v37 - 8;
        if (v59 >= 0x38)
        {
          if ((v26 - v37) >= 0x20)
          {
            v61 = (v38 + 2);
            v62 = (v59 >> 3) + 1;
            v63 = v62 & 0x3FFFFFFFFFFFFFFCLL;
            v60 = &v37[v63];
            v38 = (v38 + v63 * 8);
            v64 = (v37 + 2);
            v65 = v62 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v30 = v64[-1];
              v66 = *v64;
              v61[-1] = v30;
              *v61 = v66;
              v61 += 2;
              v64 += 2;
              v65 -= 4;
            }

            while (v65);
            if (v62 == (v62 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return v30.n128_f64[0];
            }
          }

          else
          {
            v60 = v37;
          }
        }

        else
        {
          v60 = v37;
        }

        do
        {
          v67 = *v60++;
          *v38++ = v67;
        }

        while (v60 != v34);
        return v30.n128_f64[0];
      }

      v40 = v36;
      v41 = *v36;
      v42 = *(v35 + 176);
      v43 = 0x823EE08FB823EE09 * ((*(v35 + 184) - v42) >> 3);
      if (v43 <= v41)
      {
        goto LABEL_55;
      }

      v44 = *v37;
      if (v43 <= *v37)
      {
        goto LABEL_55;
      }

      v45 = *(v42 + 456 * v41 + 449);
      v46 = *(v42 + 456 * v44 + 449);
      v47 = v45 > v46;
      v48 = v45 <= v46;
      v49 = v47;
      if (v47)
      {
        v44 = v41;
      }

      v37 += v48;
      v50 = v49;
      v36 = &v40[v50];
      *v38++ = v44;
      ++v26;
    }

    while (v37 != v34);
    if (v36 != v39)
    {
      v51 = v39 - v40 - v50 * 8 - 8;
      if (v51 <= 0x57)
      {
        goto LABEL_59;
      }

      if ((v26 - v40 - v50 * 8) < 0x20)
      {
        goto LABEL_59;
      }

      v52 = (v38 + 2);
      v53 = (v51 >> 3) + 1;
      v54 = 8 * (v53 & 0x3FFFFFFFFFFFFFFCLL);
      v36 = (v36 + v54);
      v38 = (v38 + v54);
      v55 = &v40[v50 + 2];
      v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = v55[-1];
        v57 = *v55;
        v52[-1] = v30;
        *v52 = v57;
        v52 += 2;
        v55 += 2;
        v56 -= 4;
      }

      while (v56);
      if (v53 != (v53 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_59:
        do
        {
          v58 = *v36++;
          *v38++ = v58;
        }

        while (v36 != v39);
      }
    }
  }

  else
  {
    sub_9C9648(a1, v25, a3, a4 >> 1, a5, a6);
    sub_9C9648(&v26[v23], a2, a3, v24, a5, a6);

    v30.n128_u64[0] = sub_9C9E20(v26, &v26[v23], a2, a3, v22, v24, a5, a6).n128_u64[0];
  }

  return v30.n128_f64[0];
}

unint64_t *sub_9C9A58(unint64_t *result, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_10:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = *(*a3 + 176);
      v9 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v8) >> 3);
      if (v9 > v7 && v9 > *result)
      {
        v10 = *(v8 + 456 * v6 + 449);
        v11 = *(v8 + 456 * *result + 449);
        if (v10 <= v11)
        {
          v6 = *result;
        }

        *a5++ = v6;
        if (v10 <= v11)
        {
          result = v5;
        }

        goto LABEL_10;
      }

LABEL_58:
      sub_6FAB4();
    }

    if (a4 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v12 = *a3;
      v13 = *result++;
      *a5 = v13;
      if (result == a2)
      {
        return result;
      }

      v14 = 0;
      v15 = *(v12 + 176);
      v16 = 0x823EE08FB823EE09 * ((*(v12 + 184) - v15) >> 3);
      v17 = a5;
      while (1)
      {
        v18 = *result;
        if (v16 <= *result)
        {
          goto LABEL_58;
        }

        v19 = v17 + 1;
        v20 = *v17;
        if (v16 <= *v17)
        {
          goto LABEL_58;
        }

        if (*(v15 + 456 * v18 + 449) <= *(v15 + 456 * v20 + 449))
        {
          *v19 = v18;
          ++result;
          v14 += 8;
          ++v17;
          if (result == a2)
          {
            return result;
          }
        }

        else
        {
          v17[1] = v20;
          v21 = a5;
          if (v17 != a5)
          {
            v22 = v14;
            while (1)
            {
              if (v16 <= *result)
              {
                goto LABEL_58;
              }

              v23 = *(a5 + v22 - 8);
              if (v16 <= v23)
              {
                goto LABEL_58;
              }

              if (*(v15 + 456 * *result + 449) <= *(v15 + 456 * v23 + 449))
              {
                break;
              }

              *(a5 + v22) = v23;
              v22 -= 8;
              if (!v22)
              {
                v21 = a5;
                goto LABEL_28;
              }
            }

            v21 = (a5 + v22);
          }

LABEL_28:
          v24 = *result++;
          *v21 = v24;
          v14 += 8;
          v17 = v19;
          if (result == a2)
          {
            return result;
          }
        }
      }
    }

    v25 = a4 >> 1;
    v26 = a4 >> 1;
    v27 = &result[v26];
    v28 = result;
    v32 = a5;
    (sub_9C9648)();
    result = sub_9C9648(v27, a2, a3, a4 - v25, &v32[v26], a4 - v25);
    v33 = *a3;
    v34 = v32;
    v35 = v27;
    do
    {
      if (v35 == a2)
      {
        if (v28 == v27)
        {
          return result;
        }

        v57 = v27 - v28 - 8;
        if (v57 >= 0x38)
        {
          if ((v34 - v28) >= 0x20)
          {
            v59 = v32 + 2;
            v60 = (v57 >> 3) + 1;
            v61 = v60 & 0x3FFFFFFFFFFFFFFCLL;
            v32 = (v32 + v61 * 8);
            v58 = &v28[v61];
            v62 = (v28 + 2);
            v63 = v60 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v64 = *v62;
              *(v59 - 1) = *(v62 - 1);
              *v59 = v64;
              v62 += 2;
              v59 += 2;
              v63 -= 4;
            }

            while (v63);
            if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v58 = v28;
          }
        }

        else
        {
          v58 = v28;
        }

        do
        {
          v65 = *v58++;
          *v32++ = v65;
        }

        while (v58 != v27);
        return result;
      }

      v36 = v35;
      v37 = *v35;
      v38 = *(v33 + 176);
      v39 = 0x823EE08FB823EE09 * ((*(v33 + 184) - v38) >> 3);
      if (v39 <= v37)
      {
        goto LABEL_58;
      }

      v40 = *v28;
      if (v39 <= *v28)
      {
        goto LABEL_58;
      }

      v41 = *(v38 + 456 * v37 + 449);
      v42 = *(v38 + 456 * v40 + 449);
      v43 = v41 > v42;
      v44 = v41 <= v42;
      v45 = v43;
      if (v43)
      {
        v40 = v37;
      }

      v46 = v45;
      v35 = &v36[v46];
      v28 += v44;
      *v32++ = v40;
      v34 += 8;
    }

    while (v28 != v27);
    if (v35 != a2)
    {
      v47 = a2 - v36 - v46 * 8 - 8;
      if (v47 < 0x58)
      {
        goto LABEL_61;
      }

      if ((v34 - v36 - v46 * 8) < 0x20)
      {
        goto LABEL_61;
      }

      v48 = 0;
      v49 = (v47 >> 3) + 1;
      v50 = v49 & 0x3FFFFFFFFFFFFFFCLL;
      v51 = &v32[v50];
      v35 = (v35 + v50 * 8);
      v52 = &v36[v46 + 2];
      v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v54 = &v32[v48];
        v55 = *v52;
        *v54 = *(v52 - 1);
        *(v54 + 1) = v55;
        v52 += 4;
        v48 += 4;
        v53 -= 4;
      }

      while (v53);
      v32 = v51;
      if (v49 != (v49 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_61:
        do
        {
          v56 = *v35++;
          *v32++ = v56;
        }

        while (v35 != a2);
      }
    }
  }

  return result;
}

__n128 sub_9C9E20(unint64_t *a1, unint64_t *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = *a2;
    v12 = *(*a4 + 176);
    v13 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v12) >> 3);
    if (v13 <= *a2)
    {
      goto LABEL_95;
    }

    v14 = 0;
    v15 = -a5;
    while (1)
    {
      v16 = a1[v14 / 8];
      if (v13 <= v16)
      {
        goto LABEL_95;
      }

      if (*(v12 + 456 * v11 + 449) > *(v12 + 456 * v16 + 449))
      {
        break;
      }

      v14 += 8;
      if (__CFADD__(v15++, 1))
      {
        return result;
      }
    }

    v18 = -v15;
    v101 = a3;
    __src = a7;
    v99 = a8;
    v100 = a4;
    if (-v15 >= a6)
    {
      if (v15 == -1)
      {
        a1[v14 / 8] = v11;
        *a2 = v16;
        return result;
      }

      v34 = v18 / 2;
      v35 = &a1[v18 / 2];
      v20 = a2;
      if (a2 != a3)
      {
        v36 = (a3 - a2) >> 3;
        v37 = v35[v14 / 8];
        if (v13 > v37)
        {
          v38 = v12 + 456 * v37;
          v20 = a2;
          while (1)
          {
            v39 = v36 >> 1;
            v40 = &v20[v36 >> 1];
            if (v13 <= *v40)
            {
              break;
            }

            v41 = *(v12 + 456 * *v40 + 449);
            v42 = v40 + 1;
            v36 += ~v39;
            if (v41 > *(v38 + 449))
            {
              v20 = v42;
            }

            else
            {
              v36 = v39;
            }

            if (!v36)
            {
              goto LABEL_37;
            }
          }
        }

LABEL_95:
        sub_6FAB4();
      }

LABEL_37:
      v19 = v20 - a2;
      v21 = &v35[v14 / 8];
    }

    else
    {
      v19 = a6 / 2;
      v20 = &a2[a6 / 2];
      v21 = a2;
      v22 = a2 - a1 - v14;
      if (a2 - a1 != v14)
      {
        if (v13 <= *v20)
        {
          goto LABEL_95;
        }

        v23 = v22 >> 3;
        v24 = (v22 >> 3) >> 1;
        v25 = &a1[v24 + v14 / 8];
        if (v13 <= *v25)
        {
          goto LABEL_95;
        }

        v26 = *(v12 + 456 * *v20 + 449);
        v27 = *(v12 + 456 * *v25 + 449);
        v28 = (v25 + 1);
        v29 = v23 + ~v24;
        if (v26 <= v27)
        {
          v21 = v28;
        }

        else
        {
          v21 = &a1[v14 / 8];
        }

        if (v26 <= v27)
        {
          v24 = v29;
        }

        while (v24)
        {
          v30 = v24 >> 1;
          v31 = &v21[8 * (v24 >> 1)];
          if (v13 <= *v31)
          {
            goto LABEL_95;
          }

          v32 = *(v12 + 456 * *v31 + 449);
          v33 = (v31 + 1);
          v24 += ~v30;
          if (v26 > v32)
          {
            v24 = v30;
          }

          else
          {
            v21 = v33;
          }
        }
      }

      v34 = (v21 - a1 - v14) >> 3;
    }

    a5 = -(v34 + v15);
    v98 = a6 - v19;
    v43 = a6;
    v44 = v34;
    v45 = sub_9C948C(v21, a2, v20);
    v46 = v45;
    if (v44 + v19 >= v43 - (v44 + v19) - v15)
    {
      v97 = v45;
      v51 = v44;
      a7 = __src;
      sub_9C9E20(v45, v20, v101, v100, a5, v98, __src, v99);
      a3 = v97;
      a1 = (a1 + v14);
      v20 = v21;
      a8 = v99;
      a4 = v100;
      a5 = v51;
    }

    else
    {
      v47 = &a1[v14 / 8];
      v48 = v46;
      v49 = v44;
      a7 = __src;
      sub_9C9E20(v47, v21, v46, v100, v49, v19, __src, v99);
      a8 = v99;
      a4 = v100;
      a1 = v48;
      a3 = v101;
      v19 = v98;
    }

    a6 = v19;
    a2 = v20;
    if (!v19)
    {
      return result;
    }
  }

  if (a5 <= a6)
  {
    if (a2 != a1)
    {
      v61 = a2 - a1 - 8;
      v62 = a7;
      v63 = a1;
      if (v61 < 0x18)
      {
        goto LABEL_98;
      }

      v62 = a7;
      v63 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_98;
      }

      v64 = (v61 >> 3) + 1;
      v65 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      v62 = &a7[v65];
      v63 = &a1[v65];
      v66 = (a1 + 2);
      v67 = (a7 + 2);
      v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v66[-1];
        v69 = *v66;
        v67[-1] = result;
        *v67 = v69;
        v66 += 2;
        v67 += 2;
        v68 -= 4;
      }

      while (v68);
      if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_98:
        do
        {
          v70 = *v63++;
          *v62 = v70;
          v62 += 8;
        }

        while (v63 != a2);
      }

      v71 = *a4;
      while (a2 != a3)
      {
        v72 = *a2;
        v73 = *(v71 + 176);
        v74 = 0x823EE08FB823EE09 * ((*(v71 + 184) - v73) >> 3);
        if (v74 <= *a2 || v74 <= *a7)
        {
          goto LABEL_95;
        }

        v75 = *(v73 + 456 * v72 + 449);
        v76 = *(v73 + 456 * *a7 + 449);
        v77 = v75 > v76;
        v78 = v75 <= v76;
        v79 = v77;
        if (!v77)
        {
          v72 = *a7;
        }

        a2 += v79;
        a7 += v78;
        *a1++ = v72;
        if (a7 == v62)
        {
          return result;
        }
      }

      memmove(a1, a7, v62 - a7);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v52 = a3 - a2 - 8;
  if (v52 < 0x18)
  {
    v53 = a7;
    v54 = a2;
  }

  else
  {
    v53 = a7;
    v54 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v55 = (v52 >> 3) + 1;
      v56 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      v53 = &a7[v56];
      v54 = &a2[v56];
      v57 = (a2 + 2);
      v58 = (a7 + 2);
      v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v57[-1];
        v60 = *v57;
        v58[-1] = result;
        *v58 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 4;
      }

      while (v59);
      if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_75;
      }
    }
  }

  do
  {
    v80 = *v54++;
    *v53 = v80;
    v53 += 8;
  }

  while (v54 != a3);
LABEL_75:
  v81 = *a4;
  v82 = a3;
  while (a2 != a1)
  {
    v83 = *(v53 - 1);
    v84 = *(v81 + 176);
    v85 = 0x823EE08FB823EE09 * ((*(v81 + 184) - v84) >> 3);
    if (v85 <= v83)
    {
      goto LABEL_95;
    }

    v86 = *(a2 - 1);
    if (v85 <= v86)
    {
      goto LABEL_95;
    }

    if (*(v84 + 456 * v83 + 449) <= *(v84 + 456 * v86 + 449))
    {
      v53 -= 8;
    }

    else
    {
      v83 = *--a2;
    }

    *(a3 - 1) = v83;
    a3 -= 8;
    v82 -= 8;
    if (v53 == a7)
    {
      return result;
    }
  }

  v87 = v53 - a7;
  if (v53 != a7)
  {
    v88 = v87 - 8;
    if ((v87 - 8) < 0x48 || (v53 - v82) < 0x20)
    {
      v89 = v53;
LABEL_88:
      v90 = a3 - 8;
      do
      {
        v91 = *(v89 - 1);
        v89 -= 8;
        *v90 = v91;
        v90 -= 8;
      }

      while (v89 != a7);
      return result;
    }

    v92 = (a3 - 16);
    v93 = (v88 >> 3) + 1;
    v94 = 8 * (v93 & 0x3FFFFFFFFFFFFFFCLL);
    v89 = &v53[-v94];
    a3 -= v94;
    v95 = (v53 - 16);
    v96 = v93 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v95;
      v92[-1] = v95[-1];
      *v92 = result;
      v92 -= 2;
      v95 -= 2;
      v96 -= 4;
    }

    while (v96);
    if (v93 != (v93 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_88;
    }
  }

  return result;
}

void sub_9CA410()
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
  xmmword_27B33E0 = 0u;
  *algn_27B33F0 = 0u;
  dword_27B3400 = 1065353216;
  sub_3A9A34(&xmmword_27B33E0, v0);
  sub_3A9A34(&xmmword_27B33E0, v3);
  sub_3A9A34(&xmmword_27B33E0, __p);
  sub_3A9A34(&xmmword_27B33E0, v9);
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
    qword_27B33B8 = 0;
    qword_27B33C0 = 0;
    qword_27B33B0 = 0;
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

void sub_9CA658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B33C8)
  {
    qword_27B33D0 = qword_27B33C8;
    operator delete(qword_27B33C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CA704(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_9CEAD0(a3, &v4);
}

__n128 sub_9CA83C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 64);
  v9 = *(a1 + 48);
  *(a1 + 16) = a2 + 3;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a2 + 36;
  v5 = *a1;
  v8[0] = a2 + 3;
  v8[1] = v5;
  v8[2] = a3;
  v8[3] = a2 + 36;
  v10 = v4;
  result = *(a1 + 80);
  v11 = result;
  v7 = *(a1 + 96);
  v8[4] = *(a1 + 104);
  v12 = v7;
  if (*a2 != a2[1])
  {
    sub_9CAB30(a1, *a2, v8);
  }

  return result;
}

void sub_9CAAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_9CACA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CACF0(uint64_t a1, int *a2, uint64_t a3)
{
  sub_A186C4(a2, a3, &v20);
  if (v20 && !sub_A19B28(v20))
  {
    v5 = sub_A21CB8(a2);
    v6 = *(a1 + 24);
    v7 = *(v6 + 1072);
    v8 = *(v6 + 1080);
    v9 = v7;
    if (v7 != v8)
    {
      v9 = v7;
      while (*v9 != 2)
      {
        if (++v9 == v8)
        {
          goto LABEL_12;
        }
      }
    }

    if (v9 != v8)
    {
      sub_9CB3E4(a1, &v20, 2, v5);
      v10 = *(a1 + 24);
      v7 = *(v10 + 1072);
      v8 = *(v10 + 1080);
    }

LABEL_12:
    while (v7 != v8)
    {
      if (*v7 == 1)
      {
        if (v7 != v8)
        {
          sub_9CB3E4(a1, &v20, 1, v5);
        }

        break;
      }

      ++v7;
    }

    (*(*v20 + 32))(v18);
    sub_53D784(v5 + 1696, v18);
    *(v5 + 1856) = v19[0];
    sub_6081F0(v18);
    (*(*v20 + 24))(v18);
    sub_53D784(v5 + 1272, v18);
    sub_53D784(v5 + 1432, v19);
    *(v5 + 1592) = v19[160];
    sub_6081F0(v19);
    sub_6081F0(v18);
    (*(*v20 + 40))(v18);
    sub_53D784(v5 + 1112, v18);
    sub_6081F0(v18);
    v11 = sub_A21CB8(a2);
    if (*(v11 + 2224) != *(v11 + 2232))
    {
      v12 = v20;
      v13 = sub_A21CB8(a2);
      (*(*v12 + 80))(v12, v13 + 2224);
    }

    v14 = sub_A21CB8(a2);
    if (*(v14 + 3424) != *(v14 + 3432))
    {
      v15 = v20;
      v16 = sub_A21CB8(a2);
      (*(*v15 + 88))(v15, v16 + 3424);
    }
  }

  v17 = v21;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_9CB030(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  if (v5 != v4)
  {
    while (*v5 != 2)
    {
      v5 += 1426;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  if (v5 != v4)
  {
    sub_9CB8FC(__p, v5, a1[2]);
    *&v11 = "{Line}";
    v6 = sub_353894(__p, "{Line}");
    if ((*(v6 + 63) & 0x8000000000000000) != 0)
    {
      if (v6[6])
      {
LABEL_8:
        strcpy(v10, "Board_List_Line_{Mode}");
        v10[23] = 22;
        sub_9CB294(a1, v10, __p, &v11);
        if (*(a2 + 55) < 0)
        {
          operator delete(*(a2 + 32));
        }

        *(a2 + 32) = v11;
        *(a2 + 48) = v12;
        v7 = v14;
        if (!v14)
        {
LABEL_14:
          v8 = __p[0];
          __p[0] = 0;
          if (v8)
          {
            operator delete(v8);
          }

          return;
        }

        while (1)
        {
          v9 = *v7;
          if (*(v7 + 63) < 0)
          {
            operator delete(v7[5]);
            if (*(v7 + 39) < 0)
            {
LABEL_21:
              operator delete(v7[2]);
            }
          }

          else if (*(v7 + 39) < 0)
          {
            goto LABEL_21;
          }

          operator delete(v7);
          v7 = v9;
          if (!v9)
          {
            goto LABEL_14;
          }
        }
      }
    }

    else if (*(v6 + 63))
    {
      goto LABEL_8;
    }

    operator new();
  }
}

void sub_9CB23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  operator delete(v15);
  sub_2CD04(&a15);
  _Unwind_Resume(a1);
}

void sub_9CB258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2CD04(va);
  _Unwind_Resume(a1);
}

void sub_9CB294(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  sub_9CD974(a3, *(a3 + 40), 0, 1, *a1, __p);
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_6A58C4(__p, a3, &v9, 0, a4);
  v8 = v10;
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(__p[0]);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_11;
  }
}

void sub_9CB3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1F1A8(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9CB3E4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  result = (*(**a2 + 56))(*a2, a3);
  if (result)
  {
    (*(**a2 + 16))(v12);
    v8 = sub_4D1F6C(v12);
    if (!v8)
    {
      sub_9CB5D0(v8, v5, 0, v12, a4);
    }

    sub_6081F0(v12);
    (*(**a2 + 16))(v12);
    v9 = sub_4D1F6C(v12);
    if (!v9)
    {
      sub_9CB5D0(v9, v5, 1, v12, a4);
    }

    sub_6081F0(v12);
    (*(**a2 + 16))(v12);
    v10 = sub_4D1F6C(v12);
    if (!v10)
    {
      sub_9CB5D0(v10, v5, 2, v12, a4);
    }

    sub_6081F0(v12);
    (*(**a2 + 16))(v12);
    v11 = sub_4D1F6C(v12);
    if (!v11)
    {
      sub_9CB5D0(v11, v5, 3, v12, a4);
    }

    return sub_6081F0(v12);
  }

  return result;
}

void sub_9CB5D0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  if (a2 == 1)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = a5[207];
        if (v13 >= a5[208])
        {
          a5[207] = sub_5C489C(a5 + 206, a4);
        }

        else
        {
          sub_55BD50(a5[207], a4);
          a5[207] = v13 + 160;
          a5[207] = v13 + 160;
        }
      }

      else if (a3 == 3)
      {
        v9 = a5[210];
        if (v9 >= a5[211])
        {
          a5[210] = sub_5C489C(a5 + 209, a4);
        }

        else
        {
          sub_55BD50(a5[210], a4);
          a5[210] = v9 + 160;
          a5[210] = v9 + 160;
        }
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v7 = a5[204];
        if (v7 >= a5[205])
        {
          a5[204] = sub_5C489C(a5 + 203, a4);
        }

        else
        {
          sub_55BD50(a5[204], a4);
          a5[204] = v7 + 160;
          a5[204] = v7 + 160;
        }
      }
    }

    else
    {
      v12 = a5[201];
      if (v12 >= a5[202])
      {
        a5[201] = sub_5C489C(a5 + 200, a4);
      }

      else
      {
        sub_55BD50(a5[201], a4);
        a5[201] = v12 + 160;
        a5[201] = v12 + 160;
      }
    }
  }

  else if (a2 == 2)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v11 = a5[134];
        if (v11 >= a5[135])
        {
          a5[134] = sub_5C489C(a5 + 133, a4);
        }

        else
        {
          sub_55BD50(a5[134], a4);
          a5[134] = v11 + 160;
          a5[134] = v11 + 160;
        }
      }

      else if (a3 == 3)
      {
        v8 = a5[137];
        if (v8 >= a5[138])
        {
          a5[137] = sub_5C489C(a5 + 136, a4);
        }

        else
        {
          sub_55BD50(a5[137], a4);
          a5[137] = v8 + 160;
          a5[137] = v8 + 160;
        }
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v6 = a5[131];
        if (v6 >= a5[132])
        {
          a5[131] = sub_5C489C(a5 + 130, a4);
        }

        else
        {
          sub_55BD50(a5[131], a4);
          a5[131] = v6 + 160;
          a5[131] = v6 + 160;
        }
      }
    }

    else
    {
      v10 = a5[128];
      if (v10 >= a5[129])
      {
        a5[128] = sub_5C489C(a5 + 127, a4);
      }

      else
      {
        sub_55BD50(a5[128], a4);
        a5[128] = v10 + 160;
        a5[128] = v10 + 160;
      }
    }
  }
}

uint64_t sub_9CB8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 2;
  if (*(a2 + 792) == 1)
  {
    v5 = *(a3 + 72) + 696 * *(a2 + 752);
    *(a1 + 40) = *(v5 + 556);
    sub_9D4538(v5, &v17);
    v19 = "{Line}";
    v6 = sub_353894(a1, "{Line}");
    if (*(v6 + 63) < 0)
    {
      v7 = v6;
      operator delete(v6[5]);
      v6 = v7;
    }

    *(v6 + 5) = v17;
    v6[7] = v18;
    v8 = *(a2 + 224);
    if (v8 != *(a2 + 232))
    {
      *&v17 = "{Headsign}";
      v9 = sub_353894(a1, "{Headsign}");
      v10 = (v9 + 5);
      if (v9 + 5 != v8)
      {
        v11 = *(v9 + 63);
        v12 = *(v8 + 23);
        if (v11 < 0)
        {
          if (v12 >= 0)
          {
            v15 = v8;
          }

          else
          {
            v15 = *v8;
          }

          if (v12 >= 0)
          {
            v16 = *(v8 + 23);
          }

          else
          {
            v16 = v8[1];
          }

          sub_13B38(v10, v15, v16);
        }

        else
        {
          if ((*(v8 + 23) & 0x80) == 0)
          {
            v13 = *v8;
            *(v10 + 16) = v8[2];
            *v10 = v13;
            return a1;
          }

          sub_13A68(v10, *v8, v8[1]);
        }
      }
    }
  }

  return a1;
}

void sub_9CBAA0()
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
  xmmword_27B3468 = 0u;
  unk_27B3478 = 0u;
  dword_27B3488 = 1065353216;
  sub_3A9A34(&xmmword_27B3468, v0);
  sub_3A9A34(&xmmword_27B3468, v3);
  sub_3A9A34(&xmmword_27B3468, __p);
  sub_3A9A34(&xmmword_27B3468, v9);
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
    qword_27B3410 = 0;
    qword_27B3418 = 0;
    qword_27B3408 = 0;
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

void sub_9CBD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3420)
  {
    qword_27B3428 = qword_27B3420;
    operator delete(qword_27B3420);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9CBE3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      *(a2 + 23) = 7;
      strcpy(a2, "Vehicle");
      break;
    case 10:
    case 140:
      *(a2 + 23) = 3;
      *a2 = 7566658;
      break;
    case 11:
    case 141:
      *(a2 + 23) = 5;
      strcpy(a2, "Coach");
      break;
    case 20:
      *(a2 + 23) = 4;
      strcpy(a2, "Taxi");
      break;
    case 30:
      *(a2 + 23) = 7;
      strcpy(a2, "Shuttle");
      break;
    case 31:
    case 142:
      *(a2 + 23) = 10;
      strcpy(a2, "ShuttleBus");
      break;
    case 40:
      *(a2 + 23) = 4;
      strcpy(a2, "Rail");
      break;
    case 41:
      *(a2 + 23) = 6;
      strcpy(a2, "Subway");
      break;
    case 42:
      v2 = "HighSpeedRail";
      goto LABEL_21;
    case 50:
      *(a2 + 23) = 9;
      strcpy(a2, "LightRail");
      break;
    case 51:
      *(a2 + 23) = 9;
      strcpy(a2, "Streetcar");
      break;
    case 52:
      *(a2 + 23) = 4;
      strcpy(a2, "Tram");
      break;
    case 54:
      *(a2 + 23) = 7;
      strcpy(a2, "Trolley");
      break;
    case 55:
      *(a2 + 23) = 10;
      strcpy(a2, "TrolleyBus");
      break;
    case 60:
      *(a2 + 23) = 8;
      strcpy(a2, "Monorail");
      break;
    case 70:
      *(a2 + 23) = 8;
      strcpy(a2, "CableCar");
      break;
    case 80:
      *(a2 + 23) = 9;
      strcpy(a2, "Funicular");
      break;
    case 90:
    case 91:
      *(a2 + 23) = 10;
      strcpy(a2, "AerialTram");
      break;
    case 92:
      v2 = "AerialGondola";
LABEL_21:
      *(a2 + 23) = 13;
      *a2 = *v2;
      *(a2 + 5) = *(v2 + 5);
      *(a2 + 13) = 0;
      break;
    case 100:
      *(a2 + 23) = 5;
      strcpy(a2, "Ferry");
      break;
    case 101:
      *(a2 + 23) = 9;
      strcpy(a2, "WaterTaxi");
      break;
    case 102:
      *(a2 + 23) = 8;
      strcpy(a2, "WaterBus");
      break;
    case 110:
      *(a2 + 23) = 4;
      strcpy(a2, "Boat");
      break;
    case 111:
      *(a2 + 23) = 4;
      strcpy(a2, "Ship");
      break;
    case 120:
    case 143:
      *(a2 + 23) = 15;
      strcpy(a2, "BusRapidTransit");
      break;
    case 130:
      *(a2 + 23) = 7;
      strcpy(a2, "Jeepney");
      break;
    default:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      break;
  }

  return result;
}

void sub_9CC42C(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, std::string *a5@<X8>)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0;
        v7 = "station";
        if (a4)
        {
          v7 = "Station";
        }

        v8 = 7;
        HIBYTE(v16) = 7;
        *__s = *v7;
        *&__s[3] = *(v7 + 3);
        __s[7] = 0;
        if (a2 > 5)
        {
          goto LABEL_27;
        }

LABEL_17:
        if (a2 <= 2)
        {
          if (a2 != 1)
          {
            if (a2 != 2)
            {
              goto LABEL_42;
            }

            goto LABEL_23;
          }
        }

        else
        {
          if (a2 == 3)
          {
LABEL_31:
            v10 = 6;
            HIBYTE(v13) = 6;
            qmemcpy(__p, "Subway", 6);
            goto LABEL_34;
          }

          if (a2 != 4)
          {
LABEL_23:
            v10 = 5;
            HIBYTE(v13) = 5;
            qmemcpy(__p, "Train", 5);
LABEL_34:
            *(__p | v10) = 0;
            a5->__r_.__value_.__l.__size_ = 0;
            a5->__r_.__value_.__r.__words[2] = 0;
            a5->__r_.__value_.__r.__words[0] = 0;
            std::string::append(a5, __p, v10);
            if (v6)
            {
              goto LABEL_37;
            }

            std::string::append(a5, " ", 1uLL);
            goto LABEL_36;
          }
        }

        v10 = 3;
        HIBYTE(v13) = 3;
        qmemcpy(__p, "Bus", 3);
        goto LABEL_34;
      }

LABEL_16:
      v8 = 0;
      *__s = 0;
      v15 = 0;
      v6 = 1;
      v16 = 0;
      if (a2 > 5)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a1 != 2)
  {
    if (a1 != 3 || !a3)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = 0;
    v8 = 4;
    HIBYTE(v16) = 4;
    if (a4)
    {
      v9 = 1886352467;
    }

    else
    {
      v9 = 1886352499;
    }

    *__s = v9;
    __s[4] = 0;
    if (a2 <= 5)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v6 = 0;
  v8 = 8;
  HIBYTE(v16) = 8;
  v11 = 0x6C616E696D726554;
  if (!a4)
  {
    v11 = 0x6C616E696D726574;
  }

  *__s = v11;
  LOBYTE(v15) = 0;
  if (a2 <= 5)
  {
    goto LABEL_17;
  }

LABEL_27:
  if ((a2 - 8) < 2)
  {
    v10 = 4;
    HIBYTE(v13) = 4;
    LODWORD(__p[0]) = 1835102804;
    goto LABEL_34;
  }

  if (a2 == 6)
  {
    goto LABEL_31;
  }

  if (a2 == 7)
  {
    v10 = 5;
    HIBYTE(v13) = 5;
    qmemcpy(__p, "Ferry", 5);
    goto LABEL_34;
  }

LABEL_42:
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  a5->__r_.__value_.__r.__words[0] = 0;
  if ((v6 & 1) == 0)
  {
LABEL_36:
    std::string::append(a5, __s, v8);
  }

LABEL_37:
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(*__s);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_41;
  }
}

void sub_9CC6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  sub_21E3864(&a14, &a9, &a15);
  _Unwind_Resume(a1);
}

uint64_t sub_9CC6F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 4)
  {
    if (result <= 7)
    {
      if (result != 5)
      {
        if (result != 6)
        {
          *(a2 + 23) = 5;
          strcpy(a2, "Ferry");
          return result;
        }

LABEL_15:
        *(a2 + 23) = 6;
        strcpy(a2, "Subway");
        return result;
      }

LABEL_14:
      *(a2 + 23) = 5;
      strcpy(a2, "Train");
      return result;
    }

    if ((result - 8) < 2)
    {
      *(a2 + 23) = 4;
      strcpy(a2, "Tram");
      return result;
    }
  }

  else
  {
    if (result > 1)
    {
      if (result != 2)
      {
        if (result != 3)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (result == 1)
    {
LABEL_11:
      *(a2 + 23) = 3;
      *a2 = 7566658;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void sub_9CC800(signed int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 != 5)
      {
        if (a1 != 6)
        {
          v4 = 0;
          v5 = 5;
          p_dst = (__dst.__r_.__value_.__r.__words + 5);
          HIBYTE(v22) = 5;
          strcpy(v21, "Ferry");
          v7 = sub_9BCDB4(7u, a2);
          if (v7 > 1)
          {
            goto LABEL_27;
          }

          goto LABEL_20;
        }

LABEL_19:
        v4 = 0;
        p_dst = (__dst.__r_.__value_.__r.__words + 6);
        v5 = 6;
        HIBYTE(v22) = 6;
        strcpy(v21, "Subway");
        v7 = sub_9BCDB4(a1, a2);
        if (v7 > 1)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if ((a1 - 8) < 2)
    {
      v4 = 0;
      p_dst = (__dst.__r_.__value_.__r.__words + 4);
      v5 = 4;
      HIBYTE(v22) = 4;
      strcpy(v21, "Tram");
      v7 = sub_9BCDB4(a1, a2);
      if (v7 <= 1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_26:
    v5 = 0;
    v21[0] = 0;
    v21[1] = 0;
    p_dst = &__dst;
    v4 = 1;
    v22 = 0;
    v7 = sub_9BCDB4(a1, a2);
    if (v7 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  if (a1 == 2)
  {
LABEL_17:
    v4 = 0;
    v5 = 5;
    p_dst = (__dst.__r_.__value_.__r.__words + 5);
    HIBYTE(v22) = 5;
    strcpy(v21, "Train");
    v7 = sub_9BCDB4(a1, a2);
    if (v7 <= 1)
    {
      goto LABEL_20;
    }

LABEL_27:
    if (v7 != 2)
    {
      if (v7 == 3)
      {
LABEL_29:
        v9 = 4;
        HIBYTE(v20) = 4;
        if (v4)
        {
          v10 = 1886352467;
        }

        else
        {
          v10 = 1886352499;
        }

        LODWORD(__src) = v10;
        BYTE4(__src) = 0;
        if ((v4 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v9 = 8;
    HIBYTE(v20) = 8;
    v12 = 0x6C616E696D726554;
    if (!v4)
    {
      v12 = 0x6C616E696D726574;
    }

    __src = v12;
    LOBYTE(v19) = 0;
    if (v4)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if (a1 == 3)
  {
    goto LABEL_19;
  }

LABEL_12:
  v4 = 0;
  p_dst = (__dst.__r_.__value_.__r.__words + 3);
  v5 = 3;
  HIBYTE(v22) = 3;
  LODWORD(v21[0]) = 7566658;
  v7 = sub_9BCDB4(a1, a2);
  if (v7 > 1)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (!v7)
  {
    goto LABEL_29;
  }

  if (v7 != 1)
  {
LABEL_34:
    __src = 0;
    v19 = 0;
    v20 = 0;
    if (!v4)
    {
      v9 = 0;
      goto LABEL_43;
    }

    v11 = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = 8;
LABEL_40:
    strcpy(a3 + v11, " skipped");
    return;
  }

  v8 = "station";
  if (v4)
  {
    v8 = "Station";
  }

  v9 = 7;
  HIBYTE(v20) = 7;
  LODWORD(__src) = *v8;
  *(&__src + 3) = *(v8 + 3);
  HIBYTE(__src) = 0;
  if (v4)
  {
LABEL_39:
    v11 = v9;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    *(a3 + 23) = v9 + 8;
    memcpy(a3, &__src, v9);
    goto LABEL_40;
  }

LABEL_43:
  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v5 + 1;
  memcpy(&__dst, v21, v5);
  *(&__dst | v5) = 32;
  p_dst->__r_.__value_.__s.__data_[1] = 0;
  v13 = std::string::append(&__dst, &__src, v9);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v17, " skipped", 8uLL);
  *a3 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_49;
      }

      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v20) < 0)
  {
LABEL_49:
    operator delete(__src);
  }
}

void sub_9CCBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a23);
  _Unwind_Resume(exception_object);
}

void sub_9CCC50(int *a1, const char *a2, const char *a3, uint64_t a4, int *a5, std::string *a6, uint64_t *a7, uint64_t a8)
{
  if (*(a4 + 1) == 1)
  {
    v15 = sub_25A44(a5, a1, a3);
    if (v15)
    {
      if (v15 <= 6 && !sub_25A44(a5, a5 + 1, a2))
      {
        std::string::append(a6, "_DayOfWeek", 0xAuLL);
        *&v30.__r_.__value_.__r.__words[1] = 0x6B00uLL;
        *(&v30.__r_.__value_.__s + 23) = 10;
        qmemcpy(&v30, "{DayOfWee", 9);
        v23 = *(a8 + 23);
        if (v23 >= 0)
        {
          v24 = a8;
        }

        else
        {
          v24 = *a8;
        }

        if (v23 >= 0)
        {
          v25 = *(a8 + 23);
        }

        else
        {
          v25 = *(a8 + 8);
        }

        v26 = std::string::append(&v30, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, "}", 1uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v33 = v28->__r_.__value_.__r.__words[2];
        *__p = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        sub_64E308(a7, __p, a1, a3, 1);
        goto LABEL_14;
      }

      std::string::append(a6, "_Date", 5uLL);
      v30.__r_.__value_.__r.__words[2] = 0x500000000000000;
      *&v30.__r_.__value_.__l.__data_ = 0x657461447BuLL;
      v16 = *(a8 + 23);
      if (v16 >= 0)
      {
        v17 = a8;
      }

      else
      {
        v17 = *a8;
      }

      if (v16 >= 0)
      {
        v18 = *(a8 + 23);
      }

      else
      {
        v18 = *(a8 + 8);
      }

      v19 = std::string::append(&v30, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v31, "}", 1uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v33 = v21->__r_.__value_.__r.__words[2];
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        sub_64E308(a7, __p, a1, a3, 2);
LABEL_14:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }

      operator delete(v30.__r_.__value_.__l.__data_);
      goto LABEL_13;
    }
  }
}

void sub_9CCEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CCF00(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C5A0(a1, "{Line}");
  if (v6)
  {
    v7 = v6;
    v8 = (v6 + 5);
    if (*(v7 + 63) < 0)
    {
      if (!v7[6])
      {
        return;
      }

      __endptr[0] = 0;
      v8 = *v8;
    }

    else
    {
      if (!*(v7 + 63))
      {
        return;
      }

      __endptr[0] = 0;
    }

    v9 = __endptr;
    strtol(v8, __endptr, 10);
    if (!*__endptr[0])
    {
      sub_6A5584(a3, a1, a2, 0, __endptr);
      v10 = v26;
      v12 = __endptr[0];
      v11 = __endptr[1];
      if (v26 < 0)
      {
        v9 = __endptr[0];
      }

      if (v26 >= 0)
      {
        v11 = v26;
      }

      v13 = v9 + v11;
      if (v11 >= 6)
      {
        v14 = v9;
        do
        {
          v15 = memchr(v14, 123, v11 - 5);
          if (!v15)
          {
            break;
          }

          if (*v15 == 1852394619 && *(v15 + 2) == 32101)
          {
            goto LABEL_21;
          }

          v14 = (v15 + 1);
          v11 = v13 - v14;
        }

        while (v13 - v14 > 5);
      }

      v15 = v13;
LABEL_21:
      v18 = v15 == v13 || v15 - v9 == -1;
      if (v10 < 0)
      {
        operator delete(v12);
      }

      if (!v18)
      {
        v19 = *(a3 + 23);
        if ((v19 & 0x80u) == 0)
        {
          v20 = a3;
        }

        else
        {
          v20 = *a3;
        }

        if ((v19 & 0x80u) != 0)
        {
          v19 = *(a3 + 8);
        }

        if (v19 >= 5)
        {
          v21 = &v20[v19];
          v22 = v20;
          do
          {
            v23 = memchr(v22, 95, v19 - 4);
            if (!v23)
            {
              break;
            }

            if (*v23 == 1852394591 && v23[4] == 101)
            {
              if (v23 != v21 && v23 - v20 != -1)
              {
                std::string::replace(a3, v23 - v20, 5uLL, "_LineNumber", 0xBuLL);
              }

              return;
            }

            v22 = v23 + 1;
            v19 = v21 - v22;
          }

          while (v21 - v22 >= 5);
        }
      }
    }
  }
}

void sub_9CD0E0(uint64_t a1, int a2, std::string *a3)
{
  v6 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  v9 = v7 + size;
  if (size >= 7)
  {
    v10 = size;
    v11 = v7;
    do
    {
      v12 = memchr(v11, 95, v10 - 6);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (*v12 == 1937331039 && *(v12 + 3) == 1835365491)
      {
        goto LABEL_16;
      }

      v11 = (v12 + 1);
      v10 = v9 - (v13 + 1);
    }

    while (v10 > 6);
  }

  v13 = v7 + size;
LABEL_16:
  if (size >= 5)
  {
    v15 = size;
    v16 = v7;
    do
    {
      v17 = memchr(v16, 95, v15 - 4);
      if (!v17)
      {
        break;
      }

      if (*v17 == 1852394591 && v17[4] == 101)
      {
        goto LABEL_25;
      }

      v16 = (v17 + 1);
      v15 = v9 - v16;
    }

    while (v9 - v16 > 4);
  }

  v17 = v7 + size;
LABEL_25:
  if (a2 && (v17 != v9 ? (v19 = v17 - v7 == -1) : (v19 = 1), v19 ? (v20 = 0) : (v20 = 1), v13 - v7 != -1 ? (v21 = v13 == v9) : (v21 = 1), !v21 || v20))
  {
    if (size >= 6)
    {
      v25 = v7;
      do
      {
        v26 = memchr(v25, 123, size - 5);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1685015931 && *(v26 + 2) == 32101)
        {
          if (v26 != v9 && v26 - v7 != -1)
          {

            std::string::replace(a3, v26 - v7, 6uLL, "NoType", 6uLL);
          }

          return;
        }

        v25 = (v26 + 1);
        size = v9 - v25;
      }

      while (v9 - v25 >= 6);
    }
  }

  else
  {
    sub_9CBE3C(a1, __p);
    if (size >= 6)
    {
      v22 = v7;
      do
      {
        v23 = memchr(v22, 123, size - 5);
        if (!v23)
        {
          break;
        }

        if (*v23 == 1685015931 && *(v23 + 2) == 32101)
        {
          if (v23 != v9 && v23 - v7 != -1)
          {
            if ((v31 & 0x80u) == 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            if ((v31 & 0x80u) == 0)
            {
              v29 = v31;
            }

            else
            {
              v29 = __p[1];
            }

            std::string::replace(a3, v23 - v7, 6uLL, v28, v29);
          }

          break;
        }

        v22 = (v23 + 1);
        size = v9 - v22;
      }

      while (v9 - v22 >= 6);
    }

    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_9CD374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_9CD390(void *a1, uint64_t a2)
{
  v4 = sub_2C5A0(a1, "{Line}");
  if (!v4)
  {
    v6 = 1;
    v7 = sub_2C5A0(a1, "{System}");
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_19:
    v9 = 1;
    v10 = sub_2C5A0(a1, "{Direction}");
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_20:
    v12 = 1;
    v13 = sub_2C5A0(a1, "{VehicleNumber}");
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_21:
    v15 = 1;
    result = sub_2C5A0(a1, "{Headsign}");
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v5 = *(v4 + 63);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = v4[6];
  }

  v6 = v5 == 0;
  v7 = sub_2C5A0(a1, "{System}");
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = *(v7 + 63);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = v7[6];
  }

  v9 = v8 == 0;
  v10 = sub_2C5A0(a1, "{Direction}");
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_8:
  v11 = *(v10 + 63);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = v10[6];
  }

  v12 = v11 == 0;
  v13 = sub_2C5A0(a1, "{VehicleNumber}");
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_11:
  v14 = *(v13 + 63);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = v13[6];
  }

  v15 = v14 == 0;
  result = sub_2C5A0(a1, "{Headsign}");
  if (result)
  {
LABEL_14:
    data = result[2].__r_.__value_.__s.__data_[15];
    if ((data & 0x8000000000000000) != 0)
    {
      data = result[2].__r_.__value_.__l.__data_;
    }

    v18 = data == 0;
    if (!v6)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = 1;
  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_23:
  v19 = *(a2 + 23);
  if ((v19 & 0x80u) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 8);
  }

  if (v19 >= 5)
  {
    v21 = (v20 + v19);
    result = v20;
    do
    {
      result = memchr(result, 95, v19 - 4);
      if (!result)
      {
        break;
      }

      if (LODWORD(result->__r_.__value_.__l.__data_) == 1852394591 && result->__r_.__value_.__s.__data_[4] == 101)
      {
        if (result != v21 && result - v20 != -1)
        {
          result = std::string::replace(a2, result - v20, 5uLL, byte_22A5E10, 0);
        }

        break;
      }

      result = (result + 1);
      v19 = v21 - result;
    }

    while (v21 - result >= 5);
  }

LABEL_40:
  if (v9)
  {
    v23 = *(a2 + 23);
    if ((v23 & 0x80u) == 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a2 + 8);
    }

    if (v23 >= 7)
    {
      v25 = (v24 + v23);
      result = v24;
      do
      {
        result = memchr(result, 95, v23 - 6);
        if (!result)
        {
          break;
        }

        if (LODWORD(result->__r_.__value_.__l.__data_) == 1937331039 && *(result->__r_.__value_.__r.__words + 3) == 1835365491)
        {
          if (result != v25 && result - v24 != -1)
          {
            result = std::string::replace(a2, result - v24, 7uLL, byte_22A5E10, 0);
          }

          break;
        }

        result = (result + 1);
        v23 = v25 - result;
      }

      while (v25 - result >= 7);
    }
  }

  if (v12)
  {
    v27 = *(a2 + 23);
    if ((v27 & 0x80u) == 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    if ((v27 & 0x80u) != 0)
    {
      v27 = *(a2 + 8);
    }

    if (v27 >= 10)
    {
      v29 = (v28 + v27);
      result = v28;
      do
      {
        result = memchr(result, 95, v27 - 9);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x697463657269445FLL && LOWORD(result->__r_.__value_.__r.__words[1]) == 28271)
        {
          if (result != v29 && result - v28 != -1)
          {
            result = std::string::replace(a2, result - v28, 0xAuLL, byte_22A5E10, 0);
          }

          break;
        }

        result = (result + 1);
        v27 = v29 - result;
      }

      while (v29 - result >= 10);
    }
  }

  if (v15)
  {
    v31 = *(a2 + 23);
    if ((v31 & 0x80u) == 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    if ((v31 & 0x80u) != 0)
    {
      v31 = *(a2 + 8);
    }

    if (v31 >= 14)
    {
      v33 = (v32 + v31);
      result = v32;
      do
      {
        result = memchr(result, 95, v31 - 13);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x656C63696865565FLL && *(result->__r_.__value_.__r.__words + 6) == 0x7265626D754E656CLL)
        {
          if (result != v33 && result - v32 != -1)
          {
            result = std::string::replace(a2, result - v32, 0xEuLL, byte_22A5E10, 0);
          }

          break;
        }

        result = (result + 1);
        v31 = v33 - result;
      }

      while (v33 - result >= 14);
    }
  }

  if (v18)
  {
    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v35 >= 0)
    {
      v37 = *(a2 + 23);
    }

    else
    {
      v37 = *(a2 + 8);
    }

    v38 = (v36 + v37);
    if (v37 >= 12)
    {
      v39 = v37;
      result = v36;
      do
      {
        result = memchr(result, 95, v39 - 11);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x646165485F6F545FLL && LODWORD(result->__r_.__value_.__r.__words[1]) == 1852270963)
        {
          if (result != v38)
          {
            v41 = result - v36;
            if (result - v36 != -1)
            {
              v42 = a2;
              v43 = 12;
LABEL_137:

              return std::string::replace(v42, v41, v43, byte_22A5E10, 0);
            }
          }

          break;
        }

        result = (result + 1);
        v39 = v38 - result;
      }

      while (v38 - result >= 12);
      if (v37 >= 16)
      {
        v44 = v37;
        result = v36;
        do
        {
          result = memchr(result, 95, v44 - 15);
          if (!result)
          {
            break;
          }

          if (result->__r_.__value_.__r.__words[0] == 0x5F647261776F545FLL && result->__r_.__value_.__l.__size_ == 0x6E67697364616548)
          {
            if (result != v38)
            {
              v41 = result - v36;
              if (result - v36 != -1)
              {
                v42 = a2;
                v43 = 16;
                goto LABEL_137;
              }
            }

            break;
          }

          result = (result + 1);
          v44 = v38 - result;
        }

        while (v38 - result >= 16);
      }
    }

    if (v37 >= 9)
    {
      result = v36;
      do
      {
        result = memchr(result, 95, v37 - 8);
        if (!result)
        {
          break;
        }

        if (result->__r_.__value_.__r.__words[0] == 0x676973646165485FLL && result->__r_.__value_.__s.__data_[8] == 110)
        {
          if (result != v38)
          {
            v41 = result - v36;
            if (result - v36 != -1)
            {
              v42 = a2;
              v43 = 9;
              goto LABEL_137;
            }
          }

          return result;
        }

        result = (result + 1);
        v37 = v38 - result;
      }

      while (v38 - result >= 9);
    }
  }

  return result;
}

void sub_9CD974(void *a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_9CD390(a1, a6);
  sub_9CD0E0(a2, a3, a6);
  sub_9CCF00(a1, a5, a6);
  if ((a4 & 1) == 0)
  {
    qmemcpy(v20, "_VehicleNumber", 14);
    v19 = 20;
    strcpy(__p, "_VehicleAlphanumeric");
    v12 = *(a6 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a6;
    }

    else
    {
      v13 = *a6;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a6 + 8);
    }

    if (v12 >= 14)
    {
      v14 = &v13[v12];
      v15 = v13;
      do
      {
        v16 = memchr(v15, 95, v12 - 13);
        if (!v16)
        {
          break;
        }

        if (*v16 == v20[0] && *(v16 + 6) == *(v20 + 6))
        {
          if (v16 != v14 && v16 - v13 != -1)
          {
            std::string::replace(a6, v16 - v13, 0xEuLL, __p, 0x14uLL);
            if (v19 < 0)
            {
              operator delete(*__p);
            }
          }

          return;
        }

        v15 = v16 + 1;
        v12 = v14 - v15;
      }

      while (v14 - v15 >= 14);
    }
  }
}

void sub_9CDAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CDAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_9274F4(a5, a2);
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    sub_9274F4(a5, a3);
  }

  sub_9274F4(a5, a4);
  operator new();
}

void sub_9CDE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_4B98C4(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_9CDEEC(unsigned int a1)
{
  v1 = 0x202010100uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 3;
}

void sub_9CDF10(int a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a1 > 2)
  {
    if (a1 == 4)
    {
      __dst = 0uLL;
      v19 = 0;
      memset(v17, 0, 24);
      if (a4)
      {
        BYTE7(v17[1]) = 22;
        qmemcpy(v17, "{RT_Symbol} No service", 22);
        v9 = 6;
        v7 = 2;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        BYTE7(v17[1]) = 10;
        qmemcpy(v17, "No service", 10);
        v9 = 6;
        v7 = 2;
      }

      goto LABEL_24;
    }

    if (a1 == 3)
    {
      __dst = 0uLL;
      v19 = 0;
      memset(v17, 0, 24);
      if (a4)
      {
        BYTE7(v17[1]) = 18;
        qmemcpy(v17, "{RT_Symbol} Delays", 18);
        v7 = 2;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        BYTE7(v17[1]) = 6;
        qmemcpy(v17, "Delays", 6);
        v7 = 2;
      }

      v9 = 2;
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  if ((a1 - 1) < 2)
  {
    v7 = 1;
    __dst = 0uLL;
    v19 = 0;
    memset(v17, 0, 24);
    if (a1 == 1)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  if (a1)
  {
LABEL_14:
    v7 = 0;
    __dst = 0uLL;
    v19 = 0;
    memset(v17, 0, 24);
    if (a1 == 1)
    {
      goto LABEL_44;
    }

LABEL_15:
    if (a1 != 2)
    {
      v8 = 0;
      *(a3 + 104) = 0;
      goto LABEL_36;
    }

    if (a4)
    {
      HIBYTE(v19) = 11;
      strcpy(&__dst, "{RT_Symbol}");
      v8 = 1;
      *(a3 + 104) = 1;
      goto LABEL_36;
    }

    v8 = 0;
    BYTE7(v17[1]) = 7;
    qmemcpy(v17, "On-time", 7);
    v9 = 1;
LABEL_24:
    *(a3 + 104) = v9;
    v10 = sub_9274F4(a2, v17);
    if (&__dst != v10)
    {
      v11 = *(v10 + 23);
      if (SHIBYTE(v19) < 0)
      {
        if (v11 >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = *v10;
        }

        if (v11 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        sub_13B38(&__dst, v13, v14);
      }

      else if ((*(v10 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v10, v10[1]);
      }

      else
      {
        v12 = *v10;
        v19 = v10[2];
        __dst = v12;
      }
    }

    goto LABEL_36;
  }

  __dst = 0uLL;
  v19 = 0;
  memset(v17, 0, 24);
  v8 = 0;
  v7 = 0;
  if ((a4 & 1) == 0)
  {
    v9 = 0;
    BYTE7(v17[1]) = 9;
    qmemcpy(v17, "Scheduled", 9);
    goto LABEL_24;
  }

  *(a3 + 104) = 0;
LABEL_36:
  v15 = HIBYTE(v19);
  if (SHIBYTE(v19) < 0)
  {
    v15 = *(&__dst + 1);
  }

  if (v15)
  {
    v16[0] = 0;
    sub_64C770(a3, &__dst, &unk_22A5E40, v7, v16);
  }

  if (a5 != 0x7FFFFFFFLL)
  {
    sub_64B998(v16);
    sub_64F2E8(a3, v16, a5);
  }

  if (v8)
  {
    sub_588850(1, v16);
    sub_64BF94(a3, "{RT_Symbol}");
  }

LABEL_44:
  if ((SBYTE7(v17[1]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      return;
    }

LABEL_48:
    operator delete(__dst);
    return;
  }

  operator delete(*&v17[0]);
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_48;
  }
}

void sub_9CE2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5CEBB8(&a9);
  if (*(v9 - 89) < 0)
  {
    operator delete(*(v9 - 112));
    if ((*(v9 - 57) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v9 - 57) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v9 - 80));
  _Unwind_Resume(a1);
}

BOOL sub_9CE360(int a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*(a3 + 1444))
  {
    v4 = *(a3 + 1177) >= 0xCu;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*(a2 + 488) == *(a2 + 496))
  {
    return 0;
  }

  v5 = *(a2 + 116);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (*a4 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  return v5 < (*a4 / 10 + a1 + (((103 * (v7 + *a4 % 10)) >> 15) & 1) + ((103 * (v7 + *a4 % 10)) >> 10));
}

uint64_t sub_9CE3F8(uint64_t result, unsigned int a2)
{
  v2 = 0x50402030100uLL >> (8 * a2);
  if (a2 >= 6)
  {
    LOBYTE(v2) = 0;
  }

  *(result + 104) = v2;
  return result;
}

void sub_9CE41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_9274F4(a2, a1);
  if (*(v5 + 23) < 0)
  {
    sub_325C(&__p, *v5, v5[1]);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    if (v7 == v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = *v5;
    __p.__r_.__value_.__r.__words[2] = v5[2];
    *&__p.__r_.__value_.__l.__data_ = v6;
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    if (v7 == v8)
    {
      goto LABEL_37;
    }
  }

  do
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15 = v7[23];
    if (v15 >= 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = *v7;
    }

    if (v15 >= 0)
    {
      v17 = v7[23];
    }

    else
    {
      v17 = *(v7 + 1);
    }

    if (v17)
    {
      if (size >= v17)
      {
        v18 = p_p + size;
        v19 = *v16;
        v20 = p_p;
        do
        {
          v21 = size - v17;
          if (v21 == -1)
          {
            break;
          }

          v22 = memchr(v20, v19, v21 + 1);
          if (!v22)
          {
            break;
          }

          v23 = v22;
          if (!memcmp(v22, v16, v17))
          {
            if (v23 != v18)
            {
              v9 = v23 - p_p;
              if (v23 - p_p != -1)
              {
                goto LABEL_7;
              }
            }

            break;
          }

          v20 = (v23 + 1);
          size = v18 - (v23 + 1);
        }

        while (size >= v17);
      }
    }

    else
    {
      v9 = 0;
LABEL_7:
      v10 = v7[47];
      if (v10 >= 0)
      {
        v11 = v7 + 24;
      }

      else
      {
        v11 = *(v7 + 3);
      }

      if (v10 >= 0)
      {
        v12 = v7[47];
      }

      else
      {
        v12 = *(v7 + 4);
      }

      std::string::replace(&__p, v9, v17, v11, v12);
    }

    v7 += 48;
  }

  while (v7 != v8);
LABEL_37:
  sub_64C184(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_9CE5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9CE5D4(uint64_t *a1, __int128 *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 32 * v3;
  sub_64AC90(32 * v3, a2, *a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 24);
      v12 += 2;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 32;
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

void sub_9CE740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

void sub_9CEA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B34D8)
  {
    qword_27B34E0 = qword_27B34D8;
    operator delete(qword_27B34D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CEAD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x7FFFFFFF;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  HIBYTE(v10[2]) = 19;
  strcpy(v10, "TransitInstructions");
  __p = 0;
  v8 = 0;
  v9 = 0;
  v2 = sub_3AEC94(a1, v10, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }

  if (SHIBYTE(v10[2]) < 0)
  {
    operator delete(v10[0]);
  }

  HIBYTE(v10[2]) = 10;
  strcpy(v10, "countdowns");
  sub_5F5AC(v2, v10);
  if (SHIBYTE(v10[2]) < 0)
  {
    operator delete(v10[0]);
  }

  operator new();
}

void sub_9CEF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CF030(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4 || (v5 = *(v3 + 16), *(v3 + 8) != v5) && *(v5 - 5704) == 4)
  {
    v25 = 0;
    v6 = *a1;
    v24 = &v25;
    v7 = 0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3);
    if (v7 >= 2)
    {
      *v28 = 0u;
      *__p = 0u;
      v30 = 1065353216;
      if (v3 != v4)
      {
        do
        {
          v8 = *(v3 + 8);
          v9 = *(v3 + 16);
          if (v8 != v9)
          {
            while (*v8 != 2)
            {
              v8 += 5704;
              if (v8 == v9)
              {
                v8 = *(v3 + 16);
                break;
              }
            }
          }

          v10 = *(v8 + 752);
          v11 = *(v6 + 72);
          if (0x66FD0EB66FD0EB67 * ((*(v6 + 80) - v11) >> 3) <= v10)
          {
            sub_6FAB4();
          }

          v12 = v11 + 696 * v10;
          v13 = *(v12 + 672);
          for (i = *(v12 + 680); v13 != i; v13 += 2)
          {
            v31[0] = v13;
            v15 = sub_9CF4B8(v28, v13);
            ++*(v15 + 6);
          }

          v3 += 104;
        }

        while (v3 != v4);
        v16 = __p[0];
        v3 = *a2;
        v4 = a2[1];
        v17 = (v4 - *a2) >> 3;
        if (__p[0])
        {
          v7 = 0x4EC4EC4EC4EC4EC5 * v17;
          while (v7 != *(v16 + 6))
          {
            v16 = *v16;
            if (!v16)
            {
              goto LABEL_22;
            }
          }

          v18 = *(v16 + 2);
          goto LABEL_23;
        }

        v7 = 0x4EC4EC4EC4EC4EC5 * v17;
      }

LABEL_22:
      v18 = -1;
LABEL_23:
      v27 = v18;
      v26 = &v27;
      v31[0] = &v24;
      v31[1] = v6;
      v31[2] = &v27;
      v31[3] = &v26;
      v19 = 126 - 2 * __clz(v7);
      if (v4 == v3)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      sub_9CF7F4(v3, v4, v31, v20, 1);
      v21 = __p[0];
      if (__p[0])
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v28[0];
      v28[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }
  }
}

void sub_9CF280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF2BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = v3 - *a2;
  if (v4 >= 0x11)
  {
    v5 = *a1;
    *v23 = 0u;
    *__p = 0u;
    v25 = 1065353216;
    if (v2 == v3)
    {
      goto LABEL_14;
    }

    do
    {
      v7 = *(v5 + 72);
      if (0x66FD0EB66FD0EB67 * ((*(v5 + 80) - v7) >> 3) <= *v2)
      {
        sub_6FAB4();
      }

      v8 = v7 + 696 * *v2;
      v9 = *(v8 + 672);
      for (i = *(v8 + 680); v9 != i; v9 += 2)
      {
        v26[0] = v9;
        v11 = sub_9CF4B8(v23, v9);
        ++*(v11 + 6);
      }

      v2 += 2;
    }

    while (v2 != v3);
    v12 = __p[0];
    v2 = *a2;
    v3 = *(a2 + 8);
    v4 = v3 - *a2;
    if (!__p[0])
    {
LABEL_14:
      v22 = -1;
      v13 = v4 >> 4;
    }

    else
    {
      v13 = v4 >> 4;
      while (v13 != *(v12 + 6))
      {
        v12 = *v12;
        if (!v12)
        {
          v14 = -1;
          goto LABEL_16;
        }
      }

      v14 = *(v12 + 2);
LABEL_16:
      v22 = v14;
    }

    v21 = &v22;
    v26[0] = &v20;
    v26[1] = v5;
    v26[2] = &v22;
    v26[3] = &v21;
    v15 = 126 - 2 * __clz(v13);
    if (v3 == v2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    sub_9D2520(v2, v3, v26, v16, 1);
    v17 = __p[0];
    if (__p[0])
    {
      do
      {
        v18 = *v17;
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }

    v19 = v23[0];
    v23[0] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }
}

void sub_9CF47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_9CF4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void *sub_9CF4B8(void *a1, unint64_t *a2)
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