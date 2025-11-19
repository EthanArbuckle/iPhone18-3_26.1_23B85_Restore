uint64_t sub_6E94BC@<X0>(char **a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
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

void sub_6E9704(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_6E9730@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
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

void sub_6E9800(_Unwind_Exception *exception_object)
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

unint64_t sub_6E983C(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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
    result = sub_704F54(&v8, v7);
    if (!result)
    {
      break;
    }

    ++v7;
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_6E98B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

  v10 = *(sub_4D1F50(a2, a3) + 32);
  v11 = *(sub_4D1F50(a2, a3 + 1) + 32);
  if (v10 != v11)
  {
    return 0;
  }

  result = 0;
  if (WORD2(v10) == WORD2(v11) && ((v11 & 0xFF000000000000) == 0) == BYTE6(v10))
  {
    *(a4 + 24) = 0;
    *(a4 + 8) = *a4;
    *(a4 + 48) = *(a4 + 40);
    *(a4 + 64) = 0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    *(a4 + 72) = v13;
    *(a4 + 88) = v13;
    *(a4 + 104) = v13;
    *(a4 + 120) = -1;
    *(a4 + 128) = 0;
    *(a4 + 136) = -1;
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = vnegq_f64(v13);
    *(a4 + 176) = 0;
    *(a4 + 184) = 98;
    *(a4 + 192) = 0;
    *(a4 + 200) = 0;
    *(a4 + 208) = xmmword_229B660;
    *(a4 + 232) = 0;
    *(a4 + 245) = 0;
    *(a4 + 224) = 0;
    v16 = BYTE6(v10);
    v15 = WORD2(v10);
    __src = v10;
    v19 = BYTE6(v11);
    v18 = WORD2(v11);
    v17 = v11;
    sub_7061AC(a4, &__src, &v20, 2uLL);
    *(a4 + 24) = 97;
    return 1;
  }

  return result;
}

uint64_t sub_6E9A7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = *(v8 + 32) | (*(v8 + 36) << 32);
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

  sub_6D3D8C(*a1, v9, &v37);
  v13 = v37;
  v14 = v38;
  if (v37 == v38)
  {
    result = 0;
    goto LABEL_37;
  }

  do
  {
    v16 = sub_30CC30(*a1, *v13);
    v17 = (v16 - *v16);
    if (*v17 < 0xDu)
    {
      goto LABEL_7;
    }

    v18 = v17[6];
    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = (v16 + v18 + *(v16 + v18));
    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = *(v19 + v21);
      if (v22 >= 0xF || ((0x7EFFu >> v22) & 1) == 0)
      {
        goto LABEL_7;
      }

      v34 = dword_229EB2C[v22];
    }

    else
    {
      v34 = 0;
    }

    sub_320200(*a1, *v13, &__p);
    v23 = sub_4D1DC0(a2);
    v24 = __p;
    v25 = v36;
    if (v23 - a3 < (v36 - __p) >> 3)
    {
      v26 = 3;
      v27 = __p;
      if (!__p)
      {
        goto LABEL_28;
      }

LABEL_27:
      v36 = v27;
      operator delete(v27);
      goto LABEL_28;
    }

    sub_4D0560();
    if (v24 == v25)
    {
LABEL_24:
      *(a4 + 24) = v34;
      if (&__p != a4)
      {
        sub_30945C(a4, __p, v36, (v36 - __p) >> 3);
      }

      v26 = 1;
      v27 = __p;
      if (__p)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v30 = v28;
      v31 = v29 + a3;
      while (1)
      {
        v32 = *(sub_4D1F50(v30, v31) + 32);
        if (__PAIR64__(*(v24 + 2), *v24) != __PAIR64__(WORD2(v32), v32) || *(v24 + 6) != BYTE6(v32))
        {
          break;
        }

        v24 += 2;
        ++v31;
        if (v24 == v25)
        {
          goto LABEL_24;
        }
      }

      v26 = 0;
      v27 = __p;
      if (__p)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    if (v26 != 3 && v26)
    {
      result = 1;
      goto LABEL_36;
    }

LABEL_7:
    ++v13;
  }

  while (v13 != v14);
  result = 0;
LABEL_36:
  v13 = v37;
LABEL_37:
  if (v13)
  {
    v38 = v13;
    v33 = result;
    operator delete(v13);
    return v33;
  }

  return result;
}

void sub_6E9D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

BOOL sub_6E9D6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (sub_6F0AF0(a1, a2, a3, a4))
  {
    return 1;
  }

  sub_7696C0((a1 + 7448), a2, v5, &v45);
  *(a1 + 7288) = v45;
  v9 = *(a1 + 7296);
  if (v9)
  {
    *(a1 + 7304) = v9;
    operator delete(v9);
    *(a1 + 7296) = 0;
    *(a1 + 7304) = 0;
    *(a1 + 7312) = 0;
  }

  *(a1 + 7296) = *v46;
  *(a1 + 7312) = v47;
  v46[1] = 0;
  v47 = 0;
  v46[0] = 0;
  v10 = (a1 + 7320);
  v11 = *(a1 + 7320);
  if (v11)
  {
    *(a1 + 7328) = v11;
    operator delete(v11);
    *v10 = 0;
    *(a1 + 7328) = 0;
    *(a1 + 7336) = 0;
  }

  *v10 = *v48;
  v12 = v50;
  *(a1 + 7336) = v49;
  v48[1] = 0;
  v49 = 0;
  v48[0] = 0;
  *(a1 + 7344) = v12;
  v13 = (a1 + 7352);
  v14 = *(a1 + 7352);
  if (v14)
  {
    *(a1 + 7360) = v14;
    operator delete(v14);
    *v13 = 0;
    *(a1 + 7360) = 0;
    *(a1 + 7368) = 0;
  }

  *v13 = *__p;
  v15 = v53;
  *(a1 + 7368) = v52;
  __p[1] = 0;
  v52 = 0;
  __p[0] = 0;
  *(a1 + 7376) = v15;
  v16 = (a1 + 7384);
  v17 = *(a1 + 7384);
  if (v17)
  {
    *(a1 + 7392) = v17;
    operator delete(v17);
    *v16 = 0;
    *(a1 + 7392) = 0;
    *(a1 + 7400) = 0;
  }

  *v16 = v54;
  v18 = v56;
  *(a1 + 7400) = v55;
  v55 = 0;
  v54 = 0uLL;
  *(a1 + 7408) = v18;
  *(a1 + 7416) = v57[0];
  *(a1 + 7426) = *(v57 + 10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  result = sub_765858(a1 + 7288);
  if (result)
  {
    v19 = *(a1 + 7432);
    v20 = sub_765990((a1 + 7288));
    v21 = v20;
    v40 = v19;
    if (v20 <= 0x23 && ((1 << v20) & 0x804000010) != 0)
    {
      v22 = -1;
      v42 = 1;
    }

    else
    {
      v42 = 0;
      v22 = v19 + ~v5;
    }

    v23 = sub_765DE4(a1 + 7288);
    v24 = v23;
    v25 = *(a1 + 7288);
    v41 = v22;
    if (v25[172] == 1 && !*(a1 + 7344) || v25[173] == 1 && *(a1 + 7344) == 1 || v25[174] == 1 && *(a1 + 7344) == 2)
    {
      if (v23 < 4 || v23 - 60 < 4)
      {
        v26 = 0;
        *(a4 + 152) = 1;
        v21 = v23;
LABEL_41:
        *(a4 + 176) = sub_765A54(a1 + 7288);
        *(a4 + 160) = sub_765A78(a1 + 7288);
        *(a4 + 168) = sub_76569C(a1 + 7288);
        v30 = (v42 & 1) == 0 && (*(a4 + 152) & 1) == 0 && sub_7656C0((a1 + 7288));
        *(a4 + 153) = v30;
        *(a4 + 154) = sub_7656EC((a1 + 7288));
        *(a4 + 184) = v24;
        v31 = sub_766EFC(v13);
        *(a4 + 192) = v31 - sub_766EFC(v10);
        *(a4 + 200) = *(a1 + 7376) - *(a1 + 7344);
        if ((v26 & 1) == 0)
        {
          if (*(a4 + 152))
          {
            v32 = v40;
            v33 = v41;
          }

          else
          {
            v34 = sub_766C24((a1 + 7288));
            v32 = v40;
            v33 = v41;
            if (v34)
            {
              v33 = 0;
              v32 = *(a1 + 7424);
              v21 = 6;
            }
          }

          if (v5 <= v32 + 1)
          {
            v35 = v32 + 1;
          }

          else
          {
            v35 = v5;
          }

          if (v32 + 1 > v5)
          {
            do
            {
              while (1)
              {
                v36 = sub_4D1F50(a2, v5);
                v37 = v36[4];
                LODWORD(v45) = v37;
                BYTE6(v45) = BYTE6(v37);
                WORD2(v45) = WORD2(v37);
                sub_2B5AD0(a4, &v45);
                v38 = (*v36 - **v36);
                if (*v38 >= 0x63u)
                {
                  v39 = v38[49];
                  if (v39)
                  {
                    break;
                  }
                }

                *(a4 + 155) = *(a4 + 155);
                if (v35 == ++v5)
                {
                  goto LABEL_59;
                }
              }

              *(a4 + 155) |= *(*v36 + v39) == 12;
              ++v5;
            }

            while (v35 != v5);
          }

LABEL_59:
          *(a4 + 232) = v33;
          *(a4 + 24) = v21;
          *(a1 + 176) = 6;
        }

        return 1;
      }

      if (v23 != 98 && sub_7E7E4(3u))
      {
        sub_19594F8(&v45);
        v28 = sub_4A5C(&v45, "Received unexpected simple ManeuverType from RoundaboutModel: ", 62);
        v29 = sub_731E84(v28, v24);
        sub_4A5C(v29, " at ", 4);
        sub_4D1F50(a2, v5);
        std::ostream::operator<<();
        sub_1959680(&v45, v43);
        sub_7E854(v43, 3u);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        sub_1959728(&v45);
      }
    }

    else
    {
      v27 = sub_765A78(a1 + 7288);
      if (v21 != 26 && v27 < *(a1 + 608))
      {
        sub_6F094C(a1, a2, v5, a4);
        v26 = 1;
        goto LABEL_41;
      }
    }

    v26 = 0;
    goto LABEL_41;
  }

  return result;
}

void sub_6EA278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1959728(&a20);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

unint64_t sub_6EA2C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_6F2FC8(a1, a2, a3, a4, a1 + 64);
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
    result = sub_6F1288(a1, a2, a3, a5, a1 + 64);
    if ((result & 1) == 0)
    {
      result = sub_6F3464(a1, a2, a3, (a1 + 144), v11, a5);
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
          if ((sub_6EE14C(a1, (a1 + 64), (a1 + 144), v11) & 1) == 0)
          {
            sub_6EF218(a1, a1 + 64, (a1 + 144), v11);
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
          if (!sub_704A54(v22, v22 + 8 * v21, v24, v23 + a3))
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
          result = sub_6ABAB4(a1 + 3680, v27);
          if (result)
          {
LABEL_24:
            sub_6F2FC8(a1, a2, a3, a4, a1 + 64);
            *(a1 + 176) = 0;
            sub_6EC71C(a1, a2, a3, (a1 + 64), a5, 0);
            v29 = *(a5 + 24);
            if ((v29 == 3 || !v29) && sub_6F0654(a1, a2, a3))
            {
              *(a5 + 24) = 12;
            }

            v30 = sub_7135C4(a1 + 1432, (a1 + 64), (a1 + 144), v11, v28);
            if ((*(a5 + 24) & 0xFFFFFFFE) == 0x14 && v30 == v11 && 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 152) - *(a1 + 144)) >> 3) >= 2)
            {
              v31 = sub_605E3C((a1 + 144), v11 == 0);
              if (sub_6EEE78(a1, a2, a3 + 1, v31))
              {
                *(a5 + 24) = 0;
              }
            }

            result = sub_6ED764(a1, a5);
            *(a5 + 232) = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_6EA7B4(uint64_t a1, char **a2, uint64_t *a3, unint64_t a4)
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

  v44 = sub_6EDB40(a1, a2, a3, a4, v43);
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

uint64_t sub_6EAA80(uint64_t a1, int **a2, __int128 **a3)
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
    if ((sub_6F3304(a1, v17) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v10 = (v10 + 40);
  }

  return 1;
}

BOOL sub_6EAC1C(uint64_t a1, uint64_t a2, int **a3, uint64_t *a4, unint64_t a5, unint64_t a6, char a7)
{
  if (a5 > 1)
  {
    return 0;
  }

  v7 = 0;
  if (sub_6EDCBC(a1, a2, a3, a4, a5, a6) && (a7 & 1) == 0)
  {
    v140 = a6;
    v16 = sub_605E3C(a4, a5);
    v17 = sub_605E3C(a4, 1 - a5);
    v18 = sub_335660(*a1, a3, 0);
    v169 = v18;
    v170 = v19;
    v167 = sub_335660(*a1, a3, 1);
    v168 = v20;
    v142 = v16;
    v21 = sub_335660(*a1, v16, 0);
    v141 = v17;
    v22 = sub_335660(*a1, v17, 0);
    v23 = v167 - v18;
    v24 = HIDWORD(v167) - HIDWORD(v18);
    v25 = v23 * v23 + v24 * v24;
    if (v25 == 0.0)
    {
      goto LABEL_10;
    }

    v26 = -v25;
    if (v25 > 0.0)
    {
      v26 = v23 * v23 + v24 * v24;
    }

    if (v26 < 2.22044605e-16)
    {
LABEL_10:
      v27 = 0.0;
    }

    else
    {
      v27 = ((v21 - v18) * v23 + (HIDWORD(v21) - HIDWORD(v18)) * v24) / v25;
    }

    v28 = sub_6EFC0(&v169, &v167, v27);
    v29 = ((v28 - v21) * (v28 - v21) + (HIDWORD(v28) - HIDWORD(v21)) * (HIDWORD(v28) - HIDWORD(v21)));
    v30 = sqrt(v29);
    LODWORD(v29) = v169;
    v31 = *&v29;
    LODWORD(v29) = HIDWORD(v169);
    v32 = *&v29;
    LODWORD(v34) = HIDWORD(v167);
    LODWORD(v33) = v167;
    v35 = v33 - v31;
    v36 = v34 - v32;
    v37 = v35 * v35 + v36 * v36;
    if (v37 == 0.0)
    {
      v38 = v142;
    }

    else
    {
      v39 = -v37;
      if (v37 > 0.0)
      {
        v39 = v35 * v35 + v36 * v36;
      }

      v38 = v142;
      if (v39 >= 2.22044605e-16)
      {
        v40 = ((v22 - v31) * v35 + (HIDWORD(v22) - v32) * v36) / v37;
        goto LABEL_17;
      }
    }

    v40 = 0.0;
LABEL_17:
    v41 = v30 / 100.0;
    v42 = sub_6EFC0(&v169, &v167, v40);
    *&v43 = sqrt(((v42 - v22) * (v42 - v22) + (HIDWORD(v42) - HIDWORD(v22)) * (HIDWORD(v42) - HIDWORD(v22))));
    v44 = *&v43 / 100.0;
    LODWORD(v43) = *(a1 + 360);
    v45 = v43;
    LODWORD(v43) = *(a1 + 356);
    v46 = v43;
    v47 = sub_31DDCC(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL);
    if (v47 <= 0xFFFFFFFEFFFFFFFFLL && v47)
    {
      v7 = 0;
      v48 = sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v38[4] & 0xFFFFFFFFFFFFFFLL) ^ 1;
      if (v44 <= v45)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      v50 = v44 <= v45 || v41 >= v46;
      if (v41 >= v44)
      {
        v49 = 1;
      }

      if (v49 != 1 || !v50)
      {
        return v7;
      }
    }

    else
    {
      v51 = v41 >= v46 || v44 <= v45;
      if (!v51)
      {
        return 0;
      }
    }

    v52 = v38[4];
    v53 = v52 & 0xFF000000000000;
    v54 = sub_2B51D8(*a1, v52 & 0xFFFFFFFFFFFFLL);
    v55 = (v54 - *v54);
    v56 = *v55;
    if (v53)
    {
      v57 = v141;
      if (v56 < 0x29 || (v58 = v55[20]) == 0)
      {
LABEL_44:
        v59 = sub_6DDF50(*a1, v38[4] & 0xFFFFFFFFFFFFLL | (((v38[4] & 0xFF000000000000) == 0) << 48));
LABEL_45:
        v60 = v57[4];
        v61 = v60 & 0xFF000000000000;
        v62 = sub_2B51D8(*a1, v60 & 0xFFFFFFFFFFFFLL);
        v63 = (v62 - *v62);
        v64 = *v63;
        if (v61)
        {
          if (v64 < 0x29 || (v65 = v63[20]) == 0)
          {
LABEL_52:
            v66 = sub_6DDF50(*a1, v57[4] & 0xFFFFFFFFFFFFLL | (((v57[4] & 0xFF000000000000) == 0) << 48));
LABEL_53:
            if (v59)
            {
              v67 = v66 == 0;
            }

            else
            {
              v67 = 1;
            }

            v68 = !v67;
            v139 = v68;
            if (v67)
            {
              v69 = v66;
              if (sub_312B7C(a3, v38[4] & 0xFFFFFFFFFFFFFFLL))
              {
                v137 = sub_312B7C(a3, v57[4] & 0xFFFFFFFFFFFFFFLL) != 0;
              }

              else
              {
                v137 = 0;
              }

              v66 = v69;
            }

            else
            {
              v137 = 0;
            }

            v70 = v66;
            if (v66 >= v59)
            {
              v71 = v59;
            }

            else
            {
              v71 = v66;
            }

            v138 = v71;
            v136 = sub_70E748(a1 + 1432, v57);
            v72 = sub_70E748(a1 + 1432, v142);
            v73 = *v142;
            v74 = &(*v142)[-**v142];
            v75 = *v74;
            if (*(v142 + 38))
            {
              if (v75 >= 0x9B)
              {
                v76 = *(v74 + 77);
                if (*(v74 + 77))
                {
                  v77 = 2;
LABEL_75:
                  v78 = (*&v73[v76] & v77) != 0;
                  goto LABEL_77;
                }
              }
            }

            else if (v75 >= 0x9B)
            {
              v76 = *(v74 + 77);
              if (*(v74 + 77))
              {
                v77 = 1;
                goto LABEL_75;
              }
            }

            v78 = 0;
LABEL_77:
            v79 = *v57;
            v80 = &(*v57)[-**v57];
            v81 = *v80;
            if (*(v57 + 38))
            {
              if (v81 >= 0x9B)
              {
                v82 = *(v80 + 77);
                if (*(v80 + 77))
                {
                  v83 = 2;
LABEL_84:
                  v78 ^= (*&v79[v82] & v83) != 0;
                }
              }
            }

            else if (v81 >= 0x9B)
            {
              v82 = *(v80 + 77);
              if (*(v80 + 77))
              {
                v83 = 1;
                goto LABEL_84;
              }
            }

            if (v78)
            {
              return 0;
            }

            if (v75 >= 0x9B && (v84 = *(v74 + 77)) != 0)
            {
              v85 = (v73[v84 + 1] >> 4) & 1;
              if (v81 < 0x9B)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v85 = 0;
              if (v81 < 0x9B)
              {
                goto LABEL_94;
              }
            }

            if (*(v80 + 77))
            {
              if (v85 == (v79[*(v80 + 77) + 1] & 0x10) >> 4)
              {
                goto LABEL_95;
              }

              return 0;
            }

LABEL_94:
            if ((v85 & 1) == 0)
            {
LABEL_95:
              v135 = v72;
              memset(v144, 0, sizeof(v144));
              v145 = 0;
              v146 = -1;
              v147 = 0;
              v148 = 0;
              v149 = 0;
              v150 = 0;
              v86.f64[0] = NAN;
              v86.f64[1] = NAN;
              v151 = v86;
              v152 = v86;
              v153 = v86;
              v154 = -1;
              v155 = 0;
              v156 = -1;
              v157 = 0;
              v158 = 0;
              v159 = vnegq_f64(v86);
              v160 = 0;
              v161 = 98;
              v162 = 0;
              v163 = 0;
              v164 = xmmword_229B660;
              v165 = 0;
              v166[0] = 0;
              *(v166 + 6) = 0;
              if (sub_6EE14C(a1, a3, a4, 1 - a5))
              {
                goto LABEL_96;
              }

              v87 = v59 - v70;
              v88 = &(*v142)[-**v142];
              if (*v88 >= 0x2Fu)
              {
                v89 = *(v88 + 23);
                if (v89)
                {
                  v90 = (*v142)[v89];
                  if (v90 <= 0x2A && ((1 << v90) & 0x50426810004) != 0)
                  {
                    v91 = &(*v57)[-**v57];
                    if (*v91 >= 0x2Fu)
                    {
                      v92 = *(v91 + 23);
                      if (v92)
                      {
                        v93 = (*v57)[v92];
                        if (v93 <= 0x2A && ((1 << v93) & 0x50426810004) != 0)
                        {
                          v7 = v87 < *(a1 + 428);
                          goto LABEL_97;
                        }
                      }
                    }
                  }
                }
              }

              v94 = *v57;
              v95 = &(*v57)[-**v57];
              v96 = *v95;
              if (v96 < 0x2F)
              {
                goto LABEL_116;
              }

              v97 = *(v95 + 23);
              if (*(v95 + 23) && v94[v97] == 28)
              {
                goto LABEL_96;
              }

              if (v96 < 0x9B || (v98 = *(v95 + 77)) == 0 || (v94[v98] & 4) == 0 || (v99 = 0, v97) && (v100 = v94[v97], v100 <= 0x2A) && ((1 << v100) & 0x50426810004) != 0)
              {
LABEL_116:
                v99 = (sub_6ABEA8(a1 + 3680, v57) & 1) != 0 || sub_713A90((a1 + 1432), v57);
              }

              if (sub_312F00(a3) && (sub_312F00(v142) & v99 & 1) != 0 || sub_70E748(a1 + 1432, v142) < *(a1 + 368) && sub_70E748(a1 + 1432, v57) > *(a1 + 368))
              {
                goto LABEL_96;
              }

              v102 = &(*v57)[-**v57];
              if (*v102 >= 0x2Fu)
              {
                v103 = *(v102 + 23);
                if (v103)
                {
                  v104 = (*v57)[v103];
                  if (v104 <= 0x2D && ((1 << v104) & 0x208040000000) != 0)
                  {
                    v105 = &(*v142)[-**v142];
                    if (*v105 < 0x2Fu)
                    {
                      goto LABEL_96;
                    }

                    v106 = *(v105 + 23);
                    if (!v106)
                    {
                      goto LABEL_96;
                    }

                    v7 = 0;
                    v107 = (*v142)[v106];
                    if (v107 > 0x2D || ((1 << v107) & 0x208040000000) == 0)
                    {
                      goto LABEL_97;
                    }
                  }
                }
              }

              v108 = sub_6EECD4(a1, a2, a3, v141, v142, v101);
              v109 = sub_7132DC(a1 + 1432, a2, a3, v142, 0, v108);
              v110 = sub_7132DC(a1 + 1432, a2, a3, v141, 0, v109);
              if (v108 >= sub_6EED44(a1, a2, a3, v141, v142))
              {
                goto LABEL_96;
              }

              if (((v140 == a5) & sub_313CC4(a3)) == 1)
              {
                if (sub_394BD0() && (sub_394BD0() & 1) == 0)
                {
                  goto LABEL_96;
                }

                if (sub_394BD0() && !sub_394BD0())
                {
                  goto LABEL_190;
                }
              }

              if (sub_312DF0(v142) && sub_312E54(v142) && sub_311BB0(v142) >= 2)
              {
                v111 = (*a3 - **a3);
                if (*v111 >= 0x9Bu && (v112 = v111[77]) != 0)
                {
                  if (v110 >= 0.0 == *(*a3 + v112 + 1) >> 7)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v110 < 0.0)
                {
                  goto LABEL_96;
                }
              }

              if (sub_3130E8(a3))
              {
                v113 = fabs(v110);
                if (fabs(v109) <= *(a1 + 184) == v113 > *(a1 + 184))
                {
                  goto LABEL_96;
                }
              }

              v114 = *v142;
              v115 = &(*v142)[-**v142];
              v116 = *v115;
              if (v116 >= 0x2F && (v117 = *(v115 + 23), *(v115 + 23)) && v114[*(v115 + 23)] == 44)
              {
                v143 = 0;
              }

              else
              {
                v118 = (*v141 - **v141);
                if (*v118 < 0x2Fu)
                {
                  goto LABEL_168;
                }

                v119 = v118[23];
                if (!v119 || *(*v141 + v119) != 44)
                {
                  goto LABEL_168;
                }

                v143 = 0;
                if (v116 < 0x2F)
                {
                  goto LABEL_160;
                }

                v117 = *(v115 + 23);
                if (!*(v115 + 23))
                {
                  goto LABEL_160;
                }
              }

              if (v114[v117] == 44)
              {
                v120 = (*v141 - **v141);
                if (*v120 >= 0x2Fu)
                {
                  v121 = v120[23];
                  if (v121)
                  {
                    if (*(*v141 + v121) == 44)
                    {
LABEL_162:
                      v122 = sub_31DDCC(*a1, v142[4] & 0xFFFFFFFFFFFFFFLL);
                      if (v122 <= 0xFFFFFFFEFFFFFFFFLL)
                      {
                        if (v122)
                        {
                          v123 = sub_31DDCC(*a1, v141[4] & 0xFFFFFFFFFFFFFFLL);
                          if (v123 <= 0xFFFFFFFEFFFFFFFFLL && v123 && (sub_31EE90(*a1, v142[4] & 0xFFFFFFFFFFFFFFLL, v141[4] & 0xFFFFFFFFFFFFFFLL) & 1) != 0)
                          {
                            goto LABEL_96;
                          }
                        }
                      }

                      v113 = vabdd_f64(v110, v109);
                      if (v113 < *(a1 + 432))
                      {
                        goto LABEL_96;
                      }

LABEL_168:
                      v124 = v139;
                      if (v87 >= 0)
                      {
                        v124 = 0;
                      }

                      if (v124)
                      {
                        goto LABEL_190;
                      }

                      v125 = *(a1 + 364);
                      if (v138 > v125 || v59 == v70 && v138 == v125)
                      {
                        goto LABEL_190;
                      }

                      if (v87 < 0 || (LOWORD(v113) = *(a1 + 424), v108 < vmovl_s16(*&v113).i32[0]))
                      {
                        v126 = *(a1 + 372);
                        v127 = *(a1 + 380);
                        v128 = (*v141 - **v141);
                        if (*v128 >= 0x2Fu)
                        {
                          v129 = v128[23];
                          if (v129)
                          {
                            v130 = *(*v141 + v129);
                            if (v130 <= 0x2A && ((1 << v130) & 0x50426810004) != 0)
                            {
                              v131 = (*a3 - **a3);
                              if (*v131 >= 0x9Bu && (v132 = v131[77]) != 0)
                              {
                                if (v110 >= 0.0 == *(*a3 + v132 + 1) >> 7)
                                {
                                  goto LABEL_187;
                                }
                              }

                              else if (v110 < 0.0)
                              {
                                goto LABEL_187;
                              }

                              if (fabs(v109) < *(a1 + 184))
                              {
                                v126 = *(a1 + 376);
                                v127 = *(a1 + 384);
                              }
                            }
                          }
                        }

LABEL_187:
                        v51 = v87 <= v126;
                        v133 = v139;
                        if (!v51)
                        {
                          v133 = 0;
                        }

                        if ((v133 & 1) == 0)
                        {
                          if (sub_6DED40(a1, v142, v141) || v137 && sub_6DEDA0(a1, a3, v142, v141))
                          {
                            goto LABEL_96;
                          }

                          v134 = v139;
                          if (v136 - v135 > v127)
                          {
                            v134 = 1;
                          }

                          if (v134 == 1 && ((v139 & 1) != 0 || sub_70E748(a1 + 1432, v142) < *(a1 + 368) || sub_70E748(a1 + 1432, v141) < *(a1 + 368) || v136 - v135 > *(a1 + 388)))
                          {
                            goto LABEL_96;
                          }
                        }

LABEL_190:
                        v7 = 1;
                        goto LABEL_97;
                      }

LABEL_96:
                      v7 = 0;
LABEL_97:
                      sub_5ECFBC(v144);
                      return v7;
                    }
                  }
                }
              }

LABEL_160:
              if ((sub_6DECF4(&v143, v142) & 1) == 0 && !sub_6DECF4(&v143, v141))
              {
                goto LABEL_168;
              }

              goto LABEL_162;
            }

            return 0;
          }
        }

        else
        {
          if (v64 < 0x27)
          {
            goto LABEL_52;
          }

          v65 = v63[19];
          if (!v65)
          {
            goto LABEL_52;
          }
        }

        v66 = *(v62 + v65 + *(v62 + v65));
        if (v66)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v57 = v141;
      if (v56 < 0x27)
      {
        goto LABEL_44;
      }

      v58 = v55[19];
      if (!v58)
      {
        goto LABEL_44;
      }
    }

    v59 = *(v54 + v58 + *(v54 + v58));
    if (v59)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  return v7;
}

void sub_6EB8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

void sub_6EB994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5ECFBC(va);
  _Unwind_Resume(a1);
}

BOOL sub_6EB9A8(uint64_t a1, int **a2, uint64_t a3, unint64_t a4)
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
      if (sub_712D18(a1 + 1432, v8) || *(a1 + 440) == 1 && sub_713A2C(a1 + 1432, v8))
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
                  sub_742140(a1 + 7480, a2, __p);
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

  if (sub_6ECBB4(a1, a2) & 1) != 0 || (sub_6ECBB4(a1, v7))
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
    v50 = sub_6A3724(*(a1 + 24), a2, 0);
    if (v50 != sub_6A3724(*(a1 + 24), v7, 0))
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

void sub_6EBEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_6EBF38(uint64_t a1, int **a2, int **a3, int ***a4, char a5, double a6)
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
    result = sub_70BB20(v34, v29);
    if (result)
    {
      break;
    }

    v29 += 5;
  }

  while (v29 != v30);
  return result;
}

uint64_t sub_6EC10C(double *a1, uint64_t a2, int **a3, void *a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_605E3C(a4, a5);
  v12 = sub_71336C((a1 + 179), a2, a3, v11, 1);
  v14 = v13;
  if (sub_7102E4((a1 + 179), a3, v11))
  {
    return 4;
  }

  v16 = *&v12;
  v15 = sub_70DD90(a1 + 179, v14 & 1, *&v12);
  v17 = sub_70DE94((a1 + 179), a3, v11);
  v18 = sub_3116D0(a3);
  if (v18 != sub_311544(v11))
  {
    v19 = fabs(v16);
    if (v17 <= 0.0)
    {
      v20 = v15;
    }

    else
    {
      v20 = 61;
    }

    if (v17 < 0.0)
    {
      v20 = 60;
    }

    if (v19 >= a1[123])
    {
      v15 = v20;
    }

    else
    {
      v15 = v15;
    }
  }

  if (a6 != -1)
  {
    v21 = sub_605E3C(a4, a6);
    v22 = sub_6DAFB0(a1, a3, v21, v11);
    if (v16 >= 0.0 && v23 < v22 && fabs(v16) < a1[38])
    {
      v15 = 20;
    }

    if (v16 <= 0.0 && v23 > v22 && fabs(v16) < a1[38])
    {
      return 21;
    }
  }

  return v15;
}

uint64_t sub_6EC288(uint64_t a1, char **a2, void *a3, unint64_t a4, unint64_t a5)
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
        while (!sub_705090(v36, v21))
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

void sub_6EC514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6EC534(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 3) >= 0xFFFFFFFE)
  {
    memset(v5, 0, sizeof(v5));
    sub_742140(a1 + 7480, a3, v5);
  }

  return 0;
}

void sub_6EC6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6EC71C(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5, int a6)
{
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
  v47 = a4[13];
  v10 = sub_605E3C(a4 + 10, v47);
  v11 = sub_4D1DC0(a2);
  if (a3 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = a3;
  }

  v46 = a3;
  if (v11 > a3)
  {
    do
    {
      while (1)
      {
        v14 = *(sub_4D1F50(a2, a3) + 32);
        v16 = *(a5 + 8);
        v15 = *(a5 + 16);
        if (v16 >= v15)
        {
          v18 = *a5;
          v19 = v16 - *a5;
          v20 = v19 >> 3;
          v21 = (v19 >> 3) + 1;
          if (v21 >> 61)
          {
            sub_1794();
          }

          v22 = v15 - v18;
          if (v22 >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v20) = v14 & 0xFFFFFFFFFFFFFFLL;
          v17 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          *a5 = 0;
          *(a5 + 8) = v17;
          *(a5 + 16) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v16 = v14 & 0xFFFFFFFFFFFFFFLL;
          v17 = (v16 + 1);
        }

        *(a5 + 8) = v17;
        v13 = *(v10 + 32);
        if (v13 == v14)
        {
          break;
        }

        if (++a3 == v12)
        {
          goto LABEL_26;
        }
      }

      ++a3;
    }

    while ((HIDWORD(v13) & 0xFFFFFF) != (HIDWORD(v14) & 0xFFFFFF) && a3 != v12);
  }

  else
  {
    v13 = *(v10 + 32);
  }

LABEL_26:
  v25 = sub_31EE90(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL, v13 & 0xFFFFFFFFFFFFFFLL);
  if (v25)
  {
    v26 = a6;
    v27 = v47;
    if (sub_6ECBB4(a1, a4))
    {
      LOBYTE(v25) = 1;
    }

    else
    {
      LOBYTE(v25) = sub_6ECBB4(a1, v10);
    }
  }

  else
  {
    v26 = a6;
    v27 = v47;
  }

  *(a5 + 244) = v25;
  result = sub_6E61B0(a1, a2, a4, a4 + 10, v27, 1, 1, v26);
  *(a5 + 24) = result;
  if (result)
  {
    result = sub_6ECDFC(a1, a2, v46, v10, a5);
    if (result)
    {
      *(a5 + 24) = 0;
      goto LABEL_34;
    }

    if (*(a1 + 1074) == 1 && *(a5 + 24) == 3)
    {
      v30 = *a4;
      v31 = (*a4 - **a4);
      v32 = *v31;
      if (v32 < 0x2F || !v31[23])
      {
        goto LABEL_60;
      }

      v33 = v30[v31[23]];
      if (v33 > 0x2A)
      {
        if (v33 == 44)
        {
          goto LABEL_34;
        }

        if (v33 != 43)
        {
          goto LABEL_60;
        }
      }

      else if (v33 != 6 && v33 != 12)
      {
        goto LABEL_60;
      }

      if (v32 < 0x9B)
      {
        goto LABEL_34;
      }

      v35 = v31[77];
      if (!v35 || (v30[v35 + 2] & 0x20) == 0)
      {
        goto LABEL_34;
      }

LABEL_60:
      result = sub_605E3C(a4 + 10, v27);
      v36 = *result;
      v37 = (*result - **result);
      v38 = *v37;
      if (*(result + 38))
      {
        if (v38 < 0x47)
        {
          goto LABEL_34;
        }

        v39 = v37[35];
        if (!v37[35])
        {
          goto LABEL_34;
        }

        v40 = 2;
      }

      else
      {
        if (v38 < 0x47)
        {
          goto LABEL_34;
        }

        v39 = v37[35];
        if (!v37[35])
        {
          goto LABEL_34;
        }

        v40 = 1;
      }

      v41 = *(v36 + v39);
      if ((v41 & v40) == 0 || !v37[23])
      {
        goto LABEL_34;
      }

      v42 = *(v36 + v37[23]);
      if (v42 > 0x2A)
      {
        if (v42 == 44)
        {
          goto LABEL_80;
        }

        if (v42 != 43)
        {
          goto LABEL_34;
        }
      }

      else if (v42 != 6 && v42 != 12)
      {
        goto LABEL_34;
      }

      if (v38 >= 0x9B)
      {
        v44 = v37[77];
        if (v44)
        {
          if ((*(v36 + v44 + 2) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_80:
      if (*(result + 38))
      {
        if ((v41 & 0x141510) != 0)
        {
          goto LABEL_86;
        }

        v45 = 64;
      }

      else
      {
        if ((v41 & 0xA0A88) != 0)
        {
          goto LABEL_86;
        }

        v45 = 32;
      }

      if ((v45 & v41) == 0)
      {
        goto LABEL_34;
      }

LABEL_86:
      *(a5 + 245) = 1;
    }
  }

LABEL_34:
  if (*(a1 + 763) == 1)
  {
    result = sub_31C0F0(*a1, a4[4] & 0xFFFFFFFFFFFFFFLL);
    if (result)
    {
      result = sub_31C0F0(*a1, *(v10 + 32) & 0xFFFFFFFFFFFFFFLL);
      if (result)
      {
        if (*(a5 + 24))
        {
          *(a5 + 227) = 1;
          *(a5 + 24) = 0;
        }
      }
    }
  }

  if (v26)
  {
    v29 = *(a5 + 24);
    if (v29 <= 0x15 && ((1 << v29) & 0x300001) != 0)
    {
      v29 = 3;
    }

    *(a5 + 24) = v29;
  }

  return result;
}

uint64_t sub_6ECBB4(uint64_t a1, uint64_t a2)
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

void sub_6ECDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_6ECDE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

BOOL sub_6ECDFC(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5)
{
  if (*(a1 + 870) != 1)
  {
    return 0;
  }

  result = sub_712D18(a1 + 1432, a4);
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
        v18 = sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
        if (*(v16 + 7772) == 1)
        {
          v19 = sub_30C50C(v16 + 3896, v17, 0);
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

          v22 = v21 + ((v17 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v17 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v22 = 0;
        }

        v61[0] = v18;
        v61[1] = v22;
        v61[2] = sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
        v61[3] = v23;
        v61[4] = v17 & 0xFFFFFFFFFFFFFFLL;
        __p = 0;
        v59 = 0;
        v60 = 0;
        v24 = sub_4D1DC0(a2);
        if (a3 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a3;
        }

        if (v24 > a3)
        {
          do
          {
            v26 = sub_4D1F50(a2, a3);
            v27 = a4[4];
            v28 = *(v26 + 32);
            v30 = v27 == v28;
            v29 = HIDWORD(v27) & 0xFFFFFF;
            v30 = v30 && v29 == (HIDWORD(v28) & 0xFFFFFF);
            if (v30)
            {
              break;
            }

            v31 = *a1;
            v32 = sub_2B51D8(*a1, v28 & 0xFFFFFFFFFFFFLL);
            if (*(v31 + 7772) == 1)
            {
              v33 = sub_30C50C(v31 + 3896, v28, 0);
              v34 = &v33[-*v33];
              if (*v34 < 5u)
              {
                v35 = 0;
              }

              else
              {
                v35 = *(v34 + 2);
                if (v35)
                {
                  v35 += &v33[*&v33[v35]];
                }
              }

              v36 = v35 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v35 + ((v28 >> 30) & 0x3FFFC) + 4);
            }

            else
            {
              v36 = 0;
            }

            v37 = sub_31D7E8(v31, v28 & 0xFFFFFFFFFFFFLL, 1);
            v53 = v32;
            v54 = v36;
            v55 = v37;
            v56 = v38;
            v57 = v28 & 0xFFFFFFFFFFFFFFLL;
            if (!sub_712D18(a1 + 1432, &v53))
            {
              goto LABEL_50;
            }

            v39 = (v53 - *v53);
            if (*v39 >= 0x2Fu)
            {
              v40 = v39[23];
              if (v40)
              {
                v41 = *(v53 + v40);
                if (v41 == 14 || v41 == 44)
                {
                  goto LABEL_50;
                }
              }
            }

            v42 = *a1;
            v43 = *(v26 + 32);
            v44 = sub_2B51D8(*a1, v43 & 0xFFFFFFFFFFFFLL);
            if (*(v42 + 7772) == 1)
            {
              v45 = sub_30C50C(v42 + 3896, v43, 0);
              v46 = &v45[-*v45];
              if (*v46 < 5u)
              {
                v47 = 0;
              }

              else
              {
                v47 = *(v46 + 2);
                if (v47)
                {
                  v47 += &v45[*&v45[v47]];
                }
              }

              v48 = v47 + ((v43 >> 30) & 0x3FFFC) + 4 + *(v47 + ((v43 >> 30) & 0x3FFFC) + 4);
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_31D7E8(v42, v43 & 0xFFFFFFFFFFFFLL, 1);
            v53 = v44;
            v54 = v48;
            v55 = v49;
            v56 = v50;
            v57 = v43 & 0xFFFFFFFFFFFFFFLL;
            sub_31B8F4(v42, &v53, &__p);
            if (sub_6F31EC(a1, v61, &__p, a4) != 1)
            {
LABEL_50:
              result = 0;
              v51 = __p;
              if (!__p)
              {
                return result;
              }

              goto LABEL_51;
            }

            ++a3;
          }

          while (v25 != a3);
        }

        result = 1;
        v51 = __p;
        if (__p)
        {
LABEL_51:
          v59 = v51;
          v52 = result;
          operator delete(v51);
          return v52;
        }
      }
    }
  }

  return result;
}

void sub_6ED1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6ED1FC(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      v31 = sub_6E61B0(v14, a2, a3, v11, v15, 1, 1, 0);
      if (v31 != 4)
      {
        v32 = v31;
        if (*(v9 + 32) && *v9 && *(v9 + 8))
        {
          v32 = sub_6E61B0(v14, a2, v9, v11, v15, 1, 1, 0);
        }

        result = sub_6ED56C(v14, v32);
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

uint64_t sub_6ED56C(uint64_t a1, int a2)
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

uint64_t sub_6ED764(uint64_t a1, uint64_t a2)
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

void sub_6EDAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12)
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

uint64_t sub_6EDB40(uint64_t a1, int **a2, uint64_t *a3, uint64_t a4, double a5)
{
  if (*(a1 + 708) != 1)
  {
    return 0;
  }

  v9 = sub_7135C4(a1 + 1432, a2, a3, -1, a5);
  if (v9 != -1 && v9 == a4)
  {
    return 0;
  }

  result = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, *(*a3 + 40 * a4 + 32) & 0xFFFFFFFFFFFFFFLL);
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

uint64_t sub_6EDCBC(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

  v23 = sub_70BD18(0, 0, a1);
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
  if (*v38 >= 0x9Bu && (v39 = v38[77]) != 0 && (*(*&v47[0] + v39 + 2) & 2) != 0 || (sub_30F868(a1 + 7264, v47) & 1) != 0 || (sub_30F6FC(a1 + 7264, v47) & 1) != 0 || (v41 = (*&v47[0] - **&v47[0]), *v41 >= 0x2Fu) && (v42 = v41[23]) != 0 && (v43 = *(*&v47[0] + v42) - 15, v43 < 0x21) && ((0x1C5C08009uLL >> v43) & 1) != 0 || (v44 = sub_7132DC(a1 + 1432, a2, a3, v52, 1, v40), v45 = sub_6EECD4(a1, a2, a3, v52, v47, v44), fabs(v44) < *(a1 + 184)) || fabs(v45) > *(a1 + 400))
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

void sub_6EE114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6EE14C(uint64_t a1, int **a2, uint64_t *a3, unint64_t a4)
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

  v16 = sub_7135C4(a1 + 1432, a2, a3, -1, v9);
  result = 0;
  if (v16 != -1 && v16 != a4)
  {
    operator new();
  }

  return result;
}

void sub_6EEBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
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

double sub_6EED44(uint64_t a1, uint64_t a2, int **a3, int **a4, int **a5)
{
  if (sub_394BD0())
  {
    return *(a1 + 416);
  }

  v12 = fabs(sub_7132DC(a1 + 1432, a2, a3, a5, 0, v10));
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

uint64_t sub_6EEE78(uint64_t a1, void *a2, unint64_t a3, int **a4)
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
      if (v42 == v43 || fabs(sub_715540(a1 + 1432, a2, &v36, v42, 0)) > *(a1 + 200))
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
    v30 = fabs(sub_70E2E0(a1 + 1432, v28, v29));
    if (v30 > *(a1 + 200))
    {
      break;
    }

    v31 = __p;
    if (__p != v40)
    {
      v32 = *(v29 + 32);
      while (__PAIR64__(*(v31 + 2), *v31) != __PAIR64__(WORD2(v32), v32) || *(v31 + 6) != BYTE6(v32))
      {
        if (++v31 == v40)
        {
          goto LABEL_35;
        }
      }
    }

    if (v31 != v40)
    {
      v33 = 1;
      v34 = __p;
      if (__p)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_35:
    ;
  }

  v33 = 0;
  v34 = __p;
  if (__p)
  {
LABEL_37:
    v40 = v34;
    operator delete(v34);
  }

LABEL_38:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v33;
}

void sub_6EF1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

void sub_6EF218(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
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

void sub_6EFA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
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

uint64_t sub_6EFB0C(uint64_t *a1, void *a2, uint64_t a3)
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

void sub_6EFE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6EFE9C(uint64_t a1, int **a2, void *a3)
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

void sub_6F01D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6F01FC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
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

void sub_6F0490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6F04B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
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

void sub_6F0638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6F0654(uint64_t *a1, void *a2, uint64_t a3)
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
    v43 = 0;
    v44 = 0;
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
LABEL_38:
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
        v25 = sub_2B51D8(*a1, v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v26 = sub_30C50C(v23 + 3896, v24, 0);
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

          v29 = (v28 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v28 + ((v24 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_31D7E8(v23, v24 & 0xFFFFFFFFFFFFLL, 1);
        v41[0] = v25;
        v41[1] = v29;
        v41[2] = v30;
        v41[3] = v31;
        v41[4] = (v24 & 0xFFFFFFFFFFFFFFLL);
        sub_31B8F4(*a1, v41, &__p);
        v33 = (v41[0] - *v41[0]);
        if (*v33 < 0x2Fu)
        {
          break;
        }

        v34 = v33[23];
        if (!v34)
        {
          break;
        }

        v35 = *(v41[0] + v34);
        if (v35 > 0x2A || ((1 << v35) & 0x50426810004) == 0)
        {
          v20 |= v35 == 0;
          v40 = __p;
          if (__p)
          {
            goto LABEL_40;
          }

          return v20 & 1;
        }

        v37 = sub_7135C4((a1 + 179), v41, &__p, -1, v32);
        if (++v7 < sub_4D1DC0(a2))
        {
          if (v37 == -1 || (v38 = *(sub_6B8D68(&__p, v37) + 32), v39 = *(sub_4D1F50(a2, v7) + 32), v38 != v39) || (HIDWORD(v38) & 0xFFFFFF) != (HIDWORD(v39) & 0xFFFFFF))
          {
            v20 = 0;
          }
        }

        if (v19 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v40 = __p;
    if (__p)
    {
LABEL_40:
      v43 = v40;
      operator delete(v40);
    }
  }

  return v20 & 1;
}

void sub_6F0924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6F094C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  *(a4 + 24) = 0;
  v5 = (a4 + 24);
  *(a4 + 8) = *a4;
  *(a4 + 48) = *(a4 + 40);
  *(a4 + 64) = 0;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *(a4 + 72) = v6;
  v7 = (a4 + 72);
  *(a4 + 88) = v6;
  *(a4 + 104) = v6;
  *(a4 + 120) = -1;
  *(a4 + 128) = 0;
  *(a4 + 136) = -1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = vnegq_f64(v6);
  *(a4 + 176) = 0;
  *(a4 + 184) = 98;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = xmmword_229B660;
  *(a4 + 232) = 0;
  *(a4 + 245) = 0;
  *(a4 + 224) = 0;
  sub_6EA2C4(a1, a2, a3, 1, __p);
  v8 = *a4;
  if (*a4)
  {
    *(a4 + 8) = v8;
    operator delete(v8);
  }

  *a4 = *__p;
  *(a4 + 16) = v18;
  __p[1] = 0;
  v18 = 0;
  __p[0] = 0;
  *v5 = v19;
  v9 = *(a4 + 40);
  if (v9)
  {
    *(a4 + 48) = v9;
    operator delete(v9);
    v9 = __p[0];
  }

  *(a4 + 40) = v20;
  *(a4 + 56) = v21;
  v21 = 0;
  v20 = 0uLL;
  *(a4 + 64) = v22;
  v10 = v30;
  v11 = v32[0];
  v7[8] = v31;
  v7[9] = v11;
  *(v7 + 158) = *(v32 + 14);
  v12 = v26;
  v13 = v28;
  v7[4] = v27;
  v7[5] = v13;
  v7[6] = v29;
  v7[7] = v10;
  v14 = v24;
  *v7 = v23;
  v7[1] = v14;
  v7[2] = v25;
  v7[3] = v12;
  if (v9)
  {
    __p[1] = v9;
    operator delete(v9);
  }

  if (*v5 == 20)
  {
    v15 = 62;
    goto LABEL_11;
  }

  if (*v5 == 21)
  {
    v15 = 63;
LABEL_11:
    *v5 = v15;
  }

  *(a4 + 152) = 1;
  return 1;
}

uint64_t sub_6F0AF0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = sub_4D1F50(a2, a3);
  v8 = *a1;
  v9 = *(v7 + 32);
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v14 = 0;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFLL;
  v91[0] = v10;
  v91[1] = v14;
  v91[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v91[3] = v16;
  v91[4] = (v9 & 0xFFFFFFFFFFFFFFLL);
  v17 = sub_4D1F50(a2, v4 + 1);
  v18 = *a1;
  v19 = *(v17 + 32);
  v20 = sub_2B51D8(*a1, v19 & 0xFFFFFFFFFFFFLL);
  if (*(v18 + 7772) == 1)
  {
    sub_30C50C(v18 + 3896, v19, 0);
  }

  sub_31D7E8(v18, v19 & 0xFFFFFFFFFFFFLL, 1);
  v21 = (v10 - *v10);
  if (*v21 >= 0x2Fu)
  {
    v22 = v21[23];
    if (v22)
    {
      v23 = *(v10 + v22);
      v24 = v23 > 0x36;
      v25 = (1 << v23) & 0x44000000000008;
      if (!v24 && v25 != 0)
      {
        return 0;
      }
    }
  }

  v27 = (v20 - *v20);
  if (*v27 >= 0x2Fu)
  {
    v28 = v27[23];
    if (v28)
    {
      if (*(v20 + v28) == 54)
      {
        *(a4 + 24) = 6;
        v30 = *(a4 + 8);
        v29 = *(a4 + 16);
        if (v30 >= v29)
        {
          v48 = *a4;
          v49 = v30 - *a4;
          v50 = v49 >> 3;
          v51 = (v49 >> 3) + 1;
          if (v51 >> 61)
          {
            goto LABEL_108;
          }

          v52 = v29 - v48;
          if (v52 >> 2 > v51)
          {
            v51 = v52 >> 2;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 61))
            {
              operator new();
            }

            goto LABEL_109;
          }

          *(8 * v50) = v15;
          v31 = (8 * v50 + 8);
          memcpy(0, v48, v49);
          *a4 = 0;
          *(a4 + 8) = v31;
          *(a4 + 16) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v30 = v15;
          v31 = v30 + 1;
        }

        *(a4 + 8) = v31;
        v54 = *(a4 + 16);
        if (v31 < v54)
        {
          *v31 = v19 & 0xFFFFFFFFFFFFFFLL;
          v55 = (v31 + 1);
LABEL_70:
          *(a4 + 8) = v55;
          return 1;
        }

        v56 = *a4;
        v57 = v31 - *a4;
        v58 = v57 >> 3;
        v59 = (v57 >> 3) + 1;
        if (!(v59 >> 61))
        {
          v60 = v54 - v56;
          if (v60 >> 2 > v59)
          {
            v59 = v60 >> 2;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFF8)
          {
            v61 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          if (!v61)
          {
            *(8 * v58) = v19 & 0xFFFFFFFFFFFFFFLL;
            v55 = 8 * v58 + 8;
            memcpy(0, v56, v57);
            *a4 = 0;
            *(a4 + 8) = v55;
            *(a4 + 16) = 0;
            if (v56)
            {
              operator delete(v56);
            }

            goto LABEL_70;
          }

          if (!(v61 >> 61))
          {
            operator new();
          }

LABEL_109:
          sub_1808();
        }

LABEL_108:
        sub_1794();
      }
    }
  }

  v32 = 0;
  v33 = v4 + 1;
  while (1)
  {
    v34 = sub_4D1F50(a2, v33);
    v35 = *a1;
    v36 = *(v34 + 32);
    v37 = sub_2B51D8(*a1, v36 & 0xFFFFFFFFFFFFLL);
    if (*(v35 + 7772) == 1)
    {
      sub_30C50C(v35 + 3896, v36, 0);
    }

    sub_31D7E8(v35, v36 & 0xFFFFFFFFFFFFLL, 1);
    v38 = (v37 - *v37);
    v39 = *v38;
    if (v39 >= 0x2F)
    {
      break;
    }

    if (v39 < 9)
    {
      if (v32 > a1[77])
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_30:
    v40 = v38[4];
    if (v40)
    {
      v40 = *(v37 + v40);
    }

    v32 += v40;
    if (v32 > a1[77])
    {
      return 0;
    }

LABEL_35:
    if (++v33 == sub_4D1DC0(a2))
    {
      return 0;
    }
  }

  if (!v38[23] || *(v37 + v38[23]) != 54)
  {
    goto LABEL_30;
  }

  v88 = 0;
  v89 = 0;
  v90 = 0;
  sub_31B8F4(*a1, v91, &v88);
  v42 = v88;
  if (v89 - v88 == 80)
  {
    if (sub_6DEE8C(a1, v91, &v88) == 2)
    {
      v43 = sub_6B8D68(&v88, 0);
      v44 = sub_4D1F50(a2, v4 + 1);
      v45 = *a1;
      v46 = *(v44 + 32);
      sub_2B51D8(*a1, v46 & 0xFFFFFFFFFFFFLL);
      if (*(v45 + 7772) == 1)
      {
        sub_30C50C(v45 + 3896, v46, 0);
      }

      sub_31D7E8(v45, v46 & 0xFFFFFFFFFFFFLL, 1);
      v47 = __PAIR64__(*(v43 + 36), *(v43 + 32)) == __PAIR64__(WORD2(v46), v46) && *(v43 + 38) == BYTE6(v46);
      v62 = sub_6B8D68(&v88, v47);
      v63 = 0;
      while (1)
      {
        v64 = *v62;
        v65 = *(v62 + 16);
        v87 = *(v62 + 32);
        v86[0] = v64;
        v86[1] = v65;
        v89 = v88;
        sub_31B8F4(*a1, v86, &v88);
        v67 = v88;
        if (v88 != v89)
        {
          while (1)
          {
            v68 = (*v67 - **v67);
            if (*v68 >= 0x2Fu)
            {
              v69 = v68[23];
              if (v69)
              {
                if (*(*v67 + v69) == 54)
                {
                  break;
                }
              }
            }

            v67 += 5;
            if (v67 == v89)
            {
              goto LABEL_80;
            }
          }
        }

        if (v67 != v89)
        {
          break;
        }

LABEL_80:
        v70 = (*&v86[0] - **&v86[0]);
        if (*v70 >= 9u && (v71 = v70[4]) != 0)
        {
          v63 += *(*&v86[0] + v71);
          if (v63 > a1[77])
          {
            goto LABEL_87;
          }
        }

        else if (v63 > a1[77])
        {
          goto LABEL_87;
        }

        v72 = sub_7135C4((a1 + 179), v86, &v88, -1, v66);
        if (v72 == -1)
        {
          goto LABEL_87;
        }

        v62 = sub_6B8D68(&v88, v72);
      }

      v74 = a4;
      for (*(a4 + 24) = 6; v4 <= v33; ++v4)
      {
        while (1)
        {
          v75 = *(sub_4D1F50(a2, v4) + 32);
          v77 = *(v74 + 8);
          v76 = *(v74 + 16);
          if (v77 >= v76)
          {
            break;
          }

          *v77 = v75 & 0xFFFFFFFFFFFFFFLL;
          *(v74 + 8) = v77 + 1;
          if (++v4 > v33)
          {
            goto LABEL_107;
          }
        }

        v78 = *v74;
        v79 = v77 - *v74;
        v80 = (v79 >> 3) + 1;
        if (v80 >> 61)
        {
          sub_1794();
        }

        v81 = v76 - v78;
        if (v81 >> 2 > v80)
        {
          v80 = v81 >> 2;
        }

        if (v81 >= 0x7FFFFFFFFFFFFFF8)
        {
          v82 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v80;
        }

        if (v82)
        {
          if (!(v82 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v83 = (8 * (v79 >> 3));
        *v83 = v75 & 0xFFFFFFFFFFFFFFLL;
        v84 = v83 + 1;
        memcpy(0, v78, v79);
        *a4 = 0;
        *(a4 + 8) = v84;
        *(a4 + 16) = 0;
        if (v78)
        {
          operator delete(v78);
        }

        v74 = a4;
        *(a4 + 8) = v84;
      }

LABEL_107:
      result = 1;
    }

    else
    {
LABEL_87:
      result = 0;
    }

    v42 = v88;
  }

  else
  {
    result = 0;
  }

  if (v42)
  {
    v89 = v42;
    v73 = result;
    operator delete(v42);
    return v73;
  }

  return result;
}

void sub_6F1254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6F1288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 728) != 1)
  {
    return 0;
  }

  if (sub_6F24E4(a1, a2, a3, a4))
  {
    return 1;
  }

  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v227 = v10;
  v12 = *(v10 + 32);
  v13 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  v226 = a3;
  if (*(v11 + 7772) == 1)
  {
    v14 = sub_30C50C(v11 + 3896, v12, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v17 = 0;
  }

  v228 = a4;
  v247 = v13;
  v248 = v17;
  v249 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v250 = v18;
  v251 = v12 & 0xFFFFFFFFFFFFFFLL;
  sub_4D0568();
  v20 = v19;
  v22 = v21;
  sub_4D0568();
  v236 = v23;
  v233 = v24;
  sub_4D0560();
  v229 = v26 + v226;
  v231 = v25;
  sub_4D0560();
  v28 = v27;
  v235 = 0;
  v30 = v29 + v226 + 1;
  while (1)
  {
    v31 = v30;
    sub_4D0568();
    v34 = v32;
    v35 = v33;
    if (v28)
    {
      v36 = sub_4D1DC0(v28);
      v37 = v36;
      if (v34)
      {
        v38 = v31 < v36;
        v39 = sub_4D1DC0(v34);
        if (v35 < v39 && v38)
        {
          v41 = sub_4D1F50(v28, v31);
          if (v41 == sub_4D1F50(v34, v35))
          {
            goto LABEL_75;
          }
        }

        else if (v31 < v37 == v35 < v39)
        {
          goto LABEL_75;
        }
      }

      else if (v31 >= v36)
      {
        goto LABEL_75;
      }
    }

    else if (!v32 || v33 >= sub_4D1DC0(v32))
    {
      goto LABEL_75;
    }

    v42 = sub_4D1F50(v28, v31);
    v43 = (*v42 - **v42);
    if (*v43 >= 0x2Fu)
    {
      v44 = v43[23];
      if (v44)
      {
        v45 = *(*v42 + v44);
        v46 = v45 > 0x36;
        v47 = (1 << v45) & 0x44000000000008;
        if (!v46 && v47 != 0)
        {
          return 0;
        }
      }
    }

    v49 = *a1;
    v50 = *(sub_4D1F50(v28, v31) + 32);
    v51 = sub_2B51D8(v49, v50 & 0xFFFFFFFFFFFFLL);
    if (*(v49 + 7772) == 1)
    {
      v52 = sub_30C50C(v49 + 3896, v50, 0);
      v53 = &v52[-*v52];
      if (*v53 < 5u)
      {
        v54 = 0;
      }

      else
      {
        v54 = *(v53 + 2);
        if (v54)
        {
          v54 += &v52[*&v52[v54]];
        }
      }

      v55 = v54 + ((v50 >> 30) & 0x3FFFC) + 4 + *(v54 + ((v50 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_31D7E8(v49, v50 & 0xFFFFFFFFFFFFLL, 1);
    *&v252 = v51;
    *(&v252 + 1) = v55;
    *&v253 = v56;
    *(&v253 + 1) = v57;
    v254 = v50 & 0xFFFFFFFFFFFFFFLL;
    v58 = sub_4D1F50(v28, v31);
    v59 = *a1;
    v60 = *(v58 + 32);
    v61 = sub_2B51D8(*a1, v60 & 0xFFFFFFFFFFFFLL);
    if (*(v59 + 7772) == 1)
    {
      sub_30C50C(v59 + 3896, v60, 0);
    }

    sub_31D7E8(v59, v60 & 0xFFFFFFFFFFFFLL, 1);
    v62 = (v61 - *v61);
    if (*v62 >= 0x2Fu && (v63 = v62[23]) != 0 && *(v61 + v63) == 14)
    {
      v64 = 1;
      if (!v235)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v64 = sub_714EA0(a1 + 1432, &v247, &v252);
      if (!v235)
      {
LABEL_47:
        v235 = sub_714EA0(a1 + 1432, &v247, &v252);
        goto LABEL_50;
      }
    }

    v235 = 1;
LABEL_50:
    sub_4D0568();
    v66 = v65;
    v68 = v67;
    if (v20)
    {
      v69 = v22 < sub_4D1DC0(v20);
      if (!v66)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v69 = 0;
      if (!v65)
      {
LABEL_58:
        v71 = 0;
        goto LABEL_59;
      }
    }

    v70 = sub_4D1DC0(v66);
    v71 = v68 < v70;
    if (v68 < v70 && v69)
    {
      v73 = sub_4D1F50(v20, v22);
      v74 = v73 == sub_4D1F50(v66, v68);
      goto LABEL_60;
    }

LABEL_59:
    v74 = v69 ^ v71 ^ 1;
LABEL_60:
    if ((v74 & v64) != 0)
    {
      v20 = v28;
      v22 = v31;
    }

    sub_4D0568();
    v76 = v75;
    v78 = v77;
    if (v236)
    {
      v79 = v233 < sub_4D1DC0(v236);
      if (!v76)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v79 = 0;
      if (!v75)
      {
LABEL_71:
        v81 = 0;
        goto LABEL_72;
      }
    }

    v80 = sub_4D1DC0(v76);
    v81 = v78 < v80;
    if (v78 < v80 && v79)
    {
      v83 = sub_4D1F50(v236, v233);
      if (v83 != sub_4D1F50(v76, v78) || v64)
      {
        goto LABEL_12;
      }

      goto LABEL_73;
    }

LABEL_72:
    if ((v79 ^ v81 | v64))
    {
      goto LABEL_12;
    }

LABEL_73:
    v84 = sub_4D1F50(v28, v31);
    if ((sub_6ABAB4(a1 + 3680, v84) & 1) == 0)
    {
      break;
    }

LABEL_12:
    v30 = v31 + 1;
    v229 = v31;
    v231 = v28;
  }

  v236 = v28;
  v233 = v31;
LABEL_75:
  sub_4D0568();
  v87 = v85;
  v88 = v86;
  if (v20)
  {
    v89 = sub_4D1DC0(v20);
    v90 = v89;
    if (v87)
    {
      v91 = v22 < v89;
      v92 = sub_4D1DC0(v87);
      if (v88 < v92 && v91)
      {
        v94 = sub_4D1F50(v20, v22);
        if (v94 == sub_4D1F50(v87, v88))
        {
          goto LABEL_122;
        }
      }

      else if (v22 < v90 == v88 < v92)
      {
        goto LABEL_122;
      }

LABEL_89:
      sub_4D0568();
      v97 = v95;
      v98 = v96;
      if (v236)
      {
        v99 = sub_4D1DC0(v236);
        v100 = v99;
        if (v97)
        {
          v101 = v233 < v99;
          v102 = sub_4D1DC0(v97);
          if (v98 < v102 && v101)
          {
            v104 = sub_4D1F50(v236, v233);
            if (v104 != sub_4D1F50(v97, v98))
            {
              goto LABEL_122;
            }
          }

          else if (v233 < v100 != v98 < v102)
          {
            goto LABEL_122;
          }

LABEL_103:
          v105 = *a1;
          v106 = v227[4];
          v107 = sub_2B51D8(*a1, v106 & 0xFFFFFFFFFFFFLL);
          if (*(v105 + 7772) == 1)
          {
            v108 = sub_30C50C(v105 + 3896, v106, 0);
            v109 = &v108[-*v108];
            if (*v109 < 5u)
            {
              v110 = 0;
            }

            else
            {
              v110 = *(v109 + 2);
              if (v110)
              {
                v110 += &v108[*&v108[v110]];
              }
            }

            v111 = v110 + ((v106 >> 30) & 0x3FFFC) + 4 + *(v110 + ((v106 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v111 = 0;
          }

          v112 = sub_31D7E8(v105, v106 & 0xFFFFFFFFFFFFLL, 1);
          *&v252 = v107;
          *(&v252 + 1) = v111;
          *&v253 = v112;
          *(&v253 + 1) = v113;
          v254 = v106 & 0xFFFFFFFFFFFFFFLL;
          v114 = sub_4D1F50(v231, v229);
          v115 = *a1;
          v116 = *(v114 + 32);
          v117 = sub_2B51D8(*a1, v116 & 0xFFFFFFFFFFFFLL);
          if (*(v115 + 7772) == 1)
          {
            v118 = sub_30C50C(v115 + 3896, v116, 0);
            v119 = &v118[-*v118];
            if (*v119 < 5u)
            {
              v120 = 0;
            }

            else
            {
              v120 = *(v119 + 2);
              if (v120)
              {
                v120 += &v118[*&v118[v120]];
              }
            }

            v121 = v120 + ((v116 >> 30) & 0x3FFFC) + 4 + *(v120 + ((v116 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v121 = 0;
          }

          *&v244 = v117;
          *(&v244 + 1) = v121;
          *&v245 = sub_31D7E8(v115, v116 & 0xFFFFFFFFFFFFLL, 1);
          *(&v245 + 1) = v122;
          v246 = v116 & 0xFFFFFFFFFFFFFFLL;
          v123 = sub_394BD0();
          v124 = v236;
          if (v123)
          {
            v124 = v231;
          }

          v236 = v124;
          v125 = v233;
          if (v123)
          {
            v125 = v229;
          }

          v233 = v125;
        }

        else if (v233 >= v99)
        {
          goto LABEL_103;
        }
      }

      else if (!v95 || v96 >= sub_4D1DC0(v95))
      {
        goto LABEL_103;
      }
    }

    else if (v22 < v89)
    {
      goto LABEL_89;
    }
  }

  else if (v85 && v86 < sub_4D1DC0(v85))
  {
    goto LABEL_89;
  }

LABEL_122:
  sub_4D0568();
  v128 = v126;
  v129 = v127;
  if (!v20)
  {
    if (v126 && v127 < sub_4D1DC0(v126))
    {
      goto LABEL_136;
    }

    return 0;
  }

  v130 = sub_4D1DC0(v20);
  v131 = v130;
  if (!v128)
  {
    if (v22 < v130)
    {
      goto LABEL_136;
    }

    return 0;
  }

  v132 = v22 < v130;
  v133 = sub_4D1DC0(v128);
  if (v129 < v133 && v132)
  {
    v135 = sub_4D1F50(v20, v22);
    if (v135 == sub_4D1F50(v128, v129))
    {
      return 0;
    }
  }

  else if (v22 < v131 == v129 < v133)
  {
    return 0;
  }

LABEL_136:
  sub_4D0568();
  v137 = v136;
  v139 = v138;
  if (v236)
  {
    v140 = v233 < sub_4D1DC0(v236);
    if (v137)
    {
      goto LABEL_138;
    }

LABEL_145:
    v142 = 0;
    goto LABEL_146;
  }

  v140 = 0;
  if (!v136)
  {
    goto LABEL_145;
  }

LABEL_138:
  v141 = sub_4D1DC0(v137);
  v142 = v139 < v141;
  if (v139 < v141)
  {
    v143 = v140;
  }

  else
  {
    v143 = 0;
  }

  if (v143 == 1)
  {
    v144 = sub_4D1F50(v236, v233);
    v145 = sub_4D1F50(v137, v139);
    v9 = 0;
    if (v144 == v145)
    {
      return v9;
    }

LABEL_147:
    if (v22 < v233)
    {
      sub_4D0560();
      v147 = v146;
      v148 = sub_4D1F50(v236, v233);
      v149 = *v148;
      v150 = *(v148 + 16);
      v246 = *(v148 + 32);
      v244 = v149;
      v245 = v150;
      v151 = *a1;
      v152 = sub_4D1F50(v236, v233);
      sub_6D6D8C(v151, *(v152 + 32) & 0xFFFFFFFFFFFFFFLL, 1, 1, &v241);
      v239 = 0;
      v240 = 0;
      v153 = sub_4D1DC0(a2);
      v154 = v233 - v147;
      v155 = v226;
      if (v226 <= v153)
      {
        v156 = v153;
      }

      else
      {
        v156 = v226;
      }

      v230 = v156;
      if (v153 > v226)
      {
        v157 = 0;
        v234 = 0;
        LOBYTE(v158) = 0;
        v159 = 0.0;
        v224 = v154;
        while (1)
        {
          v232 = v157;
          v162 = sub_4D1F50(a2, v155);
          v163 = v162[4];
          v161 = v228;
          v165 = *(v228 + 8);
          v164 = *(v228 + 16);
          v237 = v163;
          if (v165 >= v164)
          {
            v166 = *v228;
            v167 = v165 - *v228;
            v168 = (v167 >> 3) + 1;
            if (v168 >> 61)
            {
              sub_1794();
            }

            v169 = v164 - v166;
            if (v169 >> 2 > v168)
            {
              v168 = v169 >> 2;
            }

            if (v169 >= 0x7FFFFFFFFFFFFFF8)
            {
              v170 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v170 = v168;
            }

            if (v170)
            {
              if (!(v170 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v161 = v228;
            v171 = (8 * (v167 >> 3));
            *v171 = v237 & 0xFFFFFFFFFFFFFFLL;
            v172 = v171 + 1;
            memcpy(0, v166, v167);
            *v228 = 0;
            *(v228 + 8) = v172;
            *(v228 + 16) = 0;
            if (v166)
            {
              operator delete(v166);
            }

            v154 = v224;
            *(v228 + 8) = v172;
            if (v158)
            {
LABEL_157:
              v158 = 1;
              goto LABEL_178;
            }
          }

          else
          {
            *v165 = v163 & 0xFFFFFFFFFFFFFFLL;
            *(v228 + 8) = v165 + 1;
            if (v158)
            {
              goto LABEL_157;
            }
          }

          v173 = *a1;
          v174 = v162[4];
          v175 = sub_2B51D8(*a1, v174 & 0xFFFFFFFFFFFFLL);
          if (*(v173 + 7772) == 1)
          {
            v176 = sub_30C50C(v173 + 3896, v174, 0);
            v177 = &v176[-*v176];
            if (*v177 < 5u)
            {
              v178 = 0;
            }

            else
            {
              v178 = *(v177 + 2);
              if (v178)
              {
                v178 += &v176[*&v176[v178]];
              }
            }

            v179 = v178 + ((v174 >> 30) & 0x3FFFC) + 4 + *(v178 + ((v174 >> 30) & 0x3FFFC) + 4);
          }

          else
          {
            v179 = 0;
          }

          v180 = sub_31D7E8(v173, v174 & 0xFFFFFFFFFFFFLL, 1);
          *&v252 = v175;
          *(&v252 + 1) = v179;
          *&v253 = v180;
          *(&v253 + 1) = v181;
          v254 = v174 & 0xFFFFFFFFFFFFFFLL;
          v158 = !sub_712D18(a1 + 1432, &v252);
          v161 = v228;
LABEL_178:
          if (v154 == v155)
          {
            goto LABEL_232;
          }

          v182 = sub_4D1DC0(a2);
          v183 = 0.0;
          if (v155 < v182 - 1)
          {
            v184 = sub_4D1F50(a2, v155 + 1);
            v185 = (*v162 - **v162);
            v186 = *v185;
            if (*(v162 + 38))
            {
              if (v186 < 0x49)
              {
                goto LABEL_190;
              }

              v187 = v185[36];
              if (!v187)
              {
                goto LABEL_190;
              }

LABEL_186:
              v188 = *(*v162 + v187);
              v189 = *v184;
              v190 = (*v184 - **v184);
              v191 = *v190;
              if (!*(v184 + 38))
              {
                goto LABEL_187;
              }

LABEL_191:
              if (v191 >= 0x4B)
              {
                v192 = v190[37];
                if (v192)
                {
                  goto LABEL_193;
                }
              }

LABEL_194:
              v193 = 0xFFFF;
            }

            else
            {
              if (v186 >= 0x4B)
              {
                v187 = v185[37];
                if (v187)
                {
                  goto LABEL_186;
                }
              }

LABEL_190:
              v188 = -1;
              v189 = *v184;
              v190 = (*v184 - **v184);
              v191 = *v190;
              if (*(v184 + 38))
              {
                goto LABEL_191;
              }

LABEL_187:
              if (v191 < 0x49)
              {
                goto LABEL_194;
              }

              v192 = v190[36];
              if (!v192)
              {
                goto LABEL_194;
              }

LABEL_193:
              v193 = *&v189[v192];
            }

            v194 = v188 + 18000;
            v195 = v188 - 18000;
            if ((v194 >> 5) < 0x465u)
            {
              v195 = v194;
            }

            v196 = v193 - v195;
            if (v196 > 18000)
            {
              v196 -= 36000;
            }

            if (v196 < -17999)
            {
              v196 += 36000;
            }

            v183 = v196 / 100.0;
          }

          v197 = fabs(v183);
          if (v197 >= v159)
          {
            v159 = v197;
          }

          v198 = (*v227 - **v227);
          v199 = *v198;
          if (*(v227 + 38))
          {
            if (v199 >= 0x49)
            {
              v200 = v198[36];
              v201 = v237;
              if (v200)
              {
                goto LABEL_207;
              }

LABEL_213:
              v202 = -1;
              v203 = *v162;
              v204 = (*v162 - **v162);
              v205 = *v204;
              if (!*(v162 + 38))
              {
                goto LABEL_208;
              }

              goto LABEL_216;
            }
          }

          else if (v199 >= 0x4B)
          {
            v200 = v198[37];
            v201 = v237;
            if (v200)
            {
LABEL_207:
              v202 = *(*v227 + v200);
              v203 = *v162;
              v204 = (*v162 - **v162);
              v205 = *v204;
              if (!*(v162 + 38))
              {
                goto LABEL_208;
              }

              goto LABEL_216;
            }

            goto LABEL_213;
          }

          v202 = -1;
          v201 = v237;
          v203 = *v162;
          v204 = (*v162 - **v162);
          v205 = *v204;
          if (!*(v162 + 38))
          {
LABEL_208:
            if (v205 < 0x49)
            {
              goto LABEL_219;
            }

            v206 = v204[36];
            if (!v206)
            {
              goto LABEL_219;
            }

            goto LABEL_218;
          }

LABEL_216:
          if (v205 < 0x4B || (v206 = v204[37]) == 0)
          {
LABEL_219:
            v207 = 0xFFFF;
            goto LABEL_220;
          }

LABEL_218:
          v207 = *&v203[v206];
LABEL_220:
          v208 = v202 + 18000;
          v209 = v202 - 18000;
          if ((v208 >> 5) < 0x465u)
          {
            v209 = v208;
          }

          v210 = v207 - v209;
          if (v210 > 18000)
          {
            v210 -= 36000;
          }

          if (v210 < -17999)
          {
            v210 += 36000;
          }

          v211 = 0x4059000000000000;
          v212 = fabs(v210 / 100.0);
          v211.i16[0] = *(a1 + 760);
          if (v212 >= vmovl_s16(v211).i32[0])
          {
            v213 = sub_4D23F8(a2, v155, v212);
            v201 = v237;
          }

          else
          {
            v213 = 0;
          }

          v234 += v213;
          v240 = v234;
          if ((v201 & 0xFFFFFFFFFFFFFFLL) == (v251 & 0xFFFFFFFFFFFFFFLL))
          {
            v160 = 0;
          }

          else
          {
            v160 = sub_4D23F8(a2, v155, v212);
          }

          v161 = v228;
          v157 = v232 + v160;
          v239 = v232 + v160;
          if (v230 == ++v155)
          {
            goto LABEL_232;
          }
        }
      }

      v158 = 0;
      v159 = 0.0;
      v161 = v228;
LABEL_232:
      if (!sub_6F2AF4(a1, v227, &v244, v161, &v240, v159))
      {
        if (!sub_394BD0())
        {
          sub_6D86EC(v228);
          return 0;
        }

        sub_6D6D8C(*a1, v243 & 0xFFFFFFFFFFFFFFLL, 1, 1, &v252);
        if (sub_7102E4(a1 + 1432, &v247, &v252))
        {
          *(v228 + 24) = 4;
        }

        else if (!v235 && !v158 && (v223 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32), v243 == v223) && WORD2(v243) == WORD2(v223) && BYTE6(v243) == BYTE6(v223))
        {
          sub_6EC71C(a1, a2, v226, a5, v228, 1);
          *(v228 + 232) = sub_6ED764(a1, v228);
        }

        else
        {
          v252 = v241;
          v253 = v242;
          v254 = v243;
          sub_6E38E4(__p, &v252, 1uLL);
          *(v228 + 24) = sub_6EC10C(a1, a2, &v247, __p, 0, 0xFFFFFFFFFFFFFFFFLL);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        *(a1 + 176) = 4;
        *(v228 + 224) = sub_394BD0();
        return 1;
      }

      *(v228 + 24) = 3;
      v214 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32);
      if (v243 == v214 && WORD2(v243) == WORD2(v214) && BYTE6(v243) == BYTE6(v214) && !v158)
      {
        sub_6EC71C(a1, a2, v226, a5, v228, 1);
        v215 = (v248 - *v248);
        v216 = 0.0;
        v217 = 0.0;
        if (*v215 >= 0x13u)
        {
          v218 = v215[9];
          if (v218)
          {
            LOWORD(v217) = *(v248 + v218);
            v217 = *&v217;
          }
        }

        v219 = (*(&v241 + 1) - **(&v241 + 1));
        if (*v219 >= 0x13u)
        {
          v220 = v219[9];
          if (v220)
          {
            LOWORD(v216) = *(*(&v241 + 1) + v220);
            v216 = *&v216;
          }
        }

        if (v217 >= v216)
        {
          v216 = v217;
        }

        LODWORD(v217) = *(a1 + 732);
        v221 = *(v228 + 24);
        if (v216 > *&v217)
        {
          v221 = 3;
        }

        *(v228 + 24) = v221;
        *(v228 + 232) = sub_6ED764(a1, v228);
      }

      v252 = v241;
      v253 = v242;
      v254 = v243;
      v9 = 1;
      sub_704450((a1 + 144), &v252, v255, 1uLL);
      *(a1 + 168) = 0;
      *(a1 + 176) = 4;
      *(v228 + 224) = 1;
    }
  }

  else
  {
LABEL_146:
    v9 = 0;
    if (v140 != v142)
    {
      goto LABEL_147;
    }
  }

  return v9;
}

void sub_6F24BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6F24E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 867) != 1)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_4D1F50(a2, a3);
  v9 = *v7;
  v10 = sub_31DDCC(*v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL);
  sub_40C59C(v9, v10, &v77);
  v11 = v79;
  if ((v79 & 0x80u) != 0)
  {
    v11 = v78;
  }

  if (!v11)
  {
    result = 0;
    if ((v79 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_93;
  }

  v12 = *(v8 + 32);
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  v72 = v8;
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

    v21 = v13 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (!(v22 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v19) = v12 & 0xFFFFFFFFFFFFFFLL;
    v15 = 8 * v19 + 8;
    memcpy(0, v17, v18);
    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v14 = v12 & 0xFFFFFFFFFFFFFFLL;
    v15 = (v14 + 1);
  }

  *(a4 + 8) = v15;
  v23 = sub_4D1DC0(v6);
  v73 = a3 + 1;
  if (a3 + 1 > v23)
  {
    v24 = a3 + 1;
  }

  else
  {
    v24 = v23;
  }

  if (a3 + 1 < v23)
  {
    v25 = 0;
    v26 = a3 + 1;
    v74 = v6;
    while (1)
    {
      v27 = sub_4D1F50(v6, v26);
      v28 = *(v27 + 32);
      v30 = *(a4 + 8);
      v29 = *(a4 + 16);
      if (v30 >= v29)
      {
        v32 = *a4;
        v33 = v30 - *a4;
        v34 = (v33 >> 3) + 1;
        if (v34 >> 61)
        {
          sub_1794();
        }

        v35 = v7;
        v36 = v24;
        v37 = v29 - v32;
        if (v37 >> 2 > v34)
        {
          v34 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v34;
        }

        if (v38)
        {
          if (!(v38 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v39 = (8 * (v33 >> 3));
        *v39 = v28 & 0xFFFFFFFFFFFFFFLL;
        v31 = v39 + 1;
        memcpy(0, v32, v33);
        *a4 = 0;
        *(a4 + 8) = v31;
        *(a4 + 16) = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v24 = v36;
        v7 = v35;
        v6 = v74;
      }

      else
      {
        *v30 = v28 & 0xFFFFFFFFFFFFFFLL;
        v31 = v30 + 1;
      }

      *(a4 + 8) = v31;
      v40 = *v7;
      v41 = *(v27 + 32);
      v42 = sub_2B51D8(*v7, v41 & 0xFFFFFFFFFFFFLL);
      if (*(v40 + 7772) == 1)
      {
        sub_30C50C(v40 + 3896, v41, 0);
      }

      sub_31D7E8(v40, v41 & 0xFFFFFFFFFFFFLL, 1);
      if (v25 > *(v7 + 752))
      {
        goto LABEL_92;
      }

      v44 = (v42 - *v42);
      if (*v44 < 0x2Fu)
      {
        break;
      }

      v45 = v44[23];
      if (!v45)
      {
        break;
      }

      v46 = *(v42 + v45);
      v47 = v46 > 0x2A;
      v48 = (1 << v46) & 0x50400004000;
      if (v47 || v48 == 0)
      {
        break;
      }

      v25 += sub_4D23F8(v6, v26++, v43);
      if (v24 == v26)
      {
        goto LABEL_92;
      }
    }

    v50 = *v7;
    v51 = sub_31DDCC(*v7, *(v27 + 32) & 0xFFFFFFFFFFFFFFLL);
    sub_40C59C(v50, v51, __p);
    v52 = v76;
    if ((v76 & 0x80u) == 0)
    {
      v53 = v76;
    }

    else
    {
      v53 = __p[1];
    }

    v54 = v79;
    if ((v79 & 0x80u) != 0)
    {
      v54 = v78;
    }

    if (v53 != v54 || ((v76 & 0x80u) == 0 ? (v55 = __p) : (v55 = __p[0]), (v79 & 0x80u) == 0 ? (v56 = &v77) : (v56 = v77), memcmp(v55, v56, v53)))
    {
      v26 = -1;
    }

    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 == -1 || v26 <= v73)
    {
      goto LABEL_92;
    }

    v57 = sub_4D1F50(v6, v26);
    v58 = (*v72 - **v72);
    v59 = *v58;
    if (*(v72 + 38))
    {
      if (v59 < 0x49 || (v60 = v58[36]) == 0)
      {
LABEL_76:
        v61 = -1;
LABEL_77:
        v62 = (*v57 - **v57);
        v63 = *v62;
        if (*(v57 + 38))
        {
          if (v63 < 0x4B || (v64 = v62[37]) == 0)
          {
LABEL_84:
            v65 = 0xFFFF;
            goto LABEL_85;
          }
        }

        else
        {
          if (v63 < 0x49)
          {
            goto LABEL_84;
          }

          v64 = v62[36];
          if (!v64)
          {
            goto LABEL_84;
          }
        }

        v65 = *(*v57 + v64);
LABEL_85:
        v66 = v61 + 18000;
        v67 = v61 - 18000;
        if ((v66 >> 5) < 0x465u)
        {
          v67 = v66;
        }

        v68 = v65 - v67;
        if (v68 > 18000)
        {
          v68 -= 36000;
        }

        if (v68 < -17999)
        {
          v68 += 36000;
        }

        v69 = 0x4059000000000000;
        v69.i16[0] = *(v7 + 760);
        if (fabs(v68 / 100.0) >= vmovl_s16(v69).i32[0])
        {
          goto LABEL_92;
        }

        result = 1;
        *(a4 + 24) = 0;
        if ((v79 & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_93;
      }
    }

    else
    {
      if (v59 < 0x4B)
      {
        goto LABEL_76;
      }

      v60 = v58[37];
      if (!v60)
      {
        goto LABEL_76;
      }
    }

    v61 = *(*v72 + v60);
    goto LABEL_77;
  }

LABEL_92:
  result = 0;
  *(a4 + 8) = *a4;
  *(a4 + 48) = *(a4 + 40);
  v70.f64[0] = NAN;
  v70.f64[1] = NAN;
  *(a4 + 72) = v70;
  *(a4 + 88) = v70;
  *(a4 + 104) = v70;
  *(a4 + 120) = -1;
  *(a4 + 136) = -1;
  *(a4 + 160) = vnegq_f64(v70);
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
  *(a4 + 224) = 0;
  if (v79 < 0)
  {
LABEL_93:
    v71 = result;
    operator delete(v77);
    return v71;
  }

  return result;
}

void sub_6F2AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6F2AF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, void *a5, double a6)
{
  v12 = *(a2 + 32);
  v13 = *a1;
  v14 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v13 + 7772) == 1)
  {
    v15 = sub_30C50C(v13 + 3896, v12, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = (v17 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v12 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v18 = 0;
  }

  v46[0] = v14;
  v46[1] = v18;
  v46[2] = sub_31D7E8(v13, v12 & 0xFFFFFFFFFFFFLL, 1);
  v46[3] = v19;
  v46[4] = (v12 & 0xFFFFFFFFFFFFFFLL);
  v20 = *(a3 + 32);
  v21 = *a1;
  v22 = sub_2B51D8(*a1, v20 & 0xFFFFFFFFFFFFLL);
  if (*(v21 + 7772) == 1)
  {
    v23 = sub_30C50C(v21 + 3896, v20, 0);
    v24 = &v23[-*v23];
    if (*v24 < 5u)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v24 + 2);
      if (v25)
      {
        v25 += &v23[*&v23[v25]];
      }
    }

    v26 = (v25 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v20 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v26 = 0;
  }

  v45[0] = v22;
  v45[1] = v26;
  v45[2] = sub_31D7E8(v21, v20 & 0xFFFFFFFFFFFFLL, 1);
  v45[3] = v27;
  v45[4] = (v20 & 0xFFFFFFFFFFFFFFLL);
  if (*(a1 + 1172) == 1 && sub_31B1CC(*a1, a4, *(a1 + 752), *(a1 + 216)))
  {
    v28 = 1;
    return v28 & 1;
  }

  v29 = sub_714F74(a1 + 1432, a4, 1);
  v30 = sub_31ACAC(*a1, v46, v45) * 100.0;
  if (v30 >= 0.0)
  {
    v31 = v30;
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_24;
    }

    v32 = (v30 + v30) + 1;
  }

  else
  {
    v31 = v30;
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_24;
    }

    v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v31 = (v32 >> 1);
LABEL_24:
  if (v31 < 9.22337204e18)
  {
    if (v30 >= 0.0)
    {
      if (v30 < 4.50359963e15)
      {
        v33 = (v30 + v30) + 1;
        goto LABEL_31;
      }
    }

    else if (v30 > -4.50359963e15)
    {
      v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
LABEL_31:
      v30 = (v33 >> 1);
    }

    v34 = v30;
    goto LABEL_33;
  }

  v34 = 0x7FFFFFFFFFFFFFFELL;
LABEL_33:
  v44 = v34;
  if (!sub_394BD0() || (*(a1 + 1024) & 1) != 0)
  {
    goto LABEL_35;
  }

  v36 = sub_70DE94(a1 + 1432, v46, v45);
  v37 = sub_70E2E0(a1 + 1432, v46, v45);
  v28 = 0;
  v38 = *(a1 + 200);
  if (v38 <= a6 && fabs(v37) < v38)
  {
    if (fabs(v36) < *(a1 + 992))
    {
LABEL_35:
      v28 = 0;
      return v28 & 1;
    }

    v39 = *a1;
    v40 = *(a2 + 32);
    sub_2B51D8(*a1, v40 & 0xFFFFFFFFFFFFLL);
    if (*(v39 + 7772) == 1)
    {
      sub_30C50C(v39 + 3896, v40, 0);
    }

    sub_31D7E8(v39, v40 & 0xFFFFFFFFFFFFLL, 1);
    v41 = *a1;
    v42 = *(a3 + 32);
    sub_2B51D8(*a1, v42 & 0xFFFFFFFFFFFFLL);
    if (*(v41 + 7772) == 1)
    {
      sub_30C50C(v41 + 3896, v42, 0);
    }

    v28 = 1;
    sub_31D7E8(v41, v42 & 0xFFFFFFFFFFFFLL, 1);
    v43 = sub_394BD0();
    if (*a5 < *(a1 + 1016))
    {
      v28 = (v44 > *(a1 + 1000)) | v43 | v29;
    }
  }

  return v28 & 1;
}

unint64_t sub_6F2FC8(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
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
  v13 = sub_2B51D8(*a1, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v14 = sub_30C50C(v11 + 3896, v12, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = v16 + ((v12 >> 30) & 0x3FFFC) + 4 + *(v16 + ((v12 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  *a5 = v13;
  *(a5 + 8) = v17;
  *(a5 + 16) = v18;
  *(a5 + 24) = v19;
  *(a5 + 32) = v12 & 0xFFFFFFFFFFFFFFLL;
  sub_741A8C(a1 + 935, a2, a3, a4, &v29);
  v20 = *(a5 + 80);
  if (v20)
  {
    *(a5 + 88) = v20;
    operator delete(v20);
  }

  v28 = *(&v29 + 1);
  *(a5 + 80) = v29;
  *(a5 + 96) = v30;
  v21 = a3 + 1;
  result = sub_4D1DC0(a2);
  if (a3 + 1 > result)
  {
    v23 = a3 + 1;
  }

  else
  {
    v23 = result;
  }

  if (v21 < result)
  {
    while (1)
    {
      result = sub_4D1F50(a2, v21);
      v25 = *(a5 + 80);
      v26 = *(a5 + 88);
      v24 = v25;
      if (v25 != v26)
      {
        v24 = *(a5 + 80);
        while (*(result + 32) != *(v24 + 32) || (HIDWORD(*(result + 32)) & 0xFFFFFF) != (*(v24 + 36) & 0xFFFFFF))
        {
          v24 += 40;
          if (v24 == v26)
          {
            goto LABEL_16;
          }
        }
      }

      if (v24 != v26)
      {
        break;
      }

LABEL_16:
      if (++v21 == v23)
      {
        v24 = *(a5 + 88);
        break;
      }
    }
  }

  else
  {
    v24 = v28;
    v25 = *(a5 + 80);
  }

  *(a5 + 104) = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v25) >> 3);
  return result;
}

uint64_t sub_6F31EC(uint64_t a1, uint64_t a2, int ***a3, uint64_t a4)
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
    v15 += sub_7052A4(v17, v14);
    v14 += 5;
  }

  while (v14 != v13);
  return v15;
}

uint64_t sub_6F3304(uint64_t *a1, unint64_t a2)
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

uint64_t sub_6F3464(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
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
  v77 = a6 + 72;
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
  v78 = (a6 + 192);
  *(a6 + 200) = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  v12 = sub_4D1F50(a2, a3);
  v13 = *a1;
  v14 = *(v12 + 32);
  v15 = sub_2B51D8(*a1, v14 & 0xFFFFFFFFFFFFLL);
  v16 = 0;
  if (*(v13 + 7772) == 1)
  {
    v17 = sub_30C50C(v13 + 3896, v14, 0);
    v18 = &v17[-*v17];
    if (*v18 < 5u)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v18 + 2);
      if (v19)
      {
        v19 += &v17[*&v17[v19]];
      }
    }

    v16 = (v19 + ((v14 >> 30) & 0x3FFFC) + 4 + *(v19 + ((v14 >> 30) & 0x3FFFC) + 4));
  }

  v81[0] = v15;
  v81[1] = v16;
  v81[2] = sub_31D7E8(v13, v14 & 0xFFFFFFFFFFFFLL, 1);
  v81[3] = v20;
  v82 = v14 & 0xFFFFFFFFFFFFFFLL;
  v21 = sub_605E3C(a4, a5);
  v22 = (v15 - *v15);
  v23 = *v22;
  if (v23 < 0x2F)
  {
    v28 = 0;
    goto LABEL_21;
  }

  if (!v22[23])
  {
    v28 = 0;
LABEL_21:
    v26 = a2;
    v29 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
      goto LABEL_70;
    }

    goto LABEL_22;
  }

  v24 = *(v15 + v22[23]);
  v25 = v24 > 0x2B || ((1 << v24) & 0x80000001040) == 0;
  v26 = a2;
  if (v25 || v23 >= 0x9B && (v27 = v22[77]) != 0 && (*(v15 + v27 + 2) & 0x20) != 0)
  {
    v28 = v24 == 44;
    v29 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
LABEL_70:
      if (!v28)
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v28 = 1;
    v29 = *v21;
    v30 = (*v21 - **v21);
    v31 = *v30;
    if (v31 < 0x2F)
    {
      goto LABEL_70;
    }
  }

LABEL_22:
  if (!v30[23])
  {
    goto LABEL_70;
  }

  v32 = *(v29 + v30[23]);
  if (v32 <= 0x2B && ((1 << v32) & 0x80000001040) != 0 && (v31 < 0x9B || (v34 = v30[77]) == 0 || (*(v29 + v34 + 2) & 0x20) == 0))
  {
    if (!v28)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v28 == (v32 == 44))
  {
    return 0;
  }

LABEL_31:
  v80 = v21[4];
  v76 = v21;
  v35 = sub_70E2E0(a1 + 1432, v81, v21);
  v36 = sub_4D1DC0(v26);
  if (v8 <= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v8;
  }

  if (v36 <= v8)
  {
LABEL_53:
    if (sub_714F74(a1 + 1432, a6, 1))
    {
      goto LABEL_102;
    }
  }

  else
  {
    while (1)
    {
      v38 = sub_4D1F50(v26, v8);
      v39 = *a1;
      v40 = *(v38 + 32);
      sub_2B51D8(*a1, v40 & 0xFFFFFFFFFFFFLL);
      if (*(v39 + 7772) == 1)
      {
        sub_30C50C(v39 + 3896, v40, 0);
      }

      sub_31D7E8(v39, v40 & 0xFFFFFFFFFFFFLL, 1);
      if ((v40 & 0xFFFFFFFFFFFFFFLL) == (v80 & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      v42 = *(a6 + 8);
      v41 = *(a6 + 16);
      if (v42 < v41)
      {
        *v42 = v40 & 0xFFFFFFFFFFFFFFLL;
        *(a6 + 8) = v42 + 1;
        if (v37 == ++v8)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v43 = *a6;
        v44 = v42 - *a6;
        v45 = (v44 >> 3) + 1;
        if (v45 >> 61)
        {
          goto LABEL_103;
        }

        v46 = v41 - v43;
        if (v46 >> 2 > v45)
        {
          v45 = v46 >> 2;
        }

        if (v46 >= 0x7FFFFFFFFFFFFFF8)
        {
          v47 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          if (!(v47 >> 61))
          {
            operator new();
          }

          goto LABEL_104;
        }

        v48 = (8 * (v44 >> 3));
        *v48 = v40 & 0xFFFFFFFFFFFFFFLL;
        v49 = v48 + 1;
        memcpy(0, v43, v44);
        *a6 = 0;
        *(a6 + 8) = v49;
        *(a6 + 16) = 0;
        if (v43)
        {
          operator delete(v43);
        }

        *(a6 + 8) = v49;
        if (v37 == ++v8)
        {
          goto LABEL_53;
        }
      }
    }

    v59 = v80 & 0xFFFFFFFFFFFFFFLL;
    v61 = *(a6 + 8);
    v60 = *(a6 + 16);
    if (v61 >= v60)
    {
      v63 = *a6;
      v64 = v61 - *a6;
      v65 = v64 >> 3;
      v66 = (v64 >> 3) + 1;
      if (v66 >> 61)
      {
LABEL_103:
        sub_1794();
      }

      v67 = v60 - v63;
      if (v67 >> 2 > v66)
      {
        v66 = v67 >> 2;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        if (!(v68 >> 61))
        {
          operator new();
        }

LABEL_104:
        sub_1808();
      }

      *(8 * v65) = v59;
      v74 = 8 * v65 + 8;
      memcpy(0, v63, v64);
      *a6 = 0;
      *(a6 + 8) = v74;
      *(a6 + 16) = 0;
      if (v63)
      {
        operator delete(v63);
      }

      *(a6 + 8) = v74;
      if (sub_714F74(a1 + 1432, a6, 1))
      {
        goto LABEL_102;
      }
    }

    else
    {
      *v61 = v59;
      *(a6 + 8) = v61 + 1;
      if (sub_714F74(a1 + 1432, a6, 1))
      {
        goto LABEL_102;
      }
    }
  }

  v50 = sub_31DDCC(*a1, v14 & 0xFFFFFFFFFFFFFFLL);
  v51 = 0;
  if (v50 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v52 = v76;
    v55 = v81[0];
    v56 = (v81[0] - *v81[0]);
    v57 = *v56;
    if (v57 < 0x2F)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v52 = v76;
    if (v50)
    {
      v53 = sub_31DDCC(*a1, v76[4] & 0xFFFFFFFFFFFFFFLL);
      v51 = v53 < 0xFFFFFFFF00000000 && v53 != 0;
    }

    v55 = v81[0];
    v56 = (v81[0] - *v81[0]);
    v57 = *v56;
    if (v57 < 0x2F)
    {
      goto LABEL_84;
    }
  }

  v58 = v56[23];
  if (v56[23] && *(v55 + v56[23]) != 32)
  {
    goto LABEL_89;
  }

LABEL_84:
  v69 = (*v52 - **v52);
  if (*v69 < 0x2Fu || (v70 = v69[23]) == 0 || *(*v52 + v70) != 44)
  {
    if (v57 < 0x2F)
    {
      goto LABEL_102;
    }

    v58 = v56[23];
    if (!v56[23])
    {
      goto LABEL_102;
    }

LABEL_89:
    if (*(v55 + v58) != 44)
    {
      goto LABEL_102;
    }

    v71 = (*v52 - **v52);
    if (*v71 >= 0x2Fu)
    {
      v72 = v71[23];
      if (v72)
      {
        if (*(*v52 + v72) != 32)
        {
          goto LABEL_102;
        }
      }
    }
  }

  v73 = fabs(v35);
  if (v51 && sub_31EE90(*a1, v82 & 0xFFFFFFFFFFFFFFLL, v52[4] & 0xFFFFFFFFFFFFFFLL) && v73 < *(a1 + 1080))
  {
    *(a6 + 24) = 3;
    *(a6 + 225) = 257;
    *(a1 + 176) = 5;
    return 1;
  }

  if (v73 < *(a1 + 184))
  {
    *(a6 + 24) = 3;
    result = 1;
    *(a6 + 226) = 1;
    *(a1 + 176) = 5;
    return result;
  }

LABEL_102:
  result = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  *v77 = v75;
  *(v77 + 16) = v75;
  *(v77 + 32) = v75;
  *(v77 + 48) = -1;
  *(a6 + 24) = 0;
  *(a6 + 64) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v75);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *v78 = 0;
  v78[1] = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  return result;
}

void sub_6F3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_605E3C((a3 + 80), *(a3 + 104));
  v4 = *(v3 + 16);
  v5 = *v3;
  v6 = v4;
  v7 = *(v3 + 32);
  operator new();
}

void sub_6F3CA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_6F3E6C(_Unwind_Exception *a1)
{
  sub_5135D0(v2 + 179);
  v6 = *v4;
  if (*v4)
  {
    v2[19] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_6D2C20(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[6] = v7;
  operator delete(v7);
  sub_6D2C20(v1);
  _Unwind_Resume(a1);
}

void sub_6F3F1C(uint64_t a1, void *a2, int a3)
{
  if (a2[1262] == a2[1263])
  {
    sub_718B5C((a1 + 1432), a2);
    sub_6F5F6C(a1);
    sub_6F4000(a1, a2, a3);
    if (*(a1 + 2376))
    {
      v6 = *(a1 + 2368);
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      *(a1 + 2368) = 0;
      v8 = *(a1 + 2360);
      if (v8)
      {
        bzero(*(a1 + 2352), 8 * v8);
      }

      *(a1 + 2376) = 0;
    }

    if (*(a1 + 2416))
    {
      v9 = *(a1 + 2408);
      if (v9)
      {
        do
        {
          v10 = *v9;
          operator delete(v9);
          v9 = v10;
        }

        while (v10);
      }

      *(a1 + 2408) = 0;
      v11 = *(a1 + 2400);
      if (v11)
      {
        bzero(*(a1 + 2392), 8 * v11);
      }

      *(a1 + 2416) = 0;
    }
  }
}

void sub_6F4000(uint64_t a1, void *a2, int a3)
{
  if (sub_4D1DC0(a2) != 1)
  {
    v5 = 0;
    v6 = (a1 + 7320);
    do
    {
      v7 = v6;
      sub_6F62BC(a1, a2, v5, &v81);
      v96[24] = sub_394BD0();
      sub_730280(a1 + 7208, a2, v5, &v81);
      sub_6F6780(a1, a2, a1 + 64, &v81);
      v8 = (*(&v81 + 1) - v81) >> 3;
      v9 = v8 - 1;
      if (v8 == 1)
      {
        sub_D7B0(&v68);
        v54 = sub_4A5C(&v69[1], "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/routing/src/guidance/ManeuverGenerator.cpp", 119);
        sub_4A5C(v54, ":", 1);
        v55 = std::ostream::operator<<();
        v56 = sub_4A5C(v55, ":", 1);
        sub_4A5C(v56, "Invalid maneuver with segment_delta of 0.", 41);
        exception = __cxa_allocate_exception(0x40uLL);
        sub_DAE4(&v68, &v63);
        if (SHIBYTE(v65) >= 0)
        {
          v58 = &v63;
        }

        else
        {
          v58 = v63;
        }

        if (SHIBYTE(v65) >= 0)
        {
          v59 = HIBYTE(v65);
        }

        else
        {
          v59 = v64;
        }

        v60 = sub_2D390(exception, v58, v59);
      }

      v10 = sub_4D1F50(a2, v5);
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
      v63 = v15;
      v64 = v19;
      v65 = v20;
      v66 = v21;
      v22 = v9 + v5;
      v67 = v14 ^ 0x1000000000000;
      v23 = sub_4D1F50(a2, v9 + v5);
      v24 = *a1;
      v25 = *(v23 + 32);
      v26 = *(v23 + 36);
      v27 = ((v26 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v26 << 32) | v25;
      v28 = sub_2B51D8(*a1, ((v26 & 0x20000000u) << 19) | (v26 << 32) & 0xFFFFFFFFFFFFLL | v25 & 0xFFFFFFFFFFFFLL);
      if (*(v24 + 7772) == 1)
      {
        v29 = sub_30C50C(v24 + 3896, v25, 0);
        v30 = &v29[-*v29];
        if (*v30 < 5u)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(v30 + 2);
          if (v31)
          {
            v31 += &v29[*&v29[v31]];
          }
        }

        v32 = (v31 + 4 * v26 + 4 + *(v31 + 4 * v26 + 4));
      }

      else
      {
        v32 = 0;
      }

      v33 = sub_31D7E8(v24, v27 & 0xFFFFFFFFFFFFLL, 1);
      v62[0] = v28;
      v62[1] = v32;
      v62[2] = v33;
      v62[3] = v34;
      v62[4] = (v27 ^ 0x1000000000000);
      *(&v83 + 1) = v5;
      v6 = v7;
      v36 = (a1 + 7384);
      v35 = (a1 + 7352);
      if (v83 || (v96[11] & 1) != 0 || (v96[28] & 1) != 0 || (v6 = v7, v36 = (a1 + 7384), v35 = (a1 + 7352), sub_6D5FB8(a1, &v63, v62, a3)))
      {
        v37 = a2[1263];
        if (v37 >= a2[1264])
        {
          v46 = sub_702C20(a2 + 1262, &v81);
          v6 = v7;
          v36 = (a1 + 7384);
          v35 = (a1 + 7352);
        }

        else
        {
          *(v37 + 8) = 0;
          *(v37 + 16) = 0;
          *v37 = 0;
          *v37 = v81;
          *(v37 + 16) = v82;
          v81 = 0uLL;
          v82 = 0;
          *(v37 + 24) = v83;
          *(v37 + 48) = 0;
          *(v37 + 56) = 0;
          *(v37 + 40) = 0;
          *(v37 + 40) = v84;
          *(v37 + 56) = v85;
          v84 = 0uLL;
          v85 = 0;
          *(v37 + 64) = v86;
          v38 = v87;
          v39 = v88;
          *(v37 + 104) = v89;
          *(v37 + 88) = v39;
          *(v37 + 72) = v38;
          v40 = v90;
          v41 = v91;
          v42 = v92;
          *(v37 + 168) = v93;
          *(v37 + 152) = v42;
          *(v37 + 136) = v41;
          *(v37 + 120) = v40;
          v43 = v94;
          v44 = v95;
          v45 = *v96;
          *(v37 + 230) = *&v96[14];
          *(v37 + 216) = v45;
          *(v37 + 200) = v44;
          *(v37 + 184) = v43;
          v46 = v37 + 248;
        }

        a2[1263] = v46;
      }

      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0x1000000000000;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0x1000000000000;
      *(a1 + 152) = *(a1 + 144);
      *(a1 + 168) = -1;
      *(a1 + 176) = 0;
      sub_765658(a1 + 1176, &v68);
      *(a1 + 7288) = v68;
      v47 = *(a1 + 7296);
      if (v47)
      {
        *(a1 + 7304) = v47;
        operator delete(v47);
        *(a1 + 7296) = 0;
        *(a1 + 7304) = 0;
        *(a1 + 7312) = 0;
      }

      *(a1 + 7296) = *v69;
      *(a1 + 7312) = v70;
      v69[1] = 0;
      v70 = 0;
      v69[0] = 0;
      v48 = *(a1 + 7320);
      if (v48)
      {
        *(a1 + 7328) = v48;
        operator delete(v48);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
      }

      *v6 = *v71;
      v49 = v73;
      *(a1 + 7336) = v72;
      v71[1] = 0;
      v72 = 0;
      v71[0] = 0;
      *(a1 + 7344) = v49;
      v50 = *(a1 + 7352);
      if (v50)
      {
        *(a1 + 7360) = v50;
        operator delete(v50);
        *v35 = 0;
        v35[1] = 0;
        v35[2] = 0;
      }

      *v35 = *__p;
      v51 = v76;
      *(a1 + 7368) = v75;
      __p[1] = 0;
      v75 = 0;
      __p[0] = 0;
      *(a1 + 7376) = v51;
      v52 = *(a1 + 7384);
      if (v52)
      {
        *(a1 + 7392) = v52;
        operator delete(v52);
        *v36 = 0;
        v36[1] = 0;
        v36[2] = 0;
      }

      *v36 = v77;
      v53 = v79;
      *(a1 + 7400) = v78;
      v78 = 0;
      v77 = 0uLL;
      *(a1 + 7408) = v53;
      *(a1 + 7416) = v80[0];
      *(a1 + 7426) = *(v80 + 10);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v71[0])
      {
        v71[1] = v71[0];
        operator delete(v71[0]);
      }

      if (v69[0])
      {
        v69[1] = v69[0];
        operator delete(v69[0]);
      }

      if (v84)
      {
        *(&v84 + 1) = v84;
        operator delete(v84);
      }

      if (v81)
      {
        *(&v81 + 1) = v81;
        operator delete(v81);
      }

      v5 = v22;
    }

    while (v22 < sub_4D1DC0(a2) - 1);
  }

  sub_6F6AA0(a1, a2);
}

void sub_6F45F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a27);
  sub_5ECFBC(&a62);
  _Unwind_Resume(a1);
}

void sub_6F46A0(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v4 = a3;
  v8 = *(a2 + 32);
  v9 = *(a2 + 36);
  v10 = *(a1 + 7280);
  v46 = (((*(a2 + 36) & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (*(a2 + 36) << 32) | v8) ^ 0x1000000000000;
  v47 = v10;
  v48 = a3;
  v49 = 2;
  v11 = ((v9 - 1640531527) + (v8 << 6) + (v8 >> 2)) ^ v8;
  v12 = ((v10 | (v11 << 6)) + (v11 >> 2) + 2654435769u) ^ v11;
  if (a3)
  {
    v13 = 2654435770;
  }

  else
  {
    v13 = 2654435769;
  }

  v14 = (v13 + (v12 << 6) + (v12 >> 2)) ^ v12;
  v15 = ((v14 << 6) + (v14 >> 2) + 2654435771u) ^ v14;
  v16 = (*(*(a1 + 32) + 16) + 272 * (bswap64(v15) % **(a1 + 32)));
  v38 = &v46;
  v39 = v15;
  sub_705EC8(v16, &v38, &v43);
  if (v45 != 1)
  {
    v18 = *a1;
    v19 = *(a2 + 32);
    v20 = *(a2 + 36);
    v21 = ((v20 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v20 << 32) | v19;
    v22 = sub_2B51D8(*a1, ((v20 & 0x20000000u) << 19) | (v20 << 32) & 0xFFFFFFFFFFFFLL | v19 & 0xFFFFFFFFFFFFLL);
    if (*(v18 + 7772) == 1)
    {
      v23 = sub_30C50C(v18 + 3896, v19, 0);
      v24 = &v23[-*v23];
      if (*v24 < 5u)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v24 + 2);
        if (v25)
        {
          v25 += &v23[*&v23[v25]];
        }
      }

      v26 = v25 + 4 * v20 + 4 + *(v25 + 4 * v20 + 4);
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_31D7E8(v18, v21 & 0xFFFFFFFFFFFFLL, 1);
    v38 = v22;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21 ^ 0x1000000000000;
    memset(v37, 0, sizeof(v37));
    if ((v4 & 1) != 0 || sub_6AD28C(a1 + 3680, a2))
    {
      sub_740664((a1 + 7480), &v38, v37);
      sub_6D3D8C(*a1, *(a2 + 32) | ((*(a2 + 36) & 0x1FFFFFFF) << 32), &__p);
      v29 = __p;
      v30 = v36;
      if (__p != v36)
      {
        do
        {
          v31 = *v29;
          v32 = sub_30CC30(*a1, *v29);
          v33 = (v32 - *v32);
          if (*v33 >= 0xFu && v33[7] && (*(v32 + v33[7]) & 2) != 0 && (!v33[2] || !*(v32 + v33[2])) && !v33[4])
          {
            sub_320200(*a1, v31, &__src);
            operator new();
          }

          ++v29;
        }

        while (v29 != v30);
      }

      operator new();
    }

    sub_7444BC(a1 + 7480, &v38, v37);
  }

  v17 = v44;
  *a4 = v43;
  a4[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }
}

void sub_6F4E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v26 = *(v24 - 120);
  if (v26)
  {
    *(v24 - 112) = v26;
    operator delete(v26);
    v27 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v23)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  if (!v23)
  {
LABEL_4:
    v28 = exception_object;
    if (!exception_object)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v23);
  v28 = exception_object;
  if (!exception_object)
  {
LABEL_5:
    sub_1F1A8(&a23);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v28);
  sub_1F1A8(&a23);
  _Unwind_Resume(a1);
}

char *sub_6F4F88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  v6 = *(a2 + 36);
  v7 = ((v6 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v6 << 32) | v5;
  v8 = sub_2B51D8(*a1, ((v6 & 0x20000000u) << 19) | (v6 << 32) & 0xFFFFFFFFFFFFLL | v5 & 0xFFFFFFFFFFFFLL);
  if (*(v4 + 7772) == 1)
  {
    v9 = sub_30C50C(v4 + 3896, v5, 0);
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

    v12 = v11 + 4 * v6 + 4 + *(v11 + 4 * v6 + 4);
  }

  else
  {
    v12 = 0;
  }

  result = sub_31D7E8(v4, v7 & 0xFFFFFFFFFFFFLL, 1);
  *a3 = v8;
  a3[1] = v12;
  a3[2] = result;
  a3[3] = v14;
  a3[4] = v7 ^ 0x1000000000000;
  return result;
}

uint64_t sub_6F5068(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v8 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v9 = (v8 - *v8);
  if (*v9 < 0x9Bu)
  {
    return 0;
  }

  v10 = v9[77];
  if (!v10)
  {
    return 0;
  }

  if ((*(v8 + v10 + 3) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 681) != 1)
  {
    return 0;
  }

  v11 = sub_2B51D8(*a1, *a2 | (*(a2 + 2) << 32));
  v12 = (v11 - *v11);
  if (*v12 < 0x21u || !v12[16])
  {
    return 0;
  }

  sub_6D3D8C(*a1, *a2 | (*(a2 + 2) << 32), &v30);
  v13 = v30;
  v14 = v31;
  if (v30 == v31)
  {
    result = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_30CC30(*a1, *v13);
    v17 = (v16 - *v16);
    if (*v17 < 0xDu)
    {
      goto LABEL_12;
    }

    v18 = v17[6];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = (v16 + v18 + *(v16 + v18));
    v20 = (v19 - *v19);
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = *(v19 + v21);
      if (v22 >= 0xF || ((0x7EFFu >> v22) & 1) == 0)
      {
        goto LABEL_12;
      }

      v23 = dword_229EB2C[v22];
    }

    else
    {
      v23 = 0;
    }

    sub_320200(*a1, *v13, &__p);
    v24 = __p;
    if (__PAIR64__(*(__p + 2), *__p) == __PAIR64__(WORD2(*a2), *a2) && *(__p + 6) == BYTE6(*a2))
    {
      v25 = v29;
      if (__PAIR64__(*(v29 - 2), *(v29 - 2)) == __PAIR64__(WORD2(*a3), *a3) && *(v29 - 2) == BYTE6(*a3))
      {
        break;
      }
    }

    v29 = __p;
    operator delete(__p);
LABEL_12:
    if (++v13 == v14)
    {
      result = 0;
      goto LABEL_29;
    }
  }

  *(a4 + 24) = v23;
  if (&__p == a4)
  {
    v29 = v24;
    v26 = v24;
LABEL_34:
    operator delete(v26);
  }

  else
  {
    sub_30945C(a4, v24, v25, (v25 - v24) >> 3);
    v26 = __p;
    if (__p)
    {
      v29 = __p;
      goto LABEL_34;
    }
  }

  result = 1;
LABEL_29:
  v13 = v30;
LABEL_31:
  if (v13)
  {
    v31 = v13;
    v27 = result;
    operator delete(v13);
    return v27;
  }

  return result;
}

void sub_6F52DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6F532C(uint64_t a1, uint64_t a2, char **a3, int ***a4, unint64_t a5, int a6, int a7, char a8)
{
  result = sub_6F9538(a1, a3, a4, a5);
  if (a7 && (result & 0x100000000) != 0)
  {
    return result;
  }

  if (sub_6F9804(a1, a3, a4))
  {
    return 0;
  }

  result = sub_6DA060(a1, a3, a4, a5);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  v18 = sub_716AD8(a1 + 1432, a3, a4, a5, v17);
  if (!sub_6F99A0(a1, a2, a3, a4, v18, a5, a8))
  {
    v27 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v19 = sub_605E3C(a4, 0);
  v20 = 1;
  v21 = sub_605E3C(a4, 1uLL);
  v22 = sub_6DAFB0(a1, a3, v19, v21);
  if (a5 == 1)
  {
    v20 = 0;
    v24 = v22 < v23;
    v25 = 20;
    v26 = 21;
  }

  else
  {
    if (a5)
    {
      v27 = 0;
      goto LABEL_17;
    }

    v20 = 0;
    v24 = v22 < v23;
    v25 = 21;
    v26 = 20;
  }

  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

LABEL_17:
  v28 = sub_605E3C(a4, a5);
  v29 = *(v28 + 32);
  v30 = *(v28 + 16);
  v58[0] = *v28;
  v58[1] = v30;
  v59 = v29;
  v57 = sub_3116D0(a3);
  v31 = sub_420B0C((a1 + 8), &v57);
  if (v18 == -1)
  {
    v33 = v27;
    if (!v31)
    {
      goto LABEL_42;
    }

LABEL_22:
    v34 = *a3;
    v35 = &(*a3)[-**a3];
    v36 = *v35;
    if (v36 >= 0x2F && (*(v35 + 23) && v34[*(v35 + 23)] == 23 || v36 >= 0x9B && (v37 = *(v35 + 77)) != 0 && (v34[v37] & 4) != 0) || (v38 = (*&v58[0] - **&v58[0]), v39 = *v38, v39 < 0x2F) || (!v38[23] || *(*&v58[0] + v38[23]) != 23) && (v39 < 0x9B || (v40 = v38[77]) == 0 || (*(*&v58[0] + v40) & 4) == 0))
    {
LABEL_42:
      if (!v20)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v56 = v31;
    v32 = (sub_31EE90(*a1, a3[4] & 0xFFFFFFFFFFFFFFLL, v59 & 0xFFFFFFFFFFFFFFLL) & 1) != 0 || fabs(sub_710C1C(a1 + 1432, a2, a3, v58)) < *(a1 + 200);
    v33 = v27;
    LOBYTE(v31) = v56;
    goto LABEL_39;
  }

  v32 = v18 == a5;
  if (v18 == a5)
  {
    v33 = v27;
    goto LABEL_39;
  }

  v33 = v27;
  if (((v31 ^ 1) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_39:
  if ((v20 & v32) != 1)
  {
    goto LABEL_42;
  }

  v41 = v31;
  if (sub_6FA720(a1, a3, a4, a5))
  {
    v33 = 3;
    goto LABEL_44;
  }

  if (sub_6FACB0(a1, a3, v58, a4, v41, v42))
  {
LABEL_43:
    v33 = sub_6DB978(a1, a2, a3, a4, a5, v18);
    goto LABEL_44;
  }

  v33 = 0;
LABEL_44:
  v43 = v33;
  v44 = sub_6FAE84(a1, a3, a4, a5, v18);
  result = v43;
  if (v44)
  {
    if (v43 > 61)
    {
      if (v43 != 62)
      {
        if (v43 != 63)
        {
          goto LABEL_48;
        }

        goto LABEL_55;
      }
    }

    else if (v43 != 20)
    {
      if (v43 != 21)
      {
        goto LABEL_48;
      }

LABEL_55:
      v52 = &(*a3)[-**a3];
      if (*v52 < 0x9Bu)
      {
        return 11;
      }

      v53 = *(v52 + 77);
      result = 11;
      if (v53)
      {
        if ((*&(*a3)[v53] & 0x8000) != 0)
        {
          return 30;
        }

        else
        {
          return 11;
        }
      }

      return result;
    }

    v54 = &(*a3)[-**a3];
    if (*v54 < 0x9Bu)
    {
      return 29;
    }

    v55 = *(v54 + 77);
    result = 29;
    if (v55)
    {
      if ((*&(*a3)[v55] & 0x8000) != 0)
      {
        return 11;
      }

      else
      {
        return 29;
      }
    }

    return result;
  }

LABEL_48:
  if (!a6)
  {
    return result;
  }

  if ((sub_6FB130(a1, a2, a3, v43) & 1) == 0)
  {
    return v43;
  }

  v46 = v45;
  v47 = sub_710C1C(a1 + 1432, a2, a3, v58);
  v48 = fabs(v47);
  if (v48 > *(a1 + 280) || v48 >= v46)
  {
    result = v43;
    if (v48 < *(a1 + 296))
    {
      return result;
    }

    v49 = v47 < 0.0;
    v50 = 61;
    v51 = 60;
  }

  else
  {
    v49 = v47 < 0.0;
    v50 = 63;
    v51 = 62;
  }

  if (v49)
  {
    return v51;
  }

  else
  {
    return v50;
  }
}

uint64_t sub_6F57B8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  sub_69E8D4(v9);
  sub_6F46A0(v5, v4, v2, v7);
  return sub_694110(v9);
}

uint64_t sub_6F5854(uint64_t *a1, void *a2)
{
  v4 = sub_4D1DC0(a2) - 1;
  v5 = sub_69AE3C(a2);
  v6 = *(v5 + 8);
  v32 = *v5;
  v33 = v6;
  v7 = sub_69B010(a2);
  v8 = sub_69B0E0(a2);
  v9 = *a1;
  v10 = sub_4D1F50(a2, v4);
  sub_2B7A20(v9, (((*(v10 + 36) & 0x20000000) << 19) | (*(v10 + 36) << 32) | *(v10 + 32)) ^ 0x1000000000000, &v26);
  sub_31BF20(&v26, v30);
  v11 = a1[5];
  if (v11)
  {
    a1[6] = v11;
    operator delete(v11);
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
  }

  v12 = v30[0];
  *(a1 + 5) = *v30;
  a1[7] = v31;
  v30[1] = 0;
  v31 = 0;
  v30[0] = 0;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    result = 82;
  }

  else
  {
    result = 18;
  }

  if (v32 != -1 && a1[5] != a1[6])
  {
    v25 = result;
    sub_6D5084((a1 + 5), &v32, 0, 0, &v26, v12);
    v14 = v26;
    v15 = a1[112];
    v16 = v15 / 100;
    v17 = v15 % 100;
    if (v15 < 0)
    {
      v18 = -50;
    }

    else
    {
      v18 = 50;
    }

    if (*&v26 >= (v16 + (((5243 * (v18 + v17)) >> 19) + ((5243 * (v18 + v17)) >> 31))))
    {
      v24 = v29;
      if (sub_69AE54(a2) || ((v19 = a1[113], v20 = v19 / 100, v21 = v19 % 100, v19 < 0) ? (v22 = -50) : (v22 = 50), *&v14 <= (v20 + (((5243 * (v22 + v21)) >> 19) + ((5243 * (v22 + v21)) >> 31)))))
      {
        v23 = sub_37268(a1 + 5, v24);
        v26 = *v23;
        LODWORD(__p) = *(v23 + 8);
        operator new();
      }

      result = v25;
      if ((v7 & 1) == 0)
      {
        if (sub_69AFD4(a2))
        {
          return 16;
        }

        else
        {
          return 39;
        }
      }
    }

    else
    {
      return v25;
    }
  }

  return result;
}

void sub_6F5F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_6F5F6C(uint64_t a1)
{
  if (*(a1 + 1173) != 1)
  {
    return;
  }

  if (*(a1 + 7544))
  {
    v2 = *(a1 + 7536);
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

    *(a1 + 7536) = 0;
    v4 = *(a1 + 7528);
    if (v4)
    {
      bzero(*(a1 + 7520), 8 * v4);
    }

    *(a1 + 7544) = 0;
  }

  *__p = 0u;
  *v33 = 0u;
  v34 = 1065353216;
  sub_4D0560();
  v6 = v5;
  for (i = v7; ; ++i)
  {
    sub_4D0568();
    v10 = v9;
    v12 = v11;
    if (v6)
    {
      v13 = sub_4D1DC0(v6);
      v14 = i < v13;
      if (!v10)
      {
        if (i >= v13)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_27;
      }

      v14 = 0;
    }

    v15 = sub_4D1DC0(v10);
    if (v12 >= v15 || !v14)
    {
      break;
    }

    v17 = sub_4D1F50(v6, i);
    if (v17 == sub_4D1F50(v10, v12))
    {
      goto LABEL_27;
    }

LABEL_23:
    v18 = sub_4D1F50(v6, i);
    v31 = *(v18 + 32) | ((*(v18 + 36) & 0x1FFFFFFF) << 32);
    if (!sub_4D2148(v6, i))
    {
      v19 = sub_4D1F50(v6, i);
      v30 = sub_314A00(v19);
      v35 = &v30;
      v20 = sub_70B418(__p, &v30);
      sub_2BB8F4(v20 + 3, &v31);
    }

    if (sub_4D21C8(v6, i) == 1000000000)
    {
      v21 = sub_4D1F50(v6, i);
      v30 = sub_314B90(v21);
      v35 = &v30;
      v22 = sub_70B418(__p, &v30);
      sub_2BB8F4(v22 + 3, &v31);
    }
  }

  if ((v14 ^ (v12 < v15)))
  {
    goto LABEL_23;
  }

LABEL_27:
  v23 = v33[0];
  if (v33[0])
  {
    do
    {
      if (v23[6] >= 3uLL)
      {
        sub_70B7A8((a1 + 7520), v23 + 2);
      }

      v23 = *v23;
    }

    while (v23);
    v24 = v33[0];
    if (v33[0])
    {
      do
      {
        v26 = *v24;
        v27 = v24[5];
        if (v27)
        {
          do
          {
            v28 = *v27;
            operator delete(v27);
            v27 = v28;
          }

          while (v28);
        }

        v29 = v24[3];
        v24[3] = 0;
        if (v29)
        {
          operator delete(v29);
        }

        operator delete(v24);
        v24 = v26;
      }

      while (v26);
    }
  }

  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }
}

void sub_6F621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F6230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F6244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F6258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F6280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F6294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F62A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_303818(va);
  _Unwind_Resume(a1);
}

void sub_6F62BC(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  LODWORD(v40) = 0;
  v39 = 0;
  *(&v40 + 1) = -1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  v43 = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v44 = v8;
  v45 = v8;
  v46 = v8;
  *&v47 = -1;
  DWORD2(v47) = 0;
  *&v48 = -1;
  DWORD2(v48) = 0;
  *v49 = 0;
  *&v49[8] = vnegq_f64(v8);
  *&v49[24] = 0;
  LODWORD(v50) = 98;
  *(&v50 + 1) = 0;
  *v51 = 0;
  *&v51[8] = xmmword_229B660;
  *&v51[24] = 0;
  *&v51[32] = 0;
  *&v51[38] = 0;
  if (!a3 && !sub_4D2138(a2) || sub_4D1DC0(a2) - 2 == a3 && !sub_4D2140(a2))
  {
    v9 = sub_4D1F50(a2, a3);
    v10 = *(v9 + 36);
    LODWORD(__src) = *(v9 + 32);
    WORD2(__src) = v10;
    BYTE6(__src) = (v10 & 0x20000000) == 0;
    v11 = sub_4D1F50(a2, a3 + 1);
    v12 = *(v11 + 36);
    v53 = *(v11 + 32);
    v54 = v12;
    v55 = (v12 & 0x20000000) == 0;
    v13 = __p[0];
    if (v39 - __p[0] < 9)
    {
      v14 = v39 >> 2;
      if ((v39 >> 2) <= 2)
      {
        v14 = 2;
      }

      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    if ((__p[1] - __p[0]) > dword_8)
    {
      v17 = __src;
      v18 = v53;
      v19 = v54;
      *(__p[0] + 14) = v55;
      v13[6] = v19;
      *(v13 + 2) = v18;
      *v13 = v17;
      v20 = (v13 + 8);
LABEL_27:
      LODWORD(v40) = 0;
      v29 = v39;
      *a4 = __p[0];
      *(a4 + 8) = v20;
      *(a4 + 16) = v29;
      v39 = 0;
      __p[0] = 0;
      __p[1] = 0;
      goto LABEL_28;
    }

    v15 = (&__src + __p[1] - __p[0]);
    v21 = __p[0] - __p[1] + 8;
    if (v21 < 0x38)
    {
      v16 = __p[1];
    }

    else
    {
      v16 = __p[1];
      if ((__p[0] - &__src) >= &stru_20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v15 = (v15 + v23);
        v16 = __p[1] + v23;
        v24 = __p[1] + 16;
        v25 = (&__src + __p[1] - __p[0] + 16);
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    do
    {
      v28 = *v15++;
      *v16 = v28;
      v16 += 8;
    }

    while (v15 != &v56);
LABEL_26:
    v20 = v16;
    goto LABEL_27;
  }

  if (sub_6F88C0(a1, a2, a3, __p) || sub_394BD0() || sub_6F8AC4(a1, a2, a3, __p) || sub_6F8DCC(a1, a2, a3, __p) || sub_92B9E0(a1, a2, a3, __p))
  {
    *a4 = *__p;
    *(a4 + 16) = v39;
    __p[1] = 0;
    v39 = 0;
    __p[0] = 0;
LABEL_28:
    *(a4 + 24) = v40;
    *(a4 + 40) = *v41;
    *(a4 + 56) = v42;
    v41[1] = 0;
    v42 = 0;
    v41[0] = 0;
    *(a4 + 64) = v43;
    v30 = v44;
    v31 = v45;
    *(a4 + 104) = v46;
    *(a4 + 88) = v31;
    *(a4 + 72) = v30;
    v32 = v47;
    v33 = v48;
    v34 = *v49;
    *(a4 + 168) = *&v49[16];
    *(a4 + 152) = v34;
    *(a4 + 136) = v33;
    *(a4 + 120) = v32;
    v35 = v50;
    v36 = *v51;
    v37 = *&v51[16];
    *(a4 + 230) = *&v51[30];
    *(a4 + 216) = v37;
    *(a4 + 200) = v36;
    *(a4 + 184) = v35;
    goto LABEL_29;
  }

  sub_6F9048(a1, a2, a3, 1, a4);
  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

LABEL_29:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_6F6780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = **a4;
  v10 = sub_2B51D8(*a1, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    v11 = sub_30C50C(v8 + 3896, v9, 0);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v14 = 0;
  }

  v25[0] = v10;
  v25[1] = v14;
  v25[2] = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v25[3] = v15;
  v25[4] = v9;
  v16 = *a1;
  v17 = *(*(a4 + 8) - 8);
  sub_2B51D8(*a1, v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    sub_30C50C(v16 + 3896, v17, 0);
  }

  sub_31D7E8(v16, v17 & 0xFFFFFFFFFFFFLL, 1);
  v18 = *(a4 + 24);
  result = sub_394BD0();
  if ((result & 1) == 0 && ((v18 - 4) > 0x3E || ((1 << (v18 - 4)) & 0x600000008003008DLL) == 0) && v18)
  {
    v20 = *(a3 + 112);
    if (v20 > 3)
    {
      switch(v20)
      {
        case 4:
          v23 = *(a3 + 104);
          v26 = 0u;
          v27 = 0u;
          v28 = 0x1000000000000;
          return sub_6FBEA4(a1, a2, a3, (a3 + 80), v23, &v26, a4 + 40);
        case 5:
          sub_70253C(a1, a2, a3);
        case 6:
          return sub_766CE0(a1 + 7288, a4 + 40);
      }
    }

    else if ((v20 - 1) < 2)
    {
      *(a4 + 64) = 0;
      LOBYTE(v26) = 0;
      if (v20 == 1)
      {
        v22 = (a1 + 816);
      }

      else
      {
        v22 = (a1 + 792);
      }

      sub_6E4B34(a4 + 40, v22, &v26);
      LOBYTE(v26) = 1;
      return sub_6E4B34(a4 + 40, (a1 + 848), &v26);
    }

    else if (v20)
    {
      if (v20 == 3)
      {
        v21 = *(a3 + 104);
        if (v21 != -1)
        {
          return sub_6FBEA4(a1, a2, (a3 + 40), (a3 + 80), v21, a3, a4 + 40);
        }
      }
    }

    else
    {
      v24 = *(a3 + 104);
      v26 = 0u;
      v27 = 0u;
      v28 = 0x1000000000000;
      return sub_6FBEA4(a1, a2, v25, (a3 + 80), v24, &v26, a4 + 40);
    }
  }

  return result;
}

void sub_6F6AA0(uint64_t a1, void *a2)
{
  v2 = a2[1263] - a2[1262];
  if (v2)
  {
    v4 = 0;
    v5 = 0xEF7BDEF7BDEF7BDFLL * (v2 >> 3);
    v6 = 2;
    v7 = 1;
    v114 = v5;
    do
    {
      v8 = sub_6D3F8C(a2 + 1262, v4);
      if (*v8 != *(v8 + 8))
      {
        v9 = v8;
        if ((*(v8 + 240) & 1) == 0)
        {
          v10 = *(a1 + 712);
          v11 = sub_6D3F8C(a2 + 1262, v4);
          v12 = v4 + 1;
          v13 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
          v115 = v4 + 1;
          if (v4 + 1 >= v13)
          {
            v19 = -1;
          }

          else
          {
            v14 = v11[4] + ((v11[1] - *v11) >> 3) - 1;
            if (v13 <= v7)
            {
              v15 = v7;
            }

            else
            {
              v15 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
            }

            while (1)
            {
              v16 = sub_6D3F8C(a2 + 1262, v12);
              if (*v16 != *(v16 + 8) && *(v16 + 24) != 0)
              {
                break;
              }

              if (v15 == ++v12)
              {
                v19 = -1;
                goto LABEL_22;
              }
            }

            if (sub_4D2544(a2, v14, 1, *(v16 + 32), 1u, v17) > v10)
            {
              v19 = -1;
            }

            else
            {
              v19 = v12;
            }

LABEL_22:
            v5 = v114;
          }

          v20.i64[0] = -1;
          v20.i64[1] = -1;
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v9 + 72), v20), vceqq_s64(*(v9 + 88), v20))))) & 1) == 0 && (*(v9 + 104) & *(v9 + 112)) == -1 && *(v9 + 120) == -1)
          {
            if (v19 == -1 || (v22 = sub_6D3F8C(a2 + 1262, v19), v23.i64[0] = -1, v23.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v22 + 72), v23), vceqq_s64(*(v22 + 88), v23))))) & 1) == 0) && ((*(v22 + 104) & *(v22 + 112)) == -1 ? (v24 = *(v22 + 120) == -1) : (v24 = 0), v24))
            {
              v25 = *(v9 + 24);
              if (v25 <= 11)
              {
                if (v25 != 3)
                {
                  if (v25 == 5)
                  {
                    v34 = sub_4D1DB8(a2);
                    v35 = *(a1 + 656);
                    v36 = sub_6D3F8C(a2 + 1262, v4);
                    v37 = v4;
                    while (v37)
                    {
                      v38 = sub_6D3F8C(a2 + 1262, --v37);
                      v40 = *(v38 + 8);
                      if (*v38 != v40 && *(v38 + 24) != 0)
                      {
                        v42 = *(v38 + 32);
                        if (v35)
                        {
                          v43 = v42 + 1;
                        }

                        else
                        {
                          v43 = v42 + ((v40 - *v38) >> 3) - 1;
                        }

                        if (sub_4D2544(a2, v43, 1, *(v36 + 32), 1u, v39) <= v34 && *(sub_6D3F8C(a2 + 1262, v37) + 24) == 5)
                        {
                          goto LABEL_121;
                        }

                        goto LABEL_122;
                      }
                    }
                  }

                  goto LABEL_122;
                }

                if (*(v9 + 224) & 1) != 0 || (*(v9 + 225) & 1) != 0 || (*(v9 + 226))
                {
LABEL_122:
                  v80 = *(a1 + 640);
                  v81 = sub_6D3F8C(a2 + 1262, v4);
                  v82 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                  if (v115 < v82)
                  {
                    v116 = v81[4] + ((v81[1] - *v81) >> 3) - 1;
                    if (v82 <= v7)
                    {
                      v82 = v7;
                    }

                    v83 = 1 - v82;
                    v84 = v6;
                    while (1)
                    {
                      v85 = sub_6D3F8C(a2 + 1262, v84 - 1);
                      if (*v85 != *(v85 + 8) && *(v85 + 24) != 0)
                      {
                        break;
                      }

                      ++v84;
                      if (v83 + v84 == 2)
                      {
                        goto LABEL_137;
                      }
                    }

                    v88 = sub_4D2544(a2, v116, 1, *(v85 + 32), 1u, v86);
                    if (v84)
                    {
                      if (v88 <= v80)
                      {
                        v89 = sub_6D3F8C(a2 + 1262, v84 - 1);
                        if (sub_6F7974(a1, v9, v89))
                        {
                          *(v9 + 24) = 0;
                          *(sub_6D3F8C(a2 + 1262, v84 - 1) + 24) = 0;
                        }
                      }
                    }
                  }

LABEL_137:
                  v90 = *(v9 + 24);
                  v5 = v114;
                  if (((v90 - 20) <= 0x2E && ((1 << (v90 - 20)) & 0x6F0000006783) != 0 || (v90 - 1) < 3) && (*(v9 + 224) & 1) == 0)
                  {
                    v91 = *(a1 + 648);
                    v92 = sub_6D3F8C(a2 + 1262, v4);
                    v93 = v4;
                    while (v93)
                    {
                      v94 = sub_6D3F8C(a2 + 1262, --v93);
                      v96 = *(v94 + 8);
                      if (*v94 != v96 && *(v94 + 24) != 0)
                      {
                        if (sub_4D2544(a2, *(v94 + 32) + ((v96 - *v94) >> 3) - 1, 1, *(v92 + 32), 1u, v95) <= v91)
                        {
                          v98 = sub_6D3F8C(a2 + 1262, v93);
                          v99.i64[0] = *(v98 + 120);
                          v99.i64[1] = *(v9 + 72);
                          v100.i64[0] = -1;
                          v100.i64[1] = -1;
                          if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*(v98 + 72), v100), vceqq_s64(*(v98 + 88), v100)), vuzp1q_s32(vceqq_s64(*(v98 + 104), v100), vceqq_s64(v99, v100)))))) & 1) == 0)
                          {
                            v101.i64[0] = -1;
                            v101.i64[1] = -1;
                            v102 = (vaddvq_s32(vbicq_s8(xmmword_22671F0, vuzp1q_s32(vceqq_s64(*(v9 + 80), v101), vceqq_s64(*(v9 + 96), v101)))) & 0xF) == 0 && *(v9 + 112) == -1;
                            if (v102 && *(v9 + 120) == -1)
                            {
                              v104 = *(v98 + 24);
                              switch(v104)
                              {
                                case 1:
                                case 20:
                                case 27:
                                case 29:
                                case 33:
                                case 60:
                                case 62:
                                case 65:
                                  v105 = *(v9 + 24);
                                  if ((v105 - 20) <= 0x2D && ((1 << (v105 - 20)) & 0x250000002281) != 0 || v105 == 1)
                                  {
                                    goto LABEL_165;
                                  }

                                  goto LABEL_174;
                                case 2:
                                case 21:
                                case 28:
                                case 30:
                                case 34:
                                case 61:
                                case 63:
                                case 66:
                                  v105 = *(v9 + 24);
                                  if (((v105 - 21) > 0x2D || ((1 << (v105 - 21)) & 0x250000002281) == 0) && v105 != 2)
                                  {
                                    goto LABEL_174;
                                  }

                                  goto LABEL_165;
                                default:
                                  v105 = *(v9 + 24);
LABEL_174:
                                  if ((v104 - 41) < 0x13 || v105 == 3)
                                  {
LABEL_165:
                                    v106 = *(*(v9 + 8) - 8);
                                    v121 = v106;
                                    v107 = *(*(v98 + 8) - 8);
                                    v120 = v107;
                                    if (v106)
                                    {
                                      if (v107)
                                      {
                                        v108 = sub_31DDCC(*a1, v106);
                                        if (v108 <= 0xFFFFFFFEFFFFFFFFLL)
                                        {
                                          if (v108)
                                          {
                                            v109 = *a1;
                                            sub_6D6CBC(a1, &v121, v119);
                                            sub_6D6CBC(a1, &v120, v118);
                                            if (sub_31EE90(v109, v119[4] & 0xFFFFFFFFFFFFFFLL, v118[4] & 0xFFFFFFFFFFFFFFLL))
                                            {
                                              sub_6F7EFC(a1, a2, v93, v4);
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  break;
                              }
                            }
                          }
                        }

                        goto LABEL_4;
                      }
                    }
                  }

                  goto LABEL_4;
                }
              }

              else if (v25 != 12)
              {
                if (v25 != 21)
                {
                  if (v25 == 20)
                  {
                    v26 = *(a1 + 592);
                    v27 = sub_6D3F8C(a2 + 1262, v4);
                    v28 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                    if (v115 < v28)
                    {
                      v111 = v27[4] + ((v27[1] - *v27) >> 3) - 1;
                      if (v28 <= v7)
                      {
                        v28 = v7;
                      }

                      v29 = 1 - v28;
                      v30 = v6;
                      while (1)
                      {
                        v31 = sub_6D3F8C(a2 + 1262, v30 - 1);
                        if (*v31 != *(v31 + 8) && *(v31 + 24) != 0)
                        {
                          break;
                        }

                        ++v30;
                        if (v29 + v30 == 2)
                        {
                          goto LABEL_122;
                        }
                      }

                      v79 = sub_4D2544(a2, v111, 1, *(v31 + 32), 1u, v32);
                      if (v30 && v79 <= v26 && *(sub_6D3F8C(a2 + 1262, v30 - 1) + 24) == 1)
                      {
                        goto LABEL_121;
                      }
                    }
                  }

                  goto LABEL_122;
                }

                v44 = *(a1 + 592);
                v45 = sub_6D3F8C(a2 + 1262, v4);
                v46 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
                if (v115 >= v46)
                {
                  goto LABEL_122;
                }

                v112 = v45[4] + ((v45[1] - *v45) >> 3) - 1;
                if (v46 <= v7)
                {
                  v46 = v7;
                }

                v47 = 1 - v46;
                v48 = v6;
                while (1)
                {
                  v49 = sub_6D3F8C(a2 + 1262, v48 - 1);
                  if (*v49 != *(v49 + 8) && *(v49 + 24) != 0)
                  {
                    break;
                  }

                  ++v48;
                  if (v47 + v48 == 2)
                  {
                    goto LABEL_122;
                  }
                }

                v78 = sub_4D2544(a2, v112, 1, *(v49 + 32), 1u, v50);
                if (!v48 || v78 > v44 || *(sub_6D3F8C(a2 + 1262, v48 - 1) + 24) != 2)
                {
                  goto LABEL_122;
                }

LABEL_121:
                *(v9 + 24) = 0;
                goto LABEL_122;
              }

              v52 = *(a1 + 632);
              v53 = *(a1 + 656);
              v54 = sub_6D3F8C(a2 + 1262, v4);
              v55 = v4;
              do
              {
                if (!v55)
                {
                  v62 = -1;
                  goto LABEL_92;
                }

                v56 = sub_6D3F8C(a2 + 1262, --v55);
                v58 = *(v56 + 8);
              }

              while (*v56 == v58 || *(v56 + 24) == 0);
              v60 = *(v56 + 32);
              if (v53)
              {
                v61 = v60 + 1;
              }

              else
              {
                v61 = v60 + ((v58 - *v56) >> 3) - 1;
              }

              if (sub_4D2544(a2, v61, 1, *(v54 + 32), 1u, v57) > v52)
              {
                v62 = -1;
              }

              else
              {
                v62 = v55;
              }

LABEL_92:
              v63 = *(a1 + 624);
              v64 = sub_6D3F8C(a2 + 1262, v4);
              v65 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3);
              if (v115 < v65)
              {
                v110 = v63;
                v113 = v62;
                v66 = v64[4] + ((v64[1] - *v64) >> 3) - 1;
                if (v65 <= v7)
                {
                  v65 = v7;
                }

                v67 = 1 - v65;
                v68 = v6;
                while (1)
                {
                  v69 = v68 - 1;
                  v70 = sub_6D3F8C(a2 + 1262, v68 - 1);
                  if (*v70 != *(v70 + 8) && *(v70 + 24) != 0)
                  {
                    break;
                  }

                  ++v68;
                  if (v67 + v68 == 2)
                  {
                    v73 = 0;
                    v74 = -1;
LABEL_108:
                    v62 = v113;
                    goto LABEL_109;
                  }
                }

                v75 = sub_4D2544(a2, v66, 1, *(v70 + 32), 1u, v71);
                v73 = 0;
                v74 = -1;
                if (!v68)
                {
                  goto LABEL_108;
                }

                v62 = v113;
                if (v75 > v110)
                {
                  goto LABEL_109;
                }

                v5 = v114;
                if ((*(sub_6D3F8C(a2 + 1262, v69) + 245) & 1) == 0)
                {
                  v73 = 1;
                  v74 = v69;
                  goto LABEL_108;
                }

                goto LABEL_4;
              }

              v73 = 0;
              v74 = -1;
LABEL_109:
              if (v62 == -1 || (v76 = sub_6D3F8C(a2 + 1262, v62), *v76 == v76[1]))
              {
                if (!v73)
                {
                  goto LABEL_122;
                }

                v77 = sub_6D3F8C(a2 + 1262, v74);
                if (*v77 == v77[1])
                {
                  goto LABEL_122;
                }
              }

              goto LABEL_121;
            }
          }

          sub_6F7618(a1, a2, v4);
        }
      }

LABEL_4:
      ++v4;
      ++v7;
      ++v6;
    }

    while (v4 != v5);
  }
}