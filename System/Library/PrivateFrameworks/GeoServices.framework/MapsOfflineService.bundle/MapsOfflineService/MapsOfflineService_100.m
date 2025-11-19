void sub_65EFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54)
{
  if (*(v56 - 145) < 0)
  {
    operator delete(*(v56 - 168));
    if ((*(v56 - 169) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v56 - 169) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v56 - 193) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  operator delete(*(v56 - 192));
  if (*(v56 - 193) < 0)
  {
LABEL_4:
    operator delete(*(v56 - 216));
    v58 = *(v56 - 136);
    if (v58)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v58 = *(v56 - 136);
  if (v58)
  {
LABEL_5:
    v59 = *(v56 - 128);
    v60 = v58;
    if (v59 != v58)
    {
      do
      {
        v61 = *(v59 - 1);
        v59 -= 3;
        if (v61 < 0)
        {
          operator delete(*v59);
        }
      }

      while (v59 != v58);
      v60 = *(v56 - 136);
    }

    *(v56 - 128) = v58;
    operator delete(v60);
    v62 = *(v56 - 112);
    if (v62)
    {
LABEL_12:
      v63 = *(v56 - 104);
      v64 = v62;
      if (v63 != v62)
      {
        do
        {
          v65 = *(v63 - 1);
          v63 -= 3;
          if (v65 < 0)
          {
            operator delete(*v63);
          }
        }

        while (v63 != v62);
        v64 = *(v56 - 112);
      }

      *(v56 - 104) = v62;
      operator delete(v64);
      v66 = *v55;
      if (*v55)
      {
LABEL_19:
        v67 = v55[1];
        v68 = v66;
        if (v67 != v66)
        {
          do
          {
            v69 = *(v67 - 1);
            v67 -= 3;
            if (v69 < 0)
            {
              operator delete(*v67);
            }
          }

          while (v67 != v66);
          v68 = *v55;
        }

        v55[1] = v66;
        operator delete(v68);
        if (v54)
        {
LABEL_26:
          operator delete(v54);
          _Unwind_Resume(a1);
        }

LABEL_33:
        _Unwind_Resume(a1);
      }

LABEL_32:
      if (v54)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }

LABEL_31:
    v66 = *v55;
    if (*v55)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_30:
  v62 = *(v56 - 112);
  if (v62)
  {
    goto LABEL_12;
  }

  goto LABEL_31;
}

void sub_65F30C(__int128 **a1@<X1>, _OWORD *a2@<X8>)
{
  switch(sub_681030(a1))
  {
    case 2u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, "Distance_Spoken", "{primaryInstruction}", &v13, 1);
      goto LABEL_28;
    case 3u:
      v4 = "Distance_And_Spoken";
      v5 = "{primaryInstruction}";
      v6 = "{secondaryInstruction}";
      v7 = a2;
      v8 = 1;

      goto LABEL_18;
    case 4u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, "Continue_Stage_Spoken", "{continueInstruction}", &v13, 1);
      goto LABEL_28;
    case 5u:
      v4 = "Chain_Spoken";
      goto LABEL_21;
    case 6u:
      v4 = "Chain_To_Spoken";
      v5 = "{primaryInstruction}";
      v6 = &qword_279EE90;
      goto LABEL_24;
    case 7u:
    case 0xBu:
    case 0xCu:
      sub_67F320(a1, &v13);
      v12 = 0;
      LOBYTE(v11[0]) = 0;
      sub_668238(a2, &v13, v11, "{instruction}", 1);
      goto LABEL_14;
    case 8u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, &qword_279EC08, "{primaryInstruction}", &v13, 0);
      goto LABEL_28;
    case 9u:
      v4 = &qword_279EBF0;
LABEL_21:
      v5 = "{primaryInstruction}";
      v6 = "{secondaryInstruction}";
      goto LABEL_24;
    case 0xAu:
      v4 = "And_Spoken";
      v5 = "{primaryInstruction}";
      v6 = &qword_279EE78;
      goto LABEL_24;
    case 0xDu:
      v4 = "Then_Spoken";
      v5 = "{primaryInstruction}";
      v6 = &qword_279EEA8;
      goto LABEL_24;
    case 0xEu:
      v4 = "Concatenate_Spoken";
      goto LABEL_23;
    case 0xFu:
      v4 = &qword_279EA70;
LABEL_23:
      v5 = "{instruction1}";
      v6 = "{instruction2}";
LABEL_24:
      v7 = a2;
      v8 = 0;

LABEL_18:
      sub_668238(v7, v4, v5, v6, v8);
      return;
    case 0x10u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, &qword_279F6D0, "{primaryInstruction}", &v13, 0);
      goto LABEL_28;
    case 0x11u:
    case 0x12u:
    case 0x13u:
      a2[3] = 0u;
      a2[4] = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
      return;
    default:
      v14 = 0;
      LOBYTE(v13) = 0;
      v12 = 0;
      LOBYTE(v11[0]) = 0;
      v10 = 0;
      LOBYTE(__p) = 0;
      sub_668238(a2, &v13, v11, &__p, 0);
      if (v10 < 0)
      {
        operator delete(__p);
      }

LABEL_14:
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

LABEL_28:
      if (v14 < 0)
      {
        operator delete(v13);
      }

      return;
  }
}

void sub_65F60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void sub_65F704(uint64_t *a1, uint64_t *a2, void ***a3)
{
  v6 = *a3;
  v7 = a3[1];
  while (v7 != v6)
  {
    v8 = *(v7 - 1);
    v7 -= 3;
    if (v8 < 0)
    {
      operator delete(*v7);
    }
  }

  a3[1] = v6;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a1;
    if (*a1)
    {
LABEL_7:
      if (sub_928074(v11, v9, 0))
      {
        v12 = *(v9 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v9 + 8);
        }

        if (v12)
        {
          v14 = a3[1];
          if (v14 >= a3[2])
          {
            v16 = sub_1CEE8(a3, v9);
          }

          else
          {
            if (v13 < 0)
            {
              sub_325C(a3[1], *v9, *(v9 + 8));
            }

            else
            {
              v15 = *v9;
              v14[2] = *(v9 + 16);
              *v14 = v15;
            }

            v16 = (v14 + 3);
            a3[1] = v14 + 3;
          }

          a3[1] = v16;
        }
      }

      while (1)
      {
        v9 += 24;
        if (v9 == v10)
        {
          break;
        }

        v11 = *a1;
        if (*a1)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void sub_65F810(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (!*(a1 + 16))
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  v10 = sub_6A58DC(a2);
  v11 = sub_9274F4(*(a1 + 16), a2);
  if (v11[23] < 0)
  {
    v11 = sub_325C(__p, *v11, *(v11 + 1));
    if (!a4)
    {
LABEL_4:
      v13 = SHIBYTE(v17);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = *v11;
    v17 = *(v11 + 2);
    *__p = v12;
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  sub_74A744(__p, &v14);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v14;
  v17 = v15;
  v13 = SHIBYTE(v15);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
LABEL_5:
    *a5 = *__p;
    *(a5 + 16) = v17;
    *(a5 + 24) = v10;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = sub_325C(a5, __p[0], __p[1]);
  v13 = SHIBYTE(v17);
  *(a5 + 24) = v10;
  if ((v13 & 0x80000000) == 0)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (__p[1])
  {
LABEL_15:
    sub_65DDB8(v11, a3, a5);
    LOBYTE(v13) = HIBYTE(v17);
  }

LABEL_16:
  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_65F96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_65F9BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4)
  {
    v7 = nullsub_1(a2);
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*v7 != v9)
    {
      do
      {
        while (1)
        {
          while (1)
          {
            v11 = sub_58BBC(a2);
            sub_65F810(a1, v8, v11, 0, __p);
            v12 = a3[1];
            if (v12 >= a3[2])
            {
              break;
            }

            v10 = *__p;
            *(v12 + 16) = v16;
            *v12 = v10;
            __p[1] = 0;
            v16 = 0;
            __p[0] = 0;
            *(v12 + 24) = v17;
            a3[1] = v12 + 32;
            v8 += 3;
            if (v8 == v9)
            {
              return;
            }
          }

          v13 = sub_667410(a3, __p);
          v14 = SHIBYTE(v16);
          a3[1] = v13;
          if (v14 < 0)
          {
            break;
          }

          v8 += 3;
          if (v8 == v9)
          {
            return;
          }
        }

        operator delete(__p[0]);
        v8 += 3;
      }

      while (v8 != v9);
    }
  }
}

void sub_65FAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_4B98C4(v14);
    _Unwind_Resume(a1);
  }

  sub_4B98C4(v14);
  _Unwind_Resume(a1);
}

void sub_65FB0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v157 = 0u;
  v158 = 0u;
  v156 = 0u;
  do
  {
    v5 = *(&v156 + 1);
    if (v157 == *(&v156 + 1))
    {
      v6 = 0;
    }

    else
    {
      v6 = ((v157 - *(&v156 + 1)) << 6) - 1;
    }

    v7 = *(&v158 + 1);
    v8 = *(&v158 + 1) + v158;
    if (v6 == *(&v158 + 1) + v158)
    {
      sub_668354(&v156);
      v7 = *(&v158 + 1);
      v5 = *(&v156 + 1);
      v8 = v158 + *(&v158 + 1);
    }

    *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = a2;
    *(&v158 + 1) = v7 + 1;
    sub_681038(a2, &v159);
    v9 = *(&v159 + 1);
    a2 = v159;
    if (*(&v159 + 1) && !atomic_fetch_add((*(&v159 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  while (a2);
  sub_6EDEC(*(a1 + 2632), v154);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v10 = *(&v158 + 1);
  if (*(&v158 + 1))
  {
    v135 = a3;
    while (1)
    {
      v12 = *(*(*(&v156 + 1) + (((v158 + v10 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v158 + v10 - 1) & 0x1FF));
      if (v157 == *(&v156 + 1))
      {
        v13 = 0;
      }

      else
      {
        v13 = ((v157 - *(&v156 + 1)) << 6) - 1;
      }

      *(&v158 + 1) = v10 - 1;
      if ((v13 - (v10 + v158) + 1) >= 0x400)
      {
        operator delete(*(v157 - 8));
        *&v157 = v157 - 8;
      }

      v14 = nullsub_1(v12);
      sub_65F9BC(a1, v14, &__p);
      sub_65F30C(v12, v144);
      v15 = v145;
      if ((v145 & 0x80u) != 0)
      {
        v15 = v144[1];
      }

      if (v15)
      {
        break;
      }

      v16 = v147;
      if ((v147 & 0x80u) != 0)
      {
        v16 = v146[1];
      }

      if (v16)
      {
        break;
      }

      v17 = v150;
      if ((v150 & 0x80u) != 0)
      {
        v17 = v149;
      }

      if (v17)
      {
        break;
      }

      if (&__p != a3)
      {
        sub_668A40(a3, __p, v153, (v153 - __p) >> 5);
      }

LABEL_321:
      if (v150 < 0)
      {
        operator delete(v148);
        if ((v147 & 0x80000000) == 0)
        {
LABEL_323:
          if ((v145 & 0x80000000) == 0)
          {
            goto LABEL_324;
          }

          goto LABEL_328;
        }
      }

      else if ((v147 & 0x80000000) == 0)
      {
        goto LABEL_323;
      }

      operator delete(v146[0]);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_324:
        v120 = __p;
        if (__p)
        {
          goto LABEL_329;
        }

        goto LABEL_15;
      }

LABEL_328:
      operator delete(v144[0]);
      v120 = __p;
      if (__p)
      {
LABEL_329:
        v121 = v153;
        v11 = v120;
        if (v153 != v120)
        {
          do
          {
            v122 = *(v121 - 9);
            v121 -= 4;
            if (v122 < 0)
            {
              operator delete(*v121);
            }
          }

          while (v121 != v120);
          v11 = __p;
        }

        v153 = v120;
        operator delete(v11);
      }

LABEL_15:
      v10 = *(&v158 + 1);
      if (!*(&v158 + 1))
      {
        goto LABEL_336;
      }
    }

    v18 = sub_58BBC(v12);
    sub_67E4F8(&v140, v144, v18);
    v19 = __p;
    v128 = v153;
    if (__p != v153)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v24 = v151;
        sub_734CE0(&v159);
        v163 = 0;
        if (&v161 != v19)
        {
          v25 = *(v19 + 23);
          if (SHIBYTE(v162) < 0)
          {
            if (v25 >= 0)
            {
              v27 = v19;
            }

            else
            {
              v27 = *v19;
            }

            if (v25 >= 0)
            {
              v28 = *(v19 + 23);
            }

            else
            {
              v28 = v19[1];
            }

            sub_13B38(&v161, v27, v28);
          }

          else if ((*(v19 + 23) & 0x80) != 0)
          {
            sub_13A68(&v161, *v19, v19[1]);
          }

          else
          {
            v26 = *v19;
            v162 = v19[2];
            v161 = v26;
          }
        }

        if (v24)
        {
          sub_2E30(&v161, v154, &v175);
          if (SHIBYTE(v162) < 0)
          {
            operator delete(v161);
          }

          v161 = v175;
          v162 = v176;
        }

        sub_67F2AC(&v140, v146, &v159, 0);
        if (v169 < 0)
        {
          operator delete(v168);
          if ((v167 & 0x80000000) == 0)
          {
LABEL_55:
            if ((v165 & 0x80000000) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_188;
          }
        }

        else if ((v167 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        operator delete(v166);
        if ((v165 & 0x80000000) == 0)
        {
LABEL_56:
          if (SHIBYTE(v162) < 0)
          {
            goto LABEL_189;
          }

          goto LABEL_57;
        }

LABEL_188:
        operator delete(v164);
        if (SHIBYTE(v162) < 0)
        {
LABEL_189:
          operator delete(v161);
          if ((SBYTE7(v160) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_190;
        }

LABEL_57:
        if ((SBYTE7(v160) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_190:
        operator delete(v159);
LABEL_58:
        v29 = v150;
        if ((v150 & 0x80u) != 0)
        {
          v29 = v149;
        }

        v129 = v19;
        if (v29)
        {
          v31 = *a3;
          v30 = a3[1];
          for (i = v30; ; v30 = i)
          {
            if (v31 == v30)
            {
              goto LABEL_36;
            }

            sub_734CE0(&v159);
            v163 = 0;
            if (&v161 != v31)
            {
              v33 = *(v31 + 23);
              if (SHIBYTE(v162) < 0)
              {
                if (v33 >= 0)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = *v31;
                }

                if (v33 >= 0)
                {
                  v36 = *(v31 + 23);
                }

                else
                {
                  v36 = *(v31 + 8);
                }

                sub_13B38(&v161, v35, v36);
              }

              else if ((*(v31 + 23) & 0x80) != 0)
              {
                sub_13A68(&v161, *v31, *(v31 + 8));
              }

              else
              {
                v34 = *v31;
                v162 = *(v31 + 16);
                v161 = v34;
              }
            }

            sub_67F2AC(&v140, &v148, &v159, 0);
            if (v169 < 0)
            {
              operator delete(v168);
              if ((v167 & 0x80000000) == 0)
              {
LABEL_83:
                if ((v165 & 0x80000000) == 0)
                {
                  goto LABEL_84;
                }

                goto LABEL_91;
              }
            }

            else if ((v167 & 0x80000000) == 0)
            {
              goto LABEL_83;
            }

            operator delete(v166);
            if ((v165 & 0x80000000) == 0)
            {
LABEL_84:
              if (SHIBYTE(v162) < 0)
              {
                goto LABEL_92;
              }

              goto LABEL_85;
            }

LABEL_91:
            operator delete(v164);
            if (SHIBYTE(v162) < 0)
            {
LABEL_92:
              operator delete(v161);
              if ((SBYTE7(v160) & 0x80000000) == 0)
              {
                goto LABEL_86;
              }

              goto LABEL_93;
            }

LABEL_85:
            if ((SBYTE7(v160) & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

LABEL_93:
            operator delete(v159);
LABEL_86:
            v37 = sub_58BBC(&v140);
            if (*(a1 + 16))
            {
              v38 = v37;
              v39 = sub_6A58DC(v144);
              v40 = sub_9274F4(*(a1 + 16), v144);
              if (*(v40 + 23) < 0)
              {
                sub_325C(&v170, *v40, v40[1]);
              }

              else
              {
                v41 = *v40;
                v171 = v40[2];
                v170 = v41;
              }

              if (SHIBYTE(v171) < 0)
              {
                sub_325C(&v159, v170, *(&v170 + 1));
                v45 = HIBYTE(v171);
                BYTE8(v160) = v39;
                if (SHIBYTE(v171) < 0)
                {
                  v131 = v31;
                  v132 = v21;
                  if (!*(&v170 + 1))
                  {
                    goto LABEL_180;
                  }

LABEL_121:
                  v51 = *(v38 + 16);
                  if (!v51)
                  {
                    goto LABEL_180;
                  }

                  v136 = v22;
                  v138 = v20;
                  while (1)
                  {
                    if (*(v51 + 39) < 0)
                    {
                      sub_325C(&v175, v51[2], v51[3]);
                    }

                    else
                    {
                      v175 = *(v51 + 1);
                      v176 = v51[4];
                    }

                    sub_734D90(&v172, v51 + 5);
                    v52 = SHIBYTE(v176);
                    v53 = *(&v175 + 1);
                    if (SHIBYTE(v176) >= 0)
                    {
                      v54 = SHIBYTE(v176);
                    }

                    else
                    {
                      v54 = *(&v175 + 1);
                    }

                    if (v54)
                    {
                      v55 = 0;
                      v56 = SHIBYTE(v176) >> 63;
                      v57 = BYTE7(v160);
                      if ((SBYTE7(v160) & 0x80u) == 0)
                      {
                        v58 = &v159;
                      }

                      else
                      {
                        v58 = v159;
                      }

                      if (SBYTE7(v160) < 0)
                      {
                        v57 = *(&v159 + 1);
                      }

                      if (SHIBYTE(v176) >= 0)
                      {
                        v59 = &v175;
                      }

                      else
                      {
                        v59 = v175;
                      }

                      while (!v54)
                      {
LABEL_150:
                        if (v55 != -1)
                        {
                          if (v56)
                          {
                            v66 = v53;
                          }

                          else
                          {
                            v66 = v52;
                          }

                          if ((v174 & 0x80u) == 0)
                          {
                            v67 = &v172;
                          }

                          else
                          {
                            v67 = v172;
                          }

                          if ((v174 & 0x80u) == 0)
                          {
                            v68 = v174;
                          }

                          else
                          {
                            v68 = v173;
                          }

                          std::string::replace(&v159, v55, v66, v67, v68);
                          v69 = v174;
                          if ((v174 & 0x80u) != 0)
                          {
                            v69 = v173;
                          }

                          v55 += v69;
                          v57 = BYTE7(v160);
                          if ((SBYTE7(v160) & 0x80u) == 0)
                          {
                            v58 = &v159;
                          }

                          else
                          {
                            v58 = v159;
                          }

                          if (SBYTE7(v160) < 0)
                          {
                            v57 = *(&v159 + 1);
                          }

                          v52 = SHIBYTE(v176);
                          v56 = SHIBYTE(v176) >> 63;
                          v53 = *(&v175 + 1);
                          v59 = SHIBYTE(v176) >= 0 ? &v175 : v175;
                          v54 = SHIBYTE(v176) >= 0 ? SHIBYTE(v176) : *(&v175 + 1);
                          if (v57 >= v55)
                          {
                            continue;
                          }
                        }

                        goto LABEL_174;
                      }

                      v60 = v57 - v55;
                      if ((v57 - v55) >= v54)
                      {
                        v61 = &v58[v57];
                        v62 = &v58[v55];
                        v63 = *v59;
                        do
                        {
                          if (v60 - v54 == -1)
                          {
                            break;
                          }

                          v64 = memchr(v62, v63, v60 - v54 + 1);
                          if (!v64)
                          {
                            break;
                          }

                          v65 = v64;
                          if (!memcmp(v64, v59, v54))
                          {
                            if (v65 == v61)
                            {
                              break;
                            }

                            v55 = v65 - v58;
                            goto LABEL_150;
                          }

                          v62 = v65 + 1;
                          v60 = v61 - (v65 + 1);
                        }

                        while (v60 >= v54);
                      }
                    }

LABEL_174:
                    v70 = sub_6A5CEC(&v175);
                    v71 = BYTE8(v160);
                    if (BYTE8(v160) <= v70)
                    {
                      v71 = v70;
                    }

                    BYTE8(v160) = v71;
                    v22 = v136;
                    v20 = v138;
                    if (v174 < 0)
                    {
                      operator delete(v172);
                      a3 = v135;
                      if ((SHIBYTE(v176) & 0x80000000) == 0)
                      {
                        goto LABEL_124;
                      }
                    }

                    else
                    {
                      a3 = v135;
                      if ((SHIBYTE(v176) & 0x80000000) == 0)
                      {
LABEL_124:
                        v51 = *v51;
                        if (!v51)
                        {
                          goto LABEL_179;
                        }

                        continue;
                      }
                    }

                    operator delete(v175);
                    v51 = *v51;
                    if (!v51)
                    {
LABEL_179:
                      v45 = HIBYTE(v171);
                      goto LABEL_180;
                    }
                  }
                }

                v131 = v31;
                v132 = v21;
                if (HIBYTE(v171))
                {
                  goto LABEL_121;
                }
              }

              else
              {
                v45 = HIBYTE(v171);
                v159 = v170;
                *&v160 = v171;
                BYTE8(v160) = v39;
                v131 = v31;
                v132 = v21;
                if (HIBYTE(v171))
                {
                  goto LABEL_121;
                }
              }

LABEL_180:
              if (v45 < 0)
              {
                operator delete(v170);
                v19 = v129;
                v31 = v131;
                v21 = v132;
                if (v22 < v132)
                {
LABEL_182:
                  v72 = v159;
                  *(v22 + 16) = v160;
                  *v22 = v72;
                  *&v160 = 0;
                  v159 = 0uLL;
                  *(v22 + 24) = BYTE8(v160);
                  v22 += 32;
                  if (SBYTE7(v160) < 0)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                v19 = v129;
                v31 = v131;
                v21 = v132;
                if (v22 < v132)
                {
                  goto LABEL_182;
                }
              }
            }

            else
            {
              v159 = 0u;
              v160 = 0u;
              if (v22 < v21)
              {
                goto LABEL_182;
              }
            }

            v42 = (v22 - v20) >> 5;
            v43 = v42 + 1;
            if ((v42 + 1) >> 59)
            {
              sub_1794();
            }

            if ((v21 - v20) >> 4 > v43)
            {
              v43 = (v21 - v20) >> 4;
            }

            if (v21 - v20 >= 0x7FFFFFFFFFFFFFE0)
            {
              v44 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v43;
            }

            if (v44)
            {
              if (!(v44 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v46 = 32 * v42;
            *v46 = v159;
            *(v46 + 16) = v160;
            *&v160 = 0;
            v159 = 0uLL;
            *(v46 + 24) = BYTE8(v160);
            if (v20 != v22)
            {
              v47 = v20;
              v48 = 0;
              do
              {
                v49 = *v47;
                *(v48 + 16) = *(v47 + 16);
                *v48 = v49;
                *(v47 + 8) = 0;
                *(v47 + 16) = 0;
                *v47 = 0;
                *(v48 + 24) = *(v47 + 24);
                v47 += 32;
                v48 += 32;
              }

              while (v47 != v22);
              v50 = v20;
              do
              {
                if (*(v50 + 23) < 0)
                {
                  operator delete(*v50);
                }

                v50 += 32;
              }

              while (v50 != v22);
            }

            v21 = 0;
            v22 = v46 + 32;
            v20 = 0;
            if (SBYTE7(v160) < 0)
            {
LABEL_62:
              operator delete(v159);
            }

LABEL_63:
            v32 = *(v19 + 24);
            if (*(v22 - 8) > v32)
            {
              v32 = *(v22 - 8);
            }

            *(v22 - 8) = v32;
            if (v32 <= *(v31 + 24))
            {
              LOBYTE(v32) = *(v31 + 24);
            }

            *(v22 - 8) = v32;
            v31 += 32;
          }
        }

        v73 = sub_58BBC(&v140);
        v137 = v22;
        v139 = v20;
        if (*(a1 + 16))
        {
          v74 = v73;
          v75 = sub_6A58DC(v144);
          v76 = sub_9274F4(*(a1 + 16), v144);
          if (*(v76 + 23) < 0)
          {
            sub_325C(&v170, *v76, v76[1]);
          }

          else
          {
            v77 = *v76;
            v171 = v76[2];
            v170 = v77;
          }

          if (SHIBYTE(v171) < 0)
          {
            sub_325C(&v159, v170, *(&v170 + 1));
            v81 = HIBYTE(v171);
            BYTE8(v160) = v75;
            if (SHIBYTE(v171) < 0)
            {
              if (!*(&v170 + 1))
              {
                goto LABEL_280;
              }

LABEL_221:
              v87 = *(v74 + 16);
              if (!v87)
              {
                goto LABEL_280;
              }

              v133 = v21;
              while (1)
              {
                if (*(v87 + 39) < 0)
                {
                  sub_325C(&v175, v87[2], v87[3]);
                }

                else
                {
                  v175 = *(v87 + 1);
                  v176 = v87[4];
                }

                sub_734D90(&v172, v87 + 5);
                v88 = SHIBYTE(v176);
                v89 = *(&v175 + 1);
                if (SHIBYTE(v176) >= 0)
                {
                  v90 = SHIBYTE(v176);
                }

                else
                {
                  v90 = *(&v175 + 1);
                }

                if (v90)
                {
                  v91 = 0;
                  v92 = SHIBYTE(v176) >> 63;
                  v93 = BYTE7(v160);
                  if ((SBYTE7(v160) & 0x80u) == 0)
                  {
                    v94 = &v159;
                  }

                  else
                  {
                    v94 = v159;
                  }

                  if (SBYTE7(v160) < 0)
                  {
                    v93 = *(&v159 + 1);
                  }

                  if (SHIBYTE(v176) >= 0)
                  {
                    v95 = &v175;
                  }

                  else
                  {
                    v95 = v175;
                  }

                  while (!v90)
                  {
LABEL_250:
                    if (v91 != -1)
                    {
                      if (v92)
                      {
                        v102 = v89;
                      }

                      else
                      {
                        v102 = v88;
                      }

                      if ((v174 & 0x80u) == 0)
                      {
                        v103 = &v172;
                      }

                      else
                      {
                        v103 = v172;
                      }

                      if ((v174 & 0x80u) == 0)
                      {
                        v104 = v174;
                      }

                      else
                      {
                        v104 = v173;
                      }

                      std::string::replace(&v159, v91, v102, v103, v104);
                      v105 = v174;
                      if ((v174 & 0x80u) != 0)
                      {
                        v105 = v173;
                      }

                      v91 += v105;
                      v93 = BYTE7(v160);
                      if ((SBYTE7(v160) & 0x80u) == 0)
                      {
                        v94 = &v159;
                      }

                      else
                      {
                        v94 = v159;
                      }

                      if (SBYTE7(v160) < 0)
                      {
                        v93 = *(&v159 + 1);
                      }

                      v88 = SHIBYTE(v176);
                      v92 = SHIBYTE(v176) >> 63;
                      v89 = *(&v175 + 1);
                      v95 = SHIBYTE(v176) >= 0 ? &v175 : v175;
                      v90 = SHIBYTE(v176) >= 0 ? SHIBYTE(v176) : *(&v175 + 1);
                      if (v93 >= v91)
                      {
                        continue;
                      }
                    }

                    goto LABEL_274;
                  }

                  v96 = v93 - v91;
                  if ((v93 - v91) >= v90)
                  {
                    v97 = &v94[v93];
                    v98 = &v94[v91];
                    v99 = *v95;
                    do
                    {
                      if (v96 - v90 == -1)
                      {
                        break;
                      }

                      v100 = memchr(v98, v99, v96 - v90 + 1);
                      if (!v100)
                      {
                        break;
                      }

                      v101 = v100;
                      if (!memcmp(v100, v95, v90))
                      {
                        if (v101 == v97)
                        {
                          break;
                        }

                        v91 = v101 - v94;
                        goto LABEL_250;
                      }

                      v98 = v101 + 1;
                      v96 = v97 - (v101 + 1);
                    }

                    while (v96 >= v90);
                  }
                }

LABEL_274:
                v106 = sub_6A5CEC(&v175);
                v19 = v129;
                v21 = v133;
                v107 = BYTE8(v160);
                if (BYTE8(v160) <= v106)
                {
                  v107 = v106;
                }

                BYTE8(v160) = v107;
                a3 = v135;
                v22 = v137;
                v20 = v139;
                if (v174 < 0)
                {
                  operator delete(v172);
                  if ((SHIBYTE(v176) & 0x80000000) == 0)
                  {
                    goto LABEL_224;
                  }
                }

                else if ((SHIBYTE(v176) & 0x80000000) == 0)
                {
LABEL_224:
                  v87 = *v87;
                  if (!v87)
                  {
                    goto LABEL_279;
                  }

                  continue;
                }

                operator delete(v175);
                v87 = *v87;
                if (!v87)
                {
LABEL_279:
                  v81 = HIBYTE(v171);
                  goto LABEL_280;
                }
              }
            }

            if (HIBYTE(v171))
            {
              goto LABEL_221;
            }
          }

          else
          {
            v81 = HIBYTE(v171);
            v159 = v170;
            *&v160 = v171;
            BYTE8(v160) = v75;
            if (HIBYTE(v171))
            {
              goto LABEL_221;
            }
          }

LABEL_280:
          if (v81 < 0)
          {
            operator delete(v170);
            if (v22 < v21)
            {
LABEL_282:
              v108 = v159;
              *(v22 + 16) = v160;
              *v22 = v108;
              *&v160 = 0;
              v159 = 0uLL;
              *(v22 + 24) = BYTE8(v160);
              v22 += 32;
              if (SBYTE7(v160) < 0)
              {
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }

          else if (v22 < v21)
          {
            goto LABEL_282;
          }
        }

        else
        {
          v159 = 0u;
          v160 = 0u;
          if (v22 < v21)
          {
            goto LABEL_282;
          }
        }

        v78 = (v22 - v20) >> 5;
        v79 = v78 + 1;
        if ((v78 + 1) >> 59)
        {
          sub_1794();
        }

        if ((v21 - v20) >> 4 > v79)
        {
          v79 = (v21 - v20) >> 4;
        }

        if (v21 - v20 >= 0x7FFFFFFFFFFFFFE0)
        {
          v80 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v79;
        }

        if (v80)
        {
          if (!(v80 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v82 = 32 * v78;
        *v82 = v159;
        *(v82 + 16) = v160;
        *&v160 = 0;
        v159 = 0uLL;
        *(v82 + 24) = BYTE8(v160);
        if (v20 != v22)
        {
          v83 = v20;
          v84 = 0;
          do
          {
            v85 = *v83;
            *(v84 + 16) = *(v83 + 16);
            *v84 = v85;
            *(v83 + 8) = 0;
            *(v83 + 16) = 0;
            *v83 = 0;
            *(v84 + 24) = *(v83 + 24);
            v83 += 32;
            v84 += 32;
          }

          while (v83 != v22);
          v86 = v20;
          do
          {
            if (*(v86 + 23) < 0)
            {
              operator delete(*v86);
            }

            v86 += 32;
          }

          while (v86 != v22);
        }

        v21 = 0;
        v22 = v82 + 32;
        v20 = 0;
        if (SBYTE7(v160) < 0)
        {
LABEL_32:
          operator delete(v159);
        }

LABEL_33:
        v23 = *(v19 + 24);
        if (*(v22 - 8) > v23)
        {
          LOBYTE(v23) = *(v22 - 8);
        }

        *(v22 - 8) = v23;
LABEL_36:
        v19 += 4;
        if (v19 == v128)
        {
          goto LABEL_287;
        }
      }
    }

    v22 = 0;
    v21 = 0;
    v20 = 0;
LABEL_287:
    v109 = *a3;
    if (*a3)
    {
      v110 = a3[1];
      v111 = *a3;
      if (v110 != v109)
      {
        do
        {
          v112 = *(v110 - 9);
          v110 -= 4;
          if (v112 < 0)
          {
            operator delete(*v110);
          }
        }

        while (v110 != v109);
        v111 = *a3;
      }

      a3[1] = v109;
      operator delete(v111);
    }

    *a3 = v20;
    a3[1] = v22;
    a3[2] = v21;
    v113 = v143;
    if (!v143)
    {
LABEL_311:
      v115 = v142;
      v142 = 0;
      if (v115)
      {
        operator delete(v115);
      }

      v116 = v140;
      if (v140)
      {
        v117 = v141;
        v118 = v140;
        if (v141 != v140)
        {
          do
          {
            v119 = *(v117 - 1);
            v117 -= 3;
            if (v119 < 0)
            {
              operator delete(*v117);
            }
          }

          while (v117 != v116);
          v118 = v140;
        }

        v141 = v116;
        operator delete(v118);
      }

      goto LABEL_321;
    }

    while (1)
    {
      v114 = *v113;
      if (*(v113 + 191) < 0)
      {
        operator delete(v113[21]);
        if (*(v113 + 159) < 0)
        {
          goto LABEL_306;
        }

LABEL_301:
        if ((*(v113 + 135) & 0x80000000) == 0)
        {
          goto LABEL_302;
        }

LABEL_307:
        operator delete(v113[14]);
        if (*(v113 + 95) < 0)
        {
          goto LABEL_308;
        }

LABEL_303:
        if ((*(v113 + 63) & 0x80000000) == 0)
        {
          goto LABEL_309;
        }

LABEL_297:
        operator delete(v113[5]);
        if (*(v113 + 39) < 0)
        {
          goto LABEL_310;
        }

LABEL_298:
        operator delete(v113);
        v113 = v114;
        if (!v114)
        {
          goto LABEL_311;
        }
      }

      else
      {
        if ((*(v113 + 159) & 0x80000000) == 0)
        {
          goto LABEL_301;
        }

LABEL_306:
        operator delete(v113[17]);
        if (*(v113 + 135) < 0)
        {
          goto LABEL_307;
        }

LABEL_302:
        if ((*(v113 + 95) & 0x80000000) == 0)
        {
          goto LABEL_303;
        }

LABEL_308:
        operator delete(v113[9]);
        if (*(v113 + 63) < 0)
        {
          goto LABEL_297;
        }

LABEL_309:
        if ((*(v113 + 39) & 0x80000000) == 0)
        {
          goto LABEL_298;
        }

LABEL_310:
        operator delete(v113[2]);
        operator delete(v113);
        v113 = v114;
        if (!v114)
        {
          goto LABEL_311;
        }
      }
    }
  }

LABEL_336:
  if (v155 < 0)
  {
    operator delete(v154[0]);
    v123 = *(&v156 + 1);
    v124 = v157;
    *(&v158 + 1) = 0;
    v125 = (v157 - *(&v156 + 1)) >> 3;
    if (v125 < 3)
    {
      goto LABEL_339;
    }
  }

  else
  {
    v123 = *(&v156 + 1);
    v124 = v157;
    *(&v158 + 1) = 0;
    v125 = (v157 - *(&v156 + 1)) >> 3;
    if (v125 < 3)
    {
      goto LABEL_339;
    }
  }

  do
  {
    operator delete(*v123);
    v124 = v157;
    v123 = (*(&v156 + 1) + 8);
    *(&v156 + 1) = v123;
    v125 = (v157 - v123) >> 3;
  }

  while (v125 > 2);
LABEL_339:
  if (v125 == 1)
  {
    v126 = 256;
    goto LABEL_345;
  }

  if (v125 == 2)
  {
    v126 = 512;
LABEL_345:
    *&v158 = v126;
  }

  if (v123 != v124)
  {
    do
    {
      v127 = *v123++;
      operator delete(v127);
    }

    while (v123 != v124);
    if (v157 != *(&v156 + 1))
    {
      *&v157 = v157 + ((*(&v156 + 1) - v157 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v156)
  {
    operator delete(v156);
  }
}

void sub_660BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, uint64_t a59)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
LABEL_3:
    if (a34 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  operator delete(a35);
  if (a34 < 0)
  {
LABEL_4:
    operator delete(a29);
    v61 = a48;
    if (a48)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v61 = a48;
  if (a48)
  {
LABEL_5:
    v62 = a49;
    if (a49 == v61)
    {
      operator delete(v61);
      v63 = *v59;
      if (*v59)
      {
LABEL_7:
        v64 = v59[1];
        if (v64 == v63)
        {
          v59[1] = v63;
          operator delete(v63);
          if ((a56 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_32:
          operator delete(a51);
          v65 = a58;
          v66 = a59;
          v73 = (a59 - a58) >> 3;
          if (v73 < 3)
          {
            goto LABEL_18;
          }

          goto LABEL_10;
        }

        do
        {
          v69 = *(v64 - 9);
          v64 -= 4;
          if (v69 < 0)
          {
            operator delete(*v64);
          }
        }

        while (v64 != v63);
        v72 = *v59;
        v59[1] = v63;
        operator delete(v72);
        if (a56 < 0)
        {
          goto LABEL_32;
        }

LABEL_9:
        v65 = a58;
        v66 = a59;
        v67 = (a59 - a58) >> 3;
        if (v67 < 3)
        {
          goto LABEL_18;
        }

        do
        {
LABEL_10:
          operator delete(*v65);
          v66 = a59;
          v65 = (a58 + 8);
          a58 = v65;
          v68 = (a59 - v65) >> 3;
        }

        while (v68 > 2);
LABEL_18:
        while (v65 != v66)
        {
          v71 = *v65++;
          operator delete(v71);
        }

        if (a57)
        {
          operator delete(a57);
        }

        _Unwind_Resume(a1);
      }
    }

    else
    {
      do
      {
        v70 = *(v62 - 9);
        v62 -= 4;
        if (v70 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      operator delete(a48);
      v63 = *v59;
      if (*v59)
      {
        goto LABEL_7;
      }
    }

LABEL_31:
    if (a56 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_9;
  }

LABEL_30:
  v63 = *v59;
  if (*v59)
  {
    goto LABEL_7;
  }

  goto LABEL_31;
}

void sub_660FE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void **a5@<X8>)
{
  sub_64B998(a5);
  if (*a1)
  {
    v10 = sub_9274F4(*a1, a2);
    if (*(v10 + 23) < 0)
    {
      LODWORD(v10) = sub_325C(&__p, *v10, v10[1]);
    }

    else
    {
      v11 = *v10;
      __p.__r_.__value_.__r.__words[2] = v10[2];
      *&__p.__r_.__value_.__l.__data_ = v11;
    }

    sub_65DBB8(v10, a3, &__p);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  sub_64C184(a5, &__p);
  sub_66110C(a1, a4, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_6610D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v14);
  _Unwind_Resume(a1);
}

void sub_66110C(uint64_t a1, void *a2, void *a3, void **a4)
{
  sub_666470(a1, a3, a4);
  sub_666778(v6, a4);
  sub_666A24(v7, a2, a4);
  sub_666EE4(v8, a2, a4);
  v9 = sub_64FA0C(a4, "{ChargeDuration}");
  if (v9)
  {
    v10 = sub_4D27AC(a2);
    v9 = sub_64E914(a4, "{ChargeDuration}", v10);
  }

  sub_666DD0(v9, a2, a4);
}

void sub_6611A4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = sub_58BBC(a2);
  v9 = nullsub_1(a2);
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != v11)
  {
    do
    {
      if ((*(v10 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v10 + 8))
        {
LABEL_12:
          v17 = a4[1];
          if (v17 >= a4[2])
          {
            v18 = sub_667568(a4);
          }

          else
          {
            sub_64B998(a4[1]);
            v18 = v17 + 160;
          }

          a4[1] = v18;
          HIBYTE(v20) = 0;
          LOBYTE(__p[0]) = 0;
          sub_64C184(v18 - 160, __p);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_5;
        }
      }

      else if (!*(v10 + 23))
      {
        goto LABEL_12;
      }

      if (sub_928074(*a1, v10, 0))
      {
        sub_660FE4(a1, v10, v8, a3, __p);
        v16 = a4[1];
        if (v16 < a4[2])
        {
          *(v16 + 16) = 0;
          *(v16 + 24) = 0;
          *v16 = 0;
          *(v16 + 8) = 0;
          *v16 = *__p;
          *(v16 + 16) = v20;
          __p[0] = 0;
          __p[1] = 0;
          *(v16 + 32) = 0;
          *(v16 + 40) = 0;
          *(v16 + 24) = v21;
          v21 = 0uLL;
          *(v16 + 40) = v22;
          *(v16 + 48) = 0;
          *(v16 + 56) = 0;
          *(v16 + 64) = 0;
          *(v16 + 48) = v23;
          *(v16 + 64) = v24;
          *(v16 + 72) = 0;
          v22 = 0;
          v23 = 0uLL;
          v24 = 0;
          *(v16 + 80) = 0;
          *(v16 + 88) = 0;
          *(v16 + 72) = v25;
          *(v16 + 88) = v26;
          v25 = 0uLL;
          v26 = 0;
          v12 = v27;
          v20 = 0;
          v27 = 0;
          *(v16 + 96) = v12;
          LODWORD(v12) = v28;
          *(v16 + 108) = v29;
          *(v16 + 104) = v12;
          v13 = v30;
          *(v16 + 128) = v31;
          *(v16 + 112) = v13;
          v30 = 0uLL;
          v14 = v32;
          *(v16 + 152) = v33;
          *(v16 + 136) = v14;
          v33 = 0;
          v31 = 0;
          v32 = 0uLL;
          v15 = v16 + 160;
        }

        else
        {
          v15 = sub_5CE200(a4, __p);
        }

        a4[1] = v15;
        sub_53A868(__p);
      }

LABEL_5:
      v10 += 24;
    }

    while (v10 != v11);
  }
}

void sub_6613C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(&a9);
  sub_5C0ED8(v9);
  _Unwind_Resume(a1);
}

void sub_6613E4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void sub_661410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5C0ED8(v14);
    _Unwind_Resume(a1);
  }

  sub_5C0ED8(v14);
  _Unwind_Resume(a1);
}

void sub_661448(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v32 = *(v6 + 8);
  if (*v6 != v32)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    while (1)
    {
      v33 = v7;
      sub_65E304(a1, v7, &v35);
      v9 = v35;
      v10 = v36;
      if (v35 != v36)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_29;
      }

LABEL_5:
      v7 = v33 + 104;
      if (v33 + 104 == v32)
      {
        return;
      }
    }

    do
    {
      sub_64BC20(v34, v9);
      v11 = sub_682384(a2);
      sub_66110C(a1, a2, v11, v34);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a3) >> 5);
        v16 = v15 + 1;
        if (v15 + 1 > 0x199999999999999)
        {
          sub_1794();
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - *a3) >> 5);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0xCCCCCCCCCCCCCCLL)
        {
          v18 = 0x199999999999999;
        }

        else
        {
          v18 = v16;
        }

        v41 = a3;
        if (v18)
        {
          if (v18 <= 0x199999999999999)
          {
            operator new();
          }

          sub_1808();
        }

        v37 = 0;
        v38 = 160 * v15;
        v39 = 160 * v15;
        v40 = 0;
        sub_55BD50(160 * v15, v34);
        v19 = v39;
        v20 = *a3;
        v21 = a3[1];
        v22 = v38 + *a3 - v21;
        if (v21 != *a3)
        {
          v23 = *a3;
          v24 = v38 + *a3 - v21;
          do
          {
            *v24 = 0;
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            *v24 = *v23;
            *(v24 + 16) = *(v23 + 16);
            *v23 = 0;
            *(v23 + 8) = 0;
            *(v23 + 16) = 0;
            *(v24 + 24) = 0;
            *(v24 + 32) = 0;
            *(v24 + 40) = 0;
            *(v24 + 24) = *(v23 + 24);
            *(v24 + 40) = *(v23 + 40);
            *(v23 + 24) = 0;
            *(v23 + 32) = 0;
            *(v23 + 40) = 0;
            *(v24 + 48) = 0;
            *(v24 + 56) = 0;
            *(v24 + 64) = 0;
            *(v24 + 48) = *(v23 + 48);
            *(v24 + 64) = *(v23 + 64);
            *(v23 + 48) = 0;
            *(v23 + 56) = 0;
            *(v23 + 64) = 0;
            *(v24 + 72) = 0;
            *(v24 + 80) = 0;
            *(v24 + 88) = 0;
            *(v24 + 72) = *(v23 + 72);
            v25 = *(v23 + 96);
            *(v24 + 88) = *(v23 + 88);
            *(v23 + 72) = 0;
            *(v23 + 80) = 0;
            *(v23 + 88) = 0;
            *(v23 + 96) = 0;
            *(v24 + 96) = v25;
            v26 = *(v23 + 104);
            *(v24 + 108) = *(v23 + 108);
            *(v24 + 104) = v26;
            v27 = *(v23 + 112);
            *(v24 + 128) = *(v23 + 128);
            *(v24 + 112) = v27;
            *(v23 + 120) = 0;
            *(v23 + 128) = 0;
            *(v23 + 112) = 0;
            v28 = *(v23 + 136);
            *(v24 + 152) = *(v23 + 152);
            *(v24 + 136) = v28;
            *(v23 + 144) = 0;
            *(v23 + 152) = 0;
            *(v23 + 136) = 0;
            v23 += 160;
            v24 += 160;
          }

          while (v23 != v21);
          do
          {
            v20 = (sub_53A868(v20) + 160);
          }

          while (v20 != v21);
          v20 = *a3;
        }

        v14 = v19 + 160;
        *a3 = v22;
        a3[1] = v14;
        v38 = v20;
        v39 = v20;
        a3[2] = v40;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        sub_55BD50(a3[1], v34);
        v14 = v13 + 160;
      }

      a3[1] = v14;
      sub_53A868(v34);
      v9 += 24;
    }

    while (v9 != v10);
    v9 = v35;
    if (!v35)
    {
      goto LABEL_5;
    }

LABEL_29:
    v29 = v36;
    v8 = v9;
    if (v36 != v9)
    {
      do
      {
        v30 = *(v29 - 1);
        v29 -= 3;
        if (v30 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v9);
      v8 = v35;
    }

    v36 = v9;
    operator delete(v8);
    goto LABEL_5;
  }

  v31 = sub_4EF5DC(a2);

  sub_6611A4(a1, v31, a2, a3);
}

void sub_6617E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_5C4848(v5 - 128);
  sub_53A868(va);
  sub_1A104((v5 - 152));
  sub_5C0ED8(v4);
  _Unwind_Resume(a1);
}

void sub_661844(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v4 = sub_681DA8(a2);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 == v6)
  {
    goto LABEL_53;
  }

  v57 = *(v4 + 8);
  while (2)
  {
    if (!sub_6810A0(v5))
    {
      goto LABEL_5;
    }

    sub_65E304(a1, v5, &v60);
    v9 = v60;
    v8 = v61;
    if (v60 == v61)
    {
      v6 = v57;
      if (v60)
      {
        goto LABEL_48;
      }

      goto LABEL_5;
    }

    do
    {
      sub_64BC20(v59, v9);
      v10 = sub_58BBC((a2 + 71));
      sub_666470(v10, v10, v59);
      sub_666778(v11, v59);
      sub_666A24(v12, a2, v59);
      sub_666EE4(v13, a2, v59);
      if (sub_64FA0C(v59, "{ChargeDuration}"))
      {
        v14 = sub_4D27AC(a2);
        sub_64E914(v59, "{ChargeDuration}", v14);
      }

      v15 = v59[0];
      if (v59[0] != v59[1])
      {
        v16 = *(v59[0] + 23);
        if (v16 < 0)
        {
          v15 = *v59[0];
          v16 = *(v59[0] + 1);
          if (v16 < 7)
          {
            goto LABEL_29;
          }
        }

        else if (v16 < 7)
        {
          goto LABEL_29;
        }

        v17 = &v15[v16];
        v18 = v15;
        do
        {
          v19 = memchr(v18, 123, v16 - 6);
          if (!v19)
          {
            break;
          }

          if (*v19 == 2003783803 && *(v19 + 3) == 2104649079)
          {
            if (v19 != v17 && v19 - v15 != -1)
            {
              v21 = sub_681D84(a2) / 1000000.0;
              sub_64F608(v59, "{Power}", v21);
            }

            break;
          }

          v18 = v19 + 1;
          v16 = v17 - v18;
        }

        while (v17 - v18 >= 7);
      }

LABEL_29:
      v22 = v63;
      if (v63 >= v64)
      {
        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v63 - v62) >> 5) + 1;
        if (v24 > 0x199999999999999)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * ((v64 - v62) >> 5) > v24)
        {
          v24 = 0x999999999999999ALL * ((v64 - v62) >> 5);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v64 - v62) >> 5) >= 0xCCCCCCCCCCCCCCLL)
        {
          v25 = 0x199999999999999;
        }

        else
        {
          v25 = v24;
        }

        v69 = &v62;
        if (v25)
        {
          if (v25 <= 0x199999999999999)
          {
            operator new();
          }

          sub_1808();
        }

        v65 = 0;
        v66 = 32 * ((v63 - v62) >> 5);
        v67 = v66;
        v68 = 0;
        sub_55BD50(v66, v59);
        v26 = v67;
        v27 = v62;
        v28 = v63;
        v29 = (v62 + v66 - v63);
        if (v63 != v62)
        {
          v30 = v62;
          v31 = v62 + v66 - v63;
          do
          {
            *v31 = 0;
            *(v31 + 1) = 0;
            *(v31 + 2) = 0;
            *v31 = *v30;
            *(v31 + 2) = v30[2];
            *v30 = 0;
            v30[1] = 0;
            v30[2] = 0;
            *(v31 + 3) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            *(v31 + 24) = *(v30 + 3);
            *(v31 + 5) = v30[5];
            v30[3] = 0;
            v30[4] = 0;
            v30[5] = 0;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 8) = 0;
            *(v31 + 3) = *(v30 + 3);
            *(v31 + 8) = v30[8];
            v30[6] = 0;
            v30[7] = 0;
            v30[8] = 0;
            *(v31 + 9) = 0;
            *(v31 + 10) = 0;
            *(v31 + 11) = 0;
            *(v31 + 72) = *(v30 + 9);
            v32 = v30[12];
            *(v31 + 11) = v30[11];
            v30[9] = 0;
            v30[10] = 0;
            v30[11] = 0;
            v30[12] = 0;
            *(v31 + 12) = v32;
            v33 = *(v30 + 26);
            *(v31 + 54) = *(v30 + 54);
            *(v31 + 26) = v33;
            v34 = *(v30 + 7);
            *(v31 + 16) = v30[16];
            *(v31 + 7) = v34;
            v30[15] = 0;
            v30[16] = 0;
            v30[14] = 0;
            v35 = *(v30 + 17);
            *(v31 + 19) = v30[19];
            *(v31 + 136) = v35;
            v30[18] = 0;
            v30[19] = 0;
            v30[17] = 0;
            v30 += 20;
            v31 += 160;
          }

          while (v30 != v28);
          do
          {
            v27 = (sub_53A868(v27) + 160);
          }

          while (v27 != v28);
          v27 = v62;
        }

        v23 = v26 + 160;
        v62 = v29;
        v63 = v26 + 160;
        v66 = v27;
        v67 = v27;
        v64 = v68;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        sub_55BD50(v63, v59);
        v23 = v22 + 160;
      }

      v63 = v23;
      sub_53A868(v59);
      v9 += 24;
    }

    while (v9 != v8);
    v9 = v60;
    v6 = v57;
    if (v60)
    {
LABEL_48:
      v36 = v61;
      v7 = v9;
      if (v61 != v9)
      {
        do
        {
          v37 = *(v36 - 1);
          v36 -= 3;
          if (v37 < 0)
          {
            operator delete(*v36);
          }
        }

        while (v36 != v9);
        v7 = v60;
      }

      v61 = v9;
      operator delete(v7);
    }

LABEL_5:
    v5 += 13;
    if (v5 != v6)
    {
      continue;
    }

    break;
  }

LABEL_53:
  v38 = v62;
  if (v62 != v63)
  {
    v39 = a2[82];
    if (!v39 || *v62 == v62[1])
    {
LABEL_56:
      sub_55BD50(a3, v38);
      goto LABEL_83;
    }

    while (1)
    {
      v40 = *v38;
      v41 = v38[1];
      if (*v38 != v41)
      {
        break;
      }

LABEL_58:
      v39 = *v39;
      if (!v39)
      {
        goto LABEL_56;
      }
    }

    v42 = *(v39 + 39);
    if (v42 >= 0)
    {
      v43 = (v39 + 2);
    }

    else
    {
      v43 = v39[2];
    }

    if (v42 >= 0)
    {
      v44 = *(v39 + 39);
    }

    else
    {
      v44 = v39[3];
    }

    if (!v44)
    {
LABEL_57:
      sub_64F760(v38, v39 + 1);
    }

    while (2)
    {
      v45 = v40[23];
      if (v45 < 0)
      {
        v46 = *v40;
        v45 = *(v40 + 1);
        if (v45 >= v44)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v46 = v40;
        if (v45 >= v44)
        {
LABEL_73:
          v47 = &v46[v45];
          v48 = *v43;
          v49 = v46;
          while (1)
          {
            v50 = v45 - v44;
            if (v50 == -1)
            {
              goto LABEL_68;
            }

            v51 = memchr(v49, v48, v50 + 1);
            if (!v51)
            {
              goto LABEL_68;
            }

            v52 = v51;
            if (!memcmp(v51, v43, v44))
            {
              break;
            }

            v49 = v52 + 1;
            v45 = v47 - (v52 + 1);
            if (v45 < v44)
            {
              goto LABEL_68;
            }
          }

          if (v52 != v47 && v52 - v46 != -1)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_68:
      v40 += 24;
      if (v40 == v41)
      {
        goto LABEL_58;
      }

      continue;
    }
  }

  sub_64B998(a3);
LABEL_83:
  v53 = v62;
  if (v62)
  {
    v54 = v63;
    v55 = v62;
    if (v63 != v62)
    {
      do
      {
        v54 = sub_53A868(v54 - 160);
      }

      while (v54 != v53);
      v55 = v62;
    }

    v63 = v53;
    operator delete(v55);
  }
}

void sub_661E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 144) = v5;
  sub_53A868(va);
  sub_1A104((v6 - 176));
  sub_5C0ED8((v6 - 152));
  _Unwind_Resume(a1);
}

void sub_661E6C(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v31 = *(v6 + 8);
  if (*v6 != v31)
  {
    while (1)
    {
      v32 = v7;
      sub_65E304(a1, v7, &v34);
      v9 = v34;
      v10 = v35;
      if (v34 != v35)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_29;
      }

LABEL_5:
      v7 = v32 + 104;
      if (v32 + 104 == v31)
      {
        return;
      }
    }

    do
    {
      sub_64B998(v33);
      sub_64C184(v33, v9);
      v11 = sub_682384(a2);
      sub_66110C(a1, a2, v11, v33);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a3) >> 5);
        v16 = v15 + 1;
        if (v15 + 1 > 0x199999999999999)
        {
          sub_1794();
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - *a3) >> 5);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0xCCCCCCCCCCCCCCLL)
        {
          v18 = 0x199999999999999;
        }

        else
        {
          v18 = v16;
        }

        v40 = a3;
        if (v18)
        {
          if (v18 <= 0x199999999999999)
          {
            operator new();
          }

          sub_1808();
        }

        v36 = 0;
        v37 = 160 * v15;
        v38 = 160 * v15;
        v39 = 0;
        sub_55BD50(160 * v15, v33);
        v19 = v38;
        v20 = *a3;
        v21 = a3[1];
        v22 = v37 + *a3 - v21;
        if (v21 != *a3)
        {
          v23 = *a3;
          v24 = v37 + *a3 - v21;
          do
          {
            *v24 = 0;
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            *v24 = *v23;
            *(v24 + 16) = *(v23 + 2);
            *v23 = 0;
            *(v23 + 1) = 0;
            *(v23 + 2) = 0;
            *(v24 + 24) = 0;
            *(v24 + 32) = 0;
            *(v24 + 40) = 0;
            *(v24 + 24) = *(v23 + 24);
            *(v24 + 40) = *(v23 + 5);
            *(v23 + 3) = 0;
            *(v23 + 4) = 0;
            *(v23 + 5) = 0;
            *(v24 + 48) = 0;
            *(v24 + 56) = 0;
            *(v24 + 64) = 0;
            *(v24 + 48) = *(v23 + 3);
            *(v24 + 64) = *(v23 + 8);
            *(v23 + 6) = 0;
            *(v23 + 7) = 0;
            *(v23 + 8) = 0;
            *(v24 + 72) = 0;
            *(v24 + 80) = 0;
            *(v24 + 88) = 0;
            *(v24 + 72) = *(v23 + 72);
            v25 = *(v23 + 12);
            *(v24 + 88) = *(v23 + 11);
            *(v23 + 9) = 0;
            *(v23 + 10) = 0;
            *(v23 + 11) = 0;
            *(v23 + 12) = 0;
            *(v24 + 96) = v25;
            v26 = *(v23 + 26);
            *(v24 + 108) = *(v23 + 54);
            *(v24 + 104) = v26;
            v27 = *(v23 + 7);
            *(v24 + 128) = *(v23 + 16);
            *(v24 + 112) = v27;
            *(v23 + 15) = 0;
            *(v23 + 16) = 0;
            *(v23 + 14) = 0;
            v28 = *(v23 + 136);
            *(v24 + 152) = *(v23 + 19);
            *(v24 + 136) = v28;
            *(v23 + 18) = 0;
            *(v23 + 19) = 0;
            *(v23 + 17) = 0;
            v23 += 160;
            v24 += 160;
          }

          while (v23 != v21);
          do
          {
            v20 = (sub_53A868(v20) + 160);
          }

          while (v20 != v21);
          v20 = *a3;
        }

        v14 = (v19 + 160);
        *a3 = v22;
        a3[1] = v14;
        v37 = v20;
        v38 = v20;
        a3[2] = v39;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        sub_55BD50(a3[1], v33);
        v14 = v13 + 160;
      }

      a3[1] = v14;
      sub_53A868(v33);
      v9 += 24;
    }

    while (v9 != v10);
    v9 = v34;
    if (!v34)
    {
      goto LABEL_5;
    }

LABEL_29:
    v29 = v35;
    v8 = v9;
    if (v35 != v9)
    {
      do
      {
        v30 = *(v29 - 1);
        v29 -= 3;
        if (v30 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v9);
      v8 = v34;
    }

    v35 = v9;
    operator delete(v8);
    goto LABEL_5;
  }
}

void sub_6621D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v4 + 8) = v5;
  sub_53A868(va);
  sub_1A104((v6 - 152));
  sub_5C0ED8(v4);
  _Unwind_Resume(a1);
}

void sub_662234(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v10 = sub_6815F8(v7);
    v11 = *(v10 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = v10[1];
    }

    if (v11)
    {
      v13 = *(a3 + 56);
      if (v13 >= *(a3 + 64))
      {
        *(a3 + 56) = sub_1CEE8(a3 + 48, v10);
        v7 += 104;
      }

      else
      {
        if (v12 < 0)
        {
          sub_325C(*(a3 + 56), *v10, v10[1]);
        }

        else
        {
          v14 = *v10;
          *(v13 + 16) = v10[2];
          *v13 = v14;
        }

        *(a3 + 56) = v13 + 24;
        v7 += 104;
      }
    }

    else
    {
      v15 = nullsub_1(v7);
      sub_65E138(a1, v15, 0, &__p);
      v16 = sub_66242C(&__p, 0);
      sub_64C184(a3, v16);
      v17 = sub_682384(a2);
      sub_66110C(a1, a2, v17, a3);
      v18 = __p;
      if (__p)
      {
        v19 = v22;
        v9 = __p;
        if (v22 != __p)
        {
          do
          {
            v20 = *(v19 - 1);
            v19 -= 3;
            if (v20 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v18);
          v9 = __p;
        }

        v22 = v18;
        operator delete(v9);
      }

      v7 += 104;
    }
  }
}

void sub_6623D0(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_662410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  sub_53A868(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_66242C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_662568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_662648(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (sub_64FA0C(a3, "{Destination}"))
  {
    sub_67E710("{Destination}", &v36);
    v29 = 0;
    v30 = 0;
    sub_680484(&v31, &v36, 1, &v29);
    v6 = v30;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = sub_681E08(a2);
    sub_649B9C(v27, "{Destination}", 17);
    v28 = v7;
    v24 = 0;
    v25 = 0;
    v26 = 0xC00000000000000;
    strcpy(__p, "Address_Sign");
    sub_662968(a1, &v31, __p, v27, 7, "{Address}", 2);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*__p);
    }

    sub_64BF34(a3, v27);
    sub_53F320(v27);
    v8 = v35;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = v34;
    if (v34)
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

    v11 = v33;
    v33 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = v31;
    if (v31)
    {
      v13 = v32;
      v14 = v31;
      if (v32 != v31)
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
        v14 = v31;
      }

      v32 = v12;
      operator delete(v14);
    }

    v16 = v39;
    if (v39)
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

    v18 = v38;
    v38 = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
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
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }
  }
}

void sub_6628F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36)
{
  sub_53F320(&a16);
  sub_662AC8(&a36);
  sub_53A58C((v36 - 120));
  _Unwind_Resume(a1);
}

void sub_66292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  sub_662AC8(&a33);
  sub_53A58C((v33 - 120));
  _Unwind_Resume(a1);
}

void sub_66294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1F1A8(&a31);
  sub_53A58C((v31 - 120));
  _Unwind_Resume(a1);
}

void sub_662968(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  if (*(a6 + 23) < 0)
  {
    v12 = a7;
    sub_325C(v19, *a6, *(a6 + 8));
    a7 = v12;
  }

  else
  {
    *v19 = *a6;
    v20 = *(a6 + 16);
  }

  v21 = a7;
  sub_668DD8(&__p, v19, 1uLL);
  sub_663C3C(a1, a2, a3, a4, a5, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
    {
      do
      {
        v16 = *(v14 - 9);
        v14 -= 4;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v18 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_662A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_4B98C4(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***sub_662AC8(void ***a1)
{
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
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
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_662BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_64FA0C(a3, qword_279EF80);
  if (result)
  {
    result = sub_64FA0C(a3, "{Icon1}");
    if (result)
    {
      v7 = sub_59E940(a2);
      if (*a3 != *(a3 + 8) && sub_64FA0C(a3, qword_279EF80))
      {
        v8 = sub_4470E4(v7);
        sub_64F510(a3, qword_279EF80, v8);
      }

      if (sub_4470E4(v7) <= *(a1 + 2016))
      {
        v9 = 47;
      }

      else if (sub_4470E4(v7) <= *(a1 + 2020))
      {
        v9 = 49;
      }

      else
      {
        v9 = 5;
      }

      sub_587F3C(v9);
    }
  }

  return result;
}

void sub_662D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_662D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_681D38(a2) == 28)
  {

    return sub_662DE8(a1, a2, a3);
  }

  else
  {
    sub_662FBC(a1, a2, a3);
    sub_662648(a1, a2, a3);
    v7 = sub_59E940(a2);
    result = sub_4566B4(v7);
    if (result)
    {
      return sub_662BB8(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_662DE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_662FBC(a1, a2, a3);
  v6 = sub_59E940(a2);
  if (sub_4566B4(v6))
  {
    sub_662BB8(a1, a2, a3);
  }

  v7 = sub_681D90(a2);
  if (sub_4566B4((v7 + 8)))
  {
    v8 = sub_681D90(a2);
    if (*a3 != a3[1])
    {
      v9 = v8;
      if (sub_64FA0C(a3, "{ChargePercentage}"))
      {
        v10 = sub_4470E4(v9 + 8);
        sub_64F510(a3, "{ChargePercentage}", v10);
      }
    }

    sub_587F3C(48);
  }

  result = sub_4D27AC(a2);
  if (result != 0x7FFFFFFF)
  {
    result = sub_64FA0C(a3, "{ChargeDuration}");
    if (result)
    {
      v12 = sub_4D27AC(a2);
      return sub_64E914(a3, "{ChargeDuration}", v12);
    }
  }

  return result;
}

void sub_662F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_53A868(v2);
  _Unwind_Resume(a1);
}

void sub_662FBC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v10 = sub_6815F8(v7);
    v11 = *(v10 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = v10[1];
    }

    if (v11)
    {
      v13 = *(a3 + 56);
      if (v13 >= *(a3 + 64))
      {
        *(a3 + 56) = sub_1CEE8(a3 + 48, v10);
        v7 += 104;
      }

      else
      {
        if (v12 < 0)
        {
          sub_325C(*(a3 + 56), *v10, v10[1]);
        }

        else
        {
          v14 = *v10;
          *(v13 + 16) = v10[2];
          *v13 = v14;
        }

        *(a3 + 56) = v13 + 24;
        v7 += 104;
      }
    }

    else
    {
      v15 = nullsub_1(v7);
      sub_65E138(a1, v15, 0, &__p);
      v16 = sub_66242C(&__p, 0);
      sub_64C184(a3, v16);
      v17 = __p;
      if (__p)
      {
        v18 = v21;
        v9 = __p;
        if (v21 != __p)
        {
          do
          {
            v19 = *(v18 - 1);
            v18 -= 3;
            if (v19 < 0)
            {
              operator delete(*v18);
            }
          }

          while (v18 != v17);
          v9 = __p;
        }

        v21 = v17;
        operator delete(v9);
      }

      v7 += 104;
    }
  }
}

void sub_663134(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_66314C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  sub_53A868(v2);
  _Unwind_Resume(a1);
}

void sub_663190(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_64BC20(a4, "{Destination}");
  sub_67E710("{Destination}", v26);
  v23 = 0;
  v24 = 0;
  sub_680484(v25, v26, 1, &v23);
  v8 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  sub_649B9C(v21, "{Destination}", 17);
  v22 = a2;
  WORD5(v27[0]) = 0;
  HIDWORD(v27[0]) = 0;
  *&v27[1] = 0x900000000000000;
  strcpy(v27, "Home_Sign");
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  sub_662968(a1, v25, v27, v21, 2, v19, 0);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  WORD5(v27[0]) = 0;
  HIDWORD(v27[0]) = 0;
  *&v27[1] = 0x900000000000000;
  strcpy(v27, "Work_Sign");
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  sub_662968(a1, v25, v27, v21, 1, v19, 0);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 0x10000000;
  strcpy(v27, "ContactHome_Sign");
  sub_662968(a1, v25, v27, v21, 4, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 0x10000000;
  strcpy(v27, "ContactWork_Sign");
  sub_662968(a1, v25, v27, v21, 3, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 301989888;
  strcpy(v27, "Other_Contact_Si");
  sub_662968(a1, v25, v27, v21, 5, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE13(v27[0]) = 0;
  HIWORD(v27[0]) = 0;
  *&v27[1] = 0xD00000000000000;
  strcpy(v27, "Business_Sig");
  sub_662968(a1, v25, v27, v21, 6, "{Name}", 4);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE13(v27[0]) = 0;
  HIWORD(v27[0]) = 0;
  *&v27[1] = 0xC00000000000000;
  strcpy(v27, "Address_Sign");
  sub_662968(a1, v25, v27, v21, 7, "{Address}", 2);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE9(v27[0]) = 0;
  WORD5(v27[0]) = 0;
  HIDWORD(v27[0]) = 0;
  *&v27[1] = 0xB00000000000000;
  strcpy(v27, "School_S");
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  sub_662968(a1, v25, v27, v21, 10, v19, 0);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 301989888;
  strcpy(v27, "ContactSchool_Si");
  sub_662968(a1, v25, v27, v21, 11, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
    if (*(a1 + 2696) != 1)
    {
      goto LABEL_48;
    }
  }

  else if (*(a1 + 2696) != 1)
  {
LABEL_48:
    sub_64BF34(a4, v21);
    if (a3 <= 1)
    {
      if (a3 == 1)
      {
        v15 = "Origin_Waypoint_List";
LABEL_54:
        *v19 = *v15;
        v20 = *(v15 + 2);
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    if (a3 == 2)
    {
      v15 = &xmmword_279EEF0;
      if ((SHIBYTE(qword_279EF00) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a3 != 3)
      {
LABEL_55:
        HIBYTE(v20) = 0;
        LOBYTE(v19[0]) = 0;
        goto LABEL_58;
      }

      v15 = &xmmword_279EF08;
      if ((byte_279EF1F & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    sub_325C(v19, *v15, *(v15 + 1));
LABEL_58:
    memset(v27, 0, sizeof(v27));
    LODWORD(v28) = 1065353216;
    if (*a1)
    {
      v16 = sub_9274F4(*a1, v19);
      if (*(v16 + 23) < 0)
      {
        LODWORD(v16) = sub_325C(&__p, *v16, v16[1]);
      }

      else
      {
        v17 = *v16;
        __p.__r_.__value_.__r.__words[2] = v16[2];
        *&__p.__r_.__value_.__l.__data_ = v17;
      }

      sub_65DBB8(v16, v27, &__p);
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
    }

    sub_64F488(a4, &__p);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 318767104;
  strcpy(v27, "PersonLocation_S");
  sub_662968(a1, v25, v27, v21, 12, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  if (byte_279EF4F >= 0)
  {
    v9 = byte_279EF4F;
  }

  else
  {
    v9 = qword_279EF40;
  }

  if (v9 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v9 + 5 >= 0x17)
  {
    operator new();
  }

  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  HIBYTE(v20) = v9 + 5;
  if (v9)
  {
    if (byte_279EF4F >= 0)
    {
      v10 = &qword_279EF38;
    }

    else
    {
      v10 = qword_279EF38;
    }

    memmove(v19, v10, v9);
  }

  strcpy(v19 + v9, "_Sign");
  v27[0] = *"{Name}";
  *&v27[1] = 0x600000000000000;
  BYTE8(v27[1]) = 3;
  v28 = *"{CustomLabel}";
  v29 = 0xD00000000000000;
  v30 = 5;
  sub_668DD8(&__p, v27, 2uLL);
  sub_663C3C(a1, v25, v19, v21, 13, &__p);
  v11 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    size = __p.__r_.__value_.__l.__size_;
    v13 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v14 = *(size - 9);
        size -= 4;
        if (v14 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v11);
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v11;
    operator delete(v13);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
    if ((SBYTE7(v27[1]) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_67:
      operator delete(v19[0]);
      goto LABEL_48;
    }
  }

  else if ((SBYTE7(v27[1]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(*&v27[0]);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  goto LABEL_67;
}

void sub_663B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45)
{
  sub_53F320(&a25);
  sub_662AC8(&a45);
  sub_53A58C((v46 - 248));
  sub_53A868(v45);
  _Unwind_Resume(a1);
}

void sub_663C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_1F1A8(&a37);
  sub_53A58C((v38 - 248));
  sub_53A868(v37);
  _Unwind_Resume(a1);
}

void sub_663C3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v11 = sub_58BBC(a2);
  if (*a1)
  {
    v12 = sub_9274F4(*a1, a3);
    if (*(v12 + 23) < 0)
    {
      LODWORD(v12) = sub_325C(&__p, *v12, v12[1]);
    }

    else
    {
      v13 = *v12;
      __p.__r_.__value_.__r.__words[2] = v12[2];
      *&__p.__r_.__value_.__l.__data_ = v13;
    }

    sub_65DBB8(v12, v11, &__p);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  sub_664054(a4, &__p, a5, a6, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_663D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_663D44(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_681D38(a2) != 28 && sub_681D38(a2) != 29)
  {
    v6 = sub_681E08(a2);
    v7 = sub_681E10(a2);

    sub_663190(a1, v6, v7, a3);
  }

  sub_663DF4(a1, a2, a3);
}

void sub_663DF4(uint64_t *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_4EE304(a2);
  sub_65E138(a1, v6, 0, &__p);
  v7 = __p;
  v8 = v14;
  if (__p != v14)
  {
    do
    {
      sub_64C184(a3, v7);
      v9 = sub_682384(a2);
      sub_66110C(a1, a2, v9, a3);
      v7 += 3;
    }

    while (v7 != v8);
    v7 = __p;
  }

  if (v7)
  {
    v10 = v14;
    v11 = v7;
    if (v14 != v7)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v7);
      v11 = __p;
    }

    v14 = v7;
    operator delete(v11);
  }
}

void sub_663F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  sub_53A868(v2);
  _Unwind_Resume(a1);
}

void sub_663F24(uint64_t *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_4EE304(a2);
  sub_65E138(a1, v6, 0, &__p);
  v7 = __p;
  v8 = v14;
  if (__p != v14)
  {
    do
    {
      sub_64C184(a3, v7);
      v9 = sub_682384(a2);
      sub_66110C(a1, a2, v9, a3);
      v7 += 3;
    }

    while (v7 != v8);
    v7 = __p;
  }

  if (v7)
  {
    v10 = v14;
    v11 = v7;
    if (v14 != v7)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v7);
      v11 = __p;
    }

    v14 = v7;
    operator delete(v11);
  }
}

void sub_664038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  sub_53A868(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_664054(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, char a5)
{
  v16 = a3;
  sub_64BC20(v15, a2);
  v15[105] = a5;
  v8 = *a4;
  v9 = a4[1];
  if (*a4 != v9)
  {
    do
    {
      if ((*(v8 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v8 + 8))
        {
LABEL_8:
          sub_649B9C(v14, v8, 16);
          operator new();
        }
      }

      else if (*(v8 + 23))
      {
        goto LABEL_8;
      }

      v8 += 32;
    }

    while (v8 != v9);
  }

  v10 = *(a1 + 128);
  if (!v10)
  {
    operator new();
  }

  v11 = v10[1];
  if (v11 >= v10[2])
  {
    v12 = sub_6676AC(v10, v15, &v16);
  }

  else
  {
    sub_6504BC(v10[1], v15, v16);
    v12 = v11 + 168;
    v10[1] = v11 + 168;
  }

  v10[1] = v12;
  return sub_53A868(v15);
}

void sub_66428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v28 + 8) = v29;
  sub_53A868(&a28);
  _Unwind_Resume(a1);
}

void sub_6642A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_53F320(&a10);
  sub_53A868(&a28);
  _Unwind_Resume(a1);
}

void sub_6642EC(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  if (*(a6 + 23) < 0)
  {
    v12 = a7;
    sub_325C(v23, *a6, *(a6 + 8));
    a7 = v12;
  }

  else
  {
    *v23 = *a6;
    v24 = *(a6 + 16);
  }

  v25 = a7;
  sub_668DD8(&v18, v23, 1uLL);
  v13 = sub_58BBC(a2);
  sub_65F810(a1, a3, v13, 0, __p);
  sub_664054(a4, __p, a5, &v18, v22);
  if (v21 < 0)
  {
    operator delete(__p[0]);
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
        v17 = *(v15 - 9);
        v15 -= 4;
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

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_66444C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_4B98C4(&a10);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_664490(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_65FB0C(a1, a2, &v48);
  sub_66526C(a4, (v49 - v48) >> 5);
  v8 = v48;
  v9 = v49;
  if (v48 != v49)
  {
    while (1)
    {
      sub_64B998(&v33);
      sub_74A744(v8, __p);
      sub_64C184(&v33, __p);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = sub_681054(a2);
      if (v14)
      {
        v14 = sub_681E18(a3);
        if ((v14 & 1) != 0 || (v14 = sub_681E54(a3), v14))
        {
          v8[24] = 3;
        }
      }

      BYTE1(v42) = v8[24];
      sub_666778(v14, &v33);
      sub_666A24(v15, a3, &v33);
      sub_666D10(v16, a3, &v33);
      sub_666EE4(v17, a3, &v33);
      if (sub_681054(a2))
      {
        break;
      }

      v24 = a4[1];
      if (v24 < a4[2])
      {
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *v24 = 0;
        *(v24 + 8) = 0;
        *v24 = v33;
        *(v24 + 16) = v34;
        v33 = 0uLL;
        *(v24 + 32) = 0;
        *(v24 + 40) = 0;
        *(v24 + 24) = v35;
        v35 = 0uLL;
        *(v24 + 40) = v36;
        *(v24 + 48) = 0;
        *(v24 + 56) = 0;
        *(v24 + 64) = 0;
        *(v24 + 48) = v37;
        *(v24 + 64) = v38;
        *(v24 + 72) = 0;
        v36 = 0;
        v37 = 0uLL;
        v38 = 0;
        *(v24 + 80) = 0;
        *(v24 + 88) = 0;
        *(v24 + 72) = v39;
        *(v24 + 88) = v40;
        v39 = 0uLL;
        v40 = 0;
        v10 = v41;
        v34 = 0;
        v41 = 0;
        *(v24 + 96) = v10;
        LODWORD(v10) = v42;
        *(v24 + 108) = v43;
        *(v24 + 104) = v10;
        v11 = v44;
        *(v24 + 128) = v45;
        *(v24 + 112) = v11;
        v44 = 0uLL;
        v12 = v46;
        *(v24 + 152) = v47;
        *(v24 + 136) = v12;
        v47 = 0;
        v45 = 0;
        v46 = 0uLL;
        v13 = v24 + 160;
      }

      else
      {
        v13 = sub_5CE200(a4, &v33);
      }

      a4[1] = v13;
      sub_53A868(&v33);
      v8 += 32;
      if (v8 == v9)
      {
        v8 = v48;
        goto LABEL_43;
      }
    }

    v18 = sub_681E08(a3);
    if (sub_681088(a2))
    {
      sub_649B9C(__p, "{toDestination}", 17);
      operator new();
    }

    if (sub_681090(a2))
    {
      sub_649B9C(__p, "{Destination}", 17);
      v30 = v18;
      operator new();
    }

    if (!sub_681E54(a3) || !sub_681098(a2))
    {
LABEL_32:
      if (sub_681E18(a3))
      {
        sub_66549C(a1, __p);
      }

      else if (sub_681E54(a3))
      {
        sub_665780(a1, __p);
      }

      else
      {
        sub_64B998(__p);
      }

      sub_64F438(&v33, __p);
    }

    sub_649B9C(__p, "{forDestination}", 17);
    v30 = sub_665364(v18);
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    sub_6642EC(a1, a2, "For_Home", __p, 2, &v53, 0);
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    sub_6642EC(a1, a2, "For_Work", __p, 1, &v53, 0);
    sub_6642EC(a1, a2, "For_ContactHome", __p, 4, "{Name}", 3);
    sub_6642EC(a1, a2, "For_ContactWork", __p, 3, "{Name}", 3);
    sub_6642EC(a1, a2, "For_Other_Contact", __p, 5, "{Name}", 3);
    HIBYTE(v54) = 0;
    LOBYTE(v53) = 0;
    sub_6642EC(a1, a2, "For_School", __p, 10, &v53, 0);
    sub_6642EC(a1, a2, "For_ContactSchool", __p, 11, "{Name}", 3);
    if (*(a1 + 2696) == 1)
    {
      sub_6642EC(a1, a2, "For_PersonLocation", __p, 12, "{Name}", 3);
      v53 = *"{Name}";
      v54 = 0x600000000000000;
      v55 = 3;
      v56 = *"{CustomLabel}";
      v57 = 0xD00000000000000;
      v58 = 5;
      sub_668DD8(&v31, &v53, 2uLL);
      v19 = sub_58BBC(a2);
      sub_65F810(a1, &qword_279EF50, v19, 0, v50);
      sub_664054(__p, v50, 13, &v31, v52);
      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      v20 = v31;
      if (v31)
      {
        v21 = v32;
        v22 = v31;
        if (v32 != v31)
        {
          do
          {
            v23 = *(v21 - 9);
            v21 -= 4;
            if (v23 < 0)
            {
              operator delete(*v21);
            }
          }

          while (v21 != v20);
          v22 = v31;
        }

        v32 = v20;
        operator delete(v22);
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
        if ((SHIBYTE(v54) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(v53);
    }

LABEL_31:
    sub_64BF34(&v33, __p);
    sub_53F320(__p);
    goto LABEL_32;
  }

LABEL_43:
  if (v8)
  {
    v25 = v49;
    v26 = v8;
    if (v49 != v8)
    {
      do
      {
        v27 = *(v25 - 9);
        v25 -= 4;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v8);
      v26 = v48;
    }

    v49 = v8;
    operator delete(v26);
  }
}

void sub_66512C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_4B98C4((v39 - 232));
  sub_5C0ED8(v38);
  _Unwind_Resume(a1);
}

void *sub_66526C(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_665350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_665364(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_66541C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_66549C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_67E494(&v35, "Starting");
  v28 = 0;
  v29 = 0;
  sub_680484(&v30, &v35, 1, &v28);
  v4 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_65FB0C(a1, &v30, &v26);
  sub_64B998(a2);
  sub_74A744(v26, __p);
  sub_64C184(a2, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 105) = 3;
  v5 = v26;
  if (v26)
  {
    v6 = v27;
    v7 = v26;
    if (v27 != v26)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v26;
    }

    v27 = v5;
    operator delete(v7);
  }

  v9 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v33;
  if (v33)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v32;
  v32 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v30;
  if (v30)
  {
    v14 = v31;
    v15 = v30;
    if (v31 != v30)
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

      while (v14 != v13);
      v15 = v30;
    }

    v31 = v13;
    operator delete(v15);
  }

  v17 = v38;
  if (v38)
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

  v19 = v37;
  v37 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v35;
  if (v35)
  {
    v21 = v36;
    v22 = v35;
    if (v36 != v35)
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
      v22 = v35;
    }

    v36 = v20;
    operator delete(v22);
  }
}

void sub_665710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v20);
  sub_4B98C4(&a15);
  sub_662AC8(&a20);
  sub_53A58C((v21 - 104));
  _Unwind_Resume(a1);
}

void sub_665764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1F1A8(va);
  sub_53A58C((v7 - 104));
  _Unwind_Resume(a1);
}

void sub_665780(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_67E494(&v36, qword_279ECB0);
  v29 = 0;
  v30 = 0;
  sub_680484(&v31, &v36, 1, &v29);
  v4 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_65FB0C(a1, &v31, &v27);
  sub_64B998(a2);
  v5 = sub_665A80(&v27, 0);
  sub_74A744(v5, __p);
  sub_64C184(a2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 105) = 3;
  v6 = v27;
  if (v27)
  {
    v7 = v28;
    v8 = v27;
    if (v28 != v27)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v27;
    }

    v28 = v6;
    operator delete(v8);
  }

  v10 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v34;
  if (v34)
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

  v13 = v33;
  v33 = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v31;
  if (v31)
  {
    v15 = v32;
    v16 = v31;
    if (v32 != v31)
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
      v16 = v31;
    }

    v32 = v14;
    operator delete(v16);
  }

  v18 = v39;
  if (v39)
  {
    do
    {
      v19 = *v18;
      sub_55F7FC((v18 + 2));
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = v38;
  v38 = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = v36;
  if (v36)
  {
    v22 = v37;
    v23 = v36;
    if (v37 != v36)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v36;
    }

    v37 = v21;
    operator delete(v23);
  }
}

void sub_6659FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void **a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v20);
  sub_4B98C4(&a15);
  sub_662AC8(&a20);
  sub_53A58C((v21 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_665A80(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 5);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 32 * a2;
}

void sub_665B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_665C7C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_681DA8(a2);
  sub_66526C(a3, 0x4EC4EC4EC4EC4EC5 * ((v6[1] - *v6) >> 3));
  v7 = *v6;
  for (i = v6[1]; v7 != i; v7 += 104)
  {
    sub_664490(a1, v7, a2, &__p);
    sub_667990(a3, a3[1], __p, v13, 0xCCCCCCCCCCCCCCCDLL * ((v13 - __p) >> 5));
    v9 = __p;
    if (__p)
    {
      v10 = v13;
      v11 = __p;
      if (v13 != __p)
      {
        do
        {
          v10 = sub_53A868((v10 - 160));
        }

        while (v10 != v9);
        v11 = __p;
      }

      v13 = v9;
      operator delete(v11);
    }
  }
}

void sub_665DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C0ED8(va);
  sub_5C0ED8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_665DD4(uint64_t *a1, void *a2)
{
  sub_663D44(a1, a2, v5);
  sub_682238(a2, v5);
  sub_53A868(v5);
  sub_662D28(a1, a2, v5);
  sub_6817E8(a2, v5);
  return sub_53A868(v5);
}

void sub_665E68(uint64_t *a1, void *a2)
{
  sub_663DF4(a1, a2, __p);
  sub_682238(a2, __p);
  sub_53A868(__p);
  sub_661E6C(a1, a2, __p);
  sub_681930(a2, __p);
  v4 = __p[0].n128_u64[0];
  if (__p[0].n128_u64[0])
  {
    v5 = __p[0].n128_i64[1];
    v6 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] != __p[0].n128_u64[0])
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = __p[0].n128_u64[0];
    }

    __p[0].n128_u64[1] = v4;
    operator delete(v6);
  }
}

uint64_t sub_665F2C(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      sub_663F24(v4, v2, v5);
      sub_682238(v2, v5);
      sub_53A868(v5);
      sub_662234(v4, v2, v5);
      sub_6817E8(v2, v5);
      result = sub_53A868(v5);
      v2 += 107;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_665FE4(uint64_t a1, void *a2)
{
  sub_661448(a1, a2, &__p);
  sub_681930(a2, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v20[0];
    v6 = __p;
    if (v20[0] != __p)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = __p;
    }

    v20[0] = v4;
    operator delete(v6);
  }

  if (!sub_681F04(a2))
  {
    goto LABEL_20;
  }

  v7 = sub_80A4B8(a2);
  LODWORD(__p) = -1;
  *v20 = 0u;
  *v21 = 0u;
  v22 = 0u;
  v8 = nullsub_1(v7);
  if (*v8 != v8[1])
  {
    sub_67F320(v7, v23);
    v9 = sub_58BBC(v7);
    if (*a1)
    {
      v10 = sub_9274F4(*a1, v23);
      if (*(v10 + 23) < 0)
      {
        LODWORD(v10) = sub_325C(&v25, *v10, v10[1]);
      }

      else
      {
        v11 = *v10;
        v25.__r_.__value_.__r.__words[2] = v10[2];
        *&v25.__r_.__value_.__l.__data_ = v11;
      }

      sub_65DBB8(v10, v9, &v25);
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    if (SHIBYTE(v21[0]) < 0)
    {
      operator delete(v20[0]);
    }

    *v20 = *&v25.__r_.__value_.__l.__data_;
    v21[0] = v25.__r_.__value_.__r.__words[2];
    *(&v25.__r_.__value_.__s + 23) = 0;
    v25.__r_.__value_.__s.__data_[0] = 0;
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  LODWORD(__p) = *(a1 + 1968);
  sub_80A070(a2, &__p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
    if (SHIBYTE(v21[0]) < 0)
    {
      goto LABEL_29;
    }

LABEL_20:
    v12 = sub_80A4C0(a2);
    result = sub_6F390(v12);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  if ((SHIBYTE(v21[0]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_29:
  operator delete(v20[0]);
  v18 = sub_80A4C0(a2);
  result = sub_6F390(v18);
  if (!result)
  {
    return result;
  }

LABEL_21:
  v14 = sub_80A4C0(a2);
  sub_6611A4(a1, v14, a2, &v25);
  sub_55BD50(&__p, v25.__r_.__value_.__l.__data_);
  v15 = v25.__r_.__value_.__r.__words[0];
  if (v25.__r_.__value_.__r.__words[0])
  {
    size = v25.__r_.__value_.__l.__size_;
    v17 = v25.__r_.__value_.__r.__words[0];
    if (v25.__r_.__value_.__l.__size_ != v25.__r_.__value_.__r.__words[0])
    {
      do
      {
        size = sub_53A868(size - 160);
      }

      while (size != v15);
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    v25.__r_.__value_.__l.__size_ = v15;
    operator delete(v17);
  }

  sub_682240(a2, &__p);
  return sub_53A868(&__p);
}

void sub_666228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
    if ((*(v2 - 81) & 0x80000000) == 0)
    {
LABEL_3:
      sub_513574(va);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 - 81) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 - 104));
  sub_513574(va);
  _Unwind_Resume(a1);
}

void sub_6662C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_513574(va);
  _Unwind_Resume(a1);
}

void sub_6662D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C0ED8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6662E8(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_665FE4(v4, v2);
      v2 += 140;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_666334(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    do
    {
      sub_665C7C(a1, v2, &__p);
      sub_681930(v2, &__p);
      v5 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v6 = __p.n128_i64[1];
        v7 = __p.n128_u64[0];
        if (__p.n128_u64[1] != __p.n128_u64[0])
        {
          do
          {
            v6 = sub_53A868(v6 - 160);
          }

          while (v6 != v5);
          v7 = __p.n128_u64[0];
        }

        __p.n128_u64[1] = v5;
        operator delete(v7);
      }

      v2 += 56;
    }

    while (v2 != v3);
  }
}

void sub_6663D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C0ED8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6663EC(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      sub_661844(v4, v2, v6);
      v5 = (v2 + 48);
      sub_594568(v5, v6);
      result = sub_53A868(v6);
      v2 = (v5 + 320);
    }

    while (v2 != v3);
  }

  return result;
}

void sub_666470(uint64_t a1, void *a2, void **a3)
{
  v3 = *a3;
  if (*a3 == a3[1])
  {
    return;
  }

  *v25 = *"{Shield1}";
  v26 = 0x900000000000000;
  *v27 = *"{Shield2}";
  v28 = 0x900000000000000;
  v30 = 0xF00000000000000;
  strcpy(v29, "{TowardShield1}");
  v32 = 0xF00000000000000;
  strcpy(__p, "{TowardShield2}");
  sub_2AAFFC(&v23, v25, 4uLL);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_4:
      if ((SHIBYTE(v28) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(v29[0]);
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v27[0]);
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
LABEL_6:
    v5 = v23;
    v6 = v24;
    if (v23 == v24)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_12:
  operator delete(v25[0]);
  v5 = v23;
  v6 = v24;
  if (v23 == v24)
  {
LABEL_7:
    if (!v5)
    {
      return;
    }

    goto LABEL_38;
  }

  do
  {
LABEL_15:
    v7 = v3[23];
    if (v7 < 0)
    {
      v8 = *v3;
      v7 = *(v3 + 1);
    }

    else
    {
      v8 = v3;
    }

    v9 = *(v5 + 23);
    if (v9 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *v5;
    }

    if (v9 >= 0)
    {
      v11 = *(v5 + 23);
    }

    else
    {
      v11 = v5[1];
    }

    if (v11)
    {
      if (v7 >= v11)
      {
        v12 = &v8[v7];
        v13 = *v10;
        v14 = v8;
        do
        {
          v15 = v7 - v11;
          if (v15 == -1)
          {
            break;
          }

          v16 = memchr(v14, v13, v15 + 1);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if (!memcmp(v16, v10, v11))
          {
            if (v17 == v12 || v17 - v8 == -1)
            {
              break;
            }

            goto LABEL_34;
          }

          v14 = v17 + 1;
          v7 = v12 - (v17 + 1);
        }

        while (v7 >= v11);
      }
    }

    else
    {
LABEL_34:
      if (sub_668F0C(a2, v5))
      {
        v18 = sub_668F0C(a2, v5);
        if (v18)
        {
          sub_64BFF4(a3, v5, *(v18 + 26), v18 + 7);
        }

        sub_49EC("unordered_map::at: key not found");
      }
    }

    v5 += 3;
  }

  while (v5 != v6);
  v5 = v23;
  if (v23)
  {
LABEL_38:
    v19 = v24;
    v20 = v5;
    if (v24 != v5)
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

      while (v19 != v5);
      v20 = v23;
    }

    v24 = v5;
    operator delete(v20);
  }
}

void sub_666718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_21E2980(&a15, &a21, &a18);
  _Unwind_Resume(a1);
}

void sub_666750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_666764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_666778(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2 == a2[1])
  {
    return;
  }

  *v22 = *"{Name}";
  v23 = 0x600000000000000;
  *v24 = *"{Address}";
  v25 = 0x900000000000000;
  v27 = 0x600000000000000;
  *__p = *"{Road}";
  sub_2AAFFC(&v20, v22, 3uLL);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
LABEL_4:
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(v24[0]);
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
LABEL_5:
    v4 = v20;
    v5 = v21;
    if (v20 == v21)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_10:
  operator delete(v22[0]);
  v4 = v20;
  v5 = v21;
  if (v20 == v21)
  {
LABEL_6:
    if (!v4)
    {
      return;
    }

    goto LABEL_34;
  }

  do
  {
LABEL_13:
    v6 = v2[23];
    if (v6 < 0)
    {
      v7 = *v2;
      v6 = *(v2 + 1);
    }

    else
    {
      v7 = v2;
    }

    v8 = *(v4 + 23);
    if (v8 >= 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = *v4;
    }

    if (v8 >= 0)
    {
      v10 = *(v4 + 23);
    }

    else
    {
      v10 = v4[1];
    }

    if (!v10)
    {
      goto LABEL_32;
    }

    if (v6 >= v10)
    {
      v11 = &v7[v6];
      v12 = *v9;
      v13 = v7;
      while (1)
      {
        v14 = v6 - v10;
        if (v14 == -1)
        {
          goto LABEL_12;
        }

        v15 = memchr(v13, v12, v14 + 1);
        if (!v15)
        {
          goto LABEL_12;
        }

        v16 = v15;
        if (!memcmp(v15, v9, v10))
        {
          break;
        }

        v13 = v16 + 1;
        v6 = v11 - (v16 + 1);
        if (v6 < v10)
        {
          goto LABEL_12;
        }
      }

      if (v16 != v11 && v16 - v7 != -1)
      {
LABEL_32:
        HIBYTE(v23) = 0;
        LOBYTE(v22[0]) = 0;
        sub_64C06C(a2, v4);
      }
    }

LABEL_12:
    v4 += 3;
  }

  while (v4 != v5);
  v4 = v20;
  if (v20)
  {
LABEL_34:
    v17 = v21;
    v18 = v4;
    if (v21 != v4)
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

      while (v17 != v4);
      v18 = v20;
    }

    v21 = v4;
    operator delete(v18);
  }
}

void sub_6669CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_21E29D4(&a13, &a16);
  _Unwind_Resume(a1);
}

void sub_666A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_666A24(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == a3[1])
  {
    return;
  }

  v6 = *(v3 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *a3;
    v8 = *(v3 + 23);
    if (v6 < 10)
    {
      goto LABEL_17;
    }

LABEL_6:
    v9 = &v7[v8];
    v10 = v7;
    while (1)
    {
      v11 = memchr(v10, 123, v8 - 9);
      if (!v11)
      {
        goto LABEL_17;
      }

      if (*v11 == 0x636E61747369647BLL && *(v11 + 4) == 32101)
      {
        if (v11 != v9 && v11 - v7 != -1)
        {
          v20 = sub_681DB8(a2);
          v19 = 1;
          sub_64E428(a3, "{distance}", &v20, &v19);
          LOBYTE(v6) = *(v3 + 23);
        }

        goto LABEL_17;
      }

      v10 = v11 + 1;
      v8 = v9 - v10;
      if (v9 - v10 < 10)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  if (v8 >= 10)
  {
    goto LABEL_6;
  }

LABEL_17:
  if ((v6 & 0x80) != 0)
  {
    v14 = v3;
    v3 = *v3;
    v13 = *(v14 + 8);
    if (v13 < 14)
    {
      return;
    }
  }

  else
  {
    v13 = v6;
    if (v6 < 0xEuLL)
    {
      return;
    }
  }

  v15 = (v3 + v13);
  v16 = v3;
  do
  {
    v17 = memchr(v16, 123, v13 - 13);
    if (!v17)
    {
      break;
    }

    if (*v17 == 0x7369447478656E7BLL && *(v17 + 6) == 0x7D65636E61747369)
    {
      if (v17 != v15 && &v17[-v3] != -1)
      {
        v20 = sub_681DF4(a2);
        v19 = 1;
        sub_64E428(a3, "{nextDistance}", &v20, &v19);
      }

      return;
    }

    v16 = v17 + 1;
    v13 = v15 - v16;
  }

  while (v15 - v16 >= 14);
}

void sub_666BF4(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4 != a4[1])
  {
    v8 = *(v4 + 23);
    if (v8 < 0)
    {
      v4 = *v4;
      v8 = *(*a4 + 8);
    }

    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    if (v11)
    {
      if (v8 >= v11)
      {
        v12 = v4 + v8;
        v13 = *v10;
        v14 = v4;
        do
        {
          v15 = v8 - v11;
          if (v15 == -1)
          {
            break;
          }

          v16 = memchr(v14, v13, v15 + 1);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if (!memcmp(v16, v10, v11))
          {
            if (v17 == v12 || v17 - v4 == -1)
            {
              return;
            }

            goto LABEL_21;
          }

          v14 = (v17 + 1);
          v8 = v12 - (v17 + 1);
        }

        while (v8 >= v11);
      }
    }

    else
    {
LABEL_21:

      sub_64EA58(a4, a2, a3);
    }
  }
}

void sub_666D10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_4D27AC(a2);
  sub_666BF4(v5, "{ChargeDuration}", v5, a3);
  v8 = 10;
  strcpy(__p, "{Duration}");
  v6 = sub_4C5154(a2);
  sub_666BF4(v6, __p, v6, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_666DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_666DD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 != a3[1])
  {
    v6 = *(v3 + 23);
    if (v6 < 0)
    {
      v3 = *v3;
      v6 = *(*a3 + 8);
      if (v6 < 7)
      {
        return;
      }
    }

    else if (v6 < 7)
    {
      return;
    }

    v7 = v3 + v6;
    v8 = v3;
    do
    {
      v9 = memchr(v8, 123, v6 - 6);
      if (!v9)
      {
        break;
      }

      if (*v9 == 2003783803 && *(v9 + 3) == 2104649079)
      {
        if (v9 != v7 && v9 - v3 != -1)
        {
          v11 = sub_681D84(a2) / 1000000.0;

          sub_64F608(a3, "{Power}", v11);
        }

        return;
      }

      v8 = (v9 + 1);
      v6 = v7 - v8;
    }

    while (v7 - v8 >= 7);
  }
}

uint64_t sub_666EE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_681D90(a2);
  if (*a3 != a3[1])
  {
    v6 = v5;
    if (sub_64FA0C(a3, "{ChargePercentage}"))
    {
      v7 = sub_4470E4(v6 + 8);
      sub_64F510(a3, "{ChargePercentage}", v7);
    }
  }

  result = sub_59E940(a2);
  if (*a3 != a3[1])
  {
    v9 = result;
    result = sub_64FA0C(a3, qword_279EF80);
    if (result)
    {
      v10 = sub_4470E4(v9);

      return sub_64F510(a3, qword_279EF80, v10);
    }
  }

  return result;
}

uint64_t **sub_666FBC(void *a1, uint64_t a2)
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

void sub_6673C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

void sub_6673D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

void sub_6673E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_667410(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 24);
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
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

uint64_t sub_667568(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v4 = 0x199999999999999;
  }

  else
  {
    v4 = v2;
  }

  v13 = a1;
  if (v4)
  {
    if (v4 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v10 = 160 * v1;
  v12 = 0;
  sub_64B998(160 * v1);
  v11 = 160 * v1 + 160;
  sub_5C46E0(a1, &__p);
  v5 = a1[1];
  v7 = v10;
  for (i = v11; v11 != v7; i = v11)
  {
    v11 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_667698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6676AC(uint64_t *a1, uint64_t a2, int *a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v4;
  }

  v15 = a1;
  if (v6)
  {
    if (v6 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v12 = 168 * v3;
  v13 = 168 * v3;
  v14 = 0;
  sub_6504BC(168 * v3, a2, *a3);
  v13 = 168 * v3 + 168;
  sub_667820(a1, &__p);
  v7 = a1[1];
  v9 = v12;
  for (i = v13; v13 != v9; i = v13)
  {
    v13 = i - 168;
    sub_53A868(i - 168);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_66780C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C3E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_667820(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      v10 = *(v8 + 96);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v9 + 96) = v10;
      v11 = *(v8 + 104);
      *(v9 + 108) = *(v8 + 108);
      *(v9 + 104) = v11;
      v12 = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 112) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      v13 = *(v8 + 136);
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 136) = v13;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 136) = 0;
      *(v9 + 160) = *(v8 + 160);
      v8 += 168;
      v9 += 168;
    }

    while (v8 != v5);
    do
    {
      result = sub_53A868(result) + 168;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  *a1 = v7;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_667990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 5)) >= a5)
    {
      v14 = v9 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - a2) >> 5)) >= a5)
      {
        v29 = 160 * a5;
        v30 = v9 - 160 * a5;
        for (i = a1[1]; v30 < v9; i += 160)
        {
          *i = 0;
          *(i + 8) = 0;
          *(i + 16) = 0;
          *i = *v30;
          *(i + 16) = *(v30 + 16);
          *v30 = 0;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          *(i + 24) = 0;
          *(i + 32) = 0;
          *(i + 40) = 0;
          *(i + 24) = *(v30 + 24);
          *(i + 40) = *(v30 + 40);
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          *(v30 + 40) = 0;
          *(i + 48) = 0;
          *(i + 56) = 0;
          *(i + 64) = 0;
          *(i + 48) = *(v30 + 48);
          *(i + 64) = *(v30 + 64);
          *(v30 + 48) = 0;
          *(v30 + 56) = 0;
          *(v30 + 64) = 0;
          *(i + 72) = 0;
          *(i + 80) = 0;
          *(i + 88) = 0;
          *(i + 72) = *(v30 + 72);
          v32 = *(v30 + 96);
          *(i + 88) = *(v30 + 88);
          *(v30 + 72) = 0;
          *(v30 + 80) = 0;
          *(v30 + 88) = 0;
          *(v30 + 96) = 0;
          *(i + 96) = v32;
          v33 = *(v30 + 104);
          *(i + 108) = *(v30 + 108);
          *(i + 104) = v33;
          v34 = *(v30 + 112);
          *(i + 128) = *(v30 + 128);
          *(i + 112) = v34;
          *(v30 + 120) = 0;
          *(v30 + 128) = 0;
          *(v30 + 112) = 0;
          v35 = *(v30 + 136);
          *(i + 152) = *(v30 + 152);
          *(i + 136) = v35;
          *(v30 + 144) = 0;
          *(v30 + 152) = 0;
          *(v30 + 136) = 0;
          v30 += 160;
        }

        a1[1] = i;
        if (v9 != a2 + 160 * a5)
        {
          v36 = v9 - 160;
          v37 = a2 + v29 - v9;
          v38 = v9 - 160 - v29;
          do
          {
            sub_53D784(v36, v38);
            v36 -= 160;
            v38 -= 160;
            v37 += 160;
          }

          while (v37);
        }

        v39 = v7 + 160 * a5;
        v40 = v5;
        do
        {
          sub_53D784(v40, v7);
          v7 += 160;
          v40 += 160;
        }

        while (v7 != v39);
      }

      else
      {
        v15 = v14 + a3;
        v17 = sub_668154(a1, v14 + a3, a4, a1[1]);
        a1[1] = v17;
        if (v14 >= 1)
        {
          v18 = 160 * a5;
          v19 = v17 - 160 * a5;
          for (j = v17; v19 < v9; j += 160)
          {
            *j = 0;
            *(j + 8) = 0;
            *(j + 16) = 0;
            *j = *v19;
            *(j + 16) = *(v19 + 16);
            *v19 = 0;
            *(v19 + 8) = 0;
            *(v19 + 16) = 0;
            *(j + 24) = 0;
            *(j + 32) = 0;
            *(j + 40) = 0;
            *(j + 24) = *(v19 + 24);
            *(j + 40) = *(v19 + 40);
            *(v19 + 24) = 0;
            *(v19 + 32) = 0;
            *(v19 + 40) = 0;
            *(j + 48) = 0;
            *(j + 56) = 0;
            *(j + 64) = 0;
            *(j + 48) = *(v19 + 48);
            *(j + 64) = *(v19 + 64);
            *(v19 + 48) = 0;
            *(v19 + 56) = 0;
            *(v19 + 64) = 0;
            *(j + 72) = 0;
            *(j + 80) = 0;
            *(j + 88) = 0;
            *(j + 72) = *(v19 + 72);
            v21 = *(v19 + 96);
            *(j + 88) = *(v19 + 88);
            *(v19 + 72) = 0;
            *(v19 + 80) = 0;
            *(v19 + 88) = 0;
            *(v19 + 96) = 0;
            *(j + 96) = v21;
            v22 = *(v19 + 104);
            *(j + 108) = *(v19 + 108);
            *(j + 104) = v22;
            v23 = *(v19 + 112);
            *(j + 128) = *(v19 + 128);
            *(j + 112) = v23;
            *(v19 + 120) = 0;
            *(v19 + 128) = 0;
            *(v19 + 112) = 0;
            v24 = *(v19 + 136);
            *(j + 152) = *(v19 + 152);
            *(j + 136) = v24;
            *(v19 + 144) = 0;
            *(v19 + 152) = 0;
            *(v19 + 136) = 0;
            v19 += 160;
          }

          a1[1] = j;
          if (v17 != v5 + 160 * a5)
          {
            v25 = v17 - 160;
            v26 = v5 + v18 - v17;
            v27 = v17 - 160 - v18;
            do
            {
              sub_53D784(v25, v27);
              v25 -= 160;
              v27 -= 160;
              v26 += 160;
            }

            while (v26);
          }

          v28 = v5;
          do
          {
            sub_53D784(v28, v7);
            v7 += 160;
            v28 += 160;
          }

          while (v7 != v15);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0x3333333333333333 * ((v9 - *a1) >> 5);
      if (v11 > 0x199999999999999)
      {
        sub_1794();
      }

      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 5);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0xCCCCCCCCCCCCCCLL)
      {
        v13 = 0x199999999999999;
      }

      else
      {
        v13 = v11;
      }

      v54 = a1;
      if (v13)
      {
        if (v13 <= 0x199999999999999)
        {
          operator new();
        }

        sub_1808();
      }

      v41 = 32 * ((a2 - v10) >> 5);
      __p = 0;
      v51 = v41;
      v52 = v41;
      v53 = 0;
      v42 = v41 + 160 * a5;
      do
      {
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
        *v41 = *v7;
        *(v41 + 16) = *(v7 + 16);
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 32) = 0;
        *(v41 + 40) = 0;
        *(v41 + 24) = *(v7 + 24);
        *(v41 + 40) = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v41 + 48) = 0;
        *(v41 + 56) = 0;
        *(v41 + 64) = 0;
        *(v41 + 48) = *(v7 + 48);
        *(v41 + 64) = *(v7 + 64);
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v41 + 72) = 0;
        *(v41 + 80) = 0;
        *(v41 + 88) = 0;
        *(v41 + 72) = *(v7 + 72);
        v43 = *(v7 + 96);
        *(v41 + 88) = *(v7 + 88);
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        *(v7 + 96) = 0;
        *(v41 + 96) = v43;
        v44 = *(v7 + 104);
        *(v41 + 108) = *(v7 + 108);
        *(v41 + 104) = v44;
        v45 = *(v7 + 112);
        *(v41 + 128) = *(v7 + 128);
        *(v41 + 112) = v45;
        *(v7 + 120) = 0;
        *(v7 + 128) = 0;
        *(v7 + 112) = 0;
        v46 = *(v7 + 136);
        *(v41 + 152) = *(v7 + 152);
        *(v41 + 136) = v46;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0;
        *(v7 + 136) = 0;
        v41 += 160;
        v7 += 160;
      }

      while (v41 != v42);
      v52 = v42;
      v5 = sub_667ED0(a1, &__p, a2);
      v48 = v51;
      for (k = v52; v52 != v48; k = v52)
      {
        v52 = k - 160;
        sub_53A868(k - 160);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_667EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_667ED0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 64) = *(v9 + 64);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = *(v9 + 72);
      v10 = *(v9 + 96);
      *(v8 + 88) = *(v9 + 88);
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v8 + 96) = v10;
      v11 = *(v9 + 104);
      *(v8 + 108) = *(v9 + 108);
      *(v8 + 104) = v11;
      v12 = *(v9 + 112);
      *(v8 + 128) = *(v9 + 128);
      *(v8 + 112) = v12;
      *(v9 + 120) = 0;
      *(v9 + 128) = 0;
      *(v9 + 112) = 0;
      v13 = *(v9 + 136);
      *(v8 + 152) = *(v9 + 152);
      *(v8 + 136) = v13;
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      *(v9 + 136) = 0;
      v9 += 160;
      v8 += 160;
    }

    while (v9 != v7);
    v14 = a3;
    do
    {
      v14 = sub_53A868(v14) + 160;
    }

    while (v14 != v7);
  }

  v15 = *a1;
  v16 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v17 = v16 + v15 - a3;
  if (v15 != a3)
  {
    v18 = v15;
    v19 = v16 + v15 - a3;
    do
    {
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      *v19 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 24) = *(v18 + 24);
      *(v19 + 40) = *(v18 + 40);
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      *(v19 + 48) = *(v18 + 48);
      *(v19 + 64) = *(v18 + 64);
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      *(v19 + 72) = 0;
      *(v19 + 80) = 0;
      *(v19 + 88) = 0;
      *(v19 + 72) = *(v18 + 72);
      v20 = *(v18 + 96);
      *(v19 + 88) = *(v18 + 88);
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      *(v18 + 88) = 0;
      *(v18 + 96) = 0;
      *(v19 + 96) = v20;
      v21 = *(v18 + 104);
      *(v19 + 108) = *(v18 + 108);
      *(v19 + 104) = v21;
      v22 = *(v18 + 112);
      *(v19 + 128) = *(v18 + 128);
      *(v19 + 112) = v22;
      *(v18 + 120) = 0;
      *(v18 + 128) = 0;
      *(v18 + 112) = 0;
      v23 = *(v18 + 136);
      *(v19 + 152) = *(v18 + 152);
      *(v19 + 136) = v23;
      *(v18 + 144) = 0;
      *(v18 + 152) = 0;
      *(v18 + 136) = 0;
      v18 += 160;
      v19 += 160;
    }

    while (v18 != a3);
    do
    {
      v15 = sub_53A868(v15) + 160;
    }

    while (v15 != a3);
  }

  a2[1] = v17;
  v24 = *a1;
  *a1 = v17;
  a1[1] = v24;
  a2[1] = v24;
  v25 = a1[1];
  a1[1] = a2[2];
  a2[2] = v25;
  v26 = a1[2];
  a1[2] = a2[3];
  a2[3] = v26;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_668154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 160)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = *a2;
    *(result + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 48) = *(a2 + 48);
    *(result + 64) = *(a2 + 64);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = *(a2 + 72);
    v5 = *(a2 + 96);
    *(result + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(result + 96) = v5;
    v6 = *(a2 + 104);
    *(result + 108) = *(a2 + 108);
    *(result + 104) = v6;
    v7 = *(a2 + 112);
    *(result + 128) = *(a2 + 128);
    *(result + 112) = v7;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v8 = *(a2 + 136);
    *(result + 152) = *(a2 + 152);
    *(result + 136) = v8;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    a2 += 160;
  }

  return result;
}

uint64_t sub_668238(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v9;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v10 = *a3;
      *(a1 + 40) = *(a3 + 2);
      *(a1 + 24) = v10;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 24), *a3, *(a3 + 1));
LABEL_6:
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v11;
  }

  *(a1 + 72) = a5;
  return a1;
}

void sub_668308(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void *sub_668354(void *a1)
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

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_66871C(a1, &v11);
}

void sub_6686C4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_66871C(void *result, void *a2)
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

      sub_1808();
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
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_6688A8(const void **result, void *a2)
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

      sub_1808();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void sub_668A40(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
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

void sub_668DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_668DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void *sub_668DD8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_668EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_49A814(&a11);
  *(v11 + 8) = v12;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_668F0C(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_66BF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_66C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = vnegq_f64(v5);
  *(a1 + 8) = v6;
  *(a1 + 24) = v6;
  *(a1 + 40) = v6;
  *(a1 + 56) = v6;
  *(a1 + 72) = v6;
  *(a1 + 88) = v6;
  *(a1 + 104) = v6;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a1 + 144) = v7;
  *(a1 + 160) = v7;
  *(a1 + 176) = v7;
  *(a1 + 192) = v7;
  *a1 = 0;
  *(a1 + 208) = 0x7FFFFFFF;
  *(a1 + 216) = v6;
  *(a1 + 232) = v6;
  *(a1 + 248) = v7;
  *(a1 + 264) = v7;
  *(a1 + 280) = 0x8000000080000000;
  *(a1 + 288) = v6;
  *(a1 + 304) = v6;
  *(a1 + 320) = v6;
  *(a1 + 336) = v6;
  *(a1 + 352) = v6;
  *(a1 + 368) = v6;
  *(a1 + 384) = v6;
  *(a1 + 400) = v6;
  *(a1 + 440) = v6;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 456) = v6;
  *(a1 + 472) = v6;
  *(a1 + 488) = v6;
  *(a1 + 504) = v6;
  *(a1 + 520) = v6;
  *(a1 + 536) = v6;
  *(a1 + 552) = v6;
  *(a1 + 568) = v6;
  *(a1 + 584) = v6;
  *(a1 + 600) = v6;
  *(a1 + 616) = v6;
  *(a1 + 632) = v6;
  *(a1 + 648) = v6;
  *(a1 + 664) = v6;
  *(a1 + 680) = v6;
  *(a1 + 696) = v6;
  *(a1 + 712) = v6;
  *(a1 + 728) = v6;
  *(a1 + 744) = v6;
  *(a1 + 760) = v6;
  *(a1 + 776) = v6;
  *(a1 + 792) = v6;
  *(a1 + 808) = v6;
  *(a1 + 824) = v6;
  *(a1 + 840) = v6;
  *(a1 + 856) = v6;
  *(a1 + 872) = v6;
  *(a1 + 888) = v6;
  *(a1 + 904) = v6;
  *(a1 + 920) = v6;
  *(a1 + 936) = v6;
  *(a1 + 952) = v6;
  *(a1 + 968) = v6;
  *(a1 + 984) = v6;
  *(a1 + 1000) = v6;
  *(a1 + 1016) = v6;
  *(a1 + 1032) = v6;
  *(a1 + 1048) = v6;
  *(a1 + 1064) = v6;
  *(a1 + 1080) = v6;
  *(a1 + 1096) = v6;
  *(a1 + 1112) = v6;
  *(a1 + 1128) = v6;
  *(a1 + 1144) = v6;
  *(a1 + 1160) = v6;
  *(a1 + 1176) = v6;
  *(a1 + 1192) = v6;
  *(a1 + 1208) = v6;
  *(a1 + 1224) = v6;
  *(a1 + 1240) = v6;
  *(a1 + 1256) = v6;
  *(a1 + 1272) = v6;
  *(a1 + 1288) = v6;
  *(a1 + 1304) = v6;
  *(a1 + 1320) = v6;
  *(a1 + 1336) = v6;
  *(a1 + 1352) = v6;
  *(a1 + 1368) = v6;
  *(a1 + 1384) = v6;
  *(a1 + 1400) = v6;
  *(a1 + 1416) = v6;
  *(a1 + 1432) = v6;
  *(a1 + 1448) = v6;
  *(a1 + 1464) = v6;
  *(a1 + 1480) = v6;
  *(a1 + 1496) = v6;
  *(a1 + 1512) = v6;
  *(a1 + 1528) = v6;
  *(a1 + 1544) = v6;
  *(a1 + 1560) = v6;
  *(a1 + 1576) = v6;
  *(a1 + 1592) = v6;
  *(a1 + 1608) = v6;
  *(a1 + 1624) = v6;
  *(a1 + 1640) = v6;
  *(a1 + 1656) = v6;
  *(a1 + 1672) = v6;
  *(a1 + 1688) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = v6;
  *(a1 + 1720) = v6;
  *(a1 + 1736) = v6;
  *(a1 + 1752) = v6;
  *(a1 + 1768) = v6;
  *(a1 + 1784) = v6;
  *(a1 + 1800) = v6;
  *(a1 + 1816) = v6;
  *(a1 + 1832) = v6;
  *(a1 + 1848) = v6;
  *(a1 + 1864) = v6;
  *(a1 + 1880) = v6;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = v6;
  *(a1 + 1984) = -1;
  *(a1 + 1968) = v5;
  *(a1 + 1952) = v5;
  *(a1 + 1936) = v5;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = v6;
  *(a1 + 2016) = v6;
  *(a1 + 2032) = v6;
  *(a1 + 2048) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2056) = 0;
  *(a1 + 2060) = 0x7FFFFFFF;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = v6;
  *(a1 + 2096) = v6;
  *(a1 + 2112) = v6;
  *(a1 + 2128) = v6;
  *(a1 + 2144) = v6;
  *(a1 + 2160) = v6;
  *(a1 + 2176) = v6;
  *(a1 + 2192) = v6;
  *(a1 + 2208) = v6;
  *(a1 + 2224) = v6;
  *(a1 + 2240) = v6;
  *(a1 + 2256) = v6;
  *(a1 + 2272) = v6;
  *(a1 + 2288) = v6;
  *(a1 + 2320) = 0;
  *(a1 + 2304) = 0u;
  *(a1 + 2328) = v6;
  *(a1 + 2344) = 0;
  *(a1 + 2368) = 0;
  *(a1 + 2373) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2384) = v6;
  *(a1 + 2400) = v6;
  *(a1 + 2416) = 1;
  *(a1 + 2417) = 0;
  *(a1 + 2425) = 0;
  *(a1 + 2432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2560) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0;
  *(a1 + 2480) = v6;
  *(a1 + 2504) = 0;
  *(a1 + 2496) = 0;
  *(a1 + 2512) = v6;
  *(a1 + 2528) = v6;
  *(a1 + 2544) = 0;
  *(a1 + 2548) = vdup_n_s32(0x3B9ACA00u);
  __dst = (a1 + 2352);
  if ((a1 + 2352) != a5)
  {
    v8 = *(a5 + 23);
    if (*(a1 + 2375) < 0)
    {
      if (v8 >= 0)
      {
        v10 = a5;
      }

      else
      {
        v10 = *a5;
      }

      if (v8 >= 0)
      {
        v11 = *(a5 + 23);
      }

      else
      {
        v11 = a5[1];
      }

      sub_13B38(__dst, v10, v11);
    }

    else if ((*(a5 + 23) & 0x80) != 0)
    {
      sub_13A68(__dst, *a5, a5[1]);
    }

    else
    {
      v9 = *a5;
      *(a1 + 2368) = a5[2];
      *__dst = v9;
    }
  }

  operator new();
}

void sub_677CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v13 - 169) < 0)
  {
    operator delete(*(v13 - 192));
  }

  if (*(v12 + 2375) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_67A074(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x67A020);
}

uint64_t sub_67A084(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_67A1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_67A1FC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 352;
  if (a2 >= 4)
  {
    v2 = 376;
  }

  return *(a1 + v2);
}

uint64_t sub_67A218(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 384;
  if (a2 >= 4)
  {
    v2 = 408;
  }

  return *(a1 + v2);
}

uint64_t sub_67A234(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 504;
  if (a2 >= 4)
  {
    v2 = 528;
  }

  return *(a1 + v2);
}

uint64_t sub_67A250(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 536;
  if (a2 >= 4)
  {
    v2 = 560;
  }

  return *(a1 + v2);
}

uint64_t sub_67A26C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 568;
  if (a2 >= 4)
  {
    v2 = 592;
  }

  return *(a1 + v2);
}

uint64_t sub_67A288(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 600;
  if (a2 >= 4)
  {
    v2 = 624;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2A4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 472;
  if (a2 >= 4)
  {
    v2 = 496;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2C0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 664;
  if (a2 >= 4)
  {
    v2 = 688;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2DC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 632;
  if (a2 >= 4)
  {
    v2 = 656;
  }

  return *(a1 + v2);
}

uint64_t sub_67A2F8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 216;
  if (a2 >= 4)
  {
    v2 = 240;
  }

  return *(a1 + v2);
}

uint64_t sub_67A314(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 288;
  if (a2 >= 4)
  {
    v2 = 312;
  }

  return *(a1 + v2);
}

uint64_t sub_67A330(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 728;
  if (a2 >= 4)
  {
    v2 = 752;
  }

  return *(a1 + v2);
}

uint64_t sub_67A34C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1736;
  if (a2 >= 4)
  {
    v2 = 1760;
  }

  return *(a1 + v2);
}

uint64_t sub_67A368(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1768;
  if (a2 >= 4)
  {
    v2 = 1792;
  }

  return *(a1 + v2);
}

uint64_t sub_67A384(uint64_t a1, unsigned int a2)
{
  v2 = 4 * a2 + 152;
  if (a2 >= 4)
  {
    v2 = 164;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3A0(uint64_t a1, unsigned int a2)
{
  v2 = 4 * a2 + 168;
  if (a2 >= 4)
  {
    v2 = 180;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3BC(uint64_t a1, unsigned int a2)
{
  v2 = 4 * a2 + 184;
  if (a2 >= 4)
  {
    v2 = 196;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3D8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 696;
  if (a2 >= 4)
  {
    v2 = 720;
  }

  return *(a1 + v2);
}

uint64_t sub_67A3F4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 760;
  if (a2 >= 4)
  {
    v2 = 784;
  }

  return *(a1 + v2);
}

uint64_t sub_67A410(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2080;
  if (a2 >= 4)
  {
    v2 = 2104;
  }

  return *(a1 + v2);
}

uint64_t sub_67A42C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2112;
  if (a2 >= 4)
  {
    v2 = 2136;
  }

  return *(a1 + v2);
}

uint64_t sub_67A448(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2176;
  if (a2 >= 4)
  {
    v2 = 2200;
  }

  return *(a1 + v2);
}

uint64_t sub_67A464(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 800;
  if (a2 >= 4)
  {
    v2 = 824;
  }

  return *(a1 + v2);
}

uint64_t sub_67A480(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 832;
  if (a2 >= 4)
  {
    v2 = 856;
  }

  return *(a1 + v2);
}

uint64_t sub_67A49C(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return *(a1 + 1840);
  }

  else
  {
    return *(a1 + qword_229D550[a2]);
  }
}

uint64_t sub_67A4C4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 896;
  if (a2 >= 4)
  {
    v2 = 920;
  }

  return *(a1 + v2);
}

uint64_t sub_67A4E0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 928;
  if (a2 >= 4)
  {
    v2 = 952;
  }

  return *(a1 + v2);
}

uint64_t sub_67A4FC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 960;
  if (a2 >= 4)
  {
    v2 = 984;
  }

  return *(a1 + v2);
}

uint64_t sub_67A518(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1088;
  if (a2 >= 4)
  {
    v2 = 1112;
  }

  return *(a1 + v2);
}

uint64_t sub_67A534(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 181) == 1)
  {
    v3 = 1080;
    if (a2 < 4)
    {
      v3 = ((8 * a2) | 0x420) & 0x4F8;
    }

    return *(a1 + v3);
  }

  else
  {
    v5 = 1016;
    if (a2 < 4)
    {
      v5 = (8 * a2) & 0x18 | 0x3E0u;
    }

    v6 = 1048;
    if (a2 < 4)
    {
      v6 = (8 * (a2 & 0x1F)) | 0x400;
    }

    if (*(a3 + 180) == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    return *(a1 + v7);
  }
}

uint64_t sub_67A5A4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1120;
  if (a2 >= 4)
  {
    v2 = 1144;
  }

  return *(a1 + v2);
}

uint64_t sub_67A5C0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1184;
  if (a2 >= 4)
  {
    v2 = 1208;
  }

  return *(a1 + v2);
}

uint64_t sub_67A5DC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1216;
  if (a2 >= 4)
  {
    v2 = 1240;
  }

  return *(a1 + v2);
}

uint64_t sub_67A5F8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1280;
  if (a2 >= 4)
  {
    v2 = 1304;
  }

  return *(a1 + v2);
}

uint64_t sub_67A614(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1312;
  if (a2 >= 4)
  {
    v2 = 1336;
  }

  return *(a1 + v2);
}

uint64_t sub_67A630(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1344;
  if (a2 >= 4)
  {
    v2 = 1368;
  }

  return *(a1 + v2);
}

uint64_t sub_67A64C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1376;
  if (a2 >= 4)
  {
    v2 = 1400;
  }

  return *(a1 + v2);
}

uint64_t sub_67A668(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1152;
  if (a2 >= 4)
  {
    v2 = 1176;
  }

  return *(a1 + v2);
}

uint64_t sub_67A684(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1408;
  if (a2 >= 4)
  {
    v2 = 1432;
  }

  return *(a1 + v2);
}

uint64_t sub_67A6A0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1440;
  if (a2 >= 4)
  {
    v2 = 1464;
  }

  return *(a1 + v2);
}

uint64_t sub_67A6BC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1472;
  if (a2 >= 4)
  {
    v2 = 1496;
  }

  return *(a1 + v2);
}

uint64_t sub_67A6D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 181) == 1)
  {
    v3 = 1528;
    if (a2 < 4)
    {
      v3 = ((8 * a2) | 0xFFFFFFE7) & 0x5F8;
    }

    return *(a1 + v3);
  }

  else
  {
    v5 = 1592;
    if (a2 < 4)
    {
      v5 = ((8 * a2) | 0x620) & 0x6F8;
    }

    v6 = 1560;
    if (a2 < 4)
    {
      v6 = (8 * (a2 & 0x1F)) | 0x600;
    }

    if (*(a3 + 180) == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    return *(a1 + v7);
  }
}

uint64_t sub_67A74C(uint64_t a1, unsigned int a2)
{
  v2 = 16 * a2 + 1600;
  if (a2 >= 4)
  {
    v2 = 1648;
  }

  return *(a1 + v2);
}

uint64_t sub_67A768(uint64_t a1, unsigned int a2)
{
  v2 = 16 * a2 + 1608;
  if (a2 >= 4)
  {
    v2 = 1656;
  }

  return *(a1 + v2);
}

uint64_t sub_67A784(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1704;
  if (a2 >= 4)
  {
    v2 = 1728;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7A0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 440;
  if (a2 >= 4)
  {
    v2 = 464;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7BC(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2208;
  if (a2 >= 4)
  {
    v2 = 2232;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7D8(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2240;
  if (a2 >= 4)
  {
    v2 = 2264;
  }

  return *(a1 + v2);
}

uint64_t sub_67A7F4(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2272;
  if (a2 >= 4)
  {
    v2 = 2296;
  }

  return *(a1 + v2);
}

uint64_t sub_67A810(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1664;
  if (a2 >= 4)
  {
    v2 = 1688;
  }

  return *(a1 + v2);
}

uint64_t sub_67A82C(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2384;
  if (a2 >= 4)
  {
    v2 = 2408;
  }

  return *(a1 + v2);
}

uint64_t sub_67A848(unsigned int *a1, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 5)
  {
    if (a2 <= 7)
    {
      if (a2 == 6)
      {
        return a1[490];
      }

      else
      {
        return a1[491];
      }
    }

    else
    {
      switch(a2)
      {
        case 8:
          return a1[492];
        case 9:
          return a1[493];
        case 10:
          return a1[494];
      }
    }
  }

  else if (a2 <= 2)
  {
    if (a2 == 1)
    {
      return a1[485];
    }

    else if (a2 == 2)
    {
      return a1[486];
    }
  }

  else if (a2 == 3)
  {
    return a1[487];
  }

  else if (a2 == 4)
  {
    return a1[488];
  }

  else
  {
    return a1[489];
  }

  return result;
}

uint64_t sub_67A908(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 48;
  if (a2 >= 4)
  {
    v2 = 72;
  }

  return *(a1 + v2);
}

uint64_t sub_67A924(uint64_t a1)
{
  v1 = *(a1 + 204) / 10.0 * (*(a1 + 2456) / 3.6) * 100.0;
  if (v1 >= 0.0)
  {
    v2 = *(a1 + 204) / 10.0 * (*(a1 + 2456) / 3.6) * 100.0;
    if (v1 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v3 = (v1 + v1) + 1;
  }

  else
  {
    v2 = *(a1 + 204) / 10.0 * (*(a1 + 2456) / 3.6) * 100.0;
    if (v1 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v3 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
  }

  v2 = (v3 >> 1);
LABEL_7:
  if (v2 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v4 = (v1 + v1) + 1;
      return (v4 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v4 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v4 >> 1);
  }

  return v1;
}

uint64_t sub_67AA20(_BYTE *a1, int a2)
{
  if (a1[2320])
  {
    return 1;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return a1[2324] & 1;
    }

    return a1[2323] & 1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1[2322] & 1;
      }

      return a1[2324] & 1;
    }

    return a1[2321] & 1;
  }
}

uint64_t sub_67AA84(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 1848;
  if (a2 >= 4)
  {
    v2 = 1872;
  }

  return *(a1 + v2);
}

uint64_t sub_67AAA0(uint64_t a1, unsigned int a2)
{
  v2 = 8 * a2 + 2512;
  if (a2 >= 4)
  {
    v2 = 2536;
  }

  return *(a1 + v2);
}

uint64_t sub_67AABC(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB10((a1 + 688), a2);
  }

  else
  {
    return sub_4EDB38(a1, a2);
  }
}

uint64_t sub_67AAD4(uint64_t a1, void *a2)
{
  if (*(a1 + 1524) == 1)
  {
    v2 = a1 + 688;

    return sub_59EB30(v2, a2);
  }

  else
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v5 + 22 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v5 + 22 >= 0x17)
    {
      operator new();
    }

    v9 = v5 + 22;
    strcpy(__p, "IncidentsCausingDelay_");
    if (v5)
    {
      if ((v4 & 0x80u) != 0)
      {
        a2 = *a2;
      }

      memmove(&__p[22], a2, v5);
    }

    __p[v5 + 22] = 0;
    result = sub_4EDB38(a1, __p);
    if (v9 < 0)
    {
      v7 = result;
      operator delete(*__p);
      return v7;
    }
  }

  return result;
}

void sub_67AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_67AC80(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB54(a1 + 688, a2);
  }

  else
  {
    return sub_4EDB38(a1, a2);
  }
}

uint64_t sub_67AC98(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB78(a1 + 688, a2);
  }

  else
  {
    return sub_4EDB38(a1, a2);
  }
}

uint64_t sub_67ACB0(uint64_t a1, const void **a2)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EB9C(a1 + 688, a2);
  }

  else
  {
    return sub_4EDE20(a1, a2);
  }
}

BOOL sub_67ACC8(uint64_t a1, unsigned int *a2, double a3)
{
  if (*(a1 + 1524) == 1)
  {
    return sub_59EBC0(a1 + 688, a2);
  }

  else
  {
    return sub_4EDC44(a1, a2, a3);
  }
}

uint64_t sub_67ACE0(uint64_t a1)
{
  if (*(a1 + 1524) == 1)
  {
    v1 = a1 + 688;

    return sub_59EBE4(v1);
  }

  else if (sub_4F09F8(a1))
  {

    return sub_4F0A00(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_67AD58(uint64_t a1)
{
  if (*(a1 + 1524) == 1)
  {
    v2 = a1 + 688;

    return sub_59EBF8(v2);
  }

  else
  {
    result = sub_4F09F8(a1);
    if (result)
    {
      return sub_4F0A00(a1) ^ 1;
    }
  }

  return result;
}

uint64_t sub_67ADAC(uint64_t a1)
{
  if (*(a1 + 1524) != 1)
  {
    return sub_4F09B8(a1) ^ 1;
  }

  v2 = a1 + 688;

  return sub_59EC18(v2);
}

uint64_t sub_67ADE8(uint64_t a1)
{
  if (*(a1 + 1524) != 1)
  {
    return sub_4F09D8(a1) ^ 1;
  }

  v2 = a1 + 688;

  return sub_59EC28(v2);
}

uint64_t sub_67AE28(_BYTE *a1)
{
  if (a1[1422])
  {
    return 1;
  }

  if (a1[1176])
  {
    return 0;
  }

  return a1[1421] & 1;
}

uint64_t sub_67AE78(uint64_t a1)
{
  if (*(a1 + 1176))
  {
    return 0;
  }

  else
  {
    return *(a1 + 1420) & 1;
  }
}

void sub_67DD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}