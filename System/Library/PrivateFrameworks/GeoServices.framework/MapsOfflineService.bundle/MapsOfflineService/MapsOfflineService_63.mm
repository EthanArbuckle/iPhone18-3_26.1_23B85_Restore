void sub_40C1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_3DB674(&a13);
  sub_3DB674(&a23);
  sub_3DB6B8((v53 - 224));
  _Unwind_Resume(a1);
}

void sub_40C268(unsigned int *a1@<X1>, int a2@<W2>, int a3@<W3>, void **a4@<X8>)
{
  if (a1)
  {
    v6 = *a1;
    if (v6)
    {
      v7 = a3;
      v9 = 0;
      *a4 = 0;
      a4[1] = 0;
      v10 = 4 * v6;
      a4[2] = 0;
      while (1)
      {
        v12 = a1[v9 / 4 + 1];
        v13 = v12 - *(&a1[v9 / 4 + 1] + v12);
        v14 = &a1[v9 / 4] + v13;
        v15 = *(v14 + 2);
        if (v15 >= 5 && (v16 = *(v14 + 4)) != 0)
        {
          if ((a2 != 0) == (*(&a1[v9 / 4 + 1] + v12 + v16) != 0))
          {
            goto LABEL_6;
          }
        }

        else if (!a2)
        {
          goto LABEL_6;
        }

        if (v15 >= 7 && *(&a1[v9 / 4 + 2] + v13 + 2))
        {
          if (*(&a1[v9 / 4 + 1] + v12 + *(&a1[v9 / 4 + 2] + v13 + 2)) != v7)
          {
            goto LABEL_6;
          }
        }

        else if (v7)
        {
          goto LABEL_6;
        }

        if (v15 >= 9 && (v17 = *(&a1[v9 / 4 + 3] + v13)) != 0)
        {
          v18 = a1 + v12 + v17 + v9 + *(&a1[v9 / 4 + 1] + v12 + v17);
          v19 = *(v18 + 1);
          if (v19 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v31) = *(v18 + 1);
          if (v19)
          {
            memcpy(&__dst, v18 + 8, v19);
            *(&__dst + v19) = 0;
            v21 = a4[1];
            v20 = a4[2];
            if (v21 >= v20)
            {
LABEL_27:
              v22 = *a4;
              v23 = v21 - *a4;
              v24 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 3) + 1;
              if (v24 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3);
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0x555555555555555)
              {
                v26 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v26 = v24;
              }

              if (v26)
              {
                if (v26 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v27 = 8 * (v23 >> 3);
              *v27 = __dst;
              *(v27 + 16) = v31;
              v11 = v27 + 24;
              v28 = v27 - v23;
              memcpy((v27 - v23), v22, v23);
              *a4 = v28;
              a4[2] = 0;
              if (v22)
              {
                operator delete(v22);
              }

              v7 = a3;
              goto LABEL_5;
            }
          }

          else
          {
            *(&__dst + v19) = 0;
            v21 = a4[1];
            v20 = a4[2];
            if (v21 >= v20)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          HIBYTE(v31) = 0;
          LOBYTE(__dst) = 0;
          v21 = a4[1];
          v20 = a4[2];
          if (v21 >= v20)
          {
            goto LABEL_27;
          }
        }

        *v21 = __dst;
        *(v21 + 2) = v31;
        v11 = (v21 + 24);
LABEL_5:
        a4[1] = v11;
LABEL_6:
        v9 += 4;
        if (v10 == v9)
        {
          return;
        }
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_40C574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v15);
  _Unwind_Resume(a1);
}

int *sub_40C59C@<X0>(int *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = HIDWORD(a2);
  if (HIDWORD(a2) == 0xFFFFFFFF)
  {
    goto LABEL_12;
  }

  result = sub_31E394((result + 974), a2, 0);
  v5 = (result + *(result - *result + 4));
  v6 = &v5[v4] + *v5;
  v7 = (v6 + 4 + *(v6 + 4));
  v8 = (v7 + *(v7 - *v7 + 4));
  v9 = (v8 + *v8 + *(v8 + *v8 + 4) + 4);
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0xB)
  {
    if (v11 < 5)
    {
LABEL_12:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }
  }

  else if (v10[5] && *(v9 + v10[5]))
  {
    goto LABEL_12;
  }

  v12 = v10[2];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = (v9 + v12);
  v14 = *v13;
  v15 = *(v13 + v14);
  if (v15 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v15;
  if (v15)
  {
    result = memcpy(a3, v13 + v14 + 4, v15);
  }

  *(a3 + v15) = 0;
  return result;
}

uint64_t sub_40C6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t **a4@<X3>, int **a5@<X8>)
{
  v8 = a2 & 0xFF000000000000;
  if (a3)
  {
    v10 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, v8 != 0);
    result = sub_2B365C(a1, v10, a3, (a1 + 7800));
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    v12 = *(a1 + 7800);
    v13 = *(a1 + 7808);
    if (v13 != v12)
    {
      if (v13 - v12 >= 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v14 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, v8 == 0);
    result = sub_2B365C(a1, v14, 0, (a1 + 7800));
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    v15 = *(a1 + 7800);
    v16 = *(a1 + 7808);
    if (v16 != v15)
    {
      if (v16 - v15 >= 0)
      {
LABEL_4:
        operator new();
      }

LABEL_7:
      sub_1794();
    }
  }

  v17 = a5[1];
  if (*a5 == v17)
  {
    v18 = *a5;
    goto LABEL_24;
  }

  v18 = *a5;
  while (1)
  {
    v19 = **a4;
    if ((*v18 & 0xFFFFFFFFFFFFLL) == (v19 & 0xFFFFFFFFFFFFLL) && ((v19 & 0xFF000000000000) == 0) == BYTE6(*v18))
    {
      break;
    }

    result = (a4[1])(result);
    if (!result)
    {
      break;
    }

    v18 += 2;
    if (v18 == v17)
    {
      return result;
    }
  }

  if (v18 == v17 || (v20 = v18 + 2, v18 + 2 == v17))
  {
LABEL_24:
    if (v18 == v17)
    {
      return result;
    }

LABEL_27:
    a5[1] = v18;
    return result;
  }

  do
  {
    v21 = **a4;
    if ((*v20 & 0xFFFFFFFFFFFFLL) != (v21 & 0xFFFFFFFFFFFFLL) || ((v21 & 0xFF000000000000) == 0) != BYTE6(*v20))
    {
      result = (a4[1])(result);
      if (result)
      {
        v22 = *v20;
        *(v18 + 3) = *(v20 + 3);
        *v18 = v22;
        v18 += 2;
      }
    }

    v20 += 2;
  }

  while (v20 != v17);
  if (v18 != a5[1])
  {
    goto LABEL_27;
  }

  return result;
}

void sub_40CAE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_40CB10(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_40D5C8((v5 + 103), a2);
  if (v4 > (a1[98] - a1[96]) >> 4)
  {
    operator new();
  }

  return a1;
}

void sub_40CBFC(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void *sub_40CC5C(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

uint64_t sub_40D5C8(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (*(a1 + 16) - *a1 <= 0x7EFuLL)
  {
    operator new();
  }

  return a1;
}

void sub_40D67C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

void sub_40D6A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  ++*(a1 + 816);
  sub_40D8D4(a1, a2, &v28);
  if (v28)
  {
    *(*(a1 + 768) + 16 * *(v29 + 8) + 8) = *a3;
    v6 = *(v29 + 8);
    v7 = *(a1 + 848);
    if (v6 < (*(a1 + 856) - v7) >> 2 && *(v7 + 4 * v6) != -1)
    {
      v8 = (a1 + 824);
LABEL_24:
      sub_40E27C(v8, v6, a3);
      return;
    }

    v9 = a1 + 824;
  }

  else
  {
    v10 = *(a1 + 776) - *(a1 + 768);
    sub_40D9F8(a1, a2, &v30);
    v11 = v31;
    v12 = *(v30 + 8);
    if (v32 == 1)
    {
      *(v12 + 16 * v31) = *a2;
    }

    *(v12 + 16 * v11 + 8) = v10 >> 4;
    v13 = *(a1 + 776);
    v14 = *(a1 + 784);
    if (v13 >= v14)
    {
      v16 = *(a1 + 768);
      v17 = v13 - v16;
      v18 = (v13 - v16) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        sub_1794();
      }

      v20 = v14 - v16;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v22 = v18;
      v23 = (16 * v18);
      v24 = *a3;
      *v23 = *a2;
      v23[1] = v24;
      v15 = 16 * v18 + 16;
      v25 = &v23[-2 * v22];
      memcpy(v25, v16, v17);
      *(a1 + 768) = v25;
      *(a1 + 776) = v15;
      *(a1 + 784) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v13 = *a2;
      v13[1] = *a3;
      v15 = (v13 + 2);
    }

    *(a1 + 776) = v15;
    v26 = (v10 >> 4);
    v27 = *(a1 + 848);
    if (v26 < (*(a1 + 856) - v27) >> 2 && *(v27 + 4 * v26) != -1)
    {
      v8 = (a1 + 824);
      v6 = v10 >> 4;
      goto LABEL_24;
    }

    v9 = a1 + 824;
    v6 = v10 >> 4;
  }

  sub_40E0E8(v9, v6, a3);
}

uint64_t sub_40D8D4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  v17 = v9[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    if (*(v17 + 16 * v18) == v4)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v11 == v18)
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v9;
  a3[1] = (result + 768);
  a3[2] = (v12 + v18);
  a3[3] = (v17 + 16 * v18);
  a3[4] = (v12 + v11);
  return result;
}

unint64_t sub_40D9F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (a1 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  while (1)
  {
    v12 = v10 & v11;
    v13 = *(*v9 + v12);
    v14 = ((v13 ^ (0x101010101010101 * (v8 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v8 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_5:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_40DB30(v9, v8);
      *a3 = v9;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v10 = v3 + v12;
  }

  while (1)
  {
    result = (v12 + (__clz(__rbit64(v14)) >> 3)) & v11;
    if (*(v9[1] + 16 * result) == v4)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_40DB30(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_40DC28(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_40DC28(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_40DC58();
  }

  return sub_40DE1C(a1);
}

uint64_t sub_40DE1C(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 16 * i);
        v19 = ((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) ^ ~((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) ^ ((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) >> 47)) << 21);
        v20 = 21 * ((265 * (v19 ^ (v19 >> 24))) ^ ((265 * (v19 ^ (v19 >> 24))) >> 14));
        v21 = 2147483649u * (v20 ^ (v20 >> 28));
        v22 = v13 & (v21 >> 7);
        v23 = *(v17->i64 + v22) & (~*(v17->i64 + v22) << 7) & 0x8080808080808080;
        if (v23)
        {
          v15 = v13 & (v21 >> 7);
        }

        else
        {
          v24 = 8;
          v15 = v13 & (v21 >> 7);
          do
          {
            v15 = (v15 + v24) & v13;
            v24 += 8;
            v23 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v23);
        }

        v16 = (v15 + (__clz(__rbit64(v23)) >> 3)) & v13;
        if ((((v16 - v22) ^ (i - v22)) & v13) > 7)
        {
          v25 = v17->u8[v16];
          v17->i8[v16] = v21 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v21 & 0x7F;
          v26 = *(result + 8);
          if (v25 == 128)
          {
            *(v26 + 16 * v16) = *(v26 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v27 = *(v26 + 16 * i);
            *(v26 + 16 * i) = *(v26 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v27;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v21 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v21 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v28 = i - (i >> 3);
    v29 = i == 7;
    v30 = 6;
    if (!v29)
    {
      v30 = v28;
    }
  }

  else
  {
    v30 = 0;
  }

  *(result + 40) = v30 - *(result + 16);
  return result;
}

void sub_40E0E8(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v5 = a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v6 = a1 + 24;
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v25 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v25 - v10);
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = v8 - v7;
        v26 = (v8 - v7) >> 2;
        if (v10 < v26)
        {
          goto LABEL_15;
        }
      }

      else if (v25 < v10)
      {
        v8 = v7 + 4 * v25;
        *(a1 + 32) = v8;
        v9 = 4 * v25;
        v26 = (4 * v25) >> 2;
        if (v10 < v26)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v26 = (v8 - v7) >> 2;
        if (v10 < v26)
        {
          goto LABEL_15;
        }
      }

      v10 = v26;
    }

    while (v26 <= v5);
  }

  v11 = *a3;
  *&v27 = v5;
  *(&v27 + 1) = v11;
  sub_40E3F4(a1, &v27);
  v12 = *(a1 + 48);
  *(*(a1 + 24) + 4 * v5) = v12;
  *(a1 + 48) = v12 + 1;
  if (v12)
  {
    v13 = *a1;
    do
    {
      v14 = v12 - 1;
      v15 = (v12 - 1) >> 2;
      v16 = (v13 + 16 * v15);
      v17 = (v13 + 16 * v12);
      v18 = *(v16 + 1);
      v19 = *(v17 + 1);
      if (v18 < v19)
      {
        break;
      }

      v20 = *v17;
      *v17 = *v16;
      *v16 = v20;
      *(v17 + 1) = v18;
      *(v16 + 1) = v19;
      v13 = *a1;
      v21 = *(*a1 + 16 * v12);
      v22 = *(a1 + 24);
      v23 = *(*a1 + 16 * v15);
      v24 = *(v22 + 4 * v21);
      *(v22 + 4 * v21) = *(v22 + 4 * v23);
      *(v22 + 4 * v23) = v24;
      v12 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

uint64_t *sub_40E27C(uint64_t *result, unsigned int a2, uint64_t *a3)
{
  v3 = *(result[3] + 4 * a2);
  v4 = *result + 16 * v3;
  v5 = *(v4 + 8);
  v6 = *a3;
  *(v4 + 8) = *a3;
  if (v6 >= v5)
  {
    v18 = (4 * v3) | 1;
    v19 = *(result + 12);
    if (v18 < v19)
    {
      v20 = 4 * v3;
      do
      {
        v21 = v20 + 5;
        if (v21 >= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v21;
        }

        if (v21 <= v18)
        {
          break;
        }

        v23 = *result;
        v24 = v3;
        v25 = *(*result + 16 * v3 + 8);
        v26 = (*result + 16 * v18 + 8);
        LODWORD(v3) = -1;
        v27 = v25;
        do
        {
          v29 = *v26;
          v26 += 2;
          v28 = v29;
          if (v29 < v27)
          {
            v27 = v28;
            LODWORD(v3) = v18;
          }

          ++v18;
        }

        while (v18 < v22);
        if (v3 >= v19)
        {
          break;
        }

        v30 = 16 * v3;
        v31 = (v23 + v30);
        v32 = 16 * v24;
        v33 = (v23 + v32);
        v34 = *v31;
        *v31 = *v33;
        *v33 = v34;
        v35 = *(v31 + 1);
        *(v31 + 1) = v25;
        *(v33 + 1) = v35;
        v36 = *(*result + v30);
        v37 = result[3];
        v38 = *(*result + v32);
        LODWORD(v33) = *(v37 + 4 * v36);
        *(v37 + 4 * v36) = *(v37 + 4 * v38);
        *(v37 + 4 * v38) = v33;
        v20 = 4 * v3;
        v18 = (4 * v3) | 1;
        v19 = *(result + 12);
      }

      while (v18 < v19);
    }
  }

  else if (v3)
  {
    v7 = *result;
    do
    {
      v8 = v3 - 1;
      v9 = (v3 - 1) >> 2;
      v10 = (v7 + 16 * v9);
      v11 = (v7 + 16 * v3);
      v12 = *(v10 + 1);
      v13 = *(v11 + 1);
      if (v12 < v13)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      *v10 = v14;
      *(v11 + 1) = v12;
      *(v10 + 1) = v13;
      v7 = *result;
      v3 = *(*result + 16 * v3);
      v15 = result[3];
      v16 = *(*result + 16 * v9);
      v17 = *(v15 + 4 * v3);
      *(v15 + 4 * v3) = *(v15 + 4 * v16);
      *(v15 + 4 * v16) = v17;
      LODWORD(v3) = v8 >> 2;
    }

    while (v8 >= 4);
  }

  return result;
}

void sub_40E3F4(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_40E514(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_40D8D4(a1, a2, &v32);
  if (!v32)
  {
    ++*(a1 + 816);
    v12 = *(a1 + 776) - *(a1 + 768);
    sub_40D9F8(a1, a2, &v34);
    v13 = v35;
    v14 = *(v34 + 8);
    if (v36 == 1)
    {
      *(v14 + 16 * v35) = *a2;
    }

    *(v14 + 16 * v13 + 8) = v12 >> 4;
    v15 = *(a1 + 776);
    v16 = *(a1 + 784);
    if (v15 >= v16)
    {
      v20 = *(a1 + 768);
      v21 = v15 - v20;
      v22 = (v15 - v20) >> 4;
      v23 = v22 + 1;
      if ((v22 + 1) >> 60)
      {
        sub_1794();
      }

      v24 = v16 - v20;
      if (v24 >> 3 > v23)
      {
        v23 = v24 >> 3;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (!(v25 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v26 = v22;
      v27 = (16 * v22);
      v28 = *a3;
      *v27 = *a2;
      v27[1] = v28;
      v17 = 16 * v22 + 16;
      v29 = &v27[-2 * v26];
      memcpy(v29, v20, v21);
      *(a1 + 768) = v29;
      *(a1 + 776) = v17;
      *(a1 + 784) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v15 = *a2;
      v15[1] = *a3;
      v17 = (v15 + 2);
    }

    *(a1 + 776) = v17;
    v30 = (v12 >> 4);
    v31 = *(a1 + 848);
    if (v30 < (*(a1 + 856) - v31) >> 2 && *(v31 + 4 * v30) != -1)
    {
      v11 = (a1 + 824);
      v9 = v12 >> 4;
      goto LABEL_26;
    }

    v19 = a1 + 824;
    v9 = v12 >> 4;
LABEL_28:
    sub_40E0E8(v19, v9, a3);
    return 1;
  }

  v6 = *(a1 + 768) + 16 * *(v33 + 8);
  v8 = *(v6 + 8);
  v7 = (v6 + 8);
  if (*a3 >= v8)
  {
    return 0;
  }

  ++*(a1 + 816);
  *v7 = *a3;
  v9 = *(v33 + 8);
  v10 = *(a1 + 848);
  if (v9 >= (*(a1 + 856) - v10) >> 2 || *(v10 + 4 * v9) == -1)
  {
    v19 = a1 + 824;
    goto LABEL_28;
  }

  v11 = (a1 + 824);
LABEL_26:
  sub_40E27C(v11, v9, a3);
  return 1;
}

unint64_t sub_40E770(uint64_t a1, uint64_t a2, char a3)
{
  sub_2B7A20(a1, (((*(a2 + 36) & 0x20000000) << 19) | (*(a2 + 36) << 32) | *(a2 + 32)) ^ 0x1000000000000, v10);
  v4 = __p;
  if (__p == v12)
  {
    v6 = 0xFFFFFFFF00000000;
    v7 = 0xFFFFFFFFLL;
    if (!__p)
    {
      return v6 | v7;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    v5 = sub_31AA0C(v10);
  }

  else
  {
    v5 = sub_31A76C(v10);
  }

  v8 = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = __p;
  v7 = v8;
  if (__p)
  {
LABEL_8:
    v12 = v4;
    operator delete(v4);
  }

  return v6 | v7;
}

void sub_40E824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_40E840(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40E98C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_40D5C8((v5 + 103), a2);
  if (v4 > (a1[98] - a1[96]) >> 4)
  {
    operator new();
  }

  return a1;
}

void sub_40E92C(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void *sub_40E98C(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

void sub_40F2F8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  ++*(a1 + 816);
  sub_40F508(a1, a2, &v26);
  if (v26)
  {
    *(*(a1 + 768) + 16 * *(v27 + 8) + 8) = *a3;
    v6 = *(v27 + 8);
    v7 = *(a1 + 848);
    if (v6 < (*(a1 + 856) - v7) >> 2 && *(v7 + 4 * v6) != -1)
    {
      v8 = (a1 + 824);
LABEL_22:
      sub_40E27C(v8, v6, a3);
      return;
    }

    v9 = a1 + 824;
  }

  else
  {
    v10 = *(a1 + 776) - *(a1 + 768);
    sub_40F660(a1, a2, v28);
    *(v29 + 8) = v10 >> 4;
    v11 = *(a1 + 776);
    v12 = *(a1 + 784);
    if (v11 >= v12)
    {
      v14 = *(a1 + 768);
      v15 = v11 - v14;
      v16 = (v11 - v14) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        sub_1794();
      }

      v18 = v12 - v14;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v20 = v16;
      v21 = (16 * v16);
      v22 = *a3;
      *v21 = *a2;
      v21[1] = v22;
      v13 = 16 * v16 + 16;
      v23 = &v21[-2 * v20];
      memcpy(v23, v14, v15);
      *(a1 + 768) = v23;
      *(a1 + 776) = v13;
      *(a1 + 784) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v11 = *a2;
      *(v11 + 1) = *a3;
      v13 = (v11 + 16);
    }

    *(a1 + 776) = v13;
    v24 = (v10 >> 4);
    v25 = *(a1 + 848);
    if (v24 < (*(a1 + 856) - v25) >> 2 && *(v25 + 4 * v24) != -1)
    {
      v8 = (a1 + 824);
      v6 = v10 >> 4;
      goto LABEL_22;
    }

    v9 = a1 + 824;
    v6 = v10 >> 4;
  }

  sub_40E0E8(v9, v6, a3);
}

uint64_t sub_40F508@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = (v10[1] + 16 * v18);
    if (*v19 == v4 && *(v19 + 1) == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if (v12 == v18)
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
  a3[2] = (v13 + v18);
  a3[3] = v19;
  a3[4] = (v13 + v12);
  return result;
}

uint64_t sub_40F660@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_9:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v24 = result;
      v26 = a3;
      v27 = sub_40F814((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v26;
      v18 = v27;
      result = v24;
      v28 = v10[1] + 16 * v18;
      *v28 = *a2;
      *(v28 + 8) = 0;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v23 = 1;
      goto LABEL_13;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = (v17 + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (v21 == v4 && v20 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_13:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 16 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v23;
  return result;
}

unint64_t sub_40F814(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_40F90C(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_40F90C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_40F93C();
  }

  return sub_40FB34(a1);
}

uint64_t sub_40FB34(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 16 * i);
        v19 = *v18;
        LODWORD(v18) = v18[1];
        v20 = 0x2127599BF4325C37 * ((((v19 << 32) + 16 * v18) | (v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v18 >> 25) & 8) ^ (((v19 << 32) + 16 * v18) >> 23));
        v21 = (v20 ^ ~(v20 >> 47)) + ((v20 ^ (v20 >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            *(v28 + 16 * v16) = *(v28 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v29 = *(v28 + 16 * i);
            *(v28 + 16 * i) = *(v28 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v29;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v30 = i - (i >> 3);
    v31 = i == 7;
    v32 = 6;
    if (!v31)
    {
      v32 = v30;
    }
  }

  else
  {
    v32 = 0;
  }

  *(result + 40) = v32 - *(result + 16);
  return result;
}

uint64_t sub_40FE38(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  sub_40F508(a1, a2, &v30);
  if (!v30)
  {
    ++*(a1 + 816);
    v12 = *(a1 + 776) - *(a1 + 768);
    sub_40F660(a1, a2, v32);
    *(v33 + 8) = v12 >> 4;
    v13 = *(a1 + 776);
    v14 = *(a1 + 784);
    if (v13 >= v14)
    {
      v18 = *(a1 + 768);
      v19 = v13 - v18;
      v20 = (v13 - v18) >> 4;
      v21 = v20 + 1;
      if ((v20 + 1) >> 60)
      {
        sub_1794();
      }

      v22 = v14 - v18;
      if (v22 >> 3 > v21)
      {
        v21 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (!(v23 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v24 = v20;
      v25 = (16 * v20);
      v26 = *a3;
      *v25 = *a2;
      v25[1] = v26;
      v15 = 16 * v20 + 16;
      v27 = &v25[-2 * v24];
      memcpy(v27, v18, v19);
      *(a1 + 768) = v27;
      *(a1 + 776) = v15;
      *(a1 + 784) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v13 = *a2;
      *(v13 + 1) = *a3;
      v15 = (v13 + 16);
    }

    *(a1 + 776) = v15;
    v28 = (v12 >> 4);
    v29 = *(a1 + 848);
    if (v28 < (*(a1 + 856) - v29) >> 2 && *(v29 + 4 * v28) != -1)
    {
      v11 = (a1 + 824);
      v9 = v12 >> 4;
      goto LABEL_24;
    }

    v17 = a1 + 824;
    v9 = v12 >> 4;
LABEL_26:
    sub_40E0E8(v17, v9, a3);
    return 1;
  }

  v6 = *(a1 + 768) + 16 * *(v31 + 8);
  v8 = *(v6 + 8);
  v7 = (v6 + 8);
  if (*a3 >= v8)
  {
    return 0;
  }

  ++*(a1 + 816);
  *v7 = *a3;
  v9 = *(v31 + 8);
  v10 = *(a1 + 848);
  if (v9 >= (*(a1 + 856) - v10) >> 2 || *(v10 + 4 * v9) == -1)
  {
    v17 = a1 + 824;
    goto LABEL_26;
  }

  v11 = (a1 + 824);
LABEL_24:
  sub_40E27C(v11, v9, a3);
  return 1;
}

void sub_410070()
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
  xmmword_278F498 = 0u;
  unk_278F4A8 = 0u;
  dword_278F4B8 = 1065353216;
  sub_3A9A34(&xmmword_278F498, v0);
  sub_3A9A34(&xmmword_278F498, v3);
  sub_3A9A34(&xmmword_278F498, __p);
  sub_3A9A34(&xmmword_278F498, v9);
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
    qword_278F470 = 0;
    qword_278F478 = 0;
    qword_278F468 = 0;
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

void sub_4102B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278F480)
  {
    qword_278F488 = qword_278F480;
    operator delete(qword_278F480);
  }

  _Unwind_Resume(exception_object);
}

BOOL *sub_410364(BOOL *a1, uint64_t a2)
{
  v15 = 14;
  v13 = 0;
  strcpy(v14, "RouteAnalytics");
  v11 = 0;
  v12 = 0;
  v3 = sub_3AEC94(a2, v14, &v11);
  v17 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(v3, __p);
  if (v17 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    v8 = v11;
    if (v12 != v11)
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
      v8 = v11;
    }

    v12 = v6;
    operator delete(v8);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_410490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_4104F8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  bzero(v163, 0x320uLL);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  v7 = *a2;
  v121 = a2[1];
  if (*a2 != v121)
  {
    while (1)
    {
      if (sub_4C4AC8(v7) != 4)
      {
        v8 = *(a6 + 104);
        if (v8 && (v9 = *(a6 + 96), v9 < *v8))
        {
          *(a6 + 96) = v9 + 1;
          v10 = *&v8[2 * v9 + 2];
        }

        else
        {
          v11 = sub_12D0C8C(*(a6 + 88));
          v10 = sub_19593CC(a6 + 88, v11);
        }

        v12 = sub_4C5154(v7);
        *(v10 + 16) |= 1u;
        *(v10 + 48) = v12;
        v13 = *a3;
        v14 = a3[1];
        if (*a3 != v14)
        {
          while (1)
          {
            v15 = sub_68DB24(v13);
            if (v15 == sub_4C5154(v7))
            {
              break;
            }

            v13 += 7808;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }

          v14 = a3[1];
        }

        if (v13 != v14)
        {
          v133 = sub_68F8AC();
          v16 = nullsub_1(v13);
          v17 = sub_5FC64(v7);
          v134 = *v16;
          v124 = sub_445EF4(v7);
          v125 = v17;
          if (v17 != v124)
          {
            break;
          }
        }
      }

LABEL_3:
      v7 += 128;
      if (v7 == v121)
      {
        return;
      }
    }

    v122 = v10;
    v123 = v7;
LABEL_18:
    v18 = *(v10 + 40);
    if (v18 && (v19 = *(v10 + 32), v19 < *v18))
    {
      *(v10 + 32) = v19 + 1;
      v20 = *&v18[2 * v19 + 2];
    }

    else
    {
      v21 = sub_12D0BDC(*(v10 + 24));
      v20 = sub_19593CC(v10 + 24, v21);
    }

    v22 = sub_4D2130(v125);
    v23 = *v22 == 0x7FFFFFFF || v22[9] == 0x7FFFFFFF;
    if (v23)
    {
      goto LABEL_49;
    }

    v24 = v22;
    if (!sub_4566B4(v22 + 2))
    {
      goto LABEL_49;
    }

    v25 = v24[28];
    switch(v25)
    {
      case 0:
        goto LABEL_49;
      case 2:
        v26 = *(v24 + 13);
        if (v26 > 0xFFFFFFFEFFFFFFFFLL || !v26)
        {
          goto LABEL_49;
        }

        break;
      case 1:
        if (*(v24 + 13) == -1)
        {
          goto LABEL_49;
        }

        break;
      default:
        sub_5AF20();
    }

    *(v20 + 16) |= 1u;
    if (!*(v20 + 96))
    {
      v27 = *(v20 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      *(v20 + 96) = sub_12D0B64(v28);
    }

    if (!*a5)
    {
      sub_21E17C0();
    }

    if (sub_4531E0(v125, *a5, a4))
    {
      goto LABEL_49;
    }

    *(v20 + 16) |= 1u;
    v29 = *(v20 + 96);
    if (!v29)
    {
      v30 = *(v20 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_12D0B64(v31);
      *(v20 + 96) = v29;
      *(v29 + 4) |= 1u;
      if (v29[3])
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    *(v29 + 4) |= 1u;
    if (!v29[3])
    {
LABEL_46:
      v32 = v29[1];
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v29[3] = sub_12D0AEC(v33);
    }

LABEL_49:
    v34 = *(v134 + 1104);
    sub_4D0560();
    v36 = v35;
    v38 = v37;
    v128 = v35;
    v129 = 0;
    v39 = 0;
    v40 = 0;
    v126 = -1;
    v127 = -1;
    while (1)
    {
      sub_4D0568();
      v45 = v43;
      v46 = v44;
      if (v36)
      {
        v47 = sub_4D1DC0(v36);
        v48 = v47;
        if (v45)
        {
          v49 = sub_4D1DC0(v45);
          if (v38 >= v48 || v46 >= v49)
          {
            v51 = v38 < v48;
            v36 = v128;
            if (((v51 ^ (v46 < v49)) & 1) == 0)
            {
              goto LABEL_123;
            }
          }

          else
          {
            v36 = v128;
            v130 = v38;
            v50 = sub_4D1F50(v128, v38);
            v23 = v50 == sub_4D1F50(v45, v46);
            v38 = v130;
            if (v23)
            {
              goto LABEL_123;
            }
          }
        }

        else
        {
          v36 = v128;
          if (v38 >= v47)
          {
            goto LABEL_123;
          }
        }
      }

      else if (!v43 || v44 >= sub_4D1DC0(v43))
      {
LABEL_123:
        v98 = *(v20 + 88);
        if (v98 && (v99 = *(v20 + 80), v99 < *v98))
        {
          *(v20 + 80) = v99 + 1;
          v100 = *&v98[2 * v99 + 2];
        }

        else
        {
          v101 = sub_12D09D4(*(v20 + 72));
          v100 = sub_19593CC(v20 + 72, v101);
        }

        v7 = v123;
        v102 = (*(v134 + 1112) - 2616);
        v103 = v102->i32[0];
        v100[4] |= 2u;
        v100[14] = v103;
        sub_410EEC(a1, v102, v100);
        if (!v133 && v34[24].i8[0] == 5)
        {
          v104 = v34[128].u8[9];
          if (v104 <= 3)
          {
            v100[4] |= 0x20u;
            v100[18] = v104 + 1;
          }
        }

        v10 = v122;
        if (v40)
        {
          v105 = v163;
          v106 = v163[0];
          for (i = 1; i != 100; ++i)
          {
            v108 = v163[i];
            v109 = v106 < v108;
            if (v106 <= v108)
            {
              v106 = v163[i];
            }

            if (v109)
            {
              v105 = &v163[i];
            }
          }

          v110 = (v105 - v163) >> 3;
          v111 = v100[4];
          v100[15] = v110;
          v112 = &v135;
          v113 = v135;
          for (j = 8; j != 440; j += 8)
          {
            v115 = *(&v135 + j);
            v116 = v113 < v115;
            if (v113 <= v115)
            {
              v113 = *(&v135 + j);
            }

            if (v116)
            {
              v112 = &v135 + j;
            }
          }

          v100[4] = v111 | 0xC;
          v100[16] = (v112 - &v135) >> 3;
          bzero(v163, 0x320uLL);
          v162 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
        }

        v134 += 12656;
        v125 += 1096;
        if (v125 == v124)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }

      v52 = sub_4D1F50(v36, v38);
      v54 = (*v52 - **v52);
      if (*v54 >= 0x2Fu && (v55 = v54[23]) != 0)
      {
        v56 = *(*v52 + v55);
      }

      else
      {
        v56 = 32;
      }

      v131 = sub_4D23F8(v36, v38, v53);
      v57 = (v34 + 2616);
      if (*(v134 + 1112) != &v34[163].u64[1])
      {
        v58 = v34;
        while (v57[2].i64[1] == v39)
        {
          v59 = *(v20 + 88);
          if (v59 && (v60 = *(v20 + 80), v60 < *v59))
          {
            *(v20 + 80) = v60 + 1;
            v61 = *&v59[2 * v60 + 2];
          }

          else
          {
            v62 = sub_12D09D4(*(v20 + 72));
            v61 = sub_19593CC(v20 + 72, v62);
          }

          v63 = v58->i32[0];
          v61[4] |= 2u;
          v61[14] = v63;
          sub_410EEC(a1, v58, v61);
          if (!v133 && v58[24].i8[0] == 5)
          {
            v64 = v58[128].u8[9];
            if (v64 <= 3)
            {
              v61[4] |= 0x20u;
              v61[18] = v64 + 1;
            }
          }

          if (v40)
          {
            v65 = v163;
            v66 = v163[0];
            for (k = 1; k != 100; ++k)
            {
              v68 = v163[k];
              v69 = v66 < v68;
              if (v66 <= v68)
              {
                v66 = v163[k];
              }

              if (v69)
              {
                v65 = &v163[k];
              }
            }

            v70 = (v65 - v163) >> 3;
            v71 = v61[4];
            v61[15] = v70;
            v72 = &v135;
            v73 = v135;
            for (m = 8; m != 440; m += 8)
            {
              v75 = *(&v135 + m);
              v76 = v73 < v75;
              if (v73 <= v75)
              {
                v73 = *(&v135 + m);
              }

              if (v76)
              {
                v72 = &v135 + m;
              }
            }

            v61[4] = v71 | 0xC;
            v61[16] = (v72 - &v135) >> 3;
            bzero(v163, 0x320uLL);
            v162 = 0;
            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
          }

          v40 = 0;
          v34 = (v58 + 2616);
          v57 = v58 + 327;
          v58 = (v58 + 2616);
          if (*(v134 + 1112) == v57)
          {
            goto LABEL_97;
          }
        }

        v34 = v58;
      }

LABEL_97:
      v36 = v128;
      v77 = sub_4D1F50(v128, v38);
      v78 = (*v77 - **v77);
      if (*v78 < 0x43u)
      {
        v81 = 0;
        v80 = v129;
      }

      else
      {
        v79 = v78[33];
        v80 = v129;
        if (v79)
        {
          v81 = *(*v77 + v79);
        }

        else
        {
          v81 = 0;
        }
      }

      v163[v81] += v131;
      v82 = sub_4D1F50(v128, v38);
      v83 = (*v82 - **v82);
      if (*v83 >= 0x43u && (v84 = v83[33]) != 0)
      {
        if (*(*v82 + v84) == v127)
        {
          goto LABEL_119;
        }
      }

      else if (!v127)
      {
        goto LABEL_119;
      }

      v85 = *(v20 + 40);
      if (v85 && (v86 = *(v20 + 32), v86 < *v85))
      {
        *(v20 + 32) = v86 + 1;
        v87 = *&v85[2 * v86 + 2];
      }

      else
      {
        v88 = sub_12D0A74(*(v20 + 24));
        v87 = sub_19593CC(v20 + 24, v88);
      }

      v87[4] |= 1u;
      v87[6] = v80;
      v89 = sub_4D1F50(v128, v38);
      v90 = (*v89 - **v89);
      if (*v90 >= 0x43u && (v91 = v90[33]) != 0)
      {
        v92 = *(*v89 + v91);
      }

      else
      {
        v92 = 0;
      }

      v87[4] |= 2u;
      v87[7] = v92;
      v93 = sub_4D1F50(v128, v38);
      v94 = (*v93 - **v93);
      if (*v94 >= 0x43u && (v95 = v94[33]) != 0)
      {
        v127 = *(*v93 + v95);
      }

      else
      {
        v127 = 0;
      }

LABEL_119:
      *(&v135 + v56) += v131;
      if (v126 != v56)
      {
        v96 = *(v20 + 64);
        if (v96 && (v97 = *(v20 + 56), v97 < *v96))
        {
          *(v20 + 56) = v97 + 1;
          v42 = *&v96[2 * v97 + 2];
        }

        else
        {
          v41 = sub_12D0A74(*(v20 + 48));
          v42 = sub_19593CC(v20 + 48, v41);
        }

        v42[4] |= 3u;
        v42[6] = v80;
        v42[7] = v56;
        v126 = v56;
      }

      v129 = v131 + v80;
      ++v39;
      ++v38;
      v40 = 1;
    }
  }
}

void sub_410EEC(uint64_t a1, int64x2_t *a2, uint64_t a3)
{
  if (a2[163].i8[0])
  {
LABEL_2:
    v6 = 1;
    goto LABEL_3;
  }

  v21 = a2[119].i64[1];
  v22 = a2[120].i64[0];
  if (v21 != v22)
  {
    while ((sub_681E98(v21) & 1) == 0)
    {
      v21 += 448;
      if (v21 == v22)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_2;
  }

LABEL_27:
  v23 = a2[118].i64[0];
  v24 = a2[118].i64[1];
  if (v23 == v24)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v6 = sub_681E98(v23);
      if (v6)
      {
        break;
      }

      v23 += 1120;
    }

    while (v23 != v24);
  }

LABEL_3:
  *(a3 + 16) |= 0x10u;
  *(a3 + 68) = v6;
  sub_4110FC(a1, a2, a3);
  v7 = a2[119].i64[1];
  for (i = a2[120].i64[0]; v7 != i; v7 += 112)
  {
    if (sub_681E98(v7) && sub_681EA0(v7))
    {
      v12 = *(a3 + 40);
      if (v12 && (v13 = *(a3 + 32), v13 < *v12))
      {
        *(a3 + 32) = v13 + 1;
        v10 = *&v12[2 * v13 + 2];
      }

      else
      {
        v9 = sub_12D0864(*(a3 + 24));
        v10 = sub_19593CC(a3 + 24, v9);
      }

      *(v10 + 16) |= 2u;
      *(v10 + 28) = 1;
      v11 = sub_3F80(v7);
      *(v10 + 16) |= 1u;
      *(v10 + 24) = v11;
    }
  }

  v14 = a2[118].i64[0];
  for (j = a2[118].i64[1]; v14 != j; v14 += 280)
  {
    if (sub_681E98(v14) && sub_681EA0(v14))
    {
      v19 = *(a3 + 40);
      if (v19 && (v20 = *(a3 + 32), v20 < *v19))
      {
        *(a3 + 32) = v20 + 1;
        v17 = *&v19[2 * v20 + 2];
      }

      else
      {
        v16 = sub_12D0864(*(a3 + 24));
        v17 = sub_19593CC(a3 + 24, v16);
      }

      *(v17 + 16) |= 2u;
      *(v17 + 28) = 1;
      v18 = sub_3F80(v14);
      *(v17 + 16) |= 1u;
      *(v17 + 24) = v18;
    }
  }
}

void sub_4110FC(uint64_t a1, int64x2_t *a2, uint64_t a3)
{
  if (a2[18].i64[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  *(a3 + 16) |= 1u;
  v4 = *(a3 + 48);
  if (!v4)
  {
    v7 = *(a3 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v4 = sub_12D095C(v8);
    *(a3 + 48) = v4;
    *(v4 + 4) |= 1u;
    v5 = v4[3];
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  *(v4 + 4) |= 1u;
  v5 = v4[3];
  if (!v5)
  {
LABEL_8:
    v9 = v4[1];
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_12D08E0(v10);
    v5 = v11;
    v4[3] = v11;
  }

LABEL_11:
  v12 = *(v5 + 16);
  *(v5 + 24) = a2[18].i64[1];
  *(v5 + 28) = vmovn_s64(a2[19]);
  v13 = v12 | 0x37;
  v15 = a2[20].i64[1];
  v14 = a2[21].i64[0];
  *(v5 + 16) = v13;
  *(v5 + 40) = v14;
  *(v5 + 44) = v15;
  v16 = a2[20].u32[0];
  if (v16 <= 0x3F && ((1 << v16) & 0xF00000000000000FLL) != 0)
  {
    v17 = sub_EC7E24(v16);
    *(v5 + 16) |= 8u;
    *(v5 + 36) = v17;
  }
}

BOOL *sub_411218(BOOL *a1, uint64_t a2)
{
  v15 = 14;
  v13 = 0;
  strcpy(v14, "RouteAnalytics");
  v11 = 0;
  v12 = 0;
  v3 = sub_3AEC94(a2, v14, &v11);
  v17 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(v3, __p);
  if (v17 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    v8 = v11;
    if (v12 != v11)
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
      v8 = v11;
    }

    v12 = v6;
    operator delete(v8);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_411344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_4113AC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  bzero(v163, 0x320uLL);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  v7 = *a2;
  v121 = a2[1];
  if (*a2 != v121)
  {
    while (1)
    {
      if (sub_4C4AC8(v7) != 4)
      {
        v8 = *(a6 + 104);
        if (v8 && (v9 = *(a6 + 96), v9 < *v8))
        {
          *(a6 + 96) = v9 + 1;
          v10 = *&v8[2 * v9 + 2];
        }

        else
        {
          v11 = sub_12D0C8C(*(a6 + 88));
          v10 = sub_19593CC(a6 + 88, v11);
        }

        v12 = sub_4C5154(v7);
        *(v10 + 16) |= 1u;
        *(v10 + 48) = v12;
        v13 = *a3;
        v14 = a3[1];
        if (*a3 != v14)
        {
          while (1)
          {
            v15 = sub_68DB24(v13);
            if (v15 == sub_4C5154(v7))
            {
              break;
            }

            v13 += 7808;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }

          v14 = a3[1];
        }

        if (v13 != v14)
        {
          v133 = sub_394BD0();
          v16 = nullsub_1(v13);
          v17 = sub_5FC64(v7);
          v134 = *v16;
          v124 = sub_445EF4(v7);
          v125 = v17;
          if (v17 != v124)
          {
            break;
          }
        }
      }

LABEL_3:
      v7 += 128;
      if (v7 == v121)
      {
        return;
      }
    }

    v122 = v10;
    v123 = v7;
LABEL_18:
    v18 = *(v10 + 40);
    if (v18 && (v19 = *(v10 + 32), v19 < *v18))
    {
      *(v10 + 32) = v19 + 1;
      v20 = *&v18[2 * v19 + 2];
    }

    else
    {
      v21 = sub_12D0BDC(*(v10 + 24));
      v20 = sub_19593CC(v10 + 24, v21);
    }

    v22 = sub_4D2130(v125);
    v23 = *v22 == 0x7FFFFFFF || v22[9] == 0x7FFFFFFF;
    if (v23)
    {
      goto LABEL_49;
    }

    v24 = v22;
    if (!sub_4566B4(v22 + 2))
    {
      goto LABEL_49;
    }

    v25 = v24[28];
    switch(v25)
    {
      case 0:
        goto LABEL_49;
      case 2:
        v26 = *(v24 + 13);
        if (v26 > 0xFFFFFFFEFFFFFFFFLL || !v26)
        {
          goto LABEL_49;
        }

        break;
      case 1:
        if (*(v24 + 13) == -1)
        {
          goto LABEL_49;
        }

        break;
      default:
        sub_5AF20();
    }

    *(v20 + 16) |= 1u;
    if (!*(v20 + 96))
    {
      v27 = *(v20 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      *(v20 + 96) = sub_12D0B64(v28);
    }

    if (!*a5)
    {
      sub_21E17C0();
    }

    if (sub_4531E0(v125, *a5, a4))
    {
      goto LABEL_49;
    }

    *(v20 + 16) |= 1u;
    v29 = *(v20 + 96);
    if (!v29)
    {
      v30 = *(v20 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_12D0B64(v31);
      *(v20 + 96) = v29;
      *(v29 + 4) |= 1u;
      if (v29[3])
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    *(v29 + 4) |= 1u;
    if (!v29[3])
    {
LABEL_46:
      v32 = v29[1];
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v29[3] = sub_12D0AEC(v33);
    }

LABEL_49:
    v34 = *(v134 + 1104);
    sub_4D0560();
    v36 = v35;
    v38 = v37;
    v128 = v35;
    v129 = 0;
    v39 = 0;
    v40 = 0;
    v126 = -1;
    v127 = -1;
    while (1)
    {
      sub_4D0568();
      v45 = v43;
      v46 = v44;
      if (v36)
      {
        v47 = sub_4D1DC0(v36);
        v48 = v47;
        if (v45)
        {
          v49 = sub_4D1DC0(v45);
          if (v38 >= v48 || v46 >= v49)
          {
            v51 = v38 < v48;
            v36 = v128;
            if (((v51 ^ (v46 < v49)) & 1) == 0)
            {
              goto LABEL_123;
            }
          }

          else
          {
            v36 = v128;
            v130 = v38;
            v50 = sub_4D1F50(v128, v38);
            v23 = v50 == sub_4D1F50(v45, v46);
            v38 = v130;
            if (v23)
            {
              goto LABEL_123;
            }
          }
        }

        else
        {
          v36 = v128;
          if (v38 >= v47)
          {
            goto LABEL_123;
          }
        }
      }

      else if (!v43 || v44 >= sub_4D1DC0(v43))
      {
LABEL_123:
        v98 = *(v20 + 88);
        if (v98 && (v99 = *(v20 + 80), v99 < *v98))
        {
          *(v20 + 80) = v99 + 1;
          v100 = *&v98[2 * v99 + 2];
        }

        else
        {
          v101 = sub_12D09D4(*(v20 + 72));
          v100 = sub_19593CC(v20 + 72, v101);
        }

        v7 = v123;
        v102 = (*(v134 + 1112) - 2616);
        v103 = v102->i32[0];
        v100[4] |= 2u;
        v100[14] = v103;
        sub_410EEC(a1, v102, v100);
        if (!v133 && v34[24].i8[0] == 5)
        {
          v104 = v34[128].u8[9];
          if (v104 <= 3)
          {
            v100[4] |= 0x20u;
            v100[18] = v104 + 1;
          }
        }

        v10 = v122;
        if (v40)
        {
          v105 = v163;
          v106 = v163[0];
          for (i = 1; i != 100; ++i)
          {
            v108 = v163[i];
            v109 = v106 < v108;
            if (v106 <= v108)
            {
              v106 = v163[i];
            }

            if (v109)
            {
              v105 = &v163[i];
            }
          }

          v110 = (v105 - v163) >> 3;
          v111 = v100[4];
          v100[15] = v110;
          v112 = &v135;
          v113 = v135;
          for (j = 8; j != 440; j += 8)
          {
            v115 = *(&v135 + j);
            v116 = v113 < v115;
            if (v113 <= v115)
            {
              v113 = *(&v135 + j);
            }

            if (v116)
            {
              v112 = &v135 + j;
            }
          }

          v100[4] = v111 | 0xC;
          v100[16] = (v112 - &v135) >> 3;
          bzero(v163, 0x320uLL);
          v162 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
        }

        v134 += 12656;
        v125 += 1096;
        if (v125 == v124)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }

      v52 = sub_4D1F50(v36, v38);
      v54 = (*v52 - **v52);
      if (*v54 >= 0x2Fu && (v55 = v54[23]) != 0)
      {
        v56 = *(*v52 + v55);
      }

      else
      {
        v56 = 32;
      }

      v131 = sub_4D23F8(v36, v38, v53);
      v57 = (v34 + 2616);
      if (*(v134 + 1112) != &v34[163].u64[1])
      {
        v58 = v34;
        while (v57[2].i64[1] == v39)
        {
          v59 = *(v20 + 88);
          if (v59 && (v60 = *(v20 + 80), v60 < *v59))
          {
            *(v20 + 80) = v60 + 1;
            v61 = *&v59[2 * v60 + 2];
          }

          else
          {
            v62 = sub_12D09D4(*(v20 + 72));
            v61 = sub_19593CC(v20 + 72, v62);
          }

          v63 = v58->i32[0];
          v61[4] |= 2u;
          v61[14] = v63;
          sub_410EEC(a1, v58, v61);
          if (!v133 && v58[24].i8[0] == 5)
          {
            v64 = v58[128].u8[9];
            if (v64 <= 3)
            {
              v61[4] |= 0x20u;
              v61[18] = v64 + 1;
            }
          }

          if (v40)
          {
            v65 = v163;
            v66 = v163[0];
            for (k = 1; k != 100; ++k)
            {
              v68 = v163[k];
              v69 = v66 < v68;
              if (v66 <= v68)
              {
                v66 = v163[k];
              }

              if (v69)
              {
                v65 = &v163[k];
              }
            }

            v70 = (v65 - v163) >> 3;
            v71 = v61[4];
            v61[15] = v70;
            v72 = &v135;
            v73 = v135;
            for (m = 8; m != 440; m += 8)
            {
              v75 = *(&v135 + m);
              v76 = v73 < v75;
              if (v73 <= v75)
              {
                v73 = *(&v135 + m);
              }

              if (v76)
              {
                v72 = &v135 + m;
              }
            }

            v61[4] = v71 | 0xC;
            v61[16] = (v72 - &v135) >> 3;
            bzero(v163, 0x320uLL);
            v162 = 0;
            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
          }

          v40 = 0;
          v34 = (v58 + 2616);
          v57 = v58 + 327;
          v58 = (v58 + 2616);
          if (*(v134 + 1112) == v57)
          {
            goto LABEL_97;
          }
        }

        v34 = v58;
      }

LABEL_97:
      v36 = v128;
      v77 = sub_4D1F50(v128, v38);
      v78 = (*v77 - **v77);
      if (*v78 < 0x43u)
      {
        v81 = 0;
        v80 = v129;
      }

      else
      {
        v79 = v78[33];
        v80 = v129;
        if (v79)
        {
          v81 = *(*v77 + v79);
        }

        else
        {
          v81 = 0;
        }
      }

      v163[v81] += v131;
      v82 = sub_4D1F50(v128, v38);
      v83 = (*v82 - **v82);
      if (*v83 >= 0x43u && (v84 = v83[33]) != 0)
      {
        if (*(*v82 + v84) == v127)
        {
          goto LABEL_119;
        }
      }

      else if (!v127)
      {
        goto LABEL_119;
      }

      v85 = *(v20 + 40);
      if (v85 && (v86 = *(v20 + 32), v86 < *v85))
      {
        *(v20 + 32) = v86 + 1;
        v87 = *&v85[2 * v86 + 2];
      }

      else
      {
        v88 = sub_12D0A74(*(v20 + 24));
        v87 = sub_19593CC(v20 + 24, v88);
      }

      v87[4] |= 1u;
      v87[6] = v80;
      v89 = sub_4D1F50(v128, v38);
      v90 = (*v89 - **v89);
      if (*v90 >= 0x43u && (v91 = v90[33]) != 0)
      {
        v92 = *(*v89 + v91);
      }

      else
      {
        v92 = 0;
      }

      v87[4] |= 2u;
      v87[7] = v92;
      v93 = sub_4D1F50(v128, v38);
      v94 = (*v93 - **v93);
      if (*v94 >= 0x43u && (v95 = v94[33]) != 0)
      {
        v127 = *(*v93 + v95);
      }

      else
      {
        v127 = 0;
      }

LABEL_119:
      *(&v135 + v56) += v131;
      if (v126 != v56)
      {
        v96 = *(v20 + 64);
        if (v96 && (v97 = *(v20 + 56), v97 < *v96))
        {
          *(v20 + 56) = v97 + 1;
          v42 = *&v96[2 * v97 + 2];
        }

        else
        {
          v41 = sub_12D0A74(*(v20 + 48));
          v42 = sub_19593CC(v20 + 48, v41);
        }

        v42[4] |= 3u;
        v42[6] = v80;
        v42[7] = v56;
        v126 = v56;
      }

      v129 = v131 + v80;
      ++v39;
      ++v38;
      v40 = 1;
    }
  }
}

BOOL *sub_411DA0(BOOL *a1, uint64_t a2)
{
  v15 = 14;
  v13 = 0;
  strcpy(v14, "RouteAnalytics");
  v11 = 0;
  v12 = 0;
  v3 = sub_3AEC94(a2, v14, &v11);
  v17 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(v3, __p);
  if (v17 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    v8 = v11;
    if (v12 != v11)
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
      v8 = v11;
    }

    v12 = v6;
    operator delete(v8);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_411ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_411F34(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  bzero(v163, 0x320uLL);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  v7 = *a2;
  v121 = a2[1];
  if (*a2 != v121)
  {
    while (1)
    {
      if (sub_4C4AC8(v7) != 4)
      {
        v8 = *(a6 + 104);
        if (v8 && (v9 = *(a6 + 96), v9 < *v8))
        {
          *(a6 + 96) = v9 + 1;
          v10 = *&v8[2 * v9 + 2];
        }

        else
        {
          v11 = sub_12D0C8C(*(a6 + 88));
          v10 = sub_19593CC(a6 + 88, v11);
        }

        v12 = sub_4C5154(v7);
        *(v10 + 16) |= 1u;
        *(v10 + 48) = v12;
        v13 = *a3;
        v14 = a3[1];
        if (*a3 != v14)
        {
          while (1)
          {
            v15 = sub_68DB24(v13);
            if (v15 == sub_4C5154(v7))
            {
              break;
            }

            v13 += 7808;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }

          v14 = a3[1];
        }

        if (v13 != v14)
        {
          v133 = sub_6910B0();
          v16 = nullsub_1(v13);
          v17 = sub_5FC64(v7);
          v134 = *v16;
          v124 = sub_445EF4(v7);
          v125 = v17;
          if (v17 != v124)
          {
            break;
          }
        }
      }

LABEL_3:
      v7 += 128;
      if (v7 == v121)
      {
        return;
      }
    }

    v122 = v10;
    v123 = v7;
LABEL_18:
    v18 = *(v10 + 40);
    if (v18 && (v19 = *(v10 + 32), v19 < *v18))
    {
      *(v10 + 32) = v19 + 1;
      v20 = *&v18[2 * v19 + 2];
    }

    else
    {
      v21 = sub_12D0BDC(*(v10 + 24));
      v20 = sub_19593CC(v10 + 24, v21);
    }

    v22 = sub_4D2130(v125);
    v23 = *v22 == 0x7FFFFFFF || v22[9] == 0x7FFFFFFF;
    if (v23)
    {
      goto LABEL_49;
    }

    v24 = v22;
    if (!sub_4566B4(v22 + 2))
    {
      goto LABEL_49;
    }

    v25 = v24[28];
    switch(v25)
    {
      case 0:
        goto LABEL_49;
      case 2:
        v26 = *(v24 + 13);
        if (v26 > 0xFFFFFFFEFFFFFFFFLL || !v26)
        {
          goto LABEL_49;
        }

        break;
      case 1:
        if (*(v24 + 13) == -1)
        {
          goto LABEL_49;
        }

        break;
      default:
        sub_5AF20();
    }

    *(v20 + 16) |= 1u;
    if (!*(v20 + 96))
    {
      v27 = *(v20 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      *(v20 + 96) = sub_12D0B64(v28);
    }

    if (!*a5)
    {
      sub_21E17C0();
    }

    if (sub_4531E0(v125, *a5, a4))
    {
      goto LABEL_49;
    }

    *(v20 + 16) |= 1u;
    v29 = *(v20 + 96);
    if (!v29)
    {
      v30 = *(v20 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_12D0B64(v31);
      *(v20 + 96) = v29;
      *(v29 + 4) |= 1u;
      if (v29[3])
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    *(v29 + 4) |= 1u;
    if (!v29[3])
    {
LABEL_46:
      v32 = v29[1];
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v29[3] = sub_12D0AEC(v33);
    }

LABEL_49:
    v34 = *(v134 + 1104);
    sub_4D0560();
    v36 = v35;
    v38 = v37;
    v128 = v35;
    v129 = 0;
    v39 = 0;
    v40 = 0;
    v126 = -1;
    v127 = -1;
    while (1)
    {
      sub_4D0568();
      v45 = v43;
      v46 = v44;
      if (v36)
      {
        v47 = sub_4D1DC0(v36);
        v48 = v47;
        if (v45)
        {
          v49 = sub_4D1DC0(v45);
          if (v38 >= v48 || v46 >= v49)
          {
            v51 = v38 < v48;
            v36 = v128;
            if (((v51 ^ (v46 < v49)) & 1) == 0)
            {
              goto LABEL_123;
            }
          }

          else
          {
            v36 = v128;
            v130 = v38;
            v50 = sub_4D1F50(v128, v38);
            v23 = v50 == sub_4D1F50(v45, v46);
            v38 = v130;
            if (v23)
            {
              goto LABEL_123;
            }
          }
        }

        else
        {
          v36 = v128;
          if (v38 >= v47)
          {
            goto LABEL_123;
          }
        }
      }

      else if (!v43 || v44 >= sub_4D1DC0(v43))
      {
LABEL_123:
        v98 = *(v20 + 88);
        if (v98 && (v99 = *(v20 + 80), v99 < *v98))
        {
          *(v20 + 80) = v99 + 1;
          v100 = *&v98[2 * v99 + 2];
        }

        else
        {
          v101 = sub_12D09D4(*(v20 + 72));
          v100 = sub_19593CC(v20 + 72, v101);
        }

        v7 = v123;
        v102 = (*(v134 + 1112) - 2616);
        v103 = v102->i32[0];
        v100[4] |= 2u;
        v100[14] = v103;
        sub_410EEC(a1, v102, v100);
        if (!v133 && v34[24].i8[0] == 5)
        {
          v104 = v34[128].u8[9];
          if (v104 <= 3)
          {
            v100[4] |= 0x20u;
            v100[18] = v104 + 1;
          }
        }

        v10 = v122;
        if (v40)
        {
          v105 = v163;
          v106 = v163[0];
          for (i = 1; i != 100; ++i)
          {
            v108 = v163[i];
            v109 = v106 < v108;
            if (v106 <= v108)
            {
              v106 = v163[i];
            }

            if (v109)
            {
              v105 = &v163[i];
            }
          }

          v110 = (v105 - v163) >> 3;
          v111 = v100[4];
          v100[15] = v110;
          v112 = &v135;
          v113 = v135;
          for (j = 8; j != 440; j += 8)
          {
            v115 = *(&v135 + j);
            v116 = v113 < v115;
            if (v113 <= v115)
            {
              v113 = *(&v135 + j);
            }

            if (v116)
            {
              v112 = &v135 + j;
            }
          }

          v100[4] = v111 | 0xC;
          v100[16] = (v112 - &v135) >> 3;
          bzero(v163, 0x320uLL);
          v162 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
        }

        v134 += 12656;
        v125 += 1096;
        if (v125 == v124)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }

      v52 = sub_4D1F50(v36, v38);
      v54 = (*v52 - **v52);
      if (*v54 >= 0x2Fu && (v55 = v54[23]) != 0)
      {
        v56 = *(*v52 + v55);
      }

      else
      {
        v56 = 32;
      }

      v131 = sub_4D23F8(v36, v38, v53);
      v57 = (v34 + 2616);
      if (*(v134 + 1112) != &v34[163].u64[1])
      {
        v58 = v34;
        while (v57[2].i64[1] == v39)
        {
          v59 = *(v20 + 88);
          if (v59 && (v60 = *(v20 + 80), v60 < *v59))
          {
            *(v20 + 80) = v60 + 1;
            v61 = *&v59[2 * v60 + 2];
          }

          else
          {
            v62 = sub_12D09D4(*(v20 + 72));
            v61 = sub_19593CC(v20 + 72, v62);
          }

          v63 = v58->i32[0];
          v61[4] |= 2u;
          v61[14] = v63;
          sub_410EEC(a1, v58, v61);
          if (!v133 && v58[24].i8[0] == 5)
          {
            v64 = v58[128].u8[9];
            if (v64 <= 3)
            {
              v61[4] |= 0x20u;
              v61[18] = v64 + 1;
            }
          }

          if (v40)
          {
            v65 = v163;
            v66 = v163[0];
            for (k = 1; k != 100; ++k)
            {
              v68 = v163[k];
              v69 = v66 < v68;
              if (v66 <= v68)
              {
                v66 = v163[k];
              }

              if (v69)
              {
                v65 = &v163[k];
              }
            }

            v70 = (v65 - v163) >> 3;
            v71 = v61[4];
            v61[15] = v70;
            v72 = &v135;
            v73 = v135;
            for (m = 8; m != 440; m += 8)
            {
              v75 = *(&v135 + m);
              v76 = v73 < v75;
              if (v73 <= v75)
              {
                v73 = *(&v135 + m);
              }

              if (v76)
              {
                v72 = &v135 + m;
              }
            }

            v61[4] = v71 | 0xC;
            v61[16] = (v72 - &v135) >> 3;
            bzero(v163, 0x320uLL);
            v162 = 0;
            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
          }

          v40 = 0;
          v34 = (v58 + 2616);
          v57 = v58 + 327;
          v58 = (v58 + 2616);
          if (*(v134 + 1112) == v57)
          {
            goto LABEL_97;
          }
        }

        v34 = v58;
      }

LABEL_97:
      v36 = v128;
      v77 = sub_4D1F50(v128, v38);
      v78 = (*v77 - **v77);
      if (*v78 < 0x43u)
      {
        v81 = 0;
        v80 = v129;
      }

      else
      {
        v79 = v78[33];
        v80 = v129;
        if (v79)
        {
          v81 = *(*v77 + v79);
        }

        else
        {
          v81 = 0;
        }
      }

      v163[v81] += v131;
      v82 = sub_4D1F50(v128, v38);
      v83 = (*v82 - **v82);
      if (*v83 >= 0x43u && (v84 = v83[33]) != 0)
      {
        if (*(*v82 + v84) == v127)
        {
          goto LABEL_119;
        }
      }

      else if (!v127)
      {
        goto LABEL_119;
      }

      v85 = *(v20 + 40);
      if (v85 && (v86 = *(v20 + 32), v86 < *v85))
      {
        *(v20 + 32) = v86 + 1;
        v87 = *&v85[2 * v86 + 2];
      }

      else
      {
        v88 = sub_12D0A74(*(v20 + 24));
        v87 = sub_19593CC(v20 + 24, v88);
      }

      v87[4] |= 1u;
      v87[6] = v80;
      v89 = sub_4D1F50(v128, v38);
      v90 = (*v89 - **v89);
      if (*v90 >= 0x43u && (v91 = v90[33]) != 0)
      {
        v92 = *(*v89 + v91);
      }

      else
      {
        v92 = 0;
      }

      v87[4] |= 2u;
      v87[7] = v92;
      v93 = sub_4D1F50(v128, v38);
      v94 = (*v93 - **v93);
      if (*v94 >= 0x43u && (v95 = v94[33]) != 0)
      {
        v127 = *(*v93 + v95);
      }

      else
      {
        v127 = 0;
      }

LABEL_119:
      *(&v135 + v56) += v131;
      if (v126 != v56)
      {
        v96 = *(v20 + 64);
        if (v96 && (v97 = *(v20 + 56), v97 < *v96))
        {
          *(v20 + 56) = v97 + 1;
          v42 = *&v96[2 * v97 + 2];
        }

        else
        {
          v41 = sub_12D0A74(*(v20 + 48));
          v42 = sub_19593CC(v20 + 48, v41);
        }

        v42[4] |= 3u;
        v42[6] = v80;
        v42[7] = v56;
        v126 = v56;
      }

      v129 = v131 + v80;
      ++v39;
      ++v38;
      v40 = 1;
    }
  }
}

void sub_41293C()
{
  byte_278F55F = 3;
  LODWORD(qword_278F548) = 5136193;
  byte_278F577 = 3;
  LODWORD(qword_278F560) = 5136194;
  byte_278F58F = 3;
  LODWORD(qword_278F578) = 5136195;
  byte_278F5A7 = 15;
  strcpy(&qword_278F590, "vehicle_mass_kg");
  byte_278F5BF = 21;
  strcpy(&xmmword_278F5A8, "vehicle_cargo_mass_kg");
  byte_278F5D7 = 19;
  strcpy(&qword_278F5C0, "vehicle_aux_power_w");
  byte_278F5EF = 15;
  strcpy(&qword_278F5D8, "dcdc_efficiency");
  strcpy(&qword_278F5F0, "drive_train_efficiency");
  HIBYTE(word_278F606) = 22;
  operator new();
}

void sub_412D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278F508)
  {
    qword_278F510 = qword_278F508;
    operator delete(qword_278F508);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_412E38()
{
  result = __chkstk_darwin();
  v35 = v4;
  v5 = *v2;
  if (*v2 != v2[1])
  {
    v6 = v2;
    v7 = v1;
    v8 = result;
    v36 = v3;
    result = sub_4C4B5C(v5 + 8);
    if (result)
    {
      memset(v53, 0, sizeof(v53));
      v52 = 0u;
      v51 = 0u;
      *v50 = 0u;
      *v49 = 0u;
      v54 = -1;
      v55 = 0;
      v58 = 0;
      v56 = 0;
      v57 = 0;
      if (atomic_load_explicit(&qword_2732EE0, memory_order_acquire))
      {
        if (dword_2732E60)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_21E18E8();
        if (dword_2732E60)
        {
LABEL_5:
          operator new();
        }
      }

      v9 = *v35;
      v10 = v35[1];
      if (*v35 != v10)
      {
        v11 = *v6;
        v12 = v6[1];
        v13 = *v6 + 8;
        do
        {
          v14 = *(v9 + 40);
          v15 = (*(v9 + 32) + 4);
          if (v14 != v15 && v11 != v12)
          {
            while (1)
            {
              v17 = v13;
              v18 = v11;
              while (*v18 != *v15)
              {
                v18 += 34;
                v17 += 136;
                if (v18 == v12)
                {
                  goto LABEL_19;
                }
              }

              if (v18 != v12)
              {
                break;
              }

LABEL_19:
              if (++v15 == v14)
              {
                goto LABEL_12;
              }
            }

            *(16 * *(v9 + 8)) = v17;
          }

LABEL_12:
          v9 += 56;
        }

        while (v9 != v10);
      }

      sub_4C4BD8(v5 + 8);
      sub_4E47BC(v5 + 8, 0, 6);
      v19 = sub_5FC64(v5 + 8);
      v20 = sub_445EF4(v5 + 8);
      v34 = v5;
      if (v19 != v20)
      {
        v21 = 0;
        do
        {
          v22 = *(sub_3CF22C(v19) + 256);
          v21 += v22 + *(sub_3CF22C(v19) + 260);
          v19 += 1096;
        }

        while (v19 != v20);
      }

      v23 = sub_5FC64(v34 + 8);
      v24 = sub_445EF4(v34 + 8);
      sub_4E494C(v23, v24, 1, 0);
      v25 = sub_5FC64(v34 + 8);
      v26 = sub_445EF4(v34 + 8);
      sub_4E494C(v25, v26, 2, 0);
      v27 = sub_5FC64(v34 + 8);
      v28 = sub_445EF4(v34 + 8);
      sub_4E494C(v27, v28, 0, 0);
      v44 = 0u;
      v43 = 0u;
      v45 = 0;
      v46 = v8;
      sub_3318(&v47);
      sub_3318(v48);
      v48[48] = v7;
      v29 = sub_3AF144(v8);
      v37 = sub_3AF6B4(v8);
      v30 = sub_3AF114(v8);
      sub_36059C(&v42, v30, 254);
      sub_4C35F8(v34 + 8, v59);
      v31 = sub_4D1F50(v59[0], v59[1]);
      v32 = *(v31 + 32) | (*(v31 + 36) << 32);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v60[1])
      {
        *&v61 = v60[1];
        operator delete(v60[1]);
      }

      sub_320EC8(v37, v32, v41);
      if (sub_2BC500(v29) != 0x7FFFFFFF)
      {
        v40[23] = 21;
        strcpy(v40, "PathletSpeedPredictor");
        memset(v39, 0, sizeof(v39));
        v33 = sub_3AEC94(v8, v40, v39);
        v38[23] = 9;
        strcpy(v38, "live_feed");
        sub_5F5AC(v33, v38);
        operator new();
      }

      sub_386C(v59, 0x7FFFFFFF);
    }

    v3 = v36;
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

void sub_4155B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, char *__p, char *a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1959728(&STACK[0x1540]);
  v70 = a33;
  v71 = *a33;
  if (*a33)
  {
    v73 = a33[1];
    v74 = *a33;
    if (v73 != v71)
    {
      do
      {
        v75 = v73 - 176;
        sub_12DD690(v73 - 120);
        v73 = v75;
      }

      while (v75 != v71);
      v70 = a33;
      v74 = *a33;
    }

    v70[1] = v71;
    operator delete(v74);
    v72 = __p;
    if (!__p)
    {
LABEL_12:
      sub_25F00(&a64);
      sub_360988(&STACK[0x1100]);
      v79 = a69;
      if (a69 && !atomic_fetch_add(&a69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v79->__on_zero_shared)(v79);
        std::__shared_weak_count::__release_weak(v79);
      }

      v80 = a67;
      if (a67 && !atomic_fetch_add(&a67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v80->__on_zero_shared)(v80);
        std::__shared_weak_count::__release_weak(v80);
      }

      sub_3874(&STACK[0x1460]);
      sub_3874(&STACK[0x1430]);
      if (a48)
      {
        operator delete(a48);
        if (SLOBYTE(STACK[0x151F]) < 0)
        {
LABEL_20:
          operator delete(STACK[0x1508]);
          v81 = STACK[0x14B8];
          if (STACK[0x14B8])
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }
      }

      else if (SLOBYTE(STACK[0x151F]) < 0)
      {
        goto LABEL_20;
      }

      v81 = STACK[0x14B8];
      if (STACK[0x14B8])
      {
LABEL_21:
        v82 = STACK[0x14C0];
        v83 = v81;
        if (STACK[0x14C0] != v81)
        {
          do
          {
            v82 = sub_3EEA68(v82 - 1096);
          }

          while (v82 != v81);
          v83 = STACK[0x14B8];
        }

        STACK[0x14C0] = v81;
        operator delete(v83);
        v84 = STACK[0x14A0];
        if (STACK[0x14A0])
        {
LABEL_25:
          v85 = STACK[0x14A8];
          v86 = v84;
          if (STACK[0x14A8] != v84)
          {
            do
            {
              v85 -= 80;
              sub_3ED230(v85);
            }

            while (v85 != v84);
            v86 = STACK[0x14A0];
          }

          STACK[0x14A8] = v84;
          operator delete(v86);
          _Unwind_Resume(a1);
        }

LABEL_32:
        _Unwind_Resume(a1);
      }

LABEL_31:
      v84 = STACK[0x14A0];
      if (STACK[0x14A0])
      {
        goto LABEL_25;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v72 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }
  }

  v76 = a50;
  v77 = v72;
  if (a50 != v72)
  {
    do
    {
      v78 = v76 - 176;
      sub_12DD690(v76 - 120);
      v76 = v78;
    }

    while (v78 != v72);
    v77 = __p;
  }

  operator delete(v77);
  goto LABEL_12;
}

uint64_t sub_415ABC(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(a5 + 24) = a3;
  v10 = sub_3AF6B4(a1);
  v11 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a4)
  {
    v12 = sub_2B7A20(v10, v11, v42);
    v13 = *&v42[8];
    if (*&v42[8] != *&v42[16])
    {
      v14 = sub_31AA0C(v42);
      v15 = v14;
      v17 = v16;
      v18 = v14 & 0xFFFFFFFF00000000;
      v13 = *&v42[8];
      v19 = v15;
      if (!*&v42[8])
      {
        goto LABEL_10;
      }

LABEL_9:
      *&v42[16] = v13;
      operator delete(v13);
      goto LABEL_10;
    }

LABEL_8:
    v17 = 0x7FFFFFFF;
    v18 = 0xFFFFFFFF00000000;
    v19 = 0xFFFFFFFFLL;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = sub_2B7A20(v10, v11, v42);
  v13 = *&v42[8];
  if (*&v42[8] == *&v42[16])
  {
    goto LABEL_8;
  }

  v20 = sub_31A76C(v42);
  v21 = v20;
  v18 = v20 & 0xFFFFFFFF00000000;
  v13 = *&v42[8];
  v19 = v21;
  v17 = v22;
  if (*&v42[8])
  {
    goto LABEL_9;
  }

LABEL_10:
  v47 = v18 | v19;
  v48 = v17;
  v23 = *(a5 + 72);
  *(a5 + 148) = 1;
  *(a5 + 72) = v23 | 0x44;
  v24 = *(a5 + 120);
  if (v24)
  {
    *(v24 + 4) |= 2u;
    v25 = v24[6];
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v26 = *(a5 + 64);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  v24 = sub_12E2318(v27);
  *(a5 + 120) = v24;
  *(v24 + 4) |= 2u;
  v25 = v24[6];
  if (!v25)
  {
LABEL_16:
    v28 = v24[1];
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v25 = sub_16F5828(v29);
    v24[6] = v25;
  }

LABEL_19:
  sub_EC6DFC(&v47, v25, v12);
  v30 = (HIDWORD(v47) + (((v47 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v47 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v47 + 0x388152A534) ^ 0xDEADBEEFLL;
  v31 = *(a5 + 136) ^ v30 ^ (v48 + (v30 << 6) + (v30 >> 2) + 2654435769u);
  *(a5 + 72) |= 0x10u;
  *(a5 + 136) = v31;
  v32 = *(a6 + 8);
  if (v32 >= *(a6 + 16))
  {
    v36 = sub_4161BC(a6, a5);
  }

  else
  {
    v33 = *a5;
    v34 = *(a5 + 16);
    v35 = *(a5 + 32);
    *(v32 + 48) = *(a5 + 48);
    *(v32 + 16) = v34;
    *(v32 + 32) = v35;
    *v32 = v33;
    sub_12DD578(v32 + 56, a5 + 56);
    *(v32 + 168) = *(a5 + 168);
    v36 = v32 + 176;
    *(a6 + 8) = v32 + 176;
  }

  *(a6 + 8) = v36;
  *v42 = -1;
  *&v37 = -1;
  *(&v37 + 1) = -1;
  *&v42[8] = v37;
  *&v42[24] = v37;
  *&v42[40] = 0x7FFFFFFFFFFFFFFFLL;
  v43 = 0;
  sub_12DD2CC(&v44, 0, 0);
  v46 = 0;
  v38 = *&v42[16];
  *a5 = *v42;
  *(a5 + 16) = v38;
  *(a5 + 32) = *&v42[32];
  *(a5 + 48) = v43;
  if (v42 != a5)
  {
    v39 = *(a5 + 64);
    if ((v39 & 2) != 0)
    {
      v39 = 0;
    }

    else if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v40 = v45;
    if ((v45 & 2) != 0)
    {
      v40 = 0;
    }

    else if (v45)
    {
      v40 = *(v45 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v39 == v40)
    {
      sub_12DE8F4(a5 + 56, &v44);
    }

    else
    {
      sub_12DE878(a5 + 56, &v44);
    }
  }

  *(a5 + 168) = v46;
  return sub_12DD690(&v44);
}

void sub_415DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_415DDC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, double a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20)
{
  *a20 = a7;
  *(a20 + 8) = a3;
  *(a20 + 16) = a4;
  *(a20 + 32) = a5;
  *(a20 + 168) = a19;
  v23 = sub_4D23F8(a2, a4, a9);
  v24 = v23;
  *(a20 + 40) = v23;
  *(a20 + 72) |= 8u;
  v25 = *(a20 + 128);
  if (!v25)
  {
    v26 = *(a20 + 64);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_14BCA7C(v27);
    *(a20 + 128) = v25;
  }

  v25[4] |= 1u;
  v25[6] = a10;
  *(a20 + 72) |= 8u;
  v25[4] |= 2u;
  v25[7] = a14;
  *(a20 + 72) |= 8u;
  v25[4] |= 4u;
  v25[8] = a12;
  v28 = *(a20 + 72);
  *(a20 + 144) = a8;
  *(a20 + 156) = a16;
  *(a20 + 160) = a18;
  *(a20 + 152) = v24;
  *(a20 + 72) = v28 | 0x7A0;
  *(a20 + 149) = 0;
  v29 = *(sub_4D1F50(a2, a4) + 32);
  v30 = sub_4D1F50(a2, a4);
  v31 = (*v30 - **v30);
  if (*v31 >= 0x1Du && (v32 = v31[14]) != 0)
  {
    v33 = *(*v30 + v32);
  }

  else
  {
    v33 = 0;
  }

  if (*(v30 + 38))
  {
    v34 = -v33;
  }

  else
  {
    v34 = v33;
  }

  v35 = sub_2B7A20(a1, v29 & 0xFFFFFFFFFFFFFFLL, &v64);
  v36 = *(&v64 + 1);
  if (*(&v64 + 1) != v65)
  {
    v37 = sub_31A76C(&v64);
    v38 = v37;
    v40 = v39;
    v41 = v37 & 0xFFFFFFFF00000000;
    v36 = *(&v64 + 1);
    v42 = v38;
    if (!*(&v64 + 1))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v40 = 0x7FFFFFFF;
  v41 = 0xFFFFFFFF00000000;
  v42 = 0xFFFFFFFFLL;
  if (*(&v64 + 1))
  {
LABEL_14:
    v65 = v36;
    operator delete(v36);
  }

LABEL_15:
  v62 = v41 | v42;
  v63 = v40;
  *(a20 + 72) |= 4u;
  v43 = *(a20 + 120);
  if (v43)
  {
    *(v43 + 4) |= 1u;
    v44 = v43[5];
    if (v44)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v45 = *(a20 + 64);
  v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
  if (v45)
  {
    v46 = *v46;
  }

  v43 = sub_12E2318(v46);
  *(a20 + 120) = v43;
  *(v43 + 4) |= 1u;
  v44 = v43[5];
  if (!v44)
  {
LABEL_23:
    v47 = v43[1];
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v44 = sub_16F5828(v48);
    v43[5] = v44;
  }

LABEL_26:
  sub_EC6DFC(&v62, v44, v35);
  *(a20 + 72) |= 4u;
  v49 = *(a20 + 120);
  if (!v49)
  {
    v50 = *(a20 + 64);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    v49 = sub_12E2318(v51);
    *(a20 + 120) = v49;
  }

  *(v49 + 4) |= 4u;
  v49[7] = a6;
  if ((atomic_load_explicit(&qword_2732EE0, memory_order_acquire) & 1) == 0)
  {
    sub_21E1940();
  }

  sub_416488(&dword_2732E60, a7, &v64);
  *(a20 + 72) |= 1u;
  v52 = *(a20 + 64);
  v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
  if (v52)
  {
    v53 = *v53;
  }

  sub_194EA1C((a20 + 104), &v64, v53);
  if (SHIBYTE(v65) >= 0)
  {
    v54 = &v64;
  }

  else
  {
    v54 = v64;
  }

  if (SHIBYTE(v65) >= 0)
  {
    v55 = HIBYTE(v65);
  }

  else
  {
    v55 = *(&v64 + 1);
  }

  v56 = sub_AAD8(&v66, v54, v55);
  v57 = (HIDWORD(v62) + (((v62 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v62 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v62 + 0x388152A534) ^ 0xDEADBEEFLL;
  v58 = v56 ^ v34 ^ v57 ^ (v63 + (v57 << 6) + (v57 >> 2) + 2654435769u);
  *(a20 + 72) |= 0x10u;
  *(a20 + 136) = v58;
  *(a20 + 48) = 1;
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }
}

void sub_416188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4161BC(__int128 **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * (a1[1] - *a1);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5D1745D1745D1746 * (a1[2] - *a1);
  }

  if ((0x2E8BA2E8BA2E8BA3 * (a1[2] - *a1)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 16 * (a1[1] - *a1);
  v7 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v7;
  *(v16 + 32) = *(a2 + 32);
  *(v16 + 48) = *(a2 + 48);
  sub_12DD578(176 * v2 + 56, a2 + 56);
  *(v16 + 168) = *(a2 + 168);
  v8 = 176 * v2 + 176;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = (v16 + v11);
  if (*a1 != v10)
  {
    v13 = *a1;
    v14 = v16 + v11;
    do
    {
      sub_416370(v14, v13);
      v13 += 11;
      v14 += 176;
    }

    while (v13 != v10);
    do
    {
      sub_12DD690(v9 + 56);
      v9 += 11;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_41635C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_416430(va);
  _Unwind_Resume(a1);
}

uint64_t sub_416370(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_12DD2CC(a1 + 56, 0, 0);
  if (a1 != a2)
  {
    v7 = *(a1 + 64);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v8 = *(a2 + 8);
    if ((v8 & 2) != 0)
    {
      v8 = 0;
    }

    else if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v7 == v8)
    {
      sub_12DE8F4(a1 + 56, a2 + 56);
    }

    else
    {
      sub_12DE878(a1 + 56, a2 + 56);
    }
  }

  *(a1 + 168) = *(a2 + 21);
  return a1;
}

uint64_t sub_416430(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_12DD690(i - 120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_416488@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(result + 96);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2;
    if (v5 <= a2)
    {
      v7 = a2 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & a2;
  }

  v8 = *(*(result + 88) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_21:
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_46:
      *(a3 + 23) = 7;
      strcpy(a3, "Invalid");
      return result;
    }

    sub_19594F8(&v24);
    v13 = sub_4A5C(&v24, "Invalid scenario id: ", 21);
    std::to_string(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v13, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v16 = v34;
      if ((v34 & 0x10) == 0)
      {
LABEL_30:
        if ((v16 & 8) == 0)
        {
          v17 = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_41:
          __p.__r_.__value_.__s.__data_[v17] = 0;
          sub_7E854(&__p, 3u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v32 < 0)
          {
            operator delete(v31);
          }

          std::locale::~locale(&v26);
          std::ostream::~ostream();
          result = std::ios::~ios();
          goto LABEL_46;
        }

        v19 = v27;
        v17 = v28 - v27;
        if ((v28 - v27) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_48:
          sub_3244();
        }

LABEL_36:
        if (v17 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v17;
        if (v17)
        {
          memmove(&__p, v19, v17);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v16 = v34;
      if ((v34 & 0x10) == 0)
      {
        goto LABEL_30;
      }
    }

    v18 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v18 = v30;
    }

    v19 = v29;
    v17 = v18 - v29;
    if (v18 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = v5 - 1;
    while (1)
    {
      v11 = v9[1];
      if (v11 == a2)
      {
        if (*(v9 + 4) == a2)
        {
          goto LABEL_49;
        }
      }

      else if ((v11 & v10) != v7)
      {
        goto LABEL_21;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 == a2)
    {
      break;
    }

    if (v12 >= v5)
    {
      v12 %= v5;
    }

    if (v12 != v7)
    {
      goto LABEL_21;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (*(v9 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_49:
  if (*(v9 + 47) < 0)
  {
    v21 = v9[3];
    v22 = v9[4];

    return sub_325C(a3, v21, v22);
  }

  else
  {
    v20 = *(v9 + 3);
    *(a3 + 16) = v9[5];
    *a3 = v20;
  }

  return result;
}

void sub_416878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void *sub_4168DC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4169D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_4169F0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_4169F0(void ***result)
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
      if (v4 != v2)
      {
        do
        {
          v6 = v4 - 176;
          sub_12DD690(v4 - 120);
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_416A6C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v7 = a2;
    v8 = (a2 - 176);
    v9 = v6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = v9;
          v10 = v7 - v9;
          v11 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v9) >> 4);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                return sub_4180F8(v6, v6 + 176, v8);
              case 4:
                result = sub_4180F8(v6, v6 + 176, v6 + 352);
                v110 = *(v7 - 20);
                v111 = *(v6 + 508);
                v112 = *(v7 - 160) < *(v6 + 368);
                v108 = v110 == v111;
                v113 = v110 > v111;
                if (!v108)
                {
                  v112 = v113;
                }

                if (v112)
                {
                  result = sub_418878((v6 + 352), v8);
                  v114 = *(v6 + 508);
                  v115 = *(v6 + 332);
                  v116 = *(v6 + 368) < *(v6 + 192);
                  v108 = v114 == v115;
                  v117 = v114 > v115;
                  if (!v108)
                  {
                    v116 = v117;
                  }

                  if (v116)
                  {
                    result = sub_418878((v6 + 176), (v6 + 352));
                    v118 = *(v6 + 332);
                    v119 = *(v6 + 156);
                    v120 = *(v6 + 192) < *(v6 + 16);
                    v108 = v118 == v119;
                    v121 = v118 > v119;
                    if (!v108)
                    {
                      v120 = v121;
                    }

                    if (v120)
                    {
                      return sub_418878(v6, (v6 + 176));
                    }
                  }
                }

                return result;
              case 5:
                return sub_418240(v6, v6 + 176, v6 + 352, v6 + 528, v8);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v7 = a2;
            if (v11 == 2)
            {
              v105 = *(a2 - 20);
              v106 = *(v6 + 156);
              v107 = *(a2 - 160) < *(v6 + 16);
              v108 = v105 == v106;
              v109 = v105 > v106;
              if (!v108)
              {
                v107 = v109;
              }

              if (v107)
              {
                return sub_418878(v6, v8);
              }

              return result;
            }
          }

          if (v10 <= 4223)
          {
            if (a4)
            {
              if (v6 != v7)
              {
                v122 = v6 + 176;
                if (v6 + 176 != a2)
                {
                  v123 = 0;
                  v124 = v6;
                  do
                  {
                    v167 = v122;
                    v168 = *(v124 + 332);
                    v169 = *(v124 + 156);
                    v170 = *(v124 + 192) < *(v124 + 16);
                    v108 = v168 == v169;
                    v171 = v168 > v169;
                    if (!v108)
                    {
                      v170 = v171;
                    }

                    if (v170)
                    {
                      v172 = *v167;
                      v173 = *(v167 + 16);
                      v174 = *(v167 + 32);
                      v289 = *(v167 + 48);
                      v287 = v173;
                      v288 = v174;
                      v286 = v172;
                      sub_12DD2CC(&v290, 0, 0);
                      if (&v286 != v167)
                      {
                        v175 = v291;
                        if ((v291 & 2) != 0)
                        {
                          v175 = 0;
                        }

                        else if (v291)
                        {
                          v175 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        v176 = *(v124 + 240);
                        if ((v176 & 2) != 0)
                        {
                          v176 = 0;
                        }

                        else if (v176)
                        {
                          v176 = *(v176 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        if (v175 == v176)
                        {
                          sub_12DE8F4(&v290, v124 + 232);
                        }

                        else
                        {
                          sub_12DE878(&v290, v124 + 232);
                        }
                      }

                      v293 = *(v124 + 344);
                      v177 = v123;
                      while (1)
                      {
                        v178 = v6 + v177;
                        v179 = *(v6 + v177 + 16);
                        *(v178 + 176) = *(v6 + v177);
                        *(v178 + 192) = v179;
                        *(v178 + 208) = *(v6 + v177 + 32);
                        *(v178 + 224) = *(v6 + v177 + 48);
                        v180 = *(v6 + v177 + 240);
                        if ((v180 & 2) != 0)
                        {
                          v180 = 0;
                        }

                        else if (v180)
                        {
                          v180 = *(v180 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        v181 = *(v178 + 64);
                        if ((v181 & 2) != 0)
                        {
                          v181 = 0;
                        }

                        else if (v181)
                        {
                          v181 = *(v181 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        if (v180 == v181)
                        {
                          sub_12DE8F4(v178 + 232, v178 + 56);
                        }

                        else
                        {
                          sub_12DE878(v178 + 232, v178 + 56);
                        }

                        v182 = v6 + v177;
                        *(v6 + v177 + 344) = *(v6 + v177 + 168);
                        if (!v177)
                        {
                          break;
                        }

                        v183 = *(v182 - 20);
                        v184 = v287 < *(v182 - 160);
                        if (v292 != v183)
                        {
                          v184 = v292 > v183;
                        }

                        v177 -= 176;
                        if (!v184)
                        {
                          v185 = v6 + v177 + 176;
                          goto LABEL_273;
                        }
                      }

                      v185 = v6;
LABEL_273:
                      v186 = v286;
                      v187 = v287;
                      v188 = v288;
                      *(v185 + 48) = v289;
                      *(v185 + 16) = v187;
                      *(v185 + 32) = v188;
                      *v185 = v186;
                      if (v185 != &v286)
                      {
                        v189 = *(v185 + 64);
                        if ((v189 & 2) != 0)
                        {
                          v189 = 0;
                        }

                        else if (v189)
                        {
                          v189 = *(v189 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        v190 = v291;
                        if ((v291 & 2) != 0)
                        {
                          v190 = 0;
                        }

                        else if (v291)
                        {
                          v190 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        if (v189 == v190)
                        {
                          sub_12DE8F4(v182 + 56, &v290);
                        }

                        else
                        {
                          sub_12DE878(v182 + 56, &v290);
                        }
                      }

                      *(v185 + 168) = v293;
                      result = sub_12DD690(&v290);
                    }

                    v122 = v167 + 176;
                    v123 += 176;
                    v124 = v167;
                  }

                  while (v167 + 176 != a2);
                }
              }
            }

            else if (v6 != v7)
            {
              v255 = v6 + 176;
              if (v6 + 176 != a2)
              {
                v256 = v6 - 160;
                do
                {
                  v257 = v255;
                  v258 = *(v6 + 332);
                  v259 = *(v6 + 156);
                  v260 = *(v6 + 192) < *(v6 + 16);
                  v108 = v258 == v259;
                  v261 = v258 > v259;
                  if (!v108)
                  {
                    v260 = v261;
                  }

                  if (v260)
                  {
                    v262 = *v257;
                    v263 = *(v257 + 16);
                    v264 = *(v257 + 32);
                    v289 = *(v257 + 48);
                    v287 = v263;
                    v288 = v264;
                    v286 = v262;
                    sub_12DD2CC(&v290, 0, 0);
                    if (&v286 != v257)
                    {
                      v265 = v291;
                      if ((v291 & 2) != 0)
                      {
                        v265 = 0;
                      }

                      else if (v291)
                      {
                        v265 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      v266 = *(v6 + 240);
                      if ((v266 & 2) != 0)
                      {
                        v266 = 0;
                      }

                      else if (v266)
                      {
                        v266 = *(v266 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      if (v265 == v266)
                      {
                        sub_12DE8F4(&v290, v6 + 232);
                      }

                      else
                      {
                        sub_12DE878(&v290, v6 + 232);
                      }
                    }

                    v293 = *(v6 + 344);
                    v267 = v256;
                    do
                    {
                      v270 = *(v267 + 176);
                      *(v267 + 336) = *(v267 + 160);
                      *(v267 + 352) = v270;
                      *(v267 + 368) = *(v267 + 192);
                      *(v267 + 384) = *(v267 + 208);
                      v271 = *(v267 + 400);
                      if ((v271 & 2) != 0)
                      {
                        v271 = 0;
                      }

                      else if (v271)
                      {
                        v271 = *(v271 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      v272 = *(v267 + 224);
                      if ((v272 & 2) != 0)
                      {
                        v272 = 0;
                      }

                      else if (v272)
                      {
                        v272 = *(v272 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      if (v271 == v272)
                      {
                        sub_12DE8F4(v267 + 392, v267 + 216);
                      }

                      else
                      {
                        sub_12DE878(v267 + 392, v267 + 216);
                      }

                      *(v267 + 504) = *(v267 + 328);
                      v268 = *(v267 + 140);
                      v269 = v287 < *v267;
                      if (v292 != v268)
                      {
                        v269 = v292 > v268;
                      }

                      v267 -= 176;
                    }

                    while (v269);
                    v273 = v286;
                    v274 = v287;
                    v275 = v288;
                    *(v267 + 384) = v289;
                    *(v267 + 352) = v274;
                    *(v267 + 368) = v275;
                    *(v267 + 336) = v273;
                    if ((v267 + 336) != &v286)
                    {
                      v276 = *(v267 + 400);
                      if ((v276 & 2) != 0)
                      {
                        v276 = 0;
                      }

                      else if (v276)
                      {
                        v276 = *(v276 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      v277 = v291;
                      if ((v291 & 2) != 0)
                      {
                        v277 = 0;
                      }

                      else if (v291)
                      {
                        v277 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      if (v276 == v277)
                      {
                        sub_12DE8F4(v267 + 392, &v290);
                      }

                      else
                      {
                        sub_12DE878(v267 + 392, &v290);
                      }
                    }

                    *(v267 + 504) = v293;
                    result = sub_12DD690(&v290);
                  }

                  v255 = v257 + 176;
                  v256 += 176;
                  v6 = v257;
                }

                while (v257 + 176 != a2);
              }
            }

            return result;
          }

          if (!a3)
          {
            if (v6 != v7)
            {
              v125 = v12 >> 1;
              v126 = v12 >> 1;
              do
              {
                v127 = v126;
                if (v125 >= v126)
                {
                  v128 = (2 * v126) | 1;
                  v129 = v6 + 176 * v128;
                  if (2 * v126 + 2 < v11)
                  {
                    v130 = *(v129 + 156);
                    v131 = *(v129 + 332);
                    v132 = *(v129 + 16) < *(v129 + 192);
                    v108 = v130 == v131;
                    v133 = v130 > v131;
                    if (!v108)
                    {
                      v132 = v133;
                    }

                    v134 = !v132;
                    if (v132)
                    {
                      v135 = 176;
                    }

                    else
                    {
                      v135 = 0;
                    }

                    v129 += v135;
                    if (!v134)
                    {
                      v128 = 2 * v126 + 2;
                    }
                  }

                  v136 = v6 + 176 * v126;
                  v137 = *(v129 + 156);
                  v138 = *(v136 + 156);
                  v139 = *(v129 + 16) < *(v136 + 16);
                  v108 = v137 == v138;
                  v140 = v137 > v138;
                  if (!v108)
                  {
                    v139 = v140;
                  }

                  if (!v139)
                  {
                    v141 = *v136;
                    v142 = *(v136 + 16);
                    v143 = *(v136 + 32);
                    v289 = *(v136 + 48);
                    v287 = v142;
                    v288 = v143;
                    v286 = v141;
                    sub_12DD2CC(&v290, 0, 0);
                    if (&v286 != v136)
                    {
                      v144 = v291;
                      if ((v291 & 2) != 0)
                      {
                        v144 = 0;
                      }

                      else if (v291)
                      {
                        v144 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      v145 = *(v136 + 64);
                      if ((v145 & 2) != 0)
                      {
                        v145 = 0;
                      }

                      else if (v145)
                      {
                        v145 = *(v145 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      if (v144 == v145)
                      {
                        sub_12DE8F4(&v290, v136 + 56);
                      }

                      else
                      {
                        sub_12DE878(&v290, v136 + 56);
                      }
                    }

                    v293 = *(v136 + 168);
                    do
                    {
                      v149 = v129;
                      v150 = *v129;
                      v151 = *(v129 + 16);
                      v152 = *(v129 + 32);
                      *(v136 + 48) = *(v129 + 48);
                      *(v136 + 16) = v151;
                      *(v136 + 32) = v152;
                      *v136 = v150;
                      if (v136 != v129)
                      {
                        v153 = *(v136 + 64);
                        if ((v153 & 2) != 0)
                        {
                          v153 = 0;
                        }

                        else if (v153)
                        {
                          v153 = *(v153 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        v154 = *(v129 + 64);
                        if ((v154 & 2) != 0)
                        {
                          v154 = 0;
                        }

                        else if (v154)
                        {
                          v154 = *(v154 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        if (v153 == v154)
                        {
                          sub_12DE8F4(v136 + 56, v129 + 56);
                        }

                        else
                        {
                          sub_12DE878(v136 + 56, v129 + 56);
                        }
                      }

                      *(v136 + 168) = *(v129 + 168);
                      if (v125 < v128)
                      {
                        break;
                      }

                      v155 = (2 * v128) | 1;
                      v129 = v6 + 176 * v155;
                      if (2 * v128 + 2 < v11)
                      {
                        v156 = *(v129 + 156);
                        v157 = *(v129 + 332);
                        v158 = *(v129 + 16) < *(v129 + 192);
                        v108 = v156 == v157;
                        v159 = v156 > v157;
                        if (!v108)
                        {
                          v158 = v159;
                        }

                        v160 = !v158;
                        if (v158)
                        {
                          v161 = 176;
                        }

                        else
                        {
                          v161 = 0;
                        }

                        v129 += v161;
                        if (!v160)
                        {
                          v155 = 2 * v128 + 2;
                        }
                      }

                      v146 = *(v129 + 156);
                      v147 = *(v129 + 16) < v287;
                      v108 = v146 == v292;
                      v148 = v146 > v292;
                      if (!v108)
                      {
                        v147 = v148;
                      }

                      v136 = v149;
                      v128 = v155;
                    }

                    while (!v147);
                    v162 = v286;
                    v163 = v287;
                    v164 = v288;
                    *(v149 + 48) = v289;
                    *(v149 + 16) = v163;
                    *(v149 + 32) = v164;
                    *v149 = v162;
                    if (v149 != &v286)
                    {
                      v165 = *(v149 + 64);
                      if ((v165 & 2) != 0)
                      {
                        v165 = 0;
                      }

                      else if (v165)
                      {
                        v165 = *(v165 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      v166 = v291;
                      if ((v291 & 2) != 0)
                      {
                        v166 = 0;
                      }

                      else if (v291)
                      {
                        v166 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                      }

                      if (v165 == v166)
                      {
                        sub_12DE8F4(v149 + 56, &v290);
                      }

                      else
                      {
                        sub_12DE878(v149 + 56, &v290);
                      }
                    }

                    *(v149 + 168) = v293;
                    sub_12DD690(&v290);
                  }
                }

                v126 = v127 - 1;
              }

              while (v127);
              v191 = 0x2E8BA2E8BA2E8BA3 * (v10 >> 4);
              do
              {
                v193 = a2;
                v194 = *v6;
                v195 = *(v6 + 16);
                v196 = *(v6 + 32);
                v282 = *(v6 + 48);
                v280 = v195;
                v281 = v196;
                v279 = v194;
                sub_12DD2CC(&v283, 0, 0);
                if (&v279 != v6)
                {
                  v197 = v284;
                  if ((v284 & 2) != 0)
                  {
                    v197 = 0;
                  }

                  else if (v284)
                  {
                    v197 = *(v284 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  v198 = *(v6 + 64);
                  if ((v198 & 2) != 0)
                  {
                    v198 = 0;
                  }

                  else if (v198)
                  {
                    v198 = *(v198 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  if (v197 == v198)
                  {
                    sub_12DE8F4(&v283, v6 + 56);
                  }

                  else
                  {
                    sub_12DE878(&v283, v6 + 56);
                  }
                }

                v199 = 0;
                v285 = *(v6 + 168);
                v200 = v6;
                do
                {
                  v201 = v200;
                  v202 = v200 + 176 * v199;
                  v200 = v202 + 176;
                  if (2 * v199 + 2 >= v191)
                  {
                    v199 = (2 * v199) | 1;
                  }

                  else
                  {
                    v203 = *(v202 + 332);
                    v204 = *(v202 + 508);
                    v205 = *(v202 + 192) < *(v202 + 368);
                    v108 = v203 == v204;
                    v206 = v203 > v204;
                    if (!v108)
                    {
                      v205 = v206;
                    }

                    v207 = v202 + 352;
                    if (v205)
                    {
                      v200 = v207;
                      v199 = 2 * v199 + 2;
                    }

                    else
                    {
                      v199 = (2 * v199) | 1;
                    }
                  }

                  v208 = *v200;
                  v209 = *(v200 + 16);
                  v210 = *(v200 + 32);
                  *(v201 + 48) = *(v200 + 48);
                  *(v201 + 16) = v209;
                  *(v201 + 32) = v210;
                  *v201 = v208;
                  if (v201 != v200)
                  {
                    v211 = *(v201 + 64);
                    if ((v211 & 2) != 0)
                    {
                      v211 = 0;
                    }

                    else if (v211)
                    {
                      v211 = *(v211 & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    v212 = *(v200 + 64);
                    if ((v212 & 2) != 0)
                    {
                      v212 = 0;
                    }

                    else if (v212)
                    {
                      v212 = *(v212 & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    if (v211 == v212)
                    {
                      sub_12DE8F4(v201 + 56, v200 + 56);
                    }

                    else
                    {
                      sub_12DE878(v201 + 56, v200 + 56);
                    }
                  }

                  *(v201 + 168) = *(v200 + 168);
                }

                while (v199 <= ((v191 - 2) >> 1));
                v213 = (a2 - 176);
                a2 -= 176;
                if (v200 == v193 - 176)
                {
                  v218 = v279;
                  v219 = v280;
                  v220 = v281;
                  *(v200 + 48) = v282;
                  *(v200 + 16) = v219;
                  *(v200 + 32) = v220;
                  *v200 = v218;
                  if (v200 != &v279)
                  {
                    v221 = *(v200 + 64);
                    if ((v221 & 2) != 0)
                    {
                      v221 = 0;
                    }

                    else if (v221)
                    {
                      v221 = *(v221 & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    v239 = v284;
                    if ((v284 & 2) != 0)
                    {
                      v239 = 0;
                    }

                    else if (v284)
                    {
                      v239 = *(v284 & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    if (v221 == v239)
                    {
                      sub_12DE8F4(v200 + 56, &v283);
                    }

                    else
                    {
                      sub_12DE878(v200 + 56, &v283);
                    }
                  }

                  *(v200 + 168) = v285;
                }

                else
                {
                  v214 = *v213;
                  v215 = *(v193 - 160);
                  v216 = *(v193 - 144);
                  *(v200 + 48) = *(v193 - 128);
                  *(v200 + 16) = v215;
                  *(v200 + 32) = v216;
                  *v200 = v214;
                  v217 = *(v200 + 64);
                  if ((v217 & 2) != 0)
                  {
                    v217 = 0;
                  }

                  else if (v217)
                  {
                    v217 = *(v217 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  v222 = *(v193 - 112);
                  if ((v222 & 2) != 0)
                  {
                    v222 = 0;
                  }

                  else if (v222)
                  {
                    v222 = *(v222 & 0xFFFFFFFFFFFFFFFCLL);
                  }

                  if (v217 == v222)
                  {
                    sub_12DE8F4(v200 + 56, v193 - 120);
                  }

                  else
                  {
                    sub_12DE878(v200 + 56, v193 - 120);
                  }

                  *(v200 + 168) = *(v193 - 8);
                  v223 = v279;
                  v224 = v280;
                  v225 = v281;
                  *(v193 - 128) = v282;
                  *(v193 - 160) = v224;
                  *(v193 - 144) = v225;
                  *v213 = v223;
                  if (v213 != &v279)
                  {
                    v226 = *(v193 - 112);
                    if ((v226 & 2) != 0)
                    {
                      v226 = 0;
                    }

                    else if (v226)
                    {
                      v226 = *(v226 & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    v227 = v284;
                    if ((v284 & 2) != 0)
                    {
                      v227 = 0;
                    }

                    else if (v284)
                    {
                      v227 = *(v284 & 0xFFFFFFFFFFFFFFFCLL);
                    }

                    if (v226 == v227)
                    {
                      sub_12DE8F4(v193 - 120, &v283);
                    }

                    else
                    {
                      sub_12DE878(v193 - 120, &v283);
                    }
                  }

                  *(v193 - 8) = v285;
                  v228 = v200 + 176 - v6;
                  if (v228 >= 177)
                  {
                    v229 = (0x2E8BA2E8BA2E8BA3 * (v228 >> 4) - 2) >> 1;
                    v230 = v6 + 176 * v229;
                    v231 = *(v230 + 156);
                    v232 = *(v200 + 156);
                    v233 = *(v230 + 16) < *(v200 + 16);
                    v108 = v231 == v232;
                    v234 = v231 > v232;
                    if (!v108)
                    {
                      v233 = v234;
                    }

                    if (v233)
                    {
                      v235 = *v200;
                      v236 = *(v200 + 16);
                      v237 = *(v200 + 32);
                      v289 = *(v200 + 48);
                      v287 = v236;
                      v288 = v237;
                      v286 = v235;
                      sub_12DD2CC(&v290, 0, 0);
                      if (&v286 != v200)
                      {
                        v238 = v291;
                        if ((v291 & 2) != 0)
                        {
                          v238 = 0;
                        }

                        else if (v291)
                        {
                          v238 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        v240 = *(v200 + 64);
                        if ((v240 & 2) != 0)
                        {
                          v240 = 0;
                        }

                        else if (v240)
                        {
                          v240 = *(v240 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        if (v238 == v240)
                        {
                          sub_12DE8F4(&v290, v200 + 56);
                        }

                        else
                        {
                          sub_12DE878(&v290, v200 + 56);
                        }
                      }

                      v293 = *(v200 + 168);
                      do
                      {
                        v241 = v230;
                        v242 = *v230;
                        v243 = *(v230 + 16);
                        v244 = *(v230 + 32);
                        *(v200 + 48) = *(v230 + 48);
                        *(v200 + 16) = v243;
                        *(v200 + 32) = v244;
                        *v200 = v242;
                        if (v200 != v230)
                        {
                          v245 = *(v200 + 64);
                          if ((v245 & 2) != 0)
                          {
                            v245 = 0;
                          }

                          else if (v245)
                          {
                            v245 = *(v245 & 0xFFFFFFFFFFFFFFFCLL);
                          }

                          v246 = *(v230 + 64);
                          if ((v246 & 2) != 0)
                          {
                            v246 = 0;
                          }

                          else if (v246)
                          {
                            v246 = *(v246 & 0xFFFFFFFFFFFFFFFCLL);
                          }

                          if (v245 == v246)
                          {
                            sub_12DE8F4(v200 + 56, v230 + 56);
                          }

                          else
                          {
                            sub_12DE878(v200 + 56, v230 + 56);
                          }
                        }

                        *(v200 + 168) = *(v230 + 168);
                        if (!v229)
                        {
                          break;
                        }

                        v229 = (v229 - 1) >> 1;
                        v230 = v6 + 176 * v229;
                        v247 = *(v230 + 156);
                        v248 = *(v230 + 16) < v287;
                        v108 = v247 == v292;
                        v249 = v247 > v292;
                        if (!v108)
                        {
                          v248 = v249;
                        }

                        v200 = v241;
                      }

                      while (v248);
                      v250 = v286;
                      v251 = v287;
                      v252 = v288;
                      *(v241 + 48) = v289;
                      *(v241 + 16) = v251;
                      *(v241 + 32) = v252;
                      *v241 = v250;
                      if (v241 != &v286)
                      {
                        v253 = *(v241 + 64);
                        if ((v253 & 2) != 0)
                        {
                          v253 = 0;
                        }

                        else if (v253)
                        {
                          v253 = *(v253 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        v254 = v291;
                        if ((v291 & 2) != 0)
                        {
                          v254 = 0;
                        }

                        else if (v291)
                        {
                          v254 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
                        }

                        if (v253 == v254)
                        {
                          sub_12DE8F4(v241 + 56, &v290);
                        }

                        else
                        {
                          sub_12DE878(v241 + 56, &v290);
                        }
                      }

                      *(v241 + 168) = v293;
                      sub_12DD690(&v290);
                    }
                  }
                }

                result = sub_12DD690(&v283);
              }

              while (v191-- > 2);
            }

            return result;
          }

          v13 = v11 >> 1;
          v14 = (v6 + 176 * (v11 >> 1));
          if (v10 < 0x5801)
          {
            sub_4180F8(v14, v6, v8);
            --a3;
            v7 = a2;
            if (a4)
            {
              break;
            }
          }

          else
          {
            sub_4180F8(v6, v14, v8);
            v15 = 176 * v13;
            sub_4180F8(v6 + 176, v15 + v6 - 176, a2 - 352);
            sub_4180F8(v6 + 352, v6 + 176 + v15, a2 - 528);
            sub_4180F8(v15 + v6 - 176, v14, v6 + 176 + v15);
            sub_418878(v6, v14);
            --a3;
            v7 = a2;
            if (a4)
            {
              break;
            }
          }

          v16 = *(v6 - 20);
          v17 = *(v6 + 156);
          v18 = *(v6 - 160) < *(v6 + 16);
          v108 = v16 == v17;
          v19 = v16 > v17;
          if (!v108)
          {
            v18 = v19;
          }

          if (v18)
          {
            break;
          }

          v63 = *v6;
          v64 = *(v6 + 16);
          v65 = *(v6 + 32);
          v289 = *(v6 + 48);
          v287 = v64;
          v288 = v65;
          v286 = v63;
          sub_12DD2CC(&v290, 0, 0);
          if (&v286 != v6)
          {
            v66 = v291;
            if ((v291 & 2) != 0)
            {
              v66 = 0;
            }

            else if (v291)
            {
              v66 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v67 = *(v6 + 64);
            if ((v67 & 2) != 0)
            {
              v67 = 0;
            }

            else if (v67)
            {
              v67 = *(v67 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (v66 == v67)
            {
              sub_12DE8F4(&v290, v6 + 56);
            }

            else
            {
              sub_12DE878(&v290, v6 + 56);
            }
          }

          v293 = *(v6 + 168);
          v68 = *(v7 - 20);
          v69 = v287 < *(v7 - 160);
          v108 = v292 == v68;
          v70 = v292 > v68;
          if (!v108)
          {
            v69 = v70;
          }

          if (v69)
          {
            v71 = v6;
            do
            {
              v9 = v71 + 176;
              v72 = *(v71 + 192);
              v73 = *(v71 + 332);
              v74 = v287 < v72;
              v108 = v292 == v73;
              v75 = v292 > v73;
              if (!v108)
              {
                v74 = v75;
              }

              v71 = v9;
            }

            while (!v74);
          }

          else
          {
            v76 = v6 + 176;
            do
            {
              v9 = v76;
              if (v76 >= v7)
              {
                break;
              }

              v77 = *(v76 + 156);
              v78 = v287 < *(v76 + 16);
              v108 = v292 == v77;
              v79 = v292 > v77;
              if (v108)
              {
                v79 = v78;
              }

              v76 = v9 + 176;
            }

            while (!v79);
          }

          v80 = v7;
          if (v9 < v7)
          {
            do
            {
              v80 = (v7 - 176);
              v81 = *(v7 - 20);
              v82 = v287 < *(v7 - 160);
              v108 = v292 == v81;
              v83 = v292 > v81;
              if (!v108)
              {
                v82 = v83;
              }

              v7 -= 176;
            }

            while (v82);
          }

          while (v9 < v80)
          {
            sub_418878(v9, v80);
            do
            {
              v84 = *(v9 + 192);
              v85 = *(v9 + 332);
              v9 += 176;
              v86 = v287 < v84;
              v108 = v292 == v85;
              v87 = v292 > v85;
              if (!v108)
              {
                v86 = v87;
              }
            }

            while (!v86);
            do
            {
              v88 = *(v80 - 20);
              v89 = *(v80 - 5);
              v80 -= 11;
              v90 = v287 < v88;
              v108 = v292 == v89;
              v91 = v292 > v89;
              if (!v108)
              {
                v90 = v91;
              }
            }

            while (v90);
          }

          v92 = (v9 - 176);
          if (v9 - 176 != v6)
          {
            v93 = *v92;
            v94 = *(v9 - 160);
            v95 = *(v9 - 144);
            *(v6 + 48) = *(v9 - 128);
            *(v6 + 16) = v94;
            *(v6 + 32) = v95;
            *v6 = v93;
            v96 = *(v6 + 64);
            if ((v96 & 2) != 0)
            {
              v96 = 0;
            }

            else if (v96)
            {
              v96 = *(v96 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v97 = *(v9 - 112);
            if ((v97 & 2) != 0)
            {
              v97 = 0;
            }

            else if (v97)
            {
              v97 = *(v97 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v98 = v9 - 120;
            if (v96 == v97)
            {
              sub_12DE8F4(v6 + 56, v98);
            }

            else
            {
              sub_12DE878(v6 + 56, v98);
            }

            *(v6 + 168) = *(v9 - 8);
          }

          v99 = v286;
          v100 = v287;
          v101 = v288;
          *(v9 - 128) = v289;
          *(v9 - 160) = v100;
          *(v9 - 144) = v101;
          *v92 = v99;
          v108 = v92 == &v286;
          v7 = a2;
          if (!v108)
          {
            v102 = *(v9 - 112);
            if ((v102 & 2) != 0)
            {
              v102 = 0;
            }

            else if (v102)
            {
              v102 = *(v102 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v103 = v291;
            if ((v291 & 2) != 0)
            {
              v103 = 0;
            }

            else if (v291)
            {
              v103 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
            }

            v104 = v9 - 120;
            if (v102 == v103)
            {
              sub_12DE8F4(v104, &v290);
            }

            else
            {
              sub_12DE878(v104, &v290);
            }
          }

          *(v9 - 8) = v293;
          result = sub_12DD690(&v290);
          a4 = 0;
        }

        v20 = *v6;
        v21 = *(v6 + 16);
        v22 = *(v6 + 32);
        v289 = *(v6 + 48);
        v287 = v21;
        v288 = v22;
        v286 = v20;
        sub_12DD2CC(&v290, 0, 0);
        if (&v286 != v6)
        {
          v23 = v291;
          if ((v291 & 2) != 0)
          {
            v23 = 0;
          }

          else if (v291)
          {
            v23 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v24 = *(v6 + 64);
          if ((v24 & 2) != 0)
          {
            v24 = 0;
          }

          else if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v23 == v24)
          {
            sub_12DE8F4(&v290, v6 + 56);
          }

          else
          {
            sub_12DE878(&v290, v6 + 56);
          }
        }

        v25 = 0;
        v293 = *(v6 + 168);
        do
        {
          v26 = *(v6 + v25 + 332);
          v108 = v26 == v292;
          v27 = v26 > v292;
          if (v108)
          {
            v27 = *(v6 + v25 + 192) < v287;
          }

          v25 += 176;
        }

        while (v27);
        v28 = v6 + v25;
        v29 = v7;
        if (v25 == 176)
        {
          v35 = v7;
          while (v28 < v35)
          {
            v30 = (v35 - 176);
            v36 = *(v35 - 160);
            v37 = *(v35 - 20);
            v38 = v36 < v287;
            v108 = v37 == v292;
            v39 = v37 > v292;
            if (!v108)
            {
              v38 = v39;
            }

            v35 = v30;
            if (v38)
            {
              goto LABEL_45;
            }
          }

          v30 = v35;
          v9 = v28;
        }

        else
        {
          do
          {
            v30 = (v29 - 176);
            v31 = *(v29 - 160);
            v32 = *(v29 - 20);
            v33 = v31 < v287;
            v108 = v32 == v292;
            v34 = v32 > v292;
            if (!v108)
            {
              v33 = v34;
            }

            v29 = v30;
          }

          while (!v33);
LABEL_45:
          v9 = v28;
          if (v28 < v30)
          {
            v40 = v30;
            do
            {
              sub_418878(v9, v40);
              do
              {
                v41 = *(v9 + 192);
                v42 = *(v9 + 332);
                v9 += 176;
                v43 = v41 < v287;
                v108 = v42 == v292;
                v44 = v42 > v292;
                if (!v108)
                {
                  v43 = v44;
                }
              }

              while (v43);
              do
              {
                v45 = *(v40 - 20);
                v46 = *(v40 - 5);
                v40 -= 11;
                v47 = v45 < v287;
                v108 = v46 == v292;
                v48 = v46 > v292;
                if (!v108)
                {
                  v47 = v48;
                }
              }

              while (!v47);
            }

            while (v9 < v40);
          }
        }

        v49 = (v9 - 176);
        if (v9 - 176 != v6)
        {
          v50 = *v49;
          v51 = *(v9 - 160);
          v52 = *(v9 - 144);
          *(v6 + 48) = *(v9 - 128);
          *(v6 + 16) = v51;
          *(v6 + 32) = v52;
          *v6 = v50;
          v53 = *(v6 + 64);
          if ((v53 & 2) != 0)
          {
            v53 = 0;
          }

          else if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v54 = *(v9 - 112);
          if ((v54 & 2) != 0)
          {
            v54 = 0;
          }

          else if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v55 = v9 - 120;
          if (v53 == v54)
          {
            sub_12DE8F4(v6 + 56, v55);
          }

          else
          {
            sub_12DE878(v6 + 56, v55);
          }

          *(v6 + 168) = *(v9 - 8);
        }

        v56 = v286;
        v57 = v287;
        v58 = v288;
        *(v9 - 128) = v289;
        *(v9 - 160) = v57;
        *(v9 - 144) = v58;
        *v49 = v56;
        if (v49 != &v286)
        {
          v59 = *(v9 - 112);
          if ((v59 & 2) != 0)
          {
            v59 = 0;
          }

          else if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v60 = v291;
          if ((v291 & 2) != 0)
          {
            v60 = 0;
          }

          else if (v291)
          {
            v60 = *(v291 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v61 = v9 - 120;
          if (v59 == v60)
          {
            sub_12DE8F4(v61, &v290);
          }

          else
          {
            sub_12DE878(v61, &v290);
          }
        }

        *(v9 - 8) = v293;
        sub_12DD690(&v290);
        if (v28 >= v30)
        {
          break;
        }

LABEL_83:
        result = sub_416A6C(v6, v9 - 176, a3, a4 & 1);
        a4 = 0;
      }

      v62 = sub_41842C(v6, v9 - 176);
      result = sub_41842C(v9, v7);
      if (result)
      {
        break;
      }

      if (!v62)
      {
        goto LABEL_83;
      }
    }

    a2 = v9 - 176;
    if (!v62)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_4180F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 156);
  v6 = *(result + 156);
  v7 = v4 < *(result + 16);
  v8 = v5 == v6;
  v9 = v5 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  v10 = *(a3 + 156);
  v11 = *(a3 + 16) < v4;
  v8 = v10 == v5;
  v12 = v10 > v5;
  if (!v8)
  {
    v11 = v12;
  }

  if (v7)
  {
    if (v11)
    {
      v13 = a3;

      return sub_418878(result, v13);
    }

    result = sub_418878(result, a2);
    v20 = *(a3 + 156);
    v21 = *(a2 + 156);
    v22 = *(a3 + 16) < *(a2 + 16);
    v8 = v20 == v21;
    v23 = v20 > v21;
    if (!v8)
    {
      v22 = v23;
    }

    if (v22)
    {
      v13 = a3;
      result = a2;

      return sub_418878(result, v13);
    }
  }

  else if (v11)
  {
    v14 = result;
    result = sub_418878(a2, a3);
    v15 = *(a2 + 156);
    v16 = *(v14 + 156);
    v17 = *(a2 + 16) < *(v14 + 16);
    v8 = v15 == v16;
    v18 = v15 > v16;
    if (!v8)
    {
      v17 = v18;
    }

    if (v17)
    {
      result = v14;
      v13 = a2;

      return sub_418878(result, v13);
    }
  }

  return result;
}

uint64_t sub_418240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_4180F8(a1, a2, a3);
  v11 = *(a4 + 156);
  v12 = *(a3 + 156);
  v13 = *(a4 + 16) < *(a3 + 16);
  v14 = v11 == v12;
  v15 = v11 > v12;
  if (!v14)
  {
    v13 = v15;
  }

  if (v13)
  {
    result = sub_418878(a3, a4);
    v16 = *(a3 + 156);
    v17 = *(a2 + 156);
    v18 = *(a3 + 16) < *(a2 + 16);
    v14 = v16 == v17;
    v19 = v16 > v17;
    if (!v14)
    {
      v18 = v19;
    }

    if (v18)
    {
      result = sub_418878(a2, a3);
      v20 = *(a2 + 156);
      v21 = *(a1 + 156);
      v22 = *(a2 + 16) < *(a1 + 16);
      v14 = v20 == v21;
      v23 = v20 > v21;
      if (!v14)
      {
        v22 = v23;
      }

      if (v22)
      {
        result = sub_418878(a1, a2);
      }
    }
  }

  v24 = *(a5 + 156);
  v25 = *(a4 + 156);
  v26 = *(a5 + 16) < *(a4 + 16);
  v14 = v24 == v25;
  v27 = v24 > v25;
  if (!v14)
  {
    v26 = v27;
  }

  if (v26)
  {
    result = sub_418878(a4, a5);
    v28 = *(a4 + 156);
    v29 = *(a3 + 156);
    v30 = *(a4 + 16) < *(a3 + 16);
    v14 = v28 == v29;
    v31 = v28 > v29;
    if (!v14)
    {
      v30 = v31;
    }

    if (v30)
    {
      result = sub_418878(a3, a4);
      v32 = *(a3 + 156);
      v33 = *(a2 + 156);
      v34 = *(a3 + 16) < *(a2 + 16);
      v14 = v32 == v33;
      v35 = v32 > v33;
      if (!v14)
      {
        v34 = v35;
      }

      if (v34)
      {
        result = sub_418878(a2, a3);
        v36 = *(a2 + 156);
        v37 = *(a1 + 156);
        v38 = *(a2 + 16) < *(a1 + 16);
        v14 = v36 == v37;
        v39 = v36 > v37;
        if (!v14)
        {
          v38 = v39;
        }

        if (v38)
        {

          return sub_418878(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL sub_41842C(uint64_t a1, uint64_t a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_4180F8(a1, a1 + 176, a2 - 176);
        return 1;
      case 4:
        sub_4180F8(a1, a1 + 176, a1 + 352);
        v34 = *(a2 - 20);
        v35 = *(a1 + 508);
        v36 = *(a2 - 160) < *(a1 + 368);
        v8 = v34 == v35;
        v37 = v34 > v35;
        if (!v8)
        {
          v36 = v37;
        }

        if (!v36)
        {
          return 1;
        }

        sub_418878((a1 + 352), (a2 - 176));
        v38 = *(a1 + 508);
        v39 = *(a1 + 332);
        v40 = *(a1 + 368) < *(a1 + 192);
        v8 = v38 == v39;
        v41 = v38 > v39;
        if (!v8)
        {
          v40 = v41;
        }

        if (!v40)
        {
          return 1;
        }

        sub_418878((a1 + 176), (a1 + 352));
        v42 = *(a1 + 332);
        v43 = *(a1 + 156);
        v44 = *(a1 + 192) < *(a1 + 16);
        v8 = v42 == v43;
        v45 = v42 > v43;
        if (!v8)
        {
          v44 = v45;
        }

        if (!v44)
        {
          return 1;
        }

        v10 = (a1 + 176);
LABEL_8:
        sub_418878(a1, v10);
        return 1;
      case 5:
        sub_418240(a1, a1 + 176, a1 + 352, a1 + 528, a2 - 176);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 20);
      v6 = *(a1 + 156);
      v7 = *(a2 - 160) < *(a1 + 16);
      v8 = v5 == v6;
      v9 = v5 > v6;
      if (!v8)
      {
        v7 = v9;
      }

      if (!v7)
      {
        return 1;
      }

      v10 = (a2 - 176);
      goto LABEL_8;
    }
  }

  v11 = a1 + 352;
  sub_4180F8(a1, a1 + 176, a1 + 352);
  v12 = a1 + 528;
  if (a1 + 528 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 156);
    v16 = *(v11 + 156);
    v17 = *(v12 + 16) < *(v11 + 16);
    v8 = v15 == v16;
    v18 = v15 > v16;
    if (!v8)
    {
      v17 = v18;
    }

    if (!v17)
    {
      goto LABEL_16;
    }

    v19 = *(v12 + 16);
    v47 = *v12;
    v48 = v19;
    v49 = *(v12 + 32);
    v50 = *(v12 + 48);
    sub_12DD2CC(&v51, 0, 0);
    if (&v47 != v12)
    {
      v20 = v52;
      if ((v52 & 2) != 0)
      {
        v20 = 0;
      }

      else if (v52)
      {
        v20 = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v21 = *(v12 + 64);
      if ((v21 & 2) != 0)
      {
        v21 = 0;
      }

      else if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v20 == v21)
      {
        sub_12DE8F4(&v51, v12 + 56);
      }

      else
      {
        sub_12DE878(&v51, v12 + 56);
      }
    }

    v54 = *(v12 + 168);
    v22 = v13;
    while (1)
    {
      v23 = a1 + v22;
      v24 = *(a1 + v22 + 368);
      *(v23 + 528) = *(a1 + v22 + 352);
      *(v23 + 544) = v24;
      *(v23 + 560) = *(a1 + v22 + 384);
      *(v23 + 576) = *(a1 + v22 + 400);
      v25 = *(a1 + v22 + 592);
      if ((v25 & 2) != 0)
      {
        v25 = 0;
      }

      else if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v26 = *(v23 + 416);
      if ((v26 & 2) != 0)
      {
        v26 = 0;
      }

      else if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v25 == v26)
      {
        sub_12DE8F4(v23 + 584, v23 + 408);
      }

      else
      {
        sub_12DE878(v23 + 584, v23 + 408);
      }

      v27 = a1 + v22;
      *(a1 + v22 + 696) = *(a1 + v22 + 520);
      if (v22 == -352)
      {
        break;
      }

      v28 = *(v27 + 332);
      v29 = v48 < *(v27 + 192);
      if (v53 != v28)
      {
        v29 = v53 > v28;
      }

      v22 -= 176;
      if (!v29)
      {
        v30 = a1 + v22 + 528;
        goto LABEL_50;
      }
    }

    v30 = a1;
LABEL_50:
    v31 = v48;
    *v30 = v47;
    *(v30 + 16) = v31;
    *(v30 + 32) = v49;
    *(v30 + 48) = v50;
    if (v30 != &v47)
    {
      v32 = *(v30 + 64);
      if ((v32 & 2) != 0)
      {
        v32 = 0;
      }

      else if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v33 = v52;
      if ((v52 & 2) != 0)
      {
        v33 = 0;
      }

      else if (v52)
      {
        v33 = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v32 == v33)
      {
        sub_12DE8F4(v27 + 408, &v51);
      }

      else
      {
        sub_12DE878(v27 + 408, &v51);
      }
    }

    *(v30 + 168) = v54;
    if (++v14 == 8)
    {
      break;
    }

    sub_12DD690(&v51);
LABEL_16:
    v11 = v12;
    v13 += 176;
    v12 += 176;
    if (v12 == a2)
    {
      return 1;
    }
  }

  sub_12DD690(&v51);
  return v12 + 176 == a2;
}

uint64_t sub_418878(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  v19 = *(a1 + 48);
  sub_12DD2CC(&v20, 0, 0);
  if (&v16 != a1)
  {
    v5 = v21;
    if ((v21 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v21)
    {
      v5 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a1 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_12DE8F4(&v20, a1 + 56);
    }

    else
    {
      sub_12DE878(&v20, a1 + 56);
    }
  }

  v22 = *(a1 + 21);
  v8 = a2[1];
  v7 = a2[2];
  v9 = *a2;
  *(a1 + 48) = *(a2 + 48);
  a1[1] = v8;
  a1[2] = v7;
  *a1 = v9;
  if (a1 != a2)
  {
    v10 = *(a1 + 8);
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v11 = *(a2 + 8);
    if ((v11 & 2) != 0)
    {
      v11 = 0;
    }

    else if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v10 == v11)
    {
      sub_12DE8F4(a1 + 56, a2 + 56);
    }

    else
    {
      sub_12DE878(a1 + 56, a2 + 56);
    }
  }

  *(a1 + 21) = *(a2 + 21);
  v12 = v17;
  *a2 = v16;
  a2[1] = v12;
  a2[2] = v18;
  *(a2 + 48) = v19;
  if (&v16 != a2)
  {
    v13 = *(a2 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = v21;
    if ((v21 & 2) != 0)
    {
      v14 = 0;
    }

    else if (v21)
    {
      v14 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v13 == v14)
    {
      sub_12DE8F4(a2 + 56, &v20);
    }

    else
    {
      sub_12DE878(a2 + 56, &v20);
    }
  }

  *(a2 + 21) = v22;
  return sub_12DD690(&v20);
}

double sub_418A68@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  return result;
}

void sub_418A90()
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
  xmmword_278F620 = 0u;
  *algn_278F630 = 0u;
  dword_278F640 = 1065353216;
  sub_3A9A34(&xmmword_278F620, v0);
  sub_3A9A34(&xmmword_278F620, v3);
  sub_3A9A34(&xmmword_278F620, __p);
  sub_3A9A34(&xmmword_278F620, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_418C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_278F620);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

_DWORD *sub_418CD8(_DWORD *a1, int a2, uint64_t a3)
{
  *a1 = a2;
  sub_5ADDC((a1 + 2), a3);
  return a1;
}

void sub_418D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14 = 0uLL;
  v15 = 0;
  v5 = *a4;
  v6 = a4[1];
  v11 = &v14;
  v12 = 0;
  if (v6 != v5)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }

  memset(v16, 0, sizeof(v16));
  v8 = a4[3];
  v7 = a4[4];
  v11 = v16;
  v12 = 0;
  if (v7 != v8)
  {
    if (0xE21A291C077975B9 * ((v7 - v8) >> 3) < 0x3BCBADC7F10D15)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a4 + 4);
  v17 = *(a4 + 3);
  v18 = v9;
  *v19 = *(a4 + 5);
  *&v19[14] = *(a4 + 94);
  if (*(a4 + 127) < 0)
  {
    sub_325C(&v20, a4[13], a4[14]);
  }

  else
  {
    v20 = *(a4 + 13);
    v21 = a4[15];
  }

  sub_3AC650(a2, a1 + 8, v13);
  sub_1184AF8(&v11, v13);
}

void sub_419120(_Unwind_Exception *a1)
{
  sub_3EECC8(v1);
  sub_3ECF74((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_41913C(_Unwind_Exception *a1)
{
  sub_419F14(&STACK[0xA88]);
  sub_3AD9F4(&STACK[0xAA0]);
  sub_419F70(v1 - 224);
  _Unwind_Resume(a1);
}

uint64_t sub_4192A0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v9;
  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 144);
  *(a1 + 158) = *(a2 + 158);
  *(a1 + 144) = v10;
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  v13 = *(a1 + 208);
  if (v13)
  {
    *(a1 + 216) = v13;
    operator delete(v13);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v14 = *(a1 + 232);
  if (v14)
  {
    *(a1 + 240) = v14;
    operator delete(v14);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v15 = *(a2 + 256);
  v16 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v16;
  *(a1 + 256) = v15;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v17 = *(a2 + 320);
  *(a1 + 334) = *(a2 + 334);
  *(a1 + 320) = v17;
  v18 = *(a2 + 344);
  v19 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 344) = v18;
  *(a1 + 360) = v19;
  v20 = *(a1 + 384);
  if (v20)
  {
    *(a1 + 392) = v20;
    operator delete(v20);
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  v21 = *(a1 + 408);
  if (v21)
  {
    *(a1 + 416) = v21;
    operator delete(v21);
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 408) = 0;
  v22 = *(a2 + 432);
  v23 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v23;
  *(a1 + 432) = v22;
  *(a1 + 480) = *(a2 + 480);
  v24 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v24;
  v25 = *(a1 + 504);
  if (v25)
  {
    *(a1 + 512) = v25;
    operator delete(v25);
    *(a1 + 504) = 0;
    *(a1 + 512) = 0;
    *(a1 + 520) = 0;
  }

  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 504) = 0;
  *(a2 + 512) = 0;
  *(a2 + 520) = 0;
  v26 = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 528) = v26;
  *(a1 + 544) = *(a2 + 544);
  sub_419B60(a1 + 552, (a2 + 552));
  *(a1 + 840) = *(a2 + 840);
  sub_419DB0(a1 + 856, a2 + 856);
  v27 = *(a1 + 1000);
  if (v27)
  {
    *(a1 + 1008) = v27;
    operator delete(v27);
    *(a1 + 1000) = 0;
    *(a1 + 1008) = 0;
    *(a1 + 1016) = 0;
  }

  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1000) = 0;
  *(a2 + 1008) = 0;
  *(a2 + 1016) = 0;
  v28 = *(a1 + 1024);
  if (v28)
  {
    v29 = (a1 + 1024);
    v30 = *(a1 + 1032);
    v31 = *(a1 + 1024);
    if (v30 != v28)
    {
      do
      {
        v33 = *(v30 - 32);
        if (v33)
        {
          v34 = *(v30 - 24);
          v32 = *(v30 - 32);
          if (v34 != v33)
          {
            v35 = *(v30 - 24);
            do
            {
              v37 = *(v35 - 24);
              v35 -= 24;
              v36 = v37;
              if (v37)
              {
                *(v34 - 16) = v36;
                operator delete(v36);
              }

              v34 = v35;
            }

            while (v35 != v33);
            v32 = *(v30 - 32);
          }

          *(v30 - 24) = v33;
          operator delete(v32);
        }

        v30 -= 64;
      }

      while (v30 != v28);
      v31 = *v29;
    }

    *(a1 + 1032) = v28;
    operator delete(v31);
    *v29 = 0;
    *(a1 + 1032) = 0;
    *(a1 + 1040) = 0;
  }

  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1024) = 0;
  *(a2 + 1032) = 0;
  *(a2 + 1040) = 0;
  v38 = *(a1 + 1048);
  if (v38)
  {
    operator delete(v38);
    *(a1 + 1048) = 0;
    *(a1 + 1056) = 0;
    *(a1 + 1064) = 0;
  }

  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1048) = 0;
  *(a2 + 1056) = 0;
  *(a2 + 1064) = 0;
  v39 = *(a1 + 1072);
  if (v39)
  {
    *(a1 + 1080) = v39;
    operator delete(v39);
    *(a1 + 1072) = 0;
    *(a1 + 1080) = 0;
    *(a1 + 1088) = 0;
  }

  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  return a1;
}

void *sub_419720(void *a1)
{
  v2 = a1[321];
  if (v2)
  {
    v3 = a1[322];
    v4 = a1[321];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = a1[321];
    }

    a1[322] = v2;
    operator delete(v4);
  }

  sub_3874((a1 + 310));
  v7 = a1[276];
  if (v7)
  {
    a1[277] = v7;
    operator delete(v7);
  }

  v8 = a1[270];
  if (v8)
  {
    a1[271] = v8;
    operator delete(v8);
  }

  v9 = a1[261];
  if (v9)
  {
    a1[262] = v9;
    operator delete(v9);
  }

  v10 = a1[258];
  if (v10)
  {
    a1[259] = v10;
    operator delete(v10);
  }

  v11 = a1[255];
  if (v11)
  {
    a1[256] = v11;
    operator delete(v11);
  }

  v12 = a1[246];
  if (v12)
  {
    a1[247] = v12;
    operator delete(v12);
  }

  v13 = a1[243];
  if (v13)
  {
    a1[244] = v13;
    operator delete(v13);
  }

  v14 = a1[240];
  if (v14)
  {
    a1[241] = v14;
    operator delete(v14);
  }

  v15 = a1[237];
  if (v15)
  {
    a1[238] = v15;
    operator delete(v15);
  }

  v16 = a1[234];
  if (v16)
  {
    a1[235] = v16;
    operator delete(v16);
  }

  v17 = a1[227];
  if (v17)
  {
    v18 = a1[228];
    v19 = a1[227];
    if (v18 != v17)
    {
      do
      {
        v20 = *(v18 - 3);
        if (v20)
        {
          *(v18 - 2) = v20;
          operator delete(v20);
        }

        v21 = v18 - 6;
        if (*(v18 - 25) < 0)
        {
          operator delete(*v21);
        }

        v18 -= 6;
      }

      while (v21 != v17);
      v19 = a1[227];
    }

    a1[228] = v17;
    operator delete(v19);
  }

  sub_3874((a1 + 216));
  v22 = a1[182];
  if (v22)
  {
    a1[183] = v22;
    operator delete(v22);
  }

  v23 = a1[176];
  if (v23)
  {
    a1[177] = v23;
    operator delete(v23);
  }

  sub_419924((a1 + 164));
  v24 = a1[161];
  if (v24)
  {
    a1[162] = v24;
    operator delete(v24);
  }

  v25 = a1[158];
  if (v25)
  {
    a1[159] = v25;
    operator delete(v25);
  }

  v26 = a1[155];
  if (v26)
  {
    a1[156] = v26;
    operator delete(v26);
  }

  v27 = a1[152];
  if (v27)
  {
    a1[153] = v27;
    operator delete(v27);
  }

  sub_4199F0(a1 + 8);
  return a1;
}

uint64_t sub_419924(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_4199F0(void *a1)
{
  v2 = 122;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v5) & 0x80000000) == 0)
        {
          v8 = *v6 + 48 * v5;
          v9 = *(v8 + 24);
          if (v9)
          {
            v10 = *(v8 + 32);
            v7 = *(v8 + 24);
            if (v10 != v9)
            {
              do
              {
                v11 = *(v10 - 24);
                if (v11)
                {
                  *(v10 - 16) = v11;
                  operator delete(v11);
                }

                v10 -= 32;
              }

              while (v10 != v9);
              v7 = *(v8 + 24);
            }

            *(v8 + 32) = v9;
            operator delete(v7);
            v4 = *(v3 - 3);
          }
        }

        ++v5;
      }

      while (v5 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v6 = 0;
    }
  }

  while (v2 != 26);
  v12 = a1[23];
  if (v12)
  {
    a1[24] = v12;
    operator delete(v12);
  }

  v13 = a1[20];
  if (v13)
  {
    a1[21] = v13;
    operator delete(v13);
  }

  v14 = a1[17];
  if (v14)
  {
    a1[18] = v14;
    operator delete(v14);
  }

  v15 = a1[14];
  if (v15)
  {
    a1[15] = v15;
    operator delete(v15);
  }

  v16 = a1[11];
  if (v16)
  {
    a1[12] = v16;
    operator delete(v16);
  }

  v17 = a1[8];
  if (v17)
  {
    a1[9] = v17;
    operator delete(v17);
  }

  v18 = a1[4];
  if (v18)
  {
    a1[5] = v18;
    operator delete(v18);
  }

  return a1;
}

uint64_t sub_419B60(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    *(a1 + 48) = v7;
    operator delete(v7);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = a2[7];
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  v8 = *(a1 + 64);
  if (v8)
  {
    *(a1 + 72) = v8;
    operator delete(v8);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = a2[10];
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = 0;
  v9 = *(a1 + 88);
  if (v9)
  {
    *(a1 + 96) = v9;
    operator delete(v9);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = a2[13];
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = 0;
  v10 = *(a1 + 112);
  if (v10)
  {
    *(a1 + 120) = v10;
    operator delete(v10);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = *(a2 + 7);
  *(a1 + 128) = a2[16];
  a2[14] = 0;
  a2[15] = 0;
  a2[16] = 0;
  v11 = *(a1 + 136);
  if (v11)
  {
    *(a1 + 144) = v11;
    operator delete(v11);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 136) = *(a2 + 17);
  *(a1 + 152) = a2[19];
  a2[17] = 0;
  a2[18] = 0;
  a2[19] = 0;
  v12 = *(a1 + 160);
  if (v12)
  {
    *(a1 + 168) = v12;
    operator delete(v12);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 10);
  *(a1 + 176) = a2[22];
  a2[20] = 0;
  a2[21] = 0;
  a2[22] = 0;
  v13 = *(a1 + 184);
  if (v13)
  {
    *(a1 + 192) = v13;
    operator delete(v13);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  *(a1 + 184) = *(a2 + 23);
  *(a1 + 200) = a2[25];
  a2[23] = 0;
  a2[24] = 0;
  a2[25] = 0;
  v14 = *(a1 + 208);
  if (v14)
  {
    *(a1 + 216) = v14;
    operator delete(v14);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  *(a1 + 208) = *(a2 + 13);
  *(a1 + 224) = a2[28];
  a2[26] = 0;
  a2[27] = 0;
  a2[28] = 0;
  v15 = *(a1 + 232);
  if (v15)
  {
    *(a1 + 240) = v15;
    operator delete(v15);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  *(a1 + 232) = *(a2 + 29);
  *(a1 + 248) = a2[31];
  a2[29] = 0;
  a2[30] = 0;
  a2[31] = 0;
  v16 = *(a2 + 17);
  *(a1 + 256) = *(a2 + 16);
  *(a1 + 272) = v16;
  return a1;
}

uint64_t sub_419DB0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v9 = *(a1 + 120);
  if (v9)
  {
    *(a1 + 128) = v9;
    operator delete(v9);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  return a1;
}

void **sub_419F14(void **a1)
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
        v3 = sub_3EE9A4(v3 - 36);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_419F70(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 8);
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    *(a1 + 8) = v5;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_41A01C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  v3 = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  HIBYTE(v24[2]) = 21;
  strcpy(v24, "StackedETAExperiments");
  __p = 0;
  v22 = 0;
  v23 = 0;
  v4 = sub_3AEC94(a2, v24, &__p);
  v20 = 11;
  strcpy(v19, "experiments");
  v5 = sub_5F680(v4, v19);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v6 = __p;
  if (__p)
  {
    v7 = v22;
    v8 = __p;
    if (v22 != __p)
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
      v8 = __p;
    }

    v22 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v24[2]) < 0)
  {
    operator delete(v24[0]);
  }

  LODWORD(v24[0]) = 0;
  v10 = *v5;
  v11 = v5[1];
  while (v10 != v11)
  {
    if (v10[2] != 5)
    {
      sub_5AF20();
    }

    v13 = *(*v10 + 16);
    if (*(v13 + 48) != 5)
    {
      sub_5AF20();
    }

    v14 = *(v13 + 40);
    sub_41ABF0(a1, v13 + 16);
    v15 = *(a1 + 48);
    if (v15 >= *(a1 + 56))
    {
      *(a1 + 48) = sub_1CEE8(v3, v13 + 16);
      v17 = *(a1 + 72);
      if (v17 >= *(a1 + 80))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (*(v13 + 39) < 0)
      {
        sub_325C(*(a1 + 48), *(v13 + 16), *(v13 + 24));
      }

      else
      {
        v16 = *(v13 + 16);
        *(v15 + 16) = *(v13 + 32);
        *v15 = v16;
      }

      *(a1 + 48) = v15 + 24;
      *(a1 + 48) = v15 + 24;
      v17 = *(a1 + 72);
      if (v17 >= *(a1 + 80))
      {
LABEL_14:
        v12 = sub_41A604(a1 + 64, v24, v14);
        goto LABEL_15;
      }
    }

    sub_418CD8(v17, v24[0], v14);
    v12 = (v17 + 12);
    *(a1 + 72) = v17 + 12;
LABEL_15:
    *(a1 + 72) = v12;
    ++LODWORD(v24[0]);
    v10 += 4;
  }

  return a1;
}