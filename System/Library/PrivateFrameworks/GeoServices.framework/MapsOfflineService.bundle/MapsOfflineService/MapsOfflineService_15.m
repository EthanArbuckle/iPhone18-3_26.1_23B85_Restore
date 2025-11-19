void sub_E26BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  *(v40 + 651) = (*(v40 + 651) | a11) & 1;
  sub_E510C(&a20);
  sub_2446A0(&a36);
  if (__p)
  {
    operator delete(__p);
  }

  v43 = *(v41 - 256);
  if (v43)
  {
    *(v41 - 248) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E294C(uint64_t a1)
{
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v86 = (a1 + 104);
  v89 = 3;
  v88[0] = 6105691;
  v1 = *(a1 + 135);
  v2 = *(a1 + 120);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = *(a1 + 135);
  }

  if (v2 != 3)
  {
LABEL_17:
    operator new();
  }

  v4 = 0;
  v5 = a1 + 112;
  v6 = v1 >> 63;
  do
  {
    if (v6)
    {
      v7 = *v5;
    }

    else
    {
      v7 = v5;
    }

    v8 = __tolower(*(v7 + v4));
    if (v8 != __tolower(*(v88 + v4)))
    {
      goto LABEL_17;
    }

    ++v4;
    v9 = *(a1 + 135);
    v6 = v9 >> 63;
    if ((v9 & 0x80000000) != 0)
    {
      v9 = *(a1 + 120);
    }
  }

  while (v4 < v9);
  v10 = *(a1 + 24);
  if (*(a1 + 8) != v10)
  {
    *(a1 + 24) = v10 + 10;
    v11 = (v10 + 2);
    v12 = *v10;
    *(a1 + 104) = *v10;
    v13 = v86;
    if (v86 == v10)
    {
      goto LABEL_31;
    }

    v14 = *(v10 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_22:
    if ((v14 & 0x80u) == 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = *v11;
    }

    if ((v14 & 0x80u) == 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = *(v10 + 2);
    }

    sub_13B38(v5, v17, v18);
    goto LABEL_30;
  }

  v10 = (a1 + 40);
  *(a1 + 104) = *(a1 + 40);
  v11 = (a1 + 48);
  v13 = v86;
  v14 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v14 & 0x80) != 0)
  {
    sub_13A68(v5, *v11, *(v10 + 2));
  }

  else
  {
    v15 = *v11;
    *(v5 + 16) = v11[2];
    *v5 = v15;
  }

LABEL_30:
  v12 = *v13;
LABEL_31:
  *(a1 + 136) = *(v10 + 4);
  if (v12 != 123)
  {
    operator new();
  }

  v19 = *(a1 + 24);
  if (*(a1 + 8) == v19)
  {
    v19 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v20 = (a1 + 48);
    v21 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_35:
      if ((v21 & 0x80) != 0)
      {
        sub_13A68(v5, *v20, *(v19 + 16));
      }

      else
      {
        v22 = *v20;
        *(v5 + 16) = *(v20 + 2);
        *v5 = v22;
      }

      goto LABEL_47;
    }

LABEL_39:
    if ((v21 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *v20;
    }

    if ((v21 & 0x80u) == 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = *(v19 + 16);
    }

    sub_13B38(v5, v23, v24);
    goto LABEL_47;
  }

  *(a1 + 24) = v19 + 40;
  v20 = (v19 + 8);
  *(a1 + 104) = *v19;
  if (v13 != v19)
  {
    v21 = *(v19 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_47:
  v25 = (a1 + 40);
  *(a1 + 136) = *(v19 + 32);
  v26 = (a1 + 48);
  do
  {
    while (1)
    {
      v27 = *(a1 + 135);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(a1 + 120);
      }

      if (v27 != 4 || ((v28 = __tolower(99), *(a1 + 135) >= 0) ? (v29 = v5) : (v29 = *(a1 + 112)), v28 != __tolower(*v29) || ((v30 = __tolower(97), *(a1 + 135) >= 0) ? (v31 = v5) : (v31 = *(a1 + 112)), v30 != __tolower(*(v31 + 1)) || ((v32 = __tolower(115), *(a1 + 135) >= 0) ? (v33 = v5) : (v33 = *(a1 + 112)), v32 != __tolower(*(v33 + 2)) || ((v34 = __tolower(101), *(a1 + 135) >= 0) ? (v35 = v5) : (v35 = *(a1 + 112)), v34 != __tolower(*(v35 + 3)))))))
      {
        operator new();
      }

      v36 = *(a1 + 24);
      if (*(a1 + 8) == v36)
      {
        *v13 = *v25;
        v37 = v26;
        v36 = v25;
        v38 = *(v25 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        *(a1 + 24) = v36 + 10;
        v37 = (v36 + 2);
        *(a1 + 104) = *v36;
        if (v13 == v36)
        {
          goto LABEL_82;
        }

        v38 = *(v36 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_71:
          if ((v38 & 0x80) != 0)
          {
            sub_13A68(v5, *v37, *(v36 + 2));
          }

          else
          {
            v39 = *v37;
            *(v5 + 16) = v37[2];
            *v5 = v39;
          }

          goto LABEL_82;
        }
      }

      v40 = (v38 & 0x80u) == 0 ? v37 : *v37;
      v41 = (v38 & 0x80u) == 0 ? v38 : *(v36 + 2);
      sub_13B38(v5, v40, v41);
LABEL_82:
      *(a1 + 136) = *(v36 + 4);
      v42 = sub_C5A5C(a1, 0);
      if (!v42)
      {
        goto LABEL_153;
      }

      if (*v13 != 58)
      {
        operator new();
      }

      v43 = *(a1 + 24);
      if (*(a1 + 8) == v43)
      {
        *v13 = *v25;
        v44 = v26;
        v43 = v25;
        v45 = *(v25 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        *(a1 + 24) = v43 + 10;
        v44 = (v43 + 2);
        *(a1 + 104) = *v43;
        if (v13 == v43)
        {
          goto LABEL_98;
        }

        v45 = *(v43 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_87:
          if ((v45 & 0x80) != 0)
          {
            sub_13A68(v5, *v44, *(v43 + 2));
          }

          else
          {
            v46 = *v44;
            *(v5 + 16) = v44[2];
            *v5 = v46;
          }

          goto LABEL_98;
        }
      }

      v47 = (v45 & 0x80u) == 0 ? v44 : *v44;
      v48 = (v45 & 0x80u) == 0 ? v45 : *(v43 + 2);
      sub_13B38(v5, v47, v48);
LABEL_98:
      *(a1 + 136) = *(v43 + 4);
      v49 = sub_C5A5C(a1, 0);
      if (!v49)
      {
LABEL_153:
        v76 = 0;
        goto LABEL_154;
      }

      if (*v86 != 6)
      {
        operator new();
      }

      v50 = *(a1 + 24);
      if (*(a1 + 8) == v50)
      {
        *v86 = *v25;
        v51 = v26;
        v50 = v25;
        v52 = *(v25 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_103;
        }
      }

      else
      {
        *(a1 + 24) = v50 + 10;
        v51 = (v50 + 2);
        *(a1 + 104) = *v50;
        if (v86 == v50)
        {
          goto LABEL_114;
        }

        v52 = *(v50 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_103:
          if ((v52 & 0x80) != 0)
          {
            sub_13A68(v5, *v51, *(v50 + 2));
          }

          else
          {
            v53 = *v51;
            *(v5 + 16) = v51[2];
            *v5 = v53;
          }

          goto LABEL_114;
        }
      }

      v54 = (v52 & 0x80u) == 0 ? v51 : *v51;
      v55 = (v52 & 0x80u) == 0 ? v52 : *(v50 + 2);
      sub_13B38(v5, v54, v55);
LABEL_114:
      *(a1 + 136) = *(v50 + 4);
      if ((*(*v42 + 32))(v42) == 2 && (*(*v42 + 16))(v42) == 0.0)
      {
        break;
      }

      v56 = v91;
      v57 = v92;
      if (v91 >= v92)
      {
        v60 = v90;
        v61 = v91 - v90;
        v62 = v91 - v90;
        v63 = v62 + 1;
        if ((v62 + 1) >> 61)
        {
          goto LABEL_181;
        }

        if ((v92 - v90) >> 2 > v63)
        {
          v63 = (v92 - v90) >> 2;
        }

        if (v92 - v90 >= 0x7FFFFFFFFFFFFFF8)
        {
          v64 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v63;
        }

        if (v64)
        {
          if (!(v64 >> 61))
          {
            operator new();
          }

LABEL_182:
          sub_1808();
        }

        v65 = (8 * v62);
        v57 = 0;
        v66 = &v65[-(v91 - v90)];
        *v65 = v42;
        v58 = v65 + 1;
        memcpy(v66, v60, v61);
        v90 = v66;
        v91 = v58;
        v92 = 0;
        if (v60)
        {
          operator delete(v60);
          v57 = v92;
        }

        v91 = v58;
        if (v58 < v57)
        {
LABEL_124:
          *v58 = v49;
          v59 = v58 + 1;
          goto LABEL_148;
        }
      }

      else
      {
        *v91 = v42;
        v58 = v56 + 1;
        v91 = v58;
        if (v58 < v57)
        {
          goto LABEL_124;
        }
      }

      v67 = v90;
      v68 = v58 - v90;
      v69 = v58 - v90;
      v70 = v69 + 1;
      if ((v69 + 1) >> 61)
      {
LABEL_181:
        sub_1794();
      }

      if ((v57 - v90) >> 2 > v70)
      {
        v70 = (v57 - v90) >> 2;
      }

      if (v57 - v90 >= 0x7FFFFFFFFFFFFFF8)
      {
        v71 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v71 = v70;
      }

      if (v71)
      {
        if (!(v71 >> 61))
        {
          operator new();
        }

        goto LABEL_182;
      }

      v72 = v69;
      v73 = (8 * v69);
      v74 = &v73[-v72];
      *v73 = v49;
      v59 = v73 + 1;
      memcpy(v74, v67, v68);
      v90 = v74;
      v91 = v59;
      v92 = 0;
      if (v67)
      {
        operator delete(v67);
      }

LABEL_148:
      v13 = v86;
      v91 = v59;
      if (*v86 == 125)
      {
        goto LABEL_149;
      }
    }

    if ((*(*v42 + 32))(v42) != 17 && (*(*v42 + 32))(v42) != 18)
    {
      (*(*v42 + 8))(v42);
    }

    v13 = v86;
    if ((*(*v49 + 32))(v49) != 17)
    {
      v13 = v86;
      if ((*(*v49 + 32))(v49) != 18)
      {
        (*(*v49 + 8))(v49);
      }
    }
  }

  while (*v13 != 125);
LABEL_149:
  v75 = *(a1 + 24);
  if (*(a1 + 8) == v75)
  {
    *v13 = *v25;
  }

  else
  {
    *(a1 + 24) = v75 + 10;
    v26 = (v75 + 2);
    *(a1 + 104) = *v75;
    v25 = v75;
    if (v13 == v75)
    {
      goto LABEL_179;
    }
  }

  v82 = *(v25 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v82 >= 0)
    {
      v84 = v26;
    }

    else
    {
      v84 = *v26;
    }

    if (v82 >= 0)
    {
      v85 = *(v25 + 31);
    }

    else
    {
      v85 = *(v25 + 2);
    }

    sub_13B38(v5, v84, v85);
  }

  else if ((*(v25 + 31) & 0x80) != 0)
  {
    sub_13A68(v5, *v26, *(v25 + 2));
  }

  else
  {
    v83 = *v26;
    *(v5 + 16) = v26[2];
    *v5 = v83;
  }

LABEL_179:
  *(a1 + 136) = *(v25 + 4);
  v76 = sub_E517C(a1 + 344, &v90);
  if (v76 == 0)
  {
LABEL_154:
    v77 = v90;
    if (v90 == v91)
    {
      goto LABEL_18;
    }

    v78 = 0;
    while (1)
    {
      v79 = v77[v78];
      if (!v79 || (*(*v79 + 32))(v79) == 17)
      {
        goto LABEL_157;
      }

      v80 = v77[v78];
      if (v80)
      {
        if ((*(*v80 + 32))(v80) == 18)
        {
          goto LABEL_157;
        }

        v81 = v77[v78];
        if (v81)
        {
          (*(*v81 + 8))(v81);
        }
      }

      v77[v78] = 0;
LABEL_157:
      ++v78;
      v77 = v90;
      if (v78 >= v91 - v90)
      {
        v91 = v90;
        break;
      }
    }
  }

LABEL_18:
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  return v76;
}

void sub_E437C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  sub_2446A0(&a32);
  v40 = *(v38 - 112);
  if (v40)
  {
    *(v38 - 104) = v40;
    operator delete(v40);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E45D0(uint64_t a1, int *a2, char **a3)
{
  v7 = *a3;
  v6 = a3[1];
  if (v6 == *a3)
  {
LABEL_35:

    return sub_E5E64(a1, a2);
  }

  else
  {
    v8 = (v6 - *a3) >> 3;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v6 - *a3) >> 3;
    }

    if (!*v7)
    {
      goto LABEL_10;
    }

    v10 = 1;
    do
    {
      v11 = v10;
      if (v9 == v10)
      {
        break;
      }
    }

    while (*&v7[8 * v10++]);
    if (v11 < v8)
    {
LABEL_10:
      v13 = 0;
      while (1)
      {
        v14 = *&v7[8 * v13];
        if (!v14 || (*(*v14 + 32))(v14) == 17)
        {
          goto LABEL_12;
        }

        v15 = *&v7[8 * v13];
        if (v15)
        {
          if ((*(*v15 + 32))(v15) == 18)
          {
            goto LABEL_12;
          }

          v16 = *&v7[8 * v13];
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        *&v7[8 * v13] = 0;
LABEL_12:
        ++v13;
        v7 = *a3;
        if (v13 >= (a3[1] - *a3) >> 3)
        {
          result = 0;
          a3[1] = v7;
          return result;
        }
      }
    }

    v18 = *v7;
    if (*v7)
    {
      v19 = 1;
      do
      {
        v20 = (*(*v18 + 32))(v18);
        v7 = *a3;
        v6 = a3[1];
        if (v20 != 2)
        {
          break;
        }

        if (v19 >= (v6 - v7) >> 3)
        {
          goto LABEL_35;
        }

        v18 = *&v7[8 * v19++];
      }

      while (v18);
    }

    if (v6 - v7 == 8 && *v7)
    {
      v21 = (*(**v7 + 32))(*v7);
      if ((v21 - 124) <= 0x11 && ((1 << (v21 - 124)) & 0x3C5E1) != 0)
      {

        return sub_E6154(a1, a2, a3);
      }

      v7 = *a3;
      v6 = a3[1];
    }

    if (v6 - v7 == 8 && (*a2 - 9) <= 4)
    {
      return *v7;
    }

    if (v6 == v7)
    {
LABEL_47:

      return sub_E66EC(a1, a2);
    }

    else
    {
      v23 = 0;
      while (1)
      {
        v24 = *&v7[8 * v23];
        if (!v24 || (*(*v24 + 32))(v24) != 17)
        {
          break;
        }

        ++v23;
        v7 = *a3;
        if (v23 >= (a3[1] - *a3) >> 3)
        {
          goto LABEL_47;
        }
      }

      result = 0;
      v25 = *a2;
      if (*a2 > 12)
      {
        if (v25 > 28)
        {
          if (v25 == 29)
          {

            sub_E6B74();
          }

          if (v25 == 90)
          {

            sub_E6BE0();
          }
        }

        else
        {
          if (v25 == 13)
          {

            sub_E6958();
          }

          if (v25 == 28)
          {

            sub_E6B08();
          }
        }
      }

      else if (v25 > 10)
      {
        if (v25 == 11)
        {

          sub_E69C4();
        }

        if (v25 == 12)
        {

          sub_E68EC();
        }
      }

      else
      {
        if (v25 == 9)
        {

          sub_E6A30();
        }

        if (v25 == 10)
        {

          sub_E6A9C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_E4A98@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 4;
      strcpy(a2, "NONE");
      break;
    case 1:
      a2[23] = 5;
      *a2 = 1330795077;
      a2[4] = 82;
      a2[5] = 0;
      break;
    case 2:
      a2[23] = 12;
      strcpy(a2, "ERROR_SYMBOL");
      break;
    case 3:
      a2[23] = 12;
      strcpy(a2, "ERROR_NUMBER");
      break;
    case 4:
      a2[23] = 12;
      strcpy(a2, "ERROR_STRING");
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20293;
      a2[2] = 70;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 6;
      strcpy(a2, "NUMBER");
      break;
    case 8:
      a2[23] = 6;
      strcpy(a2, "SYMBOL");
      break;
    case 9:
      a2[23] = 6;
      strcpy(a2, "STRING");
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, ":=");
      break;
    case 11:
      a2[23] = 2;
      strcpy(a2, "+=");
      break;
    case 12:
      a2[23] = 2;
      strcpy(a2, "-=");
      break;
    case 13:
      a2[23] = 2;
      strcpy(a2, "*=");
      break;
    case 14:
      a2[23] = 2;
      strcpy(a2, "/=");
      break;
    case 15:
      a2[23] = 2;
      strcpy(a2, "%=");
      break;
    case 16:
      a2[23] = 2;
      strcpy(a2, ">>");
      break;
    case 17:
      a2[23] = 2;
      strcpy(a2, "<<");
      break;
    case 18:
      a2[23] = 2;
      strcpy(a2, "<=");
      break;
    case 19:
      a2[23] = 2;
      strcpy(a2, "!=");
      break;
    case 20:
      a2[23] = 2;
      strcpy(a2, ">=");
      break;
    case 21:
      a2[23] = 3;
      *a2 = 15676;
      a2[2] = 62;
      a2[3] = 0;
      break;
    case 37:
      a2[23] = 1;
      *a2 = 37;
      a2[1] = 0;
      break;
    case 40:
      a2[23] = 1;
      *a2 = 40;
      a2[1] = 0;
      break;
    case 41:
      a2[23] = 1;
      *a2 = 41;
      a2[1] = 0;
      break;
    case 42:
      a2[23] = 1;
      *a2 = 42;
      a2[1] = 0;
      break;
    case 43:
      a2[23] = 1;
      *a2 = 43;
      a2[1] = 0;
      break;
    case 44:
      a2[23] = 1;
      *a2 = 44;
      a2[1] = 0;
      break;
    case 45:
      a2[23] = 1;
      *a2 = 45;
      a2[1] = 0;
      break;
    case 47:
      a2[23] = 1;
      *a2 = 47;
      a2[1] = 0;
      break;
    case 58:
      a2[23] = 1;
      *a2 = 58;
      a2[1] = 0;
      break;
    case 60:
      a2[23] = 1;
      *a2 = 60;
      a2[1] = 0;
      break;
    case 61:
      a2[23] = 1;
      *a2 = 61;
      a2[1] = 0;
      break;
    case 62:
      a2[23] = 1;
      *a2 = 62;
      a2[1] = 0;
      break;
    case 63:
      a2[23] = 1;
      *a2 = 63;
      a2[1] = 0;
      break;
    case 91:
      a2[23] = 1;
      *a2 = 91;
      a2[1] = 0;
      break;
    case 93:
      a2[23] = 1;
      *a2 = 93;
      a2[1] = 0;
      break;
    case 94:
      a2[23] = 1;
      *a2 = 94;
      a2[1] = 0;
      break;
    case 123:
      a2[23] = 1;
      *a2 = 123;
      a2[1] = 0;
      break;
    case 125:
      a2[23] = 1;
      *a2 = 125;
      a2[1] = 0;
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "UNKNOWN");
      break;
  }

  return result;
}

uint64_t *sub_E510C(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 880);
  v3 = *(*result + 656);
  v4 = *(*result + 888) - v2;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 5);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (v2 + 68);
    do
    {
      if (*v6 == 1 && *(v6 - 28) >= v3)
      {
        *v6 = 0;
      }

      v6 += 96;
      --v5;
    }

    while (v5);
  }

  *(v1 + 656) = v3 - 1;
  return result;
}

uint64_t sub_E517C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (!*v4)
    {
      goto LABEL_10;
    }

    v8 = 1;
    do
    {
      v9 = v8;
      if (v7 == v8)
      {
        break;
      }
    }

    while (v4[v8++]);
    if (v9 < v6)
    {
LABEL_10:
      v11 = 0;
      while (1)
      {
        v12 = v4[v11];
        if (!v12 || (*(*v12 + 32))(v12) == 17)
        {
          goto LABEL_12;
        }

        v13 = v4[v11];
        if (v13)
        {
          if ((*(*v13 + 32))(v13) == 18)
          {
            goto LABEL_12;
          }

          v14 = v4[v11];
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }
        }

        v4[v11] = 0;
LABEL_12:
        ++v11;
        v4 = *a2;
        if (v11 >= (a2[1] - *a2) >> 3)
        {
          result = 0;
          a2[1] = v4;
          return result;
        }
      }
    }

    v16 = 0;
    do
    {
      v17 = v4[v16];
      if (!v17 || (*(*v17 + 32))(v17) != 2)
      {
        operator new();
      }

      ++v16;
      v4 = *a2;
    }

    while (v16 < (a2[1] - *a2) >> 3);
  }

  return sub_E5374(a1, a2);
}

uint64_t sub_E5374(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if ((a2[1] - *a2) < 9)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(v3 + v4);
    v8 = *(v3 + v4 + 8);
    if ((*(*v7 + 16))(v7) != 0.0)
    {
      v5 = v8;
    }

    ++v6;
    v3 = *a2;
    v9 = a2[1];
    v4 += 16;
  }

  while (v6 < ((v9 - *a2) >> 3) >> 1);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  if (v9 != v3)
  {
    for (i = 0; i < (a2[1] - *a2) >> 3; ++i)
    {
      v11 = *(v3 + 8 * i);
      if (v11)
      {
        v12 = v11 == v5;
      }

      else
      {
        v12 = 1;
      }

      if (v12 || (*(*v11 + 32))(v11) == 17)
      {
        goto LABEL_11;
      }

      v13 = *(v3 + 8 * i);
      if (v13)
      {
        if ((*(*v13 + 32))(v13) == 18)
        {
          goto LABEL_11;
        }

        v14 = *(v3 + 8 * i);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      *(v3 + 8 * i) = 0;
LABEL_11:
      v3 = *a2;
    }
  }

  return v5;
}

uint64_t sub_E551C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *a1 = off_262FCE0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v4 = a2[1];
  v5 = v4 - *a2;
  if ((v5 & 8) != 0)
  {
    return a1;
  }

  v7 = v5 >> 3;
  if (v4 != *a2)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v7 = (a2[1] - *a2) >> 3;
    v10 = v7 >= &v8[-v9];
    v11 = v7 - &v8[-v9];
    if (v7 > &v8[-v9])
    {
      goto LABEL_4;
    }

LABEL_8:
    if (!v10)
    {
      *(a1 + 40) = v9 + v7;
    }

    v13 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v8 = 0;
  v10 = 1;
  v11 = v5 >> 3;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  v12 = *(a1 + 48);
  if (v12 - v8 < v11)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = &v8[v11];
  bzero(v8, v11);
  *(a1 + 40) = v14;
  v13 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_13:
  v15 = 0;
  while (1)
  {
    v17 = *(v13 + 8 * v15);
    v18 = *v3;
    if (!v17)
    {
      break;
    }

    *(v18 + 8 * v15) = v17;
    v16 = (*(*v17 + 32))(v17) != 17 && (*(*v17 + 32))(v17) != 18;
    *(*(a1 + 32) + v15++) = v16;
    v13 = *a2;
    if (v15 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v18;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_E5788(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_E57C8(void *a1)
{
  *a1 = off_262FCE0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_E589C(void *a1)
{
  *a1 = off_262FCE0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_E5990(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return NAN;
  }

  v3 = (v2 - v1) >> 3;
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = (*(a1 + 8) + 8 * v6);
      v9 = v8[1];
      if ((*(**v8 + 16))() != 0.0)
      {
        v7 = (*(*v9 + 16))(v9);
      }

      v6 += 2;
    }

    while (v6 < v4);
    return v7;
  }

  return 0.0;
}

void sub_E5A8C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1794();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_E5BE0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 8)
  {
    if (((1 << a3) & 0x1D6) != 0)
    {
      if (*(a1 + 8) != 1)
      {
        return;
      }

      if (*(a2 + 23) < 0)
      {
        v3 = a1;
        v4 = a3;
        sub_325C(__p, *a2, *(a2 + 8));
        a3 = v4;
        a1 = v3;
      }

      else
      {
        *__p = *a2;
        v7 = *(a2 + 16);
      }

      v8 = a3;
      sub_E5D1C(a1 + 16, __p);
      goto LABEL_12;
    }

    if (a3 == 5 && *(a1 + 9) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        v5 = a1;
        sub_325C(__p, *a2, *(a2 + 8));
        a1 = v5;
      }

      else
      {
        *__p = *a2;
        v7 = *(a2 + 16);
      }

      v8 = 5;
      sub_E5D1C(a1 + 16, __p);
LABEL_12:
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_E5CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E5D1C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 6);
    v6 = v3 + 32;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = (v3 - *a1) >> 5;
  v8 = v7 + 1;
  if ((v7 + 1) >> 59)
  {
    sub_1794();
  }

  v9 = v4 - *a1;
  if (v9 >> 4 > v8)
  {
    v8 = v9 >> 4;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFE0)
  {
    v10 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 32 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v11 + 24) = *(a2 + 6);
  v6 = 32 * v7 + 32;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

uint64_t sub_E5E64(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 12)
  {
    if (v3 > 28)
    {
      if (v3 == 29)
      {
        operator new();
      }

      if (v3 == 90)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 13)
      {
        operator new();
      }

      if (v3 == 28)
      {
        operator new();
      }
    }
  }

  else if (v3 > 10)
  {
    if (v3 == 11)
    {
      operator new();
    }

    if (v3 == 12)
    {
      operator new();
    }
  }

  else
  {
    if (v3 == 9)
    {
      operator new();
    }

    if (v3 == 10)
    {
      operator new();
    }
  }

  return result;
}

uint64_t sub_E6154(uint64_t a1, int *a2, void *a3)
{
  if (a3[1] - *a3 != 8)
  {
    return 0;
  }

  result = 0;
  v4 = *a2;
  if (*a2 <= 10)
  {
    if (v4 == 9)
    {
      operator new();
    }

    if (v4 == 10)
    {
      operator new();
    }
  }

  else
  {
    switch(v4)
    {
      case 11:
        operator new();
      case 13:
        operator new();
      case 12:
        operator new();
    }
  }

  return result;
}

uint64_t sub_E66EC(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 12)
  {
    if (v2 > 28)
    {
      if (v2 == 29)
      {
        operator new();
      }

      if (v2 == 90)
      {
        operator new();
      }
    }

    else
    {
      if (v2 == 13)
      {
        operator new();
      }

      if (v2 == 28)
      {
        operator new();
      }
    }
  }

  else if (v2 > 10)
  {
    if (v2 == 11)
    {
      operator new();
    }

    if (v2 == 12)
    {
      operator new();
    }
  }

  else
  {
    if (v2 == 9)
    {
      operator new();
    }

    if (v2 == 10)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t sub_E6C4C(uint64_t result)
{
  *result = off_262FD30;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_E6CD0(uint64_t a1)
{
  *a1 = off_262FD30;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  operator delete();
}

double sub_E6D70(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 8);

  return sub_E6DEC(v2);
}

double sub_E6DEC(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = (*(*a1 + 32))(a1);
  v5 = *(*(*(*v4 + 64))(v4) + 8);
  if (v5 <= 0x10)
  {
    result = 0.0;
    v27 = v5 - 1;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    switch(v27)
    {
      case 0uLL:
        goto LABEL_25;
      case 1uLL:
        goto LABEL_24;
      case 2uLL:
        goto LABEL_23;
      case 3uLL:
        goto LABEL_22;
      case 4uLL:
        goto LABEL_21;
      case 5uLL:
        goto LABEL_20;
      case 6uLL:
        goto LABEL_19;
      case 7uLL:
        goto LABEL_18;
      case 8uLL:
        goto LABEL_17;
      case 9uLL:
        goto LABEL_16;
      case 0xAuLL:
        goto LABEL_15;
      case 0xBuLL:
        goto LABEL_14;
      case 0xCuLL:
        goto LABEL_13;
      case 0xDuLL:
        goto LABEL_12;
      case 0xEuLL:
        goto LABEL_11;
      case 0xFuLL:
        result = *v3 + 0.0;
        v28 = 1;
LABEL_11:
        v29 = v28 + 1;
        result = result + v3[v28];
LABEL_12:
        v30 = v29 + 1;
        result = result + v3[v29];
LABEL_13:
        v31 = v30 + 1;
        result = result + v3[v30];
LABEL_14:
        v32 = v31 + 1;
        result = result + v3[v31];
LABEL_15:
        v33 = v32 + 1;
        result = result + v3[v32];
LABEL_16:
        v34 = v33 + 1;
        result = result + v3[v33];
LABEL_17:
        v35 = v34 + 1;
        result = result + v3[v34];
LABEL_18:
        v36 = v35 + 1;
        result = result + v3[v35];
LABEL_19:
        v37 = v36 + 1;
        result = result + v3[v36];
LABEL_20:
        v38 = v37 + 1;
        result = result + v3[v37];
LABEL_21:
        v39 = v38 + 1;
        result = result + v3[v38];
LABEL_22:
        v40 = v39 + 1;
        result = result + v3[v39];
LABEL_23:
        v41 = v40 + 1;
        result = result + v3[v40];
LABEL_24:
        v42 = (v41 + 1);
        result = result + v3[v41];
LABEL_25:
        result = result + v3[v42];
        break;
      default:
        return result;
    }
  }

  else
  {
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 < 1)
    {
      v25 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v22 = 0.0;
      v21 = 0.0;
      v20 = 0.0;
      v19 = 0.0;
      v18 = 0.0;
      v17 = 0.0;
      v16 = 0.0;
      v15 = 0.0;
      v14 = 0.0;
      v13 = 0.0;
      v12 = 0.0;
      v11 = 0.0;
      v9 = 0.0;
    }

    else
    {
      v9 = 0.0;
      v10 = &v3[v8 / 8];
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      do
      {
        v25 = v25 + *v3;
        v24 = v24 + v3[1];
        v23 = v23 + v3[2];
        v22 = v22 + v3[3];
        v21 = v21 + v3[4];
        v20 = v20 + v3[5];
        v19 = v19 + v3[6];
        v18 = v18 + v3[7];
        v17 = v17 + v3[8];
        v16 = v16 + v3[9];
        v15 = v15 + v3[10];
        v14 = v14 + v3[11];
        v13 = v13 + v3[12];
        v12 = v12 + v3[13];
        v11 = v11 + v3[14];
        v9 = v9 + v3[15];
        v3 += 16;
      }

      while (v3 < v10);
    }

    v43 = 0;
    v44 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_42;
      case 2:
        goto LABEL_41;
      case 3:
        goto LABEL_40;
      case 4:
        goto LABEL_39;
      case 5:
        goto LABEL_38;
      case 6:
        goto LABEL_37;
      case 7:
        goto LABEL_36;
      case 8:
        goto LABEL_35;
      case 9:
        goto LABEL_34;
      case 10:
        goto LABEL_33;
      case 11:
        goto LABEL_32;
      case 12:
        goto LABEL_31;
      case 13:
        goto LABEL_30;
      case 14:
        goto LABEL_29;
      case 15:
        v25 = v25 + *v3;
        v44 = 1;
LABEL_29:
        v45 = v3[v44++];
        v25 = v25 + v45;
LABEL_30:
        v46 = v3[v44++];
        v25 = v25 + v46;
LABEL_31:
        v47 = v3[v44++];
        v25 = v25 + v47;
LABEL_32:
        v48 = v3[v44++];
        v25 = v25 + v48;
LABEL_33:
        v49 = v3[v44++];
        v25 = v25 + v49;
LABEL_34:
        v50 = v3[v44++];
        v25 = v25 + v50;
LABEL_35:
        v51 = v3[v44++];
        v25 = v25 + v51;
LABEL_36:
        v52 = v3[v44++];
        v25 = v25 + v52;
LABEL_37:
        v53 = v3[v44++];
        v25 = v25 + v53;
LABEL_38:
        v54 = v3[v44++];
        v25 = v25 + v54;
LABEL_39:
        v55 = v3[v44++];
        v25 = v25 + v55;
LABEL_40:
        v56 = v3[v44++];
        v25 = v25 + v56;
LABEL_41:
        v43 = v44 + 1;
        v25 = v25 + v3[v44];
LABEL_42:
        v25 = v25 + v3[v43];
        break;
      default:
        return v13 + v12 + v11 + v9 + v17 + v16 + v15 + v14 + v21 + v20 + v19 + v18 + v22 + v23 + v24 + v25;
    }

    return v13 + v12 + v11 + v9 + v17 + v16 + v15 + v14 + v21 + v20 + v19 + v18 + v22 + v23 + v24 + v25;
  }

  return result;
}

uint64_t sub_E7298(uint64_t result)
{
  *result = off_262FD90;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_E731C(uint64_t a1)
{
  *a1 = off_262FD90;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  operator delete();
}

double sub_E73BC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 8);

  return sub_E7438(v2);
}

double sub_E7438(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = (*(*a1 + 32))(a1);
  v5 = *(*(*(*v4 + 64))(v4) + 8);
  if (v5 <= 0x10)
  {
    result = 1.0;
    v26 = v5 - 1;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    switch(v26)
    {
      case 0uLL:
        goto LABEL_25;
      case 1uLL:
        goto LABEL_24;
      case 2uLL:
        goto LABEL_23;
      case 3uLL:
        goto LABEL_22;
      case 4uLL:
        goto LABEL_21;
      case 5uLL:
        goto LABEL_20;
      case 6uLL:
        goto LABEL_19;
      case 7uLL:
        goto LABEL_18;
      case 8uLL:
        goto LABEL_17;
      case 9uLL:
        goto LABEL_16;
      case 0xAuLL:
        goto LABEL_15;
      case 0xBuLL:
        goto LABEL_14;
      case 0xCuLL:
        goto LABEL_13;
      case 0xDuLL:
        goto LABEL_12;
      case 0xEuLL:
        goto LABEL_11;
      case 0xFuLL:
        result = *v3;
        v27 = 1;
LABEL_11:
        v28 = v27 + 1;
        result = result * v3[v27];
LABEL_12:
        v29 = v28 + 1;
        result = result * v3[v28];
LABEL_13:
        v30 = v29 + 1;
        result = result * v3[v29];
LABEL_14:
        v31 = v30 + 1;
        result = result * v3[v30];
LABEL_15:
        v32 = v31 + 1;
        result = result * v3[v31];
LABEL_16:
        v33 = v32 + 1;
        result = result * v3[v32];
LABEL_17:
        v34 = v33 + 1;
        result = result * v3[v33];
LABEL_18:
        v35 = v34 + 1;
        result = result * v3[v34];
LABEL_19:
        v36 = v35 + 1;
        result = result * v3[v35];
LABEL_20:
        v37 = v36 + 1;
        result = result * v3[v36];
LABEL_21:
        v38 = v37 + 1;
        result = result * v3[v37];
LABEL_22:
        v39 = v38 + 1;
        result = result * v3[v38];
LABEL_23:
        v40 = v39 + 1;
        result = result * v3[v39];
LABEL_24:
        v41 = (v40 + 1);
        result = result * v3[v40];
LABEL_25:
        result = result * v3[v41];
        break;
      default:
        return result;
    }
  }

  else
  {
    v6 = v5 & 0xF;
    if ((v5 & 0xF) != 0)
    {
      v7 = -16;
    }

    else
    {
      v7 = 0;
    }

    v8 = 8 * (v7 + v5);
    if (v8 < 1)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v18.f64[0] = 1.0;
      v16 = _Q0;
      v17 = _Q0;
      v15 = 1.0;
      v19 = _Q0;
      v20 = _Q0;
      v21 = _Q0;
      v22 = _Q0;
    }

    else
    {
      v9 = &v3[v8 / 8];
      __asm { FMOV            V0.2D, #1.0 }

      v15 = 1.0;
      v16 = _Q0;
      v17 = _Q0;
      v18.f64[0] = 1.0;
      v19 = _Q0;
      v20 = _Q0;
      v21 = _Q0;
      v22 = _Q0;
      do
      {
        v15 = v15 * *v3;
        v23.f64[0] = v3[5];
        v18.f64[0] = v18.f64[0] * v3[4];
        v23.f64[1] = v3[1];
        v22 = vmulq_f64(v22, v23);
        v24.f64[0] = v3[6];
        v23.f64[0] = v3[7];
        v24.f64[1] = v3[2];
        v23.f64[1] = v3[3];
        v21 = vmulq_f64(v21, v24);
        v20 = vmulq_f64(v20, v23);
        v24.f64[0] = v3[12];
        v23.f64[0] = v3[13];
        v24.f64[1] = v3[8];
        v19 = vmulq_f64(v19, v24);
        v23.f64[1] = v3[9];
        v17 = vmulq_f64(v17, v23);
        v24.f64[0] = v3[14];
        v23.f64[0] = v3[15];
        v24.f64[1] = v3[10];
        v16 = vmulq_f64(v16, v24);
        v23.f64[1] = v3[11];
        _Q0 = vmulq_f64(_Q0, v23);
        v3 += 16;
      }

      while (v3 < v9);
    }

    v42 = 0;
    v43 = 0;
    switch(v6)
    {
      case 1:
        goto LABEL_42;
      case 2:
        goto LABEL_41;
      case 3:
        goto LABEL_40;
      case 4:
        goto LABEL_39;
      case 5:
        goto LABEL_38;
      case 6:
        goto LABEL_37;
      case 7:
        goto LABEL_36;
      case 8:
        goto LABEL_35;
      case 9:
        goto LABEL_34;
      case 10:
        goto LABEL_33;
      case 11:
        goto LABEL_32;
      case 12:
        goto LABEL_31;
      case 13:
        goto LABEL_30;
      case 14:
        goto LABEL_29;
      case 15:
        v15 = v15 * *v3;
        v43 = 1;
LABEL_29:
        v44 = v3[v43++];
        v15 = v15 * v44;
LABEL_30:
        v45 = v3[v43++];
        v15 = v15 * v45;
LABEL_31:
        v46 = v3[v43++];
        v15 = v15 * v46;
LABEL_32:
        v47 = v3[v43++];
        v15 = v15 * v47;
LABEL_33:
        v48 = v3[v43++];
        v15 = v15 * v48;
LABEL_34:
        v49 = v3[v43++];
        v15 = v15 * v49;
LABEL_35:
        v50 = v3[v43++];
        v15 = v15 * v50;
LABEL_36:
        v51 = v3[v43++];
        v15 = v15 * v51;
LABEL_37:
        v52 = v3[v43++];
        v15 = v15 * v52;
LABEL_38:
        v53 = v3[v43++];
        v15 = v15 * v53;
LABEL_39:
        v54 = v3[v43++];
        v15 = v15 * v54;
LABEL_40:
        v55 = v3[v43++];
        v15 = v15 * v55;
LABEL_41:
        v42 = v43 + 1;
        v15 = v15 * v3[v43];
LABEL_42:
        v15 = v15 * v3[v42];
        break;
      default:
        break;
    }

    v18.f64[1] = v15;
    v56 = vmulq_f64(v20, vmulq_f64(v21, vmulq_f64(v22, v18)));
    v57 = vmulq_f64(_Q0, vmulq_f64(v16, vmulq_f64(v17, v19)));
    *&result = *&vaddq_f64(v57, vaddq_f64(vdupq_laneq_s64(v57, 1), vaddq_f64(v56, vdupq_laneq_s64(v56, 1))));
  }

  return result;
}

uint64_t sub_E78A8(uint64_t result)
{
  *result = off_262FDE0;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_E792C(uint64_t a1)
{
  *a1 = off_262FDE0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  operator delete();
}

double sub_E79CC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 8);
  v3 = (*(*v2 + 32))(v2);
  v4 = *(*(*(*v3 + 64))(v3) + 8);
  return sub_E6DEC(v2) / v4;
}

uint64_t sub_E7AA8(uint64_t result)
{
  *result = off_262FE30;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_E7B2C(uint64_t a1)
{
  *a1 = off_262FE30;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  operator delete();
}

double sub_E7BCC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 8);
  v3 = (*(*v2 + 32))(v2);
  v4 = *(*(*(*v3 + 64))(v3) + 16);
  v5 = (*(*v2 + 32))(v2);
  v6 = *(*(*(*v5 + 64))(v5) + 8);
  result = *v4;
  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = v4 + 1;
    do
    {
      v10 = *v9++;
      v11 = v10;
      if (v10 < result)
      {
        result = v11;
      }

      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_E7D0C(uint64_t result)
{
  *result = off_262FE80;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_E7D90(uint64_t a1)
{
  *a1 = off_262FE80;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  operator delete();
}

double sub_E7E30(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 8);
  v3 = (*(*v2 + 32))(v2);
  v4 = *(*(*(*v3 + 64))(v3) + 16);
  v5 = (*(*v2 + 32))(v2);
  v6 = *(*(*(*v5 + 64))(v5) + 8);
  result = *v4;
  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = v4 + 1;
    do
    {
      v10 = *v9++;
      v11 = v10;
      if (v10 > result)
      {
        result = v11;
      }

      --v8;
    }

    while (v8);
  }

  return result;
}

void *sub_E7F70(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_262FED0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E8088(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E80AC(void *result)
{
  *result = off_262FED0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E8104(void *a1)
{
  *a1 = off_262FED0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E8178(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return NAN;
  }

  v3 = v2 - v1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        return **v1 + *v1[1] + *v1[2];
      case 4:
        return **v1 + *v1[1] + *v1[2] + *v1[3];
      case 5:
        return **v1 + *v1[1] + *v1[2] + *v1[3] + *v1[4];
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        return 0.0;
      case 1:
        return **v1;
      case 2:
        return **v1 + *v1[1];
    }
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFFELL;
  v6 = v1 + 1;
  result = 0.0;
  v7 = v3 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    result = result + **(v6 - 1) + **v6;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  if (v3 != v5)
  {
    v8 = v3 - v5;
    v9 = &v1[v5];
    do
    {
      v10 = *v9++;
      result = result + *v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_E82E8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1794();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_E843C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_262FF20;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E8554(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E8578(void *result)
{
  *result = off_262FF20;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E85D0(void *a1)
{
  *a1 = off_262FF20;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E8644(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return NAN;
  }

  v3 = v2 - v1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        return **v1 * *v1[1] * *v1[2];
      case 4:
        return **v1 * *v1[1] * *v1[2] * *v1[3];
      case 5:
        return **v1 * *v1[1] * *v1[2] * *v1[3] * *v1[4];
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        return 0.0;
      case 1:
        return **v1;
      case 2:
        return **v1 * *v1[1];
    }
  }

  result = **v1;
  v5 = v3 - 1;
  v6 = v1 + 1;
  do
  {
    v7 = *v6++;
    result = result * *v7;
    --v5;
  }

  while (v5);
  return result;
}

void *sub_E8774(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_262FF70;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E888C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E88B0(void *result)
{
  *result = off_262FF70;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E8908(void *a1)
{
  *a1 = off_262FF70;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E897C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v1 = (a1 + 8);
  if (v2 == v3)
  {
    return NAN;
  }

  else
  {
    return sub_E89A0(v1);
  }
}

double sub_E89A0(double ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        return (**v1 + *v1[1] + *v1[2]) / 3.0;
      case 4:
        return (**v1 + *v1[1] + *v1[2] + *v1[3]) * 0.25;
      case 5:
        return (**v1 + *v1[1] + *v1[2] + *v1[3] + *v1[4]) / 5.0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        return 0.0;
      case 1:
        return **v1;
      case 2:
        return (**v1 + *v1[1]) * 0.5;
    }
  }

  if (v2 == v1)
  {
    return 0.0 / v3;
  }

  v5 = v2 - *a1;
  v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
  v7 = v1 + 1;
  v8 = 0.0;
  v9 = v5 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v8 = v8 + **(v7 - 1) + **v7;
    v7 += 2;
    v9 -= 2;
  }

  while (v9);
  if (v3 != v6)
  {
    v10 = v5 - v6;
    v11 = &v1[v6];
    do
    {
      v12 = *v11++;
      v8 = v8 + *v12;
      --v10;
    }

    while (v10);
  }

  return v8 / v3;
}

void *sub_E8B38(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_262FFC0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E8C50(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E8C74(void *result)
{
  *result = off_262FFC0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E8CCC(void *a1)
{
  *a1 = off_262FFC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E8D40(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v1 = a1 + 8;
  if (v2 == v3)
  {
    return NAN;
  }

  else
  {
    return sub_E8D64(v1);
  }
}

double sub_E8D64(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 3;
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        return 0.0;
      case 1:
        return **v1;
      case 2:
        v4 = *v1;
        v3 = v1[1];
        result = *v4;
        if (*v3 < *v4)
        {
          return *v3;
        }

        return result;
    }

    goto LABEL_26;
  }

  switch(v2)
  {
    case 3:
      v10 = v1[1];
      result = **v1;
      v11 = v1[2];
      if (*v10 < result)
      {
        result = *v10;
      }

      if (*v11 < result)
      {
        return *v11;
      }

      break;
    case 4:
      v16 = v1[1];
      result = **v1;
      v18 = v1[2];
      v17 = v1[3];
      v19 = *v18;
      if (*v17 < *v18)
      {
        v19 = *v17;
      }

      if (*v16 < result)
      {
        result = *v16;
      }

      if (v19 < result)
      {
        return v19;
      }

      break;
    case 5:
      result = **v1;
      v6 = v1[2];
      v7 = v1[3];
      v8 = *v6;
      if (*v7 < *v6)
      {
        v8 = *v7;
      }

      if (*v1[1] < result)
      {
        result = *v1[1];
      }

      v9 = v1[4];
      if (v8 < result)
      {
        result = v8;
      }

      if (*v9 < result)
      {
        return *v9;
      }

      break;
    default:
LABEL_26:
      result = **v1;
      v12 = v2 - 1;
      v13 = v1 + 1;
      do
      {
        v14 = *v13++;
        v15 = *v14;
        if (*v14 < result)
        {
          result = v15;
        }

        --v12;
      }

      while (v12);
      return result;
  }

  return result;
}

void *sub_E8EA4(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_2630010;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E8FBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E8FE0(void *result)
{
  *result = off_2630010;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E9038(void *a1)
{
  *a1 = off_2630010;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E90AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v1 = a1 + 8;
  if (v2 == v3)
  {
    return NAN;
  }

  else
  {
    return sub_E90D0(v1);
  }
}

double sub_E90D0(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 3;
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        return 0.0;
      case 1:
        return **v1;
      case 2:
        v4 = *v1;
        v3 = v1[1];
        result = *v4;
        if (*v4 < *v3)
        {
          return *v3;
        }

        return result;
    }

    goto LABEL_27;
  }

  switch(v2)
  {
    case 3:
      v10 = v1[1];
      result = **v1;
      v11 = v1[2];
      if (result < *v10)
      {
        result = *v10;
      }

      if (result < *v11)
      {
        return *v11;
      }

      break;
    case 4:
      v16 = v1[1];
      result = **v1;
      v18 = v1[2];
      v17 = v1[3];
      if (result < *v16)
      {
        result = *v16;
      }

      if (*v18 >= *v17)
      {
        v19 = *v18;
      }

      else
      {
        v19 = *v17;
      }

      if (result < v19)
      {
        return v19;
      }

      break;
    case 5:
      result = **v1;
      v6 = v1[2];
      v7 = v1[3];
      if (result < *v1[1])
      {
        result = *v1[1];
      }

      if (*v6 >= *v7)
      {
        v8 = *v6;
      }

      else
      {
        v8 = *v7;
      }

      v9 = v1[4];
      if (result < v8)
      {
        result = v8;
      }

      if (result < *v9)
      {
        return *v9;
      }

      break;
    default:
LABEL_27:
      result = **v1;
      v12 = v2 - 1;
      v13 = v1 + 1;
      do
      {
        v14 = *v13++;
        v15 = *v14;
        if (*v14 > result)
        {
          result = v15;
        }

        --v12;
      }

      while (v12);
      return result;
  }

  return result;
}

void *sub_E9210(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_2630060;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E9328(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E934C(void *result)
{
  *result = off_2630060;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E93A4(void *a1)
{
  *a1 = off_2630060;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E9418(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return NAN;
  }

  v3 = v2 - v1;
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_27;
      }

      if (**v1 == 0.0)
      {
        return 0.0;
      }

      ++v1;
    }

LABEL_24:
    result = 0.0;
    if (**v1 != 0.0)
    {
      return 1.0;
    }

    return result;
  }

  if (v3 == 3)
  {
    result = 0.0;
    if (**v1 == 0.0 || *v1[1] == 0.0)
    {
      return result;
    }

    v1 += 2;
    goto LABEL_24;
  }

  if (v3 == 4)
  {
    result = 0.0;
    if (**v1 == 0.0 || *v1[1] == 0.0 || *v1[2] == 0.0)
    {
      return result;
    }

    v1 += 3;
    goto LABEL_24;
  }

  if (v3 != 5)
  {
LABEL_27:
    if (v3 <= 1)
    {
      v3 = 1;
    }

    while (**v1 != 0.0)
    {
      ++v1;
      if (!--v3)
      {
        return 1.0;
      }
    }

    return 0.0;
  }

  result = 0.0;
  if (**v1 != 0.0 && *v1[1] != 0.0 && *v1[2] != 0.0 && *v1[3] != 0.0)
  {
    v1 += 4;
    goto LABEL_24;
  }

  return result;
}

void *sub_E9588(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_26300B0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E96A0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E96C4(void *result)
{
  *result = off_26300B0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E971C(void *a1)
{
  *a1 = off_26300B0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E9790(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return NAN;
  }

  v3 = v2 - v1;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      goto LABEL_30;
    }

    if (v3 == 2)
    {
      result = 1.0;
      if (**v1 != 0.0)
      {
        return result;
      }

      ++v1;
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (v3 == 3)
  {
    result = 1.0;
    if (**v1 == 0.0 && *v1[1] == 0.0)
    {
      v1 += 2;
      goto LABEL_30;
    }

    return result;
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {
      result = 1.0;
      if (**v1 == 0.0 && *v1[1] == 0.0 && *v1[2] == 0.0 && *v1[3] == 0.0)
      {
        v1 += 4;
LABEL_30:
        result = 0.0;
        if (**v1 != 0.0)
        {
          return 1.0;
        }

        return result;
      }

      return result;
    }

LABEL_20:
    if (v3 <= 1)
    {
      v3 = 1;
    }

    while (**v1 == 0.0)
    {
      ++v1;
      if (!--v3)
      {
        return 0.0;
      }
    }

    return 1.0;
  }

  result = 1.0;
  if (**v1 == 0.0 && *v1[1] == 0.0 && *v1[2] == 0.0)
  {
    v1 += 3;
    goto LABEL_30;
  }

  return result;
}

void *sub_E9908(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = off_2630100;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6 != *a2)
  {
    sub_E82E8((a1 + 1), (v6 - *a2) >> 3);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v6 == v5)
  {
    return a1;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 8 * v7);
    if (!v8 || (*(*v8 + 32))(v8) != 17)
    {
      break;
    }

    *(*v4 + 8 * v7) = (*(**(*a2 + 8 * v7) + 40))(*(*a2 + 8 * v7));
    ++v7;
    v5 = *a2;
    if (v7 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  a1[2] = a1[1];
  return a1;
}

void sub_E9A20(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E9A44(void *result)
{
  *result = off_2630100;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_E9A9C(void *a1)
{
  *a1 = off_2630100;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_E9B10(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return NAN;
  }

  v3 = v2 - v1;
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        return *v1[1];
      }

      else
      {
        return *v1[2];
      }
    }

    if (v3)
    {
      if (v3 == 1)
      {
        return **v1;
      }

      return **(v2 - 1);
    }

    return NAN;
  }

  if (v3 > 5)
  {
    switch(v3)
    {
      case 6:
        return *v1[5];
      case 7:
        return *v1[6];
      case 8:
        v1 += 7;
        return **v1;
    }

    return **(v2 - 1);
  }

  if (v3 == 4)
  {
    return *v1[3];
  }

  else
  {
    return *v1[4];
  }
}

uint64_t sub_E9C18(uint64_t a1, uint64_t *a2)
{
  *a1 = off_2630150;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_E9E78(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_E9EB8(void *a1)
{
  *a1 = off_2630150;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_E9F8C(void *a1)
{
  *a1 = off_2630150;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_EA090(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  v5 = 0.0;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v11 = (*(**v2 + 16))();
        v6 = v11 + (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v7 = *(*a1 + 16);
        return v6 + (*(*v7 + 16))(v7);
      case 4:
        v15 = (*(**v2 + 16))();
        v16 = v15 + (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v6 = v16 + (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v7 = *(*a1 + 24);
        return v6 + (*(*v7 + 16))(v7);
      case 5:
        v8 = (*(**v2 + 16))();
        v9 = v8 + (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v10 = v9 + (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v6 = v10 + (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        v7 = *(*a1 + 32);
        return v6 + (*(*v7 + 16))(v7);
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    return v5;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v6 = (*(**v2 + 16))();
      v7 = *(*a1 + 8);
      return v6 + (*(*v7 + 16))(v7);
    }

LABEL_11:
    if (v3 != v2)
    {
      v12 = 0;
      do
      {
        v5 = v5 + (*(**(v2 + 8 * v12) + 16))(*(v2 + 8 * v12));
        ++v12;
        v2 = *a1;
      }

      while (v12 < (a1[1] - *a1) >> 3);
    }

    return v5;
  }

  v14 = *(**v2 + 16);

  v14();
  return result;
}

uint64_t sub_EA3C8(uint64_t a1, uint64_t *a2)
{
  *a1 = off_26301A0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_EA628(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_EA668(void *a1)
{
  *a1 = off_26301A0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_EA73C(void *a1)
{
  *a1 = off_26301A0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_EA840(void *a1)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 3;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v11 = (*(**v2 + 16))();
        v4 = v11 * (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v5 = *(*a1 + 16);
        return v4 * (*(*v5 + 16))(v5);
      case 4:
        v15 = (*(**v2 + 16))();
        v16 = v15 * (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v4 = v16 * (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v5 = *(*a1 + 24);
        return v4 * (*(*v5 + 16))(v5);
      case 5:
        v6 = (*(**v2 + 16))();
        v7 = v6 * (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v8 = v7 * (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v4 = v8 * (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        v5 = *(*a1 + 32);
        return v4 * (*(*v5 + 16))(v5);
    }

    goto LABEL_13;
  }

  if (!v3)
  {
    return 0.0;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = (*(**v2 + 16))();
      v5 = *(*a1 + 8);
      return v4 * (*(*v5 + 16))(v5);
    }

LABEL_13:
    v9 = (*(**v2 + 16))();
    v12 = *a1;
    if (a1[1] - *a1 >= 9uLL)
    {
      v13 = 1;
      do
      {
        v9 = v9 * (*(**(v12 + 8 * v13) + 16))(*(v12 + 8 * v13));
        ++v13;
        v12 = *a1;
      }

      while (v13 < (a1[1] - *a1) >> 3);
    }

    return v9;
  }

  v14 = *(**v2 + 16);

  v14();
  return result;
}

uint64_t sub_EABB0(uint64_t a1, uint64_t *a2)
{
  *a1 = off_26301F0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_EAE10(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_EAE50(void *a1)
{
  *a1 = off_26301F0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_EAF24(void *a1)
{
  *a1 = off_26301F0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_EB028(void *a1)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 3;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (*(**v2 + 16))();
      v11 = v10 + (*(**(*a1 + 8) + 16))(*(*a1 + 8));
      return (v11 + (*(**(*a1 + 16) + 16))(*(*a1 + 16))) / 3.0;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        v6 = (*(**v2 + 16))();
        v7 = v6 + (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v8 = v7 + (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v9 = v8 + (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        return (v9 + (*(**(*a1 + 32) + 16))(*(*a1 + 32))) / 5.0;
      }

      return sub_EA090(a1) / ((a1[1] - *a1) >> 3);
    }

    v13 = (*(**v2 + 16))();
    v14 = v13 + (*(**(*a1 + 8) + 16))(*(*a1 + 8));
    v15 = v14 + (*(**(*a1 + 16) + 16))(*(*a1 + 16));
    return (v15 + (*(**(*a1 + 24) + 16))(*(*a1 + 24))) * 0.25;
  }

  else
  {
    if (!v3)
    {
      return 0.0;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = (*(**v2 + 16))();
        return (v4 + (*(**(*a1 + 8) + 16))(*(*a1 + 8))) * 0.5;
      }

      return sub_EA090(a1) / ((a1[1] - *a1) >> 3);
    }

    v12 = *(**v2 + 16);

    v12();
  }

  return result;
}

uint64_t sub_EB3F4(uint64_t a1, uint64_t *a2)
{
  *a1 = off_2630240;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_EB654(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_EB694(void *a1)
{
  *a1 = off_2630240;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_EB768(void *a1)
{
  *a1 = off_2630240;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_EB86C(void *a1)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 3;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v13 = (*(**v2 + 16))();
        v14 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        break;
      case 4:
        v13 = (*(**v2 + 16))();
        v14 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v19 = (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v10 = (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        if (v10 >= v19)
        {
          v10 = v19;
        }

        break;
      case 5:
        v6 = (*(**v2 + 16))();
        v7 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v8 = (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        v9 = (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        if (v9 < v8)
        {
          v8 = v9;
        }

        if (v7 < v6)
        {
          v6 = v7;
        }

        (*(**(*a1 + 32) + 16))(*(*a1 + 32));
        if (v8 >= v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v8;
        }

LABEL_34:
        if (v10 >= v11)
        {
          return v11;
        }

        else
        {
          return v10;
        }

      default:
        goto LABEL_20;
    }

    if (v14 >= v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = v14;
    }

    goto LABEL_34;
  }

  if (!v3)
  {
    return 0.0;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = (*(**v2 + 16))();
      v5 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
      if (v5 < v4)
      {
        return v5;
      }

      return v4;
    }

LABEL_20:
    v4 = (*(**v2 + 16))();
    v15 = *a1;
    if (a1[1] - *a1 >= 9uLL)
    {
      v16 = 1;
      do
      {
        v17 = (*(**(v15 + 8 * v16) + 16))(*(v15 + 8 * v16));
        if (v17 < v4)
        {
          v4 = v17;
        }

        ++v16;
        v15 = *a1;
      }

      while (v16 < (a1[1] - *a1) >> 3);
    }

    return v4;
  }

  v18 = *(**v2 + 16);

  v18();
  return result;
}

uint64_t sub_EBCA0(uint64_t a1, uint64_t *a2)
{
  *a1 = off_2630290;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_EBF00(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_EBF40(void *a1)
{
  *a1 = off_2630290;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_EC014(void *a1)
{
  *a1 = off_2630290;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_EC118(void *a1)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 3;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v6 = (*(**v2 + 16))();
        v10 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v11 = *(*a1 + 16);
        break;
      case 4:
        v19 = (*(**v2 + 16))();
        v20 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v21 = (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        if (v19 >= v20)
        {
          v14 = v19;
        }

        else
        {
          v14 = v20;
        }

        if (v21 >= v13)
        {
          v13 = v21;
        }

        goto LABEL_36;
      case 5:
        v6 = (*(**v2 + 16))();
        v7 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
        v8 = (*(**(*a1 + 16) + 16))(*(*a1 + 16));
        (*(**(*a1 + 24) + 16))(*(*a1 + 24));
        if (v6 < v7)
        {
          v6 = v7;
        }

        if (v8 >= v9)
        {
          v10 = v8;
        }

        else
        {
          v10 = v9;
        }

        v11 = *(*a1 + 32);
        break;
      default:
        goto LABEL_22;
    }

    (*(*v11 + 16))(v11);
    if (v6 >= v10)
    {
      v14 = v6;
    }

    else
    {
      v14 = v10;
    }

LABEL_36:
    if (v14 >= v13)
    {
      return v14;
    }

    else
    {
      return v13;
    }
  }

  if (!v3)
  {
    return 0.0;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = (*(**v2 + 16))();
      v5 = (*(**(*a1 + 8) + 16))(*(*a1 + 8));
      if (v4 < v5)
      {
        return v5;
      }

      return v4;
    }

LABEL_22:
    v4 = (*(**v2 + 16))();
    v15 = *a1;
    if (a1[1] - *a1 >= 9uLL)
    {
      v16 = 1;
      do
      {
        v17 = (*(**(v15 + 8 * v16) + 16))(*(v15 + 8 * v16));
        if (v17 > v4)
        {
          v4 = v17;
        }

        ++v16;
        v15 = *a1;
      }

      while (v16 < (a1[1] - *a1) >> 3);
    }

    return v4;
  }

  v18 = *(**v2 + 16);

  v18();
  return result;
}

uint64_t sub_EC528(uint64_t a1, uint64_t *a2)
{
  *a1 = off_26302E0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_EC788(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_EC7C8(void *a1)
{
  *a1 = off_26302E0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_EC89C(void *a1)
{
  *a1 = off_26302E0;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_EC9A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = 0.0;
        if ((*(**v2 + 16))() == 0.0 || (*(**(*a1 + 8) + 16))(*(*a1 + 8)) == 0.0)
        {
          return v5;
        }

        v2 = *a1 + 16;
        break;
      case 4:
        v5 = 0.0;
        if ((*(**v2 + 16))() == 0.0 || (*(**(*a1 + 8) + 16))(*(*a1 + 8)) == 0.0 || (*(**(*a1 + 16) + 16))(*(*a1 + 16)) == 0.0)
        {
          return v5;
        }

        v2 = *a1 + 24;
        break;
      case 5:
        v5 = 0.0;
        if ((*(**v2 + 16))() == 0.0 || (*(**(*a1 + 8) + 16))(*(*a1 + 8)) == 0.0 || (*(**(*a1 + 16) + 16))(*(*a1 + 16)) == 0.0 || (*(**(*a1 + 24) + 16))(*(*a1 + 24)) == 0.0)
        {
          return v5;
        }

        v2 = *a1 + 32;
        break;
      default:
        goto LABEL_25;
    }

LABEL_21:
    if ((*(**v2 + 16))() == 0.0)
    {
      return 0.0;
    }

    else
    {
      return 1.0;
    }
  }

  if (v4 == 1)
  {
    goto LABEL_21;
  }

  if (v4 == 2)
  {
    if ((*(**v2 + 16))() == 0.0)
    {
      return 0.0;
    }

    v2 = *a1 + 8;
    goto LABEL_21;
  }

LABEL_25:
  v5 = 1.0;
  if (v3 == v2)
  {
    return v5;
  }

  v7 = 0;
  while ((*(**(v2 + 8 * v7) + 16))(*(v2 + 8 * v7)) != 0.0)
  {
    ++v7;
    v2 = *a1;
    if (v7 >= (a1[1] - *a1) >> 3)
    {
      return v5;
    }
  }

  return 0.0;
}

uint64_t sub_ECCE0(uint64_t a1, uint64_t *a2)
{
  *a1 = off_2630330;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_ECF40(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_ECF80(void *a1)
{
  *a1 = off_2630330;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_ED054(void *a1)
{
  *a1 = off_2630330;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

double sub_ED158(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (v5 <= 2)
  {
    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      v7 = (*(**v3 + 16))();
      a2.n128_u64[0] = 1.0;
      if (v7 != 0.0)
      {
        return a2.n128_f64[0];
      }

      v3 = *a1 + 8;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v8 = (*(**v3 + 16))();
        a2.n128_u64[0] = 1.0;
        if (v8 != 0.0)
        {
          return a2.n128_f64[0];
        }

        v9 = (*(**(*a1 + 8) + 16))(*(*a1 + 8), 1.0);
        a2.n128_u64[0] = 1.0;
        if (v9 != 0.0)
        {
          return a2.n128_f64[0];
        }

        v3 = *a1 + 16;
        break;
      case 4:
        v10 = (*(**v3 + 16))();
        a2.n128_u64[0] = 1.0;
        if (v10 != 0.0)
        {
          return a2.n128_f64[0];
        }

        if ((*(**(*a1 + 8) + 16))(*(*a1 + 8), 1.0) != 0.0)
        {
          a2.n128_u64[0] = 1.0;
          return a2.n128_f64[0];
        }

        v12 = (*(**(*a1 + 16) + 16))(*(*a1 + 16)) == 0.0;
        a2.n128_u64[0] = 1.0;
        if (!v12)
        {
          return a2.n128_f64[0];
        }

        v3 = *a1 + 24;
        break;
      case 5:
        v6 = (*(**v3 + 16))();
        a2.n128_u64[0] = 1.0;
        if (v6 != 0.0)
        {
          return a2.n128_f64[0];
        }

        if ((*(**(*a1 + 8) + 16))(*(*a1 + 8), 1.0) != 0.0 || (*(**(*a1 + 16) + 16))(*(*a1 + 16)) != 0.0)
        {
          goto LABEL_8;
        }

        v12 = (*(**(*a1 + 24) + 16))(*(*a1 + 24)) == 0.0;
        a2.n128_u64[0] = 1.0;
        if (!v12)
        {
          return a2.n128_f64[0];
        }

        v3 = *a1 + 32;
        break;
      default:
LABEL_19:
        a2.n128_u64[0] = 0;
        if (v4 == v3)
        {
          return a2.n128_f64[0];
        }

        v11 = 0;
        while (1)
        {
          a2.n128_f64[0] = (*(**(v3 + 8 * v11) + 16))(*(v3 + 8 * v11), a2);
          if (a2.n128_f64[0] != 0.0)
          {
            break;
          }

          ++v11;
          v3 = *a1;
          if (v11 >= (a1[1] - *a1) >> 3)
          {
            a2.n128_u64[0] = 0;
            return a2.n128_f64[0];
          }
        }

LABEL_8:
        a2.n128_u64[0] = 1.0;
        return a2.n128_f64[0];
    }
  }

  v12 = (*(**v3 + 16))(a2) == 0.0;
  a2.n128_u64[0] = 0;
  if (!v12)
  {
    a2.n128_f64[0] = 1.0;
  }

  return a2.n128_f64[0];
}

uint64_t sub_ED4D0(uint64_t a1, uint64_t *a2)
{
  *a1 = off_2630380;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v5 = a2[1] - *a2;
  v6 = v5 >> 3;
  if (v5)
  {
    sub_E5A8C(a1 + 8, v5 >> 3);
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = (a2[1] - *a2) >> 3;
    v8 = v6 >= &v7[-v5];
    v9 = v6 - &v7[-v5];
    if (v6 > &v7[-v5])
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v8)
    {
      *(a1 + 40) = v5 + v6;
    }

    v11 = *a2;
    if (a2[1] == *a2)
    {
      return a1;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v8 = 1;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = *(a1 + 48);
  if (v10 - v7 < v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v7[v9];
  bzero(v7, v9);
  *(a1 + 40) = v12;
  v11 = *a2;
  if (a2[1] == *a2)
  {
    return a1;
  }

LABEL_12:
  v13 = 0;
  while (1)
  {
    v15 = *(v11 + 8 * v13);
    v16 = *v4;
    if (!v15)
    {
      break;
    }

    *(v16 + 8 * v13) = v15;
    v14 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
    *(*(a1 + 32) + v13++) = v14;
    v11 = *a2;
    if (v13 >= (a2[1] - *a2) >> 3)
    {
      return a1;
    }
  }

  *(a1 + 16) = v16;
  *(a1 + 40) = *(a1 + 32);
  return a1;
}

void sub_ED730(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_ED770(void *a1)
{
  *a1 = off_2630380;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_ED844(void *a1)
{
  *a1 = off_2630380;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5 && *(a1[4] + v4))
      {
        (*(*v5 + 8))(v5);
        v3[v4] = 0;
        v3 = a1[1];
        v2 = a1[2];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
    v3 = a1[1];
  }

  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t *sub_ED948(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  v4 = v3 - *result;
  v5 = v4 >> 3;
  if (v4 >> 3 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        (*(**v2 + 16))();
        (*(**(*v1 + 8) + 16))(*(*v1 + 8));
        (*(**(*v1 + 16) + 16))(*(*v1 + 16));
        v2 = *v1 + 24;
        goto LABEL_26;
      }

      if (v5 == 5)
      {
        (*(**v2 + 16))();
        (*(**(*v1 + 8) + 16))(*(*v1 + 8));
        (*(**(*v1 + 16) + 16))(*(*v1 + 16));
        (*(**(*v1 + 24) + 16))(*(*v1 + 24));
        v2 = *v1 + 32;
        goto LABEL_26;
      }
    }

    else
    {
      switch(v5)
      {
        case 6:
          (*(**v2 + 16))();
          (*(**(*v1 + 8) + 16))(*(*v1 + 8));
          (*(**(*v1 + 16) + 16))(*(*v1 + 16));
          (*(**(*v1 + 24) + 16))(*(*v1 + 24));
          (*(**(*v1 + 32) + 16))(*(*v1 + 32));
          v2 = *v1 + 40;
          goto LABEL_26;
        case 7:
          (*(**v2 + 16))();
          (*(**(*v1 + 8) + 16))(*(*v1 + 8));
          (*(**(*v1 + 16) + 16))(*(*v1 + 16));
          (*(**(*v1 + 24) + 16))(*(*v1 + 24));
          (*(**(*v1 + 32) + 16))(*(*v1 + 32));
          (*(**(*v1 + 40) + 16))(*(*v1 + 40));
          v2 = *v1 + 48;
          goto LABEL_26;
        case 8:
          (*(**v2 + 16))();
          (*(**(*v1 + 8) + 16))(*(*v1 + 8));
          (*(**(*v1 + 16) + 16))(*(*v1 + 16));
          (*(**(*v1 + 24) + 16))(*(*v1 + 24));
          (*(**(*v1 + 32) + 16))(*(*v1 + 32));
          (*(**(*v1 + 40) + 16))(*(*v1 + 40));
          (*(**(*v1 + 48) + 16))(*(*v1 + 48));
          v2 = *v1 + 56;
          goto LABEL_26;
      }
    }

LABEL_22:
    if (v4 != 8)
    {
      v6 = 0;
      do
      {
        (*(**(v2 + 8 * v6) + 16))(*(v2 + 8 * v6));
        ++v6;
        v2 = *v1;
        v3 = v1[1];
      }

      while (v6 < ((v3 - *v1) >> 3) - 1);
    }

    v2 = v3 - 8;
    goto LABEL_26;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      (*(**v2 + 16))();
      v2 = *v1 + 8;
      goto LABEL_26;
    }

    if (v5 == 3)
    {
      (*(**v2 + 16))();
      (*(**(*v1 + 8) + 16))(*(*v1 + 8));
      v2 = *v1 + 16;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v5)
  {
    return result;
  }

  if (v5 != 1)
  {
    goto LABEL_22;
  }

LABEL_26:
  v7 = *(**v2 + 16);

  return v7();
}

uint64_t sub_EDF78(uint64_t a1, uint64_t a2, const void **a3)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v171[0] = 1;
  v172 = a1;
  v173 = a2;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    if (v19 + 54 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v19 + 54 > 0x16)
    {
      operator new();
    }

    qmemcpy(v162, "ERR023 - Expected a '(' at start of function call to '", 54);
    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    memmove(&v162[54], v20, v19);
    v162[v19 + 54] = 0;
    v21 = std::string::append(v162, "', instead got: '", 0x11uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    *&v162[48] = *(&v21->__r_.__value_.__l + 2);
    *&v162[32] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = *(a1 + 135);
    if (v23 >= 0)
    {
      v24 = (a1 + 112);
    }

    else
    {
      v24 = *(a1 + 112);
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 135);
    }

    else
    {
      v25 = *(a1 + 120);
    }

    v26 = std::string::append(&v162[32], v24, v25);
    v151 = a1 + 104;
    v155 = a1;
    v27 = *&v26->__r_.__value_.__l.__data_;
    *&v163[16] = *(&v26->__r_.__value_.__l + 2);
    *v163 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(v163, "'", 1uLL);
    v29 = *&v28->__r_.__value_.__l.__data_;
    *&v163[48] = *(&v28->__r_.__value_.__l + 2);
    *&v163[32] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = 21258;
    memset(&v159, 0, sizeof(v159));
    do
    {
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        v35 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v159.__r_.__value_.__l.__size_ == v35)
        {
          if ((v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_45:
          operator new();
        }

        size = v159.__r_.__value_.__l.__size_;
        v32 = v159.__r_.__value_.__r.__words[0];
        ++v159.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v159.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_45;
        }

        size = HIBYTE(v159.__r_.__value_.__r.__words[2]);
        *(&v159.__r_.__value_.__s + 23) = (*(&v159.__r_.__value_.__s + 23) + 1) & 0x7F;
        v32 = &v159;
      }

      v33 = v32 + size;
      *v33 = (v30 % 0xA) | 0x30;
      v33[1] = 0;
      v34 = v30 > 9;
      v30 /= 0xAu;
    }

    while (v34);
    v36 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    v37 = &v159;
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v159.__r_.__value_.__l.__size_;
      v37 = v159.__r_.__value_.__r.__words[0];
    }

    if (v36)
    {
      v38 = (v37 + v36 - 1);
      if (v38 > v37)
      {
        v39 = &v37->__r_.__value_.__s.__data_[1];
        do
        {
          v40 = *(v39 - 1);
          *(v39 - 1) = v38->__r_.__value_.__s.__data_[0];
          v38->__r_.__value_.__s.__data_[0] = v40;
          v38 = (v38 - 1);
          v41 = v39++ >= v38;
        }

        while (!v41);
      }
    }

    v42 = std::string::insert(&v159, 0, "exprtk.hpp:", 0xBuLL);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v161 = v42->__r_.__value_.__r.__words[2];
    *v160 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v151, &v163[32], v160, &v163[64]);
    v44 = v155[71];
    v45 = v155[70];
    v46 = 30 * ((v44 - v45) >> 3) - 1;
    if (v44 == v45)
    {
      v46 = 0;
    }

    if (v46 == v155[74] + v155[73])
    {
      sub_C35C4(v155 + 69);
      v45 = v155[70];
      v44 = v155[71];
    }

    if (v44 == v45)
    {
      v48 = 0;
    }

    else
    {
      v47 = v155[74] + v155[73];
      v48 = *(v45 + 8 * (v47 / 0x1E)) + 136 * (v47 % 0x1E);
    }

    sub_C398C(v48, &v163[64]);
    ++v155[74];
    if (v170 < 0)
    {
      operator delete(__p);
      if ((v168 & 0x80000000) == 0)
      {
LABEL_71:
        if ((v166 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_82;
      }
    }

    else if ((v168 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    operator delete(v167);
    if ((v166 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v164 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_83;
    }

LABEL_82:
    operator delete(v165);
    if ((v164 & 0x80000000) == 0)
    {
LABEL_73:
      if ((SHIBYTE(v161) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_84;
    }

LABEL_83:
    operator delete(*&v163[72]);
    if ((SHIBYTE(v161) & 0x80000000) == 0)
    {
LABEL_74:
      if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_85;
    }

LABEL_84:
    operator delete(v160[0]);
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((v163[55] & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_86;
    }

LABEL_85:
    operator delete(v159.__r_.__value_.__l.__data_);
    if ((v163[55] & 0x80000000) == 0)
    {
LABEL_76:
      if ((v163[23] & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_87;
    }

LABEL_86:
    operator delete(*&v163[32]);
    if ((v163[23] & 0x80000000) == 0)
    {
LABEL_77:
      if ((v162[55] & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_88;
    }

LABEL_87:
    operator delete(*v163);
    if ((v162[55] & 0x80000000) == 0)
    {
LABEL_78:
      if ((v162[23] & 0x80000000) == 0)
      {
        goto LABEL_258;
      }

LABEL_89:
      v51 = *v162;
LABEL_257:
      operator delete(v51);
      goto LABEL_258;
    }

LABEL_88:
    operator delete(*&v162[32]);
    if ((v162[23] & 0x80000000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_89;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) != v14)
  {
    *(a1 + 24) = v14 + 10;
    v15 = (v14 + 2);
    v16 = *v14;
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_92;
    }

    v17 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_61:
    if ((v17 & 0x80u) == 0)
    {
      v49 = v15;
    }

    else
    {
      v49 = *v15;
    }

    if ((v17 & 0x80u) == 0)
    {
      v50 = v17;
    }

    else
    {
      v50 = *(v14 + 2);
    }

    sub_13B38(a1 + 112, v49, v50);
    goto LABEL_91;
  }

  v14 = (a1 + 40);
  *(a1 + 104) = *(a1 + 40);
  v15 = (a1 + 48);
  v17 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_61;
  }

LABEL_19:
  if ((v17 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v15, *(v14 + 2));
  }

  else
  {
    v18 = *v15;
    *(a1 + 128) = v15[2];
    *(a1 + 112) = v18;
  }

LABEL_91:
  v16 = *v13;
LABEL_92:
  *(a1 + 136) = *(v14 + 4);
  if (v16 == 41)
  {
    if (*(a3 + 23) >= 0)
    {
      v52 = *(a3 + 23);
    }

    else
    {
      v52 = a3[1];
    }

    if (v52 + 66 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v52 + 66 > 0x16)
    {
      operator new();
    }

    qmemcpy(v163, "ERR024 - Expected at least one input parameter for function call '", 66);
    if (*(a3 + 23) >= 0)
    {
      v59 = a3;
    }

    else
    {
      v59 = *a3;
    }

    memmove(&v163[66], v59, v52);
    v152 = a1 + 104;
    v156 = a1;
    v163[v52 + 66] = 0;
    v60 = std::string::append(v163, "'", 1uLL);
    v61 = *&v60->__r_.__value_.__l.__data_;
    *&v163[48] = *(&v60->__r_.__value_.__l + 2);
    *&v163[32] = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    v62 = 21269;
    memset(v162, 0, 24);
    do
    {
      if ((v162[23] & 0x80000000) != 0)
      {
        v66 = (*&v162[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (*&v162[8] == v66)
        {
          if ((*&v162[16] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_118:
          operator new();
        }

        v63 = *&v162[8];
        v64 = *v162;
        ++*&v162[8];
      }

      else
      {
        if (v162[23] == 22)
        {
          goto LABEL_118;
        }

        v63 = v162[23];
        v162[23] = (v162[23] + 1) & 0x7F;
        v64 = v162;
      }

      v65 = &v64[v63];
      *v65 = (v62 % 0xA) | 0x30;
      v65[1] = 0;
      v34 = v62 > 9;
      v62 /= 0xAu;
    }

    while (v34);
    v67 = v162[23];
    v68 = v162;
    if (v162[23] < 0)
    {
      v67 = *&v162[8];
      v68 = *v162;
    }

    if (v67)
    {
      v69 = &v68[v67 - 1];
      if (v69 > v68)
      {
        v70 = v68 + 1;
        do
        {
          v71 = *(v70 - 1);
          *(v70 - 1) = *v69;
          *v69-- = v71;
          v41 = v70++ >= v69;
        }

        while (!v41);
      }
    }

    v72 = std::string::insert(v162, 0, "exprtk.hpp:", 0xBuLL);
    v73 = v156;
    v74 = *&v72->__r_.__value_.__l.__data_;
    *&v162[48] = *(&v72->__r_.__value_.__l + 2);
    *&v162[32] = v74;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v152, &v163[32], &v162[32], &v163[64]);
    v75 = v156[71];
    v76 = v156[70];
    v77 = 30 * ((v75 - v76) >> 3) - 1;
    if (v75 == v76)
    {
      v77 = 0;
    }

    if (v77 == v156[74] + v156[73])
    {
      sub_C35C4(v156 + 69);
      v76 = v156[70];
      v75 = v156[71];
    }

    if (v75 == v76)
    {
      v79 = 0;
    }

    else
    {
      v78 = v156[74] + v156[73];
      v79 = *(v76 + 8 * (v78 / 0x1E)) + 136 * (v78 % 0x1E);
    }

    goto LABEL_240;
  }

  v53 = sub_C5A5C(a1, 0);
  *a2 = v53;
  if (!v53)
  {
    goto LABEL_258;
  }

  v54 = (a1 + 40);
  v55 = (a1 + 48);
  v56 = (a1 + 112);
  if (*v13 != 44)
  {
    if (*v13 == 41)
    {
      v57 = 1;
      goto LABEL_103;
    }

    goto LABEL_206;
  }

  v80 = *(a1 + 24);
  if (*(a1 + 8) == v80)
  {
    *v13 = *v54;
    v81 = (a1 + 48);
    v80 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v80 + 40;
    v81 = (v80 + 8);
    *(a1 + 104) = *v80;
    if (v13 == v80)
    {
      goto LABEL_162;
    }
  }

  v84 = *(v80 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v84 >= 0)
    {
      v88 = v81;
    }

    else
    {
      v88 = *v81;
    }

    if (v84 >= 0)
    {
      v89 = *(v80 + 31);
    }

    else
    {
      v89 = *(v80 + 16);
    }

    sub_13B38(a1 + 112, v88, v89);
  }

  else if ((*(v80 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v81, *(v80 + 16));
  }

  else
  {
    v85 = *v81;
    *(a1 + 128) = v81[2];
    *v56 = v85;
  }

LABEL_162:
  *(a1 + 136) = *(v80 + 32);
  v90 = sub_C5A5C(a1, 0);
  *(a2 + 8) = v90;
  if (!v90)
  {
    goto LABEL_258;
  }

  if (*v13 == 41)
  {
    v57 = 2;
    goto LABEL_103;
  }

  if (*v13 != 44)
  {
    goto LABEL_206;
  }

  v91 = *(a1 + 24);
  if (*(a1 + 8) == v91)
  {
    *v13 = *v54;
    v92 = (a1 + 48);
    v91 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v91 + 40;
    v92 = (v91 + 8);
    *(a1 + 104) = *v91;
    if (v13 == v91)
    {
      goto LABEL_181;
    }
  }

  v93 = *(v91 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v93 >= 0)
    {
      v95 = v92;
    }

    else
    {
      v95 = *v92;
    }

    if (v93 >= 0)
    {
      v96 = *(v91 + 31);
    }

    else
    {
      v96 = *(v91 + 16);
    }

    sub_13B38(a1 + 112, v95, v96);
  }

  else if ((*(v91 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v92, *(v91 + 16));
  }

  else
  {
    v94 = *v92;
    *(a1 + 128) = v92[2];
    *v56 = v94;
  }

LABEL_181:
  *(a1 + 136) = *(v91 + 32);
  v97 = sub_C5A5C(a1, 0);
  *(a2 + 16) = v97;
  if (!v97)
  {
    goto LABEL_258;
  }

  if (*v13 == 41)
  {
    v57 = 3;
    goto LABEL_103;
  }

  if (*v13 != 44)
  {
    goto LABEL_206;
  }

  v98 = *(a1 + 24);
  if (*(a1 + 8) == v98)
  {
    *v13 = *v54;
    v99 = (a1 + 48);
    v98 = a1 + 40;
LABEL_189:
    v100 = *(v98 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v100 >= 0)
      {
        v102 = v99;
      }

      else
      {
        v102 = *v99;
      }

      if (v100 >= 0)
      {
        v103 = *(v98 + 31);
      }

      else
      {
        v103 = *(v98 + 16);
      }

      sub_13B38(a1 + 112, v102, v103);
    }

    else if ((*(v98 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v99, *(v98 + 16));
    }

    else
    {
      v101 = *v99;
      *(a1 + 128) = v99[2];
      *v56 = v101;
    }

    goto LABEL_200;
  }

  *(a1 + 24) = v98 + 40;
  v99 = (v98 + 8);
  *(a1 + 104) = *v98;
  if (v13 != v98)
  {
    goto LABEL_189;
  }

LABEL_200:
  *(a1 + 136) = *(v98 + 32);
  v104 = sub_C5A5C(a1, 0);
  *(a2 + 24) = v104;
  if (!v104)
  {
    goto LABEL_258;
  }

  if (*v13 != 41)
  {
    if (*v13 == 44)
    {
      v105 = *(a1 + 24);
      if (*(a1 + 8) == v105)
      {
        *v13 = *v54;
        v105 = a1 + 40;
      }

      else
      {
        *(a1 + 24) = v105 + 40;
        v55 = (v105 + 8);
        *(a1 + 104) = *v105;
        if (v13 == v105)
        {
LABEL_273:
          *(a1 + 136) = *(v105 + 32);
          if ((v171[0] & 1) == 0)
          {
            v57 = 5;
            goto LABEL_259;
          }

          if (*(a3 + 23) >= 0)
          {
            v131 = *(a3 + 23);
          }

          else
          {
            v131 = a3[1];
          }

          if (v131 + 64 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          v154 = a1 + 104;
          v158 = a1;
          if (v131 + 64 > 0x16)
          {
            operator new();
          }

          qmemcpy(v163, "ERR026 - Invalid number of input parameters passed to function '", 64);
          if (*(a3 + 23) >= 0)
          {
            v132 = a3;
          }

          else
          {
            v132 = *a3;
          }

          memmove(&v163[64], v132, v131);
          v163[v131 + 64] = 0;
          v133 = std::string::append(v163, "'", 1uLL);
          v134 = *&v133->__r_.__value_.__l.__data_;
          *&v163[48] = *(&v133->__r_.__value_.__l + 2);
          *&v163[32] = v134;
          v133->__r_.__value_.__l.__size_ = 0;
          v133->__r_.__value_.__r.__words[2] = 0;
          v133->__r_.__value_.__r.__words[0] = 0;
          v135 = 21307;
          memset(v162, 0, 24);
          do
          {
            if ((v162[23] & 0x80000000) != 0)
            {
              v139 = (*&v162[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (*&v162[8] == v139)
              {
                if ((*&v162[16] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  sub_3244();
                }

LABEL_293:
                operator new();
              }

              v136 = *&v162[8];
              v137 = *v162;
              ++*&v162[8];
            }

            else
            {
              if (v162[23] == 22)
              {
                goto LABEL_293;
              }

              v136 = v162[23];
              v162[23] = (v162[23] + 1) & 0x7F;
              v137 = v162;
            }

            v138 = &v137[v136];
            *v138 = (v135 % 0xA) | 0x30;
            v138[1] = 0;
            v34 = v135 > 9;
            v135 /= 0xAu;
          }

          while (v34);
          v140 = v162[23];
          v141 = v162;
          if (v162[23] < 0)
          {
            v140 = *&v162[8];
            v141 = *v162;
          }

          if (v140)
          {
            v142 = &v141[v140 - 1];
            if (v142 > v141)
            {
              v143 = v141 + 1;
              do
              {
                v144 = *(v143 - 1);
                *(v143 - 1) = *v142;
                *v142-- = v144;
                v41 = v143++ >= v142;
              }

              while (!v41);
            }
          }

          v145 = std::string::insert(v162, 0, "exprtk.hpp:", 0xBuLL);
          v73 = v158;
          v146 = *&v145->__r_.__value_.__l.__data_;
          *&v162[48] = *(&v145->__r_.__value_.__l + 2);
          *&v162[32] = v146;
          v145->__r_.__value_.__l.__size_ = 0;
          v145->__r_.__value_.__r.__words[2] = 0;
          v145->__r_.__value_.__r.__words[0] = 0;
          sub_C3328(1, v154, &v163[32], &v162[32], &v163[64]);
          v147 = v158[71];
          v148 = v158[70];
          v149 = 30 * ((v147 - v148) >> 3) - 1;
          if (v147 == v148)
          {
            v149 = 0;
          }

          if (v149 == v158[74] + v158[73])
          {
            sub_C35C4(v158 + 69);
            v148 = v158[70];
            v147 = v158[71];
          }

          if (v147 == v148)
          {
            v79 = 0;
          }

          else
          {
            v150 = v158[74] + v158[73];
            v79 = *(v148 + 8 * (v150 / 0x1E)) + 136 * (v150 % 0x1E);
          }

LABEL_240:
          sub_C398C(v79, &v163[64]);
          ++v73[74];
          if (v170 < 0)
          {
            operator delete(__p);
            if ((v168 & 0x80000000) == 0)
            {
LABEL_242:
              if ((v166 & 0x80000000) == 0)
              {
                goto LABEL_243;
              }

              goto LABEL_251;
            }
          }

          else if ((v168 & 0x80000000) == 0)
          {
            goto LABEL_242;
          }

          operator delete(v167);
          if ((v166 & 0x80000000) == 0)
          {
LABEL_243:
            if ((v164 & 0x80000000) == 0)
            {
              goto LABEL_244;
            }

            goto LABEL_252;
          }

LABEL_251:
          operator delete(v165);
          if ((v164 & 0x80000000) == 0)
          {
LABEL_244:
            if ((v162[55] & 0x80000000) == 0)
            {
              goto LABEL_245;
            }

            goto LABEL_253;
          }

LABEL_252:
          operator delete(*&v163[72]);
          if ((v162[55] & 0x80000000) == 0)
          {
LABEL_245:
            if ((v162[23] & 0x80000000) == 0)
            {
              goto LABEL_246;
            }

            goto LABEL_254;
          }

LABEL_253:
          operator delete(*&v162[32]);
          if ((v162[23] & 0x80000000) == 0)
          {
LABEL_246:
            if ((v163[55] & 0x80000000) == 0)
            {
              goto LABEL_247;
            }

            goto LABEL_255;
          }

LABEL_254:
          operator delete(*v162);
          if ((v163[55] & 0x80000000) == 0)
          {
LABEL_247:
            if ((v163[23] & 0x80000000) != 0)
            {
              goto LABEL_256;
            }

            goto LABEL_258;
          }

LABEL_255:
          operator delete(*&v163[32]);
          if ((v163[23] & 0x80000000) != 0)
          {
LABEL_256:
            v51 = *v163;
            goto LABEL_257;
          }

LABEL_258:
          v57 = 0;
          goto LABEL_259;
        }
      }

      v127 = *(v105 + 31);
      if (*(a1 + 135) < 0)
      {
        if (v127 >= 0)
        {
          v129 = v55;
        }

        else
        {
          v129 = *v55;
        }

        if (v127 >= 0)
        {
          v130 = *(v105 + 31);
        }

        else
        {
          v130 = *(v105 + 16);
        }

        sub_13B38(a1 + 112, v129, v130);
      }

      else if ((*(v105 + 31) & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v55, *(v105 + 16));
      }

      else
      {
        v128 = *v55;
        *(a1 + 128) = v55[2];
        *v56 = v128;
      }

      goto LABEL_273;
    }

LABEL_206:
    if (*(a1 + 135) >= 0)
    {
      v106 = *(a1 + 135);
    }

    else
    {
      v106 = *(a1 + 120);
    }

    if (v106 + 73 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v106 + 73 > 0x16)
    {
      operator new();
    }

    qmemcpy(v163, "ERR025 - Expected a ',' between function input parameters, instead got: '", 73);
    if (*(a1 + 135) >= 0)
    {
      v107 = (a1 + 112);
    }

    else
    {
      v107 = *(a1 + 112);
    }

    memmove(&v163[73], v107, v106);
    v153 = a1 + 104;
    v157 = a1;
    v163[v106 + 73] = 0;
    v108 = std::string::append(v163, "'", 1uLL);
    v109 = *&v108->__r_.__value_.__l.__data_;
    *&v163[48] = *(&v108->__r_.__value_.__l + 2);
    *&v163[32] = v109;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    v110 = 21295;
    memset(v162, 0, 24);
    do
    {
      if ((v162[23] & 0x80000000) != 0)
      {
        v114 = (*&v162[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (*&v162[8] == v114)
        {
          if ((*&v162[16] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_224:
          operator new();
        }

        v111 = *&v162[8];
        v112 = *v162;
        ++*&v162[8];
      }

      else
      {
        if (v162[23] == 22)
        {
          goto LABEL_224;
        }

        v111 = v162[23];
        v162[23] = (v162[23] + 1) & 0x7F;
        v112 = v162;
      }

      v113 = &v112[v111];
      *v113 = (v110 % 0xA) | 0x30;
      v113[1] = 0;
      v34 = v110 > 9;
      v110 /= 0xAu;
    }

    while (v34);
    v115 = v162[23];
    v116 = v162;
    if (v162[23] < 0)
    {
      v115 = *&v162[8];
      v116 = *v162;
    }

    if (v115)
    {
      v117 = &v116[v115 - 1];
      if (v117 > v116)
      {
        v118 = v116 + 1;
        do
        {
          v119 = *(v118 - 1);
          *(v118 - 1) = *v117;
          *v117-- = v119;
          v41 = v118++ >= v117;
        }

        while (!v41);
      }
    }

    v120 = std::string::insert(v162, 0, "exprtk.hpp:", 0xBuLL);
    v73 = v157;
    v121 = *&v120->__r_.__value_.__l.__data_;
    *&v162[48] = *(&v120->__r_.__value_.__l + 2);
    *&v162[32] = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v153, &v163[32], &v162[32], &v163[64]);
    v122 = v157[71];
    v123 = v157[70];
    v124 = 30 * ((v122 - v123) >> 3) - 1;
    if (v122 == v123)
    {
      v124 = 0;
    }

    if (v124 == v157[74] + v157[73])
    {
      sub_C35C4(v157 + 69);
      v123 = v157[70];
      v122 = v157[71];
    }

    if (v122 == v123)
    {
      v79 = 0;
    }

    else
    {
      v125 = v157[74] + v157[73];
      v79 = *(v123 + 8 * (v125 / 0x1E)) + 136 * (v125 % 0x1E);
    }

    goto LABEL_240;
  }

  v57 = 4;
LABEL_103:
  v58 = *(a1 + 24);
  if (*(a1 + 8) == v58)
  {
    *v13 = *v54;
LABEL_138:
    v82 = *(v54 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v82 >= 0)
      {
        v86 = v55;
      }

      else
      {
        v86 = *v55;
      }

      if (v82 >= 0)
      {
        v87 = *(v54 + 31);
      }

      else
      {
        v87 = *(v54 + 2);
      }

      sub_13B38(a1 + 112, v86, v87);
    }

    else if ((*(v54 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v55, *(v54 + 2));
    }

    else
    {
      v83 = *v55;
      *(a1 + 128) = v55[2];
      *v56 = v83;
    }

    goto LABEL_160;
  }

  *(a1 + 24) = v58 + 10;
  v55 = (v58 + 2);
  *(a1 + 104) = *v58;
  v54 = v58;
  if (v13 != v58)
  {
    goto LABEL_138;
  }

LABEL_160:
  *(a1 + 136) = *(v54 + 4);
  v171[0] = 0;
LABEL_259:
  sub_F0508(v171);
  return v57;
}

void sub_EF5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a51 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a44 & 0x80000000) == 0)
    {
LABEL_10:
      sub_F0508(v53 - 120);
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a39);
    sub_F0508(v53 - 120);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_EF888(uint64_t a1, int *a2, uint64_t *a3)
{
  result = *a3;
  if (!*a3)
  {
    return result;
  }

  v7 = (*(*result + 32))(result);
  result = *a3;
  if (v7 == 1)
  {
    return result;
  }

  if (result)
  {
    if ((*(*result + 32))(result) == 142)
    {
      return 0;
    }

    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 143)
      {
        return 0;
      }

      if (*a3 && (*(**a3 + 32))(*a3) == 2)
      {

        return sub_F07AC(a1, a2, a3);
      }
    }
  }

  v8 = *a2;
  v9 = (*a2 - 34) > 0x2E || ((1 << (*a2 - 34)) & 0x7EF8FF9DFFFFLL) == 0;
  if (!v9 && *a3)
  {
    if ((*(**a3 + 32))(*a3) == 17)
    {

      return sub_F0B1C(a1, a2, a3);
    }

    v8 = *a2;
  }

  v10 = v8 - 34;
  if (v10 <= 0x2E && ((1 << v10) & 0x7EF8FF9DFFFFLL) != 0 && *a3 && ((v11 = (*(**a3 + 32))(*a3), (v11 - 124) <= 0x11) ? (v12 = ((1 << (v11 - 124)) & 0x3C5E1) == 0) : (v12 = 1), !v12))
  {

    return sub_F1478(a1, a2);
  }

  else
  {

    return sub_F1D34(a1, a2);
  }
}

const void *sub_EFB10(uint64_t a1, int *a2, uint64_t *a3)
{
  if (*a3)
  {
    v3 = a3[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v8 = sub_11CC78(a1, a2, a3);
  if (v8)
  {
    return 0;
  }

  if (sub_11CE08(a1, a2, a3))
  {
    return 0;
  }

  if (*a3 && (*(**a3 + 32))(*a3) == 142)
  {
    return 0;
  }

  v9 = a3[1];
  if (v9 && (*(*v9 + 32))(v9) == 142)
  {
    return 0;
  }

  if (*a3 && (*(**a3 + 32))(*a3) == 143)
  {
    return 0;
  }

  v10 = a3[1];
  if (v10 && (*(*v10 + 32))(v10) == 143)
  {
    return 0;
  }

  v11 = *a2;
  if (*a2 == 92)
  {

    sub_11D380(a1, a3);
  }

  if (v11 == 81)
  {

    return sub_11D018(a1, a2, a3);
  }

  if ((v11 - 82) <= 4 && sub_12E884(*(a1 + 80) + 184, a2))
  {

    return sub_11D890(a1, a2, a3);
  }

  if (sub_11E1D4(a1, a2, a3))
  {

    return sub_11E2C8(a1, a2, a3);
  }

  if (sub_11ECC0(a1, a2, a3))
  {

    return sub_11EDB0(a1, a2, a3);
  }

  if (sub_11F41C(a1, a2, a3))
  {
    sub_12A2C0(*(a1 + 8), a3);
    return 0;
  }

  if (sub_11F498(a1, a3))
  {

    return sub_11F520(a1, a2, a3);
  }

  if (sub_11FCBC(a1, a2, a3))
  {

    return sub_11FE88(a1, a3);
  }

  v13 = 0;
  if (sub_1200EC(a1, a2, a3, &v13))
  {
    return v13;
  }

  v13 = 0;
  if (sub_1201D0(a1, a2, a3))
  {
    result = sub_120338(a1, a2, a3);
LABEL_62:
    v13 = result;
    goto LABEL_63;
  }

  v12 = sub_121164(a1, a2, a3);
  result = v13;
  if (v12 && !v13)
  {
    result = sub_1212CC(a1, a2, a3);
    goto LABEL_62;
  }

LABEL_63:
  if (!result)
  {
    if (sub_121F6C(a1, a2, a3))
    {
      return sub_122058(a1, a2, a3);
    }

    else if (sub_122538(a1, a2, a3))
    {
      return sub_122618(a1, a2, a3);
    }

    else if (sub_12365C(a1, a2, a3))
    {
      return sub_123728(a1, a2, a3);
    }

    else if (sub_124818(a1, a2, a3))
    {
      return sub_1248F8(a1, a2, a3);
    }

    else if (sub_1250D0(a1, a2, a3))
    {
      return sub_12519C(a1, a2, a3);
    }

    else if (sub_12598C(a1, a2, a3))
    {
      return sub_125A58(a1, a2, a3);
    }

    else if (sub_12605C(a1, a2, a3))
    {
      return sub_126128(a1, a2, a3);
    }

    else
    {
      return sub_127D9C(a1, a2, a3);
    }
  }

  return result;
}

uint64_t *sub_F011C(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 23);
      v6 = a2[1];
      v7 = (v5 & 0x80u) == 0 ? *(a2 + 23) : a2[1];
      v8 = *(v3 + 55);
      v9 = v3[5];
      v10 = (v8 & 0x80u) == 0 ? *(v3 + 55) : v3[5];
      v11 = v10 >= v7 ? v7 : v10;
      if (v11)
      {
        break;
      }

LABEL_25:
      if ((v5 & 0x80u) == 0)
      {
        v17 = v5;
      }

      else
      {
        v17 = v6;
      }

      if ((v8 & 0x80u) == 0)
      {
        v18 = v8;
      }

      else
      {
        v18 = v9;
      }

      if (v17 >= v18)
      {
        goto LABEL_34;
      }

LABEL_3:
      v2 = v3;
      v3 = *v3;
      if (!v3)
      {
        return v2;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = *(a2 + 23) >= 0 ? a2 : *a2;
      v14 = __tolower(*(v13 + v12));
      v15 = *(v3 + 55) >= 0 ? (v3 + 4) : v3[4];
      v16 = __tolower(*(v15 + v12));
      if (v14 > v16)
      {
        break;
      }

      if (v14 < v16)
      {
        goto LABEL_3;
      }

      if (v11 == ++v12)
      {
        v5 = *(a2 + 23);
        v6 = a2[1];
        v8 = *(v3 + 55);
        v9 = v3[5];
        goto LABEL_25;
      }
    }

    v8 = *(v3 + 55);
    v9 = v3[5];
    v5 = *(a2 + 23);
    v6 = a2[1];
LABEL_34:
    v19 = (v8 & 0x80u) == 0 ? v8 : v9;
    v20 = (v5 & 0x80u) == 0 ? v5 : v6;
    v21 = v20 >= v19 ? v19 : v20;
    if (v21)
    {
      break;
    }

LABEL_55:
    if ((v8 & 0x80u) != 0)
    {
      v8 = v9;
    }

    if ((v5 & 0x80u) != 0)
    {
      v5 = v6;
    }

    if (v8 >= v5)
    {
      goto LABEL_62;
    }

LABEL_60:
    v3 = v3[1];
    if (!v3)
    {
      return v2;
    }
  }

  v22 = 0;
  while (1)
  {
    v23 = *(v3 + 55) >= 0 ? (v3 + 4) : v3[4];
    v24 = __tolower(*(v23 + v22));
    v25 = *(a2 + 23) >= 0 ? a2 : *a2;
    v26 = __tolower(*(v25 + v22));
    if (v24 > v26)
    {
      break;
    }

    if (v24 < v26)
    {
      goto LABEL_60;
    }

    if (v21 == ++v22)
    {
      v8 = *(v3 + 55);
      v9 = v3[5];
      v5 = *(a2 + 23);
      v6 = a2[1];
      goto LABEL_55;
    }
  }

LABEL_62:
  v28 = *v3;
  v27 = v3;
  if (*v3)
  {
    v27 = v3;
    do
    {
      v29 = *(v28 + 55);
      v33 = v29;
      v34 = v28[5];
      if ((v29 & 0x80u) == 0)
      {
        v35 = *(v28 + 55);
      }

      else
      {
        v35 = v28[5];
      }

      v36 = *(a2 + 23);
      v37 = v36;
      v38 = a2[1];
      if ((v36 & 0x80u) == 0)
      {
        v39 = *(a2 + 23);
      }

      else
      {
        v39 = a2[1];
      }

      if (v39 >= v35)
      {
        v40 = v35;
      }

      else
      {
        v40 = v39;
      }

      if (v40)
      {
        v41 = 0;
        while (1)
        {
          if (*(v28 + 55) >= 0)
          {
            v42 = v28 + 4;
          }

          else
          {
            v42 = v28[4];
          }

          v43 = __tolower(*(v42 + v41));
          if (*(a2 + 23) >= 0)
          {
            v44 = a2;
          }

          else
          {
            v44 = *a2;
          }

          v45 = __tolower(*(v44 + v41));
          if (v43 > v45)
          {
            v27 = v28;
            goto LABEL_73;
          }

          if (v43 < v45)
          {
            break;
          }

          if (v40 == ++v41)
          {
            v29 = *(v28 + 55);
            v34 = v28[5];
            v36 = *(a2 + 23);
            v38 = a2[1];
            v37 = *(a2 + 23);
            v33 = *(v28 + 55);
            goto LABEL_64;
          }
        }

        ++v28;
      }

      else
      {
LABEL_64:
        if (v33 < 0)
        {
          v29 = v34;
        }

        if (v37 >= 0)
        {
          v30 = v36;
        }

        else
        {
          v30 = v38;
        }

        v31 = v29 >= v30;
        v32 = v29 < v30;
        if (v31)
        {
          v27 = v28;
        }

        v28 += v32;
      }

LABEL_73:
      v28 = *v28;
    }

    while (v28);
  }

  for (i = v3[1]; i; i = *i)
  {
    v48 = *(a2 + 23);
    v50 = v48;
    v51 = a2[1];
    if ((v48 & 0x80u) == 0)
    {
      v52 = *(a2 + 23);
    }

    else
    {
      v52 = a2[1];
    }

    v53 = *(i + 55);
    v54 = v53;
    v55 = i[5];
    if ((v53 & 0x80u) == 0)
    {
      v56 = *(i + 55);
    }

    else
    {
      v56 = i[5];
    }

    if (v56 >= v52)
    {
      v57 = v52;
    }

    else
    {
      v57 = v56;
    }

    if (v57)
    {
      v58 = 0;
      while (1)
      {
        v59 = *(a2 + 23) >= 0 ? a2 : *a2;
        v60 = __tolower(*(v59 + v58));
        v61 = *(i + 55) >= 0 ? (i + 4) : i[4];
        v62 = __tolower(*(v61 + v58));
        if (v60 > v62)
        {
          break;
        }

        if (v60 < v62)
        {
          goto LABEL_105;
        }

        if (v57 == ++v58)
        {
          v48 = *(a2 + 23);
          v51 = a2[1];
          v53 = *(i + 55);
          v55 = i[5];
          v54 = *(i + 55);
          v50 = *(a2 + 23);
          goto LABEL_99;
        }
      }

      ++i;
    }

    else
    {
LABEL_99:
      if (v50 < 0)
      {
        v48 = v51;
      }

      if (v54 >= 0)
      {
        v49 = v53;
      }

      else
      {
        v49 = v55;
      }

      i += v48 >= v49;
    }

LABEL_105:
    ;
  }

  return v27;
}

uint64_t sub_F0508(uint64_t a1)
{
  if (*a1 != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (*v2 && (*(**v2 + 32))(*v2) != 17)
  {
    if (!*v2)
    {
LABEL_8:
      *v2 = 0;
      goto LABEL_9;
    }

    if ((*(**v2 + 32))(*v2) != 18)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
LABEL_15:
      *(v3 + 8) = 0;
      goto LABEL_16;
    }

    if ((*(*v5 + 32))(v5) != 18)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8 && (*(*v8 + 32))(v8) != 17)
  {
    v9 = *(v7 + 16);
    if (!v9)
    {
LABEL_22:
      *(v7 + 16) = 0;
      goto LABEL_23;
    }

    if ((*(*v9 + 32))(v9) != 18)
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  v11 = *(a1 + 16);
  v12 = *(v11 + 24);
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = *(v11 + 24);
    if (!v13)
    {
LABEL_29:
      *(v11 + 24) = 0;
      return a1;
    }

    if ((*(*v13 + 32))(v13) != 18)
    {
      v14 = *(v11 + 24);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_29;
    }
  }

  return a1;
}

uint64_t sub_F07AC(uint64_t a1, _DWORD *a2, void *a3)
{
  result = *a3;
  if ((*a2 - 87) > 2)
  {
    if (*a2)
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      operator new();
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(*result + 32))(result) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        return 0;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    result = 0;
    *a3 = 0;
    return result;
  }

  return 0;
}

uint64_t sub_F0B1C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  (*(**a3 + 40))();
  result = 0;
  switch(*a2)
  {
    case '""':
      operator new();
    case '#':
      operator new();
    case '$':
      operator new();
    case '%':
      operator new();
    case '&':
      operator new();
    case '\'':
      operator new();
    case '(':
      operator new();
    case ')':
      operator new();
    case '*':
      operator new();
    case '+':
      operator new();
    case ',':
      operator new();
    case '-':
      operator new();
    case '.':
      operator new();
    case '/':
      operator new();
    case '0':
      operator new();
    case '1':
      operator new();
    case '2':
      operator new();
    case '4':
      operator new();
    case '5':
      operator new();
    case '6':
      operator new();
    case '9':
      operator new();
    case ':':
      operator new();
    case ';':
      operator new();
    case '<':
      operator new();
    case '=':
      operator new();
    case '>':
      operator new();
    case '?':
      operator new();
    case '@':
      operator new();
    case 'A':
      operator new();
    case 'E':
      operator new();
    case 'F':
      operator new();
    case 'G':
      operator new();
    case 'H':
      operator new();
    case 'I':
      operator new();
    case 'K':
      operator new();
    case 'L':
      operator new();
    case 'M':
      operator new();
    case 'N':
      operator new();
    case 'O':
      operator new();
    case 'P':
      operator new();
    default:
      return result;
  }
}

uint64_t sub_F1478(uint64_t a1, _DWORD *a2)
{
  switch(*a2)
  {
    case '""':
      operator new();
    case '#':
      operator new();
    case '$':
      operator new();
    case '%':
      operator new();
    case '&':
      operator new();
    case '\'':
      operator new();
    case '(':
      operator new();
    case ')':
      operator new();
    case '*':
      operator new();
    case '+':
      operator new();
    case ',':
      operator new();
    case '-':
      operator new();
    case '.':
      operator new();
    case '/':
      operator new();
    case '0':
      operator new();
    case '1':
      operator new();
    case '2':
      operator new();
    case '4':
      operator new();
    case '5':
      operator new();
    case '6':
      operator new();
    case '9':
      operator new();
    case ':':
      operator new();
    case ';':
      operator new();
    case '<':
      operator new();
    case '=':
      operator new();
    case '>':
      operator new();
    case '?':
      operator new();
    case '@':
      operator new();
    case 'A':
      operator new();
    case 'E':
      operator new();
    case 'F':
      operator new();
    case 'G':
      operator new();
    case 'H':
      operator new();
    case 'I':
      operator new();
    case 'K':
      operator new();
    case 'L':
      operator new();
    case 'M':
      operator new();
    case 'N':
      operator new();
    case 'O':
      operator new();
    case 'P':
      operator new();
    default:
      return 0;
  }
}

uint64_t sub_F1D34(uint64_t a1, _DWORD *a2)
{
  result = 0;
  switch(*a2)
  {
    case '""':
      operator new();
    case '#':
      operator new();
    case '$':
      operator new();
    case '%':
      operator new();
    case '&':
      operator new();
    case '\'':
      operator new();
    case '(':
      operator new();
    case ')':
      operator new();
    case '*':
      operator new();
    case '+':
      operator new();
    case ',':
      operator new();
    case '-':
      operator new();
    case '.':
      operator new();
    case '/':
      operator new();
    case '0':
      operator new();
    case '1':
      operator new();
    case '2':
      operator new();
    case '4':
      operator new();
    case '5':
      operator new();
    case '6':
      operator new();
    case '9':
      operator new();
    case ':':
      operator new();
    case ';':
      operator new();
    case '<':
      operator new();
    case '=':
      operator new();
    case '>':
      operator new();
    case '?':
      operator new();
    case '@':
      operator new();
    case 'A':
      operator new();
    case 'E':
      operator new();
    case 'F':
      operator new();
    case 'G':
      operator new();
    case 'H':
      operator new();
    case 'I':
      operator new();
    case 'K':
      operator new();
    case 'L':
      operator new();
    case 'M':
      operator new();
    case 'N':
      operator new();
    case 'O':
      operator new();
    case 'P':
      operator new();
    default:
      return result;
  }
}

uint64_t sub_F3780(uint64_t result)
{
  *result = off_26303D0;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_F3804(uint64_t a1)
{
  *a1 = off_26303D0;
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 16) = 0;
  }

  operator delete();
}

double sub_F38A4(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v3 = *(a1 + 8);

  return sub_F3994(v3, v2);
}

uint64_t sub_F3910(uint64_t result)
{
  *result = off_26303D0;
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 24) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 16) = 0;
    }
  }

  return result;
}

double sub_F3994(int a1, double result)
{
  v2 = result;
  switch(a1)
  {
    case '""':
      if (result < 0.0)
      {
        return -result;
      }

      return result;
    case '#':

      return acos(result);
    case '$':
      v8 = result * result;
      v9 = -1.0;
      goto LABEL_61;
    case '%':

      return asin(result);
    case '&':
      v8 = result * result;
      v9 = 1.0;
LABEL_61:
      result = sqrt(v8 + v9) + result;
      goto LABEL_62;
    case '\'':

      return atan(result);
    case '(':
      v12 = result;
      v13 = log(result + 1.0);
      return (v13 - log(1.0 - v12)) * 0.5;
    case ')':
      return ceil(result);
    case '*':

      return cos(result);
    case '+':

      return cosh(result);
    case ',':

      return exp(result);
    case '-':
      v3 = -result;
      if (result >= 0.0)
      {
        v3 = result;
      }

      if (v3 >= 0.00001)
      {
        return exp(result) + -1.0;
      }

      else
      {
        return result * 0.5 * result + result;
      }

    case '.':
      return floor(result);
    case '/':
LABEL_62:

      goto LABEL_64;
    case '0':

      return log10(result);
    case '1':
      return log(result) / 0.693147181;
    case '2':
      if (result <= -1.0)
      {
        goto LABEL_79;
      }

      v14 = -result;
      if (result >= 0.0)
      {
        v14 = result;
      }

      if (v14 <= 0.0001)
      {
        result = (result * -0.5 + 1.0) * result;
      }

      else
      {
        result = result + 1.0;

LABEL_64:
        result = log(result);
      }

      break;
    case '4':
      return -result;
    case '5':
      goto LABEL_80;
    case '6':
      v4 = ceil(result + -0.5);
      v5 = floor(result + 0.5);
      if (result >= 0.0)
      {
        return v5;
      }

      else
      {
        return v4;
      }

    case '9':
      return sqrt(result);
    case ':':

      return sin(result);
    case ';':
      v2 = 1.0;
      if (fabs(result) < 2.22044605e-16)
      {
        goto LABEL_80;
      }

      result = sin(result) / result;
      break;
    case '<':

      return sinh(result);
    case '=':
      return 1.0 / cos(result);
    case '>':
      return 1.0 / sin(result);
    case '?':

      return tan(result);
    case '@':

      return tanh(result);
    case 'A':
      return 1.0 / tan(result);
    case 'E':
      v6 = result < 0.0;
      v7 = result <= 0.0;
      result = 0.0;
      if (v6)
      {
        result = -1.0;
      }

      if (!v7)
      {
        return 1.0;
      }

      return result;
    case 'F':
      return result * 57.2957795;
    case 'G':
      return result * 0.0174532925;
    case 'H':
      return result * 2.22222222;
    case 'I':
      return result * 0.45;
    case 'K':
      v15 = result == 0.0;
      result = 1.0;
      if (!v15)
      {
        return 0.0;
      }

      return result;
    case 'L':

      return erf(result);
    case 'M':

      return erfc(result);
    case 'N':
      v10 = -result;
      if (result >= 0.0)
      {
        v10 = result;
      }

      v11 = result;
      result = (erf(v10 / 1.41421356) + 1.0) * 0.5;
      if (v11 < 0.0)
      {
        return 1.0 - result;
      }

      return result;
    case 'O':
      return result - result;
    case 'P':
      return result;
    default:
LABEL_79:
      v2 = NAN;
LABEL_80:
      result = v2;
      break;
  }

  return result;
}

double sub_F4030(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *v1;
  if (*v1 < 0.0)
  {
    return -*v1;
  }

  return result;
}

double sub_F4060(double *a1)
{
  result = *a1;
  if (*a1 < 0.0)
  {
    return -*a1;
  }

  return result;
}

long double sub_F4228(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = log(v1 + 1.0);
  return (v2 - log(1.0 - v1)) * 0.5;
}

long double sub_F4290(double *a1)
{
  v1 = *a1;
  v2 = log(*a1 + 1.0);
  return (v2 - log(1.0 - v1)) * 0.5;
}

long double sub_F440C(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = **(a1 + 8);
  }

  if (v2 >= 0.00001)
  {
    return exp(v1) + -1.0;
  }

  else
  {
    return v1 + v1 * (v1 * 0.5);
  }
}

long double sub_F4480(double *a1)
{
  v1 = *a1;
  v2 = -*a1;
  if (*a1 >= 0.0)
  {
    v2 = *a1;
  }

  if (v2 >= 0.00001)
  {
    return exp(v1) + -1.0;
  }

  else
  {
    return v1 + v1 * (v1 * 0.5);
  }
}

double sub_F4648(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1 <= -1.0)
  {
    return NAN;
  }

  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = **(a1 + 8);
  }

  if (v2 <= 0.0001)
  {
    return v1 * (v1 * -0.5 + 1.0);
  }

  else
  {
    return log(v1 + 1.0);
  }
}

double sub_F46C0(double *a1)
{
  v1 = *a1;
  if (*a1 <= -1.0)
  {
    return NAN;
  }

  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = *a1;
  }

  if (v2 <= 0.0001)
  {
    return v1 * (v1 * -0.5 + 1.0);
  }

  else
  {
    return log(v1 + 1.0);
  }
}

double sub_F47C4(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = ceil(v1 + -0.5);
  v3 = floor(v1 + 0.5);
  if (v1 >= 0.0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

double sub_F4808(double *a1)
{
  v1 = ceil(*a1 + -0.5);
  v2 = floor(*a1 + 0.5);
  if (*a1 >= 0.0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void sub_F488C(uint64_t a1)
{
  if (fabs(**(a1 + 8)) >= 2.22044605e-16)
  {
    sin(**(a1 + 8));
  }
}

void sub_F48EC(long double *a1)
{
  if (fabs(*a1) >= 2.22044605e-16)
  {
    sin(*a1);
  }
}

double sub_F4D44(uint64_t a1)
{
  result = 1.0;
  if (**(a1 + 8) != 0.0)
  {
    return 0.0;
  }

  return result;
}

double sub_F4D78(double *a1)
{
  result = 1.0;
  if (*a1 != 0.0)
  {
    return 0.0;
  }

  return result;
}

double sub_F4DA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = 0.0;
  if (*v1 < 0.0)
  {
    result = -1.0;
  }

  if (*v1 > 0.0)
  {
    return 1.0;
  }

  return result;
}

double sub_F4DE4(double *a1)
{
  result = 0.0;
  if (*a1 < 0.0)
  {
    result = -1.0;
  }

  if (*a1 > 0.0)
  {
    return 1.0;
  }

  return result;
}

void sub_F4EA4(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = -v1;
  if (v1 >= 0.0)
  {
    v2 = **(a1 + 8);
  }

  erf(v2 / 1.41421356);
}

void sub_F4F18(double *a1)
{
  v1 = -*a1;
  if (*a1 >= 0.0)
  {
    v1 = *a1;
  }

  erf(v1 / 1.41421356);
}

void sub_F5020(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = off_26303D0;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3) != 17 && (*(*a3 + 32))(a3) != 18;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = v5;
  *a1 = off_2631338;
  *(a1 + 32) = off_2631398;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  operator new();
}

void sub_F5674(_Unwind_Exception *a1)
{
  sub_F5710(v2);
  sub_F3910(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_F5710(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      v3 = *v2 - 1;
      *v2 = v3;
      if (!v3)
      {
        if (*(v2 + 16))
        {
          if (*(v2 + 24) == 1)
          {
            operator delete[]();
          }
        }

        operator delete();
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_F57B0(uint64_t a1)
{
  sub_F6340(a1);

  operator delete();
}

double sub_F57E8(uint64_t a1)
{
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v2 = *(a1 + 40);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(*(*(*v2 + 64))(v2) + 16);
  v4 = *(*(*(*a1 + 72))(a1) + 16);
  v5 = (*(*a1 + 56))(a1);
  if ((v5 & 0xF) != 0)
  {
    v6 = -16;
  }

  else
  {
    v6 = 0;
  }

  v7 = 8 * (v6 + v5);
  if (v7 >= 1)
  {
    v8 = &v3[v7 / 8];
    do
    {
      v9 = *v3;
      if (*v3 < 0.0)
      {
        v9 = -*v3;
      }

      *v4 = v9;
      v10 = v3[1];
      if (v10 < 0.0)
      {
        v10 = -v10;
      }

      v4[1] = v10;
      v11 = v3[2];
      if (v11 < 0.0)
      {
        v11 = -v11;
      }

      v4[2] = v11;
      v12 = v3[3];
      if (v12 < 0.0)
      {
        v12 = -v12;
      }

      v4[3] = v12;
      v13 = v3[4];
      if (v13 < 0.0)
      {
        v13 = -v13;
      }

      v4[4] = v13;
      v14 = v3[5];
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v4[5] = v14;
      v15 = v3[6];
      if (v15 < 0.0)
      {
        v15 = -v15;
      }

      v4[6] = v15;
      v16 = v3[7];
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      v4[7] = v16;
      v17 = v3[8];
      if (v17 < 0.0)
      {
        v17 = -v17;
      }

      v4[8] = v17;
      v18 = v3[9];
      if (v18 < 0.0)
      {
        v18 = -v18;
      }

      v4[9] = v18;
      v19 = v3[10];
      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      v4[10] = v19;
      v20 = v3[11];
      if (v20 < 0.0)
      {
        v20 = -v20;
      }

      v4[11] = v20;
      v21 = v3[12];
      if (v21 < 0.0)
      {
        v21 = -v21;
      }

      v4[12] = v21;
      v22 = v3[13];
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      v4[13] = v22;
      v23 = v3[14];
      if (v23 < 0.0)
      {
        v23 = -v23;
      }

      v4[14] = v23;
      v24 = v3[15];
      if (v24 < 0.0)
      {
        v24 = -v24;
      }

      v4[15] = v24;
      v3 += 16;
      v4 += 16;
    }

    while (v3 < v8);
  }

  v25 = 0;
  v26 = 0;
  switch(v5 & 0xF)
  {
    case 1:
      goto LABEL_83;
    case 2:
      goto LABEL_80;
    case 3:
      goto LABEL_77;
    case 4:
      goto LABEL_74;
    case 5:
      goto LABEL_71;
    case 6:
      goto LABEL_68;
    case 7:
      goto LABEL_65;
    case 8:
      goto LABEL_62;
    case 9:
      goto LABEL_59;
    case 0xA:
      goto LABEL_56;
    case 0xB:
      goto LABEL_53;
    case 0xC:
      goto LABEL_50;
    case 0xD:
      goto LABEL_47;
    case 0xE:
      goto LABEL_44;
    case 0xF:
      v27 = *v3;
      if (*v3 < 0.0)
      {
        v27 = -*v3;
      }

      *v4 = v27;
      v26 = 1;
LABEL_44:
      v28 = v3[v26];
      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      v4[v26++] = v28;
LABEL_47:
      v29 = v3[v26];
      if (v29 < 0.0)
      {
        v29 = -v29;
      }

      v4[v26++] = v29;
LABEL_50:
      v30 = v3[v26];
      if (v30 < 0.0)
      {
        v30 = -v30;
      }

      v4[v26++] = v30;
LABEL_53:
      v31 = v3[v26];
      if (v31 < 0.0)
      {
        v31 = -v31;
      }

      v4[v26++] = v31;
LABEL_56:
      v32 = v3[v26];
      if (v32 < 0.0)
      {
        v32 = -v32;
      }

      v4[v26++] = v32;
LABEL_59:
      v33 = v3[v26];
      if (v33 < 0.0)
      {
        v33 = -v33;
      }

      v4[v26++] = v33;
LABEL_62:
      v34 = v3[v26];
      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      v4[v26++] = v34;
LABEL_65:
      v35 = v3[v26];
      if (v35 < 0.0)
      {
        v35 = -v35;
      }

      v4[v26++] = v35;
LABEL_68:
      v36 = v3[v26];
      if (v36 < 0.0)
      {
        v36 = -v36;
      }

      v4[v26++] = v36;
LABEL_71:
      v37 = v3[v26];
      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      v4[v26++] = v37;
LABEL_74:
      v38 = v3[v26];
      if (v38 < 0.0)
      {
        v38 = -v38;
      }

      v4[v26++] = v38;
LABEL_77:
      v39 = v3[v26];
      if (v39 < 0.0)
      {
        v39 = -v39;
      }

      v4[v26++] = v39;
LABEL_80:
      v40 = v3[v26];
      if (v40 < 0.0)
      {
        v40 = -v40;
      }

      v4[v26] = v40;
      v25 = v26 + 1;
LABEL_83:
      v41 = v3[v25];
      if (v41 < 0.0)
      {
        v41 = -v41;
      }

      v4[v25] = v41;
      break;
    default:
      return **(*(*(*a1 + 72))(a1) + 16);
  }

  return **(*(*(*a1 + 72))(a1) + 16);
}