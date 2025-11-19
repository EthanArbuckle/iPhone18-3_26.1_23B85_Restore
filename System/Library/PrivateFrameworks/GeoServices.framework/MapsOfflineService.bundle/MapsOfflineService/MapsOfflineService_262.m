double sub_1025648(uint64_t a1, void **a2, char a3)
{
  v4 = *(a1 + 1008);
  v11 = a3;
  v5 = sub_FCCD60((a1 + 32), a2, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = 0.0;
  if (*v5 != v7)
  {
    do
    {
      v12[0] = &v11;
      v12[1] = a1;
      sub_10280C4(v6, v12);
      v8 = v8 + v9;
      v6 += 4;
    }

    while (v6 != v7);
  }

  return v8;
}

double sub_10256CC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v24 = a3;
  v23 = a4;
  if (*(a1 + 1072))
  {
    v6 = sub_FCCD60((a1 + 32), a2, *(a1 + 1008));
    v7 = *v6;
    v8 = v6[1];
    j = 0.0;
    if (*v6 != v8)
    {
      do
      {
        v25 = a1;
        v26 = a2;
        v27 = &v23;
        v28 = &v24;
        v11 = sub_10286DC(&v25, *v7, 1);
        v12 = v7[1];
        v13 = v7[2];
        for (i = 0.0; v12 != v13; i = i + sub_10286DC(&v25, v15, 0))
        {
          v15 = *v12++;
        }

        if (i >= v11)
        {
          v10 = v11;
        }

        else
        {
          v10 = i;
        }

        j = j + v10;
        v7 += 4;
      }

      while (v7 != v8);
    }
  }

  else
  {
    *(a1 + 1240) = *(a1 + 1232);
    v16 = *a2;
    v17 = *(a2 + 8);
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v25 = a1;
    v26 = (a1 + 1232);
    sub_1026E00(v16, v17, v18, v19 + 1, &v25);
    v20 = *(a1 + 1232);
    v21 = *(a1 + 1240);
    v25 = a1;
    v26 = &v23;
    v27 = a2;
    v28 = &v24;
    for (j = 0.0; v20 != v21; ++v20)
    {
      j = sub_10279DC(&v25, v20, j);
    }
  }

  return j;
}

double sub_102582C(uint64_t a1, void **a2, unsigned int a3)
{
  v6 = 0.0;
  if (!sub_1027614(*a2, a2[1], a2[2], a2[3] + 1))
  {
    return v6;
  }

  v7 = sub_4D1F50(*a2, a2[1]);
  v8 = (*v7 - **v7);
  if (*v8 < 0x9Bu)
  {
    return v6;
  }

  v9 = v8[77];
  if (!v9 || (*(*v7 + v9 + 3) & 2) == 0)
  {
    return v6;
  }

  v11 = sub_4D1F50(*a2, a2[1]);
  v12 = (*v11 - **v11);
  if (*v12 >= 0x2Fu)
  {
    v13 = v12[23];
    if (v13)
    {
      v14 = *(*v11 + v13);
      v15 = v14 > 0x1A;
      v16 = (1 << v14) & 0x4810001;
      if (!v15 && v16 != 0)
      {
        v18 = sub_4D1F50(a2[2], a2[3]);
        v19 = (*v18 - **v18);
        if (*v19 >= 0x2Fu)
        {
          v20 = v19[23];
          if (v20)
          {
            v21 = *(*v18 + v20);
            v15 = v21 > 0x1A;
            v22 = (1 << v21) & 0x4810001;
            if (!v15 && v22 != 0)
            {
              return v6;
            }
          }
        }
      }
    }
  }

  v24 = sub_4D1F50(*a2, a2[1]);
  v25 = 24;
  if (!*(v24 + 38))
  {
    v25 = 16;
  }

  v26 = *(v24 + v25);
  if (v26)
  {
    v27 = (v26 - *v26);
    if (*v27 < 7u || (v28 = v27[3]) == 0 || (LOWORD(v26) = *(v26 + v28), v26 == 0xFFFF))
    {
      LOWORD(v26) = 0;
    }
  }

  v130 = *(a1 + 1136) * v26;
  if (*(a1 + 1128) == 1)
  {
    v29 = sub_FCCD60((a1 + 32), a2, *(a1 + 1008));
    if (*v29 == v29[1])
    {
      return v6;
    }

    v30 = v29;
    *&v123 = &v130;
    *(&v123 + 1) = a1;
    *&v124 = a2;
    v31 = *(a1 + 1168);
    v32 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v33 = *(a1 + 24);
    v34 = sub_3E37C0(*(a1 + 16), v32 & 0xFFFFFFFFFFFFFFLL);
    v35 = sub_2BC7A8(v33, v34);
    v36 = v35;
    if (a3)
    {
      v37 = *(a1 + 8);
      v38 = sub_4345A0(v37, v32 & 0xFFFFFFFFFFFFLL);
      v39 = sub_4345A0(v37, v32 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v39 <= v38)
      {
        v39 = v38;
      }

      if (v39)
      {
        v40 = v36 / v39;
      }

      else
      {
        v40 = 0.0;
      }
    }

    else
    {
      v40 = v35;
    }

    v56 = *v30;
    v57 = v30[1];
    if (*v30 != v57)
    {
      v58 = v31 * v40 + *(a1 + 8 * a3 + 1152);
      v6 = 0.0;
      do
      {
        v60 = *a1;
        v61 = *v56;
        v62 = sub_2B51D8(*a1, *v56 & 0xFFFFFFFFFFFFLL);
        if (*(v60 + 7772) == 1)
        {
          v63 = sub_30C50C(v60 + 3896, v61, 0);
          v64 = &v63[-*v63];
          if (*v64 < 5u)
          {
            v65 = 0;
          }

          else
          {
            v65 = *(v64 + 2);
            if (v65)
            {
              v65 += &v63[*&v63[v65]];
            }
          }

          v66 = v65 + ((v61 >> 30) & 0x3FFFC) + 4 + *(v65 + ((v61 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v66 = 0;
        }

        v67 = sub_31D7E8(v60, v61 & 0xFFFFFFFFFFFFLL, 1);
        *&v127 = v62;
        *(&v127 + 1) = v66;
        *&v128 = v67;
        *(&v128 + 1) = v68;
        v129 = v61;
        if (*(a1 + 1177) != 1 || (v69 = (v62 - *v62), *v69 < 0x2Fu) || (v70 = v69[23]) == 0 || ((v71 = *(v62 + v70), v15 = v71 > 0x2A, v72 = (1 << v71) & 0x50426810004, !v15) ? (v73 = v72 == 0) : (v73 = 1), v73))
        {
          if (*(a1 + 1176) != 1 || (v74 = (v62 - *v62), *v74 < 0x2Fu) || (v75 = v74[23]) == 0 || *(v62 + v75) != 47)
          {
            if (sub_1026040(&v123, &v127))
            {
              v76 = v129;
              v77 = *(a1 + 24);
              v78 = sub_3E37C0(*(a1 + 16), v129 & 0xFFFFFFFFFFFFFFLL);
              v79 = sub_2BC7A8(v77, v78);
              v80 = v79;
              if (a3)
              {
                v81 = *(a1 + 8);
                v82 = sub_4345A0(v81, v76 & 0xFFFFFFFFFFFFLL);
                v83 = sub_4345A0(v81, v76 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
                if (v83 <= v82)
                {
                  v83 = v82;
                }

                if (v83)
                {
                  v59 = v80 / v83;
                }

                else
                {
                  v59 = 0.0;
                }
              }

              else
              {
                v59 = v79;
              }

              v6 = v6 + pow(fmax(v59 - v58, 0.0), *(a1 + 1144));
            }
          }
        }

        v56 += 4;
      }

      while (v56 != v57);
      return v6;
    }

    return 0.0;
  }

  *(a1 + 1240) = *(a1 + 1232);
  v41 = *a2;
  v42 = a2[1];
  v43 = a2[2];
  v44 = a2[3];
  *&v127 = a1;
  *(&v127 + 1) = a1 + 1232;
  sub_1026E00(v41, v42, v43, v44 + 1, &v127);
  if (*(a1 + 1232) == *(a1 + 1240))
  {
    return v6;
  }

  v126[0] = &v130;
  v126[1] = a1;
  v126[2] = a2;
  v45 = *(a1 + 8 * a3 + 1152);
  v46 = *(a1 + 1168);
  v47 = *(sub_4D1F50(*a2, a2[1]) + 32);
  v48 = *(a1 + 24);
  v49 = sub_3E37C0(*(a1 + 16), v47 & 0xFFFFFFFFFFFFFFLL);
  v50 = sub_2BC7A8(v48, v49);
  v51 = v50;
  if (a3)
  {
    v52 = *(a1 + 8);
    v53 = sub_4345A0(v52, v47 & 0xFFFFFFFFFFFFLL);
    v54 = sub_4345A0(v52, v47 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v54 <= v53)
    {
      v54 = v53;
    }

    if (v54)
    {
      v55 = v51 / v54;
    }

    else
    {
      v55 = 0.0;
    }
  }

  else
  {
    v55 = v50;
  }

  v84 = *(a1 + 1232);
  v85 = *(a1 + 1240);
  if (v84 == v85)
  {
    return 0.0;
  }

  v86 = v45 + v46 * v55;
  v6 = 0.0;
  do
  {
    v88 = *a1;
    v89 = *v84;
    v90 = (*v84 & 0xFF000000000000) == 0;
    v91 = *v84 & 0xFFFFFFFFFFFFLL;
    v92 = sub_2B51D8(*a1, v91);
    if (*(v88 + 7772) == 1)
    {
      v93 = sub_30C50C(v88 + 3896, v89, 0);
      v94 = &v93[-*v93];
      if (*v94 < 5u)
      {
        v95 = 0;
      }

      else
      {
        v95 = *(v94 + 2);
        if (v95)
        {
          v95 += &v93[*&v93[v95]];
        }
      }

      v96 = v95 + ((v89 >> 30) & 0x3FFFC) + 4 + *(v95 + ((v89 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v96 = 0;
    }

    v97 = sub_31D7E8(v88, v91, 1);
    *&v127 = v92;
    *(&v127 + 1) = v96;
    *&v128 = v97;
    *(&v128 + 1) = v98;
    v129 = v91 | (v90 << 48);
    if (*(a1 + 1177) != 1 || (v99 = (v92 - *v92), *v99 < 0x2Fu) || (v100 = v99[23]) == 0 || ((v101 = *(v92 + v100), v15 = v101 > 0x2A, v102 = (1 << v101) & 0x50426810004, !v15) ? (v103 = v102 == 0) : (v103 = 1), v103))
    {
      if (*(a1 + 1176) != 1 || (v104 = (v92 - *v92), *v104 < 0x2Fu) || (v105 = v104[23]) == 0 || *(v92 + v105) != 47)
      {
        if (sub_1026190(v126, &v127, 0))
        {
          v106 = v129;
          v107 = *(a1 + 24);
          v108 = sub_3E37C0(*(a1 + 16), v129 & 0xFFFFFFFFFFFFFFLL);
          v109 = sub_2BC7A8(v107, v108);
          v110 = v109;
          if (a3)
          {
            v111 = *(a1 + 8);
            v112 = sub_4345A0(v111, v106 & 0xFFFFFFFFFFFFLL);
            v113 = sub_4345A0(v111, v106 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
            if (v113 <= v112)
            {
              v113 = v112;
            }

            if (v113)
            {
              v114 = v110 / v113;
            }

            else
            {
              v114 = 0.0;
            }
          }

          else
          {
            v114 = v109;
          }

          v6 = v6 + pow(fmax(v114 - v86, 0.0), *(a1 + 1144));
        }

        v125 = v129;
        v123 = v127;
        v124 = v128;
        BYTE6(v125) = BYTE6(v129) == 0;
        if (sub_1026190(v126, &v123, 1))
        {
          v115 = v125;
          v116 = *(a1 + 24);
          v117 = sub_3E37C0(*(a1 + 16), v125 & 0xFFFFFFFFFFFFFFLL);
          v118 = sub_2BC7A8(v116, v117);
          v119 = v118;
          if (a3)
          {
            v120 = *(a1 + 8);
            v121 = sub_4345A0(v120, v115 & 0xFFFFFFFFFFFFLL);
            v122 = sub_4345A0(v120, v115 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
            if (v122 <= v121)
            {
              v122 = v121;
            }

            if (v122)
            {
              v87 = v119 / v122;
            }

            else
            {
              v87 = 0.0;
            }
          }

          else
          {
            v87 = v118;
          }

          v6 = v6 + pow(fmax(v87 - v86, 0.0), *(a1 + 1144));
        }
      }
    }

    ++v84;
  }

  while (v84 != v85);
  return v6;
}

uint64_t sub_1026040(uint64_t a1, uint64_t a2)
{
  v3 = 24;
  if (!*(a2 + 38))
  {
    v3 = 16;
  }

  v4 = *(a2 + v3);
  if (!v4 || (v5 = (v4 - *v4), *v5 >= 7u) && (v6 = v5[3]) != 0 && (LOWORD(v4) = *(v4 + v6), v4 != 0xFFFF))
  {
    if (**a1 < v4)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (**a1 >= 0)
  {
    return 0;
  }

LABEL_8:
  v7 = *(a1 + 8);
  result = sub_319BB0(a2, 0, *v7);
  v15 = result;
  v17 = BYTE6(result);
  v16 = WORD2(result);
  if (result)
  {
    v10 = *(a1 + 16);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v18 = &v15;
    return (sub_1027CD0(v11, v12, v13, v14 + 1, &v18) & 1) == 0 && !sub_4BF020(*v7, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, v7[133], 1);
  }

  return result;
}

uint64_t sub_1026190(uint64_t a1, int **a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 < 0x9B)
    {
      return 0;
    }

    v7 = v5[77];
    if (!v7 || (*(v4 + v7) & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 < 0x9B)
    {
      return 0;
    }

    v8 = v5[77];
    if (!v8 || (*(v4 + v8) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = 3;
  if (!*(a2 + 38))
  {
    v9 = 2;
  }

  v10 = a2[v9];
  if (v10)
  {
    v11 = (v10 - *v10);
    if (*v11 < 7u || (v12 = v11[3]) == 0 || (LOWORD(v10) = *(v10 + v12), v10 == 0xFFFF))
    {
      LOWORD(v10) = 0;
    }
  }

  if (**a1 >= v10)
  {
    return 0;
  }

  result = sub_319BB0(a2, a3, *v3);
  v24 = result;
  v26 = BYTE6(result);
  v25 = WORD2(result);
  if (result)
  {
    v17 = *(a1 + 16);
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v28 = &v24;
    if (sub_1027CD0(v18, v19, v20, v21 + 1, &v28))
    {
      return 0;
    }

    else
    {
      v22 = v24 | ((v25 | (v26 << 16)) << 32);
      if (a3)
      {
        v23 = v27 << 56;
      }

      else
      {
        v23 = 0;
      }

      if (!a3)
      {
        v22 = a2[4];
      }

      return !sub_4BF020(*v3, v23 & 0xFF00000000000000 | v22 & 0xFFFFFFFFFFFFFFLL, v3[133], 1);
    }
  }

  return result;
}

void sub_10265BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10268F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1026930(double *a1, void *a2)
{
  v6 = 16;
  strcpy(__p, "min_u_turn_angle");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1026D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1026E00(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_1028978(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_1028978(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_1028978(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

uint64_t sub_1027020(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v8 = sub_F6D024(a1);
        v9 = sub_F6D024(a3);
        if (a2 >= v8 || a4 >= v9)
        {
          if (a2 < v8 == a4 < v9)
          {
            return 1;
          }
        }

        else
        {
          v10 = sub_F6D17C(a1, a2);
          if (v10 == sub_F6D17C(a3, a4))
          {
            return 1;
          }
        }

        v11 = sub_F6D17C(a1, a2);
        v12 = (*v11 - **v11);
        v13 = *v12;
        if (*(v11 + 38))
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 2;
        }

        else
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 1;
        }

        ++a2;
        if ((*(*v11 + v14) & v15) == 0)
        {
          return 0;
        }
      }
    }

    while (1)
    {
      v16 = a2 >= sub_F6D024(a1);
      result = v16;
      if (v16)
      {
        break;
      }

      v18 = sub_F6D17C(a1, a2);
      v19 = (*v18 - **v18);
      v20 = *v19;
      if (*(v18 + 38))
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 2;
      }

      else
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 1;
      }

      ++a2;
      if ((*(*v18 + v21) & v22) == 0)
      {
        return 0;
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v16 = a4 >= sub_F6D024(a3);
      result = v16;
      if (v16)
      {
        break;
      }

      v23 = sub_F6D17C(0, a2);
      v24 = (*v23 - **v23);
      v25 = *v24;
      if (*(v23 + 38))
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 2;
      }

      else
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 1;
      }

      ++a2;
      if ((*(*v23 + v26) & v27) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

void *sub_102724C(void *a1)
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
  return sub_2133C(a1, &v11);
}

void sub_10275BC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1027614(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v8 = sub_4D1DC0(a1);
        v9 = sub_4D1DC0(a3);
        if (a2 >= v8 || a4 >= v9)
        {
          if (a2 < v8 == a4 < v9)
          {
            return 1;
          }
        }

        else
        {
          v10 = sub_4D1F50(a1, a2);
          if (v10 == sub_4D1F50(a3, a4))
          {
            return 1;
          }
        }

        v11 = sub_4D1F50(a1, a2);
        v12 = (*v11 - **v11);
        v13 = *v12;
        if (*(v11 + 38))
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 2;
        }

        else
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 1;
        }

        ++a2;
        if ((*(*v11 + v14) & v15) == 0)
        {
          return 0;
        }
      }
    }

    while (1)
    {
      v16 = a2 >= sub_4D1DC0(a1);
      result = v16;
      if (v16)
      {
        break;
      }

      v18 = sub_4D1F50(a1, a2);
      v19 = (*v18 - **v18);
      v20 = *v19;
      if (*(v18 + 38))
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 2;
      }

      else
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 1;
      }

      ++a2;
      if ((*(*v18 + v21) & v22) == 0)
      {
        return 0;
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v16 = a4 >= sub_4D1DC0(a3);
      result = v16;
      if (v16)
      {
        break;
      }

      v23 = sub_4D1F50(0, a2);
      v24 = (*v23 - **v23);
      v25 = *v24;
      if (*(v23 + 38))
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 2;
      }

      else
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 1;
      }

      ++a2;
      if ((*(*v23 + v26) & v27) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL sub_1027840(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v17 = sub_4D1DC0(a1);
        v18 = sub_4D1DC0(a3);
        if (a2 >= v17 || a4 >= v18)
        {
          if (a2 < v17 == a4 < v18)
          {
            return 0;
          }
        }

        else
        {
          v19 = sub_4D1F50(a1, a2);
          if (v19 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v15 = sub_4D1F50(a1, a2++);
      }

      while (*(v15 + 32) != **a5 || *(v15 + 36) != *(*a5 + 4));
      return 1;
    }

    else
    {
      while (1)
      {
        v12 = sub_4D1DC0(a1);
        v13 = a2 >= v12;
        result = a2 < v12;
        if (v13)
        {
          break;
        }

        v10 = sub_4D1F50(a1, a2++);
        if (*(v10 + 32) == **a5 && *(v10 + 36) == *(*a5 + 4))
        {
          return 1;
        }
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v20 = sub_4D1DC0(a3);
      v13 = a4 >= v20;
      result = a4 < v20;
      if (v13)
      {
        break;
      }

      v21 = sub_4D1F50(0, a2++);
      if (*(v21 + 32) == **a5 && *(v21 + 36) == *(*a5 + 4))
      {
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_10279DC(uint64_t a1, unint64_t *a2, double a3)
{
  v6 = *a1;
  v7 = *a2 & 0xFF000000000000;
  v8 = sub_2B51D8(**a1, *a2 & 0xFFFFFFFFFFFFLL);
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v7)
  {
    if (v10 < 0x9B)
    {
      return a3;
    }

    v11 = v9[77];
    if (!v11 || (*(v8 + v11) & 1) == 0)
    {
      return a3;
    }
  }

  else
  {
    if (v10 < 0x9B)
    {
      return a3;
    }

    v12 = v9[77];
    if (!v12 || (*(v8 + v12) & 2) == 0)
    {
      return a3;
    }
  }

  if (**(a1 + 8) != 1)
  {
    goto LABEL_39;
  }

  v13 = sub_4D1F50(**(a1 + 16), *(*(a1 + 16) + 8));
  v14 = *v6;
  v15 = *a2;
  sub_2B51D8(*v6, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, v15, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = (v18 + ((v15 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v15 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v19 = 0;
  }

  sub_31D7E8(v14, v15 & 0xFFFFFFFFFFFFLL, 1);
  v20 = *(v13 + 8);
  v21 = (v20 - *v20);
  v22 = *v21;
  if (*(v13 + 38))
  {
    if (v22 < 5)
    {
      goto LABEL_27;
    }

    v23 = v21[2];
    if (!v23)
    {
      goto LABEL_27;
    }

LABEL_23:
    v24 = *(v20 + v23);
    v25 = (v19 - *v19);
    v26 = *v25;
    if ((v15 & 0xFF000000000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v22 >= 9)
  {
    v23 = v21[4];
    if (v23)
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  v24 = 0;
  v25 = (v19 - *v19);
  v26 = *v25;
  if ((v15 & 0xFF000000000000) != 0)
  {
LABEL_28:
    if (v26 >= 9)
    {
      v27 = v25[4];
      if (!v27)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_24:
  if (v26 < 5)
  {
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v27 = v25[2];
  if (v27)
  {
LABEL_30:
    v27 = *(v19 + v27);
  }

LABEL_32:
  v28 = v24 + 18000;
  v29 = v24 - 18000;
  if ((v28 >> 5) < 0x465u)
  {
    v29 = v28;
  }

  v30 = v27 - v29;
  if (v30 > 18000)
  {
    v30 -= 36000;
  }

  if (v30 < -17999)
  {
    v30 += 36000;
  }

  if (fabs(v30 / 100.0) <= *(v6 + 129))
  {
LABEL_39:
    v31 = (*a2 & 0xFF000000000000) == 0;
    v32 = *a2 & 0xFFFFFFFFFFFFLL;
    v33 = **(a1 + 24);
    v34 = v6[3];
    v35 = sub_3E37C0(v6[2], v32 | (v31 << 48));
    v36 = sub_2BC7A8(v34, v35);
    v37 = v36;
    if (v33)
    {
      v38 = v6[1];
      v39 = sub_4345A0(v38, v32);
      v40 = sub_4345A0(v38, v32 | 0x1000000000000);
      if (v40 <= v39)
      {
        v40 = v39;
      }

      if (v40)
      {
        v41 = v37 / v40;
      }

      else
      {
        v41 = 0.0;
      }
    }

    else
    {
      v41 = v36;
    }

    return v41 + a3;
  }

  return a3;
}

uint64_t sub_1027CD0(void *a1, unint64_t a2, void *a3, unint64_t a4, unint64_t **a5)
{
  v8 = a2;
  if (!a1)
  {
    if (a3 && a4 < sub_4D1DC0(a3))
    {
      while (1)
      {
        v18 = *(sub_4D1F50(0, v8) + 32);
        v19 = **a5;
        v17 = v18 == v19;
        v20 = HIDWORD(v18) & 0xFFFFFF;
        v21 = HIDWORD(v19) & 0xFFFFFF;
        if (v17 && v20 == v21)
        {
          break;
        }

        ++v8;
        if (a4 >= sub_4D1DC0(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  if (!a3)
  {
    if (a2 < sub_4D1DC0(a1))
    {
      while (1)
      {
        v23 = *(sub_4D1F50(a1, v8) + 32);
        v24 = **a5;
        v17 = v23 == v24;
        v25 = HIDWORD(v23) & 0xFFFFFF;
        v26 = HIDWORD(v24) & 0xFFFFFF;
        if (v17 && v25 == v26)
        {
          break;
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  while (1)
  {
    v10 = sub_4D1DC0(a1);
    v11 = sub_4D1DC0(a3);
    if (v8 >= v10 || a4 >= v11)
    {
      if (v8 < v10 == a4 < v11)
      {
        return 0;
      }
    }

    else
    {
      v12 = sub_4D1F50(a1, v8);
      if (v12 == sub_4D1F50(a3, a4))
      {
        return 0;
      }
    }

    v13 = *(sub_4D1F50(a1, v8) + 32);
    v14 = **a5;
    v17 = v13 == v14;
    v15 = HIDWORD(v13) & 0xFFFFFF;
    v16 = HIDWORD(v14) & 0xFFFFFF;
    v17 = v17 && v15 == v16;
    if (v17)
    {
      break;
    }

    ++v8;
  }

  return 1;
}

uint64_t sub_1027E74(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      if (a2 >= sub_F6D024(a1))
      {
        return 1;
      }

      while (1)
      {
        v19 = sub_F6D17C(a1, v6);
        v20 = *v19;
        v21 = (*v19 - **v19);
        v22 = *v21;
        if (*(v19 + 38))
        {
          if (v22 >= 0x4D)
          {
            v23 = v21[38];
            if (v23)
            {
              v24 = *&v20[v23];
              if ((v24 & 2) != 0)
              {
                return 0;
              }

              v25 = 8;
LABEL_21:
              if ((v24 & v25) != 0)
              {
                return 0;
              }
            }
          }
        }

        else if (v22 >= 0x4D)
        {
          v26 = v21[38];
          if (v26)
          {
            v24 = *&v20[v26];
            if (v24)
            {
              return 0;
            }

            v25 = 4;
            goto LABEL_21;
          }
        }

        if (++v6 >= sub_F6D024(a1))
        {
          return 1;
        }
      }
    }

    while (1)
    {
      v8 = sub_F6D024(a1);
      v9 = sub_F6D024(a3);
      if (v6 >= v8 || a4 >= v9)
      {
        if (v6 < v8 == a4 < v9)
        {
          return 1;
        }
      }

      else
      {
        v10 = sub_F6D17C(a1, v6);
        if (v10 == sub_F6D17C(a3, a4))
        {
          return 1;
        }
      }

      v11 = sub_F6D17C(a1, v6);
      v12 = *v11;
      v13 = (*v11 - **v11);
      v14 = *v13;
      if (*(v11 + 38))
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v15 = v13[38];
        if (!v15)
        {
          goto LABEL_6;
        }

        v16 = *&v12[v15];
        if ((v16 & 2) != 0)
        {
          return 0;
        }

        v17 = 8;
      }

      else
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v18 = v13[38];
        if (!v18)
        {
          goto LABEL_6;
        }

        v16 = *&v12[v18];
        if (v16)
        {
          return 0;
        }

        v17 = 4;
      }

      if ((v16 & v17) != 0)
      {
        return 0;
      }

LABEL_6:
      ++v6;
    }
  }

  if (!a3 || a4 >= sub_F6D024(a3))
  {
    return 1;
  }

  while (1)
  {
    v28 = sub_F6D17C(0, v6);
    v29 = *v28;
    v30 = (*v28 - **v28);
    v31 = *v30;
    if (!*(v28 + 38))
    {
      break;
    }

    if (v31 < 0x4D)
    {
      goto LABEL_36;
    }

    v32 = v30[38];
    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = *&v29[v32];
    if ((v33 & 2) != 0)
    {
      return 0;
    }

    v34 = 8;
LABEL_35:
    if ((v33 & v34) != 0)
    {
      return 0;
    }

LABEL_36:
    ++v6;
    if (a4 >= sub_F6D024(a3))
    {
      return 1;
    }
  }

  if (v31 < 0x4D)
  {
    goto LABEL_36;
  }

  v35 = v30[38];
  if (!v35)
  {
    goto LABEL_36;
  }

  v33 = *&v29[v35];
  if ((v33 & 1) == 0)
  {
    v34 = 4;
    goto LABEL_35;
  }

  return 0;
}

char *sub_10280C4(uint64_t *a1, unsigned __int8 **a2)
{
  v4 = *a1;
  v5 = a2[1];
  v6 = **a2;
  result = sub_3E916C(*(v5 + 1), *a1);
  if (v6)
  {
    v8 = *(v5 + 1);
    sub_4345A0(v8, v4 & 0xFFFFFFFFFFFFLL);
    result = sub_4345A0(v8, v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
  }

  v9 = a1[1];
  v10 = a1[2];
  v11 = 0.0;
  while (v9 != v10)
  {
    v13 = *v9;
    v14 = a2[1];
    v15 = **a2;
    result = sub_3E916C(*(v14 + 1), *v9);
    v16 = result;
    if (v15)
    {
      v17 = *(v14 + 1);
      v18 = sub_4345A0(v17, v13 & 0xFFFFFFFFFFFFLL);
      result = sub_4345A0(v17, v13 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      v19 = result;
      if (result <= v18)
      {
        v19 = v18;
      }

      if (v19)
      {
        v12 = v16 / v19;
      }

      else
      {
        v12 = 0.0;
      }
    }

    else
    {
      v12 = result;
    }

    v11 = v11 + v12;
    ++v9;
  }

  return result;
}

uint64_t sub_102821C(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 1;
      }

      while (1)
      {
        v19 = sub_4D1F50(a1, v6);
        v20 = *v19;
        v21 = (*v19 - **v19);
        v22 = *v21;
        if (*(v19 + 38))
        {
          if (v22 >= 0x4D)
          {
            v23 = v21[38];
            if (v23)
            {
              v24 = *&v20[v23];
              if ((v24 & 2) != 0)
              {
                return 0;
              }

              v25 = 8;
LABEL_21:
              if ((v24 & v25) != 0)
              {
                return 0;
              }
            }
          }
        }

        else if (v22 >= 0x4D)
        {
          v26 = v21[38];
          if (v26)
          {
            v24 = *&v20[v26];
            if (v24)
            {
              return 0;
            }

            v25 = 4;
            goto LABEL_21;
          }
        }

        if (++v6 >= sub_4D1DC0(a1))
        {
          return 1;
        }
      }
    }

    while (1)
    {
      v8 = sub_4D1DC0(a1);
      v9 = sub_4D1DC0(a3);
      if (v6 >= v8 || a4 >= v9)
      {
        if (v6 < v8 == a4 < v9)
        {
          return 1;
        }
      }

      else
      {
        v10 = sub_4D1F50(a1, v6);
        if (v10 == sub_4D1F50(a3, a4))
        {
          return 1;
        }
      }

      v11 = sub_4D1F50(a1, v6);
      v12 = *v11;
      v13 = (*v11 - **v11);
      v14 = *v13;
      if (*(v11 + 38))
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v15 = v13[38];
        if (!v15)
        {
          goto LABEL_6;
        }

        v16 = *&v12[v15];
        if ((v16 & 2) != 0)
        {
          return 0;
        }

        v17 = 8;
      }

      else
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v18 = v13[38];
        if (!v18)
        {
          goto LABEL_6;
        }

        v16 = *&v12[v18];
        if (v16)
        {
          return 0;
        }

        v17 = 4;
      }

      if ((v16 & v17) != 0)
      {
        return 0;
      }

LABEL_6:
      ++v6;
    }
  }

  if (!a3 || a4 >= sub_4D1DC0(a3))
  {
    return 1;
  }

  while (1)
  {
    v28 = sub_4D1F50(0, v6);
    v29 = *v28;
    v30 = (*v28 - **v28);
    v31 = *v30;
    if (!*(v28 + 38))
    {
      break;
    }

    if (v31 < 0x4D)
    {
      goto LABEL_36;
    }

    v32 = v30[38];
    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = *&v29[v32];
    if ((v33 & 2) != 0)
    {
      return 0;
    }

    v34 = 8;
LABEL_35:
    if ((v33 & v34) != 0)
    {
      return 0;
    }

LABEL_36:
    ++v6;
    if (a4 >= sub_4D1DC0(a3))
    {
      return 1;
    }
  }

  if (v31 < 0x4D)
  {
    goto LABEL_36;
  }

  v35 = v30[38];
  if (!v35)
  {
    goto LABEL_36;
  }

  v33 = *&v29[v35];
  if ((v33 & 1) == 0)
  {
    v34 = 4;
    goto LABEL_35;
  }

  return 0;
}

void *sub_102846C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      a4[1] = 0;
      *a4 = v6;
      a4[2] = 0;
      a4[3] = 0;
      v8 = v5[1];
      v7 = v5[2];
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_102855C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  sub_4B59B4(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_1028584(unsigned __int8 **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a1[1];
  v6 = **a1;
  v7 = sub_3E916C(v5[1], *a2);
  v8 = v7;
  if (v6)
  {
    v9 = v5[1];
    v10 = sub_4345A0(v9, v4 & 0xFFFFFFFFFFFFLL);
    v11 = sub_4345A0(v9, v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v8 / v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = v7;
  }

  v13 = v5[3];
  v14 = sub_3E37C0(v5[2], *a2);
  v15 = sub_2BC7A8(v13, v14);
  v16 = a2[1];
  v17 = a2[2];
  for (i = 0.0; v16 != v17; i = i + sub_2BC7A8(v20, v21))
  {
    v19 = *v16++;
    v20 = v5[3];
    v21 = sub_3E37C0(v5[2], v19);
  }

  if (v12 < *a1[2])
  {
    return 0;
  }

  v23 = v15;
  if (i < v23)
  {
    v23 = i;
  }

  return v23 >= *&a1[3][8 * **a1 + 24];
}

double sub_10286DC(uint64_t a1, unint64_t a2, int a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = a2 & 0xFF000000000000;
  v9 = a2 & 0xFFFFFFFFFFFFLL;
  sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v10 = sub_30C50C(v7 + 3896, a2, 0);
    v11 = &v10[-*v10];
    if (*v11 < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        v12 += &v10[*&v10[v12]];
      }
    }

    v13 = (v12 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v12 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v13 = 0;
  }

  sub_31D7E8(v7, v9, 1);
  v14 = sub_4D1F50(**(a1 + 8), *(*(a1 + 8) + 8));
  v15 = *(v14 + 8);
  v16 = (v15 - *v15);
  v17 = *v16;
  if (*(v14 + 38))
  {
    if (v17 < 5)
    {
      goto LABEL_18;
    }

    v18 = v16[2];
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_14:
    v19 = *(v15 + v18);
    v20 = (v13 - *v13);
    v21 = *v20;
    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v17 >= 9)
  {
    v18 = v16[4];
    if (v18)
    {
      goto LABEL_14;
    }
  }

LABEL_18:
  v19 = 0;
  v20 = (v13 - *v13);
  v21 = *v20;
  if (v8)
  {
LABEL_19:
    if (v21 >= 5)
    {
      v22 = v20[2];
      if (!v22)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_15:
  if (v21 < 9)
  {
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  v22 = v20[4];
  if (v22)
  {
LABEL_21:
    v22 = *(v13 + v22);
  }

LABEL_23:
  v23 = v19 + 18000;
  v24 = v19 - 18000;
  if ((v23 >> 5) < 0x465u)
  {
    v24 = v23;
  }

  v25 = v22 - v24;
  if (v25 > 18000)
  {
    v25 -= 36000;
  }

  if (v25 < -17999)
  {
    v25 += 36000;
  }

  if (a3 != 1 || **(a1 + 16) != 1 || (result = 0.0, fabs(v25 / 100.0) <= *(v6 + 129)))
  {
    v27 = **(a1 + 24);
    v28 = v6[3];
    v29 = sub_3E37C0(v6[2], a2);
    v30 = sub_2BC7A8(v28, v29);
    v31 = v30;
    if (v27)
    {
      v32 = v6[1];
      v33 = sub_4345A0(v32, v9);
      v34 = sub_4345A0(v32, v9 | 0x1000000000000);
      if (v34 <= v33)
      {
        v34 = v33;
      }

      if (v34)
      {
        return v31 / v34;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      return v30;
    }
  }

  return result;
}

void sub_1028978(uint64_t a1, int **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = sub_3116D0(a2);
  sub_2B365C(v7, v8, 0, v6 + 151);
  v9 = *(a3 + 32);
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = *(*a2 + v11 + 1) >> 7;
    v13 = v6[151];
    v14 = v6[152];
    if (v13 == v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    v13 = v6[151];
    v14 = v6[152];
    if (v13 == v14)
    {
LABEL_4:
      v15 = 0;
      v31 = BYTE6(v9);
      v32 = WORD2(v9);
      if (v12)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  v16 = a2[4];
  v17 = v13;
  do
  {
    if (__PAIR64__(*(v17 + 4), *v17) == __PAIR64__(WORD2(v16), v16) && *(v17 + 6) == ((v16 & 0xFF000000000000) == 0))
    {
      v15 = (v17 - v13) >> 3;
      v31 = BYTE6(v9);
      v32 = WORD2(v9);
      if (v12)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v17 += 8;
  }

  while (v17 != v14);
  v15 = (v14 - v13) >> 3;
  v31 = BYTE6(v9);
  v32 = WORD2(v9);
  if (v12)
  {
    goto LABEL_32;
  }

LABEL_30:
  v28 = v6[151];
  v15 = (v15 + 1) % ((v6[152] - v28) >> 3);
  v29 = v28 + 8 * v15;
  if (*v29 != v9)
  {
    goto LABEL_15;
  }

LABEL_36:
  if (*(v29 + 4) != v32 || *(v29 + 6) != v31)
  {
    while (1)
    {
LABEL_15:
      v18 = *(a1 + 8);
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      if (v20 >= v19)
      {
        v21 = *v18;
        v22 = v20 - *v18;
        v23 = (v22 >> 3) + 1;
        if (v23 >> 61)
        {
          sub_1794();
        }

        v24 = v19 - v21;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (8 * (v22 >> 3));
        *v26 = *v29;
        v27 = v26 + 1;
        memcpy(0, v21, v22);
        *v18 = 0;
        *(v18 + 8) = v27;
        *(v18 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }

        *(v18 + 8) = v27;
        if (!v12)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *v20 = *v29;
        *(v18 + 8) = v20 + 1;
        if (!v12)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      v30 = v6[151];
      if (v15)
      {
        --v15;
        v29 = v30 + 8 * v15;
        if (*v29 == v9)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v15 = ((v6[152] - v30) >> 3) - 1;
        v29 = v30 + 8 * v15;
        if (*v29 == v9)
        {
          goto LABEL_36;
        }
      }
    }
  }
}

void sub_1028C50()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_FBF440(v0);
  operator new();
}

void sub_1028F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_487EC4(v4);
  sub_487EC4(va);
  sub_4547F0(va1);
  sub_10294EC(&STACK[0x270]);
  sub_100CA00(&STACK[0x2520]);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

void sub_1028FEC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_FBF440(v0);
  operator new();
}

void sub_10292E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_487EC4(v4);
  sub_487EC4(va);
  sub_4547F0(va1);
  sub_1029770(&STACK[0x270]);
  sub_C6579C(&STACK[0x2520]);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1029388(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49D2CC(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_10294D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

void *sub_10294EC(void *a1)
{
  v2 = a1[1104];
  if (v2)
  {
    a1[1105] = v2;
    operator delete(v2);
  }

  v3 = a1[1101];
  if (v3)
  {
    a1[1102] = v3;
    operator delete(v3);
  }

  v4 = a1[1092];
  if (v4)
  {
    a1[1093] = v4;
    operator delete(v4);
  }

  v5 = a1[1089];
  if (v5)
  {
    a1[1090] = v5;
    operator delete(v5);
  }

  v6 = a1[1086];
  if (v6)
  {
    a1[1087] = v6;
    operator delete(v6);
  }

  sub_360988((a1 + 989));
  sub_100DCF0((a1 + 494));
  sub_100CA00((a1 + 1));
  return a1;
}

void *sub_102957C(void *a1)
{
  v2 = a1[1104];
  if (v2)
  {
    a1[1105] = v2;
    operator delete(v2);
  }

  v3 = a1[1101];
  if (v3)
  {
    a1[1102] = v3;
    operator delete(v3);
  }

  v4 = a1[1092];
  if (v4)
  {
    a1[1093] = v4;
    operator delete(v4);
  }

  v5 = a1[1089];
  if (v5)
  {
    a1[1090] = v5;
    operator delete(v5);
  }

  v6 = a1[1086];
  if (v6)
  {
    a1[1087] = v6;
    operator delete(v6);
  }

  sub_360988((a1 + 989));
  sub_100E0D0((a1 + 494));
  sub_100CD54((a1 + 1));
  return a1;
}

uint64_t sub_102960C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49F780(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_102975C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

void *sub_1029770(void *a1)
{
  v2 = a1[1104];
  if (v2)
  {
    a1[1105] = v2;
    operator delete(v2);
  }

  v3 = a1[1101];
  if (v3)
  {
    a1[1102] = v3;
    operator delete(v3);
  }

  v4 = a1[1092];
  if (v4)
  {
    a1[1093] = v4;
    operator delete(v4);
  }

  v5 = a1[1089];
  if (v5)
  {
    a1[1090] = v5;
    operator delete(v5);
  }

  v6 = a1[1086];
  if (v6)
  {
    a1[1087] = v6;
    operator delete(v6);
  }

  sub_360988((a1 + 989));
  sub_C66B9C((a1 + 494));
  sub_C6579C((a1 + 1));
  return a1;
}

uint64_t sub_1029800@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  if (sub_F6A05C(*a1))
  {
    v5 = *a1;

    return sub_49D2CC(a2, v5);
  }

  else
  {
    v7 = sub_102E1A8(a1[1], *a1[2], *(a1[2] + 1), *(a1[2] + 2), a1[3], 0, *a1[4], v4[1].n128_u32[2], v4[1].n128_u32[3]);
    v12[0].n128_u64[0] = sub_1031BFC(a1[1]);
    v12[0].n128_u64[1] = v8;
    sub_32114(v4 + 2, v12);
    if (v7 == -1 || (v7 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
    {
      v4[3].n128_u32[1] = sub_1031BE8(a1[1]);
      return sub_F68960(a2);
    }

    else
    {
      sub_1030B4C(a1[1], v12);
      v10 = sub_F69D6C(v12);
      if (v10 && (sub_3B8508(v4->n128_u64[0]) & 1) == 0)
      {
        v11 = sub_74700();
        nullsub_1(v11);
        sub_F68960(a2);
      }

      else
      {
        sub_49D2CC(a2, v12);
      }

      return sub_4547F0(v12);
    }
  }
}

void sub_102994C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1029960(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void ***a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v30 = **a5;
      if (v30 == (*a5)[1] || sub_F6BC64(v9, v30))
      {
        v31 = *v9;
        v55 = *(v9 + 16);
        v54 = v31;
        *(v9 + 8) = 0u;
        *v9 = 0;
        v56 = *(v9 + 24);
        v57 = *(v9 + 40);
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0;
        v32 = *(v9 + 48);
        v33 = *(v9 + 64);
        v34 = *(v9 + 80);
        v61 = *(v9 + 96);
        v59 = v33;
        v60 = v34;
        v58 = v32;
        v62 = *(v9 + 104);
        v63 = *(v9 + 120);
        *(v9 + 104) = 0u;
        *(v9 + 120) = 0;
        v64 = *(v9 + 128);
        v35 = *(v9 + 144);
        *(v9 + 128) = 0u;
        *(v9 + 144) = 0;
        v66 = *(v9 + 152);
        v36 = *(v9 + 168);
        v65 = v35;
        v67 = v36;
        *(v9 + 152) = 0u;
        *(v9 + 168) = 0;
        v37 = *(v9 + 176);
        v38 = *(v9 + 192);
        v70 = *(v9 + 208);
        v68 = v37;
        v69 = v38;
        v71 = *(v9 + 216);
        v72 = *(v9 + 232);
        *(v9 + 216) = 0u;
        *(v9 + 232) = 0;
        v73 = *(v9 + 240);
        v39 = *(v9 + 256);
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0;
        v40 = *(v9 + 264);
        v41 = *(v9 + 296);
        v76 = *(v9 + 280);
        v77 = v41;
        v75 = v40;
        v42 = *(v9 + 312);
        v43 = *(v9 + 328);
        v44 = *(v9 + 360);
        v80 = *(v9 + 344);
        v81 = v44;
        v78 = v42;
        v79 = v43;
        v45 = *(v9 + 376);
        v46 = *(v9 + 392);
        v47 = *(v9 + 424);
        v84 = *(v9 + 408);
        v85 = v47;
        v82 = v45;
        v83 = v46;
        v48 = *(v9 + 440);
        v49 = *(v9 + 456);
        v50 = *(v9 + 488);
        v88 = *(v9 + 472);
        v89 = v50;
        v86 = v48;
        v87 = v49;
        v51 = *(v9 + 504);
        v74 = v39;
        v90 = v51;
        *(v9 + 504) = 0;
        v52 = *(v9 + 528);
        v91 = *(v9 + 512);
        v92 = v52;
        v93 = *(v9 + 544);
        *(v9 + 512) = 0u;
        *(v9 + 528) = 0u;
        *(v9 + 544) = 0;
        v53 = a3[1];
        if (v53 < a3[2])
        {
          v10 = v55;
          *v53 = v54;
          *(v53 + 16) = v10;
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          *(v53 + 24) = v56;
          *(v53 + 40) = v57;
          v11 = v58;
          v12 = v60;
          v13 = v61;
          *(v53 + 64) = v59;
          *(v53 + 80) = v12;
          *(v53 + 48) = v11;
          *(v53 + 96) = v13;
          *(v53 + 104) = 0;
          *(v53 + 112) = 0;
          *(v53 + 120) = 0;
          *(v53 + 104) = v62;
          *(v53 + 120) = v63;
          *(v53 + 128) = 0;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          *(v53 + 128) = v64;
          *(v53 + 152) = 0;
          *(v53 + 160) = 0;
          *(v53 + 168) = 0;
          *(v53 + 152) = v66;
          v14 = v67;
          *(v53 + 144) = v65;
          v55 = 0;
          v54 = 0uLL;
          v56 = 0uLL;
          v57 = 0;
          v62 = 0uLL;
          v63 = 0;
          v64 = 0uLL;
          v65 = 0;
          *(v53 + 168) = v14;
          v66 = 0uLL;
          v67 = 0;
          v15 = v69;
          v16 = v70;
          *(v53 + 176) = v68;
          *(v53 + 192) = v15;
          *(v53 + 208) = v16;
          *(v53 + 216) = 0;
          *(v53 + 224) = 0;
          *(v53 + 232) = 0;
          *(v53 + 216) = v71;
          v71 = 0uLL;
          *(v53 + 232) = v72;
          *(v53 + 240) = 0;
          *(v53 + 248) = 0;
          *(v53 + 256) = 0;
          *(v53 + 240) = v73;
          *(v53 + 256) = v74;
          v72 = 0;
          v73 = 0uLL;
          v74 = 0;
          v17 = v75;
          v18 = v77;
          *(v53 + 280) = v76;
          *(v53 + 296) = v18;
          *(v53 + 264) = v17;
          v19 = v78;
          v20 = v79;
          v21 = v81;
          *(v53 + 344) = v80;
          *(v53 + 360) = v21;
          *(v53 + 312) = v19;
          *(v53 + 328) = v20;
          v22 = v82;
          v23 = v83;
          v24 = v85;
          *(v53 + 408) = v84;
          *(v53 + 424) = v24;
          *(v53 + 376) = v22;
          *(v53 + 392) = v23;
          v25 = v86;
          v26 = v87;
          v27 = v89;
          *(v53 + 472) = v88;
          *(v53 + 488) = v27;
          *(v53 + 440) = v25;
          *(v53 + 456) = v26;
          *(v53 + 504) = v90;
          *(v53 + 528) = 0;
          *(v53 + 544) = 0;
          *(v53 + 536) = 0;
          v28 = v92;
          *(v53 + 512) = v91;
          *(v53 + 528) = v28;
          v90 = 0;
          v91 = 0uLL;
          *(v53 + 544) = v93;
          v92 = 0uLL;
          v93 = 0;
          v29 = v53 + 552;
          a3[1] = v53 + 552;
        }

        else
        {
          sub_49B008(a3, &v54);
        }

        a3[1] = v29;
        sub_4547F0(&v54);
      }

      v9 += 552;
    }

    while (v9 != a2);
  }

  return a3;
}

uint64_t sub_1029CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  if (sub_F700E4(*a1))
  {
    v5 = *a1;

    return sub_49F780(a2, v5);
  }

  else
  {
    v7 = sub_10457EC(*(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), *(*(a1 + 16) + 16), *(a1 + 24), 0, **(a1 + 32), *(v4 + 24), *(v4 + 28));
    v12[0].n128_u64[0] = sub_10499B8(*(a1 + 8));
    v12[0].n128_u64[1] = v8;
    sub_32114((v4 + 32), v12);
    if (v7 == -1 || (v7 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
    {
      *(v4 + 52) = sub_1031BE8(*(a1 + 8));
      return sub_F6EB3C(a2);
    }

    else
    {
      sub_104881C(*(a1 + 8), v12);
      v10 = sub_F6FDC8(v12);
      if (v10 && (sub_3B8508(*v4) & 1) == 0)
      {
        v11 = sub_74700();
        nullsub_1(v11);
        sub_F6EB3C(a2);
      }

      else
      {
        sub_49F780(a2, v12);
      }

      return sub_4547F0(v12);
    }
  }
}

void sub_1029E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1029E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v30 = **a5;
      if (v30 == (*a5)[1] || sub_F71328(v9, v30))
      {
        v31 = *v9;
        v55 = *(v9 + 16);
        v54 = v31;
        *(v9 + 8) = 0u;
        *v9 = 0;
        v56 = *(v9 + 24);
        v57 = *(v9 + 40);
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0;
        v32 = *(v9 + 48);
        v33 = *(v9 + 64);
        v34 = *(v9 + 80);
        v61 = *(v9 + 96);
        v59 = v33;
        v60 = v34;
        v58 = v32;
        v62 = *(v9 + 104);
        v63 = *(v9 + 120);
        *(v9 + 104) = 0u;
        *(v9 + 120) = 0;
        v64 = *(v9 + 128);
        v35 = *(v9 + 144);
        *(v9 + 128) = 0u;
        *(v9 + 144) = 0;
        v66 = *(v9 + 152);
        v36 = *(v9 + 168);
        v65 = v35;
        v67 = v36;
        *(v9 + 152) = 0u;
        *(v9 + 168) = 0;
        v37 = *(v9 + 176);
        v38 = *(v9 + 192);
        v70 = *(v9 + 208);
        v68 = v37;
        v69 = v38;
        v71 = *(v9 + 216);
        v72 = *(v9 + 232);
        *(v9 + 216) = 0u;
        *(v9 + 232) = 0;
        v73 = *(v9 + 240);
        v39 = *(v9 + 256);
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0;
        v40 = *(v9 + 264);
        v41 = *(v9 + 296);
        v76 = *(v9 + 280);
        v77 = v41;
        v75 = v40;
        v42 = *(v9 + 312);
        v43 = *(v9 + 328);
        v44 = *(v9 + 360);
        v80 = *(v9 + 344);
        v81 = v44;
        v78 = v42;
        v79 = v43;
        v45 = *(v9 + 376);
        v46 = *(v9 + 392);
        v47 = *(v9 + 424);
        v84 = *(v9 + 408);
        v85 = v47;
        v82 = v45;
        v83 = v46;
        v48 = *(v9 + 440);
        v49 = *(v9 + 456);
        v50 = *(v9 + 488);
        v88 = *(v9 + 472);
        v89 = v50;
        v86 = v48;
        v87 = v49;
        v51 = *(v9 + 504);
        v74 = v39;
        v90 = v51;
        *(v9 + 504) = 0;
        v52 = *(v9 + 528);
        v91 = *(v9 + 512);
        v92 = v52;
        v93 = *(v9 + 544);
        *(v9 + 512) = 0u;
        *(v9 + 528) = 0u;
        *(v9 + 544) = 0;
        v53 = *(a3 + 8);
        if (v53 < *(a3 + 16))
        {
          v10 = v55;
          *v53 = v54;
          *(v53 + 16) = v10;
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          *(v53 + 24) = v56;
          *(v53 + 40) = v57;
          v11 = v58;
          v12 = v60;
          v13 = v61;
          *(v53 + 64) = v59;
          *(v53 + 80) = v12;
          *(v53 + 48) = v11;
          *(v53 + 96) = v13;
          *(v53 + 104) = 0;
          *(v53 + 112) = 0;
          *(v53 + 120) = 0;
          *(v53 + 104) = v62;
          *(v53 + 120) = v63;
          *(v53 + 128) = 0;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          *(v53 + 128) = v64;
          *(v53 + 152) = 0;
          *(v53 + 160) = 0;
          *(v53 + 168) = 0;
          *(v53 + 152) = v66;
          v14 = v67;
          *(v53 + 144) = v65;
          v55 = 0;
          v54 = 0uLL;
          v56 = 0uLL;
          v57 = 0;
          v62 = 0uLL;
          v63 = 0;
          v64 = 0uLL;
          v65 = 0;
          *(v53 + 168) = v14;
          v66 = 0uLL;
          v67 = 0;
          v15 = v69;
          v16 = v70;
          *(v53 + 176) = v68;
          *(v53 + 192) = v15;
          *(v53 + 208) = v16;
          *(v53 + 216) = 0;
          *(v53 + 224) = 0;
          *(v53 + 232) = 0;
          *(v53 + 216) = v71;
          v71 = 0uLL;
          *(v53 + 232) = v72;
          *(v53 + 240) = 0;
          *(v53 + 248) = 0;
          *(v53 + 256) = 0;
          *(v53 + 240) = v73;
          *(v53 + 256) = v74;
          v72 = 0;
          v73 = 0uLL;
          v74 = 0;
          v17 = v75;
          v18 = v77;
          *(v53 + 280) = v76;
          *(v53 + 296) = v18;
          *(v53 + 264) = v17;
          v19 = v78;
          v20 = v79;
          v21 = v81;
          *(v53 + 344) = v80;
          *(v53 + 360) = v21;
          *(v53 + 312) = v19;
          *(v53 + 328) = v20;
          v22 = v82;
          v23 = v83;
          v24 = v85;
          *(v53 + 408) = v84;
          *(v53 + 424) = v24;
          *(v53 + 376) = v22;
          *(v53 + 392) = v23;
          v25 = v86;
          v26 = v87;
          v27 = v89;
          *(v53 + 472) = v88;
          *(v53 + 488) = v27;
          *(v53 + 440) = v25;
          *(v53 + 456) = v26;
          *(v53 + 504) = v90;
          *(v53 + 528) = 0;
          *(v53 + 544) = 0;
          *(v53 + 536) = 0;
          v28 = v92;
          *(v53 + 512) = v91;
          *(v53 + 528) = v28;
          v90 = 0;
          v91 = 0uLL;
          *(v53 + 544) = v93;
          v92 = 0uLL;
          v93 = 0;
          v29 = v53 + 552;
          *(a3 + 8) = v53 + 552;
        }

        else
        {
          v29 = sub_D59894(a3, &v54);
        }

        *(a3 + 8) = v29;
        sub_4547F0(&v54);
      }

      v9 += 552;
    }

    while (v9 != a2);
  }

  return a3;
}

void sub_102A1C8()
{
  byte_27C0FBF = 3;
  LODWORD(qword_27C0FA8) = 5136193;
  byte_27C0FD7 = 3;
  LODWORD(qword_27C0FC0) = 5136194;
  byte_27C0FEF = 3;
  LODWORD(qword_27C0FD8) = 5136195;
  byte_27C1007 = 15;
  strcpy(&qword_27C0FF0, "vehicle_mass_kg");
  byte_27C101F = 21;
  strcpy(&xmmword_27C1008, "vehicle_cargo_mass_kg");
  byte_27C1037 = 19;
  strcpy(&qword_27C1020, "vehicle_aux_power_w");
  byte_27C104F = 15;
  strcpy(&qword_27C1038, "dcdc_efficiency");
  strcpy(&qword_27C1050, "drive_train_efficiency");
  HIBYTE(word_27C1066) = 22;
  operator new();
}

void sub_102A3A4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1066) < 0)
  {
    sub_21E6A30();
  }

  sub_21E6A3C();
  _Unwind_Resume(a1);
}

void sub_102A3C4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *&v6 = a3[1];
  *(&v6 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *a1 = a4;
  *(a1 + 23) = *(&v6 + 7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  sub_102BB48(a1 + 32);
}

void sub_102A4F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_102A51C(uint64_t a1, void *a2)
{
  HIBYTE(v12[2]) = 13;
  strcpy(v12, "walking_speed");
  sub_65244(a2, v12, (a1 + 32));
  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  HIBYTE(v12[2]) = 21;
  strcpy(v12, "elevation_gain_factor");
  if (sub_5FC3C(a2, v12))
  {
    v4 = sub_5F5AC(a2, v12);
    *(a1 + 40) = sub_FD5B6C(v4);
    *(a1 + 48) = v5;
    *(a1 + 56) = v6;
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  HIBYTE(v12[2]) = 21;
  strcpy(v12, "elevation_loss_factor");
  if (sub_5FC3C(a2, v12))
  {
    v7 = sub_5F5AC(a2, v12);
    *(a1 + 64) = sub_FD5B6C(v7);
    *(a1 + 72) = v8;
    *(a1 + 80) = v9;
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  strcpy(v12, "elevation_gain_penalty");
  HIBYTE(v12[2]) = 22;
  if (sub_5FC3C(a2, v12))
  {
    v10 = sub_5F5AC(a2, v12);
    *(a1 + 112) = sub_F8DD60(v10);
    *(a1 + 120) = v11;
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  HIBYTE(v12[2]) = 17;
  strcpy(v12, "elevation_factors");
  sub_FD5C98(a2, v12, (a1 + 88));
  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  operator new();
}

void sub_102B81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_102B908(uint64_t *a1, _BYTE *a2, int a3, void *a4)
{
  if (a3)
  {
    *(&v19.__r_.__value_.__s + 23) = 9;
    strcpy(&v19, "hiking_cf");
    v6 = sub_5F8FC(a4, &v19);
    result = sub_3AF30C(a1, v6);
    goto LABEL_25;
  }

  v9 = a2[9];
  if (a2[11])
  {
    *(&v19.__r_.__value_.__s + 23) = 5;
    strcpy(&v19, "avoid");
    if (v9)
    {
      v10 = "_busy_roads";
    }

    else
    {
      v10 = "";
    }

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v11 = 11;
    goto LABEL_12;
  }

  if (a2[9])
  {
    *(&v19.__r_.__value_.__s + 23) = 5;
    strcpy(&v19, "avoid");
    v10 = "_busy_roads";
    goto LABEL_11;
  }

  if (a2[10] != 1)
  {
    *(&v19.__r_.__value_.__s + 23) = 13;
    strcpy(&v19, "cost_function");
    v18 = sub_5F8FC(a4, &v19);
    result = sub_3AF30C(a1, v18);
    goto LABEL_25;
  }

  v11 = 0;
  *(&v19.__r_.__value_.__s + 23) = 5;
  strcpy(&v19, "avoid");
  v10 = "";
LABEL_12:
  std::string::append(&v19, v10, v11);
  if (a2[10])
  {
    v12 = "_hills";
  }

  else
  {
    v12 = "";
  }

  if (a2[10])
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  std::string::append(&v19, v12, v13);
  if (a2[11])
  {
    v14 = "_stairs";
  }

  else
  {
    v14 = "";
  }

  if (a2[11])
  {
    v15 = 7;
  }

  else
  {
    v15 = 0;
  }

  std::string::append(&v19, v14, v15);
  std::string::append(&v19, "_cf", 3uLL);
  v16 = sub_5F8FC(a4, &v19);
  result = sub_3AF30C(a1, v16);
LABEL_25:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v17;
  }

  return result;
}

void sub_102BB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_102BB48(uint64_t a1)
{
  *a1 = 0x4012CCCCCCCCCCCDLL;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  operator new();
}

void sub_102BE20(_Unwind_Exception *a1)
{
  v5 = v2;
  v7 = *v5;
  if (*v5)
  {
    v1[69] = v7;
    operator delete(v7);
    v8 = *v4;
    if (!*v4)
    {
LABEL_3:
      v9 = v1[62];
      if (!v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v8 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[66] = v8;
  operator delete(v8);
  v9 = v1[62];
  if (!v9)
  {
LABEL_5:
    sub_21DB4B4((v1 + 56));
    v10 = v1[49];
    if (v10)
    {
      v1[50] = v10;
      operator delete(v10);
      v11 = v1[42];
      if (v11)
      {
LABEL_18:
        v1[43] = v11;
        operator delete(v11);
        v12 = v1[39];
        if (v12)
        {
LABEL_19:
          v1[40] = v12;
          operator delete(v12);
          v13 = *(v3 + 48);
          if (v13)
          {
LABEL_20:
            v1[37] = v13;
            operator delete(v13);
            v14 = *v3;
            if (*v3)
            {
LABEL_21:
              v1[31] = v14;
              operator delete(v14);
              v15 = v1[7];
              if (!v15)
              {
LABEL_16:
                _Unwind_Resume(a1);
              }

LABEL_15:
              v1[8] = v15;
              operator delete(v15);
              goto LABEL_16;
            }

LABEL_14:
            v15 = v1[7];
            if (!v15)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

LABEL_13:
          v14 = *v3;
          if (*v3)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

LABEL_12:
        v13 = *(v3 + 48);
        if (v13)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = v1[42];
      if (v11)
      {
        goto LABEL_18;
      }
    }

    v12 = v1[39];
    if (v12)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_4:
  v1[63] = v9;
  operator delete(v9);
  goto LABEL_5;
}

void sub_102BF98()
{
  if (!*(v0 + 56))
  {
    JUMPOUT(0x102BEECLL);
  }

  JUMPOUT(0x102BEE4);
}

uint64_t sub_102C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = sub_FBF404(a1, a2, a3, a4, a5, a6, 0);
  v9.n128_u64[0] = 0;
  v9.n128_u64[1] = &off_2669FE0;
  sub_434934(v7 + 4, &v9);
  return a1;
}

void sub_102C060()
{
  v0 = __chkstk_darwin();
  sub_FBF440(v0);
  sub_109D928(v1, *(v0 + 8));
}

void sub_102C248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_49D8D0(&STACK[0x11E0]);
  sub_4547F0(&STACK[0x11F0]);
  sub_4547F0(va);
  sub_102D10C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102C288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  sub_102D10C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102C2C4()
{
  v0 = __chkstk_darwin();
  sub_FBF440(v0);
  sub_109FD78(v1, *(v0 + 8));
}

void sub_102C4AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_49D8D0(&STACK[0x11E0]);
  sub_4547F0(&STACK[0x11F0]);
  sub_4547F0(va);
  sub_102C528(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102C4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  sub_102C528(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t sub_102C528(uint64_t a1)
{
  v2 = *(a1 + 3984);
  if (v2)
  {
    v3 = *(a1 + 3992);
    v4 = *(a1 + 3984);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 3984);
    }

    *(a1 + 3992) = v2;
    operator delete(v4);
  }

  return sub_100CD54(a1);
}

void sub_102C5AC()
{
  v0 = __chkstk_darwin();
  sub_FBF440(v0);
  sub_109FD78(v1, *(v0 + 8));
}

void sub_102C908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_487EC4((v2 - 136));
  sub_454784(va);
  sub_102C528(va1);
  _Unwind_Resume(a1);
}

void sub_102C92C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v2 + 8) = v3;
  sub_DC15BC((v4 - 152));
  sub_454784(v4 - 136);
  sub_454784(va);
  sub_102C528(va1);
  _Unwind_Resume(a1);
}

void sub_102C964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_49D8D0((v2 - 152));
  sub_454784(va);
  sub_102C528(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_102C9E8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  sub_FBF440(v0);
  sub_10A2094(v13, v3->n128_i64[1]);
  sub_10A2104(v13, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), -1, v3[1].n128_u32[2], v12);
  v3[3].n128_u32[1] = sub_109EC4C(v13);
  v18[0].n128_u64[0] = sub_109EC54(v13);
  v18[0].n128_u64[1] = v6;
  sub_32114(v3 + 2, v18);
  v7 = sub_109EC60(v13);
  sub_434D48(&v3[5], v3[5].n128_i64[1], *v7, v7[1], (v7[1] - *v7) >> 5);
  v3[3].n128_u8[1] = 1;
  if (!sub_F6FDC8(v12))
  {
    sub_49F780(v18, v12);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v16 = v5;
    v17 = 0;
    operator new();
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  sub_4547F0(v12);
  v8 = __p;
  if (__p)
  {
    v9 = v15;
    v10 = __p;
    if (v15 != __p)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 3));
        }

        v9 -= 4;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v15 = v8;
    operator delete(v10);
  }

  return sub_C6579C(v13);
}

void sub_102CBD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_49D8D0(&STACK[0x11E0]);
  sub_4547F0(&STACK[0x11F0]);
  sub_4547F0(va);
  sub_102CC4C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102CC10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  sub_102CC4C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t sub_102CC4C(uint64_t a1)
{
  v2 = *(a1 + 3984);
  if (v2)
  {
    v3 = *(a1 + 3992);
    v4 = *(a1 + 3984);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 3984);
    }

    *(a1 + 3992) = v2;
    operator delete(v4);
  }

  return sub_C6579C(a1);
}

uint64_t sub_102CCD0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  sub_FBF440(v0);
  sub_10A2094(v21, v3->n128_i64[1]);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (*(v2 + 40))
  {
    sub_10A3584(v21, v6, v7, v8, *(v2 + 24), -1, v3[1].n128_u32[2], &v18);
  }

  else
  {
    sub_10A32FC(v21, v6, v7, v8, *(v2 + 24), -1, v3[1].n128_u32[2], &v18);
  }

  v3[3].n128_u32[1] = sub_109EC4C(v21);
  v26.n128_u64[0] = sub_109EC54(v21);
  v26.n128_u64[1] = v9;
  sub_32114(v3 + 2, &v26);
  v10 = sub_109EC60(v21);
  sub_434D48(&v3[5], v3[5].n128_i64[1], *v10, v10[1], (v10[1] - *v10) >> 5);
  v3[3].n128_u8[1] = 1;
  if (!sub_F64B34(&v18))
  {
    v26 = 0uLL;
    v27 = 0;
    v24 = &v26;
    v25 = 0;
    if (v18.__r_.__value_.__l.__size_ != v18.__r_.__value_.__r.__words[0])
    {
      if (0xF128CFC4A33F128DLL * ((v18.__r_.__value_.__l.__size_ - v18.__r_.__value_.__r.__words[0]) >> 3) < 0x76B981DAE6076CLL)
      {
        operator new();
      }

      sub_1794();
    }

    if (SHIBYTE(v20) < 0)
    {
      sub_325C(&v28, __p, *(&__p + 1));
    }

    else
    {
      v28 = __p;
      v29 = v20;
    }

    v5->n128_u64[0] = 0;
    v5->n128_u64[1] = 0;
    v5[1].n128_u64[0] = 0;
    v24 = v5;
    v25 = 0;
    operator new();
  }

  v5->n128_u64[0] = 0;
  v5->n128_u64[1] = 0;
  v5[1].n128_u64[0] = 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  v11 = v18.__r_.__value_.__r.__words[0];
  if (v18.__r_.__value_.__r.__words[0])
  {
    size = v18.__r_.__value_.__l.__size_;
    v13 = v18.__r_.__value_.__r.__words[0];
    if (v18.__r_.__value_.__l.__size_ != v18.__r_.__value_.__r.__words[0])
    {
      do
      {
        size = sub_4547F0(size - 552);
      }

      while (size != v11);
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    v18.__r_.__value_.__l.__size_ = v11;
    operator delete(v13);
  }

  v14 = v22;
  if (v22)
  {
    v15 = v23;
    v16 = v22;
    if (v23 != v22)
    {
      do
      {
        if (*(v15 - 1) < 0)
        {
          operator delete(*(v15 - 3));
        }

        v15 -= 4;
      }

      while (v15 != v14);
      v16 = v22;
    }

    v23 = v14;
    operator delete(v16);
  }

  return sub_C6579C(v21);
}

void sub_102D02C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_487EC4((v2 - 136));
  sub_454784(va);
  sub_102CC4C(va1);
  _Unwind_Resume(a1);
}

void sub_102D050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v2 + 8) = v3;
  sub_DC15BC((v4 - 152));
  sub_454784(v4 - 136);
  sub_454784(va);
  sub_102CC4C(va1);
  _Unwind_Resume(a1);
}

void sub_102D088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_49D8D0((v2 - 152));
  sub_454784(va);
  sub_102CC4C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_102D10C(uint64_t a1)
{
  v2 = *(a1 + 3984);
  if (v2)
  {
    v3 = *(a1 + 3992);
    v4 = *(a1 + 3984);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 3984);
    }

    *(a1 + 3992) = v2;
    operator delete(v4);
  }

  return sub_100CA00(a1);
}

uint64_t sub_102D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_102D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_102D2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_49F664(v4, *(v6 - 3), *(v6 - 2), 0xF128CFC4A33F128DLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
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

void sub_102D380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_487EC4(v9);
  sub_DC1500(&a9);
  _Unwind_Resume(a1);
}

void sub_102D3B0()
{
  byte_27C10C7 = 3;
  LODWORD(qword_27C10B0) = 5136193;
  byte_27C10DF = 3;
  LODWORD(qword_27C10C8) = 5136194;
  byte_27C10F7 = 3;
  LODWORD(qword_27C10E0) = 5136195;
  byte_27C110F = 15;
  strcpy(&qword_27C10F8, "vehicle_mass_kg");
  byte_27C1127 = 21;
  strcpy(&xmmword_27C1110, "vehicle_cargo_mass_kg");
  byte_27C113F = 19;
  strcpy(&qword_27C1128, "vehicle_aux_power_w");
  byte_27C1157 = 15;
  strcpy(&qword_27C1140, "dcdc_efficiency");
  strcpy(&qword_27C1158, "drive_train_efficiency");
  HIBYTE(word_27C116E) = 22;
  operator new();
}

void sub_102D58C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C116E) < 0)
  {
    sub_21E6B0C();
  }

  sub_21E6B18();
  _Unwind_Resume(a1);
}

void *sub_102D5AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

BOOL sub_102D5BC(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (a1[1] >= a2[1])
  {
    return a1[2] < a2[2];
  }

  return 1;
}

void sub_102D600(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_102D8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if ((*(v31 - 89) & 0x80000000) == 0)
  {
    sub_2AE54C(v30);
    _Unwind_Resume(a1);
  }

  operator delete(*(v31 - 112));
  sub_2AE54C(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_102D9DC(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 16 * ((a1[1] - *a1) >> 4);
  v21 = v9;
  v10 = *a3;
  v11 = *a4;
  *v9 = *a2;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  if (*(a5 + 23) < 0)
  {
    sub_325C((v9 + 24), *a5, *(a5 + 8));
    v12 = 48 * v5 + 48;
    v13 = *a1;
    v14 = a1[1];
    v15 = v21 + *a1 - v14;
    if (v14 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_18[12 * v5] = *a5;
    *&stru_20.segname[48 * v5] = *(a5 + 16);
    v12 = v9 + 48;
    v13 = *a1;
    v14 = a1[1];
    v15 = v9 + *a1 - v14;
    if (v14 == *a1)
    {
      goto LABEL_21;
    }
  }

  v16 = v13;
  v17 = v15;
  do
  {
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    v19 = *(v16 + 24);
    *(v17 + 40) = *(v16 + 5);
    *(v17 + 24) = v19;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    *(v16 + 3) = 0;
    v16 += 3;
    v17 += 48;
  }

  while (v16 != v14);
  do
  {
    if (*(v13 + 47) < 0)
    {
      operator delete(*(v13 + 24));
    }

    v13 += 48;
  }

  while (v13 != v14);
  v13 = *a1;
LABEL_21:
  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_102DBC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_102DBDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_102DBDC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_102DC50(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 4464;
  *(a1 + 16) = -1;
  sub_102DFD8(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_102DF28(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_102DFD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = &unk_2290750;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2290750;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_2290750;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = &unk_2290750;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &unk_2290750;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = &unk_2290750;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = &unk_2290750;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2290750;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = &unk_2290750;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = &unk_2290750;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = &unk_2290750;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 552) = &unk_2290750;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 600) = &unk_2290750;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 648) = &unk_2290750;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = &unk_2290750;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 744) = &unk_2290750;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  sub_10535CC(a1 + 792, (a2 + 4464));
  return a1;
}

void sub_102E104(_Unwind_Exception *a1)
{
  sub_4821F8(v2);
  sub_39393C(v1);
  _Unwind_Resume(a1);
}

void *sub_102E120(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v3 = a1[12];
    v4 = a1[11];
    if (v3 != v2)
    {
      v5 = a1[12];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[11];
    }

    a1[12] = v2;
    operator delete(v4);
  }

  v8 = a1[10];
  if (v8)
  {
    free(v8);
  }

  return a1;
}

unint64_t sub_102E1A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, char a6, int a7, unsigned int a8, unsigned int a9)
{
  v37 = a8;
  sub_102E750(a1);
  if (*a2 == a2[1])
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_42;
    }

    sub_19594F8(&__t);
    sub_4A5C(&__t, "p2p_query called with empty origin terminal", 43);
    if ((v36 & 0x10) != 0)
    {
      v20 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v20 = v32;
      }

      v21 = v31;
      v19 = v20 - v31;
      if (v20 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v19 = 0;
        v25 = 0;
LABEL_37:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 1u);
        if (v25 < 0)
        {
          operator delete(__dst);
        }

        if (v34 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v21 = v29;
      v19 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_34:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v25 = v19;
    if (!v19)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*a3 == *(a3 + 8))
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__t);
      sub_4A5C(&__t, "p2p_query called with empty destination terminal", 48);
      if ((v36 & 0x10) != 0)
      {
        v22 = v35;
        if (v35 < v32)
        {
          v35 = v32;
          v22 = v32;
        }

        v21 = v31;
        v19 = v22 - v31;
        if (v22 - v31 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v36 & 8) == 0)
        {
          v19 = 0;
          v25 = 0;
          goto LABEL_37;
        }

        v21 = v29;
        v19 = v30 - v29;
        if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_45:
          sub_3244();
        }
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      v25 = v19;
      if (!v19)
      {
        goto LABEL_37;
      }

LABEL_36:
      memmove(&__dst, v21, v19);
      goto LABEL_37;
    }

LABEL_42:
    v17 = 0x7FFFFFFF00000000;
    v18 = 0xFFFFFFFFLL;
    return v18 | v17;
  }

  v16 = *a5;
  if (*a5 == 0x7FFFFFFF)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v16 = std::chrono::system_clock::to_time_t(&__t);
  }

  *(a1 + 2960) = v16;
  *(a1 + 2964) = a6;
  *(a1 + 2968) = a4;
  *(a1 + 1040) = a7;
  if ((a1 + 1168) != a2)
  {
    sub_C70E60(a1 + 1168, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  }

  *(a1 + 1192) = a2[3];
  __t.__d_.__rep_ = a1;
  sub_10322E4(a1 + 24, a3, 1, &__t);
  *(a1 + 976) = a1 + 24;
  if (!(*(a1 + 112) + *(a1 + 64) + *(a1 + 160) + *(a1 + 208) + *(a1 + 256) + *(a1 + 304) + *(a1 + 352) + *(a1 + 400) + *(a1 + 448) + *(a1 + 496) + *(a1 + 544) + *(a1 + 592) + *(a1 + 640) + *(a1 + 688) + *(a1 + 736) + *(a1 + 784)))
  {
    goto LABEL_42;
  }

  sub_102EA98(a1);
  __t.__d_.__rep_ = 0;
  rep = 0;
  v28.__locale_ = 0;
  sub_102F300(a1, &__t);
  if (__t.__d_.__rep_)
  {
    rep = __t.__d_.__rep_;
    operator delete(__t.__d_.__rep_);
  }

  sub_102F8BC(a1);
  sub_102FEC0(a1, &v37, a9);
  v18 = *(*(a1 + 928) + 8);
  v17 = v18 & 0xFFFFFFFF00000000;
  v18 = v18;
  return v18 | v17;
}

void sub_102E6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

double sub_102E750(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F50[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_102EA98(uint64_t a1)
{
  v64 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  v2 = *a1;
  v3 = *a1 + 0x2000;
  v4 = *(*a1 + 10016);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(*a1 + 10032);
    while (1)
    {
      v7 = BYTE6(*v6);
      v8 = HIDWORD(*v6);
      if ((*(v2 + 10024) != *v6 || *(*a1 + 10028) != v8 || *(*a1 + 10030) != v7) && (!*(v2 + 10000) || *(v2 + 9992) != *v6 || *(*a1 + 9996) != v8 || *(*a1 + 9998) != v7))
      {
        break;
      }

      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v6 = *(*a1 + 10032);
  }

  v9 = *(*a1 + 10032) + 8 * v4;
  if (v6 == v9)
  {
LABEL_66:
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v58 = (a1 + 2960);
    __asm { FMOV            V0.2D, #1.0 }

    v57 = _Q0;
    do
    {
      v60 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32) | (2 * ((*v6 & 0xFF000000000000) == 0));
      if (v64 && ((v16 = *a1, v17 = *(a1 + 2968), sub_F8EC88(*a1 + 8, *v6, &v65), v68 = 0u, v69 = 0u, v70 = v57, v71 = 0x3FF0000000000000, v72 = 1, sub_10A8B08(v16 + 4392, &v68, &v65, 0x3B9ACA00u, v17, *&v57, v18), (v72 & 1) == 0) || (v20 = sub_F8634C(&v68, &v70, v19), v69 + v20 == -1) || DWORD1(v69) + HIDWORD(v20) == 0x7FFFFFFF || *(&v69 + 1) + v21 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v22 = sub_101E508(*(a1 + 8));
        if (v22 - 1 <= v64 || (sub_1034680(*a1, &v60, v22 - 1, *(a1 + 2968), v58, *(a1 + 2964)) & 1) != 0)
        {
          sub_1053B80(a1 + 1056, &v60, &v64);
          sub_1054E9C((a1 + 1056));
          __src = v11;
          LODWORD(v68) = v64 - 1;
          sub_1053B80(a1 + 2848, &v60, &v68);
          sub_1054E9C((a1 + 2848));
          v23 = *(a1 + 8);
          LODWORD(v68) = v64;
          v24 = sub_101F854(*v23, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 & 2) == 0, &v68);
          v25 = v11;
          if (v11 == v10 || v10[-1].i64[1] != v24)
          {
            if (v10 >= v63)
            {
              v26 = v10 - v11;
              v27 = (v10 - v11) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                sub_1794();
              }

              v29 = v63 - v11;
              if ((v63 - v11) >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                if (!(v30 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 0;
              v31 = (8 * v27);
              *v31 = v24;
              v10 = (v31 + 1);
              memcpy(0, v11, v26);
              __p = 0;
              v62 = v10;
              v63 = 0;
            }

            else
            {
              v10->i64[0] = v24;
              v10 = (v10 + 8);
            }

            __src = v25;
            v62 = v10;
          }

          v32 = *(a1 + 8);
          LODWORD(v68) = v64;
          v33 = sub_101F854(*v32, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 >> 1) & 1, &v68);
          if (v10[-1].i64[1] == v33)
          {
            v11 = __src;
          }

          else
          {
            v11 = __src;
            if (v10 >= v63)
            {
              v34 = v10 - __src;
              v35 = (v10 - __src) >> 3;
              v36 = v35 + 1;
              if ((v35 + 1) >> 61)
              {
                sub_1794();
              }

              v37 = v63 - __src;
              if ((v63 - __src) >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF8)
              {
                v38 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v39 = (8 * v35);
              *v39 = v33;
              v10 = (v39 + 1);
              memcpy(0, __src, v34);
              __p = 0;
              v62 = v10;
              v63 = 0;
              v11 = 0;
            }

            else
            {
              v10->i64[0] = v33;
              v10 = (v10 + 8);
            }

            v62 = v10;
          }
        }

        else
        {
          LODWORD(v68) = v22 - 2;
          sub_1053B80(a1 + 2848, &v60, &v68);
          sub_1054E9C((a1 + 2848));
        }
      }

      else
      {
        LODWORD(v68) = 0;
        sub_1053B80(a1 + 1056, &v60, &v68);
        sub_1054E9C((a1 + 1056));
      }

      for (++v6; v6 != v9; ++v6)
      {
        v40 = BYTE6(*v6);
        v41 = HIDWORD(*v6);
        if ((*(v2 + 10024) != *v6 || *(v3 + 1836) != v41 || *(v3 + 1838) != v40) && (!*(v2 + 10000) || *(v2 + 9992) != *v6 || *(v3 + 1804) != v41 || *(v3 + 1806) != v40))
        {
          break;
        }
      }
    }

    while (v6 != v9);
    v2 = *a1;
  }

  v42 = *(v2 + 10272);
  v43 = v42 + 88 * *(v2 + 10176);
  *&v68 = v2 + 10040;
  *(&v68 + 1) = v42;
  *&v69 = v43;
  sub_1007918(&v68);
  v44 = *(v2 + 10272) + 88 * *(v2 + 10176);
  v65 = (v2 + 10040);
  v66 = v44;
  v67 = v44;
  sub_1007918(&v65);
  while (1)
  {
    v45 = *(&v68 + 1);
    if (*(&v68 + 1) == v66)
    {
      break;
    }

    v60 = (((*(*(&v68 + 1) + 32) >> 16) & 0xFFFF0000 | (*(*(&v68 + 1) + 32) << 32) | (2 * ((*(*(&v68 + 1) + 32) & 0xFF000000000000) == 0))) + 4 * *(*(&v68 + 1) + 80)) & 0xFFFFFFFFFFFFFFFELL | *(*(&v68 + 1) + 84) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 1056, &v60, v73);
    sub_1054E9C((a1 + 1056));
    v60 = (((*(v45 + 72) >> 16) & 0xFFFF0000 | (*(v45 + 72) << 32) | (2 * ((*(v45 + 72) & 0xFF000000000000) == 0))) + 4 * *(v45 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v45 + 84) >> 1) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 1056, &v60, v73);
    sub_1054E9C((a1 + 1056));
    *(&v68 + 1) += 88;
    sub_1007918(&v68);
  }

  for (i = *(sub_F8F520(*a1 + 8) + 16); i; i = *i)
  {
    *&v68 = (i[2] >> 16) & 0xFFFF0000 | (i[2] << 32) | (2 * ((i[2] & 0xFF000000000000) == 0));
    LODWORD(v65) = 0;
    sub_1053B80(a1 + 1056, &v68, &v65);
    sub_1054E9C((a1 + 1056));
  }

  v47 = 126 - 2 * __clz((v10 - v11) >> 3);
  if (v10 == v11)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  sub_2D31D4(v11, v10, &v68, v48, 1);
  v50 = __p;
  v49 = v62;
  if (__p == v62)
  {
LABEL_93:
    if (v50 != v49)
    {
      v62 = v50;
    }
  }

  else
  {
    v51 = __p - 8;
    while (v51 + 4 != v62)
    {
      v52 = v51[2];
      v51 += 2;
      LODWORD(v53) = v51[2];
      if (v52 == v53 && v51[1] == v51[3])
      {
        v55 = v51 + 4;
        if (v51 + 4 != v62)
        {
          do
          {
            if (v53 != *v55 || v51[1] != v55[1])
            {
              v53 = *v55;
              *(v51 + 1) = *v55;
              v51 += 2;
            }

            v55 += 2;
          }

          while (v55 != v49);
          v49 = v62;
        }

        v50 = v51 + 2;
        goto LABEL_93;
      }
    }
  }

  sub_105DC54((*a1 + 4480), &__p, *(a1 + 2968), *(a1 + 2960), *(a1 + 2964), 4u);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }
}

void sub_102F28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    v18 = a1;
    operator delete(v17);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

void sub_102F300(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1176);
  v3 = *(a1 + 1168);
  v50 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
  if (v50 >> 30)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v46 = sub_2D390(exception, "The source terminal of a query cannot have more than (2^30 - 1) nodes.", 0x46uLL);
  }

  if (v2 != v3)
  {
    v5 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v52 = _Q0;
    do
    {
      v11 = *(a1 + 1168) + 96 * v5;
      v12 = *a1;
      v13 = **a1;
      if (*(v13 + 7774) == 1)
      {
        v14 = *v11;
        v15 = HIDWORD(*v11);
        v16 = sub_2AF704(v13 + 3896, HIDWORD(*v11), 1);
        if (!v16)
        {
          goto LABEL_4;
        }

        v17 = &v16[-*v16];
        if (*v17 < 5u)
        {
          goto LABEL_4;
        }

        v18 = *(v17 + 2);
        if (!v18 || *&v16[v18 + *&v16[v18]] <= WORD1(v14) || !sub_2B817C(v13, v15 & 0xFFFF0000FFFFFFFFLL | (WORD1(v14) << 32)))
        {
          goto LABEL_4;
        }

        v12 = *a1;
      }

      v19 = *(a1 + 2968);
      v54 = 0u;
      v55 = 0u;
      v56 = v52;
      v57 = 0x3FF0000000000000;
      LOBYTE(v58) = 1;
      sub_10A5C78(v12 + 549, &v54, v11, v11 + 8, v19);
      if (v58)
      {
        v21 = sub_F8634C(&v54, &v56, v20);
        v49 = v55 + v21;
        if (v55 + v21 != -1)
        {
          v48 = DWORD1(v55) + HIDWORD(v21);
          if (DWORD1(v55) + HIDWORD(v21) != 0x7FFFFFFF)
          {
            v22 = *(v11 + 8);
            sub_F8ED58(*a1 + 8, *v11, 0, (a1 + 2976), 0);
            v23 = -1171354717 * ((*(a1 + 2984) - *(a1 + 2976)) >> 3);
            if (v23)
            {
              v24 = 0;
              v25 = 0;
              v51 = 1000000000 - v22;
              v26 = 88 * v23;
              while (2)
              {
                v28 = *(a1 + 2976);
                v29 = *(a1 + 2960);
                v30 = *a1;
                v31 = *(a1 + 2968);
                if (*(*a1 + 9954) == 1)
                {
                  if (sub_1007A48((v30 + 1255), v28 + v24) != -1)
                  {
                    goto LABEL_20;
                  }

                  v32 = *(v28 + v24 + 32);
                  v33 = (v32 >> 16) & 0xFFFF0000 | (v32 << 32);
                  v34 = (v32 & 0xFF000000000000) == 0;
                  v35 = (v33 | (2 * v34)) + 4 * *(v28 + v24 + 80);
                  WORD2(v54) = ((v33 | (2 * v34)) + 4 * *(v28 + v24 + 80)) >> 16;
                  LODWORD(v54) = HIDWORD(v35);
                  BYTE6(v54) = (((v35 << 16) & 0xFFFF00000000 | HIDWORD(v35) | (v34 << 48)) ^ 0x1000000000000uLL) >> 48;
                  if (sub_100A97C((v30 + 1245), &v54) != -1)
                  {
                    goto LABEL_20;
                  }
                }

                v54 = 0u;
                v55 = 0u;
                v56 = v52;
                v57 = 0x3FF0000000000000;
                LOBYTE(v58) = 1;
                sub_10AB718((v30 + 549), &v54, (v28 + v24), v51, v31);
                if ((v58 & 1) == 0)
                {
                  goto LABEL_20;
                }

                v37 = sub_F8634C(&v54, &v56, v36);
                if (v55 + v37 == -1 || DWORD1(v55) + HIDWORD(v37) == 0x7FFFFFFF)
                {
                  goto LABEL_20;
                }

                v38 = v28 + v24;
                v39 = (DWORD1(v55) + HIDWORD(v37) + v48);
                v40 = *(a1 + 2964);
                *&v54 = (v55 + v37 + v49) | (v39 << 32);
                DWORD2(v54) = v29;
                BYTE12(v54) = v40;
                *&v55 = (((*(v28 + v24 + 32) >> 16) & 0xFFFF0000 | (*(v28 + v24 + 32) << 32) | (2 * ((*(v28 + v24 + 32) & 0xFF000000000000) == 0))) + 4 * *(v28 + v24 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v28 + v24 + 84) & 1;
                *(&v55 + 1) = (((*(v28 + v24 + 72) >> 16) & 0xFFFF0000 | (*(v28 + v24 + 72) << 32) | (2 * ((*(v28 + v24 + 72) & 0xFF000000000000) == 0))) + 4 * *(v38 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v38 + 84) >> 1) & 1;
                LODWORD(v56) = *(v28 + v24 + 84);
                v58 = v25;
                v59 = 0;
                v60 = v5 | 0x80000000;
                v53 = (((4 * *(v38 + 82)) | (*(v28 + v24 + 72) << 32)) + ((*(v28 + v24 + 72) >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v38 + 84) >> 1) & 1 | (2 * ((*(v28 + v24 + 72) & 0xFF000000000000) == 0));
                v41 = *(a1 + 1044);
                if (v41 == 0x7FFFFFFF)
                {
                  goto LABEL_19;
                }

                sub_F98EF8(a1 + 1200, &v53, v61);
                if (v61[0])
                {
                  sub_F98EF8(a1 + 1200, &v53, v61);
                  v42 = *(*(a1 + 1968) + 80 * *(v62 + 8) + 8);
                  if (v54 == v42)
                  {
                    if (SDWORD1(v54) < SHIDWORD(v42))
                    {
                      goto LABEL_33;
                    }

LABEL_19:
                    sub_1034330(a1 + 1200, &v53, &v54);
                    v61[0] = (((4 * *(v38 + 82)) | (*(v38 + 72) << 32)) + ((*(v38 + 72) >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v38 + 84) >> 1) & 1 | (2 * ((*(v38 + 72) & 0xFF000000000000) == 0));
                    LODWORD(v53) = 0;
                    sub_1053B80(a1 + 1056, v61, &v53);
                    sub_1053EDC((a1 + 1056), a2);
                    sub_1054E9C((a1 + 1056));
LABEL_20:
                    ++v25;
                    v24 += 88;
                    if (v26 == v24)
                    {
                      goto LABEL_4;
                    }

                    continue;
                  }

                  if (v54 >= v42)
                  {
                    goto LABEL_19;
                  }

LABEL_33:
                  sub_F98EF8(a1 + 1200, &v53, v61);
                  v43 = *(*(a1 + 1968) + 80 * *(v62 + 8) + 12);
                  v44 = *(a1 + 1044);
                  if (v44 < v43 || v39 <= v41)
                  {
                    if (v44 >= v43)
                    {
                      goto LABEL_19;
                    }

                    goto LABEL_36;
                  }

                  v27 = -1;
                }

                else
                {
LABEL_36:
                  if (v39 > v41)
                  {
                    goto LABEL_19;
                  }

                  v27 = 1;
                }

                break;
              }

              *(a1 + 1048) += v27;
              goto LABEL_19;
            }
          }
        }
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v50);
  }
}

void sub_102F8BC(uint64_t a1)
{
  v52 = -1431655765 * ((*(a1 + 1176) - *(a1 + 1168)) >> 5);
  if (v52)
  {
    v2 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v60 = _Q0;
    while (1)
    {
      v56 = v2;
      v6 = *(a1 + 1168) + 96 * v2;
      if (*(a1 + 3048) == 1)
      {
        sub_10345B8(a1, v6);
      }

      sub_1056F4C(*(a1 + 976) + 24, v6, &v62);
      if (v62)
      {
        v59 = *(v6 + 8);
        v7 = *a1;
        v8 = *(a1 + 2968);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10A5C78((v7 + 4392), &v62, v6, v6 + 8, v8);
        if (v66)
        {
          v10 = sub_F8634C(&v62, &v64, v9);
          v54 = v63 + v10;
          if (v63 + v10 != -1)
          {
            v53 = DWORD1(v63) + HIDWORD(v10);
            if (DWORD1(v63) + HIDWORD(v10) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

LABEL_3:
      v2 = v56 + 1;
      if (v56 + 1 == v52)
      {
        return;
      }
    }

    sub_1056F4C(*(a1 + 976) + 24, v6, &v62);
    v12 = *(*(&v63 + 1) + 8);
    v11 = *(*(&v63 + 1) + 16);
    for (i = v11; ; v11 = i)
    {
      if (v12 == v11)
      {
        goto LABEL_3;
      }

      v57 = v12;
      v13 = (**(a1 + 976) + 32 * *v12);
      v14 = -1431655765 * ((v13[1] - *v13) >> 5);
      if (v14)
      {
        break;
      }

LABEL_11:
      v12 = v57 + 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *v13 + 96 * v15;
      if (*v16 != *v6)
      {
        goto LABEL_16;
      }

      v17 = *(v16 + 8);
      v18 = *a1;
      v19 = *(a1 + 2968);
      v62 = 0u;
      v63 = 0u;
      v64 = v60;
      v65 = 0x3FF0000000000000;
      v66 = 1;
      sub_10A5C78((v18 + 4392), &v62, v16, v16 + 8, v19);
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }

      LODWORD(v20) = v62;
      v21 = *&v64 * v20;
      if (v21 >= 0.0)
      {
        if (v21 >= 4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) + 1;
      }

      else
      {
        if (v21 <= -4.50359963e15)
        {
          goto LABEL_25;
        }

        v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
      }

      v21 = (v22 >> 1);
LABEL_25:
      v23 = *(&v64 + 1) * SDWORD1(v62);
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v24 = (v23 + v23) + 1;
          goto LABEL_30;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_30:
        v23 = (v24 >> 1);
      }

      v25 = v63 + v21;
      if (v25 != -1 && DWORD1(v63) + v23 != 0x7FFFFFFF && v17 >= v59)
      {
        v28 = *a1;
        v29 = *(a1 + 2968);
        v30 = *v6;
        v31 = HIDWORD(*v6);
        v32 = (*v6 << 47) & 0x1000000000000;
        v33 = *v6 << 16;
        if (*(*a1 + 9954) == 1)
        {
          v34 = 0;
          v35 = v30 & 0xFFFFFFFFFFFF0000;
          v36 = (v32 ^ 0x1000000000000uLL) >> 48;
          if (!v36)
          {
            ++v35;
          }

          v37 = (0x2127599BF4325C37 * (v35 ^ (v30 >> 23))) ^ ((0x2127599BF4325C37 * (v35 ^ (v30 >> 23))) >> 47);
          while (2)
          {
            v39 = v37 & (*(v28 + 10016) - 1);
            v40 = *(*(v28 + 10032) + 8 * v39);
            if (*(v28 + 10024) == v40 && *(*a1 + 10028) == WORD2(v40) && *(*a1 + 10030) == BYTE6(v40))
            {
              goto LABEL_61;
            }

            if (*(v28 + 10000) && *(v28 + 9992) == v40 && *(*a1 + 9996) == WORD2(v40))
            {
              if (*(*a1 + 9998) == BYTE6(v40) || v31 != v40)
              {
                goto LABEL_47;
              }
            }

            else if (v31 != v40)
            {
LABEL_47:
              v37 = ++v34 + v39;
              continue;
            }

            break;
          }

          if (WORD2(v33) == WORD2(v40) && v36 == BYTE6(v40))
          {
            if (v39 == -1)
            {
              goto LABEL_61;
            }

            goto LABEL_16;
          }

          goto LABEL_47;
        }

LABEL_61:
        v58 = DWORD1(v63) + v23;
        sub_F8EC88(v28 + 8, (v33 & 0xFFFF00000000 | v31 | v32) ^ 0x1000000000000, v61);
        v62 = 0u;
        v63 = 0u;
        v64 = v60;
        v65 = 0x3FF0000000000000;
        v66 = 1;
        sub_10A8B08(v28 + 4392, &v62, v61, v17 - v59, v29, *&v60, v42);
        if (v66)
        {
          LODWORD(v43) = v62;
          v44 = *&v64 * v43;
          if (v44 >= 0.0)
          {
            v45 = v58;
            if (v44 < 4.50359963e15)
            {
              v46 = (v44 + v44) + 1;
LABEL_67:
              v44 = (v46 >> 1);
            }
          }

          else
          {
            v45 = v58;
            if (v44 > -4.50359963e15)
            {
              v46 = (v44 + v44) - 1 + (((v44 + v44) - 1) >> 63);
              goto LABEL_67;
            }
          }

          v47 = *(&v64 + 1) * SDWORD1(v62);
          if (v47 >= 0.0)
          {
            if (v47 < 4.50359963e15)
            {
              v48 = (v47 + v47) + 1;
LABEL_73:
              v47 = (v48 >> 1);
            }
          }

          else if (v47 > -4.50359963e15)
          {
            v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
            goto LABEL_73;
          }

          v49 = v63 + v44;
          v50 = DWORD1(v63) + v47;
          if (v49 != -1 && v50 != 0x7FFFFFFF)
          {
            LODWORD(v62) = v25 + v54 + v49;
            DWORD1(v62) = v45 + v53 + v50;
            sub_1034078(a1, v6, &v62, *v57, v56, v15, 1, 0);
          }
        }
      }

LABEL_16:
      if (++v15 == v14)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_102FEC0(uint64_t **a1, unsigned int *a2, unsigned int a3)
{
  if (*(*a1 + 9952) == 1 && sub_585D8(*a1 + 8))
  {
    v6 = sub_101E508(a1[1]) - 1;
  }

  else
  {
    v6 = 0;
  }

  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 != -1)
  {
    v6 = v7;
  }

  v84 = v6;
  v85 = v6;
  if (*(a1 + 518))
  {
    v8 = a1 + 375;
    v9 = -1;
    do
    {
      if (((a1[250] - a1[249]) >> 2) >= a3)
      {
        return;
      }

      v10 = &a1[246][10 * *a1[253]];
      v82[0] = *v10;
      v11 = *(v10 + 4);
      v13 = *(v10 + 1);
      v12 = *(v10 + 2);
      v82[3] = *(v10 + 3);
      v83 = v11;
      v82[1] = v13;
      v82[2] = v12;
      sub_1032874((a1 + 150));
      v14 = **a1;
      if (*(v14 + 7774) == 1)
      {
        v15 = WORD1(v82[0]);
        v16 = HIDWORD(*&v82[0]);
        if ((v17 = sub_2AF704(v14 + 3896, DWORD1(v82[0]), 1)) == 0)
        {
          continue;
        }

        v18 = &v17[-*v17];
        if (*v18 < 5u || (v19 = *(v18 + 2)) == 0 || *&v17[v19 + *&v17[v19]] <= v15 || !sub_2B817C(v14, v16 & 0xFFFF0000FFFFFFFFLL | (v15 << 32)))
        {
          continue;
        }
      }

      if (*(a1 + 1052) != 1 || sub_2B8438(**a1, HIDWORD(*&v82[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v82[0]) << 32)))
      {
        v20 = DWORD2(v83);
        v21 = *(a1 + 260);
        if (v21 != -1 && DWORD2(v82[0]) > v21 || *(a1 + 3048) == 1 && sub_10329F4(a1, v82 + 2))
        {
          return;
        }

        v22 = *(a1 + 261);
        if (v22 != 0x7FFFFFFF && SHIDWORD(v82[0]) <= v22)
        {
          --*(a1 + 262);
        }

        if (*(a1 + 756) == -1 || (v23 = a1[1], LODWORD(v71) = *(a1 + 756), !sub_101F374(*v23, HIDWORD(*&v82[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v82[0]) << 32), &v71)))
        {
          v24 = v20 & 0x7FFFFFFF;
          v81 = sub_1032BF8(a1, v82, v82 + 2, v24);
          v25 = *(a1 + 740);
          v26 = 0x7FFFFFFF;
          if (v25 != 0x7FFFFFFF)
          {
            if (v82[0] < 0)
            {
              v27 = -5;
            }

            else
            {
              v27 = 5;
            }

            v26 = SHIDWORD(v82[0]) / 10 + v25 + (((103 * (v27 + SHIDWORD(v82[0]) % 10)) >> 15) & 1) + ((103 * (v27 + SHIDWORD(v82[0]) % 10)) >> 10);
          }

          v80 = v26;
          v28 = sub_394BD0();
          v29 = &v85;
          if (v28)
          {
            v29 = &v84;
          }

          v30 = *v29 >= v81 ? &v81 : v29;
          v31 = sub_1032FC0(a1, v82, a1[371], &v80, *(a1 + 2964), v30);
          if (v31 != -1)
          {
            v32 = v31;
            if (v31)
            {
              v42 = a1[1];
              LODWORD(v71) = v31;
              v43 = sub_101F854(*v42, HIDWORD(*&v82[0]) & 0xFFFF0000FFFFFFFFLL | (WORD1(v82[0]) << 32), (v82[0] & 2) == 0, &v71);
              v79 = v43;
              if (!v43)
              {
                continue;
              }

              if (v43 > 0xFFFFFFFEFFFFFFFFLL)
              {
                continue;
              }

              v68 = *(a1 + 2964);
              sub_105D3DC(*a1 + 560, *&v82[0], v32, 0, a1[371], v80, v68, v8);
              if (a1[375] == a1[376])
              {
                continue;
              }

              sub_585C38((a1 + 260), &v79, &v71);
              v44 = v71;
              if (v73 == 1)
              {
                v45 = *(v71 + 8) + 12 * v72;
                *v45 = v79;
                *(v45 + 8) = 0x7FFFFFFF;
              }

              v69 = v8;
              v46 = *(v44 + 8) + 12 * v72;
              v49 = *(v46 + 8);
              v47 = (v46 + 8);
              v48 = v49;
              if (v49 == 0x7FFFFFFF || SHIDWORD(v82[0]) < v48)
              {
                *v47 = HIDWORD(v82[0]);
              }

              v50 = -858993459 * ((a1[376] - a1[375]) >> 3);
              if (v50)
              {
                v51 = 0;
                v52 = 0;
                v53 = 40 * v50;
                do
                {
                  v54 = (*v69 + v51);
                  v55 = *(v54 + 28);
                  v56 = v55 & 0xFFFFFFFF00000000;
                  if (v55 != -1 && v56 != 0x7FFFFFFF00000000)
                  {
                    v71 = (v56 + *(&v82[0] + 1)) & 0xFFFFFFFF00000000 | (v55 + DWORD2(v82[0]));
                    LODWORD(v72) = v80;
                    BYTE4(v72) = v68;
                    v73 = 0uLL;
                    LODWORD(v74) = 0;
                    v76 = v52;
                    v77 = v32;
                    v78 = v24;
                    v58 = *(v54 + 8);
                    v59 = v54[1];
                    v73 = *v54;
                    v74 = v59;
                    v75 = v58;
                    v70 = *(v54 + 1);
                    sub_1032738(a1, &v70, &v71);
                  }

                  ++v52;
                  v51 += 40;
                }

                while (v53 != v51);
              }
            }

            else
            {
              v69 = v8;
              if ((a1[381] & 1) == 0)
              {
                sub_103313C(a1, v82, v82 + 2, v24);
              }

              sub_F8ED58((*a1 + 1), *&v82[0], 0, a1 + 372, 0);
              v33 = -1171354717 * ((a1[373] - a1[372]) >> 3);
              if (v33)
              {
                v34 = 0;
                v35 = 0;
                v36 = 88 * v33;
                do
                {
                  v37 = &a1[372][v34 / 8];
                  v38 = sub_10336EC(*a1, v37, a1[371]);
                  v39 = v38 & 0xFFFFFFFF00000000;
                  if (v38 != -1 && v39 != 0x7FFFFFFF00000000)
                  {
                    v79 = (((4 * *(v37 + 82)) | (*(v37 + 72) << 32)) + ((*(v37 + 72) >> 16) & 0xFFFF0000)) & 0xFFFFFFFFFFFFFFFELL | (*(v37 + 84) >> 1) & 1 | (2 * ((*(v37 + 72) & 0xFF000000000000) == 0));
                    v41 = *(a1 + 2964);
                    v71 = (*(&v82[0] + 1) + v39) & 0xFFFFFFFF00000000 | (DWORD2(v82[0]) + v38);
                    LODWORD(v72) = v80;
                    BYTE4(v72) = v41;
                    *&v73 = (((*(v37 + 32) >> 16) & 0xFFFF0000 | (*(v37 + 32) << 32) | (2 * ((*(v37 + 32) & 0xFF000000000000) == 0))) + 4 * *(v37 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v37 + 84) & 1;
                    *(&v73 + 1) = (((*(v37 + 72) >> 16) & 0xFFFF0000 | (*(v37 + 72) << 32) | (2 * ((*(v37 + 72) & 0xFF000000000000) == 0))) + 4 * *(v37 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v37 + 84) >> 1) & 1;
                    LODWORD(v74) = *(v37 + 84);
                    v76 = v35;
                    v77 = 0;
                    v78 = v24;
                    sub_1032738(a1, &v79, &v71);
                  }

                  ++v35;
                  v34 += 88;
                }

                while (v36 != v34);
              }
            }

            v60 = *(a1 + 261);
            if (v60 == 0x7FFFFFFF)
            {
              v8 = v69;
            }

            else
            {
              v8 = v69;
              if (!*(a1 + 262) && v9 == -1)
              {
                v61 = a1[119];
                v62 = a1[120];
                if (v61 == v62)
                {
                  return;
                }

                v9 = 0;
                v63 = a1[116];
                do
                {
                  if (0xAAAAAAAAAAAAAAABLL * (a1[117] - v63) > *v61)
                  {
                    v64 = v63[3 * *v61 + 1];
                  }

                  else
                  {
                    v64 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v65 = HIDWORD(v64);
                  if (v9 > v64)
                  {
                    LODWORD(v64) = v9;
                  }

                  if (v60 >= v65)
                  {
                    v9 = v64;
                  }

                  ++v61;
                }

                while (v61 != v62);
                v66 = *(a1 + 260);
                if (v66 == -1 || v9 < v66)
                {
                  *(a1 + 260) = v9;
                }
              }
            }
          }
        }
      }
    }

    while (*(a1 + 518));
  }
}

void sub_103061C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5, _DWORD *a6, int a7, unsigned int *a8, uint64_t *a9, void *a10, unsigned int a11, int a12, int a13)
{
  sub_102E750(a1);
  *(a1 + 2960) = *a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  if (a1 + 1168 != a2)
  {
    sub_C70E60(a1 + 1168, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = *a6;
  *(a1 + 1044) = a7;
  *(a1 + 20) = a13;
  *(a1 + 976) = a1 + 24;
  sub_102EA98(a1);
  sub_102F300(a1, a10);
  v21 = *a9;
  v20 = a9[1];
  if (*a9 != v20)
  {
    do
    {
      v23 = *(v21 + 8);
      sub_1053B80(a1 + 1056, v21, &v23);
      sub_1053EDC((a1 + 1056), a10);
      sub_1054E9C((a1 + 1056));
      v21 += 16;
    }

    while (v21 != v20);
  }

  sub_102FEC0(a1, a8, a11);
}

void sub_1030754(uint64_t *a1, uint64_t a2, unint64_t ***a3, uint64_t a4, int a5, char a6, int a7, int a8, unsigned int a9, int a10, unsigned int a11)
{
  sub_102E750(a1);
  v19 = *a3;
  v18 = a3[1];
  if (*a3 == v18)
  {
    v20 = *a3;
  }

  else
  {
    do
    {
      v24 = a1;
      sub_10322E4((a1 + 3), v19, 1, &v24);
      v19 += 4;
    }

    while (v19 != v18);
    v19 = *a3;
    v20 = a3[1];
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[117] - a1[116]) >> 3);
  v22 = (v20 - v19) >> 5;
  if (v22 > v21)
  {
    sub_1052908((a1 + 116), v22 - v21);
  }

  a1[122] = (a1 + 3);
  sub_1030864(a1, a2, a4, a5, a6, a7, a8, a9, a11);
}

void sub_1030864(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, int a7, unsigned int a8, unsigned int a9)
{
  v18 = a8;
  *(a1 + 2960) = a4;
  *(a1 + 2964) = a5;
  *(a1 + 2968) = a3;
  v13 = a1 + 1168;
  if (v13 != a2)
  {
    sub_C70E60(v13, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  }

  *(a1 + 1192) = *(a2 + 24);
  *(a1 + 1040) = a6;
  *(a1 + 1044) = a7;
  v14 = *(a1 + 976);
  if (v14[11] + v14[5] + v14[17] + v14[23] + v14[29] + v14[35] + v14[41] + v14[47] + v14[53] + v14[59] + v14[65] + v14[71] + v14[77] + v14[83] + v14[89] + v14[95] || *(a1 + 3048) == 1)
  {
    sub_102EA98(a1);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_102F300(a1, &__p);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    sub_102F8BC(a1);
    sub_102FEC0(a1, &v18, a9);
  }
}

void sub_10309C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10309E4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(v2 + 24 * a2 + 8);
  }
}

uint64_t sub_1030A20(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v2) >> 3) <= a2 || (v3 = v2 + 24 * a2, !*v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("No valid data for target id ", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v9 = sub_2D390(exception, v7, size);
  }

  return *(v3 + 20) & 0x3FFFFFFF;
}

void sub_1030AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1030B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_1030CF8(a1, 0, v3, a2);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_1030C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1030C24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_1030CF8(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_1030CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1030CF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_F68960(a4);
  v9 = *(a1 + 928);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 936) - v9) >> 3) > a2)
  {
    v10 = v9 + 24 * a2;
    v11 = *v10;
    if (*v10)
    {
      if (*(a1 + 3048) != 1 || *(a1 + 3049) == 1)
      {
        if ((*(v10 + 23) & 0x40) != 0)
        {
          sub_F8EC88(*a1 + 8, (HIDWORD(v11) & 0xFFFE0000FFFFFFFFLL | (WORD1(v11) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v11 >> 1) & 1) << 48)) ^ 0x1000000000000, v12);
          sub_F69060(a4, v11, v12, 0);
          sub_F68F20(a4, *(a1 + 1168) + 96 * (*(v10 + 20) & 0x3FFFFFFF) + 8);
        }

        else
        {
          sub_1031080(a1, v10, a3, v12);
          sub_49C304(a4, v12);
          sub_4547F0(v12);
        }

        if ((*(v10 + 20) & 0x80000000) != 0)
        {
          sub_10316C8(v10, *(a1 + 3880) + 40 * a2, v12);
          sub_F6B1A0(a4, v12);
          sub_4547F0(v12);
        }

        return sub_F6901C(a4, *(**(a1 + 976) + 32 * a2) + 96 * *(v10 + 16) + 8);
      }
    }
  }

  return result;
}

void sub_1030EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4547F0(va);
  sub_4547F0(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1030F20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_1030FAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  sub_1031080(a1, a2, v4, a3);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_103106C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1030F20(va);
  _Unwind_Resume(a1);
}

void sub_1031080(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_F68960(a4);
  v7 = *a2;
  if (!*a2)
  {
    return;
  }

  v52 = a2;
  v53 = v6;
  v8 = 0;
  v9 = 0;
  v59 = v7;
  do
  {
    sub_F98EF8((a1 + 150), &v59, &v62);
    v10 = a1[246] + 80 * *(*(&v63 + 1) + 8);
    v11 = &v9[-v8];
    v12 = 0x8E38E38E38E38E39 * (&v9[-v8] >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    if (0x1C71C71C71C71C72 * (-v8 >> 3) > v13)
    {
      v13 = 0x1C71C71C71C71C72 * (-v8 >> 3);
    }

    if (0x8E38E38E38E38E39 * (-v8 >> 3) >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 8 * (&v9[-v8] >> 3);
    *v15 = *(v10 + 8);
    v16 = *(v10 + 24);
    v17 = *(v10 + 40);
    v18 = *(v10 + 56);
    *(v15 + 64) = *(v10 + 72);
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    *(v15 + 16) = v16;
    v9 = (v15 + 72);
    v19 = (72 * v12 + 72 * (v11 / -72));
    memcpy((v15 + 72 * (v11 / -72)), v8, v11);
    if (v8)
    {
      operator delete(v8);
    }

    v8 = v19;
    if ((*(v10 + 72) & 0x80000000) != 0)
    {
      v59 = 0;
      if (v19 == v9)
      {
        goto LABEL_49;
      }

      goto LABEL_19;
    }

    v59 = *(v10 + 24);
  }

  while (v59);
  if (v19 == v9)
  {
    goto LABEL_49;
  }

LABEL_19:
  if (!*(a3 + 24))
  {
    v20 = v9 - 72;
    if (v9 - 72 > v19)
    {
      v21 = v19 + 72;
      do
      {
        v62 = *(v21 - 72);
        v22 = *(v21 - 56);
        v23 = *(v21 - 40);
        v24 = *(v21 - 24);
        *&v66 = *(v21 - 1);
        v65 = v24;
        v63 = v22;
        v64 = v23;
        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        v27 = *(v20 + 16);
        *(v21 - 56) = *(v20 + 1);
        *(v21 - 2) = v27;
        *(v21 - 24) = v25;
        *(v21 - 40) = v26;
        *(v21 - 72) = *v20;
        v28 = v65;
        v30 = v63;
        v29 = v64;
        *(v20 + 16) = v66;
        *(v20 + 2) = v29;
        *(v20 + 3) = v28;
        *(v20 + 1) = v30;
        *v20 = v62;
        v20 -= 72;
        v31 = v21 >= v20;
        v21 += 72;
      }

      while (!v31);
    }
  }

  v32 = 0;
  v58[0] = a3;
  v58[1] = v53;
  __p = 0;
  v56 = 0;
  v57 = 0;
  while (1)
  {
    v33 = &v19[v32];
    if (*&v19[v32 + 60])
    {
      break;
    }

    if (*(a3 + 24) && !sub_F69D6C(v53))
    {
      *&v62 = *&v19[v32 + 24];
      v34 = *(a3 + 24);
      if (!v34)
      {
        sub_2B7420();
      }

      if ((*(*v34 + 48))(v34, &v62))
      {
        goto LABEL_37;
      }
    }

    v35 = *a1;
    sub_F8EC88(*a1 + 8, (HIDWORD(*(v33 + 2)) & 0xFFFE0000FFFFFFFFLL | (WORD1(*(v33 + 2)) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*(v33 + 2) >> 1) & 1) << 48)) ^ 0x1000000000000, v60);
    sub_F8EC88(v35 + 8, (HIDWORD(*&v19[v32 + 24]) & 0xFFFE0000FFFFFFFFLL | (WORD1(*&v19[v32 + 24]) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*&v19[v32 + 24] >> 1) & 1) << 48)) ^ 0x1000000000000, &v64 + 1);
    v36 = *(v33 + 4);
    v37 = *&v19[v32 + 24];
    v62 = v60[0];
    v63 = v60[1];
    *&v64 = v61;
    LODWORD(v67) = (v37 << 14) & 0x3FFF0000 | (v36 >> 2);
    HIDWORD(v67) = *&v19[v32 + 32];
    sub_F692F8(v53, &v62, 0);
LABEL_25:
    v32 += 72;
    if (&v19[v32] == v9)
    {
      v38 = 1;
      if (!*(a3 + 24))
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }
  }

  sub_10775A8((*a1 + 4616), (v33 + 16), a1[371], v33 + 2, v33[12], &__p);
  if (__p == v56)
  {
    sub_F687F4(v53);
    goto LABEL_47;
  }

  if ((sub_10319EC(v58, &__p) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_37:
  v38 = 0;
  if (!*(a3 + 24))
  {
    goto LABEL_43;
  }

LABEL_38:
  v39 = sub_5FC64(v53);
  v40 = sub_445EF4(v53);
  if (v39 != v40)
  {
    v41 = v40 - 88;
    if (v40 - 88 > v39)
    {
      v42 = v39 + 88;
      do
      {
        v64 = *(v42 - 56);
        v65 = *(v42 - 40);
        v66 = *(v42 - 24);
        v67 = *(v42 - 8);
        v62 = *(v42 - 88);
        v63 = *(v42 - 72);
        v43 = *(v41 + 16);
        *(v42 - 88) = *v41;
        *(v42 - 72) = v43;
        v45 = *(v41 + 48);
        v44 = *(v41 + 64);
        v46 = *(v41 + 80);
        *(v42 - 56) = *(v41 + 32);
        *(v42 - 8) = v46;
        *(v42 - 24) = v44;
        *(v42 - 40) = v45;
        *v41 = v62;
        *(v41 + 80) = v67;
        *(v41 + 64) = v66;
        *(v41 + 48) = v65;
        *(v41 + 32) = v64;
        *(v41 + 16) = v63;
        v41 -= 88;
        v31 = v42 >= v41;
        v42 += 88;
      }

      while (!v31);
    }
  }

LABEL_43:
  if (v38)
  {
    sub_F98EF8((a1 + 150), v52, &v62);
    sub_F68F20(v53, a1[146] + 96 * (*(a1[246] + 80 * *(*(&v63 + 1) + 8) + 72) & 0x7FFFFFFF) + 8);
  }

  else
  {
    v47 = sub_73F1C(v53);
    v48 = *(v47 + 16);
    v62 = *v47;
    v63 = v48;
    v49 = *(v47 + 32);
    v50 = *(v47 + 48);
    v51 = *(v47 + 64);
    v67 = *(v47 + 80);
    v65 = v50;
    v66 = v51;
    v64 = v49;
    LODWORD(v62) = 0;
    sub_F68F20(v53, &v62);
  }

LABEL_47:
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

LABEL_49:
  if (v19)
  {
    operator delete(v19);
  }
}

void sub_1031650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      sub_4547F0(a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  sub_4547F0(a10);
  _Unwind_Resume(a1);
}

void sub_10316C8(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_F68960(a3);
  if (*a1)
  {
    v5 = *a1;
    sub_10348A4(a2, &v5);
    operator new();
  }
}

void sub_103195C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v18 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  if (!v16)
  {
LABEL_4:
    sub_4547F0(a9);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v16);
  sub_4547F0(a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10319EC(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 24))
  {
    v4 = *a2;
    for (i = a2[1]; i != v4; sub_F692F8(a1[1], i, 0))
    {
      if (!sub_F69D6C(a1[1]))
      {
        v5 = *a1;
        v12 = (((*(i - 16) >> 16) & 0xFFFF0000 | (*(i - 16) << 32) | (2 * ((*(i - 16) & 0xFF000000000000) == 0))) + 4 * *(i - 6)) & 0xFFFFFFFFFFFFFFFELL | (*(i - 4) >> 1) & 1;
        v6 = *(v5 + 24);
        if (!v6)
        {
          goto LABEL_18;
        }

        if ((*(*v6 + 48))(v6, &v12))
        {
          return 1;
        }
      }

      i -= 88;
    }
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    while (v8 != v9)
    {
      if (*(*a1 + 24) && !sub_F69D6C(a1[1]))
      {
        v10 = *a1;
        v12 = (((*(v8 + 72) >> 16) & 0xFFFF0000 | (*(v8 + 72) << 32) | (2 * ((*(v8 + 72) & 0xFF000000000000) == 0))) + 4 * *(v8 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v8 + 84) >> 1) & 1;
        v11 = *(v10 + 24);
        if (!v11)
        {
LABEL_18:
          sub_2B7420();
        }

        if ((*(*v11 + 48))(v11, &v12))
        {
          return 1;
        }
      }

      sub_F692F8(a1[1], v8, 0);
      v8 += 88;
    }
  }

  return 0;
}

uint64_t sub_1031BD0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1992);
  v3 = *(result + 2000);
  *a2 = result + 1968;
  a2[1] = v2;
  a2[2] = result + 1968;
  a2[3] = v3;
  return result;
}

unint64_t sub_1031BFC(void *a1)
{
  v32.n128_u64[0] = -1;
  v32.n128_u64[1] = -1;
  v2 = a1 + 260;
  v3 = a1[260];
  v4 = a1[261];
  if (*v3 > -2)
  {
    v5 = a1[260];
    v18 = a1[263];
    v7 = &v3[v18];
    if (v3 != &v3[v18])
    {
LABEL_5:
      v8 = (a1 + 260);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1[260];
    do
    {
      v6 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v5 = (v5 + v6);
      v4 = (v4 + 12 * v6);
    }

    while (*v5 < -1);
    v7 = &v3[a1[263]];
    if (v5 != v7)
    {
      goto LABEL_5;
    }
  }

  v8 = (a1 + 266);
  v19 = 6;
  v20 = a1 + 260;
  while (1)
  {
    v4 = v20[7];
    v5 = *v8;
    if (**v8 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v5 = (v5 + v21);
        v4 = (v4 + 12 * v21);
      }

      while (*v5 < -1);
    }

    v7 = &(*v8)[v20[9]];
    if (v5 != v7)
    {
      break;
    }

    v20 = &v2[v19];
    v19 += 6;
    v8 = &v2[v19];
    if (v19 == 96)
    {
      goto LABEL_26;
    }
  }

LABEL_6:
  v9 = (a1 + 356);
  do
  {
    while (1)
    {
      v10 = a1[1];
      v11 = *v4;
      v4 = (v4 + 12);
      v31.n128_u64[0] = v11;
      v31.n128_u64[0] = sub_10539D0(*v10, &v31);
      v31.n128_u64[1] = v12;
      sub_32114(&v32, &v31);
      LODWORD(v11) = *(v5 + 1);
      v5 = (v5 + 1);
      if (v11 <= -2)
      {
        do
        {
          v13 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v13);
          v4 = (v4 + 12 * v13);
        }

        while (*v5 < -1);
      }

      if (v5 == v7)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v14 = v8 + 6;
    if (v8 + 6 == v9)
    {
      break;
    }

    while (1)
    {
      v15 = v14;
      v16 = v8[6];
      v4 = v8[7];
      v5 = v16;
      if (*v16 <= -2)
      {
        do
        {
          v17 = (__clz(__rbit64(((*v5 >> 7) & ~*v5 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v5 = (v5 + v17);
          v4 = (v4 + 12 * v17);
        }

        while (*v5 < -1);
      }

      v7 = &v8[9][v16];
      if (v5 != v7)
      {
        break;
      }

      v14 = v15 + 6;
      v8 = v15;
      if (v15 + 6 == v9)
      {
        goto LABEL_26;
      }
    }

    v8 = v15;
  }

  while (v15);
LABEL_26:
  if (!sub_329BC(&v32))
  {
    v22 = a1[249];
    for (i = a1[250]; v22 != i; ++v22)
    {
      v24 = a1[1];
      v25 = *(a1[246] + 80 * *v22);
      v31.n128_u32[0] = 1;
      v26 = sub_101F854(*v24, HIDWORD(v25) & 0xFFFF0000FFFFFFFFLL | (WORD1(v25) << 32), (v25 >> 1) & 1, &v31);
      if (v26)
      {
        v27 = HIDWORD(v26) == 0xFFFFFFFF;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = a1[1];
        v33 = v26;
        v31.n128_u64[0] = sub_10539D0(*v28, &v33);
        v31.n128_u64[1] = v29;
        sub_32114(&v32, &v31);
        operator new();
      }
    }
  }

  return v32.n128_u64[0];
}

void sub_1032018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1032038(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_F98EF8(a1 + 1200, &v5, v6);
  if (!v6[0])
  {
    return 0;
  }

  sub_F98EF8(a1 + 1200, &v5, v6);
  v3 = *(a1 + 1968) + 80 * *(v6[3] + 8);
  if ((*(v3 + 72) & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 24);
  }
}

uint64_t sub_10320C0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_F98EF8(a1 + 1200, &v4, v5);
  if (!v5[0])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_F98EF8(a1 + 1200, &v4, v5);
  return *(*(a1 + 1968) + 80 * *(v5[3] + 8) + 8);
}

uint64_t sub_1032140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v12 = a2;
  sub_F98EF8(a1 + 1200, &v12, v13);
  if (!v13[0])
  {
    return 0;
  }

  sub_F98EF8(a1 + 1200, &v11, v13);
  if (!v13[0])
  {
    return 0;
  }

  v9 = v11;
  v10 = v12;
  sub_F98EF8(a1 + 1200, &v10, v13);
  v4 = *(v14 + 8);
  v5 = *(a1 + 1968);
  sub_F98EF8(a1 + 1200, &v9, v13);
  result = v10;
  if (v10)
  {
    v7 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
    v8 = v5 + 80 * v4 + 8;
    do
    {
      if (!v9)
      {
        return 0;
      }

      if (result == v9)
      {
        return result;
      }

      if (*v7 == *v8)
      {
        if (*(v7 + 4) >= *(v8 + 4))
        {
          goto LABEL_17;
        }
      }

      else if (*v7 >= *v8)
      {
LABEL_17:
        if ((*(v7 + 64) & 0x80000000) != 0)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v7 + 16);
          if (v9)
          {
            sub_F98EF8(a1 + 1200, &v9, v13);
            v7 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
          }
        }

        goto LABEL_8;
      }

      if ((*(v8 + 64) & 0x80000000) != 0)
      {
        return 0;
      }

      v10 = *(v8 + 16);
      if (!v10)
      {
        return 0;
      }

      sub_F98EF8(a1 + 1200, &v10, v13);
      v8 = *(a1 + 1968) + 80 * *(v14 + 8) + 8;
LABEL_8:
      result = v10;
    }

    while (v10);
  }

  return result;
}

void *sub_10322E4(uint64_t a1, unint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v32 = a2;
    v33 = ((v5 - *a1) >> 5);
    do
    {
      v11 = *v6 >> 1;
      v12 = *v6 >> 16;
      v13 = **a4;
      v14 = HIDWORD(*v6);
      LODWORD(v34) = HIDWORD(*v6);
      WORD2(v34) = v12;
      BYTE6(v34) = ((v14 & 0xFFFE0000FFFFFFFFLL | (v12 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((v11 & 1) << 48)) ^ 0x1000000000000) >> 48;
      if (sub_100A97C(v13 + 9960, &v34) == -1)
      {
        if (a3)
        {
          LODWORD(v34) = 0;
          sub_1053B80(a1 + 792, v6, &v34);
          sub_1054E9C((a1 + 792));
        }

        sub_1055328(a1 + 24, v6, &v34);
        v15 = v34;
        if (v36 == 1)
        {
          v16 = (*(v34 + 8) + 32 * v35);
          *v16 = *v6;
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
        }

        v17 = (*(v15 + 8) + 32 * v35);
        v19 = v17[2];
        v18 = v17[3];
        if (v19 < v18)
        {
          *v19 = v33;
          v10 = v19 + 8;
        }

        else
        {
          v20 = v17[1];
          v21 = v19 - v20;
          v22 = (v19 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            sub_1794();
          }

          v24 = a3;
          v25 = v18 - v20;
          if (v25 >> 2 > v23)
          {
            v23 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v23;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v27 = (v19 - v20) >> 3;
          v28 = (8 * v22);
          v29 = (8 * v22 - 8 * v27);
          *v28 = v33;
          v10 = v28 + 1;
          memcpy(v29, v20, v21);
          v17[1] = v29;
          v17[2] = v10;
          v17[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }

          a3 = v24;
        }

        v17[2] = v10;
      }

      v6 += 12;
    }

    while (v6 != v7);
    v5 = *(a1 + 8);
    a2 = v32;
  }

  if (v5 >= *(a1 + 16))
  {
    result = sub_1055A68(a1, a2);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v30 = a2[1];
    if (v30 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1794();
    }

    v5[3] = a2[3];
    result = v5 + 4;
    *(a1 + 8) = v5 + 4;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_10325C8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

unint64_t sub_10325E8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  if (*(a1 + 9954) == 1)
  {
    v8 = HIDWORD(*a2);
    v9 = ~(*a2 << 47);
    WORD2(v20) = WORD1(*a2);
    LODWORD(v20) = v8;
    BYTE6(v20) = BYTE6(v9) & 1;
    if (sub_100A97C(a1 + 9960, &v20) != -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  sub_F8EC88(a1 + 8, (HIDWORD(*a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(*a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*a2 >> 1) & 1) << 48)) ^ 0x1000000000000, v19);
  v20 = 0u;
  v21 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v22 = _Q0;
  v23 = 0x3FF0000000000000;
  v24 = 1;
  sub_10A8B08(a1 + 4392, &v20, v19, a3, a4, *&_Q0, v15);
  if (v24 != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = sub_F8634C(&v20, &v22, v16);
  return (v21 + v17) | ((DWORD1(v21) + HIDWORD(v17)) << 32);
}

uint64_t sub_1032738(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 1044);
  if (v5 == 0x7FFFFFFF)
  {
    return sub_1034330(a1 + 1200, a2, a3);
  }

  v6 = a3;
  v7 = *(a3 + 4);
  sub_F98EF8(a1 + 1200, a2, v15);
  if (!v15[0])
  {
    a3 = v6;
    if (v7 > v5)
    {
      return sub_1034330(a1 + 1200, a2, a3);
    }

    goto LABEL_19;
  }

  sub_F98EF8(a1 + 1200, a2, v15);
  v8 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 8);
  a3 = v6;
  if (*v6 == v8)
  {
    if (v6[1] >= SHIDWORD(v8))
    {
      return sub_1034330(a1 + 1200, a2, a3);
    }
  }

  else if (*v6 >= v8)
  {
    return sub_1034330(a1 + 1200, a2, a3);
  }

  sub_F98EF8(a1 + 1200, a2, v15);
  v9 = *(*(a1 + 1968) + 80 * *(v16 + 8) + 12);
  v10 = *(a1 + 1044);
  if (v10 >= v9 && v7 > v5)
  {
    v13 = -1;
    a3 = v6;
LABEL_20:
    *(a1 + 1048) += v13;
    return sub_1034330(a1 + 1200, a2, a3);
  }

  v12 = v10 < v9 && v7 <= v5;
  a3 = v6;
  if (v12)
  {
LABEL_19:
    v13 = 1;
    goto LABEL_20;
  }

  return sub_1034330(a1 + 1200, a2, a3);
}

void sub_1032874(uint64_t a1)
{
  sub_DD38(a1 + 792, *(a1 + 824));
  v2 = *(a1 + 824);
  *(*(a1 + 848) + 4 * *v2) = -1;
  v3 = *(a1 + 872);
  *(a1 + 872) = v3 - 1;
  if (v3 != 1)
  {
    v4 = &v2[3 * (v3 - 1)];
    *v2 = *v4;
    *(v2 + 1) = *(v4 + 1);
    v5 = *(a1 + 824);
    *(*(a1 + 848) + 4 * *v5) = 0;
    v6 = *(a1 + 872);
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v7 + 5;
        if (v10 >= v6)
        {
          v11 = v6;
        }

        else
        {
          v11 = v10;
        }

        if (v10 <= v9)
        {
          break;
        }

        v12 = v8;
        v13 = *&v5[3 * v8 + 1];
        v14 = HIDWORD(v13);
        v15 = &v5[3 * v9 + 1];
        v8 = -1;
        v16 = v13;
        do
        {
          v17 = *v15 < v16;
          if (*v15 == v16)
          {
            v17 = v15[1] < v14;
          }

          if (v17)
          {
            v16 = *v15;
            LODWORD(v14) = v15[1];
            v8 = v9;
          }

          v15 += 3;
          ++v9;
        }

        while (v9 < v11);
        if (v8 >= v6)
        {
          break;
        }

        v18 = &v5[3 * v8];
        v19 = 12 * v12;
        v20 = v5 + v19;
        v21 = *v18;
        *v18 = *v20;
        *v20 = v21;
        v22 = *(v18 + 1);
        *(v18 + 1) = v13;
        *(v20 + 4) = v22;
        v5 = *(a1 + 824);
        v23 = v5[3 * v8];
        v24 = *(a1 + 848);
        v25 = *(v5 + v19);
        LODWORD(v19) = *(v24 + 4 * v23);
        *(v24 + 4 * v23) = *(v24 + 4 * v25);
        *(v24 + 4 * v25) = v19;
        v7 = 4 * v8;
        v9 = (4 * v8) | 1;
        v6 = *(a1 + 872);
      }

      while (v9 < v6);
    }
  }

  *(a1 + 832) -= 12;
}

BOOL sub_10329F4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 3056);
  v3 = *(a1 + 3072);
  v4 = *(a1 + 3064);
  v5 = *(a1 + 3052);
  if (v2 + v3 - v4 < v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3072) = 0;
    *(a1 + 3080) = 0;
    result = v2 >= v5;
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  do
  {
    v7 = *(a1 + 928) + 24 * *v4;
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a2 >= v9;
    if (*a2 == v9)
    {
      if (a2[1] < *(v8 + 4))
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
LABEL_10:
      operator new();
    }

    ++*(a1 + 3056);
    ++v4;
  }

  while (v4 != v3);
  v4 = *(a1 + 3064);
  v11 = *(a1 + 3056);
  v12 = *(a1 + 3052);
  *(a1 + 3064) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3080) = 0;
  result = v11 >= v12;
  if (v4)
  {
LABEL_12:
    v13 = result;
    operator delete(v4);
    return v13;
  }

  return result;
}

void sub_1032BDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1032BF8(uint64_t a1, uint64_t *a2, int *a3, int a4)
{
  if (*(a1 + 3048) != 1)
  {
    return 4294967294;
  }

  sub_103313C(a1, a2, a3, a4);
  result = sub_103385C(*(a1 + 3032), *a2);
  if (result)
  {
    v36 = a4;
    v9 = *result;
    v10 = *(result + 8);
    if (*result != v10)
    {
      do
      {
        v15 = *(a1 + 1040);
        if (v15 != -1)
        {
          v16 = *(v9 + 16);
          if (v16 != -1 && *(v9 + 20) != 0x7FFFFFFF && *(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL && v16 + *a3 > v15)
          {
            goto LABEL_7;
          }
        }

        v17 = sub_1033A08(a1, v9);
        v18 = *(v9 + 16);
        if (v18 == -1 || (v19 = *(v9 + 20), v19 == 0x7FFFFFFF) || *(v9 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = *(a1 + 3904);
          v12 = v17 >> 6;
          v13 = 1 << v17;
          v14 = *(v11 + 8 * (v17 >> 6));
          if ((v14 & (1 << v17)) == 0)
          {
            v22 = *(a1 + 24) + 32 * v17;
            v23 = *v22;
            v24 = *(v22 + 8);
            if (*v22 != v24)
            {
              do
              {
                v38[0] = 0;
                sub_1053B80(a1 + 816, v23, v38);
                sub_1054E9C((a1 + 816));
                v23 += 12;
              }

              while (v23 != v24);
              v11 = *(a1 + 3904);
              v14 = *(v11 + 8 * v12);
            }

            *(v11 + 8 * v12) = v14 | v13;
          }

          ++*(a1 + 3936);
          goto LABEL_7;
        }

        if (*(a1 + 3049) == 1 && ((v20 = *(a1 + 1044), v20 == 0x7FFFFFFF) || v19 + a3[1] <= v20))
        {
          v21 = v17;
          if (!*(*(a1 + 3880) + 40 * v17 + 32))
          {
            v25.n128_f64[0] = sub_1033DE0(*(a1 + 3032), *v9, v38);
            v26 = v39;
            if (!v39)
            {
              v29 = *(a1 + 3904);
              v30 = v21 >> 6;
              v31 = 1 << v21;
              v32 = *(v29 + 8 * (v21 >> 6));
              if ((v32 & (1 << v21)) == 0)
              {
                v33 = *(a1 + 24) + 32 * v21;
                v35 = *v33;
                v34 = *(v33 + 8);
                if (*v33 != v34)
                {
                  do
                  {
                    LODWORD(v37) = 0;
                    sub_1053B80(a1 + 816, v35, &v37);
                    sub_1054E9C((a1 + 816));
                    v35 += 12;
                  }

                  while (v35 != v34);
                  v29 = *(a1 + 3904);
                  v31 = 1 << v21;
                  v30 = v21 >> 6;
                  v32 = *(v29 + 8 * (v21 >> 6));
                }

                *(v29 + 8 * v30) = v32 | v31;
              }

              ++*(a1 + 3928);
              goto LABEL_37;
            }

            v27 = *(*(a1 + 3880) + 40 * v21 + 32);
            if (v27 == -1)
            {
              if (v39 == -1)
              {
                goto LABEL_37;
              }
            }

            else if (v39 == -1)
            {
              v28 = *(a1 + 3880) + 40 * v21;
              (off_2674F50[v27])(&v37, v25.n128_f64[0]);
              *(v28 + 32) = -1;
LABEL_37:
              if (v39 != -1)
              {
                (off_2674F50[v39])(&v37, v38);
              }

              if (!v26)
              {
                goto LABEL_7;
              }

              v18 = *(v9 + 16);
              v19 = *(v9 + 20);
              goto LABEL_41;
            }

            v37 = *(a1 + 3880) + 40 * v21;
            (off_2674F68[v39])(&v37, v25);
            goto LABEL_37;
          }
        }

        else
        {
          v21 = v17;
        }

LABEL_41:
        *v38 = (v18 + *a3) | ((v19 + a3[1]) << 32);
        sub_1034078(a1, a2, v38, v21, v36, *(v9 + 8), 0, 1);
LABEL_7:
        v9 += 32;
      }

      while (v9 != v10);
    }

    return *(*(a1 + 3032) + 4364);
  }

  return result;
}

void sub_1032F84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1032FC0(uint64_t a1, unint64_t *a2, unsigned int *a3, int *a4, char a5, unsigned int *a6)
{
  for (i = *a6; i; i = (i - 1))
  {
    v12 = *(a1 + 8);
    v13 = *a2;
    v14 = *a2 >> 16;
    LODWORD(v22) = i;
    if (sub_101F374(*v12, HIDWORD(v13) & 0xFFFF0000FFFFFFFFLL | (v14 << 32), &v22))
    {
      v15 = *(a1 + 8);
      v16 = *a2;
      v17 = *a2 >> 16;
      v23 = i;
      v18 = sub_101F854(*v15, HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (v17 << 32), (v16 & 2) == 0, &v23);
      v22 = v18;
      if (v18)
      {
        v19 = v18 >= 0xFFFFFFFF00000000;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = *(a1 + 20);
        if (v20 != -1 && i == v20)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (sub_10550EC(a1 + 1064, &v22) == -1 && sub_10550EC(*(a1 + 976) + 800, &v22) == -1)
      {
        if (*(a1 + 3048) == 1 && i < *(*(a1 + 3032) + 4360))
        {
          return 0;
        }

        if (*(*a1 + 9953) != 1 || !sub_105F33C(*a1 + 4480, v22, a3, *a4, a5))
        {
          return i;
        }
      }
    }
  }

  return i;
}

void sub_103313C(void *a1, uint64_t *a2, int *a3, int a4)
{
  v54 = a2;
  if (*(a1 + 3048) == 1)
  {
    sub_10345B8(a1, a2);
    a2 = v54;
  }

  sub_1056F4C(a1[122] + 24, a2, &v56);
  if (v56)
  {
    sub_1056F4C(a1[122] + 24, v54, &v56);
    v5 = *(*(&v57 + 1) + 8);
    v50 = *(*(&v57 + 1) + 16);
    v6 = v54;
    if (v5 != v50)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v53 = _Q0;
      while (1)
      {
        v52 = v5;
        v11 = (*a1[122] + 32 * *v5);
        v12 = -1431655765 * ((v11[1] - *v11) >> 5);
        if (v12)
        {
          break;
        }

LABEL_6:
        v5 = v52 + 1;
        if (v52 + 1 == v50)
        {
          return;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = *v11 + 96 * v13;
        v15 = *v14;
        if (*v14 != *v6)
        {
          goto LABEL_10;
        }

        v16 = *a1;
        v17 = *(v14 + 8);
        v18 = a1[371];
        v19 = (v15 << 47) & 0x1000000000000;
        v20 = v15 << 16;
        if (*(*a1 + 9954) == 1)
        {
          v21 = 0;
          v22 = v15 & 0xFFFFFFFFFFFF0000;
          v23 = (v19 ^ 0x1000000000000uLL) >> 48;
          if (!v23)
          {
            ++v22;
          }

          v24 = (0x2127599BF4325C37 * (v22 ^ (v15 >> 23))) ^ ((0x2127599BF4325C37 * (v22 ^ (v15 >> 23))) >> 47);
          while (2)
          {
            v26 = v24 & (*(v16 + 10016) - 1);
            v27 = *(*(v16 + 10032) + 8 * v26);
            if (*(v16 + 10024) == v27 && *(*a1 + 10028) == WORD2(v27) && *(*a1 + 10030) == BYTE6(v27))
            {
              goto LABEL_35;
            }

            if (*(v16 + 10000) && *(v16 + 9992) == v27 && *(*a1 + 9996) == WORD2(v27))
            {
              if (*(*a1 + 9998) == BYTE6(v27) || HIDWORD(v15) != v27)
              {
                goto LABEL_20;
              }
            }

            else if (HIDWORD(v15) != v27)
            {
LABEL_20:
              v24 = ++v21 + v26;
              continue;
            }

            break;
          }

          if (WORD2(v20) == WORD2(v27) && v23 == BYTE6(v27))
          {
            if (v26 != -1)
            {
              goto LABEL_10;
            }

            goto LABEL_35;
          }

          goto LABEL_20;
        }

LABEL_35:
        sub_F8EC88(v16 + 8, (v20 & 0xFFFF00000000 | HIDWORD(v15) | v19) ^ 0x1000000000000, v55);
        v56 = 0u;
        v57 = 0u;
        v58 = v53;
        v59 = 0x3FF0000000000000;
        v60 = 1;
        sub_10A8B08(v16 + 4392, &v56, v55, v17, v18, *&v53, v29);
        if ((v60 & 1) == 0)
        {
          goto LABEL_9;
        }

        LODWORD(v30) = v56;
        v31 = *&v58 * v30;
        if (v31 >= 0.0)
        {
          v6 = v54;
          if (v31 >= 4.50359963e15)
          {
            goto LABEL_42;
          }

          v32 = (v31 + v31) + 1;
        }

        else
        {
          v6 = v54;
          if (v31 <= -4.50359963e15)
          {
            goto LABEL_42;
          }

          v32 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
        }

        v31 = (v32 >> 1);
LABEL_42:
        v33 = *(&v58 + 1) * SDWORD1(v56);
        if (v33 >= 0.0)
        {
          if (v33 >= 4.50359963e15)
          {
            goto LABEL_48;
          }

          v34 = (v33 + v33) + 1;
        }

        else
        {
          if (v33 <= -4.50359963e15)
          {
            goto LABEL_48;
          }

          v34 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
        }

        v33 = (v34 >> 1);
LABEL_48:
        v35 = v57 + v31;
        v36 = DWORD1(v57) + v33;
        if (v35 == -1 || v36 == 0x7FFFFFFF)
        {
          goto LABEL_10;
        }

        v39 = *a3;
        v38 = a3[1];
        v40 = *a1;
        v41 = a1[371];
        v56 = 0u;
        v57 = 0u;
        v58 = v53;
        v59 = 0x3FF0000000000000;
        v60 = 1;
        sub_10A5C78((v40 + 4392), &v56, v14, v14 + 8, v41);
        if (v60)
        {
          LODWORD(v42) = v56;
          v43 = *&v58 * v42;
          if (v43 >= 0.0)
          {
            v6 = v54;
            if (v43 < 4.50359963e15)
            {
              v44 = (v43 + v43) + 1;
LABEL_58:
              v43 = (v44 >> 1);
            }
          }

          else
          {
            v6 = v54;
            if (v43 > -4.50359963e15)
            {
              v44 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
              goto LABEL_58;
            }
          }

          v45 = *(&v58 + 1) * SDWORD1(v56);
          if (v45 >= 0.0)
          {
            if (v45 < 4.50359963e15)
            {
              v46 = (v45 + v45) + 1;
LABEL_64:
              v45 = (v46 >> 1);
            }
          }

          else if (v45 > -4.50359963e15)
          {
            v46 = (v45 + v45) - 1 + (((v45 + v45) - 1) >> 63);
            goto LABEL_64;
          }

          v47 = v57 + v43;
          if (v47 == -1)
          {
            goto LABEL_10;
          }

          v48 = DWORD1(v57) + v45;
          if (v48 == 0x7FFFFFFF)
          {
            goto LABEL_10;
          }

          *&v56 = (v35 + v39 + v47) | ((v36 + v38 + v48) << 32);
          sub_1034078(a1, v6, &v56, *v52, a4, v13, 0, 0);
        }

LABEL_9:
        v6 = v54;
LABEL_10:
        if (++v13 == v12)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

unint64_t sub_10336EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 9954) != 1 || sub_1007A48(a1 + 10040, a2) == -1 && (v6 = *(a2 + 32), v7 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32), v8 = (v6 & 0xFF000000000000) == 0, v9 = (v7 | (2 * v8)) + 4 * *(a2 + 80), BYTE6(v20) = !v8, WORD2(v20) = WORD1(v9), LODWORD(v20) = HIDWORD(v9), sub_100A97C(a1 + 9960, &v20) == -1))
  {
    v20 = 0u;
    v21 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v22 = _Q0;
    v23 = 0x3FF0000000000000;
    v24 = 1;
    sub_10AB718(a1 + 4392, &v20, a2, 0x3B9ACA00u, a3);
    if (v24 == 1)
    {
      v18 = sub_F8634C(&v20, &v22, v17);
      v11 = (v21 + v18) | ((DWORD1(v21) + HIDWORD(v18)) << 32);
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v10 = v11 & 0xFFFFFFFF00000000;
    v11 = v11;
  }

  else
  {
    v10 = 0x7FFFFFFF00000000;
    v11 = 0xFFFFFFFFLL;
  }

  return v10 | v11;
}

void *sub_103385C(uint64_t a1, unint64_t a2)
{
  LODWORD(v26[0]) = *(a1 + 4360);
  v28 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 & 2) == 0, v26);
  v4 = HIDWORD(v28);
  if (v28)
  {
    v5 = v4 == 0xFFFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v26[0] = 0;
  v26[1] = 0;
  v6 = sub_1055EF8(*(a1 + 32), v28, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return 0;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return 0;
  }

  v9 = &v6[v8 + *&v6[v8]];
  if (*v9 <= v4)
  {
    return 0;
  }

  v10 = &v9[4 * v4 + 4 + *&v9[4 * v4 + 4]];
  v11 = &v10[-*v10];
  if (*v11 < 9u)
  {
    return 0;
  }

  v12 = *(v11 + 4);
  if (!v12)
  {
    return 0;
  }

  v13 = &v10[v12 + *&v10[v12]];
  v16 = *v13;
  v14 = v13 + 4;
  v15 = v16;
  v17 = &v14[v16];
  v18 = v14;
  if (v16)
  {
    v18 = v14;
    do
    {
      v19 = (v18 + ((4 * v15) & 0x7FFFFFFF8));
      v21 = *v19;
      v20 = v19 + 1;
      v22 = v15 >> 1;
      v15 += ~(v15 >> 1);
      if (v21 >= a2)
      {
        v15 = v22;
      }

      else
      {
        v18 = v20;
      }
    }

    while (v15);
  }

  if (v18 == v17)
  {
    return 0;
  }

  if (*v18 != a2)
  {
    return 0;
  }

  v27 = (v18 - v14) >> 3;
  if (v27 == 0xFFFF)
  {
    return 0;
  }

  v23 = *(a1 + 8);
  v24 = (a1 + 4440);
  sub_1055C88(v23, &v28, &v27, v24);
  return v24;
}

uint64_t sub_1033A08(uint64_t *a1, uint64_t **a2)
{
  sub_1034760((a1 + 386), a2, v43);
  if (v43[0])
  {
    return v43[3][1];
  }

  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[379];
  v44 = *a2;
  sub_105733C(*(v7 + 8), &v44, (v7 + 4392));
  sub_10153E4(v7 + 40, (v7 + 4392), *(v7 + 4368), 0, &__p);
  v44 = a1;
  sub_10322E4((a1 + 3), &__p, 0, &v44);
  v4 = (v6 - v5) >> 5;
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  sub_105772C((a1 + 386), a2, &__p);
  v8 = __p;
  if (v42 == 1)
  {
    v9 = (*(__p + 1) + 16 * v41);
    *v9 = *a2;
    v9[1] = -1;
  }

  *(v8[1] + 16 * v41 + 8) = v4;
  v10 = a1[483];
  v11 = a1[484];
  if (v10 >= v11)
  {
    v13 = a1[482];
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      sub_1794();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      goto LABEL_49;
    }

    v19 = v15;
    v20 = (8 * v15);
    v21 = *a2;
    v22 = &v20[-v19];
    *v20 = v21;
    v12 = v20 + 1;
    memcpy(v22, v13, v14);
    a1[482] = v22;
    a1[483] = v12;
    a1[484] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = *a2;
    v12 = v10 + 8;
  }

  a1[483] = v12;
  v23 = a1[489];
  v24 = a1[490];
  if (v23 == v24 << 6)
  {
    if ((v23 + 1) < 0)
    {
      sub_1794();
    }

    v25 = v24 << 7;
    if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_3D41C((a1 + 488), v26);
    v23 = a1[489];
  }

  a1[489] = v23 + 1;
  *(a1[488] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23);
  v27 = a1[486];
  if (v27 >= a1[487])
  {
    v28 = sub_1052CA0((a1 + 485));
  }

  else
  {
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = v27 + 40;
  }

  a1[486] = v28;
  v29 = a1[117];
  v30 = a1[116];
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
  if (v4 >= v31)
  {
    v32 = a1[118];
    if (v29 < v32)
    {
      *v29 = 0;
      *(v29 + 8) = xmmword_2297C80;
      v33 = v29 + 24;
LABEL_45:
      a1[117] = v33;
      return v4;
    }

    v34 = v31 + 1;
    if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3);
    if (2 * v35 > v34)
    {
      v34 = 2 * v35;
    }

    if (v35 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v34;
    }

    if (!v36)
    {
      v37 = 8 * ((v29 - v30) >> 3);
      *v37 = 0;
      *(v37 + 8) = xmmword_2297C80;
      v33 = v37 + 24;
      v38 = (v37 - (v29 - v30));
      memcpy(v38, v30, v29 - v30);
      a1[116] = v38;
      a1[117] = v33;
      a1[118] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_45;
    }

    if (v36 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_49:
    sub_1808();
  }

  return v4;
}

void sub_1033DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1033DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4385) != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  if (*(v4 + 3880))
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = a2;
  v18 = sub_3BF72C(v4 + 8, a2, 1);
  v5 = v18;
  if (v18)
  {
    v19 = &v18[-*v18];
    a1 = v16;
    if (*v19 < 7u)
    {
      v5 = 0;
      a2 = v17;
    }

    else
    {
      a2 = v17;
      if (!*(v19 + 3) || (v20 = (v5 + *(v19 + 3) + *(v5 + *(v19 + 3))), *v20 <= HIDWORD(v17)))
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }

      v5 = (&v20[HIDWORD(v17) + 1] + v20[HIDWORD(v17) + 1]);
    }
  }

  else
  {
    a2 = v17;
    a1 = v16;
  }

LABEL_4:
  v6 = (v5 - *v5);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 < 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = (&loc_1120530 + 1);
    v10 = *(&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_17;
    }
  }

  v11 = v9[2];
  if (v9[2])
  {
    v11 += v8 + *(v8 + v11);
  }

  if (v10 >= 9)
  {
    v12 = v9[4];
    if (v12 && v11 != 0)
    {
      v21 = (v8 + v12);
      v22 = *v21;
      *a3 = v11;
      *(a3 + 8) = v21 + v22;
      *&result = 0xFFFFFFFFLL;
      *(a3 + 16) = 0xFFFFFFFFLL;
      *(a3 + 24) = -1;
      *(a3 + 32) = 2;
      return result;
    }
  }

LABEL_17:
  sub_1056338(a1, a2, &v24);
  if (!v24)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v15 = v25;
    if (!v25)
    {
      return result;
    }

    goto LABEL_23;
  }

  v14 = v25;
  *a3 = v24;
  *(a3 + 8) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 1;
  v15 = v25;
  if (v25)
  {
LABEL_23:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return result;
}

uint64_t sub_103401C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2674F50[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

void sub_1034078(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v41 = a4;
  v8 = *(a1 + 1040);
  v9 = *a3;
  if (v8 != -1 && v9 > v8)
  {
    return;
  }

  v12 = *(a1 + 928) + 24 * a4;
  if (*v12)
  {
    v13 = *(v12 + 8);
    v14 = v9 >= v13;
    if (v9 == v13)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v39 = a3;
  v15 = a2;
  v16 = a6;
  v17 = a8;
  v18 = a5;
  v19 = a7;
  sub_2512DC(a1 + 952, &v41);
  a2 = v15;
  a7 = v19;
  a5 = v18;
  a8 = v17;
  a6 = v16;
  if (*(a1 + 3048) == 1)
  {
    v20 = *(a1 + 3072);
    v21 = *(a1 + 3080);
    if (v20 >= v21)
    {
      v23 = *(a1 + 3064);
      v24 = v20 - v23;
      v25 = (v20 - v23) >> 2;
      v26 = v25 + 1;
      if ((v25 + 1) >> 62)
      {
        sub_1794();
      }

      v27 = v21 - v23;
      if (v27 >> 1 > v26)
      {
        v26 = v27 >> 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (!(v28 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v29 = v25;
      v30 = (4 * v25);
      v31 = &v30[-v29];
      *v30 = v41;
      v22 = v30 + 1;
      memcpy(v31, v23, v24);
      *(a1 + 3064) = v31;
      *(a1 + 3072) = v22;
      *(a1 + 3080) = 0;
      if (v23)
      {
        operator delete(v23);
      }

      a6 = v16;
      a8 = v17;
      a5 = v18;
      a7 = v19;
      a2 = v15;
    }

    else
    {
      *v20 = v41;
      v22 = v20 + 4;
    }

    *(a1 + 3072) = v22;
  }

  a3 = v39;
  if (*v12)
  {
    v32 = *(v12 + 8);
    v14 = *v39 >= v32;
    if (*v39 == v32)
    {
LABEL_7:
      if (a3[1] >= *(v12 + 12))
      {
        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    if (v14)
    {
      return;
    }
  }

LABEL_28:
  *(v12 + 8) = *a3;
  *v12 = *a2;
  if (a7)
  {
    v33 = 0x40000000;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 & 0xC0000000 | a5 & 0x3FFFFFFF;
  if (a8)
  {
    v35 = 0x80000000;
  }

  else
  {
    v35 = 0;
  }

  *(v12 + 16) = a6;
  *(v12 + 20) = v34 | v35;
  if ((*(a1 + 3048) & 1) == 0)
  {
    v40 = *a3;
    v36 = *(a1 + 1008);
    if (v41 >= ((*(a1 + 1016) - v36) >> 2) || *(v36 + 4 * v41) == -1)
    {
      sub_1057090(a1 + 984, v41, &v40);
    }

    else
    {
      sub_1057208((a1 + 984), v41, &v40);
    }

    if ((*(*(a1 + 976) + 8) - **(a1 + 976)) >> 5 == (*(a1 + 960) - *(a1 + 952)) >> 3)
    {
      v37 = *(a1 + 1040);
      v38 = *(*(a1 + 984) + 4);
      if (v37 == -1 || v38 < v37)
      {
        *(a1 + 1040) = v38;
      }
    }
  }
}

uint64_t sub_1034330(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_40D8D4(a1, a2, &v34);
  if (v34)
  {
    v6 = v35;
    v7 = *(a1 + 768) + 80 * *(v35 + 8);
    v9 = *(v7 + 8);
    v8 = v7 + 8;
    v10 = *a3 >= v9;
    if (*a3 == v9)
    {
      if (*(a3 + 4) >= *(v8 + 4))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    ++*(a1 + 816);
    *v8 = *a3;
    v21 = *(a3 + 16);
    v22 = *(a3 + 32);
    v23 = *(a3 + 48);
    *(v8 + 64) = *(a3 + 64);
    *(v8 + 32) = v22;
    *(v8 + 48) = v23;
    *(v8 + 16) = v21;
    v24 = *(v6 + 8);
    v25 = a1 + 824;
  }

  else
  {
    ++*(a1 + 816);
    v12 = -858993459 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_40D9F8(a1, a2, &v36);
    v13 = v37;
    v14 = *(v36 + 8);
    if (v38 == 1)
    {
      *(v14 + 16 * v37) = *a2;
    }

    *(v14 + 16 * v13 + 8) = v12;
    v15 = *(a1 + 776);
    v16 = *(a1 + 784);
    if (v15 >= v16)
    {
      v26 = *(a1 + 768);
      v27 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v26) >> 4) + 1;
      if (v27 > 0x333333333333333)
      {
        sub_1794();
      }

      v28 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v26) >> 4);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x199999999999999)
      {
        v29 = 0x333333333333333;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 <= 0x333333333333333)
        {
          operator new();
        }

        sub_1808();
      }

      v30 = *a3;
      v31 = 16 * ((v15 - v26) >> 4);
      *(v31 + 24) = *(a3 + 16);
      v32 = *(a3 + 48);
      *(v31 + 40) = *(a3 + 32);
      *(v31 + 56) = v32;
      *v31 = *a2;
      *(v31 + 72) = *(a3 + 64);
      *(v31 + 8) = v30;
      v20 = v31 + 80;
      v33 = (v31 - (v15 - v26));
      memcpy(v33, v26, v15 - v26);
      *(a1 + 768) = v33;
      *(a1 + 776) = v20;
      *(a1 + 784) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v15 = *a2;
      *(v15 + 8) = *a3;
      v17 = *(a3 + 16);
      v18 = *(a3 + 32);
      v19 = *(a3 + 48);
      *(v15 + 72) = *(a3 + 64);
      *(v15 + 56) = v19;
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v20 = v15 + 80;
    }

    *(a1 + 776) = v20;
    v25 = a1 + 824;
    v24 = v12;
  }

  sub_1056B88(v25, v24, a3);
  return 1;
}

int *sub_10345B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 3032);
  v6 = *a2;
  result = sub_1057E78(*(v2 + 8), &v6, (v2 + 4416));
  v4 = *(v2 + 4416);
  v5 = *(v2 + 4424);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_1034680(uint64_t a1, unint64_t *a2, int a3, unsigned int *a4, int *a5, char a6)
{
  v12 = *a2;
  v13 = *a2 >> 16;
  v19 = a3;
  v14 = sub_101F854(*(a1 + 4464), HIDWORD(v12) & 0xFFFF0000FFFFFFFFLL | (v13 << 32), (v12 & 2) == 0, &v19);
  if (sub_105F33C(a1 + 4480, v14, a4, *a5, a6))
  {
    return 1;
  }

  v16 = *a2;
  v17 = *a2 >> 16;
  v20 = a3;
  v18 = sub_101F854(*(a1 + 4464), HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (v17 << 32), (v16 >> 1) & 1, &v20);
  return sub_105F33C(a1 + 4480, v18, a4, *a5, a6);
}

uint64_t sub_1034760@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  v15 = HIDWORD(*a2);
  while (1)
  {
    v16 = v11 & v12;
    v17 = *(v13 + v16);
    v18 = ((v17 ^ v14) - 0x101010101010101) & ~(v17 ^ v14) & 0x8080808080808080;
    if (v18)
    {
      break;
    }

LABEL_8:
    if ((v17 & (~v17 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v11 = v3 + v16;
  }

  while (1)
  {
    v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v12;
    v20 = (v10[1] + 16 * v19);
    if (*v20 == v4 && *(v20 + 1) == v15)
    {
      break;
    }

    v18 &= v18 - 1;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  if (v12 == v19)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v13 + v19);
  a3[3] = v20;
  a3[4] = (v13 + v12);
  return result;
}

unint64_t sub_10348A4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 2)
  {
    return sub_105811C(a1, a2);
  }

  if (v2 != 1)
  {
    sub_5AF20();
  }

  v3 = *a1;
  v15 = *a2;
  v4 = sub_1058270(v3, &v15);
  v6 = v3[3];
  v5 = v3[4];
  v7 = (v6 + 8 * v5);
  if (v4 == v7 || *v4 != v15)
  {
    v8 = v3[6];
    v9 = v8 + 16 * v5;
    v4 = v7;
  }

  else
  {
    v8 = v3[6];
    v9 = v8 + 2 * (v4 - v6);
  }

  v11 = v8 + 16 * v5;
  if (v4 == v7 && v9 == v11)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Key not found.", 0xEuLL);
  }

  return *v9;
}

void sub_1034990(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2 + 4464;
  *(a1 + 16) = -1;
  sub_102DFD8(a1 + 24, a2);
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operator new();
}

void sub_1034C68(_Unwind_Exception *a1)
{
  sub_360988(v1 + 2080);
  sub_584EC4((v1 + 1200));
  v5 = *(v1 + 1168);
  if (v5)
  {
    *(v1 + 1176) = v5;
    operator delete(v5);
  }

  sub_102E120((v1 + 1056));
  sub_21DB4B4(v1 + 984);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 960) = v6;
    operator delete(v6);
    v7 = *v2;
    if (!*v2)
    {
LABEL_5:
      sub_C65AF0((v1 + 24));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 936) = v7;
  operator delete(v7);
  sub_C65AF0((v1 + 24));
  _Unwind_Resume(a1);
}

double sub_1034D1C(uint64_t a1)
{
  v2 = a1 + 2080;
  v3 = 768;
  do
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 24);
      if (v4 >= 0x80)
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      else if (v4)
      {
        *(v2 + 16) = 0;
        memset(*v2, 128, v4 + 8);
        *(*v2 + v4) = -1;
        v5 = *(v2 + 24);
        if (v5 == 7)
        {
          v6 = 6;
        }

        else
        {
          v6 = v5 - (v5 >> 3);
        }

        *(v2 + 40) = v6 - *(v2 + 16);
      }
    }

    v2 += 48;
    v3 -= 48;
  }

  while (v3);
  v7 = a1 + 1200;
  *(a1 + 2056) = *(a1 + 2048);
  *(a1 + 2032) = *(a1 + 2024);
  *(a1 + 2072) = 0;
  *(a1 + 1976) = *(a1 + 1968);
  v8 = 768;
  do
  {
    if (*(v7 + 16))
    {
      v9 = *(v7 + 24);
      if (v9 >= 0x80)
      {
        operator delete(*v7);
        *(v7 + 40) = 0;
        *v7 = &unk_2290750;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
      }

      else if (v9)
      {
        *(v7 + 16) = 0;
        memset(*v7, 128, v9 + 8);
        *(*v7 + v9) = -1;
        v10 = *(v7 + 24);
        if (v10 == 7)
        {
          v11 = 6;
        }

        else
        {
          v11 = v10 - (v10 >> 3);
        }

        *(v7 + 40) = v11 - *(v7 + 16);
      }
    }

    v7 += 48;
    v8 -= 48;
  }

  while (v8);
  *(a1 + 2000) = *(a1 + 1992);
  *(a1 + 2016) = 0;
  *(a1 + 1016) = *(a1 + 1008);
  *(a1 + 992) = *(a1 + 984);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = -NAN;
  *(a1 + 20) = -1;
  *(a1 + 1048) = 0;
  sub_1053AC0(a1 + 1064);
  sub_1053AC0(a1 + 2856);
  *(a1 + 1176) = *(a1 + 1168);
  v12 = *(a1 + 952);
  v13 = *(a1 + 960);
  if (v12 != v13)
  {
    do
    {
      v14 = *v12++;
      v15 = *(a1 + 928) + 24 * v14;
      *v15 = 0;
      *(v15 + 8) = xmmword_2297C80;
    }

    while (v12 != v13);
    v12 = *(a1 + 952);
  }

  *(a1 + 960) = v12;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v16 != v17)
  {
    v18 = *(a1 + 32);
    do
    {
      v20 = *(v18 - 32);
      v18 -= 32;
      v19 = v20;
      if (v20)
      {
        *(v16 - 24) = v19;
        operator delete(v19);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  *(a1 + 32) = v17;
  sub_3068EC(a1 + 48);
  sub_1053AC0(a1 + 824);
  *(a1 + 2960) = 0x7FFFFFFF;
  *(a1 + 3048) = 0;
  v21 = a1 + 3088;
  v22 = 768;
  do
  {
    if (*(v21 + 16))
    {
      v23 = *(v21 + 24);
      if (v23 >= 0x80)
      {
        operator delete(*v21);
        *(v21 + 40) = 0;
        *v21 = &unk_2290750;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
      }

      else if (v23)
      {
        *(v21 + 16) = 0;
        memset(*v21, 128, v23 + 8);
        *(*v21 + v23) = -1;
        v24 = *(v21 + 24);
        if (v24 == 7)
        {
          v25 = 6;
        }

        else
        {
          v25 = v24 - (v24 >> 3);
        }

        *(v21 + 40) = v25 - *(v21 + 16);
      }
    }

    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  *(a1 + 3864) = *(a1 + 3856);
  v26 = *(a1 + 3888);
  v27 = *(a1 + 3880);
  if (v26 != v27)
  {
    do
    {
      v28 = v26 - 40;
      v29 = *(v26 - 8);
      if (v29 != -1)
      {
        (off_2674F50[v29])(&v31, v26 - 40);
      }

      *(v26 - 8) = -1;
      v26 -= 40;
    }

    while (v28 != v27);
  }

  *(a1 + 3888) = v27;
  *(a1 + 3912) = 0;
  result = 0.0;
  *(a1 + 3928) = 0u;
  return result;
}

void sub_1035064(uint64_t a1)
{
  v64 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  v2 = *a1;
  v3 = *a1 + 0x2000;
  v4 = *(*a1 + 10016);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(*a1 + 10032);
    while (1)
    {
      v7 = BYTE6(*v6);
      v8 = HIDWORD(*v6);
      if ((*(v2 + 10024) != *v6 || *(*a1 + 10028) != v8 || *(*a1 + 10030) != v7) && (!*(v2 + 10000) || *(v2 + 9992) != *v6 || *(*a1 + 9996) != v8 || *(*a1 + 9998) != v7))
      {
        break;
      }

      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v6 = *(*a1 + 10032);
  }

  v9 = *(*a1 + 10032) + 8 * v4;
  if (v6 == v9)
  {
LABEL_66:
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v58 = (a1 + 2960);
    __asm { FMOV            V0.2D, #1.0 }

    v57 = _Q0;
    do
    {
      v60 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32) | (2 * ((*v6 & 0xFF000000000000) == 0));
      if (v64 && ((v16 = *a1, v17 = *(a1 + 2968), sub_F8EC88(*a1 + 8, *v6, &v65), v68 = 0u, v69 = 0u, v70 = v57, v71 = 0x3FF0000000000000, v72 = 1, sub_10A8B08(v16 + 4392, &v68, &v65, 0x3B9ACA00u, v17, *&v57, v18), (v72 & 1) == 0) || (v20 = sub_F8634C(&v68, &v70, v19), v69 + v20 == -1) || DWORD1(v69) + HIDWORD(v20) == 0x7FFFFFFF || *(&v69 + 1) + v21 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v22 = sub_101E508(*(a1 + 8));
        if (v22 - 1 <= v64 || (sub_1034680(*a1, &v60, v22 - 1, *(a1 + 2968), v58, *(a1 + 2964)) & 1) != 0)
        {
          sub_1053B80(a1 + 1056, &v60, &v64);
          sub_1054E9C((a1 + 1056));
          __src = v11;
          LODWORD(v68) = v64 - 1;
          sub_1053B80(a1 + 2848, &v60, &v68);
          sub_1054E9C((a1 + 2848));
          v23 = *(a1 + 8);
          LODWORD(v68) = v64;
          v24 = sub_101F854(*v23, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 & 2) == 0, &v68);
          v25 = v11;
          if (v11 == v10 || v10[-1].i64[1] != v24)
          {
            if (v10 >= v63)
            {
              v26 = v10 - v11;
              v27 = (v10 - v11) >> 3;
              v28 = v27 + 1;
              if ((v27 + 1) >> 61)
              {
                sub_1794();
              }

              v29 = v63 - v11;
              if ((v63 - v11) >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              if (v29 >= 0x7FFFFFFFFFFFFFF8)
              {
                v30 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                if (!(v30 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 0;
              v31 = (8 * v27);
              *v31 = v24;
              v10 = (v31 + 1);
              memcpy(0, v11, v26);
              __p = 0;
              v62 = v10;
              v63 = 0;
            }

            else
            {
              v10->i64[0] = v24;
              v10 = (v10 + 8);
            }

            __src = v25;
            v62 = v10;
          }

          v32 = *(a1 + 8);
          LODWORD(v68) = v64;
          v33 = sub_101F854(*v32, HIDWORD(v60) & 0xFFFF0000FFFFFFFFLL | (WORD1(v60) << 32), (v60 >> 1) & 1, &v68);
          if (v10[-1].i64[1] == v33)
          {
            v11 = __src;
          }

          else
          {
            v11 = __src;
            if (v10 >= v63)
            {
              v34 = v10 - __src;
              v35 = (v10 - __src) >> 3;
              v36 = v35 + 1;
              if ((v35 + 1) >> 61)
              {
                sub_1794();
              }

              v37 = v63 - __src;
              if ((v63 - __src) >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF8)
              {
                v38 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v39 = (8 * v35);
              *v39 = v33;
              v10 = (v39 + 1);
              memcpy(0, __src, v34);
              __p = 0;
              v62 = v10;
              v63 = 0;
              v11 = 0;
            }

            else
            {
              v10->i64[0] = v33;
              v10 = (v10 + 8);
            }

            v62 = v10;
          }
        }

        else
        {
          LODWORD(v68) = v22 - 2;
          sub_1053B80(a1 + 2848, &v60, &v68);
          sub_1054E9C((a1 + 2848));
        }
      }

      else
      {
        LODWORD(v68) = 0;
        sub_1053B80(a1 + 1056, &v60, &v68);
        sub_1054E9C((a1 + 1056));
      }

      for (++v6; v6 != v9; ++v6)
      {
        v40 = BYTE6(*v6);
        v41 = HIDWORD(*v6);
        if ((*(v2 + 10024) != *v6 || *(v3 + 1836) != v41 || *(v3 + 1838) != v40) && (!*(v2 + 10000) || *(v2 + 9992) != *v6 || *(v3 + 1804) != v41 || *(v3 + 1806) != v40))
        {
          break;
        }
      }
    }

    while (v6 != v9);
    v2 = *a1;
  }

  v42 = *(v2 + 10272);
  v43 = v42 + 88 * *(v2 + 10176);
  *&v68 = v2 + 10040;
  *(&v68 + 1) = v42;
  *&v69 = v43;
  sub_1007918(&v68);
  v44 = *(v2 + 10272) + 88 * *(v2 + 10176);
  v65 = (v2 + 10040);
  v66 = v44;
  v67 = v44;
  sub_1007918(&v65);
  while (1)
  {
    v45 = *(&v68 + 1);
    if (*(&v68 + 1) == v66)
    {
      break;
    }

    v60 = (((*(*(&v68 + 1) + 32) >> 16) & 0xFFFF0000 | (*(*(&v68 + 1) + 32) << 32) | (2 * ((*(*(&v68 + 1) + 32) & 0xFF000000000000) == 0))) + 4 * *(*(&v68 + 1) + 80)) & 0xFFFFFFFFFFFFFFFELL | *(*(&v68 + 1) + 84) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 1056, &v60, v73);
    sub_1054E9C((a1 + 1056));
    v60 = (((*(v45 + 72) >> 16) & 0xFFFF0000 | (*(v45 + 72) << 32) | (2 * ((*(v45 + 72) & 0xFF000000000000) == 0))) + 4 * *(v45 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v45 + 84) >> 1) & 1;
    v73[0] = 0;
    sub_1053B80(a1 + 1056, &v60, v73);
    sub_1054E9C((a1 + 1056));
    *(&v68 + 1) += 88;
    sub_1007918(&v68);
  }

  for (i = *(sub_F8F520(*a1 + 8) + 16); i; i = *i)
  {
    *&v68 = (i[2] >> 16) & 0xFFFF0000 | (i[2] << 32) | (2 * ((i[2] & 0xFF000000000000) == 0));
    LODWORD(v65) = 0;
    sub_1053B80(a1 + 1056, &v68, &v65);
    sub_1054E9C((a1 + 1056));
  }

  v47 = 126 - 2 * __clz((v10 - v11) >> 3);
  if (v10 == v11)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  sub_2D31D4(v11, v10, &v68, v48, 1);
  v50 = __p;
  v49 = v62;
  if (__p == v62)
  {
LABEL_93:
    if (v50 != v49)
    {
      v62 = v50;
    }
  }

  else
  {
    v51 = __p - 8;
    while (v51 + 4 != v62)
    {
      v52 = v51[2];
      v51 += 2;
      LODWORD(v53) = v51[2];
      if (v52 == v53 && v51[1] == v51[3])
      {
        v55 = v51 + 4;
        if (v51 + 4 != v62)
        {
          do
          {
            if (v53 != *v55 || v51[1] != v55[1])
            {
              v53 = *v55;
              *(v51 + 1) = *v55;
              v51 += 2;
            }

            v55 += 2;
          }

          while (v55 != v49);
          v49 = v62;
        }

        v50 = v51 + 2;
        goto LABEL_93;
      }
    }
  }

  sub_105DC54((*a1 + 4480), &__p, *(a1 + 2968), *(a1 + 2960), *(a1 + 2964), 4u);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }
}