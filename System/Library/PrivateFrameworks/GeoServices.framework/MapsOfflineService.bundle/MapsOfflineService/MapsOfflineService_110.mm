uint64_t sub_6F7618(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = a3;
  result = sub_6D3F8C(a2 + 1262, a3);
  if (*(result + 112) != -1)
  {
    return result;
  }

  v7 = result;
  v8 = *(a1 + 712);
  v9 = sub_6D3F8C(a2 + 1262, v3);
  v10 = v3 + 1;
  v11 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
  if (v3 + 1 > v11)
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
  }

  if (v3 + 1 >= v11)
  {
LABEL_14:
    v10 = -1;
    if (*(v7 + 72) == -1)
    {
      goto LABEL_19;
    }

LABEL_39:
    if (*(v7 + 96) == -1 && *(v7 + 104) == -1 && v10 != -1)
    {
      v29 = sub_6D3F8C(a2 + 1262, v10);
      if (*(v29 + 96) != -1 || *(v29 + 104) != -1)
      {
        v30 = sub_6D3F8C(a2 + 1262, v10);
        *(v7 + 96) = v30[12];
        *(v7 + 104) = v30[13];
        *(v7 + 136) = v30[17];
      }
    }

    goto LABEL_49;
  }

  v13 = v9[4] + ((v9[1] - *v9) >> 3) - 1;
  while (1)
  {
    v14 = sub_6D3F8C(a2 + 1262, v10);
    if (*v14 != *(v14 + 8) && *(v14 + 24) != 0)
    {
      break;
    }

    if (v12 == ++v10)
    {
      goto LABEL_14;
    }
  }

  if (sub_4D2544(a2, v13, 1, *(v14 + 32), 1u, v15) > v8)
  {
    v10 = -1;
  }

  if (*(v7 + 72) != -1)
  {
    goto LABEL_39;
  }

LABEL_19:
  v17 = 0;
  v18.i64[0] = -1;
  v18.i64[1] = -1;
  v19 = *(v7 + 120);
  v20 = *(v7 + 88);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v7 + 80), v18), vceqq_s64(*(v7 + 96), v18))))) & 1) != 0 || *(v7 + 112) != -1 || v19 != -1)
  {
    goto LABEL_34;
  }

  v17 = 0;
  if (*(v7 + 224))
  {
    v20 = -1;
    goto LABEL_34;
  }

  v20 = -1;
  if (v10 == -1)
  {
LABEL_34:
    if (!v17 && v20 == -1 && v19 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_39;
  }

  v21 = sub_6D3F8C(a2 + 1262, v10);
  if (v21[9] == -1 && v21[10] == -1 && v21[11] == -1 && v21[15] == -1 && v21[12] == -1 && v21[13] == -1)
  {
    v20 = *(v7 + 88);
    v19 = *(v7 + 120);
    v17 = *(v7 + 72) != -1;
    goto LABEL_34;
  }

  if (sub_7309F4(a1 + 7208, v7))
  {
    v22 = sub_6D3F8C(a2 + 1262, v10);
    *(v7 + 72) = *(v22 + 72);
    v23 = *(v22 + 104);
    v24 = *(v22 + 120);
    v25 = *(v22 + 132);
    *(v7 + 88) = *(v22 + 88);
    *(v7 + 132) = v25;
    *(v7 + 120) = v24;
    *(v7 + 104) = v23;
    sub_730ADC(a1 + 7208, v7);
  }

LABEL_49:
  v31 = *(a1 + 712);
  v32 = *(a1 + 656);
  result = sub_6D3F8C(a2 + 1262, v3);
  v33 = result;
  while (v3)
  {
    result = sub_6D3F8C(a2 + 1262, --v3);
    v35 = *(result + 8);
    if (*result != v35 && *(result + 24) != 0)
    {
      v37 = *(result + 32);
      if (v32)
      {
        v38 = v37 + 1;
      }

      else
      {
        v38 = v37 + ((v35 - *result) >> 3) - 1;
      }

      result = sub_4D2544(a2, v38, 1, *(v33 + 32), 1u, v34);
      if (result <= v31)
      {
        v39 = sub_6D3F8C(a2 + 1262, v3);
        result = sub_6E4010(v7 + 72, v39 + 72);
        if (result)
        {
          *(v7 + 24) = 0;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_6F7974(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a2[28])
  {
    return 0;
  }

  v5 = *(a2 + 6);
  v6 = v5 - 20;
  v7 = (v5 - 20) > 0x2E || ((1 << (v5 - 20)) & 0x6F0000006783) == 0;
  if (v7 && (v5 - 1) >= 2)
  {
    return 0;
  }

  v8 = v6 > 0x2D;
  v9 = (1 << v6) & 0x250000002281;
  if (!v8 && v9 != 0 || v5 == 1)
  {
    v12 = *(a3 + 24);
    if (((v12 - 21) > 0x2D || ((1 << (v12 - 21)) & 0x250000002281) == 0) && v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a3 + 24);
    if (((v23 - 20) > 0x2D || ((1 << (v23 - 20)) & 0x250000002281) == 0) && v23 != 1)
    {
      return 0;
    }
  }

  if (*a2 == a2[1])
  {
    return 0;
  }

  v13 = *(a3 + 8);
  if (*a3 == v13)
  {
    return 0;
  }

  v15 = **a2;
  v16 = *(v13 - 8);
  v17 = *a1;
  v18 = sub_2B51D8(*a1, v16 & 0xFFFFFFFFFFFFLL);
  if (*(v17 + 7772) == 1)
  {
    v19 = sub_30C50C(v17 + 3896, v16, 0);
    v20 = &v19[-*v19];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v19[*&v19[v21]];
      }
    }

    v22 = v21 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v16 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v22 = 0;
  }

  v64 = v18;
  v65[0] = v22;
  v65[1] = sub_31D7E8(v17, v16 & 0xFFFFFFFFFFFFLL, 1);
  v65[2] = v24;
  v65[3] = v16;
  result = sub_716E70((a1 + 179), &v64);
  if (result)
  {
    v26 = *a1;
    v27 = sub_2B51D8(*a1, v15 & 0xFFFFFFFFFFFFLL);
    if (*(v26 + 7772) == 1)
    {
      v28 = sub_30C50C(v26 + 3896, v15, 0);
      v29 = &v28[-*v28];
      if (*v29 < 5u)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v29 + 2);
        if (v30)
        {
          v30 += &v28[*&v28[v30]];
        }
      }

      v31 = (v30 + ((v15 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v15 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_31D7E8(v26, v15 & 0xFFFFFFFFFFFFLL, 1);
    v68[0] = v27;
    v68[1] = v31;
    v68[2] = v32;
    v68[3] = v33;
    v69 = v15;
    v34 = *a1;
    v35 = sub_2B51D8(*a1, v16 & 0xFFFFFFFFFFFFLL);
    if (*(v34 + 7772) == 1)
    {
      v36 = sub_30C50C(v34 + 3896, v16, 0);
      v37 = &v36[-*v36];
      if (*v37 < 5u)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v37 + 2);
        if (v38)
        {
          v38 += &v36[*&v36[v38]];
        }
      }

      v39 = (v38 + ((v16 >> 30) & 0x3FFFC) + 4 + *(v38 + ((v16 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_31D7E8(v34, v16 & 0xFFFFFFFFFFFFLL, 1);
    v66[0] = v35;
    v66[1] = v39;
    v66[2] = v40;
    v66[3] = v41;
    v67 = v16;
    v42 = (v68[0] - *v68[0]);
    v43 = *v42;
    if (BYTE6(v69))
    {
      if (v43 < 0x47)
      {
        goto LABEL_57;
      }

      v44 = v42[35];
      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = 4096;
    }

    else
    {
      if (v43 < 0x47)
      {
        goto LABEL_57;
      }

      v44 = v42[35];
      if (!v44)
      {
        goto LABEL_57;
      }

      v45 = 2048;
    }

    if ((*(v68[0] + v44) & v45) != 0)
    {
      v46 = BYTE6(v16);
      v47 = 1;
      goto LABEL_58;
    }

LABEL_57:
    v47 = sub_3137AC(v68);
    v35 = v66[0];
    v46 = BYTE6(v67);
LABEL_58:
    v48 = (v35 - *v35);
    v49 = *v48;
    if (v46)
    {
      if (v49 < 0x47)
      {
        goto LABEL_67;
      }

      v50 = v48[35];
      if (!v48[35])
      {
        goto LABEL_67;
      }

      v51 = 4096;
    }

    else
    {
      if (v49 < 0x47)
      {
        goto LABEL_67;
      }

      v50 = v48[35];
      if (!v48[35])
      {
        goto LABEL_67;
      }

      v51 = 2048;
    }

    if ((*(v35 + v50) & v51) != 0)
    {
      v52 = 1;
      goto LABEL_68;
    }

LABEL_67:
    v52 = sub_3137AC(v66);
LABEL_68:
    if (v47 == v52)
    {
      sub_5E94A4(*a1, v15, 1, &v62);
      sub_6F873C(&v62, &v64);
      sub_5E9738(&v62);
      sub_5E94A4(*a1, v16, 1, v61);
      sub_6F873C(v61, &v62);
      sub_5E9738(v61);
      if (sub_31052C(&v64) && sub_31052C(&v62) && sub_BB4E4(v65, v63) && (v53 = sub_6D89E0(*a1, v15 & 0xFFFFFFFFFFFFLL), v53 == sub_6D89E0(*a1, v16 & 0xFFFFFFFFFFFFLL)))
      {
        v60 = a1;
        v54 = sub_6F8848(&v60, a2, a2[29] + 1, (a2[1] - *a2) >> 3);
        if (v54)
        {
          v55 = *(a3 + 232);
          v56 = *a3;
          v61[0] = v60;
          if (v55)
          {
            v57 = &v56[v55];
            do
            {
              v54 = sub_7056DC(v61, v56++);
              if (v56 == v57)
              {
                v58 = 0;
              }

              else
              {
                v58 = v54;
              }
            }

            while ((v58 & 1) != 0);
          }

          else
          {
            v54 = 1;
          }
        }

        v59 = v54;
      }

      else
      {
        v59 = 0;
      }

      sub_310F30(&v62);
      sub_310F30(&v64);
      return v59;
    }

    return 0;
  }

  return result;
}

void sub_6F7E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_310F30(&a13);
  sub_310F30(&a31);
  _Unwind_Resume(a1);
}

void sub_6F7EFC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 10104) - *(a2 + 10096)) >> 3);
  if (v4 <= a3 || v4 <= a4)
  {
    return;
  }

  v10 = sub_6D3F8C((a2 + 10096), a3);
  v11 = sub_6D3F8C((a2 + 10096), a4);
  if (*v10 == *(v10 + 8))
  {
    return;
  }

  v12 = v11;
  if (*v11 == *(v11 + 8))
  {
    return;
  }

  if (!*(v10 + 24) || *(v11 + 24) == 0)
  {
    return;
  }

  sub_5EF9A8(&v37, v10);
  sub_6D7B84(&v37, v12, v14, v15);
  v34 = a1;
  if (a3 + 1 >= a4)
  {
    sub_4D0560();
    v23 = v22;
    v25 = v24;
    v26 = *(v10 + 32);
    v28 = *v10;
    v27 = *(v10 + 8);
    sub_4D0560();
    sub_6F8338(v23, v25 + v26 + ((v27 - v28) >> 3) - 1, v30, v12[4] + v29 + ((v12[1] - *v12) >> 3), &v37);
    sub_6D7F40(&v37);
    v31 = *(v10 + 24);
    if ((v31 - 6) >= 2)
    {
      v32 = v31 - 86;
      if ((v31 - 86) >= 2 && (v31 - 41) >= 0x13)
      {
        v33 = v31 - 7;
        if ((v33 > 0x3B || ((1 << v33) & 0xE00000000C38011) == 0) && v32 >= 2)
        {
          v39 = sub_6D807C(v34, a2, v10, v12);
          sub_6F84C8((v10 + 40), v12 + 5, &v35);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v35;
          v41 = v36;
        }
      }
    }

    sub_6D8620(v10, &v37);
    sub_6D86EC(v12);
    sub_706E58(0, 0, a2);
  }

  else
  {
    v16 = sub_6D3F8C((a2 + 10096), a3 + 1);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!*(v16 + 24))
    {
      v19 = v18 - v17;
      goto LABEL_22;
    }

    v19 = v18 - v17;
    v20 = *v12;
    if (v18 - v17 == v12[1] - *v12)
    {
      if (v17 != v18)
      {
        v21 = *v16;
        while (__PAIR64__(*(v21 + 2), *v21) == __PAIR64__(WORD2(*v20), *v20) && v21[6] == BYTE6(*v20))
        {
          v21 += 8;
          ++v20;
          if (v21 == v18)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_26;
      }

LABEL_22:
      sub_3790B0(&v37, __dst, v17, v18, v19 >> 3);
      operator new();
    }
  }

LABEL_26:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v37)
  {
    __dst = v37;
    operator delete(v37);
  }
}

void sub_6F82E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5ECFBC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_6F8338(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v12 = sub_4D1DC0(a1);
        v13 = sub_4D1DC0(a3);
        if (a2 >= v12 || a4 >= v13)
        {
          if (a2 < v12 == a4 < v13)
          {
            return a5;
          }
        }

        else
        {
          v14 = sub_4D1F50(a1, a2);
          if (v14 == sub_4D1F50(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_4D1F50(a1, a2);
        v11 = *(v10 + 36);
        LODWORD(v20) = *(v10 + 32);
        WORD2(v20) = v11;
        BYTE6(v20) = (v11 & 0x20000000) == 0;
        sub_2B5AD0(a5, &v20);
        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v15 = sub_4D1F50(a1, a2);
      v16 = *(v15 + 36);
      LODWORD(v20) = *(v15 + 32);
      WORD2(v20) = v16;
      BYTE6(v20) = (v16 & 0x20000000) == 0;
      sub_2B5AD0(a5, &v20);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_4D1DC0(a3))
    {
      v17 = sub_4D1F50(0, a2);
      v18 = *(v17 + 36);
      LODWORD(v20) = *(v17 + 32);
      WORD2(v20) = v18;
      BYTE6(v20) = (v18 & 0x20000000) == 0;
      sub_2B5AD0(a5, &v20);
      ++a2;
    }
  }

  return a5;
}

uint64_t sub_6F84C8@<X0>(char **a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1;
  if (*a1 != v7)
  {
    v8 = *a1;
    while ((v8[2] & 1) == 0)
    {
      v8 += 4;
      if (v8 == v7)
      {
        goto LABEL_28;
      }
    }
  }

  if (v8 == v7)
  {
LABEL_28:
    sub_702E20(a3, 0, v6, v7, (v7 - v6) >> 2);
  }

  else
  {
    for (; v6 != v7; v6 += 4)
    {
      if ((v6[2] & 1) == 0)
      {
        v9 = a3[2];
        if (v5 < v9)
        {
          *v5++ = *v6;
        }

        else
        {
          v10 = *a3;
          v11 = v5 - *a3;
          v12 = (v11 >> 2) + 1;
          if (v12 >> 62)
          {
            sub_1794();
          }

          v13 = v9 - v10;
          if (v13 >> 1 > v12)
          {
            v12 = v13 >> 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v14 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            if (!(v14 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v15 = (4 * (v11 >> 2));
          *v15 = *v6;
          v5 = v15 + 1;
          memcpy(0, v10, v11);
          *a3 = 0;
          a3[1] = v5;
          a3[2] = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        a3[1] = v5;
      }
    }
  }

  return sub_6D8760(a3, sub_6D88A4, sub_6D88C4);
}

void sub_6F8710(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_6F873C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (v4 == v5)
  {
LABEL_9:
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = sub_12331FC();
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 111) = 0;
  }

  else
  {
    v6 = v4;
    do
    {
      if (!*v6)
      {
        v7 = a2;
        v4 = v6;

        goto LABEL_8;
      }

      v6 += 144;
    }

    while (v6 != v5);
    if (v4 == v5)
    {
      goto LABEL_9;
    }

    v7 = a2;

LABEL_8:
    sub_704AE0(v7, v4);
  }

  return result;
}

void sub_6F880C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 8));
  _Unwind_Resume(exception_object);
}

unint64_t sub_6F8848(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v8 = *a1;
  if (8 * a3 == 8 * a4)
  {
    return 1;
  }

  v6 = (8 * a4 + v4);
  v7 = (8 * a3 + v4);
  do
  {
    result = sub_7056DC(&v8, v7);
    if (!result)
    {
      break;
    }

    ++v7;
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_6F88C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1171) != 1)
  {
    return 0;
  }

  sub_4D1EF8(a2, a3);
  if (!v7)
  {
    return 0;
  }

  v8 = sub_4D1EF8(a2, a3);
  if (*(v8 + 48 * v9 - 8) != 1)
  {
    return 0;
  }

  if (sub_4D1DC0(a2) - 1 == a3)
  {
    return 0;
  }

  v10 = sub_4D1F50(a2, a3);
  v11 = *(v10 + 32);
  v12 = *(v10 + 36);
  v13 = sub_4D1F50(a2, a3 + 1);
  v14 = *(v13 + 32);
  if (v11 != v14)
  {
    return 0;
  }

  v15 = v13;
  result = 0;
  v17 = *(v15 + 36);
  if (v12 == v17 && ((v11 & 0xFFFEFFFFFFFFFFFFLL | ((((v12 & 0x20000000) >> 29) & 1) << 48) | (v12 << 32)) ^ 0x1000000000000) >> 48 == (((v14 & 0xFFFEFFFFFFFFFFFFLL | ((((v17 & 0x20000000) >> 29) & 1) << 48) | (v17 << 32)) ^ 0x1000000000000) >> 48 == 0))
  {
    *(a4 + 24) = 0;
    *(a4 + 8) = *a4;
    *(a4 + 48) = *(a4 + 40);
    *(a4 + 64) = 0;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    *(a4 + 72) = v18;
    *(a4 + 88) = v18;
    *(a4 + 104) = v18;
    *(a4 + 120) = -1;
    *(a4 + 128) = 0;
    *(a4 + 136) = -1;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = vnegq_f64(v18);
    *(a4 + 176) = 0;
    *(a4 + 184) = 98;
    *(a4 + 192) = 0;
    *(a4 + 200) = 0;
    *(a4 + 208) = xmmword_229B660;
    *(a4 + 232) = 0;
    *(a4 + 245) = 0;
    *(a4 + 224) = 0;
    v21 = ((v11 & 0xFFFEFFFFFFFFFFFFLL | ((((v12 & 0x20000000) >> 29) & 1) << 48) | (v12 << 32)) ^ 0x1000000000000) >> 48;
    v20 = ((v11 & 0xFFFEFFFFFFFFFFFFLL | ((((v12 & 0x20000000) >> 29) & 1) << 48) | (v12 << 32)) ^ 0x1000000000000) >> 32;
    __src = v11;
    v24 = ((v14 & 0xFFFEFFFFFFFFFFFFLL | ((((v17 & 0x20000000) >> 29) & 1) << 48) | (v17 << 32)) ^ 0x1000000000000) >> 48;
    v23 = ((v14 & 0xFFFEFFFFFFFFFFFFLL | ((((v17 & 0x20000000) >> 29) & 1) << 48) | (v17 << 32)) ^ 0x1000000000000) >> 32;
    v22 = v14;
    sub_7061AC(a4, &__src, &v25, 2uLL);
    *(a4 + 24) = 97;
    return 1;
  }

  return result;
}

uint64_t sub_6F8AC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *(v8 + 32) | ((*(v8 + 36) & 0x1FFFFFFF) << 32);
  v10 = sub_2B51D8(*a1, v9);
  v11 = (v10 - *v10);
  if (*v11 < 0x9Bu)
  {
    return 0;
  }

  v12 = v11[77];
  if (!v12 || (*(v10 + v12 + 3) & 2) == 0 || *(a1 + 681) != 1)
  {
    return 0;
  }

  sub_6D3D8C(*a1, v9, &v40);
  v13 = v40;
  v14 = v41;
  if (v40 != v41)
  {
    v36 = a4;
    v37 = v41;
    while (1)
    {
      v15 = sub_30CC30(*a1, *v13);
      v16 = (v15 - *v15);
      if (*v16 < 0xDu)
      {
        goto LABEL_7;
      }

      v17 = v16[6];
      if (!v17)
      {
        goto LABEL_7;
      }

      v18 = (v15 + v17 + *(v15 + v17));
      v19 = (v18 - *v18);
      if (*v19 >= 5u && (v20 = v19[2]) != 0)
      {
        v21 = *(v18 + v20);
        if (v21 >= 0xF || ((0x7EFFu >> v21) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = dword_229EB2C[v21];
      }

      else
      {
        v22 = 0;
      }

      sub_320200(*a1, *v13, &__p);
      v23 = sub_4D1DC0(a2);
      v24 = __p;
      v25 = v39;
      if (v23 - a3 < (v39 - __p) >> 3)
      {
        break;
      }

      sub_4D0560();
      if (v24 == v25)
      {
LABEL_25:
        *(v36 + 24) = v22;
        if (&__p != v36)
        {
          sub_30945C(v36, __p, v39, (v39 - __p) >> 3);
        }

        v26 = 1;
      }

      else
      {
        v30 = v28;
        v31 = v29 + a3;
        while (1)
        {
          v32 = sub_4D1F50(v30, v31);
          v26 = 0;
          if (*v24 != *(v32 + 32))
          {
            break;
          }

          v33 = *(v32 + 36);
          if (*(v24 + 2) != v33)
          {
            break;
          }

          if ((*(v24 + 6) ^ (v33 >> 29) & 1) != 1)
          {
            v26 = 0;
            v27 = __p;
            if (__p)
            {
              goto LABEL_29;
            }

            goto LABEL_30;
          }

          v24 += 2;
          ++v31;
          if (v24 == v25)
          {
            goto LABEL_25;
          }
        }
      }

      v27 = __p;
      if (__p)
      {
        goto LABEL_29;
      }

LABEL_30:
      v14 = v37;
      if (v26 != 3 && v26)
      {
        result = 1;
        v13 = v40;
        if (v40)
        {
          goto LABEL_40;
        }

        return result;
      }

LABEL_7:
      if (++v13 == v14)
      {
        result = 0;
        v13 = v40;
        if (v40)
        {
          goto LABEL_40;
        }

        return result;
      }
    }

    v26 = 3;
    v27 = __p;
    if (!__p)
    {
      goto LABEL_30;
    }

LABEL_29:
    v39 = v27;
    operator delete(v27);
    goto LABEL_30;
  }

  result = 0;
  if (v40)
  {
LABEL_40:
    v41 = v13;
    v35 = result;
    operator delete(v13);
    return v35;
  }

  return result;
}

void sub_6F8D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a14;
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6F8DCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 762) != 1)
  {
    return 0;
  }

  v7 = sub_4D1F50(a2, a3);
  v8 = sub_4D1F50(a2, a3 + 1);
  v9 = (*v7 - **v7);
  if (*v9 < 0x2Fu)
  {
    return 0;
  }

  v10 = v9[23];
  if (!v10 || *(*v7 + v10) != 8)
  {
    return 0;
  }

  *(a4 + 24) = 0;
  v11 = (((*(v7 + 9) & 0x20000000) << 19) | (*(v7 + 9) << 32) | *(v7 + 8)) ^ 0x1000000000000;
  v13 = *(a4 + 8);
  v12 = *(a4 + 16);
  if (v13 >= v12)
  {
    v16 = *a4;
    v17 = v13 - *a4;
    v18 = v17 >> 3;
    v19 = (v17 >> 3) + 1;
    if (v19 >> 61)
    {
      goto LABEL_34;
    }

    v20 = v12 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (!(v21 >> 61))
      {
        operator new();
      }

      goto LABEL_35;
    }

    v22 = v8;
    *(8 * v18) = v11;
    v14 = (8 * v18 + 8);
    memcpy(0, v16, v17);
    *a4 = 0;
    *(a4 + 8) = v14;
    *(a4 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }

    v8 = v22;
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 1;
  }

  *(a4 + 8) = v14;
  v23 = (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000;
  v24 = *(a4 + 16);
  if (v14 >= v24)
  {
    v26 = *a4;
    v27 = v14 - *a4;
    v28 = v27 >> 3;
    v29 = (v27 >> 3) + 1;
    if (!(v29 >> 61))
    {
      v30 = v24 - v26;
      if (v30 >> 2 > v29)
      {
        v29 = v30 >> 2;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        v31 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (!v31)
      {
        *(8 * v28) = v23;
        v25 = 8 * v28 + 8;
        memcpy(0, v26, v27);
        *a4 = 0;
        *(a4 + 8) = v25;
        *(a4 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }

        goto LABEL_33;
      }

      if (!(v31 >> 61))
      {
        operator new();
      }

LABEL_35:
      sub_1808();
    }

LABEL_34:
    sub_1794();
  }

  *v14 = v23;
  v25 = (v14 + 1);
LABEL_33:
  *(a4 + 8) = v25;
  return 1;
}

unint64_t sub_6F9048@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_7018FC(a1, a2, a3, a4, a1 + 64);
  v11 = *(a1 + 168);
  if (*(a1 + 144) == *(a1 + 152) || v11 == -1)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
    *(a5 + 16) = 0;
    *(a5 + 32) = -1;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *(a5 + 72) = v13;
    *(a5 + 88) = v13;
    *(a5 + 104) = v13;
    *(a5 + 120) = -1;
    *(a5 + 128) = 0;
    *(a5 + 136) = -1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 160) = vnegq_f64(v13);
    *(a5 + 176) = 0;
    *(a5 + 184) = 98;
    *(a5 + 192) = 0;
    *(a5 + 200) = 0;
    *(a5 + 208) = xmmword_229B660;
    *(a5 + 224) = 0;
    *(a5 + 232) = 0;
    *(a5 + 238) = 0;
  }

  else
  {
    v14 = sub_605E3C((a1 + 144), *(a1 + 168));
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = -1;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *(a5 + 72) = v15;
    *(a5 + 88) = v15;
    *(a5 + 104) = v15;
    *(a5 + 120) = -1;
    *(a5 + 128) = 0;
    *(a5 + 136) = -1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 160) = vnegq_f64(v15);
    *(a5 + 176) = 0;
    *(a5 + 184) = 98;
    *(a5 + 192) = 0;
    *(a5 + 200) = 0;
    *(a5 + 208) = xmmword_229B660;
    *(a5 + 232) = 0;
    *(a5 + 224) = 0;
    *(a5 + 238) = 0;
    result = sub_6FF5B0(a1, a2, a3, a5, a1 + 64);
    if ((result & 1) == 0)
    {
      result = sub_701DBC(a1, a2, a3, (a1 + 144), v11, a5);
      if ((result & 1) == 0)
      {
        v16 = *(a1 + 96);
        v17 = *(v14 + 32);
        if (v16 == v17 && WORD2(v16) == WORD2(v17) && ((v16 & 0xFF000000000000) == 0) == BYTE6(v17))
        {
          __src = *(a1 + 96);
          v34 = BYTE6(v16);
          v33 = WORD2(v16);
          v35 = v17;
          v37 = BYTE6(v17);
          v36 = WORD2(v17);
          result = sub_7061AC(a5, &__src, &v38, 2uLL);
          *(a5 + 24) = 35;
        }

        else
        {
          if ((sub_6FCDF4(a1, (a1 + 64), (a1 + 144), v11) & 1) == 0)
          {
            sub_6FDE50(a1, a1 + 64, (a1 + 144), v11);
          }

          v19 = *a5;
          v18 = *(a5 + 8);
          v20 = sub_4D1DC0(a2);
          if (v20 - a3 >= (v18 - v19) >> 3)
          {
            v21 = (v18 - v19) >> 3;
          }

          else
          {
            v21 = v20 - a3;
          }

          v22 = *a5;
          sub_4D0560();
          if (!sub_705E40(v22, v22 + 8 * v21, v24, v23 + a3))
          {
            goto LABEL_24;
          }

          sub_6E4A20(a5, v21);
          v25 = *(a5 + 208);
          v26 = (*(a5 + 8) - *a5) >> 3;
          if (v25 != -1 && *(a5 + 216) != 0x7FFFFFFFFFFFFFFFLL && v25 >= v26 - 1)
          {
            *(a5 + 208) = v26 - 1;
            *(a5 + 216) = 0;
          }

          v27 = sub_4D1F50(a2, a3 + v26 - 1);
          result = sub_6AD28C(a1 + 3680, v27);
          if (result)
          {
LABEL_24:
            sub_7018FC(a1, a2, a3, a4, a1 + 64);
            *(a1 + 176) = 0;
            sub_6FB318(a1, a2, a3, (a1 + 64), a5, 0);
            v29 = *(a5 + 24);
            if ((v29 == 3 || !v29) && sub_6FF28C(a1, a2, a3))
            {
              *(a5 + 24) = 12;
            }

            v30 = sub_716AD8(a1 + 1432, (a1 + 64), (a1 + 144), v11, v28);
            if ((*(a5 + 24) & 0xFFFFFFFE) == 0x14 && v30 == v11 && 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 152) - *(a1 + 144)) >> 3) >= 2)
            {
              v31 = sub_605E3C((a1 + 144), v11 == 0);
              if (sub_6FDAB0(a1, a2, a3 + 1, v31))
              {
                *(a5 + 24) = 0;
              }
            }

            result = sub_6FC40C(a1, a5);
            *(a5 + 232) = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_6F9538(uint64_t a1, char **a2, int ***a3, unint64_t a4)
{
  v8 = sub_605E3C(a3, a4);
  v9 = v8;
  v10 = *a2;
  v11 = &(*a2)[-**a2];
  v12 = *v11;
  if (v12 >= 0x2F)
  {
    v13 = *(v11 + 23);
    if (*(v11 + 23))
    {
      v14 = v10[*(v11 + 23)];
      v15 = v14 > 0x36;
      v16 = (1 << v14) & 0x44000000000008;
      if (!v15 && v16 != 0)
      {
        goto LABEL_38;
      }
    }
  }

  v18 = &(*v8)[-**v8];
  if (*v18 >= 0x2Fu)
  {
    v19 = *(v18 + 23);
    if (v19)
    {
      v20 = (*v8)[v19];
      v15 = v20 > 0x36;
      v21 = (1 << v20) & 0x44000000000008;
      if (!v15 && v21 != 0)
      {
        v23 = 0;
        v24 = 6;
LABEL_56:
        v45 = 0x100000000;
        return v45 | v24 | (v23 << 8);
      }
    }
  }

  if (v12 >= 0x2F)
  {
    v13 = *(v11 + 23);
    if (*(v11 + 23))
    {
LABEL_38:
      v25 = v10[v13];
      if (v25 <= 0x36 && ((1 << v25) & 0x44000000000008) != 0)
      {
        v27 = &(*v8)[-**v8];
        if (*v27 >= 0x2Fu)
        {
          v28 = *(v27 + 23);
          if (v28)
          {
            v29 = (*v8)[v28];
            v15 = v29 > 0x36;
            v30 = (1 << v29) & 0x44000000000008;
            if (!v15 && v30 != 0)
            {
              goto LABEL_43;
            }
          }
        }
      }

      v32 = v10[v13];
      if (v32 <= 0x36 && ((1 << v32) & 0x44000000000008) != 0)
      {
        if ((v34 = &(*v8)[-**v8], *v34 < 0x2Fu) || (v35 = *(v34 + 23)) == 0 || ((v36 = (*v8)[v35], v15 = v36 > 0x36, v37 = (1 << v36) & 0x44000000000008, !v15) ? (v38 = v37 == 0) : (v38 = 1), v38))
        {
          v23 = 0;
          v24 = 7;
          goto LABEL_56;
        }
      }

      if (v10[v13] == 17)
      {
        goto LABEL_42;
      }
    }
  }

  v39 = &(*v8)[-**v8];
  if (*v39 >= 0x2Fu)
  {
    v40 = *(v39 + 23);
    if (v40)
    {
      if ((*v8)[v40] == 17)
      {
LABEL_42:
        v41 = sub_70E748(a1 + 1432, a2);
        if (v41 == sub_70E748(a1 + 1432, v9))
        {
LABEL_43:
          v24 = 0;
          v23 = 0;
          goto LABEL_56;
        }
      }
    }
  }

  v42 = sub_6DD3AC(a1, a2, v9, a3, 0);
  if ((v42 & 0x100000000) != 0 || (v42 = sub_6DD3AC(a1, a2, v9, a3, 1), (v42 & 0x100000000) != 0))
  {
    v23 = v42 >> 8;
    goto LABEL_54;
  }

  v42 = sub_6DD3AC(a1, a2, v9, a3, 2);
  v23 = v42 >> 8;
  if ((v42 & 0x100000000) != 0)
  {
LABEL_54:
    v24 = v42;
    v45 = v42 & 0xFF00000000;
    return v45 | v24 | (v23 << 8);
  }

  v44 = sub_6FC7E8(a1, a2, a3, a4, v43);
  v45 = 0x100000000;
  if (v44)
  {
    v24 = 5;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  if (v44)
  {
    v23 = 0;
  }

  return v45 | v24 | (v23 << 8);
}

uint64_t sub_6F9804(uint64_t a1, int **a2, __int128 **a3)
{
  v5 = (*a2 - **a2);
  if (*v5 >= 0x2Fu)
  {
    v6 = v5[23];
    if (v6)
    {
      v7 = *(*a2 + v6);
      if (v7 == 9 || v7 == 20)
      {
        return 0;
      }
    }
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 == v11)
  {
    goto LABEL_16;
  }

  do
  {
    v13 = *v10;
    v14 = v10[1];
    v25 = *(v10 + 4);
    v23 = v13;
    v24 = v14;
    if (fabs(sub_70E2E0(a1 + 1432, a2, &v23)) > *(a1 + 184))
    {
      return 0;
    }

    v10 = (v10 + 40);
  }

  while (v10 != v11);
  v10 = *a3;
  v11 = a3[1];
LABEL_16:
  while (v10 != v11)
  {
    v15 = *v10;
    v16 = v10[1];
    v25 = *(v10 + 4);
    v23 = v15;
    v24 = v16;
    v17 = sub_3116D0(&v23);
    v18 = (v23 - *v23);
    v19 = *v18;
    if (v19 >= 0x2F)
    {
      if (v18[23])
      {
        v20 = *(v23 + v18[23]);
        if (v20 == 9)
        {
          goto LABEL_15;
        }

        if (v20 == 20 || *(a1 + 709) == 0)
        {
          if (v20 == 20)
          {
            goto LABEL_15;
          }
        }

        else if (v20 == 43)
        {
          goto LABEL_15;
        }
      }
    }

    else if (v19 < 9)
    {
      goto LABEL_13;
    }

    v22 = v18[4];
    if (v22)
    {
      if (*(v23 + v22) > *(a1 + 720))
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (*(a1 + 720) < 0)
    {
      return 0;
    }

LABEL_14:
    if ((sub_701C5C(a1, v17) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v10 = (v10 + 40);
  }

  return 1;
}

BOOL sub_6F99A0(uint64_t a1, uint64_t a2, int **a3, int ***a4, unint64_t a5, unint64_t a6, char a7)
{
  if (a5 > 1)
  {
    return 0;
  }

  v7 = 0;
  if (sub_6FC964(a1, a2, a3, a4, a5, a6) && (a7 & 1) == 0)
  {
    v137 = a6;
    v16 = sub_605E3C(a4, a5);
    v17 = sub_605E3C(a4, 1 - a5);
    v166 = sub_335660(*a1, a3, 0);
    v167 = v18;
    v164 = sub_335660(*a1, a3, 1);
    v165 = v19;
    v139 = v16;
    v20 = sub_335660(*a1, v16, 0);
    v138 = v17;
    v21 = sub_335660(*a1, v17, 0);
    v22 = v164 - v166;
    v23 = HIDWORD(v164) - HIDWORD(v166);
    v24 = v22 * v22 + v23 * v23;
    if (v24 == 0.0)
    {
      goto LABEL_10;
    }

    v25 = -v24;
    if (v24 > 0.0)
    {
      v25 = v22 * v22 + v23 * v23;
    }

    if (v25 < 2.22044605e-16)
    {
LABEL_10:
      v26 = v139;
      v27 = 0.0;
    }

    else
    {
      v27 = ((v20 - v166) * v22 + (HIDWORD(v20) - HIDWORD(v166)) * v23) / v24;
      v26 = v139;
    }

    v28 = sub_6EFC0(&v166, &v164, v27);
    v29 = ((v28 - v20) * (v28 - v20) + (HIDWORD(v28) - HIDWORD(v20)) * (HIDWORD(v28) - HIDWORD(v20)));
    v30 = sqrt(v29);
    LODWORD(v29) = v166;
    v31 = *&v29;
    LODWORD(v29) = HIDWORD(v166);
    v32 = *&v29;
    LODWORD(v34) = HIDWORD(v164);
    LODWORD(v33) = v164;
    v35 = v33 - v31;
    v36 = v34 - v32;
    v37 = v35 * v35 + v36 * v36;
    if (v37 == 0.0)
    {
      goto LABEL_15;
    }

    v38 = -v37;
    if (v37 > 0.0)
    {
      v38 = v35 * v35 + v36 * v36;
    }

    if (v38 < 2.22044605e-16)
    {
LABEL_15:
      v39 = 0.0;
    }

    else
    {
      v39 = ((v21 - v31) * v35 + (HIDWORD(v21) - v32) * v36) / v37;
    }

    v40 = v30 / 100.0;
    v41 = sub_6EFC0(&v166, &v164, v39);
    *&v42 = sqrt(((v41 - v21) * (v41 - v21) + (HIDWORD(v41) - HIDWORD(v21)) * (HIDWORD(v41) - HIDWORD(v21))));
    v43 = *&v42 / 100.0;
    LODWORD(v42) = *(a1 + 360);
    v44 = v42;
    LODWORD(v42) = *(a1 + 356);
    v45 = v42;
    v46 = sub_31DDCC(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL);
    if (v46 <= 0xFFFFFFFEFFFFFFFFLL && v46)
    {
      v7 = 0;
      v47 = sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v26[4] & 0xFFFFFFFFFFFFFFLL) ^ 1;
      if (v43 <= v44)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      v49 = v43 <= v44 || v40 >= v45;
      if (v40 >= v43)
      {
        v48 = 1;
      }

      if (v48 != 1 || !v49)
      {
        return v7;
      }
    }

    else
    {
      v50 = v40 >= v45 || v43 <= v44;
      if (!v50)
      {
        return 0;
      }
    }

    v51 = v26[4];
    v52 = v51 & 0xFF000000000000;
    v53 = sub_2B51D8(*a1, v51 & 0xFFFFFFFFFFFFLL);
    v54 = (v53 - *v53);
    v55 = *v54;
    if (v52)
    {
      v56 = v138;
      if (v55 < 0x29 || (v57 = v54[20]) == 0)
      {
LABEL_43:
        v58 = sub_6DDF50(*a1, v26[4] & 0xFFFFFFFFFFFFLL | (((v26[4] & 0xFF000000000000) == 0) << 48));
LABEL_44:
        v59 = v56[4];
        v60 = v59 & 0xFF000000000000;
        v61 = sub_2B51D8(*a1, v59 & 0xFFFFFFFFFFFFLL);
        v62 = (v61 - *v61);
        v63 = *v62;
        if (v60)
        {
          if (v63 < 0x29 || (v64 = v62[20]) == 0)
          {
LABEL_51:
            v65 = sub_6DDF50(*a1, v56[4] & 0xFFFFFFFFFFFFLL | (((v56[4] & 0xFF000000000000) == 0) << 48));
LABEL_52:
            if (v58)
            {
              v66 = v65 == 0;
            }

            else
            {
              v66 = 1;
            }

            v67 = !v66;
            v135 = v67;
            v134 = v66 && sub_312B7C(a3, v26[4] & 0xFFFFFFFFFFFFFFLL) && sub_312B7C(a3, v56[4] & 0xFFFFFFFFFFFFFFLL) != 0;
            v136 = v58;
            if (v65 < v58)
            {
              v58 = v65;
            }

            v133 = sub_70E748(a1 + 1432, v56);
            v68 = sub_70E748(a1 + 1432, v139);
            v69 = *v139;
            v70 = &(*v139)[-**v139];
            v71 = *v70;
            if (*(v139 + 38))
            {
              if (v71 >= 0x9B)
              {
                v72 = *(v70 + 77);
                if (*(v70 + 77))
                {
                  v73 = 2;
LABEL_72:
                  v74 = (*&v69[v72] & v73) != 0;
                  goto LABEL_75;
                }

LABEL_74:
                v74 = 0;
LABEL_75:
                v75 = *v56;
                v76 = &(*v56)[-**v56];
                v77 = *v76;
                if (*(v56 + 38))
                {
                  if (v77 >= 0x9B)
                  {
                    v78 = *(v76 + 77);
                    if (*(v76 + 77))
                    {
                      v79 = 2;
LABEL_82:
                      v74 ^= (*&v75[v78] & v79) != 0;
                    }
                  }
                }

                else if (v77 >= 0x9B)
                {
                  v78 = *(v76 + 77);
                  if (*(v76 + 77))
                  {
                    v79 = 1;
                    goto LABEL_82;
                  }
                }

                if (v74)
                {
                  return 0;
                }

                if (v71 >= 0x9B && (v80 = *(v70 + 77)) != 0)
                {
                  v81 = (v69[v80 + 1] >> 4) & 1;
                  if (v77 < 0x9B)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  v81 = 0;
                  if (v77 < 0x9B)
                  {
                    goto LABEL_92;
                  }
                }

                if (*(v76 + 77))
                {
                  if (v81 == (v75[*(v76 + 77) + 1] & 0x10) >> 4)
                  {
                    goto LABEL_93;
                  }

                  return 0;
                }

LABEL_92:
                if ((v81 & 1) == 0)
                {
LABEL_93:
                  v132 = v68;
                  memset(v141, 0, sizeof(v141));
                  v142 = 0;
                  v143 = -1;
                  v144 = 0;
                  v145 = 0;
                  v146 = 0;
                  v147 = 0;
                  v82.f64[0] = NAN;
                  v82.f64[1] = NAN;
                  v148 = v82;
                  v149 = v82;
                  v150 = v82;
                  v151 = -1;
                  v152 = 0;
                  v153 = -1;
                  v154 = 0;
                  v155 = 0;
                  v156 = vnegq_f64(v82);
                  v157 = 0;
                  v158 = 98;
                  v159 = 0;
                  v160 = 0;
                  v161 = xmmword_229B660;
                  v162 = 0;
                  v163[0] = 0;
                  *(v163 + 6) = 0;
                  if (sub_6FCDF4(a1, a3, a4, 1 - a5))
                  {
                    goto LABEL_94;
                  }

                  v83 = v136 - v65;
                  v84 = &(*v139)[-**v139];
                  if (*v84 >= 0x2Fu)
                  {
                    v85 = *(v84 + 23);
                    if (v85)
                    {
                      v86 = (*v139)[v85];
                      if (v86 <= 0x2A && ((1 << v86) & 0x50426810004) != 0)
                      {
                        v87 = &(*v56)[-**v56];
                        if (*v87 >= 0x2Fu)
                        {
                          v88 = *(v87 + 23);
                          if (v88)
                          {
                            v89 = (*v56)[v88];
                            if (v89 <= 0x2A && ((1 << v89) & 0x50426810004) != 0)
                            {
                              v7 = v83 < *(a1 + 428);
                              goto LABEL_95;
                            }
                          }
                        }
                      }
                    }
                  }

                  v90 = *v56;
                  v91 = &(*v56)[-**v56];
                  v92 = *v91;
                  if (v92 < 0x2F)
                  {
                    goto LABEL_114;
                  }

                  v93 = *(v91 + 23);
                  if (*(v91 + 23) && v90[v93] == 28)
                  {
                    goto LABEL_94;
                  }

                  if (v92 < 0x9B || (v94 = *(v91 + 77)) == 0 || (v90[v94] & 4) == 0 || (v95 = 0, v93) && (v96 = v90[v93], v96 <= 0x2A) && ((1 << v96) & 0x50426810004) != 0)
                  {
LABEL_114:
                    v95 = (sub_6AE0E8(a1 + 3680, v56) & 1) != 0 || sub_716F58((a1 + 1432), v56);
                  }

                  if (sub_312F00(a3) && (sub_312F00(v139) & v95 & 1) != 0 || sub_70E748(a1 + 1432, v139) < *(a1 + 368) && sub_70E748(a1 + 1432, v56) > *(a1 + 368))
                  {
                    goto LABEL_94;
                  }

                  v98 = &(*v56)[-**v56];
                  if (*v98 >= 0x2Fu)
                  {
                    v99 = *(v98 + 23);
                    if (v99)
                    {
                      v100 = (*v56)[v99];
                      if (v100 <= 0x2D && ((1 << v100) & 0x208040000000) != 0)
                      {
                        v101 = &(*v139)[-**v139];
                        if (*v101 < 0x2Fu)
                        {
                          goto LABEL_94;
                        }

                        v102 = *(v101 + 23);
                        if (!v102)
                        {
                          goto LABEL_94;
                        }

                        v7 = 0;
                        v103 = (*v139)[v102];
                        if (v103 > 0x2D || ((1 << v103) & 0x208040000000) == 0)
                        {
                          goto LABEL_95;
                        }
                      }
                    }
                  }

                  v104 = sub_6DEB50(a1, a2, a3, v138, v139, v97);
                  v105 = sub_70E484(a1 + 1432, a2, a3, v139, 0, v104);
                  v106 = sub_70E484(a1 + 1432, a2, a3, v138, 0, v105);
                  if (v104 >= sub_6FD97C(a1, a2, a3, v138, v139))
                  {
                    goto LABEL_94;
                  }

                  if (((v137 == a5) & sub_313CC4(a3)) == 1)
                  {
                    if (sub_394BD0() && (sub_394BD0() & 1) == 0)
                    {
                      goto LABEL_94;
                    }

                    if (sub_394BD0() && !sub_394BD0())
                    {
                      goto LABEL_187;
                    }
                  }

                  if (sub_312DF0(v139) && sub_312E54(v139) && sub_311BB0(v139) >= 2)
                  {
                    v107 = (*a3 - **a3);
                    if (*v107 >= 0x9Bu && (v108 = v107[77]) != 0)
                    {
                      if (v106 >= 0.0 == *(*a3 + v108 + 1) >> 7)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v106 < 0.0)
                    {
                      goto LABEL_94;
                    }
                  }

                  v109 = fabs(v105);
                  v110 = *(a1 + 184);
                  if (v109 <= v110 == fabs(v106) > v110)
                  {
                    goto LABEL_94;
                  }

                  v111 = *v139;
                  v112 = &(*v139)[-**v139];
                  v113 = *v112;
                  if (v113 >= 0x2F && (v114 = *(v112 + 23), *(v112 + 23)) && v111[*(v112 + 23)] == 44)
                  {
                    v140 = 0;
                  }

                  else
                  {
                    v115 = (*v138 - **v138);
                    if (*v115 < 0x2Fu)
                    {
                      goto LABEL_165;
                    }

                    v116 = v115[23];
                    if (!v116 || *(*v138 + v116) != 44)
                    {
                      goto LABEL_165;
                    }

                    v140 = 0;
                    if (v113 < 0x2F)
                    {
                      goto LABEL_157;
                    }

                    v114 = *(v112 + 23);
                    if (!*(v112 + 23))
                    {
                      goto LABEL_157;
                    }
                  }

                  if (v111[v114] == 44)
                  {
                    v117 = (*v138 - **v138);
                    if (*v117 >= 0x2Fu)
                    {
                      v118 = v117[23];
                      if (v118)
                      {
                        if (*(*v138 + v118) == 44)
                        {
LABEL_159:
                          v119 = sub_31DDCC(*a1, v139[4] & 0xFFFFFFFFFFFFFFLL);
                          if (v119 <= 0xFFFFFFFEFFFFFFFFLL)
                          {
                            if (v119)
                            {
                              v120 = sub_31DDCC(*a1, v138[4] & 0xFFFFFFFFFFFFFFLL);
                              if (v120 <= 0xFFFFFFFEFFFFFFFFLL && v120 && (sub_31EE90(*a1, v139[4] & 0xFFFFFFFFFFFFFFLL, v138[4] & 0xFFFFFFFFFFFFFFLL) & 1) != 0)
                              {
                                goto LABEL_94;
                              }
                            }
                          }

                          v110 = vabdd_f64(v106, v105);
                          if (v110 < *(a1 + 432))
                          {
                            goto LABEL_94;
                          }

LABEL_165:
                          v121 = v135;
                          if (v83 >= 0)
                          {
                            v121 = 0;
                          }

                          if (v121)
                          {
                            goto LABEL_187;
                          }

                          v122 = *(a1 + 364);
                          if (v58 > v122 || v136 == v65 && v58 == v122)
                          {
                            goto LABEL_187;
                          }

                          if (v83 < 0 || (LOWORD(v110) = *(a1 + 424), v104 < vmovl_s16(*&v110).i32[0]))
                          {
                            v123 = *(a1 + 372);
                            v124 = *(a1 + 380);
                            v125 = (*v138 - **v138);
                            if (*v125 >= 0x2Fu)
                            {
                              v126 = v125[23];
                              if (v126)
                              {
                                v127 = *(*v138 + v126);
                                if (v127 <= 0x2A && ((1 << v127) & 0x50426810004) != 0)
                                {
                                  v128 = (*a3 - **a3);
                                  if (*v128 >= 0x9Bu && (v129 = v128[77]) != 0)
                                  {
                                    if (v106 >= 0.0 == *(*a3 + v129 + 1) >> 7)
                                    {
                                      goto LABEL_184;
                                    }
                                  }

                                  else if (v106 < 0.0)
                                  {
                                    goto LABEL_184;
                                  }

                                  if (v109 < *(a1 + 184))
                                  {
                                    v123 = *(a1 + 376);
                                    v124 = *(a1 + 384);
                                  }
                                }
                              }
                            }

LABEL_184:
                            v50 = v83 <= v123;
                            v130 = v135;
                            if (!v50)
                            {
                              v130 = 0;
                            }

                            if ((v130 & 1) == 0)
                            {
                              if (sub_6DED40(a1, v139, v138) || v134 && sub_6DEDA0(a1, a3, v139, v138))
                              {
                                goto LABEL_94;
                              }

                              v131 = v135;
                              if (v133 - v132 > v124)
                              {
                                v131 = 1;
                              }

                              if (v131 == 1 && ((v135 & 1) != 0 || sub_70E748(a1 + 1432, v139) < *(a1 + 368) || sub_70E748(a1 + 1432, v138) < *(a1 + 368) || v133 - v132 > *(a1 + 388)))
                              {
                                goto LABEL_94;
                              }
                            }

LABEL_187:
                            v7 = 1;
                            goto LABEL_95;
                          }

LABEL_94:
                          v7 = 0;
LABEL_95:
                          sub_5ECFBC(v141);
                          return v7;
                        }
                      }
                    }
                  }

LABEL_157:
                  if ((sub_6DECF4(&v140, v139) & 1) == 0 && !sub_6DECF4(&v140, v138))
                  {
                    goto LABEL_165;
                  }

                  goto LABEL_159;
                }

                return 0;
              }
            }

            else if (v71 >= 0x9B)
            {
              v72 = *(v70 + 77);
              if (*(v70 + 77))
              {
                v73 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v74 = 0;
            goto LABEL_75;
          }
        }

        else
        {
          if (v63 < 0x27)
          {
            goto LABEL_51;
          }

          v64 = v62[19];
          if (!v64)
          {
            goto LABEL_51;
          }
        }

        v65 = *(v61 + v64 + *(v61 + v64));
        if (v65)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v56 = v138;
      if (v55 < 0x27)
      {
        goto LABEL_43;
      }

      v57 = v54[19];
      if (!v57)
      {
        goto LABEL_43;
      }
    }

    v58 = *(v53 + v57 + *(v53 + v57));
    if (v58)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return v7;
}

void sub_6FA66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6FA70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

BOOL sub_6FA720(uint64_t a1, int **a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_605E3C(a3, a4);
  v8 = *a3;
  v9 = *(a3 + 8);
  if (*a3 == v9)
  {
    v11 = 0;
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (v14 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if ((sub_716E70(a1 + 1432, v8) & 1) != 0 || *(a1 + 440) == 1 && sub_716EE4(a1 + 1432, v8))
      {
        ++v10;
      }

      v8 += 5;
    }

    while (v8 != v9);
    v11 = v10 > 2;
    v12 = *a2;
    v13 = (*a2 - **a2);
    v14 = *v13;
    if (v14 < 0x2F)
    {
      goto LABEL_19;
    }
  }

  v15 = v13[23];
  if (v13[23])
  {
    v16 = *(v12 + v13[23]);
    v17 = v16 > 0x2A;
    v18 = (1 << v16) & 0x50426810004;
    if (!v17 && v18 != 0)
    {
      if (v11)
      {
        return 1;
      }

      goto LABEL_28;
    }
  }

LABEL_19:
  v20 = &(*v7)[-**v7];
  if (*v20 >= 0x2Fu)
  {
    v21 = *(v20 + 23);
    if (v21)
    {
      v22 = (*v7)[v21];
      v17 = v22 > 0x2A;
      v23 = (1 << v22) & 0x50426810004;
      v24 = v17 || v23 == 0;
      if (!v24 && v11)
      {
        return 1;
      }
    }
  }

  if (v14 >= 0x2F)
  {
    v15 = v13[23];
    if (v13[23])
    {
LABEL_28:
      v25 = *(v12 + v15) - 2;
      if (v25 < 0x29 && ((0x14109A04001uLL >> v25) & 1) != 0)
      {
        return 0;
      }
    }
  }

  v55 = sub_3116D0(a2);
  if (sub_3A8760((a1 + 7520), &v55))
  {
    return 1;
  }

  v27 = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, v7[4] & 0xFFFFFFFFFFFFFFLL);
  memset(__p, 0, sizeof(__p));
  if ((v27 & 1) == 0)
  {
    if (*(a1 + 1170) == 1)
    {
      v28 = (*a2 - **a2);
      if (*v28 >= 0x2Fu)
      {
        v29 = v28[23];
        if (v29)
        {
          if (!*(*a2 + v29))
          {
            v30 = &(*v7)[-**v7];
            if (*v30 >= 0x2Fu)
            {
              v31 = *(v30 + 23);
              if (v31)
              {
                if (!(*v7)[v31])
                {
                  v53 = sub_31DDCC(*a1, v7[4] & 0xFFFFFFFFFFFFFFLL);
                  if (v53 <= 0xFFFFFFFEFFFFFFFFLL && v53 && *(a3 + 8) != sub_708F08(*a3, *(a3 + 8), v7))
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    v32 = sub_70E748(a1 + 1432, a2);
    v33 = v32 - sub_70E748(a1 + 1432, v7);
    if (v33 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = -v33;
    }

    v35 = *(a1 + 1168);
    v36 = a2[4];
    v37 = sub_2B51D8(*a1, v36 & 0xFFFFFFFFFFFFLL);
    v38 = (v37 - *v37);
    v39 = *v38;
    if ((v36 & 0xFF000000000000) != 0)
    {
      if (v39 < 0x29 || (v40 = v38[20]) == 0)
      {
LABEL_54:
        v41 = 0;
LABEL_55:
        v42 = v7[4];
        v43 = sub_2B51D8(*a1, v42 & 0xFFFFFFFFFFFFLL);
        v44 = (v43 - *v43);
        v45 = *v44;
        if ((v42 & 0xFF000000000000) != 0)
        {
          if (v45 >= 0x29)
          {
            v46 = v44[20];
            if (v46)
            {
LABEL_58:
              v47 = 0;
              v46 = *(v43 + v46 + *(v43 + v46));
              if (v41 >= 1 && v46 >= 1)
              {
                v48 = v41 - v46;
                if (v48 < 0)
                {
                  v48 = -v48;
                }

                v47 = v48 >= *(a1 + 1169);
                v46 = 1;
                if (v34 < v35)
                {
LABEL_74:
                  sub_7444BC(a1 + 7480, a2, __p);
                }

                goto LABEL_70;
              }

              goto LABEL_69;
            }

LABEL_66:
            v47 = 0;
            if (v34 < v35)
            {
              goto LABEL_74;
            }

LABEL_70:
            if (!v41)
            {
              v47 = 1;
            }

            if (!v47 && v46)
            {
              goto LABEL_74;
            }

            v52 = sub_31DDCC(*a1, v7[4] & 0xFFFFFFFFFFFFFFLL);
            if (v52 > 0xFFFFFFFEFFFFFFFFLL || !v52)
            {
              goto LABEL_74;
            }

            return 1;
          }
        }

        else if (v45 >= 0x27)
        {
          v46 = v44[19];
          if (v46)
          {
            goto LABEL_58;
          }

          goto LABEL_66;
        }

        v46 = 0;
        v47 = 0;
LABEL_69:
        if (v34 < v35)
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }
    }

    else
    {
      if (v39 < 0x27)
      {
        goto LABEL_54;
      }

      v40 = v38[19];
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    v41 = *(v37 + v40 + *(v37 + v40));
    goto LABEL_55;
  }

  if (sub_6FB820(a1, a2) & 1) != 0 || (sub_6FB820(a1, v7))
  {
    return 0;
  }

  v49 = sub_6DF4EC(a1, a2, v7, v27);
  if (v49)
  {
    return 1;
  }

  if (*(a1 + 871) == 1)
  {
    v50 = sub_6A40B4(*(a1 + 24), a2, 0);
    if (v50 != sub_6A40B4(*(a1 + 24), v7, 0))
    {
      return 1;
    }
  }

  v51 = sub_70E2E0(a1 + 1432, a2, v7);
  if (*(a1 + 1075) == 1 && v51 > *(a1 + 184) && sub_313270(a2))
  {
    return 1;
  }

  if (*(a1 + 1074) != 1 || sub_313CC4(a2))
  {
    return 0;
  }

  return sub_313D40(v7);
}

void sub_6FAC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FACB0(uint64_t a1, int **a2, int **a3, int ***a4, char a5, double a6)
{
  if (a5)
  {
    return 0;
  }

  v34[12] = v6;
  v34[13] = v7;
  v33 = fabs(sub_70E16C(a1 + 1432, a2, a3, a6));
  if (v33 < *(a1 + 1144))
  {
    return 0;
  }

  v13 = *a2;
  v14 = (*a2 - **a2);
  v15 = *v14;
  if (v15 < 0x2F || !v14[23])
  {
    goto LABEL_19;
  }

  v16 = *(v13 + v14[23]);
  if (v16 <= 0x2A)
  {
    if (v16 != 6 && v16 != 12)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v16 == 44)
  {
    return 0;
  }

  if (v16 == 43)
  {
LABEL_16:
    if (v15 < 0x9B)
    {
      return 0;
    }

    v18 = v14[77];
    if (!v18 || (*(v13 + v18 + 2) & 0x20) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v19 = *a3;
  v20 = (*a3 - **a3);
  v21 = *v20;
  if (v21 < 0x2F || !v20[23])
  {
    goto LABEL_32;
  }

  v22 = *(v19 + v20[23]);
  if (v22 > 0x2A)
  {
    if (v22 == 44)
    {
      return 0;
    }

    if (v22 != 43)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v22 == 6 || v22 == 12)
  {
LABEL_29:
    if (v21 >= 0x9B)
    {
      v24 = v20[77];
      if (v24)
      {
        if ((*(v19 + v24 + 2) & 0x20) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    return 0;
  }

LABEL_32:
  v32 = sub_311A24(v13, *(a2 + 38));
  v25 = (*a2 - **a2);
  if (*v25 < 0x43u)
  {
    v28 = 0;
    v27 = a4;
  }

  else
  {
    v26 = v25[33];
    v27 = a4;
    if (v26)
    {
      v28 = *(*a2 + v26);
    }

    else
    {
      v28 = 0;
    }
  }

  v31 = v28;
  v29 = *v27;
  v30 = v27[1];
  v34[0] = &v32;
  v34[1] = a1;
  v34[2] = &v31;
  v34[3] = a3;
  v34[4] = a2;
  v34[5] = &v33;
  if (v29 == v30)
  {
    return 0;
  }

  do
  {
    result = sub_70CA8C(v34, v29);
    if (result)
    {
      break;
    }

    v29 += 5;
  }

  while (v29 != v30);
  return result;
}

uint64_t sub_6FAE84(uint64_t a1, char **a2, void *a3, unint64_t a4, unint64_t a5)
{
  if (a5 != -1)
  {
    if ((v9 = sub_605E3C(a3, a5), v10 = sub_605E3C(a3, a4), v11 = &(*a2)[-**a2], *v11 < 0x2Fu) || (v12 = *(v11 + 23)) == 0 || ((v13 = (*a2)[v12], v14 = v13 > 0x2A, v15 = (1 << v13) & 0x50426810004, !v14) ? (v16 = v15 == 0) : (v16 = 1), v16 || (v17 = &(*v9)[-**v9], *v17 < 0x2Fu) || (v18 = *(v17 + 23)) == 0 || (v19 = (*v9)[v18] - 2, v19 >= 0x29) || ((0x14109A04001uLL >> v19) & 1) == 0))
    {
      sub_6D3D8C(*a1, *(v10 + 8) | (*(v10 + 18) << 32), &__p);
      v21 = __p;
      v22 = v38;
      v36[0] = a1;
      v36[1] = a2;
      v36[2] = v10;
      if (__p != v38)
      {
        while (!sub_705818(v36, v21))
        {
          if (++v21 == v22)
          {
            v21 = v22;
            break;
          }
        }

        v22 = v38;
      }

      if (v21 != v22)
      {
LABEL_19:
        v20 = 1;
        v23 = __p;
        if (!__p)
        {
          return v20;
        }

LABEL_20:
        v38 = v23;
        operator delete(v23);
        return v20;
      }

      v25 = &(*a2)[-**a2];
      if (*v25 >= 0x2Fu)
      {
        v26 = *(v25 + 23);
        if (v26)
        {
          if (!(*a2)[v26])
          {
            v27 = &(*v10)[-**v10];
            if (*v27 >= 0x2Fu)
            {
              v28 = *(v27 + 23);
              if (v28)
              {
                v29 = (*v10)[v28];
                v14 = v29 > 0x2A;
                v30 = (1 << v29) & 0x50426810004;
                if (!v14 && v30 != 0)
                {
                  v32 = &(*v9)[-**v9];
                  if (*v32 < 0x2Fu)
                  {
                    goto LABEL_36;
                  }

                  v33 = *(v32 + 23);
                  if (!v33)
                  {
                    goto LABEL_36;
                  }

                  v34 = (*v9)[v33];
                  if (v34 - 2) < 0x29 && ((0x14109A04001uLL >> (v34 - 2)))
                  {
                    goto LABEL_39;
                  }

                  if ((*v9)[v33])
                  {
LABEL_36:
                    v35 = sub_70E748(a1 + 1432, v10);
                    if (v35 < sub_70E748(a1 + 1432, v9))
                    {
                      goto LABEL_39;
                    }
                  }

                  if (sub_70E748(a1 + 1432, v10) >= *(a1 + 456) || sub_70E748(a1 + 1432, a2) <= *(a1 + 456))
                  {
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }

LABEL_39:
      v20 = 0;
      v23 = __p;
      if (!__p)
      {
        return v20;
      }

      goto LABEL_20;
    }
  }

  return 0;
}

void sub_6FB110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FB130(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 3) >= 0xFFFFFFFE)
  {
    memset(v5, 0, sizeof(v5));
    sub_7444BC(a1 + 7480, a3, v5);
  }

  return 0;
}

void sub_6FB2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **sub_6FB318(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5, int a6)
{
  v6 = a5;
  *(a5 + 24) = 0;
  *(a5 + 8) = *a5;
  *(a5 + 48) = *(a5 + 40);
  *(a5 + 64) = 0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(a5 + 72) = v9;
  *(a5 + 88) = v9;
  *(a5 + 104) = v9;
  *(a5 + 120) = -1;
  *(a5 + 128) = 0;
  *(a5 + 136) = -1;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
  *(a5 + 160) = vnegq_f64(v9);
  *(a5 + 176) = 0;
  *(a5 + 184) = 98;
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 208) = xmmword_229B660;
  *(a5 + 232) = 0;
  *(a5 + 245) = 0;
  *(a5 + 224) = 0;
  v53 = a4[13];
  v10 = sub_605E3C(a4 + 10, v53);
  v11 = sub_4D1DC0(a2);
  if (a3 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = a3;
  }

  v58 = a2;
  v59 = v6;
  v52 = a3;
  if (v11 > a3)
  {
    v57 = v12;
    while (1)
    {
      while (1)
      {
        v13 = sub_4D1F50(a2, a3);
        v14 = *(v13 + 32);
        v15 = *(v13 + 36);
        v16 = (v14 | ((((v15 & 0x20000000) >> 29) & 1) << 48) | (v15 << 32)) ^ 0x1000000000000;
        v18 = *(v6 + 8);
        v17 = *(v6 + 16);
        if (v18 < v17)
        {
          break;
        }

        v20 = *v6;
        v21 = v18 - *v6;
        v22 = (v21 >> 3) + 1;
        if (v22 >> 61)
        {
          sub_1794();
        }

        v23 = v10;
        v24 = v17 - v20;
        if (v24 >> 2 > v22)
        {
          v22 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v22;
        }

        if (v25)
        {
          if (!(v25 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v6 = v59;
        v26 = (8 * (v21 >> 3));
        v27 = (*(v13 + 32) | ((((v15 & 0x20000000) >> 29) & 1) << 48) | (*(v13 + 36) << 32)) ^ 0x1000000000000;
        *v26 = v16;
        v28 = v26 + 1;
        memcpy(0, v20, v21);
        *v59 = 0;
        *(v59 + 8) = v28;
        *(v59 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }

        v10 = v23;
        v12 = v57;
        a2 = v58;
        v16 = v27;
        *(v59 + 8) = v28;
        v19 = *(v10 + 32);
        if (v14 == v19)
        {
          goto LABEL_22;
        }

LABEL_6:
        if (++a3 == v12)
        {
          goto LABEL_32;
        }
      }

      *v18 = v16;
      *(v6 + 8) = v18 + 1;
      v19 = *(v10 + 32);
      if (v14 != v19)
      {
        goto LABEL_6;
      }

LABEL_22:
      v29 = BYTE6(v19) == HIWORD(v16) && WORD2(v19) == v15;
      ++a3;
      if (v29 || a3 == v12)
      {
        goto LABEL_32;
      }
    }
  }

  v19 = *(v10 + 32);
LABEL_32:
  v31 = sub_31EE90(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL, v19 & 0xFFFFFFFFFFFFFFLL);
  if (v31)
  {
    v32 = a6;
    v33 = v53;
    if (sub_6FB820(a1, a4))
    {
      LOBYTE(v31) = 1;
    }

    else
    {
      LOBYTE(v31) = sub_6FB820(a1, v10);
    }
  }

  else
  {
    v32 = a6;
    v33 = v53;
  }

  *(v59 + 244) = v31;
  result = sub_6F532C(a1, v58, a4, a4 + 10, v33, 1, 1, v32);
  *(v59 + 24) = result;
  if (result)
  {
    result = sub_6FBA68(a1, v58, v52, v10, v59);
    if (result)
    {
      *(v59 + 24) = 0;
      goto LABEL_40;
    }

    if (*(a1 + 1074) == 1 && *(v59 + 24) == 3)
    {
      v36 = *a4;
      v37 = (*a4 - **a4);
      v38 = *v37;
      if (v38 < 0x2F || !v37[23])
      {
        goto LABEL_66;
      }

      v39 = v36[v37[23]];
      if (v39 > 0x2A)
      {
        if (v39 == 44)
        {
          goto LABEL_40;
        }

        if (v39 != 43)
        {
          goto LABEL_66;
        }
      }

      else if (v39 != 6 && v39 != 12)
      {
        goto LABEL_66;
      }

      if (v38 < 0x9B)
      {
        goto LABEL_40;
      }

      v41 = v37[77];
      if (!v41 || (v36[v41 + 2] & 0x20) == 0)
      {
        goto LABEL_40;
      }

LABEL_66:
      result = sub_605E3C(a4 + 10, v33);
      v42 = *result;
      v43 = (*result - **result);
      v44 = *v43;
      if (*(result + 38))
      {
        if (v44 < 0x47)
        {
          goto LABEL_40;
        }

        v45 = v43[35];
        if (!v43[35])
        {
          goto LABEL_40;
        }

        v46 = 2;
      }

      else
      {
        if (v44 < 0x47)
        {
          goto LABEL_40;
        }

        v45 = v43[35];
        if (!v43[35])
        {
          goto LABEL_40;
        }

        v46 = 1;
      }

      v47 = *&v42[v45];
      if ((v47 & v46) == 0 || !v43[23])
      {
        goto LABEL_40;
      }

      v48 = v42[v43[23]];
      if (v48 > 0x2A)
      {
        if (v48 == 44)
        {
          goto LABEL_86;
        }

        if (v48 != 43)
        {
          goto LABEL_40;
        }
      }

      else if (v48 != 6 && v48 != 12)
      {
        goto LABEL_40;
      }

      if (v44 >= 0x9B)
      {
        v50 = v43[77];
        if (v50)
        {
          if ((v42[v50 + 2] & 0x20) != 0)
          {
            goto LABEL_40;
          }
        }
      }

LABEL_86:
      if (*(result + 38))
      {
        if ((v47 & 0x141510) != 0)
        {
          goto LABEL_92;
        }

        v51 = 64;
      }

      else
      {
        if ((v47 & 0xA0A88) != 0)
        {
          goto LABEL_92;
        }

        v51 = 32;
      }

      if ((v51 & v47) == 0)
      {
        goto LABEL_40;
      }

LABEL_92:
      *(v59 + 245) = 1;
    }
  }

LABEL_40:
  if (*(a1 + 763) == 1)
  {
    result = sub_31C0F0(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      result = sub_31C0F0(*a1, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL);
      if (result)
      {
        if (*(v59 + 24))
        {
          *(v59 + 227) = 1;
          *(v59 + 24) = 0;
        }
      }
    }
  }

  if (v32)
  {
    v35 = *(v59 + 24);
    if (v35 <= 0x15 && ((1 << v35) & 0x300001) != 0)
    {
      v35 = 3;
    }

    *(v59 + 24) = v35;
  }

  return result;
}

uint64_t sub_6FB820(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072) != 1)
  {
    return 0;
  }

  sub_5E94A4(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, 1, &__p);
  if (__p == v12)
  {
    v20 = 0u;
    *v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v16 = 0u;
    *v17 = 0u;
    v14 = 0u;
    *v15 = 0u;
    *v13 = 0u;
    *(&v16 + 1) = sub_12331FC();
    v20 = 0uLL;
    v19[3] = 0;
    *v17 = 0u;
    *v18 = 0u;
    memset(v19, 0, 19);
    v3 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = __p;
    while (*v2)
    {
      v2 += 144;
      if (v2 == v12)
      {
        v2 = __p;
        break;
      }
    }

    sub_704AE0(v13, v2);
    v3 = __p;
    if (!__p)
    {
LABEL_8:
      v4 = LOBYTE(v19[2]);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  v7 = v12;
  v8 = v3;
  if (v12 != v3)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v3);
    v8 = __p;
  }

  v12 = v3;
  operator delete(v8);
  v4 = LOBYTE(v19[2]);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v19[1]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    operator delete(v18[1]);
    v5 = v17[0];
    if (!v17[0])
    {
LABEL_11:
      if (SBYTE7(v16) < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  operator delete(v19[3]);
  if (SHIBYTE(v19[1]) < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v5 = v17[0];
  if (!v17[0])
  {
    goto LABEL_11;
  }

LABEL_22:
  v9 = v17[1];
  if (v17[1] == v5)
  {
    v17[1] = v5;
    operator delete(v5);
    if ((SBYTE7(v16) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    operator delete(v15[0]);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_33;
  }

  do
  {
    if (*(v9 - 9) < 0)
    {
      operator delete(*(v9 - 4));
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(*v10);
LABEL_25:
    v9 = v10;
  }

  while (v10 != v5);
  v17[1] = v5;
  operator delete(v17[0]);
  if (SBYTE7(v16) < 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return v4;
  }

LABEL_33:
  operator delete(v13[1]);
  return v4;
}

void sub_6FBA40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_6FBA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6FBA68(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5)
{
  if (*(a1 + 870) != 1)
  {
    return 0;
  }

  result = sub_716E70(a1 + 1432, a4);
  if (result)
  {
    v11 = (*a4 - **a4);
    if (*v11 < 0x2Fu || (v12 = v11[23]) == 0 || (result = 0, v13 = *(*a4 + v12), v13 != 14) && v13 != 44)
    {
      result = 0;
      v14 = *(a5 + 24);
      if (v14 - 91 >= 6 && (v14 > 0x18 || ((1 << v14) & 0x1C00008) == 0))
      {
        v15 = sub_4D1F50(a2, a3);
        v16 = *a1;
        v17 = *(v15 + 32);
        v18 = *(v15 + 36);
        v19 = ((v18 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v18 << 32) | v17;
        v20 = sub_2B51D8(*a1, ((v18 & 0x20000000u) << 19) | (v18 << 32) & 0xFFFFFFFFFFFFLL | v17 & 0xFFFFFFFFFFFFLL);
        if (*(v16 + 7772) == 1)
        {
          v21 = sub_30C50C(v16 + 3896, v17, 0);
          v22 = &v21[-*v21];
          if (*v22 < 5u)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v22 + 2);
            if (v23)
            {
              v23 += &v21[*&v21[v23]];
            }
          }

          v24 = v23 + 4 * v18 + 4 + *(v23 + 4 * v18 + 4);
        }

        else
        {
          v24 = 0;
        }

        v68[0] = v20;
        v68[1] = v24;
        v68[2] = sub_31D7E8(v16, v19 & 0xFFFFFFFFFFFFLL, 1);
        v68[3] = v25;
        v68[4] = v19 ^ 0x1000000000000;
        __p = 0;
        v66 = 0;
        v67 = 0;
        v26 = sub_4D1DC0(a2);
        if (a3 <= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = a3;
        }

        v59 = v27;
        if (v26 > a3)
        {
          do
          {
            v28 = sub_4D1F50(a2, a3);
            v29 = a4[4];
            v31 = *(v28 + 32);
            v30 = *(v28 + 36);
            if (v31 == v29 && WORD2(v29) == v30 && ((v30 >> 29) & 1 ^ BYTE6(v29)) == 1)
            {
              break;
            }

            v33 = *a1;
            v34 = *(v28 + 36);
            v35 = ((v30 & 0x20000000) << 19) | (v34 << 32) | v31;
            v36 = sub_2B51D8(*a1, v35 & 0xFFFFFFFFFFFFLL);
            if (*(v33 + 7772) == 1)
            {
              v37 = sub_30C50C(v33 + 3896, v31, 0);
              v38 = &v37[-*v37];
              if (*v38 < 5u)
              {
                v39 = 0;
              }

              else
              {
                v39 = *(v38 + 2);
                if (v39)
                {
                  v39 += &v37[*&v37[v39]];
                }
              }

              v40 = v39 + 4 * v34 + 4 + *(v39 + 4 * v34 + 4);
            }

            else
            {
              v40 = 0;
            }

            v41 = sub_31D7E8(v33, v35 & 0xFFFFFFFFFFFFLL, 1);
            v60 = v36;
            v61 = v40;
            v62 = v41;
            v63 = v42;
            v64 = v35 ^ 0x1000000000000;
            if (!sub_716E70(a1 + 1432, &v60))
            {
              goto LABEL_51;
            }

            v43 = (v60 - *v60);
            if (*v43 >= 0x2Fu)
            {
              v44 = v43[23];
              if (v44)
              {
                v45 = *(v60 + v44);
                if (v45 == 14 || v45 == 44)
                {
                  goto LABEL_51;
                }
              }
            }

            v46 = *a1;
            v47 = *(v28 + 32);
            v48 = *(v28 + 36);
            v49 = ((v48 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v48 << 32) | v47;
            v50 = sub_2B51D8(*a1, ((v48 & 0x20000000u) << 19) | (v48 << 32) & 0xFFFFFFFFFFFFLL | v47 & 0xFFFFFFFFFFFFLL);
            if (*(v46 + 7772) == 1)
            {
              v51 = sub_30C50C(v46 + 3896, v47, 0);
              v52 = &v51[-*v51];
              if (*v52 < 5u)
              {
                v53 = 0;
              }

              else
              {
                v53 = *(v52 + 2);
                if (v53)
                {
                  v53 += &v51[*&v51[v53]];
                }
              }

              v54 = v53 + 4 * v48 + 4 + *(v53 + 4 * v48 + 4);
            }

            else
            {
              v54 = 0;
            }

            v55 = sub_31D7E8(v46, v49 & 0xFFFFFFFFFFFFLL, 1);
            v60 = v50;
            v61 = v54;
            v62 = v55;
            v63 = v56;
            v64 = v49 ^ 0x1000000000000;
            sub_31B8F4(v46, &v60, &__p);
            if (sub_701B44(a1, v68, &__p, a4) != 1)
            {
LABEL_51:
              result = 0;
              v57 = __p;
              if (!__p)
              {
                return result;
              }

              goto LABEL_52;
            }

            ++a3;
          }

          while (v59 != a3);
        }

        result = 1;
        v57 = __p;
        if (__p)
        {
LABEL_52:
          v66 = v57;
          v58 = result;
          operator delete(v57);
          return v58;
        }
      }
    }
  }

  return result;
}

void sub_6FBE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FBEA4(uint64_t a1, uint64_t a2, char **a3, int ***a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 8) = *a7;
  *(a7 + 24) = 0;
  v8 = a4[1] - *a4;
  if (v8)
  {
    v9 = a6;
    v11 = a4;
    v14 = a1;
    v15 = 0;
    v16 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
    v50 = v16;
    do
    {
      v18 = sub_605E3C(v11, v15);
      v19 = *a3;
      v20 = &(*a3)[-**a3];
      v21 = *v20;
      if (*(a3 + 38))
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v22 = *(v20 + 77);
        if (!v22 || (*&v19[v22] & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v23 = *(v20 + 77);
        if (!v23 || (*&v19[v23] & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v24 = *v18;
      v25 = (*v18 - **v18);
      v26 = *v25;
      if (*(v18 + 38))
      {
        if (v26 < 0x9B)
        {
          goto LABEL_33;
        }

        v27 = v25[77];
        if (!v27)
        {
          goto LABEL_33;
        }

        if ((v24[v27] & 2) == 0 && (*&v24[v27] & 1) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v26 < 0x9B || (v29 = v25[77]) == 0)
        {
LABEL_33:
          if (a5 != v15)
          {
            goto LABEL_5;
          }

          goto LABEL_34;
        }

        if ((v24[v29] & 1) == 0 && (*&v24[v29] & 2) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

LABEL_34:
      v31 = sub_6F532C(v14, a2, a3, v11, v15, 1, 1, 0);
      if (v31 != 4)
      {
        v32 = v31;
        if (*(v9 + 32) && *v9 && *(v9 + 8))
        {
          v32 = sub_6F532C(v14, a2, v9, v11, v15, 1, 1, 0);
        }

        result = sub_6FC214(v14, v32);
        if ((result & 0x10000) == 0)
        {
          *(a7 + 8) = *a7;
          *(a7 + 24) = 0;
          return result;
        }

        v34 = a5 == v15;
        v36 = *(a7 + 8);
        v35 = *(a7 + 16);
        if (v36 < v35)
        {
          *v36 = result;
          *(v36 + 2) = v34;
          v17 = v36 + 4;
        }

        else
        {
          v37 = *a7;
          v38 = v36 - *a7;
          v39 = v38 >> 2;
          v40 = (v38 >> 2) + 1;
          if (v40 >> 62)
          {
            sub_1794();
          }

          v41 = a2;
          v42 = a5;
          v43 = v35 - v37;
          if (v43 >> 1 > v40)
          {
            v40 = v43 >> 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v44 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v40;
          }

          if (v44)
          {
            if (!(v44 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v45 = 4 * v39;
          *v45 = result;
          *(v45 + 2) = v34;
          v17 = 4 * v39 + 4;
          v46 = (v45 - 4 * (v38 >> 2));
          memcpy(v46, v37, v38);
          *a7 = v46;
          *(a7 + 8) = v17;
          *(a7 + 16) = 0;
          if (v37)
          {
            operator delete(v37);
          }

          a5 = v42;
          a2 = v41;
          v11 = a4;
          v9 = a6;
          v14 = a1;
        }

        *(a7 + 8) = v17;
        v16 = v50;
      }

LABEL_5:
      ++v15;
    }

    while (v16 != v15);
  }

  return sub_6D8760(a7, sub_6D88A4, sub_6D88C4);
}

uint64_t sub_6FC214(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 792;
  switch(a2)
  {
    case 0:
    case 3:
    case 5:
    case 12:
    case 89:
    case 90:
      goto LABEL_2;
    case 1:
      v3 = 816;
      goto LABEL_2;
    case 2:
      v3 = 848;
      goto LABEL_2;
    case 20:
      v3 = 800;
      goto LABEL_2;
    case 21:
      v3 = 832;
      goto LABEL_2;
    case 60:
      v3 = 824;
      goto LABEL_2;
    case 61:
      v3 = 856;
      goto LABEL_2;
    case 62:
      v3 = 808;
      goto LABEL_2;
    case 63:
      v3 = 840;
LABEL_2:
      v2 = *(a1 + v3) | 0x10000u;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_6FC40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = (*(a2 + 8) - *a2) >> 3;
    if (v3 < 3)
    {
      return 0;
    }

    if (v2 == 12)
    {
      return v3 - 2;
    }

    if (v2 != 4)
    {
      if (v2 != 3)
      {
        if (v3 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1794();
      }

      return v3 - 2;
    }
  }

  return -1;
}

void sub_6FC788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6FC7E8(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  if (*(a1 + 708) != 1)
  {
    return 0;
  }

  v9 = sub_716AD8(a1 + 1432, a2, a3, -1, a5);
  if (v9 != -1 && v9 == a4)
  {
    return 0;
  }

  result = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, (*a3)[5 * a4 + 4] & 0xFFFFFFFFFFFFFFLL);
  if (result)
  {
    v11 = (*a2 - **a2);
    if (*v11 < 0x2Fu)
    {
      return 0;
    }

    v12 = v11[23];
    if (!v12)
    {
      return 0;
    }

    v13 = *(*a2 + v12);
    v14 = v13 > 0x2B;
    v15 = (1 << v13) & 0x80000001040;
    if (v14 || v15 == 0)
    {
      return 0;
    }

    v17 = *a3;
    v18 = a3[1];
    if (*a3 != v18)
    {
      result = 1;
      while (1)
      {
        v19 = (*v17 - **v17);
        if (*v19 < 0x2Fu)
        {
          break;
        }

        v20 = v19[23];
        if (!v20)
        {
          break;
        }

        v21 = *(*v17 + v20);
        v14 = v21 > 0x2B;
        v22 = (1 << v21) & 0x80000001040;
        if (v14 || v22 == 0)
        {
          break;
        }

        v17 += 5;
        if (v17 == v18)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_6FC964(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (sub_6DEE8C(a1, a3, a4) > 1)
  {
    return 1;
  }

  if (*(a1 + 1114) != 1 || a5 != -1 && a5 != a6)
  {
    return 0;
  }

  v13 = sub_605E3C(a4, a6);
  v14 = *v13;
  v15 = *(v13 + 16);
  v53 = *(v13 + 32);
  v52[0] = v14;
  v52[1] = v15;
  v16 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if (v18 >= 0x2F && v17[23])
  {
    v19 = *(v16 + v17[23]);
    if (v19 <= 0x2A)
    {
      if (v19 != 6 && v19 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v19 == 44)
    {
      return 0;
    }

    if (v19 == 43)
    {
LABEL_17:
      if (v18 >= 0x9B)
      {
        v21 = v17[77];
        if (v21)
        {
          if ((*(v16 + v21 + 2) & 0x20) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      return 0;
    }
  }

LABEL_20:
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v22 = *(a4 + 8) - *a4;
  if (v22)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v22 >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = sub_70CC84(0, 0, a1);
  v25 = v49;
  v24 = v50;
  if (v23 != v50)
  {
    v24 = v23;
    v50 = v23;
  }

  if (0xCCCCCCCCCCCCCCCDLL * (v24 - v49) < 2)
  {
    return 0;
  }

  v27 = v49;
  if (v49 != v24)
  {
    v27 = v49;
    while (__PAIR64__(*(v27 + 18), *(v27 + 8)) != __PAIR64__(WORD2(v53), v53) || *(v27 + 38) != BYTE6(v53))
    {
      v27 += 5;
      if (v27 == v24)
      {
        return 0;
      }
    }
  }

  if (v27 == v24)
  {
    return 0;
  }

  v28 = v49[4];
  if (v53 == v28 && WORD2(v53) == WORD2(v28) && BYTE6(v53) == BYTE6(v28))
  {
    v25 = sub_6B8D68(&v49, 1uLL);
  }

  v29 = *v25;
  v30 = *(v25 + 16);
  v48 = *(v25 + 32);
  v47[0] = v29;
  v47[1] = v30;
  v31 = *a3;
  v32 = (*a3 - **a3);
  v33 = *v32;
  if (*(a3 + 38))
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v34 = v32[35];
    if (!v34)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v34);
    if ((v35 & 0x141510) == 0)
    {
      v36 = 64;
      goto LABEL_47;
    }
  }

  else
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v37 = v32[35];
    if (!v37)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v37);
    if ((v35 & 0xA0A88) == 0)
    {
      v36 = 32;
LABEL_47:
      if ((v35 & v36) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  if (sub_3139A0(v52) && !sub_3139A0(v47))
  {
    goto LABEL_61;
  }

LABEL_50:
  v38 = (*&v47[0] - **&v47[0]);
  if (*v38 >= 0x9Bu && (v39 = v38[77]) != 0 && (*(*&v47[0] + v39 + 2) & 2) != 0 || (sub_30F868(a1 + 7264, v47) & 1) != 0 || (sub_30F6FC(a1 + 7264, v47) & 1) != 0 || (v41 = (*&v47[0] - **&v47[0]), *v41 >= 0x2Fu) && (v42 = v41[23]) != 0 && (v43 = *(*&v47[0] + v42) - 15, v43 < 0x21) && ((0x1C5C08009uLL >> v43) & 1) != 0 || (v44 = sub_70E484(a1 + 1432, a2, a3, v52, 1, v40), v45 = sub_6DEB50(a1, a2, a3, v52, v47, v44), fabs(v44) < *(a1 + 184)) || fabs(v45) > *(a1 + 400))
  {
LABEL_61:
    result = 0;
    v46 = v49;
    if (!v49)
    {
      return result;
    }

LABEL_27:
    v50 = v46;
    v26 = result;
    operator delete(v46);
    return v26;
  }

  result = 1;
  v46 = v49;
  if (v49)
  {
    goto LABEL_27;
  }

  return result;
}

void sub_6FCDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FCDF4(uint64_t a1, int **a2, int ***a3, unint64_t a4)
{
  v8 = sub_605E3C(a3, a4);
  v10 = (*v8 - **v8);
  if (*v10 < 0x2Fu)
  {
    return 0;
  }

  v11 = v10[23];
  if (!v11)
  {
    return 0;
  }

  v12 = *(*v8 + v11);
  v13 = v12 > 0x2A;
  v14 = (1 << v12) & 0x50426810004;
  if (v13 || v14 == 0)
  {
    return 0;
  }

  v16 = sub_716AD8(a1 + 1432, a2, a3, -1, v9);
  result = 0;
  if (v16 != -1 && v16 != a4)
  {
    operator new();
  }

  return result;
}

void sub_6FD89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
    v38 = *(v36 - 128);
    if (!v38)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v38 = *(v36 - 128);
    if (!v38)
    {
      goto LABEL_5;
    }
  }

  *(v36 - 120) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

double sub_6FD97C(uint64_t a1, uint64_t a2, int **a3, int **a4, int **a5)
{
  if (sub_394BD0())
  {
    return *(a1 + 416);
  }

  v12 = fabs(sub_70E484(a1 + 1432, a2, a3, a5, 0, v10));
  if (v12 < *(a1 + 408))
  {
    return *(a1 + 400);
  }

  LODWORD(v12) = *(a1 + 736);
  if (sub_4346FC(*a1, a3, a5, *(a1 + 1136), *(a1 + 1128), *&v12, *(a1 + 1120)))
  {
    return *(a1 + 392);
  }

  LODWORD(v13) = *(a1 + 736);
  v14 = sub_4346FC(*a1, a3, a4, *(a1 + 1136), *(a1 + 1128), v13, *(a1 + 1120));
  v15 = 400;
  if (v14)
  {
    v15 = 392;
  }

  return *(a1 + v15);
}

uint64_t sub_6FDAB0(uint64_t a1, void *a2, unint64_t a3, int **a4)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v7 = (*a4 - **a4);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = *(*a4 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 1);
  v36 = *a4;
  v37 = v10;
  v38 = a4[4];
  if (v9 < *(a1 + 448))
  {
    while (1)
    {
      sub_740664((a1 + 7480), &v36, &v42);
      if (v42 == v43 || fabs(sub_710C1C(a1 + 1432, a2, &v36, v42)) > *(a1 + 200))
      {
        break;
      }

      v11 = *(v42 + 4);
      v12 = *(v42 + 1);
      v36 = *v42;
      v37 = v12;
      v38 = v11;
      v13 = v40;
      if (v40 >= v41)
      {
        v15 = __p;
        v16 = v40 - __p;
        v17 = (v40 - __p) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          sub_1794();
        }

        v19 = v41 - __p;
        if ((v41 - __p) >> 2 > v18)
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
          if (!(v20 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v21 = (8 * v17);
        v22 = v11 & 0xFFFFFFFFFFFFFFLL;
        v23 = &v21[-((v40 - __p) >> 3)];
        *v21 = v22;
        v14 = v21 + 1;
        memcpy(v23, v15, v16);
        __p = v23;
        v41 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v40 = v11 & 0xFFFFFFFFFFFFFFLL;
        v14 = v13 + 1;
      }

      v40 = v14;
      v24 = (v36 - *v36);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v9 += *(v36 + v25);
        if (v9 >= *(a1 + 448))
        {
          break;
        }
      }

      else if (v9 >= *(a1 + 448))
      {
        break;
      }
    }
  }

  sub_3120CC(&__p);
  for (i = sub_4D23F8(a2, a3, v26); i < *(a1 + 448); i += sub_4D23F8(a2, a3, v30))
  {
    if (a3 >= sub_4D1DC0(a2) - 1)
    {
      break;
    }

    v28 = sub_4D1F50(a2, a3++);
    v29 = sub_4D1F50(a2, a3);
    v30 = fabs(sub_719E74(a1 + 1432, v28, v29));
    if (v30 > *(a1 + 200))
    {
      break;
    }

    v31 = __p;
    if (__p != v40)
    {
      v32 = *(v29 + 36);
      while (*v31 != *(v29 + 32) || *(v31 + 2) != v32 || (*(v31 + 6) ^ (v32 >> 29) & 1) != 1)
      {
        if (++v31 == v40)
        {
          goto LABEL_36;
        }
      }
    }

    if (v31 != v40)
    {
      v33 = 1;
      v34 = __p;
      if (__p)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

LABEL_36:
    ;
  }

  v33 = 0;
  v34 = __p;
  if (__p)
  {
LABEL_38:
    v40 = v34;
    operator delete(v34);
  }

LABEL_39:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v33;
}

void sub_6FDDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a18;
    if (!a18)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void sub_6FDE50(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  sub_605E3C(a3, a4);
  v19 = 0u;
  v20 = 0u;
  v21 = 0x1000000000000;
  v16 = 0u;
  v17 = 0u;
  v18 = 0x1000000000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0x1000000000000;
  v10 = 0u;
  v11 = 0u;
  v12 = 0x1000000000000;
  v7 = 0u;
  v8 = 0u;
  v9 = 0x1000000000000;
  v4 = 0;
  __dst = 0;
  v6 = 0;
  operator new();
}

void sub_6FE650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
    v46 = a38;
    if (!a38)
    {
LABEL_3:
      v47 = a41;
      if (!a41)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v46 = a38;
    if (!a38)
    {
      goto LABEL_3;
    }
  }

  operator delete(v46);
  v47 = a41;
  if (!a41)
  {
LABEL_4:
    v48 = a44;
    if (!a44)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v47);
  v48 = a44;
  if (!a44)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v48);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6FE744(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  }

  if (v4 < 2)
  {
    v6 = 0;
    v7 = -1;
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }

    return v7;
  }

  v6 = 0;
  v7 = -1;
  v10 = 1;
  v11 = 1.79769313e308;
  do
  {
    v29 = -1;
    v30 = 0x7FFFFFFF;
    v14 = sub_605E3C(a2, v10);
    sub_2B7A20(*a1, *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
    v15 = sub_31BF20(&v25, __p).n128_u64[0];
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    sub_6D5084(__p, a3, 0, 0, &v25, v15);
    v16 = v25;
    v29 = v26;
    v30 = v27;
    if (v25 < v11)
    {
      sub_47190(&v29, __p);
      sub_605E3C(a2, v10);
      v7 = v10;
      v11 = v16;
    }

    v17 = sub_605E3C(a2, v10);
    v18 = (*v17 - **v17);
    if (*v18 < 9u || (v19 = v18[4]) == 0)
    {
      v12 = 0;
      v13 = __p[0];
      if (!__p[0])
      {
        goto LABEL_11;
      }

LABEL_10:
      __p[1] = v13;
      operator delete(v13);
      goto LABEL_11;
    }

    v12 = *(*v17 + v19);
    v13 = __p[0];
    if (__p[0])
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 += v12;
    ++v10;
  }

  while (v5 != v10);
  v20 = v11 * 100.0;
  if (v11 * 100.0 >= 0.0)
  {
    v21 = v11 * 100.0;
    if (v20 < 4.50359963e15)
    {
      v22 = (v20 + v20) + 1;
LABEL_25:
      v21 = (v22 >> 1);
    }
  }

  else
  {
    v21 = v11 * 100.0;
    if (v20 > -4.50359963e15)
    {
      v22 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_25;
    }
  }

  if (v21 >= 9.22337204e18)
  {
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v23 = (v20 + v20) + 1;
LABEL_35:
        v20 = (v23 >> 1);
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v23 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_35;
    }

    if (v20 > a1[64])
    {
LABEL_37:
      if (v6 > a1[65])
      {
        return -1;
      }
    }
  }

  return v7;
}

void sub_6FEA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FEAD4(uint64_t a1, int **a2, void *a3)
{
  a3[1] = *a3;
  v6 = (*a2 - **a2);
  if (*v6 < 0x9Bu || (v7 = v6[77]) == 0 || (*(*a2 + v7) & 4) == 0)
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    sub_31B8F4(*a1, a2, &__p);
    v8 = sub_709188(__p, v38);
    v10 = __p;
    v9 = v38;
    if (v8 != v38)
    {
      v9 = v8;
      v38 = v8;
    }

    if (v9 - __p != 80)
    {
      goto LABEL_60;
    }

    v11 = *__p;
    v12 = (*__p - **__p);
    if (*v12 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v12[77])
    {
      goto LABEL_60;
    }

    if ((*(v11 + v12[77]) & 1) == ((*(v11 + v12[77]) >> 1) & 1))
    {
      goto LABEL_60;
    }

    v13 = v9 - 5;
    v14 = *(v9 - 5);
    v15 = (v14 - *v14);
    if (*v15 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v15[77])
    {
      goto LABEL_60;
    }

    v16 = *(v14 + v15[77]);
    if (((v16 ^ (v16 >> 1) & 1) & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = *a2;
    v18 = (*a2 - **a2);
    v19 = *v18;
    if (*(a2 + 38))
    {
      if (v19 < 0x49 || (v20 = v18[36]) == 0)
      {
LABEL_20:
        v21 = -1;
LABEL_21:
        if (*(__p + 38))
        {
          v22 = v12[37];
          if (v22)
          {
LABEL_23:
            v23 = *(v11 + v22);
            goto LABEL_26;
          }
        }

        else
        {
          v22 = v12[36];
          if (v22)
          {
            goto LABEL_23;
          }
        }

        v23 = 0xFFFF;
LABEL_26:
        v24 = v21 + 18000;
        v25 = v21 - 18000;
        if ((v24 >> 5) < 0x465u)
        {
          v25 = v24;
        }

        v26 = v23 - v25;
        if (v26 > 18000)
        {
          v26 -= 36000;
        }

        if (v26 < -17999)
        {
          v26 += 36000;
        }

        v27 = v26 / 100.0;
        v28 = fabs(v27);
        LOWORD(v27) = *(a1 + 504);
        v29 = vmovl_s16(*&v27).i32[0];
        if (v28 > v29)
        {
          goto LABEL_60;
        }

        if (*(a2 + 38))
        {
          if (v19 < 0x49 || (v30 = v18[36]) == 0)
          {
LABEL_40:
            v31 = -1;
LABEL_41:
            if (*(v9 - 2))
            {
              v32 = v15[37];
              if (v15[37])
              {
LABEL_43:
                v33 = *(v14 + v32);
                goto LABEL_46;
              }
            }

            else
            {
              v32 = v15[36];
              if (v15[36])
              {
                goto LABEL_43;
              }
            }

            v33 = 0xFFFF;
LABEL_46:
            v34 = v31 + 18000;
            v35 = v31 - 18000;
            if ((v34 >> 5) >= 0x465u)
            {
              v34 = v35;
            }

            v36 = v33 - v34;
            if (v36 > 18000)
            {
              v36 -= 36000;
            }

            if (v36 < -17999)
            {
              v36 += 36000;
            }

            if (fabs(v36 / 100.0) > v29)
            {
              goto LABEL_60;
            }

            if (sub_312DF0(__p) && sub_312E54(v13))
            {
              sub_6E0128(a3, v10);
            }

            else
            {
              if (!sub_312E54(v10) || !sub_312DF0(v13))
              {
                goto LABEL_60;
              }

              sub_6E0128(a3, v13);
              v13 = v10;
            }

            sub_6E0128(a3, v13);
LABEL_60:
            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            return;
          }
        }

        else
        {
          if (v19 < 0x4B)
          {
            goto LABEL_40;
          }

          v30 = v18[37];
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v31 = *&v17[v30];
        goto LABEL_41;
      }
    }

    else
    {
      if (v19 < 0x4B)
      {
        goto LABEL_20;
      }

      v20 = v18[37];
      if (!v18[37])
      {
        goto LABEL_20;
      }
    }

    v21 = *&v17[v20];
    goto LABEL_21;
  }
}

void sub_6FEE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FEE34(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *a4;
  a4[1] = *a4;
  v8 = a4[2];
  if (v7 >= v8)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= 1)
    {
      v12 = 1;
    }

    if (v11 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v12;
    }

    if (v13 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = *a2;
  v10 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v14 = 0;
  a4[1] = v7 + 40;
  v15 = *(a2 + 16);
  v33 = *a2;
  v34 = v15;
  v35 = *(a2 + 32);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  while (1)
  {
    v16 = v30;
    if (0xCCCCCCCCCCCCCCCDLL * (v31 - v30) > 1)
    {
      break;
    }

    v17 = (v33 - *v33);
    v18 = *v17;
    if (v18 < 9)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17[4];
      if (v17[4])
      {
        v19 = *(v33 + v19);
      }
    }

    v14 += v19;
    if (v14 > *a3 || v18 <= 0x2E)
    {
      goto LABEL_31;
    }

    v20 = v17[23];
    if ((!v17[23] || *(v33 + v20) != 23) && (v18 < 0x9B || (v21 = v17[77]) == 0 || (*(v33 + v21) & 4) == 0))
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      v22 = *(v33 + v20);
      v23 = v22 > 0x2A;
      v24 = (1 << v22) & 0x50426810004;
      if (v23 || v24 == 0)
      {
        goto LABEL_31;
      }
    }

    sub_740664((a1 + 7480), &v33, &v30);
    v26 = sub_709188(v30, v31);
    v16 = v30;
    v27 = v31;
    if (v26 != v31)
    {
      v27 = v26;
      v31 = v26;
    }

    if (v30 == v27)
    {
LABEL_31:
      a4[1] = *a4;
      break;
    }

    v28 = *v30;
    v29 = *(v30 + 1);
    v35 = v30[4];
    v33 = v28;
    v34 = v29;
    sub_69B1E0(a4, &v33);
  }

  if (v16)
  {
    v31 = v16;
    operator delete(v16);
  }
}

void sub_6FF0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FF0E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = 0;
  a5[1] = *a5;
  __p = 0;
  v29 = 0;
  v30 = 0;
  v10 = *(a2 + 16);
  v25 = *a2;
  v26 = v10;
  v27 = *(a2 + 32);
  while (v9 < *a4)
  {
    v11 = (v25 - *v25);
    if (*v11 >= 0x2Fu)
    {
      v12 = v11[23];
      if (v12)
      {
        v13 = *(v25 + v12);
        v14 = v13 > 0x36;
        v15 = (1 << v13) & 0x44000000000008;
        if (!v14 && v15 != 0)
        {
          break;
        }
      }
    }

    sub_740664((a1 + 7480), &v25, &__p);
    if (__p == v29)
    {
      break;
    }

    v18 = *__p;
    v17 = *(__p + 1);
    v27 = *(__p + 4);
    v25 = v18;
    v26 = v17;
    v19 = (v18 - *v18);
    if (*v19 >= 9u && (v20 = v19[4]) != 0)
    {
      v21 = *(v18 + v20);
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v21 = 0;
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    if ((v22 & 0xFFFFFF) == (HIDWORD(v23) & 0xFFFFFF))
    {
      v24 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_3:
    v9 += v21;
    sub_69B1E0(a5, &v25);
  }

  a5[1] = *a5;
  v24 = __p;
  if (__p)
  {
LABEL_20:
    v29 = v24;
    operator delete(v24);
  }
}

void sub_6FF270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FF28C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  v7 = a3 + 1;
  v8 = sub_4D1F50(a2, v7);
  v9 = (*v6 - **v6);
  if (*v9 >= 0x2Fu && (v10 = v9[23]) != 0 && (v11 = *(*v6 + v10) - 2, v11 < 0x29) && ((0x14109A04001uLL >> v11) & 1) != 0 || (v12 = (*v8 - **v8), *v12 < 0x2Fu) || (v13 = v12[23]) == 0 || ((v14 = *(*v8 + v13), v15 = v14 > 0x2A, v16 = (1 << v14) & 0x50426810004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    v20 = 0;
  }

  else
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    v18 = sub_4D1DC0(a2);
    if (v7 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7;
    }

    if (v7 >= v18)
    {
LABEL_39:
      v20 = 0;
    }

    else
    {
      v20 = 1;
      while (1)
      {
        v22 = sub_4D1F50(a2, v7);
        v23 = *a1;
        v24 = *(v22 + 32);
        v25 = *(v22 + 36);
        v26 = ((v25 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v25 << 32) | v24;
        v27 = sub_2B51D8(*a1, ((v25 & 0x20000000u) << 19) | (v25 << 32) & 0xFFFFFFFFFFFFLL | v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v28 = sub_30C50C(v23 + 3896, v24, 0);
          v29 = &v28[-*v28];
          if (*v29 < 5u)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v29 + 2);
            if (v30)
            {
              v30 += &v28[*&v28[v30]];
            }
          }

          v31 = (v30 + 4 * v25 + 4 + *(v30 + 4 * v25 + 4));
        }

        else
        {
          v31 = 0;
        }

        v32 = sub_31D7E8(v23, v26 & 0xFFFFFFFFFFFFLL, 1);
        v44[0] = v27;
        v44[1] = v31;
        v44[2] = v32;
        v44[3] = v33;
        v44[4] = (v26 ^ 0x1000000000000);
        sub_31B8F4(*a1, v44, &__p);
        v35 = (v44[0] - *v44[0]);
        if (*v35 < 0x2Fu)
        {
          break;
        }

        v36 = v35[23];
        if (!v36)
        {
          break;
        }

        v37 = *(v44[0] + v36);
        if (v37 > 0x2A || ((1 << v37) & 0x50426810004) == 0)
        {
          v20 |= v37 == 0;
          v43 = __p;
          if (__p)
          {
            goto LABEL_41;
          }

          return v20 & 1;
        }

        v39 = sub_716AD8((a1 + 179), v44, &__p, -1, v34);
        if (++v7 < sub_4D1DC0(a2))
        {
          if (v39 == -1 || (v40 = *(sub_6B8D68(&__p, v39) + 32), v41 = sub_4D1F50(a2, v7), *(v41 + 32) != v40) || (v42 = *(v41 + 36), WORD2(v40) != v42) || ((v42 >> 29) & 1 ^ BYTE6(v40)) != 1)
          {
            v20 = 0;
          }
        }

        if (v19 == v7)
        {
          goto LABEL_39;
        }
      }
    }

    v43 = __p;
    if (__p)
    {
LABEL_41:
      v46 = v43;
      operator delete(v43);
    }
  }

  return v20 & 1;
}

void sub_6FF588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FF5B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 728) != 1)
  {
    return 0;
  }

  if (sub_7008AC(a1, a2, a3, a4))
  {
    return 1;
  }

  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v13 = *(v10 + 32);
  v12 = *(v10 + 36);
  v243 = v10;
  v14 = ((v12 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v12 << 32) | v13;
  v15 = sub_2B51D8(*a1, ((v12 & 0x20000000u) << 19) | (v12 << 32) & 0xFFFFFFFFFFFFLL | v13 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v13, 0);
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

    v19 = v18 + 4 * v12 + 4 + *(v18 + 4 * v12 + 4);
  }

  else
  {
    v19 = 0;
  }

  v244 = a4;
  v264 = v15;
  v265 = v19;
  v266 = sub_31D7E8(v11, v14 & 0xFFFFFFFFFFFFLL, 1);
  v267 = v20;
  v268 = v14 ^ 0x1000000000000;
  sub_4D0568();
  v22 = v21;
  v23 = a2;
  v25 = v24;
  sub_4D0568();
  v252 = v26;
  v249 = v27;
  sub_4D0560();
  v245 = v29 + a3;
  v247 = v28;
  v254 = v23;
  sub_4D0560();
  v31 = v30;
  v251 = 0;
  v239 = a3;
  v33 = v32 + a3 + 1;
  while (1)
  {
    v34 = v33;
    sub_4D0568();
    v37 = v35;
    v38 = v36;
    if (v31)
    {
      v39 = sub_4D1DC0(v31);
      v40 = v39;
      if (v37)
      {
        v41 = v34 < v39;
        v42 = sub_4D1DC0(v37);
        if (v38 < v42 && v41)
        {
          v44 = sub_4D1F50(v31, v34);
          if (v44 == sub_4D1F50(v37, v38))
          {
            goto LABEL_75;
          }
        }

        else if (v34 < v40 == v38 < v42)
        {
          goto LABEL_75;
        }
      }

      else if (v34 >= v39)
      {
        goto LABEL_75;
      }
    }

    else if (!v35 || v36 >= sub_4D1DC0(v35))
    {
      goto LABEL_75;
    }

    v45 = sub_4D1F50(v31, v34);
    v46 = (*v45 - **v45);
    if (*v46 >= 0x2Fu)
    {
      v47 = v46[23];
      if (v47)
      {
        v48 = *(*v45 + v47);
        v49 = v48 > 0x36;
        v50 = (1 << v48) & 0x44000000000008;
        if (!v49 && v50 != 0)
        {
          return 0;
        }
      }
    }

    v52 = *a1;
    v53 = sub_4D1F50(v31, v34);
    v55 = *(v53 + 32);
    v54 = *(v53 + 36);
    v56 = ((v54 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v54 << 32) | v55;
    v57 = sub_2B51D8(v52, ((v54 & 0x20000000u) << 19) | (v54 << 32) & 0xFFFFFFFFFFFFLL | v55 & 0xFFFFFFFFFFFFLL);
    if (*(v52 + 7772) == 1)
    {
      v58 = sub_30C50C(v52 + 3896, v55, 0);
      v59 = &v58[-*v58];
      if (*v59 < 5u)
      {
        v60 = 0;
      }

      else
      {
        v60 = *(v59 + 2);
        if (v60)
        {
          v60 += &v58[*&v58[v60]];
        }
      }

      v61 = v60 + 4 * v54 + 4 + *(v60 + 4 * v54 + 4);
    }

    else
    {
      v61 = 0;
    }

    v62 = sub_31D7E8(v52, v56 & 0xFFFFFFFFFFFFLL, 1);
    *&v269 = v57;
    *(&v269 + 1) = v61;
    *&v270 = v62;
    *(&v270 + 1) = v63;
    v271 = v56 ^ 0x1000000000000;
    v64 = sub_4D1F50(v31, v34);
    v65 = *a1;
    v66 = *(v64 + 32);
    v67 = v66 | (*(v64 + 36) << 32);
    v68 = sub_2B51D8(*a1, v67);
    if (*(v65 + 7772) == 1)
    {
      sub_30C50C(v65 + 3896, v66, 0);
    }

    sub_31D7E8(v65, v67, 1);
    v69 = (v68 - *v68);
    if (*v69 >= 0x2Fu && (v70 = v69[23]) != 0 && *(v68 + v70) == 14)
    {
      v71 = 1;
      if (!v251)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v71 = sub_718368(a1 + 1432, &v264, &v269);
      if (!v251)
      {
LABEL_47:
        v251 = sub_718368(a1 + 1432, &v264, &v269);
        goto LABEL_50;
      }
    }

    v251 = 1;
LABEL_50:
    sub_4D0568();
    v73 = v72;
    v75 = v74;
    if (v22)
    {
      v76 = v25 < sub_4D1DC0(v22);
      if (!v73)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v76 = 0;
      if (!v72)
      {
LABEL_58:
        v78 = 0;
        goto LABEL_59;
      }
    }

    v77 = sub_4D1DC0(v73);
    v78 = v75 < v77;
    if (v75 < v77 && v76)
    {
      v80 = sub_4D1F50(v22, v25);
      v81 = v80 == sub_4D1F50(v73, v75);
      goto LABEL_60;
    }

LABEL_59:
    v81 = v76 ^ v78 ^ 1;
LABEL_60:
    if ((v81 & v71) != 0)
    {
      v22 = v31;
      v25 = v34;
    }

    sub_4D0568();
    v83 = v82;
    v85 = v84;
    if (v252)
    {
      v86 = v249 < sub_4D1DC0(v252);
      if (!v83)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v86 = 0;
      if (!v82)
      {
LABEL_71:
        v88 = 0;
        goto LABEL_72;
      }
    }

    v87 = sub_4D1DC0(v83);
    v88 = v85 < v87;
    if (v85 < v87 && v86)
    {
      v90 = sub_4D1F50(v252, v249);
      if (v90 != sub_4D1F50(v83, v85) || v71)
      {
        goto LABEL_12;
      }

      goto LABEL_73;
    }

LABEL_72:
    if ((v86 ^ v88 | v71))
    {
      goto LABEL_12;
    }

LABEL_73:
    v91 = sub_4D1F50(v31, v34);
    if ((sub_6AD28C(a1 + 3680, v91) & 1) == 0)
    {
      break;
    }

LABEL_12:
    v33 = v34 + 1;
    v245 = v34;
    v247 = v31;
  }

  v252 = v31;
  v249 = v34;
LABEL_75:
  sub_4D0568();
  v94 = v92;
  v95 = v93;
  if (v22)
  {
    v96 = sub_4D1DC0(v22);
    v97 = v96;
    if (v94)
    {
      v98 = v25 < v96;
      v99 = sub_4D1DC0(v94);
      if (v95 < v99 && v98)
      {
        v101 = sub_4D1F50(v22, v25);
        if (v101 == sub_4D1F50(v94, v95))
        {
          goto LABEL_122;
        }
      }

      else if (v25 < v97 == v95 < v99)
      {
        goto LABEL_122;
      }

LABEL_89:
      sub_4D0568();
      v104 = v102;
      v105 = v103;
      if (v252)
      {
        v106 = sub_4D1DC0(v252);
        v107 = v106;
        if (v104)
        {
          v108 = v249 < v106;
          v109 = sub_4D1DC0(v104);
          if (v105 < v109 && v108)
          {
            v111 = sub_4D1F50(v252, v249);
            if (v111 != sub_4D1F50(v104, v105))
            {
              goto LABEL_122;
            }
          }

          else if (v249 < v107 != v105 < v109)
          {
            goto LABEL_122;
          }

LABEL_103:
          v112 = *a1;
          v114 = *(v243 + 8);
          v113 = *(v243 + 9);
          v115 = ((v113 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v113 << 32) | v114;
          v116 = sub_2B51D8(*a1, ((v113 & 0x20000000u) << 19) | (v113 << 32) & 0xFFFFFFFFFFFFLL | v114 & 0xFFFFFFFFFFFFLL);
          if (*(v112 + 7772) == 1)
          {
            v117 = sub_30C50C(v112 + 3896, v114, 0);
            v118 = &v117[-*v117];
            if (*v118 < 5u)
            {
              v119 = 0;
            }

            else
            {
              v119 = *(v118 + 2);
              if (v119)
              {
                v119 += &v117[*&v117[v119]];
              }
            }

            v120 = v119 + 4 * v113 + 4 + *(v119 + 4 * v113 + 4);
          }

          else
          {
            v120 = 0;
          }

          v121 = sub_31D7E8(v112, v115 & 0xFFFFFFFFFFFFLL, 1);
          *&v269 = v116;
          *(&v269 + 1) = v120;
          *&v270 = v121;
          *(&v270 + 1) = v122;
          v271 = v115 ^ 0x1000000000000;
          v123 = sub_4D1F50(v247, v245);
          v124 = *a1;
          v126 = *(v123 + 32);
          v125 = *(v123 + 36);
          v127 = ((v125 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v125 << 32) | v126;
          v128 = sub_2B51D8(*a1, ((v125 & 0x20000000u) << 19) | (v125 << 32) & 0xFFFFFFFFFFFFLL | v126 & 0xFFFFFFFFFFFFLL);
          if (*(v124 + 7772) == 1)
          {
            v129 = sub_30C50C(v124 + 3896, v126, 0);
            v130 = &v129[-*v129];
            if (*v130 < 5u)
            {
              v131 = 0;
            }

            else
            {
              v131 = *(v130 + 2);
              if (v131)
              {
                v131 += &v129[*&v129[v131]];
              }
            }

            v132 = v131 + 4 * v125 + 4 + *(v131 + 4 * v125 + 4);
          }

          else
          {
            v132 = 0;
          }

          *&v261 = v128;
          *(&v261 + 1) = v132;
          *&v262 = sub_31D7E8(v124, v127 & 0xFFFFFFFFFFFFLL, 1);
          *(&v262 + 1) = v133;
          v263 = v127 ^ 0x1000000000000;
          v134 = sub_394BD0();
          v135 = v252;
          if (v134)
          {
            v135 = v247;
          }

          v252 = v135;
          v136 = v249;
          if (v134)
          {
            v136 = v245;
          }

          v249 = v136;
        }

        else if (v249 >= v106)
        {
          goto LABEL_103;
        }
      }

      else if (!v102 || v103 >= sub_4D1DC0(v102))
      {
        goto LABEL_103;
      }
    }

    else if (v25 < v96)
    {
      goto LABEL_89;
    }
  }

  else if (v92 && v93 < sub_4D1DC0(v92))
  {
    goto LABEL_89;
  }

LABEL_122:
  sub_4D0568();
  v139 = v137;
  v140 = v138;
  if (!v22)
  {
    if (v137 && v138 < sub_4D1DC0(v137))
    {
      goto LABEL_136;
    }

    return 0;
  }

  v141 = sub_4D1DC0(v22);
  v142 = v141;
  if (!v139)
  {
    if (v25 < v141)
    {
      goto LABEL_136;
    }

    return 0;
  }

  v143 = v25 < v141;
  v144 = sub_4D1DC0(v139);
  if (v140 < v144 && v143)
  {
    v146 = sub_4D1F50(v22, v25);
    if (v146 == sub_4D1F50(v139, v140))
    {
      return 0;
    }
  }

  else if (v25 < v142 == v140 < v144)
  {
    return 0;
  }

LABEL_136:
  sub_4D0568();
  v148 = v147;
  v150 = v149;
  if (v252)
  {
    v151 = v249 < sub_4D1DC0(v252);
    if (v148)
    {
      goto LABEL_138;
    }

LABEL_145:
    v153 = 0;
    goto LABEL_146;
  }

  v151 = 0;
  if (!v147)
  {
    goto LABEL_145;
  }

LABEL_138:
  v152 = sub_4D1DC0(v148);
  v153 = v150 < v152;
  if (v150 < v152)
  {
    v154 = v151;
  }

  else
  {
    v154 = 0;
  }

  if (v154 == 1)
  {
    v155 = sub_4D1F50(v252, v249);
    v156 = sub_4D1F50(v148, v150);
    v9 = 0;
    if (v155 == v156)
    {
      return v9;
    }

LABEL_147:
    if (v25 < v249)
    {
      sub_4D0560();
      v158 = v157;
      v159 = sub_4D1F50(v252, v249);
      v160 = *v159;
      v161 = *(v159 + 16);
      v263 = *(v159 + 32);
      v261 = v160;
      v262 = v161;
      v162 = *a1;
      v163 = sub_4D1F50(v252, v249);
      sub_6D6D8C(v162, (((*(v163 + 36) & 0x20000000) << 19) | (*(v163 + 36) << 32) | *(v163 + 32)) ^ 0x1000000000000, 1, 1, &v258);
      v256 = 0;
      v257 = 0;
      v164 = sub_4D1DC0(v254);
      v241 = v249 - v158;
      v165 = v239;
      if (v239 <= v164)
      {
        v166 = v164;
      }

      else
      {
        v166 = v239;
      }

      v240 = v166;
      if (v164 > v239)
      {
        v167 = 0;
        v246 = 0;
        LOBYTE(v168) = 0;
        v169 = 0.0;
        v170 = v254;
        while (1)
        {
          v171 = sub_4D1F50(v170, v165);
          v173 = *(v244 + 8);
          v172 = *(v244 + 16);
          v248 = ((*(v171 + 9) >> 29) & 1) == 0;
          v250 = *(v171 + 9);
          v253 = *(v171 + 8);
          if (v173 >= v172)
          {
            v175 = *v244;
            v176 = v173 - *v244;
            v177 = (v176 >> 3) + 1;
            if (v177 >> 61)
            {
              sub_1794();
            }

            v178 = v172 - v175;
            if (v178 >> 2 > v177)
            {
              v177 = v178 >> 2;
            }

            if (v178 >= 0x7FFFFFFFFFFFFFF8)
            {
              v179 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v179 = v177;
            }

            if (v179)
            {
              if (!(v179 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v180 = (8 * (v176 >> 3));
            *v180 = (v250 << 32) | (v248 << 48) | v253;
            v174 = v180 + 1;
            memcpy(0, v175, v176);
            *v244 = 0;
            *(v244 + 8) = v174;
            *(v244 + 16) = 0;
            if (v175)
            {
              operator delete(v175);
            }
          }

          else
          {
            *v173 = (*(v171 + 9) << 32) | ((((*(v171 + 9) >> 29) & 1) == 0) << 48) | *(v171 + 8);
            v174 = v173 + 1;
          }

          *(v244 + 8) = v174;
          if (v168)
          {
            v168 = 1;
          }

          else
          {
            v181 = *a1;
            v183 = *(v171 + 8);
            v182 = *(v171 + 9);
            v184 = ((v182 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v182 << 32) | v183;
            v185 = sub_2B51D8(*a1, ((v182 & 0x20000000u) << 19) | (v182 << 32) & 0xFFFFFFFFFFFFLL | v183 & 0xFFFFFFFFFFFFLL);
            if (*(v181 + 7772) == 1)
            {
              v186 = sub_30C50C(v181 + 3896, v183, 0);
              v187 = &v186[-*v186];
              if (*v187 < 5u)
              {
                v188 = 0;
              }

              else
              {
                v188 = *(v187 + 2);
                if (v188)
                {
                  v188 += &v186[*&v186[v188]];
                }
              }

              v189 = v188 + 4 * v182 + 4 + *(v188 + 4 * v182 + 4);
            }

            else
            {
              v189 = 0;
            }

            v190 = sub_31D7E8(v181, v184 & 0xFFFFFFFFFFFFLL, 1);
            *&v269 = v185;
            *(&v269 + 1) = v189;
            *&v270 = v190;
            *(&v270 + 1) = v191;
            v271 = v184 ^ 0x1000000000000;
            v168 = sub_716E70(a1 + 1432, &v269) ^ 1;
          }

          if (v241 == v165)
          {
            goto LABEL_233;
          }

          v192 = sub_4D1DC0(v254);
          v193 = 0.0;
          v170 = v254;
          if (v165 < v192 - 1)
          {
            break;
          }

LABEL_201:
          v207 = fabs(v193);
          if (v207 >= v169)
          {
            v169 = v207;
          }

          v208 = (*v243 - **v243);
          v209 = *v208;
          if ((*(v243 + 39) & 0x20) != 0)
          {
            if (v209 >= 0x4B)
            {
              v210 = v208[37];
              if (v210)
              {
LABEL_209:
                v211 = *(*v243 + v210);
                v212 = *v171;
                v213 = (*v171 - **v171);
                v214 = *v213;
                if ((*(v171 + 39) & 0x20) == 0)
                {
                  goto LABEL_214;
                }

                goto LABEL_210;
              }
            }
          }

          else if (v209 >= 0x49)
          {
            v210 = v208[36];
            if (v210)
            {
              goto LABEL_209;
            }
          }

          v211 = -1;
          v212 = *v171;
          v213 = (*v171 - **v171);
          v214 = *v213;
          if ((*(v171 + 39) & 0x20) == 0)
          {
LABEL_214:
            if (v214 < 0x4B)
            {
              goto LABEL_217;
            }

            v215 = v213[37];
            if (!v215)
            {
              goto LABEL_217;
            }

            goto LABEL_216;
          }

LABEL_210:
          if (v214 < 0x49 || (v215 = v213[36]) == 0)
          {
LABEL_217:
            v216 = 0xFFFF;
            goto LABEL_218;
          }

LABEL_216:
          v216 = *(v212 + v215);
LABEL_218:
          v217 = v211 + 18000;
          v218 = v211 - 18000;
          if ((v217 >> 5) < 0x465u)
          {
            v218 = v217;
          }

          v219 = v216 - v218;
          if (v219 > 18000)
          {
            v219 -= 36000;
          }

          if (v219 < -17999)
          {
            v219 += 36000;
          }

          v220 = 0x4059000000000000;
          v221 = fabs(v219 / 100.0);
          v220.i16[0] = *(a1 + 760);
          if (v221 >= vmovl_s16(v220).i32[0])
          {
            v222 = sub_4D23F8(v170, v165, v221);
            v170 = v254;
          }

          else
          {
            v222 = 0;
          }

          v246 += v222;
          v257 = v246;
          if (v253 == v268 && v250 == WORD2(v268) && v248 == BYTE6(v268))
          {
            v256 = v167;
            if (v240 == ++v165)
            {
              goto LABEL_233;
            }
          }

          else
          {
            v223 = sub_4D23F8(v170, v165, v221);
            v170 = v254;
            v167 += v223;
            v256 = v167;
            if (v240 == ++v165)
            {
              goto LABEL_233;
            }
          }
        }

        v194 = sub_4D1F50(v254, v165 + 1);
        v195 = (*v171 - **v171);
        v196 = *v195;
        if ((*(v171 + 39) & 0x20) != 0)
        {
          v170 = v254;
          if (v196 >= 0x4B)
          {
            v197 = v195[37];
            if (v197)
            {
              goto LABEL_185;
            }
          }

LABEL_189:
          v198 = -1;
          v199 = *v194;
          v200 = (*v194 - **v194);
          v201 = *v200;
          if ((*(v194 + 39) & 0x20) == 0)
          {
            goto LABEL_190;
          }

LABEL_186:
          if (v201 < 0x49)
          {
            goto LABEL_193;
          }

          v202 = v200[36];
          if (!v202)
          {
            goto LABEL_193;
          }

LABEL_192:
          v203 = *&v199[v202];
        }

        else
        {
          v170 = v254;
          if (v196 < 0x49)
          {
            goto LABEL_189;
          }

          v197 = v195[36];
          if (!v197)
          {
            goto LABEL_189;
          }

LABEL_185:
          v198 = *(*v171 + v197);
          v199 = *v194;
          v200 = (*v194 - **v194);
          v201 = *v200;
          if ((*(v194 + 39) & 0x20) != 0)
          {
            goto LABEL_186;
          }

LABEL_190:
          if (v201 >= 0x4B)
          {
            v202 = v200[37];
            if (v202)
            {
              goto LABEL_192;
            }
          }

LABEL_193:
          v203 = 0xFFFF;
        }

        v204 = v198 + 18000;
        v205 = v198 - 18000;
        if ((v204 >> 5) < 0x465u)
        {
          v205 = v204;
        }

        v206 = v203 - v205;
        if (v206 > 18000)
        {
          v206 -= 36000;
        }

        if (v206 < -17999)
        {
          v206 += 36000;
        }

        v193 = v206 / 100.0;
        goto LABEL_201;
      }

      v168 = 0;
      v169 = 0.0;
LABEL_233:
      if (sub_700F28(a1, v243, &v261, v244, &v257, v169))
      {
        *(v244 + 24) = 3;
        v224 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32);
        if (v260 == v224 && WORD2(v260) == WORD2(v224) && !((BYTE6(v260) != BYTE6(v224)) | v168 & 1))
        {
          sub_6FB318(a1, v254, v239, a5, v244, 1);
          v225 = (v265 - *v265);
          v226 = 0.0;
          v227 = 0.0;
          if (*v225 >= 0x13u)
          {
            v228 = v225[9];
            if (v228)
            {
              LOWORD(v227) = *(v265 + v228);
              v227 = *&v227;
            }
          }

          v229 = (*(&v258 + 1) - **(&v258 + 1));
          if (*v229 >= 0x13u)
          {
            v230 = v229[9];
            if (v230)
            {
              LOWORD(v226) = *(*(&v258 + 1) + v230);
              v226 = *&v226;
            }
          }

          if (v227 >= v226)
          {
            v226 = v227;
          }

          LODWORD(v227) = *(a1 + 732);
          v231 = *(v244 + 24);
          if (v226 > *&v227)
          {
            v231 = 3;
          }

          *(v244 + 24) = v231;
          *(v244 + 232) = sub_6FC40C(a1, v244);
        }

        v269 = v258;
        v270 = v259;
        v271 = v260;
        v9 = 1;
        sub_704450((a1 + 144), &v269, v272, 1uLL);
        *(a1 + 168) = 0;
        *(a1 + 176) = 4;
        *(v244 + 224) = 1;
        return v9;
      }

      if (!sub_92C754(a1, &v264, &v258))
      {
        sub_6D86EC(v244);
        return 0;
      }

      sub_6D6D8C(*a1, v260 & 0xFFFFFFFFFFFFFFLL, 1, 1, &v269);
      if (sub_7102E4(a1 + 1432, &v264, &v269))
      {
        v232 = v244;
        *(v244 + 24) = 4;
        goto LABEL_252;
      }

      if (((v251 | v168) & 1) == 0 && (v236 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32), v260 == v236) && WORD2(v260) == WORD2(v236) && BYTE6(v260) == BYTE6(v236))
      {
        sub_6FB318(a1, v254, v239, a5, v244, 1);
        v237 = sub_6FC40C(a1, v244);
        v232 = v244;
        *(v244 + 232) = v237;
LABEL_252:
        v233 = v239;
        v234 = v254;
      }

      else
      {
        v269 = v258;
        v270 = v259;
        v271 = v260;
        sub_6E38E4(__p, &v269, 1uLL);
        v234 = v254;
        v238 = sub_6DB978(a1, v254, &v264, __p, 0, 0xFFFFFFFFFFFFFFFFLL);
        v232 = v244;
        *(v244 + 24) = v238;
        v233 = v239;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
          v233 = v239;
          v232 = v244;
        }
      }

      *(a1 + 176) = 4;
      *(v244 + 224) = sub_92C464(a1, v234, v233, v251 + v233, v241, v232);
      return 1;
    }
  }

  else
  {
LABEL_146:
    v9 = 0;
    if (v151 != v153)
    {
      goto LABEL_147;
    }
  }

  return v9;
}

void sub_700884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7008AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 867) != 1)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_4D1F50(a2, a3);
  v9 = *v7;
  v10 = sub_31DDCC(*v7, (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000);
  sub_40C59C(v9, v10, &v82);
  v11 = v84;
  if ((v84 & 0x80u) != 0)
  {
    v11 = v83;
  }

  if (!v11)
  {
    result = 0;
    if ((v84 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_97;
  }

  v12 = (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000;
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  v76 = v8;
  if (v14 >= v13)
  {
    v17 = *a4;
    v18 = v14 - *a4;
    v19 = v18 >> 3;
    v20 = (v18 >> 3) + 1;
    if (v20 >> 61)
    {
      sub_1794();
    }

    v21 = v6;
    v22 = v13 - v17;
    if (v22 >> 2 > v20)
    {
      v20 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v20;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v19) = v12;
    v15 = 8 * v19 + 8;
    memcpy(0, v17, v18);
    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }

    v6 = v21;
  }

  else
  {
    *v14 = v12;
    v15 = (v14 + 1);
  }

  *(a4 + 8) = v15;
  v24 = sub_4D1DC0(v6);
  v77 = a3 + 1;
  if (a3 + 1 > v24)
  {
    v25 = a3 + 1;
  }

  else
  {
    v25 = v24;
  }

  v79 = v25;
  if (a3 + 1 < v24)
  {
    v26 = 0;
    v27 = a3 + 1;
    v78 = v6;
    while (1)
    {
      v28 = v7;
      v29 = sub_4D1F50(v6, v27);
      v30 = (((*(v29 + 36) & 0x20000000) << 19) | (*(v29 + 36) << 32) | *(v29 + 32)) ^ 0x1000000000000;
      v32 = *(a4 + 8);
      v31 = *(a4 + 16);
      if (v32 >= v31)
      {
        v34 = *a4;
        v35 = v32 - *a4;
        v36 = v35 >> 3;
        v37 = (v35 >> 3) + 1;
        if (v37 >> 61)
        {
          sub_1794();
        }

        v38 = v31 - v34;
        if (v38 >> 2 > v37)
        {
          v37 = v38 >> 2;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          v39 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (!(v39 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v36) = v30;
        v33 = 8 * v36 + 8;
        memcpy(0, v34, v35);
        *a4 = 0;
        *(a4 + 8) = v33;
        *(a4 + 16) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v32 = v30;
        v33 = (v32 + 1);
      }

      *(a4 + 8) = v33;
      v7 = v28;
      v40 = *v28;
      v41 = *(v29 + 32);
      v42 = v41 | (*(v29 + 36) << 32);
      v43 = sub_2B51D8(*v28, v42);
      if (*(v40 + 7772) == 1)
      {
        sub_30C50C(v40 + 3896, v41, 0);
      }

      sub_31D7E8(v40, v42, 1);
      if (v26 > v28[94])
      {
        goto LABEL_95;
      }

      v45 = (v43 - *v43);
      if (*v45 < 0x2Fu)
      {
        break;
      }

      v46 = v45[23];
      if (!v46)
      {
        break;
      }

      v47 = *(v43 + v46);
      v48 = v47 > 0x2A;
      v49 = (1 << v47) & 0x50400004000;
      if (v48 || v49 == 0)
      {
        break;
      }

      v6 = v78;
      v26 += sub_4D23F8(v78, v27++, v44);
      if (v79 == v27)
      {
        goto LABEL_95;
      }
    }

    v51 = *v28;
    v52 = sub_31DDCC(*v28, (((*(v29 + 36) & 0x20000000) << 19) | (*(v29 + 36) << 32) | *(v29 + 32)) ^ 0x1000000000000);
    sub_40C59C(v51, v52, __p);
    v53 = v81;
    if ((v81 & 0x80u) == 0)
    {
      v54 = v81;
    }

    else
    {
      v54 = __p[1];
    }

    v55 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v55 = v83;
    }

    if (v54 != v55 || ((v81 & 0x80u) == 0 ? (v56 = __p) : (v56 = __p[0]), (v84 & 0x80u) == 0 ? (v57 = &v82) : (v57 = v82), memcmp(v56, v57, v54)))
    {
      v27 = -1;
    }

    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 == -1 || v27 <= v77)
    {
      goto LABEL_95;
    }

    v58 = sub_4D1F50(v78, v27);
    v59 = *(v76 + 9);
    v60 = (*v76 - **v76);
    v61 = *v60;
    if ((v59 & 0x20000000) != 0)
    {
      if (v61 < 0x4B)
      {
        goto LABEL_76;
      }

      v62 = v60[37];
      if (!v62)
      {
        goto LABEL_76;
      }
    }

    else if (v61 < 0x49 || (v62 = v60[36]) == 0)
    {
LABEL_76:
      v63 = -1;
LABEL_77:
      v64 = *(v58 + 9);
      v65 = (*v58 - **v58);
      v66 = *v65;
      if ((v64 & 0x20000000) != 0)
      {
        if (v66 < 0x49)
        {
          goto LABEL_84;
        }

        v67 = v65[36];
        if (!v67)
        {
          goto LABEL_84;
        }
      }

      else if (v66 < 0x4B || (v67 = v65[37]) == 0)
      {
LABEL_84:
        v68 = 0xFFFF;
LABEL_85:
        v69 = v63 + 18000;
        v70 = v63 - 18000;
        if ((v69 >> 5) < 0x465u)
        {
          v70 = v69;
        }

        v71 = v68 - v70;
        if (v71 > 18000)
        {
          v71 -= 36000;
        }

        if (v71 < -17999)
        {
          v71 += 36000;
        }

        if (((v64 ^ v59) & 0x80000000) == 0 && ((v64 | v59) & 0x40000000) == 0)
        {
          v72 = 0x4059000000000000;
          v72.i16[0] = *(v28 + 380);
          if (fabs(v71 / 100.0) < vmovl_s16(v72).i32[0])
          {
            v73 = (a4 + 24);
            result = 1;
            goto LABEL_96;
          }
        }

        goto LABEL_95;
      }

      v68 = *(*v58 + v67);
      goto LABEL_85;
    }

    v63 = *(*v76 + v62);
    goto LABEL_77;
  }

LABEL_95:
  result = 0;
  *(a4 + 8) = *a4;
  *(a4 + 48) = *(a4 + 40);
  v74.f64[0] = NAN;
  v74.f64[1] = NAN;
  *(a4 + 72) = v74;
  *(a4 + 88) = v74;
  *(a4 + 104) = v74;
  *(a4 + 120) = -1;
  *(a4 + 136) = -1;
  *(a4 + 160) = vnegq_f64(v74);
  *(a4 + 184) = 98;
  *(a4 + 24) = 0;
  *(a4 + 64) = 0;
  *(a4 + 128) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 176) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = xmmword_229B660;
  *(a4 + 232) = 0;
  *(a4 + 245) = 0;
  v73 = (a4 + 224);
LABEL_96:
  *v73 = 0;
  if (v84 < 0)
  {
LABEL_97:
    v75 = result;
    operator delete(v82);
    return v75;
  }

  return result;
}

void sub_700EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_700F28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, void *a5, double a6)
{
  v12 = *(a2 + 32);
  v11 = *(a2 + 36);
  v13 = ((v11 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v11 << 32) | v12;
  v14 = *a1;
  v15 = sub_2B51D8(*a1, ((v11 & 0x20000000u) << 19) | (v11 << 32) & 0xFFFFFFFFFFFFLL | v12 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, v12, 0);
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

    v19 = (v18 + 4 * v11 + 4 + *(v18 + 4 * v11 + 4));
  }

  else
  {
    v19 = 0;
  }

  v54[0] = v15;
  v54[1] = v19;
  v54[2] = sub_31D7E8(v14, v13 & 0xFFFFFFFFFFFFLL, 1);
  v54[3] = v20;
  v54[4] = (v13 ^ 0x1000000000000);
  v22 = *(a3 + 32);
  v21 = *(a3 + 36);
  v23 = ((v21 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v21 << 32) | v22;
  v24 = *a1;
  v25 = sub_2B51D8(*a1, ((v21 & 0x20000000u) << 19) | (v21 << 32) & 0xFFFFFFFFFFFFLL | v22 & 0xFFFFFFFFFFFFLL);
  if (*(v24 + 7772) == 1)
  {
    v26 = sub_30C50C(v24 + 3896, v22, 0);
    v27 = &v26[-*v26];
    if (*v27 < 5u)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v27 + 2);
      if (v28)
      {
        v28 += &v26[*&v26[v28]];
      }
    }

    v29 = (v28 + 4 * v21 + 4 + *(v28 + 4 * v21 + 4));
  }

  else
  {
    v29 = 0;
  }

  v53[0] = v25;
  v53[1] = v29;
  v53[2] = sub_31D7E8(v24, v23 & 0xFFFFFFFFFFFFLL, 1);
  v53[3] = v30;
  v53[4] = (v23 ^ 0x1000000000000);
  if (*(a1 + 1172) == 1 && sub_31B1CC(*a1, a4, *(a1 + 752), *(a1 + 216)))
  {
    v31 = 1;
    return v31 & 1;
  }

  v32 = sub_71843C(a1 + 1432, a4, 1);
  v33 = sub_31ACAC(*a1, v54, v53) * 100.0;
  if (v33 >= 0.0)
  {
    v34 = v33;
    if (v33 >= 4.50359963e15)
    {
      goto LABEL_24;
    }

    v35 = (v33 + v33) + 1;
  }

  else
  {
    v34 = v33;
    if (v33 <= -4.50359963e15)
    {
      goto LABEL_24;
    }

    v35 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
  }

  v34 = (v35 >> 1);
LABEL_24:
  if (v34 < 9.22337204e18)
  {
    if (v33 >= 0.0)
    {
      if (v33 < 4.50359963e15)
      {
        v36 = (v33 + v33) + 1;
        goto LABEL_31;
      }
    }

    else if (v33 > -4.50359963e15)
    {
      v36 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
LABEL_31:
      v33 = (v36 >> 1);
    }

    v37 = v33;
    goto LABEL_33;
  }

  v37 = 0x7FFFFFFFFFFFFFFELL;
LABEL_33:
  v52 = v37;
  if (!sub_92C418(a1, v54, v53))
  {
    goto LABEL_41;
  }

  if (*(a1 + 1024) == 1)
  {
    v38 = *(a3 + 36);
    if ((v38 & 0x40000000) == 0)
    {
      v39 = *(a2 + 36);
      if ((v39 & 0x40000000) == 0 && ((v38 ^ v39) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }
  }

  v40 = sub_70DE94(a1 + 1432, v54, v53);
  v41 = sub_70E2E0(a1 + 1432, v54, v53);
  v31 = 0;
  v42 = *(a1 + 200);
  if (v42 <= a6 && fabs(v41) < v42)
  {
    if (fabs(v40) < *(a1 + 992))
    {
LABEL_41:
      v31 = 0;
      return v31 & 1;
    }

    v44 = *a1;
    v45 = *(a2 + 32);
    v46 = ((*(a2 + 36) & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (*(a2 + 36) << 32) | v45;
    sub_2B51D8(*a1, ((*(a2 + 36) & 0x20000000u) << 19) | (*(a2 + 36) << 32) & 0xFFFFFFFFFFFFLL | v45 & 0xFFFFFFFFFFFFLL);
    if (*(v44 + 7772) == 1)
    {
      sub_30C50C(v44 + 3896, v45, 0);
    }

    sub_31D7E8(v44, v46 & 0xFFFFFFFFFFFFLL, 1);
    v47 = *a1;
    v48 = *(a3 + 32);
    v49 = ((*(a3 + 36) & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (*(a3 + 36) << 32) | v48;
    sub_2B51D8(*a1, ((*(a3 + 36) & 0x20000000u) << 19) | (*(a3 + 36) << 32) & 0xFFFFFFFFFFFFLL | v48 & 0xFFFFFFFFFFFFLL);
    if (*(v47 + 7772) == 1)
    {
      sub_30C50C(v47 + 3896, v48, 0);
    }

    v31 = 1;
    sub_31D7E8(v47, v49 & 0xFFFFFFFFFFFFLL, 1);
    v50 = sub_394BD0();
    if (*a5 < *(a1 + 1016))
    {
      v31 = (v52 > *(a1 + 1000)) | v50 | v32;
    }
  }

  return v31 & 1;
}

BOOL sub_70144C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4D1F50(a2, a3);
  v10 = sub_4D1F50(a2, a4);
  v11 = *(a5 + 24);
  if (v11 == 4)
  {
    return 1;
  }

  if (*(a1 + 1024) == 1)
  {
    v13 = *(v10 + 36);
    switch(v11)
    {
      case 1u:
      case 0x14u:
      case 0x1Bu:
      case 0x1Du:
      case 0x21u:
      case 0x3Cu:
      case 0x3Eu:
      case 0x41u:
        if (*(v9 + 36) >> 30 == 2 || (v13 & 0xC0000000) == 0x80000000)
        {
          return 1;
        }

        if (v11 <= 0x3F && ((1 << v11) & 0xA000000450200004) != 0)
        {
          goto LABEL_11;
        }

        break;
      case 2u:
      case 0x15u:
      case 0x1Cu:
      case 0x1Eu:
      case 0x22u:
      case 0x3Du:
      case 0x3Fu:
      case 0x42u:
LABEL_11:
        if (*(v9 + 36) >> 30)
        {
          v15 = v13 >> 30 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          break;
        }

        return 1;
      default:
        break;
    }
  }

  v16 = *a1;
  v17 = *(v9 + 32);
  v18 = *(v9 + 36);
  v19 = ((v18 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v18 << 32) | v17;
  v20 = sub_2B51D8(*a1, ((v18 & 0x20000000u) << 19) | (v18 << 32) & 0xFFFFFFFFFFFFLL | v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v21 = sub_30C50C(v16 + 3896, v17, 0);
    v22 = &v21[-*v21];
    if (*v22 < 5u)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 2);
      if (v23)
      {
        v23 += &v21[*&v21[v23]];
      }
    }

    v24 = v23 + 4 * v18 + 4 + *(v23 + 4 * v18 + 4);
  }

  else
  {
    v24 = 0;
  }

  v35[0] = v20;
  v35[1] = v24;
  v35[2] = sub_31D7E8(v16, v19 & 0xFFFFFFFFFFFFLL, 1);
  v35[3] = v25;
  v35[4] = v19 ^ 0x1000000000000;
  v34[0] = a1;
  v34[1] = v35;
  v26 = sub_7017D8(a5, v34);
  result = 1;
  if (!v26)
  {
    v27 = *a5;
    v28 = *(a5 + 8);
    if (*a5 == v28)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v29 = *v27;
        v30 = *a1;
        v31 = sub_2B51D8(*a1, *v27 & 0xFFFFFFFFFFFFLL);
        if (*(v30 + 7772) == 1)
        {
          sub_30C50C(v30 + 3896, v29, 0);
        }

        sub_31D7E8(v30, v29 & 0xFFFFFFFFFFFFLL, 1);
        v32 = (v31 - *v31);
        if (*v32 >= 0x2Fu)
        {
          v33 = v32[23];
          if (v33)
          {
            if (*(v31 + v33) == 14)
            {
              break;
            }
          }
        }

        if (++v27 == v28)
        {
          return 0;
        }
      }

      return sub_71843C(a1 + 1432, a5, 0);
    }
  }

  return result;
}

BOOL sub_7017D8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *a1 + 8;
  do
  {
    v6 = *(v5 - 8);
    v7 = *v4;
    v8 = sub_2B51D8(*v4, v6 & 0xFFFFFFFFFFFFLL);
    if (*(v7 + 7772) == 1)
    {
      v9 = sub_30C50C(v7 + 3896, v6, 0);
      v10 = &v9[-*v9];
      if (*v10 < 5u)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v11 += &v9[*&v9[v11]];
        }
      }

      v12 = (v11 + ((v6 >> 30) & 0x3FFFC) + 4 + *(v11 + ((v6 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_31D7E8(v7, v6 & 0xFFFFFFFFFFFFLL, 1);
    v17[0] = v8;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v6;
    result = sub_718368((v4 + 179), v3, v17);
    if (result)
    {
      break;
    }

    v16 = v5 == v2;
    v5 += 8;
  }

  while (!v16);
  return result;
}

unint64_t sub_7018FC(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0x1000000000000;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0x1000000000000;
  *(a5 + 88) = *(a5 + 80);
  *(a5 + 104) = -1;
  *(a5 + 112) = 0;
  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v12 = *(v10 + 32);
  v13 = *(v10 + 36);
  v14 = ((v13 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v13 << 32) | v12;
  v15 = sub_2B51D8(*a1, ((v13 & 0x20000000u) << 19) | (v13 << 32) & 0xFFFFFFFFFFFFLL | v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v12, 0);
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

    v19 = v18 + 4 * v13 + 4 + *(v18 + 4 * v13 + 4);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_31D7E8(v11, v14 & 0xFFFFFFFFFFFFLL, 1);
  *a5 = v15;
  *(a5 + 8) = v19;
  *(a5 + 16) = v20;
  *(a5 + 24) = v21;
  *(a5 + 32) = v14 ^ 0x1000000000000;
  sub_743DA4(a1 + 935, a2, a3, a4, &v35);
  v22 = *(a5 + 80);
  if (v22)
  {
    *(a5 + 88) = v22;
    operator delete(v22);
  }

  v34 = *(&v35 + 1);
  *(a5 + 80) = v35;
  *(a5 + 96) = v36;
  v23 = a3 + 1;
  result = sub_4D1DC0(a2);
  if (a3 + 1 > result)
  {
    v25 = a3 + 1;
  }

  else
  {
    v25 = result;
  }

  if (v23 < result)
  {
    while (1)
    {
      result = sub_4D1F50(a2, v23);
      v27 = *(a5 + 80);
      v28 = *(a5 + 88);
      v26 = v27;
      if (v27 != v28)
      {
        v29 = *(result + 32);
        v30 = (v29 >> 61) & 1;
        v31 = HIDWORD(v29);
        v26 = *(a5 + 80);
        while (1)
        {
          v32 = *(v26 + 32);
          if (*(result + 32) == v32 && WORD2(*(v26 + 32)) == v31 && (v30 ^ BYTE6(v32)) == 1)
          {
            break;
          }

          v26 += 40;
          if (v26 == v28)
          {
            goto LABEL_16;
          }
        }
      }

      if (v26 != v28)
      {
        break;
      }

LABEL_16:
      if (++v23 == v25)
      {
        v26 = *(a5 + 88);
        break;
      }
    }
  }

  else
  {
    v26 = v34;
    v27 = *(a5 + 80);
  }

  *(a5 + 104) = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v27) >> 3);
  return result;
}

uint64_t sub_701B44(uint64_t a1, uint64_t a2, int ***a3, uint64_t a4)
{
  v19 = fabs(sub_70E2E0(a1 + 1432, a2, a4)) <= *(a1 + 200);
  v8 = sub_31DDCC(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  v9 = v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0;
  if (v9 || ((v10 = sub_31DDCC(*a1, *(a4 + 32) & 0xFFFFFFFFFFFFFFLL), v10 <= 0xFFFFFFFEFFFFFFFFLL) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_31EE90(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, *(a4 + 32) & 0xFFFFFFFFFFFFFFLL);
  }

  v18 = v12;
  v14 = *a3;
  v13 = a3[1];
  v17[0] = a4;
  v17[1] = a2;
  v17[2] = a1;
  v17[3] = &v19;
  v17[4] = &v18;
  if (v14 == v13)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v15 += sub_705A2C(v17, v14);
    v14 += 5;
  }

  while (v14 != v13);
  return v15;
}

uint64_t sub_701C5C(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  sub_2B365C(*a1, a2, 0, (*a1 + 7800));
  v3 = *(v2 + 7800);
  v4 = *(v2 + 7808);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

uint64_t sub_701DBC(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (*(a1 + 1076) != 1)
  {
    return 0;
  }

  v8 = a3;
  *(a6 + 24) = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a6 + 72) = v11;
  v83 = a6 + 72;
  *(a6 + 64) = 0;
  *(a6 + 88) = v11;
  *(a6 + 104) = v11;
  *(a6 + 120) = -1;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v11);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *(a6 + 192) = 0;
  v84 = (a6 + 192);
  *(a6 + 200) = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  v12 = sub_4D1F50(a2, a3);
  v86 = a1;
  v13 = *a1;
  v15 = *(v12 + 32);
  v14 = *(v12 + 36);
  v16 = ((v14 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v14 << 32) | v15;
  v17 = sub_2B51D8(v13, ((v14 & 0x20000000u) << 19) | (v14 << 32) & 0xFFFFFFFFFFFFLL | v15 & 0xFFFFFFFFFFFFLL);
  v18 = 0;
  if (*(v13 + 7772) == 1)
  {
    v19 = sub_30C50C(v13 + 3896, v15, 0);
    v20 = &v19[-*v19];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v19[*&v19[v21]];
      }
    }

    v18 = (v21 + 4 * v14 + 4 + *(v21 + 4 * v14 + 4));
  }

  v87[0] = v17;
  v87[1] = v18;
  v87[2] = sub_31D7E8(v13, ((v14 & 0x20000000u) << 19) | (v14 << 32) & 0xFFFFFFFFFFFFLL | v15 & 0xFFFFFFFFFFFFLL, 1);
  v87[3] = v22;
  v88 = v16 ^ 0x1000000000000;
  v23 = sub_605E3C(a4, a5);
  v24 = (v17 - *v17);
  v25 = *v24;
  if (v25 < 0x2F)
  {
    v30 = 0;
    v26 = v86;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 >= 0x2F)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

  v26 = v86;
  if (!v24[23])
  {
    v30 = 0;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 >= 0x2F)
    {
      goto LABEL_24;
    }

LABEL_55:
    if (!v30)
    {
      return 0;
    }

    goto LABEL_31;
  }

  v27 = *(v17 + v24[23]);
  v28 = v27 > 0x2B || ((1 << v27) & 0x80000001040) == 0;
  if (v28 || v25 >= 0x9B && (v29 = v24[77]) != 0 && (*(v17 + v29 + 2) & 0x20) != 0)
  {
    v30 = v27 == 44;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 < 0x2F)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v30 = 1;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 < 0x2F)
    {
      goto LABEL_55;
    }
  }

LABEL_24:
  if (!v32[23])
  {
    goto LABEL_55;
  }

  v34 = *(v31 + v32[23]);
  if (v34 <= 0x2B && ((1 << v34) & 0x80000001040) != 0 && (v33 < 0x9B || (v35 = v32[77]) == 0 || (*(v31 + v35 + 2) & 0x20) == 0))
  {
    if (!v30)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v30 == (v34 == 44))
  {
    return 0;
  }

LABEL_31:
  v81 = v16 ^ 0x1000000000000;
  v82 = v23;
  v36 = v23[4];
  v37 = sub_70E2E0(v26 + 1432, v87, v23);
  v38 = sub_4D1DC0(a2);
  if (v8 <= v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v8;
  }

  if (v38 > v8)
  {
    while (1)
    {
      v41 = sub_4D1F50(a2, v8);
      v42 = *v26;
      v43 = *(v41 + 32);
      v44 = *(v41 + 36);
      v45 = ((v44 & 0x20000000) << 19) | (v44 << 32) | v43;
      sub_2B51D8(*v26, v45 & 0xFFFFFFFFFFFFLL);
      if (*(v42 + 7772) == 1)
      {
        sub_30C50C(v42 + 3896, v43, 0);
      }

      v46 = v45 ^ 0x1000000000000;
      sub_31D7E8(v42, v45 & 0xFFFFFFFFFFFFLL, 1);
      if (v43 == v36 && WORD2(v36) == v44 && HIWORD(v46) == BYTE6(v36))
      {
        break;
      }

      v48 = *(a6 + 8);
      v47 = *(a6 + 16);
      if (v48 < v47)
      {
        *v48 = v46;
        v40 = (v48 + 1);
      }

      else
      {
        v49 = *a6;
        v50 = v48 - *a6;
        v51 = v50 >> 3;
        v52 = (v50 >> 3) + 1;
        if (v52 >> 61)
        {
          goto LABEL_103;
        }

        v53 = v47 - v49;
        if (v53 >> 2 > v52)
        {
          v52 = v53 >> 2;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v54 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          if (!(v54 >> 61))
          {
            operator new();
          }

          goto LABEL_104;
        }

        *(8 * v51) = v46;
        v40 = 8 * v51 + 8;
        memcpy(0, v49, v50);
        *a6 = 0;
        *(a6 + 8) = v40;
        *(a6 + 16) = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      v26 = v86;
      *(a6 + 8) = v40;
      if (v39 == ++v8)
      {
        goto LABEL_73;
      }
    }

    v56 = v36 & 0xFFFFFFFFFFFFFFLL;
    v58 = *(a6 + 8);
    v57 = *(a6 + 16);
    if (v58 >= v57)
    {
      v60 = *a6;
      v61 = v58 - *a6;
      v62 = v61 >> 3;
      v63 = (v61 >> 3) + 1;
      if (v63 >> 61)
      {
LABEL_103:
        sub_1794();
      }

      v64 = v57 - v60;
      if (v64 >> 2 > v63)
      {
        v63 = v64 >> 2;
      }

      if (v64 >= 0x7FFFFFFFFFFFFFF8)
      {
        v65 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        if (!(v65 >> 61))
        {
          operator new();
        }

LABEL_104:
        sub_1808();
      }

      *(8 * v62) = v56;
      v59 = 8 * v62 + 8;
      memcpy(0, v60, v61);
      *a6 = 0;
      *(a6 + 8) = v59;
      *(a6 + 16) = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v58 = v56;
      v59 = (v58 + 1);
    }

    v26 = v86;
    *(a6 + 8) = v59;
  }

LABEL_73:
  if (sub_71843C(v26 + 1432, a6, 1))
  {
    goto LABEL_102;
  }

  v66 = sub_31DDCC(*v26, v81);
  v67 = 0;
  if (v66 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v68 = v82;
    v71 = v87[0];
    v72 = (v87[0] - *v87[0]);
    v73 = *v72;
    if (v73 < 0x2F)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v68 = v82;
    if (v66)
    {
      v69 = sub_31DDCC(*v26, v82[4] & 0xFFFFFFFFFFFFFFLL);
      v67 = v69 < 0xFFFFFFFF00000000 && v69 != 0;
    }

    v71 = v87[0];
    v72 = (v87[0] - *v87[0]);
    v73 = *v72;
    if (v73 < 0x2F)
    {
      goto LABEL_87;
    }
  }

  v74 = v72[23];
  if (v72[23] && *(v71 + v72[23]) != 32)
  {
    goto LABEL_92;
  }

LABEL_87:
  v75 = (*v68 - **v68);
  if (*v75 < 0x2Fu || (v76 = v75[23]) == 0 || *(*v68 + v76) != 44)
  {
    if (v73 < 0x2F)
    {
      goto LABEL_102;
    }

    v74 = v72[23];
    if (!v72[23])
    {
      goto LABEL_102;
    }

LABEL_92:
    if (*(v71 + v74) != 44)
    {
      goto LABEL_102;
    }

    v77 = (*v68 - **v68);
    if (*v77 >= 0x2Fu)
    {
      v78 = v77[23];
      if (v78)
      {
        if (*(*v68 + v78) != 32)
        {
          goto LABEL_102;
        }
      }
    }
  }

  v79 = fabs(v37);
  if (v67 && sub_31EE90(*v26, v88 & 0xFFFFFFFFFFFFFFLL, v68[4] & 0xFFFFFFFFFFFFFFLL) && v79 < *(v26 + 1080))
  {
    *(a6 + 24) = 3;
    *(a6 + 225) = 257;
    *(v26 + 176) = 5;
    return 1;
  }

  if (v79 < *(v26 + 184))
  {
    *(a6 + 24) = 3;
    result = 1;
    *(a6 + 226) = 1;
    *(v26 + 176) = 5;
    return result;
  }

LABEL_102:
  result = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v80.f64[0] = NAN;
  v80.f64[1] = NAN;
  *v83 = v80;
  *(v83 + 16) = v80;
  *(v83 + 32) = v80;
  *(v83 + 48) = -1;
  *(a6 + 24) = 0;
  *(a6 + 64) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v80);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *v84 = 0;
  v84[1] = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  return result;
}

void sub_70253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_605E3C((a3 + 80), *(a3 + 104));
  v4 = *(v3 + 16);
  v5 = *v3;
  v6 = v4;
  v7 = *(v3 + 32);
  operator new();
}

void sub_702608(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_702624(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xEF7BDEF7BDEF7BDFLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 248 * a2;
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v10 = vnegq_f64(v9);
      do
      {
        *(v2 + 32) = 0uLL;
        *(v2 + 48) = 0uLL;
        *(v2 + 240) = 0;
        *(v2 + 192) = 0uLL;
        *(v2 + 208) = 0uLL;
        *(v2 + 160) = 0uLL;
        *(v2 + 176) = 0uLL;
        *(v2 + 128) = 0uLL;
        *(v2 + 144) = 0uLL;
        *(v2 + 96) = 0uLL;
        *(v2 + 112) = 0uLL;
        *(v2 + 64) = 0uLL;
        *(v2 + 80) = 0uLL;
        *v2 = 0uLL;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = -1;
        *(v2 + 40) = 0;
        *(v2 + 48) = 0;
        *(v2 + 56) = 0;
        *(v2 + 64) = 0;
        *(v2 + 120) = -1;
        *(v2 + 104) = v9;
        *(v2 + 88) = v9;
        *(v2 + 72) = v9;
        *(v2 + 136) = -1;
        *(v2 + 160) = v10;
        *(v2 + 184) = 98;
        *(v2 + 192) = 0;
        *(v2 + 200) = 0;
        *(v2 + 208) = xmmword_229B660;
        *(v2 + 224) = 0uLL;
        *(v2 + 238) = 0;
        *(v2 + 232) = 0;
        v2 += 248;
      }

      while (v2 != v8);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xEF7BDEF7BDEF7BDFLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0x108421084210842)
    {
      sub_1794();
    }

    v6 = 0xEF7BDEF7BDEF7BDFLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x84210842108421)
    {
      v7 = 0x108421084210842;
    }

    else
    {
      v7 = v5;
    }

    v23 = a1;
    if (v7)
    {
      if (v7 <= 0x108421084210842)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 248 * v4;
    __p = 0;
    v20 = 248 * v4;
    v22 = 0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v13 = vnegq_f64(v12);
    do
    {
      *(v11 + 32) = 0uLL;
      *(v11 + 48) = 0uLL;
      *(v11 + 240) = 0;
      *(v11 + 192) = 0uLL;
      *(v11 + 208) = 0uLL;
      *(v11 + 160) = 0uLL;
      *(v11 + 176) = 0uLL;
      *(v11 + 128) = 0uLL;
      *(v11 + 144) = 0uLL;
      *(v11 + 96) = 0uLL;
      *(v11 + 112) = 0uLL;
      *(v11 + 64) = 0uLL;
      *(v11 + 80) = 0uLL;
      *v11 = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = -1;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 120) = -1;
      *(v11 + 104) = v12;
      *(v11 + 88) = v12;
      *(v11 + 72) = v12;
      *(v11 + 136) = -1;
      *(v11 + 160) = v13;
      *(v11 + 184) = 98;
      *(v11 + 192) = 0;
      *(v11 + 200) = 0;
      *(v11 + 208) = xmmword_229B660;
      *(v11 + 224) = 0uLL;
      *(v11 + 238) = 0;
      *(v11 + 232) = 0;
      v11 += 248;
    }

    while (v11 != 248 * v4 + 248 * a2);
    v21 = 248 * v4 + 248 * a2;
    sub_7028CC(a1, &__p);
    v14 = v20;
    while (1)
    {
      v15 = v21;
      if (v21 == v14)
      {
        break;
      }

      v16 = (v21 - 248);
      v21 -= 248;
      v17 = *(v15 - 208);
      if (v17)
      {
        *(v15 - 200) = v17;
        operator delete(v17);
      }

      v18 = *v16;
      if (*v16)
      {
        *(v15 - 240) = v18;
        operator delete(v18);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_7028B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

void sub_7028CC(uint64_t *a1, void *a2)
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
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v8 + 64) = *(v7 + 64);
      v9 = *(v7 + 72);
      v10 = *(v7 + 88);
      *(v8 + 104) = *(v7 + 104);
      *(v8 + 88) = v10;
      *(v8 + 72) = v9;
      v11 = *(v7 + 120);
      v12 = *(v7 + 136);
      v13 = *(v7 + 152);
      *(v8 + 168) = *(v7 + 168);
      *(v8 + 152) = v13;
      *(v8 + 136) = v12;
      *(v8 + 120) = v11;
      v14 = *(v7 + 184);
      v15 = *(v7 + 200);
      v16 = *(v7 + 216);
      *(v8 + 230) = *(v7 + 230);
      *(v8 + 216) = v16;
      *(v8 + 200) = v15;
      *(v8 + 184) = v14;
      v7 += 248;
      v8 += 248;
    }

    while (v7 != v4);
    do
    {
      v17 = *(v5 + 40);
      if (v17)
      {
        *(v5 + 48) = v17;
        operator delete(v17);
      }

      v18 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v18;
        operator delete(v18);
      }

      v5 += 248;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v19 = *a1;
  *a1 = v6;
  a1[1] = v19;
  a2[1] = v19;
  v20 = a1[1];
  a1[1] = a2[2];
  a2[2] = v20;
  v21 = a1[2];
  a1[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
}

uint64_t sub_702A44(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 248);
    *(a1 + 16) = i - 248;
    v5 = *(i - 208);
    if (v5)
    {
      *(i - 200) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 240) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_702ABC(unsigned int *a1, unsigned int *a2, uint64_t *a3, _DWORD *a4, uint64_t a5, int a6)
{
  v9.i64[0] = *a1;
  v9.i64[1] = HIDWORD(*a1);
  v10 = vcvtq_f64_u64(v9);
  v9.i64[0] = *a2;
  v9.i64[1] = HIDWORD(*a2);
  v11 = vsubq_f64(vcvtq_f64_u64(v9), v10);
  v12 = vmulq_f64(v11, v11);
  v13 = vaddvq_f64(v12);
  if (v13 == 0.0)
  {
    goto LABEL_5;
  }

  if (v13 <= 0.0)
  {
    v13 = -v13;
  }

  if (v13 < 2.22044605e-16)
  {
LABEL_5:
    v14 = 0.0;
  }

  else
  {
    v20.i64[0] = *a3;
    v20.i64[1] = HIDWORD(*a3);
    v21 = vmulq_f64(v11, vsubq_f64(vcvtq_f64_u64(v20), v10));
    *&v14 = *&vdivq_f64(vaddq_f64(v21, vdupq_laneq_s64(v21, 1)), vaddq_f64(v12, vdupq_laneq_s64(v12, 1)));
  }

  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = v14;
  }

  v16 = v14 < 0.0;
  v17 = 0.0;
  if (!v16)
  {
    v17 = v15;
  }

  *a4 = sub_6EFC0(a1, a2, v17);
  a4[2] = v19;
  if (!a6)
  {

    sub_314EC(a3, a4, v18);
  }
}

uint64_t sub_702C20(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  v26 = a1;
  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 248 * v2;
  __p = 0;
  v23 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 64) = *(a2 + 64);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 88) = v8;
  *(v6 + 72) = v7;
  v9 = *(a2 + 120);
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(v6 + 152) = v11;
  *(v6 + 136) = v10;
  *(v6 + 120) = v9;
  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  *(v6 + 230) = *(a2 + 230);
  *(v6 + 216) = v14;
  *(v6 + 200) = v13;
  *(v6 + 184) = v12;
  v24 = 248 * v2 + 248;
  v25 = 0;
  sub_7028CC(a1, &__p);
  v15 = a1[1];
  v16 = v23;
  while (1)
  {
    v17 = v24;
    if (v24 == v16)
    {
      break;
    }

    v18 = (v24 - 248);
    v24 -= 248;
    v19 = *(v17 - 208);
    if (v19)
    {
      *(v17 - 200) = v19;
      operator delete(v19);
    }

    v20 = *v18;
    if (*v18)
    {
      *(v17 - 240) = v20;
      operator delete(v20);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v15;
}

void sub_702E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

char *sub_702E20(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 2)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 2);
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v7 - v9;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v31 = (__dst - v9);
    v32 = 4 * ((__dst - v9) >> 2);
    v33 = (v32 + 4 * a5);
    v34 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v31 - __src) >= 0x20)
    {
      v58 = v34 + 1;
      v59 = (v34 + 1) & 0x7FFFFFFFFFFFFFF8;
      v35 = (v32 + 4 * v59);
      v36 = &__src[4 * v59];
      v60 = (__src + 16);
      v61 = (v32 + 16);
      v62 = v59;
      do
      {
        v63 = *v60;
        *(v61 - 1) = *(v60 - 1);
        *v61 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 8;
      }

      while (v62);
      if (v58 == v59)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v35 = v32;
      v36 = __src;
    }

    do
    {
      v37 = *v36;
      v36 += 4;
      *v35++ = v37;
    }

    while (v35 != v33);
LABEL_31:
    v38 = *(a1 + 8) - __dst;
    memcpy((v32 + 4 * a5), __dst, v38);
    v40 = v33 + v38;
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v32 - v42;
    memcpy((v32 - v42), *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 2;
  if (v14 >= a5)
  {
    v17 = 4 * a5;
    v18 = &__dst[4 * a5];
    v19 = (v8 - 4 * a5);
    if (v19 >= v8)
    {
      v23 = *(a1 + 8);
    }

    else
    {
      v20 = v19 + 1;
      if (v8 > (v19 + 1))
      {
        v20 = *(a1 + 8);
      }

      v21 = &v20[v17 / 4] + ~v8;
      v22 = v21 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v23 = *(a1 + 8);
      if (v22)
      {
        goto LABEL_74;
      }

      v24 = (v21 >> 2) + 1;
      v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
      v19 = (v19 + v25);
      v23 = (v8 + v25);
      v26 = (v8 + 16);
      v27 = (v8 + 16 - v17);
      v28 = v24 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_74:
        do
        {
          v30 = *v19++;
          *v23++ = v30;
        }

        while (v19 < v8);
      }
    }

    *(a1 + 8) = v23;
    if (v8 != v18)
    {
      v52 = v8 - v18;
      v53 = (v8 - v52);
      v54 = __src;
      memmove(v53, __dst, v52 - 1);
      __src = v54;
    }

    v55 = v5;
    v56 = __src;
    v57 = v17 - 1;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v44 = &__src[v13];
    v45 = a4 - v15 - 4;
    if (v45 < 0x1C)
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v16 = *(a1 + 8);
      if (v8 - v15 >= 0x20)
      {
        v46 = (v45 >> 2) + 1;
        v47 = 4 * (v46 & 0x7FFFFFFFFFFFFFF8);
        v44 = &v15[v47];
        v16 = v8 + v47;
        v48 = (v8 + 16);
        v49 = (v15 + 16);
        v50 = v46 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v51 = *v49;
          *(v48 - 1) = *(v49 - 1);
          *v48 = v51;
          v48 += 2;
          v49 += 2;
          v50 -= 8;
        }

        while (v50);
        if (v46 == (v46 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v64 = *v44;
      v44 += 4;
      *v16 = v64;
      v16 += 4;
    }

    while (v44 != a4);
  }

LABEL_50:
  *(a1 + 8) = v16;
  if (v14 >= 1)
  {
    v65 = a5;
    v66 = &__dst[4 * a5];
    v67 = (v16 - 4 * a5);
    v68 = __src;
    if (v67 >= v8)
    {
      v72 = v16;
    }

    else
    {
      v69 = v67 + 1;
      if (v8 > (v67 + 1))
      {
        v69 = v8;
      }

      v70 = &v69[v65] + ~v16;
      v71 = v70 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v72 = v16;
      if (v71)
      {
        goto LABEL_75;
      }

      v73 = (v70 >> 2) + 1;
      v74 = 4 * (v73 & 0x7FFFFFFFFFFFFFF8);
      v67 = (v67 + v74);
      v72 = (v16 + v74);
      v75 = (v16 + 16);
      v76 = (v16 + 16 - v65 * 4);
      v77 = v73 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v78 = *v76;
        *(v75 - 1) = *(v76 - 1);
        *v75 = v78;
        v75 += 2;
        v76 += 2;
        v77 -= 8;
      }

      while (v77);
      if (v73 != (v73 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_75:
        do
        {
          v79 = *v67++;
          *v72++ = v79;
        }

        while (v67 < v8);
      }
    }

    *(a1 + 8) = v72;
    if (v16 != v66)
    {
      memmove(v66, __dst, v16 - v66 - 1);
    }

    if (v8 != v5)
    {
      v57 = v13 - 1;
      v55 = v5;
      v56 = v68;
LABEL_68:
      memmove(v55, v56, v57);
    }
  }

  return v5;
}

unint64_t sub_703240(uint64_t **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = sub_2B51D8(v3, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    v6 = sub_30C50C(v3 + 3896, v4, 0);
    v7 = &v6[-*v6];
    if (*v7 < 5u)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        v8 += &v6[*&v6[v8]];
      }
    }

    v9 = (v8 + ((v4 >> 30) & 0x3FFFC) + 4 + *(v8 + ((v4 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v9 = 0;
  }

  v15[0] = v5;
  v15[1] = v9;
  v15[2] = sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v15[3] = v10;
  v15[4] = v4;
  v11 = (v5 - *v5);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && (v13 = *(v5 + v12) - 14, v13 < 0x1F) && ((0x54100001u >> v13) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return sub_6AA260((v2 + 460), v15);
  }
}

BOOL sub_70337C(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  sub_320200(**a1, *a2, &v23);
  v5 = v23;
  if (v23 != v24)
  {
    v6 = 0;
    v7 = *(*(a1 + 8) + 32);
    v8 = v23;
    do
    {
      if (__PAIR64__(*(v8 + 2), *v8) == __PAIR64__(WORD2(v7), v7) && BYTE6(v7) == *(v8 + 6))
      {
        ++v6;
      }

      v8 += 2;
    }

    while (v8 != v24);
    if (v6)
    {
      v9 = *(*(a1 + 16) + 32);
      if (__PAIR64__(*(v24 - 2), *(v24 - 2)) == __PAIR64__(WORD2(v9), v9) && *(v24 - 2) == BYTE6(v9))
      {
        v10 = sub_30CC30(*v4, *a2);
        v11 = (v10 - *v10);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v13 = (v10 + v12 + *(v10 + v12));
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_7035EC(&__p, *v13);
        v26 = v13 + 1;
        v25 = &v13[*v13 + 1];
        sub_703864(&v26, &v25, &__p, sub_31095C);
        v15 = __p;
        v14 = v21;
        if (__p == v21)
        {
          v17 = 0;
          v18 = __p;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = __p;
          while (*(v16 + 48) != 1)
          {
            v16 += 16;
            if (v16 == v21)
            {
              v16 = v21;
              break;
            }
          }

          v17 = v16 != v21;
          if (!__p)
          {
LABEL_27:
            v5 = v23;
            if (!v23)
            {
              return v17;
            }

            goto LABEL_22;
          }

          do
          {
            v14 = sub_31104C(v14 - 16);
          }

          while (v14 != v15);
          v18 = __p;
        }

        v21 = v15;
        operator delete(v18);
        goto LABEL_27;
      }
    }
  }

  v17 = 0;
  if (v23)
  {
LABEL_22:
    v24 = v5;
    operator delete(v5);
  }

  return v17;
}

void sub_703564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_703590(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_703590(void **a1)
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
        v3 = sub_31104C(v3 - 16);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_7035EC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_7036B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_703810(va);
  _Unwind_Resume(a1);
}

void ***sub_7036C4(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = *v8;
      *(v9 + 2) = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 24) = *(v8 + 3);
      *(v9 + 5) = v8[5];
      v8[4] = 0;
      v8[5] = 0;
      v8[3] = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 7) = 0;
      *(v9 + 56) = *(v8 + 7);
      *(v9 + 9) = v8[9];
      v8[7] = 0;
      v8[8] = 0;
      v8[9] = 0;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 5) = *(v8 + 5);
      *(v9 + 12) = v8[12];
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      *(v9 + 104) = *(v8 + 13);
      *(v9 + 15) = v8[15];
      v8[13] = 0;
      v8[14] = 0;
      v8[15] = 0;
      v8 += 16;
      v9 += 128;
    }

    while (v8 != v5);
    do
    {
      result = sub_31104C(result) + 16;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_703810(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    sub_31104C((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_703864(unsigned int **a1, unsigned int **a2, void *a3, void (*a4)(__int128 *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v12, *a1 + **a1);
    while (1)
    {
      v10 = a3[1];
      if (v10 < a3[2])
      {
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *v10 = 0;
        *(v10 + 8) = 0;
        *v10 = v12;
        *(v10 + 16) = v13;
        v12 = 0uLL;
        v13 = 0;
        *(v10 + 32) = 0;
        *(v10 + 40) = 0;
        *(v10 + 24) = v14;
        *(v10 + 40) = v15;
        v14 = 0uLL;
        v15 = 0;
        *(v10 + 48) = v16;
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 56) = v17;
        *(v10 + 72) = v18;
        v17 = 0uLL;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v10 + 80) = v19;
        *(v10 + 96) = v20;
        *(v10 + 104) = 0;
        v18 = 0;
        v19 = 0uLL;
        v20 = 0;
        *(v10 + 112) = 0;
        *(v10 + 120) = 0;
        *(v10 + 104) = v21;
        *(v10 + 120) = v22;
        v21 = 0uLL;
        v22 = 0;
        v8 = v10 + 128;
        a3[1] = v10 + 128;
      }

      else
      {
        v8 = sub_7039C8(a3, &v12);
      }

      a3[1] = v8;
      sub_31104C(&v12);
      v9 = *a1 + 1;
      *a1 = v9;
      if (v9 == *a2)
      {
        break;
      }

      a4(&v12, v9 + *v9);
    }
  }

  return a3;
}

uint64_t sub_7039C8(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 7;
  __p = 0;
  v13 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v7 + 104) = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v14 = (v2 << 7) + 128;
  v15 = 0;
  sub_7036C4(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 128;
    sub_31104C((i - 128));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_703B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_703810(va);
  _Unwind_Resume(a1);
}

char *sub_703B54(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x3333333333333333 * ((v9 - *a1) >> 3);
    if (v11 > 0x666666666666666)
    {
      sub_1794();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v33 = 8 * ((__dst - v10) >> 3);
    v34 = 40 * a5;
    v35 = v33 + 40 * a5;
    v36 = v33;
    do
    {
      v37 = *v6;
      v38 = *(v6 + 1);
      *(v36 + 32) = *(v6 + 4);
      *v36 = v37;
      *(v36 + 16) = v38;
      v36 += 40;
      v6 += 40;
      v34 -= 40;
    }

    while (v34);
    v39 = *(a1 + 8) - __dst;
    memcpy((v33 + 40 * a5), __dst, v39);
    v40 = v35 + v39;
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v33 - v42;
    memcpy((v33 - v42), *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v33;
  }

  v14 = v9 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - __dst) >> 3)) >= a5)
  {
    v14 = 40 * a5;
    v28 = &__dst[40 * a5];
    v29 = v9 - 40 * a5;
    for (i = *(a1 + 8); v29 < v9; i += 40)
    {
      v31 = *v29;
      v32 = *(v29 + 16);
      *(i + 32) = *(v29 + 32);
      *i = v31;
      *(i + 16) = v32;
      v29 += 40;
    }

    *(a1 + 8) = i;
    if (v9 == v28)
    {
      goto LABEL_27;
    }

    v26 = v9 - v28;
    v27 = &__dst[40 * a5];
    goto LABEL_26;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &v5[40 * a5];
    v20 = v9 + v15;
    if (&v18[-40 * a5] < v9)
    {
      v21 = &v5[a4];
      v22 = &v5[a4 + -40 * a5];
      do
      {
        v23 = v21 - v6;
        v24 = *(v22 - v6);
        v25 = *(v22 - v6 + 16);
        *(v23 + 32) = *(v22 - v6 + 32);
        *v23 = v24;
        *(v23 + 16) = v25;
        v22 += 40;
        v21 += 40;
      }

      while (v22 - v6 < v9);
      v20 = v21 - v6;
    }

    *(a1 + 8) = v20;
    if (v18 == v19)
    {
      goto LABEL_27;
    }

    v26 = v18 - v19;
    v27 = &v5[40 * a5];
LABEL_26:
    memmove(v27, v5, v26);
LABEL_27:
    memmove(v5, v6, v14);
  }

  return v5;
}

_DWORD *sub_703E1C(uint64_t a1, char *__src, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = __src;
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2)) >= a5)
    {
      v15 = v10 - __src;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __src) >> 2);
      if (v16 >= a5)
      {
        v31 = &__src[12 * a5];
        v32 = &v10[-12 * a5];
        for (i = *(a1 + 8); v32 < v10; v32 += 12)
        {
          v34 = *v32;
          *(i + 8) = *(v32 + 2);
          *i = v34;
          i += 12;
        }

        *(a1 + 8) = i;
        if (v10 != v31)
        {
          memmove(&__src[12 * a5], __src, v10 - v31);
        }

        v35 = a3[1];
        v60 = *a3;
        v61 = v35;
        v36 = a3[3];
        v62 = a3[2];
        v63 = v36;
        *v5 = sub_318DA8(&v60);
        v5[2] = v37;
        if (a5 != 1)
        {
          v38 = v5 + 5;
          v39 = a5 + 1;
          do
          {
            if (BYTE8(v63))
            {
              sub_31EA68(&v60);
            }

            else
            {
              sub_31E948(&v60);
            }

            *(v38 - 1) = sub_318DA8(&v60);
            *v38 = v40;
            v38 += 3;
            --v39;
          }

          while (v39 > 2);
        }
      }

      else
      {
        v18 = a3[1];
        v60 = *a3;
        v61 = v18;
        v19 = a3[3];
        v62 = a3[2];
        v63 = v19;
        v20 = v10;
        if (v15 >= 1)
        {
          v21 = v16 + 1;
          do
          {
            while (BYTE8(v63))
            {
              sub_31EA68(&v60);
              if (--v21 <= 1)
              {
                goto LABEL_18;
              }
            }

            sub_31E948(&v60);
            --v21;
          }

          while (v21 > 1);
LABEL_18:
          v20 = *(a1 + 8);
        }

        v56 = v60;
        v57 = v61;
        v58 = v62;
        v59 = v63;
        v22 = *(a4 + 48);
        v23 = *(a4 + 52);
        if (v63 == __PAIR64__(v23, v22))
        {
          v24 = v20;
        }

        else
        {
          v24 = v20;
          do
          {
            *v24 = sub_318DA8(&v60);
            *(v24 + 2) = v55;
            if (BYTE8(v63))
            {
              sub_31EA68(&v60);
            }

            else
            {
              sub_31E948(&v60);
            }

            v24 += 12;
          }

          while (v63 != v22 || DWORD1(v63) != v23);
        }

        *(a1 + 8) = v24;
        if (v15 >= 1)
        {
          v25 = &v5[3 * a5];
          v26 = &v24[-12 * a5];
          for (j = v24; v26 < v10; v26 += 12)
          {
            v28 = *v26;
            *(j + 2) = *(v26 + 8);
            *j = v28;
            j += 12;
          }

          *(a1 + 8) = j;
          if (v24 != v25)
          {
            memmove(&v5[3 * a5], v5, v24 - v25);
          }

          v29 = a3[1];
          v65[0] = *a3;
          v65[1] = v29;
          v30 = a3[3];
          v65[2] = a3[2];
          v65[3] = v30;
          v64[0] = v56;
          v64[1] = v57;
          v64[2] = v58;
          v64[3] = v59;
          sub_704264(v65, v64, v5, &v60);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * (&v10[-*a1] >> 2);
      if (v12 > 0x1555555555555555)
      {
        sub_1794();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 2);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xAAAAAAAAAAAAAAALL)
      {
        v14 = 0x1555555555555555;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v41 = 4 * ((__src - v11) >> 2);
      v42 = v41;
      v43 = a3[1];
      v60 = *a3;
      v61 = v43;
      v44 = a3[3];
      v62 = a3[2];
      v63 = v44;
      v45 = (v41 + 12 * a5);
      do
      {
        v46 = v41;
        *v41 = sub_318DA8(&v60);
        *(v41 + 8) = v47;
        if (BYTE8(v63))
        {
          sub_31EA68(&v60);
        }

        else
        {
          sub_31E948(&v60);
        }

        v41 += 12;
      }

      while ((v46 + 12) != v45);
      v48 = *(a1 + 8) - v5;
      memcpy(v45, v5, v48);
      v49 = &v45[v48];
      *(a1 + 8) = v5;
      v50 = *a1;
      v51 = v5 - *a1;
      v52 = v42 - v51;
      memcpy((v42 - v51), *a1, v51);
      *a1 = v52;
      *(a1 + 8) = v49;
      *(a1 + 16) = 0;
      if (v50)
      {
        operator delete(v50);
      }

      return v42;
    }
  }

  return v5;
}