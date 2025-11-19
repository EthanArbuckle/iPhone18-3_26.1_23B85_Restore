void sub_4C488C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C48DC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C49A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4C49E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    result = sub_4D389C(v1);
    if (!result)
    {
      break;
    }

    v1 += 137;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_4C4A30(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_4D375C(v1);
    if (!result)
    {
      break;
    }

    v1 += 137;
  }

  while (v1 != v2);
  return result;
}

BOOL sub_4C4A80(uint64_t a1)
{
  v1 = sub_4D39C4(*(a1 + 24));

  return sub_4DADD8(v1);
}

unint64_t sub_4C4AF8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  else
  {
    return 0xE21A291C077975B9 * ((v2 - v1) >> 3) - 1;
  }
}

uint64_t sub_4C4B5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_4D1DC0(v1);
    v1 += 137;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_4C4BD8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_4D1DB8(v1);
    v1 += 1096;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_4C4C60(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 |= sub_4D20D0(v1);
    v1 += 1096;
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_4C4CC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 |= sub_4D20D8(v1);
    v1 += 1096;
  }

  while (v1 != v2);
  return v3;
}

__n128 sub_4C4D30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 76) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = 0xE21A291C077975B9 * ((v4 - v3) >> 3);
  if (v4 != v3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (v5)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  for (; v3 != v4; v3 += 1096)
  {
    v7 = sub_4D20D0(v3);
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 >= v8)
    {
      v11 = *a2;
      v12 = v9 - *a2;
      v13 = (v12 >> 3) + 1;
      if (v13 >> 61)
      {
        sub_1794();
      }

      v14 = v8 - v11;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v16 = (8 * (v12 >> 3));
      *v16 = v7;
      v10 = v16 + 1;
      memcpy(0, v11, v12);
      *a2 = 0;
      *(a2 + 16) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v9 = v7;
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    v17 = sub_4D20D8(v3);
    v19 = *(a2 + 32);
    v18 = *(a2 + 40);
    if (v19 < v18)
    {
      *v19 = v17;
      v6 = v19 + 1;
    }

    else
    {
      v20 = *(a2 + 24);
      v21 = v19 - v20;
      v22 = (v19 - v20) >> 3;
      v23 = v22 + 1;
      if ((v22 + 1) >> 61)
      {
        sub_1794();
      }

      v24 = v18 - v20;
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

      v26 = (8 * v22);
      *v26 = v17;
      v6 = v26 + 1;
      memcpy(0, v20, v21);
      *(a2 + 24) = 0;
      *(a2 + 40) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    *(a2 + 32) = v6;
  }

  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(a1 + 88);
  return result;
}

uint64_t sub_4C5074(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    result = sub_4D20B0(v2, a2);
    if (result)
    {
      break;
    }

    v2 += 1096;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_4C50D8(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    result = sub_4D20C0(v2, a2);
    if (result)
    {
      break;
    }

    v2 += 1096;
  }

  while (v2 != v3);
  return result;
}

std::string *sub_4C5174(uint64_t a1, const std::string::value_type *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::string::append((a1 + 104), a2, v3);
}

uint64_t sub_4C5194(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v8 = a2;
  v9 = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4[6];
  v10 = *(a4 + 7);
  v11 = *(a4 + 9);
  *(a1 + 88) = a4[11];
  *(a1 + 72) = v11;
  *(a1 + 56) = v10;
  *(a1 + 96) = -1;
  *(a1 + 100) = 0;
  v12 = sub_58BBC(a2);
  if (*(v12 + 23) < 0)
  {
    sub_325C((v9 + 104), *v12, *(v12 + 8));
  }

  else
  {
    v13 = *v12;
    *(v9 + 120) = *(v12 + 16);
    *(v9 + 104) = v13;
  }

  v14 = sub_F63FF4(v8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = sub_F63CBC(v8, i);
      if (*a3 == a3[1])
      {
        v67 = -1;
        v68 = -1;
        v19 = *a4;
        if (*a4 != a4[1])
        {
LABEL_9:
          v20 = *(v19 + 8 * i);
          v66 = v20;
          v21 = a4[3];
          if (v21 == a4[4])
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v17 = sub_4C339C(a3, i);
        v18 = sub_4C339C(a3, i + 1);
        v67 = *v17;
        v68 = *v18;
        v19 = *a4;
        if (*a4 != a4[1])
        {
          goto LABEL_9;
        }
      }

      v23 = sub_F63CBC(v8, i);
      v20 = sub_F68F18(v23);
      v66 = v20;
      v21 = a4[3];
      if (v21 == a4[4])
      {
LABEL_13:
        v22 = 0;
        goto LABEL_14;
      }

LABEL_10:
      v22 = *(v21 + 8 * i);
LABEL_14:
      v65 = v22;
      v24 = *a5;
      v64 = 0u;
      v60 = 0;
      v58 = 0x7FFFFFFF;
      v59 = 0x7FFFFFFF7FFFFFFFLL;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      *&v64 = 0x8000000080000000;
      DWORD2(v64) = 0x7FFFFFFF;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v25 = (v24 + 288 * i);
      *__p = 0u;
      v51 = 0u;
      v48 = 0u;
      *v49 = 0u;
      *v46 = 0u;
      *v47 = 0u;
      *v44 = 0u;
      v45 = 0u;
      *v43 = 0u;
      v26 = *(v9 + 32);
      if (v26 >= *(v9 + 40))
      {
        v27 = sub_4C7470((v9 + 24), v16, &v67, &v66, &v65, v25, &v58, &v55, &v52, v43);
      }

      else
      {
        sub_4D0554(v26, v16, &v67, v20, v22, v25, &v58, &v55, &v52, v43);
        v27 = v26 + 1096;
        *(v9 + 32) = v26 + 1096;
      }

      *(v9 + 32) = v27;
      if (__p[1])
      {
        *&v51 = __p[1];
        operator delete(__p[1]);
      }

      if (v49[0])
      {
        v49[1] = v49[0];
        operator delete(v49[0]);
      }

      if (v47[1])
      {
        *&v48 = v47[1];
        operator delete(v47[1]);
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }

      if (v44[1])
      {
        *&v45 = v44[1];
        operator delete(v44[1]);
      }

      if (v43[0])
      {
        v43[1] = v43[0];
        operator delete(v43[0]);
      }

      v28 = v52;
      if (v52)
      {
        v29 = v53;
        v30 = v52;
        if (v53 != v52)
        {
          v31 = v14;
          v32 = a3;
          v33 = v8;
          v34 = a5;
          do
          {
            v36 = *(v29 - 4);
            if (v36)
            {
              v37 = *(v29 - 3);
              v35 = *(v29 - 4);
              if (v37 != v36)
              {
                v38 = *(v29 - 3);
                do
                {
                  v40 = *(v38 - 24);
                  v38 -= 24;
                  v39 = v40;
                  if (v40)
                  {
                    *(v37 - 16) = v39;
                    operator delete(v39);
                  }

                  v37 = v38;
                }

                while (v38 != v36);
                v35 = *(v29 - 4);
              }

              *(v29 - 3) = v36;
              operator delete(v35);
            }

            v29 -= 64;
          }

          while (v29 != v28);
          v30 = v52;
          a5 = v34;
          v8 = v33;
          a3 = v32;
          v14 = v31;
          v9 = a1;
        }

        v53 = v28;
        operator delete(v30);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }
    }
  }

  return v9;
}

void sub_4C5540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (*(a12 + 127) < 0)
  {
    operator delete(*(a12 + 104));
  }

  sub_3EECC8((a12 + 24));
  sub_3ECF74(a12);
  _Unwind_Resume(a1);
}

void sub_4C55E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((*(a12 + 127) & 0x80000000) == 0)
  {
    JUMPOUT(0x4C55A4);
  }

  JUMPOUT(0x4C5598);
}

void sub_4C55FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((*(a12 + 127) & 0x80000000) == 0)
  {
    JUMPOUT(0x4C55A4);
  }

  JUMPOUT(0x4C5598);
}

void sub_4C5610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((*(a12 + 127) & 0x80000000) == 0)
  {
    JUMPOUT(0x4C55A4);
  }

  JUMPOUT(0x4C5598);
}

uint64_t sub_4C5628(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a3;
  v7 = *a4;
  v8 = a4[1];
  *(a1 + 88) = *(a4 + 4);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 96) = -1;
  *(a1 + 100) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_325C((a1 + 104), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 120) = *(a5 + 2);
    *(a1 + 104) = v9;
  }

  *(a1 + 96) = sub_4D27AC(a2);
  v10 = *(a1 + 32);
  if (v10 >= *(a1 + 40))
  {
    *(a1 + 32) = sub_4C7644((a1 + 24), a2);
  }

  else
  {
    sub_4C6AE8(v10, a2);
    *(a1 + 32) = v11 + 1096;
  }

  return a1;
}

void sub_4C56F0(_Unwind_Exception *a1)
{
  sub_3EECC8(v1 + 3);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_4C570C(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  sub_3EECC8((v1 + 24));
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_4C5770(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C8FC0(a1, v5);
  sub_4C90A4(a1, __p);
  sub_4C9188(a2, v5, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void sub_4C57F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

__n128 sub_4C5840@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C9358((a1 + 24), &v11);
  sub_4C943C((a1 + 24), &v9);
  *a2 = 0;
  *(a2 + 8) = xmmword_2291230;
  v4 = v11;
  *(a2 + 24) = v11;
  v5 = v12;
  *(a2 + 32) = v12;
  v11 = 0;
  v12 = 0uLL;
  v6 = v9;
  *(a2 + 48) = v9;
  result.n128_u64[0] = v10;
  *(a2 + 56) = v10;
  v9 = 0;
  v10 = 0uLL;
  if (v4 != v5)
  {
    v8 = ((result.n128_u64[0] - v6) >> 4) - 1;
    *(a2 + 16) = v8;
    result = *(v6 + 16 * v8);
    *a2 = result;
  }

  return result;
}

void sub_4C58F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C5914(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v21) = 0;
  sub_4C5770((a1 + 24), &v13);
  v18 = 0;
  sub_4C9358((a1 + 24), &v21);
  sub_4C943C((a1 + 24), &v19);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = v6[*&v8[16]];
  }

  sub_43F0D4(a2, &v13);
  sub_43F0D4(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_4C5A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 - 40);
  if (v13)
  {
    *(v11 - 32) = v13;
    operator delete(v13);
    sub_3DB674(va);
    _Unwind_Resume(a1);
  }

  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4C5A80(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_4D1F7C(v1);
    if (!result)
    {
      break;
    }

    v1 += 137;
  }

  while (v1 != v2);
  return result;
}

__n128 sub_4C5AD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 76) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = 0xE21A291C077975B9 * ((v4 - v3) >> 3);
  if (v4 != v3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (v5)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  for (; v3 != v4; v3 += 1096)
  {
    v7 = sub_4D20D0(v3);
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 >= v8)
    {
      v11 = *a2;
      v12 = v9 - *a2;
      v13 = (v12 >> 3) + 1;
      if (v13 >> 61)
      {
        sub_1794();
      }

      v14 = v8 - v11;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v16 = (8 * (v12 >> 3));
      *v16 = v7;
      v10 = v16 + 1;
      memcpy(0, v11, v12);
      *a2 = 0;
      *(a2 + 16) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v9 = v7;
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    v17 = sub_4D20D8(v3);
    v19 = *(a2 + 32);
    v18 = *(a2 + 40);
    if (v19 < v18)
    {
      *v19 = v17;
      v6 = v19 + 1;
    }

    else
    {
      v20 = *(a2 + 24);
      v21 = v19 - v20;
      v22 = (v19 - v20) >> 3;
      v23 = v22 + 1;
      if ((v22 + 1) >> 61)
      {
        sub_1794();
      }

      v24 = v18 - v20;
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

      v26 = (8 * v22);
      *v26 = v17;
      v6 = v26 + 1;
      memcpy(0, v20, v21);
      *(a2 + 24) = 0;
      *(a2 + 40) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    *(a2 + 32) = v6;
  }

  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(a1 + 88);
  return result;
}

uint64_t sub_4C5E14(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v8 = a2;
  v9 = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a4[6];
  v10 = *(a4 + 7);
  v11 = *(a4 + 9);
  *(a1 + 88) = a4[11];
  *(a1 + 72) = v11;
  *(a1 + 56) = v10;
  *(a1 + 96) = -1;
  *(a1 + 100) = 0;
  v12 = sub_58BBC(a2);
  if (*(v12 + 23) < 0)
  {
    sub_325C((v9 + 104), *v12, *(v12 + 8));
  }

  else
  {
    v13 = *v12;
    *(v9 + 120) = *(v12 + 16);
    *(v9 + 104) = v13;
  }

  v14 = sub_F63FF4(v8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = sub_F63CBC(v8, i);
      if (*a3 == a3[1])
      {
        v67 = -1;
        v68 = -1;
        v19 = *a4;
        if (*a4 != a4[1])
        {
LABEL_9:
          v20 = *(v19 + 8 * i);
          v66 = v20;
          v21 = a4[3];
          if (v21 == a4[4])
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v17 = sub_4C339C(a3, i);
        v18 = sub_4C339C(a3, i + 1);
        v67 = *v17;
        v68 = *v18;
        v19 = *a4;
        if (*a4 != a4[1])
        {
          goto LABEL_9;
        }
      }

      v23 = sub_F63CBC(v8, i);
      v20 = sub_F68F18(v23);
      v66 = v20;
      v21 = a4[3];
      if (v21 == a4[4])
      {
LABEL_13:
        v22 = 0;
        goto LABEL_14;
      }

LABEL_10:
      v22 = *(v21 + 8 * i);
LABEL_14:
      v65 = v22;
      v24 = *a5;
      v64 = 0u;
      v60 = 0;
      v58 = 0x7FFFFFFF;
      v59 = 0x7FFFFFFF7FFFFFFFLL;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      *&v64 = 0x8000000080000000;
      DWORD2(v64) = 0x7FFFFFFF;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v25 = (v24 + 288 * i);
      *__p = 0u;
      v51 = 0u;
      v48 = 0u;
      *v49 = 0u;
      *v46 = 0u;
      *v47 = 0u;
      *v44 = 0u;
      v45 = 0u;
      *v43 = 0u;
      v26 = *(v9 + 32);
      if (v26 >= *(v9 + 40))
      {
        v27 = sub_4C77A8((v9 + 24), v16, &v67, &v66, &v65, v25, &v58, &v55, &v52, v43);
      }

      else
      {
        sub_4D538C(v26, v16, &v67, v20, v22, v25, &v58, &v55, &v52, v43);
        v27 = v26 + 1096;
        *(v9 + 32) = v26 + 1096;
      }

      *(v9 + 32) = v27;
      if (__p[1])
      {
        *&v51 = __p[1];
        operator delete(__p[1]);
      }

      if (v49[0])
      {
        v49[1] = v49[0];
        operator delete(v49[0]);
      }

      if (v47[1])
      {
        *&v48 = v47[1];
        operator delete(v47[1]);
      }

      if (v46[0])
      {
        v46[1] = v46[0];
        operator delete(v46[0]);
      }

      if (v44[1])
      {
        *&v45 = v44[1];
        operator delete(v44[1]);
      }

      if (v43[0])
      {
        v43[1] = v43[0];
        operator delete(v43[0]);
      }

      v28 = v52;
      if (v52)
      {
        v29 = v53;
        v30 = v52;
        if (v53 != v52)
        {
          v31 = v14;
          v32 = a3;
          v33 = v8;
          v34 = a5;
          do
          {
            v36 = *(v29 - 4);
            if (v36)
            {
              v37 = *(v29 - 3);
              v35 = *(v29 - 4);
              if (v37 != v36)
              {
                v38 = *(v29 - 3);
                do
                {
                  v40 = *(v38 - 24);
                  v38 -= 24;
                  v39 = v40;
                  if (v40)
                  {
                    *(v37 - 16) = v39;
                    operator delete(v39);
                  }

                  v37 = v38;
                }

                while (v38 != v36);
                v35 = *(v29 - 4);
              }

              *(v29 - 3) = v36;
              operator delete(v35);
            }

            v29 -= 64;
          }

          while (v29 != v28);
          v30 = v52;
          a5 = v34;
          v8 = v33;
          a3 = v32;
          v14 = v31;
          v9 = a1;
        }

        v53 = v28;
        operator delete(v30);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }
    }
  }

  return v9;
}

void sub_4C61C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (*(a12 + 127) < 0)
  {
    operator delete(*(a12 + 104));
  }

  sub_3EECC8((a12 + 24));
  sub_3ECF74(a12);
  _Unwind_Resume(a1);
}

void sub_4C6268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((*(a12 + 127) & 0x80000000) == 0)
  {
    JUMPOUT(0x4C6224);
  }

  JUMPOUT(0x4C6218);
}

void sub_4C627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((*(a12 + 127) & 0x80000000) == 0)
  {
    JUMPOUT(0x4C6224);
  }

  JUMPOUT(0x4C6218);
}

void sub_4C6290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((*(a12 + 127) & 0x80000000) == 0)
  {
    JUMPOUT(0x4C6224);
  }

  JUMPOUT(0x4C6218);
}

uint64_t sub_4C62A8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a3;
  v7 = *a4;
  v8 = a4[1];
  *(a1 + 88) = *(a4 + 4);
  *(a1 + 72) = v8;
  *(a1 + 56) = v7;
  *(a1 + 96) = -1;
  *(a1 + 100) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_325C((a1 + 104), *a5, *(a5 + 1));
  }

  else
  {
    v9 = *a5;
    *(a1 + 120) = *(a5 + 2);
    *(a1 + 104) = v9;
  }

  *(a1 + 96) = sub_4D27AC(a2);
  v10 = *(a1 + 32);
  if (v10 >= *(a1 + 40))
  {
    *(a1 + 32) = sub_4C7644((a1 + 24), a2);
  }

  else
  {
    sub_4C6AE8(v10, a2);
    *(a1 + 32) = v11 + 1096;
  }

  return a1;
}

void sub_4C6370(_Unwind_Exception *a1)
{
  sub_3EECC8(v1 + 3);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_4C638C(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  sub_3EECC8((v1 + 24));
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_4C63F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C9520(a1, v5);
  sub_4C9604(a1, __p);
  sub_4C96E8(a2, v5, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void sub_4C6474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

__n128 sub_4C64C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C98B8((a1 + 24), &v11);
  sub_4C999C((a1 + 24), &v9);
  *a2 = 0;
  *(a2 + 8) = xmmword_2291230;
  v4 = v11;
  *(a2 + 24) = v11;
  v5 = v12;
  *(a2 + 32) = v12;
  v11 = 0;
  v12 = 0uLL;
  v6 = v9;
  *(a2 + 48) = v9;
  result.n128_u64[0] = v10;
  *(a2 + 56) = v10;
  v9 = 0;
  v10 = 0uLL;
  if (v4 != v5)
  {
    v8 = ((result.n128_u64[0] - v6) >> 4) - 1;
    *(a2 + 16) = v8;
    result = *(v6 + 16 * v8);
    *a2 = result;
  }

  return result;
}

void sub_4C6578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C6594(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v21) = 0;
  sub_4C63F0((a1 + 24), &v13);
  v18 = 0;
  sub_4C98B8((a1 + 24), &v21);
  sub_4C999C((a1 + 24), &v19);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = v6[*&v8[16]];
  }

  sub_4408CC(a2, &v13);
  sub_4408CC(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_4C66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 - 40);
  if (v13)
  {
    *(v11 - 32) = v13;
    operator delete(v13);
    sub_3DB674(va);
    _Unwind_Resume(a1);
  }

  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4C6700(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_4D6530(v1);
    if (!result)
    {
      break;
    }

    v1 += 137;
  }

  while (v1 != v2);
  return result;
}

__n128 sub_4C6750@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 76) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = 0xE21A291C077975B9 * ((v4 - v3) >> 3);
  if (v4 != v3)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (v5)
  {
    if (!(v5 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  for (; v3 != v4; v3 += 1096)
  {
    v7 = sub_4D20D0(v3);
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (v9 >= v8)
    {
      v11 = *a2;
      v12 = v9 - *a2;
      v13 = (v12 >> 3) + 1;
      if (v13 >> 61)
      {
        sub_1794();
      }

      v14 = v8 - v11;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v16 = (8 * (v12 >> 3));
      *v16 = v7;
      v10 = v16 + 1;
      memcpy(0, v11, v12);
      *a2 = 0;
      *(a2 + 16) = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v9 = v7;
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    v17 = sub_4D20D8(v3);
    v19 = *(a2 + 32);
    v18 = *(a2 + 40);
    if (v19 < v18)
    {
      *v19 = v17;
      v6 = v19 + 1;
    }

    else
    {
      v20 = *(a2 + 24);
      v21 = v19 - v20;
      v22 = (v19 - v20) >> 3;
      v23 = v22 + 1;
      if ((v22 + 1) >> 61)
      {
        sub_1794();
      }

      v24 = v18 - v20;
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

      v26 = (8 * v22);
      *v26 = v17;
      v6 = v26 + 1;
      memcpy(0, v20, v21);
      *(a2 + 24) = 0;
      *(a2 + 40) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    *(a2 + 32) = v6;
  }

  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 88) = *(a1 + 88);
  return result;
}

uint64_t sub_4C6A94(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1096;
    sub_3EEA68(i - 1096);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_4C6AE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  result = 0.0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 48) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a2 + 96) = 0u;
  v3 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v3;
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v4;
  v5 = *(a2 + 168);
  v6 = *(a2 + 200);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v5;
  *(a1 + 200) = v6;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a2 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a2 + 232) = 0u;
  v7 = *(a2 + 256);
  v8 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v8;
  *(a1 + 256) = v7;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v9 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v9;
  v10 = *(a2 + 360);
  v11 = *(a2 + 376);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v10;
  *(a1 + 376) = v11;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 424) = 0;
  *(a2 + 408) = 0u;
  v12 = *(a2 + 432);
  v13 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v13;
  *(a1 + 432) = v12;
  *(a1 + 480) = *(a2 + 480);
  v14 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v14;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 520) = 0;
  *(a2 + 504) = 0u;
  v15 = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 528) = v15;
  *(a1 + 544) = *(a2 + 544);
  v16 = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 552) = v16;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = 0;
  *(a2 + 592) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = 0;
  *(a2 + 640) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 680) = 0;
  *(a2 + 664) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a2 + 688) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = *(a2 + 800);
  *(a2 + 800) = 0;
  *(a2 + 784) = 0u;
  v17 = *(a2 + 824);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 824) = v17;
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 864) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 872) = 0;
  *(a2 + 856) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 896) = 0;
  *(a2 + 880) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a2 + 920) = 0;
  *(a2 + 904) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a2 + 944) = 0;
  *(a2 + 928) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 968) = 0;
  *(a2 + 952) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1016) = 0;
  *(a2 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = 0;
  *(a2 + 1024) = 0u;
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  return result;
}

uint64_t sub_4C6FEC(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4C70DC(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4C7110(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4C7200(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4C7234(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4C7324(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C7358(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

uint64_t sub_4C7470(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = 0xE21A291C077975B9 * ((a1[1] - *a1) >> 3);
  v11 = v10 + 1;
  if (v10 + 1 > 0x3BCBADC7F10D14)
  {
    sub_1794();
  }

  if (0xC43452380EF2EB72 * ((a1[2] - *a1) >> 3) > v11)
  {
    v11 = 0xC43452380EF2EB72 * ((a1[2] - *a1) >> 3);
  }

  if (0xE21A291C077975B9 * ((a1[2] - *a1) >> 3) >= 0x1DE5D6E3F8868ALL)
  {
    v13 = 0x3BCBADC7F10D14;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x3BCBADC7F10D14)
    {
      operator new();
    }

    sub_1808();
  }

  v23 = 8 * ((a1[1] - *a1) >> 3);
  sub_4D0554(v23, a2, a3, *a4, *a5, a6, a7, a8, a9, a10);
  v14 = 1096 * v10 + 1096;
  v15 = *a1;
  v16 = a1[1];
  v17 = *a1 - v16;
  v18 = 1096 * v10 + v17;
  if (v16 != *a1)
  {
    v19 = *a1;
    v20 = v23 + v17;
    do
    {
      sub_4C6AE8(v20, v19);
      v19 += 1096;
      v20 = v21 + 1096;
    }

    while (v19 != v16);
    do
    {
      sub_3EEA68(v15);
      v15 += 1096;
    }

    while (v15 != v16);
    v15 = *a1;
  }

  *a1 = v18;
  a1[1] = v14;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v14;
}

void sub_4C7630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4C6A94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4C7644(uint64_t *a1, uint64_t a2)
{
  v2 = 0xE21A291C077975B9 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3BCBADC7F10D14)
  {
    sub_1794();
  }

  if (0xC43452380EF2EB72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xC43452380EF2EB72 * ((a1[2] - *a1) >> 3);
  }

  if (0xE21A291C077975B9 * ((a1[2] - *a1) >> 3) >= 0x1DE5D6E3F8868ALL)
  {
    v5 = 0x3BCBADC7F10D14;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x3BCBADC7F10D14)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_4C6AE8(v6, a2);
  v7 = 1096 * v2 + 1096;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_4C6AE8(v12, v11);
      v11 += 1096;
      v12 = v13 + 1096;
    }

    while (v11 != v9);
    do
    {
      sub_3EEA68(v8);
      v8 += 1096;
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

uint64_t sub_4C77A8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = 0xE21A291C077975B9 * ((a1[1] - *a1) >> 3);
  v11 = v10 + 1;
  if (v10 + 1 > 0x3BCBADC7F10D14)
  {
    sub_1794();
  }

  if (0xC43452380EF2EB72 * ((a1[2] - *a1) >> 3) > v11)
  {
    v11 = 0xC43452380EF2EB72 * ((a1[2] - *a1) >> 3);
  }

  if (0xE21A291C077975B9 * ((a1[2] - *a1) >> 3) >= 0x1DE5D6E3F8868ALL)
  {
    v13 = 0x3BCBADC7F10D14;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x3BCBADC7F10D14)
    {
      operator new();
    }

    sub_1808();
  }

  v23 = 8 * ((a1[1] - *a1) >> 3);
  sub_4D538C(v23, a2, a3, *a4, *a5, a6, a7, a8, a9, a10);
  v14 = 1096 * v10 + 1096;
  v15 = *a1;
  v16 = a1[1];
  v17 = *a1 - v16;
  v18 = 1096 * v10 + v17;
  if (v16 != *a1)
  {
    v19 = *a1;
    v20 = v23 + v17;
    do
    {
      sub_4C6AE8(v20, v19);
      v19 += 1096;
      v20 = v21 + 1096;
    }

    while (v19 != v16);
    do
    {
      sub_3EEA68(v15);
      v15 += 1096;
    }

    while (v15 != v16);
    v15 = *a1;
  }

  *a1 = v18;
  a1[1] = v14;
  a1[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v14;
}

void sub_4C7968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4C6A94(va);
  _Unwind_Resume(a1);
}

void *sub_4C797C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C7A44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C7A60@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C7B28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_4C7B44(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t sub_4C7C70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 != v7)
  {
    if (a4)
    {
      v8 = *(a1 + 48);
      v9 = ((*(a1 + 56) - v8) >> 4) - 1;
      *(a1 + 16) = v9;
      v10 = (v8 + 16 * v9);
LABEL_21:
      *a1 = *v10;
      return a1;
    }

    v11 = *(a1 + 16);
    if (v11 >= ((v7 - v6) >> 4) - 1)
    {
LABEL_20:
      v10 = (v6 + 16 * v11);
      goto LABEL_21;
    }

    while (1)
    {
      v12 = 16 * v11;
      v13 = v6 + v12;
      v14 = *v5 + v12;
      if (*(v6 + v12))
      {
        v15 = *(v13 + 8);
        v16 = sub_4D1DC0(*(v6 + v12));
        v17 = v15 < v16;
        v18 = *v14;
        if (!*v14)
        {
          if (v15 < v16)
          {
            goto LABEL_19;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v18 = *v14;
        if (!*v14)
        {
          goto LABEL_7;
        }

        v17 = 0;
      }

      v19 = *(v14 + 8);
      v20 = sub_4D1DC0(v18);
      if (v19 < v20 && v17)
      {
        v22 = sub_4D1F50(*v13, *(v13 + 8));
        if (v22 != sub_4D1F50(*v14, *(v14 + 8)))
        {
LABEL_19:
          v11 = *(a1 + 16);
          v6 = *(a1 + 24);
          goto LABEL_20;
        }
      }

      else if ((v17 ^ (v19 < v20)))
      {
        goto LABEL_19;
      }

LABEL_7:
      v6 = *(a1 + 24);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      if (v11 >= ((*(a1 + 32) - v6) >> 4) - 1)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}

void sub_4C7E04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = v1[3];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = v1[3];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_4C7E40@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C7F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C7F24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C7FEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8008@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C80D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C80EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C81B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C81D0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8298(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C82B4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C837C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8398@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8460(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C847C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8544(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8560@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8628(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8644@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C870C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8728@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C882C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8848@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C896C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8A70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8A8C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8BB0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8C98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8CB4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8D9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8DB8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8EA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8EBC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C8FA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C8FC0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C9088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C90A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C916C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4C9188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 != v7)
  {
    if (a4)
    {
      v8 = *(a1 + 48);
      v9 = ((*(a1 + 56) - v8) >> 4) - 1;
      *(a1 + 16) = v9;
      v10 = (v8 + 16 * v9);
LABEL_21:
      *a1 = *v10;
      return a1;
    }

    v11 = *(a1 + 16);
    if (v11 >= ((v7 - v6) >> 4) - 1)
    {
LABEL_20:
      v10 = (v6 + 16 * v11);
      goto LABEL_21;
    }

    while (1)
    {
      v12 = 16 * v11;
      v13 = v6 + v12;
      v14 = *v5 + v12;
      if (*(v6 + v12))
      {
        v15 = *(v13 + 8);
        v16 = sub_4D1DC0(*(v6 + v12));
        v17 = v15 < v16;
        v18 = *v14;
        if (!*v14)
        {
          if (v15 < v16)
          {
            goto LABEL_19;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v18 = *v14;
        if (!*v14)
        {
          goto LABEL_7;
        }

        v17 = 0;
      }

      v19 = *(v14 + 8);
      v20 = sub_4D1DC0(v18);
      if (v19 < v20 && v17)
      {
        v22 = sub_4D1F50(*v13, *(v13 + 8));
        if (v22 != sub_4D1F50(*v14, *(v14 + 8)))
        {
LABEL_19:
          v11 = *(a1 + 16);
          v6 = *(a1 + 24);
          goto LABEL_20;
        }
      }

      else if ((v17 ^ (v19 < v20)))
      {
        goto LABEL_19;
      }

LABEL_7:
      v6 = *(a1 + 24);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      if (v11 >= ((*(a1 + 32) - v6) >> 4) - 1)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}

void sub_4C931C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = v1[3];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = v1[3];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_4C9358@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C9420(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C943C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C9504(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C9520@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C95E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C9604@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C96CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4C96E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v6 != v7)
  {
    if (a4)
    {
      v8 = *(a1 + 48);
      v9 = ((*(a1 + 56) - v8) >> 4) - 1;
      *(a1 + 16) = v9;
      v10 = (v8 + 16 * v9);
LABEL_21:
      *a1 = *v10;
      return a1;
    }

    v11 = *(a1 + 16);
    if (v11 >= ((v7 - v6) >> 4) - 1)
    {
LABEL_20:
      v10 = (v6 + 16 * v11);
      goto LABEL_21;
    }

    while (1)
    {
      v12 = 16 * v11;
      v13 = v6 + v12;
      v14 = *v5 + v12;
      if (*(v6 + v12))
      {
        v15 = *(v13 + 8);
        v16 = sub_4D1DC0(*(v6 + v12));
        v17 = v15 < v16;
        v18 = *v14;
        if (!*v14)
        {
          if (v15 < v16)
          {
            goto LABEL_19;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v18 = *v14;
        if (!*v14)
        {
          goto LABEL_7;
        }

        v17 = 0;
      }

      v19 = *(v14 + 8);
      v20 = sub_4D1DC0(v18);
      if (v19 < v20 && v17)
      {
        v22 = sub_4D1F50(*v13, *(v13 + 8));
        if (v22 != sub_4D1F50(*v14, *(v14 + 8)))
        {
LABEL_19:
          v11 = *(a1 + 16);
          v6 = *(a1 + 24);
          goto LABEL_20;
        }
      }

      else if ((v17 ^ (v19 < v20)))
      {
        goto LABEL_19;
      }

LABEL_7:
      v6 = *(a1 + 24);
      v11 = *(a1 + 16) + 1;
      *(a1 + 16) = v11;
      if (v11 >= ((*(a1 + 32) - v6) >> 4) - 1)
      {
        goto LABEL_19;
      }
    }
  }

  return a1;
}

void sub_4C987C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
    v5 = v1[3];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = v1[3];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[4] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *sub_4C98B8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C9980(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C999C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xE21A291C077975B9 * ((v2 - *result) >> 3)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4C9A64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C9A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    v10 = *a1;
    v11 = v7 - *a1;
    v12 = v11 >> 4;
    v13 = (v11 >> 4) + 1;
    if (v13 >> 60)
    {
      sub_1794();
    }

    v14 = v8 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 60))
      {
        operator new();
      }

LABEL_28:
      sub_1808();
    }

    v16 = (16 * v12);
    *v16 = a2;
    v16[1] = a3;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v7 = a2;
    v7[1] = a3;
    v9 = (v7 + 2);
  }

  *(a1 + 8) = v9;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v18 < v17)
  {
    *v18 = a4;
    v19 = v18 + 8;
    goto LABEL_27;
  }

  v20 = *(a1 + 24);
  v21 = v18 - v20;
  v22 = (v18 - v20) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
    sub_1794();
  }

  v24 = v17 - v20;
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

    goto LABEL_28;
  }

  v26 = (v18 - v20) >> 3;
  v27 = (8 * v22);
  v28 = (8 * v22 - 8 * v26);
  *v27 = a4;
  v19 = v27 + 1;
  memcpy(v28, v20, v21);
  *(a1 + 24) = v28;
  *(a1 + 32) = v19;
  *(a1 + 40) = 0;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_27:
  *(a1 + 32) = v19;
}

void sub_4C9C80(void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(v25, 0, sizeof(v25));
  *v23 = 0u;
  memset(v24, 0, sizeof(v24));
  if (sub_4D1DC0(a1))
  {
    v6 = sub_4D1F50(a1, 0);
    sub_2B7A20(a4, v6[4] & 0xFFFFFFFFFFFFFFLL, &v18);
    *&v7 = sub_31BF20(&v18, &v21).n128_u64[0];
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    v8 = (*v6 - **v6);
    if (*v8 >= 9u)
    {
      v9 = v8[4];
      if (v9)
      {
        LODWORD(v7) = *(*v6 + v9);
      }
    }

    sub_4D23F8(a1, 0, v7);
    sub_4D2148(a1, 0);
    sub_4D21C8(a1, 0);
    sub_4CA670(&v21);
  }

  v10 = sub_4C9C6C(v23);
  if (*a3)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    sub_4CA9DC(v23, a1, a2, &v18, v11);
    sub_4CAFF8(v23, a3, &v18, &v21);
    if (v25[0])
    {
      operator delete(v25[0]);
    }

    v25[0] = v21;
    *&v25[1] = v22;
    if (v18)
    {
      operator delete(v18);
    }
  }

  *a5 = *v23;
  *(a5 + 16) = v24[0];
  v23[0] = 0;
  v23[1] = 0;
  *(a5 + 24) = *&v24[1];
  memset(v24, 0, sizeof(v24));
  v13 = v25[0];
  *(a5 + 40) = v24[3];
  *(a5 + 48) = v13;
  *(a5 + 56) = *&v25[1];
  memset(v25, 0, sizeof(v25));
  if (v24[1])
  {
    v24[2] = v24[1];
    operator delete(v24[1]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }
}

void sub_4CA5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
    sub_4CB154(&a27);
    _Unwind_Resume(a1);
  }

  sub_4CB154(&a27);
  _Unwind_Resume(a1);
}

void sub_4CA670(void *a1)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  v1 = a1[1] - *a1;
  if (v1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v1 >> 2)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  operator new();
}

void sub_4CA7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4CA7E0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_4CA8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_4CA9DC(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, __n128 a5@<Q0>)
{
  v5 = a1;
  v6 = a1[1] - *a1;
  if (v6)
  {
    i64 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v6 >> 4;
    v13 = -1;
    v14 = -1;
    v58 = v6 >> 4;
    while (1)
    {
      v15 = sub_4CDF68(v5 + 3, v11);
      v16 = sub_4D1F50(a2, *v15);
      if (*a3 != 1)
      {
        goto LABEL_36;
      }

      v17 = (*v16 - **v16);
      if (*v17 < 0x2Fu)
      {
        break;
      }

      v18 = v17[23];
      if (!v18)
      {
        break;
      }

      v19 = *(*v16 + v18);
      v21 = v19 != 9 && v19 != 20;
      if (v14 == -1 && !v21)
      {
        v14 = v11;
        goto LABEL_36;
      }

      if (v14 != -1)
      {
        v25 = v19 == 20 || v19 == 9;
        if (!v25 || v11 + 1 == (v5[1] - *v5) >> 4)
        {
          goto LABEL_18;
        }
      }

LABEL_36:
      if (*(a3 + 1) != 1)
      {
        goto LABEL_4;
      }

      v28 = *v16;
      v29 = (*v16 - **v16);
      v30 = *v29;
      if (*(v16 + 38))
      {
        if (v30 < 0x47)
        {
          goto LABEL_46;
        }

        v31 = v29[35];
        if (!v31)
        {
          goto LABEL_46;
        }

        v32 = (*&v28[v31] & 2) != 0;
        if (v13 != -1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v30 < 0x47 || (v33 = v29[35]) == 0)
        {
LABEL_46:
          v32 = 0;
          if (v13 != -1)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        v32 = (*&v28[v33] & 1) != 0;
        if (v13 != -1)
        {
          goto LABEL_48;
        }
      }

LABEL_47:
      if (v32)
      {
LABEL_48:
        if (v13 != -1 && (v32 || v11 + 1 == (v5[1] - *v5) >> 4))
        {
          v34 = *sub_4CDF68(v5 + 3, v13);
          v57 = v10;
          v35 = *sub_4CDF68(v5 + 3, v11);
          if (v34 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          else
          {
            v36 = v34;
          }

          v37 = 0;
          if (v34 < v35 + 1)
          {
            do
            {
              v37 += sub_4D23F8(a2, v34++, a5.n128_f64[0]);
            }

            while (v36 != v34);
          }

          if (v37 >= *(a3 + 8))
          {
            v10 = v57;
            if (i64 >= v57)
            {
              v38 = i64;
              v39 = (i64 >> 4) + 1;
              if (v39 >> 60)
              {
                sub_1794();
              }

              if (v57 >> 3 > v39)
              {
                v39 = v57 >> 3;
              }

              if (v39)
              {
                if (!(v39 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v40 = (16 * (i64 >> 4));
              v10 = 0;
              v40->i64[0] = v13;
              v40->i64[1] = v11;
              i64 = v40[1].i64;
              memcpy(0, 0, v38);
              v13 = -1;
              v5 = a1;
            }

            else
            {
              *i64 = v13;
              *(i64 + 8) = v11;
              i64 += 16;
              v13 = -1;
            }

            v12 = v58;
          }

          else
          {
            v10 = v57;
            v12 = v58;
            v13 = -1;
          }
        }

        goto LABEL_4;
      }

      v13 = v11;
LABEL_4:
      if (++v11 == v12)
      {
        goto LABEL_69;
      }
    }

    if (v14 == -1)
    {
      goto LABEL_36;
    }

LABEL_18:
    if (i64 >= v10)
    {
      v22 = i64;
      v23 = i64 >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        sub_1794();
      }

      if (v10 >> 3 > v24)
      {
        v24 = v10 >> 3;
      }

      if (v24)
      {
        if (!(v24 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v26 = v16;
      v27 = (16 * v23);
      *v27 = v14;
      v27[1] = v11;
      i64 = 16 * v23 + 16;
      memcpy(0, 0, v22);
      v16 = v26;
      v5 = a1;
      v12 = v58;
      v10 = 0;
    }

    else
    {
      *i64 = v14;
      *(i64 + 8) = v11;
      i64 += 16;
    }

    v14 = -1;
    goto LABEL_36;
  }

  i64 = 0;
LABEL_69:
  v41 = 126 - 2 * __clz(i64 >> 4);
  if (i64)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  sub_4CE164(0, i64, &v59, v42, 1, a5);
  if (i64)
  {
    v43 = dword_10;
    if (i64 != 16)
    {
      do
      {
        v44 = *(v43 - 2);
        v45 = *(v43 - 1);
        if (v44 <= *v43)
        {
          v46 = *v43;
        }

        else
        {
          v46 = *(v43 - 2);
        }

        v47 = v43[1];
        if (v47 < v45)
        {
          v45 = v43[1];
        }

        if (v46 <= v45)
        {
          if (v44 >= *v43)
          {
            v44 = *v43;
          }

          v48 = *(v43 - 1);
          if (v47 > v48)
          {
            v48 = v43[1];
          }

          *v43 = v44;
          v43[1] = v48;
          *(v43 - 2) = -1;
          *(v43 - 1) = -1;
        }

        v43 += 2;
      }

      while (v43 != i64);
    }
  }

  v50 = *v5;
  v49 = v5[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v49 != v50)
  {
    if ((((v49 - v50) >> 4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (i64)
  {
    v51 = (v5[1] - *v5) >> 4;
    for (i = 0; i != i64; i += 2)
    {
      v53 = *i;
      if (*i != -1)
      {
        if (v53)
        {
          *((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v53;
        }

        v54 = i[1];
        if (v54 + 1 < v51)
        {
          *((v54 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v54;
        }
      }
    }
  }
}

void sub_4CAFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CAFF8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a2 == 1)
  {

    sub_41640(a1, a4);
  }

  if (*a2 == 2)
  {
    v4 = *(a2 + 8) * 10000.0;
    v5 = (a1[1] - *a1) >> 4;

    sub_40704(a1, v5, a3, a4, v4);
  }

  else
  {
    v7 = *a1;
    v6 = a1[1];
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    if (v6 != v7)
    {
      if ((((v6 - v7) >> 4) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

uint64_t sub_4CB154(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
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

void sub_4CB1A4(void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(v25, 0, sizeof(v25));
  *v23 = 0u;
  memset(v24, 0, sizeof(v24));
  if (sub_4D1DC0(a1))
  {
    v6 = sub_4D1F50(a1, 0);
    sub_2B7A20(a4, v6[4] & 0xFFFFFFFFFFFFFFLL, &v18);
    *&v7 = sub_31BF20(&v18, &v21).n128_u64[0];
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    v8 = (*v6 - **v6);
    if (*v8 >= 9u)
    {
      v9 = v8[4];
      if (v9)
      {
        LODWORD(v7) = *(*v6 + v9);
      }
    }

    sub_4D23F8(a1, 0, v7);
    sub_4D2148(a1, 0);
    sub_4D21C8(a1, 0);
    sub_4CA670(&v21);
  }

  v10 = sub_4C9C6C(v23);
  if (*a3)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    sub_4CBB94(v23, a1, a2, &v18, v11);
    sub_4CAFF8(v23, a3, &v18, &v21);
    if (v25[0])
    {
      operator delete(v25[0]);
    }

    v25[0] = v21;
    *&v25[1] = v22;
    if (v18)
    {
      operator delete(v18);
    }
  }

  *a5 = *v23;
  *(a5 + 16) = v24[0];
  v23[0] = 0;
  v23[1] = 0;
  *(a5 + 24) = *&v24[1];
  memset(v24, 0, sizeof(v24));
  v13 = v25[0];
  *(a5 + 40) = v24[3];
  *(a5 + 48) = v13;
  *(a5 + 56) = *&v25[1];
  memset(v25, 0, sizeof(v25));
  if (v24[1])
  {
    v24[2] = v24[1];
    operator delete(v24[1]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }
}

void sub_4CBAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
    sub_4CB154(&a27);
    _Unwind_Resume(a1);
  }

  sub_4CB154(&a27);
  _Unwind_Resume(a1);
}

void sub_4CBB94(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, __n128 a5@<Q0>)
{
  v5 = a1;
  v6 = a1[1] - *a1;
  if (v6)
  {
    i64 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v6 >> 4;
    v13 = -1;
    v14 = -1;
    v58 = v6 >> 4;
    while (1)
    {
      v15 = sub_4CDF68(v5 + 3, v11);
      v16 = sub_4D1F50(a2, *v15);
      if (*a3 != 1)
      {
        goto LABEL_36;
      }

      v17 = (*v16 - **v16);
      if (*v17 < 0x2Fu)
      {
        break;
      }

      v18 = v17[23];
      if (!v18)
      {
        break;
      }

      v19 = *(*v16 + v18);
      v21 = v19 != 9 && v19 != 20;
      if (v14 == -1 && !v21)
      {
        v14 = v11;
        goto LABEL_36;
      }

      if (v14 != -1)
      {
        v25 = v19 == 20 || v19 == 9;
        if (!v25 || v11 + 1 == (v5[1] - *v5) >> 4)
        {
          goto LABEL_18;
        }
      }

LABEL_36:
      if (*(a3 + 1) != 1)
      {
        goto LABEL_4;
      }

      v28 = *v16;
      v29 = (*v16 - **v16);
      v30 = *v29;
      if (*(v16 + 38))
      {
        if (v30 < 0x9B)
        {
          goto LABEL_46;
        }

        v31 = v29[77];
        if (!v31)
        {
          goto LABEL_46;
        }

        v32 = (*&v28[v31] & 2) != 0;
        if (v13 != -1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v30 < 0x9B || (v33 = v29[77]) == 0)
        {
LABEL_46:
          v32 = 0;
          if (v13 != -1)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        v32 = (*&v28[v33] & 1) != 0;
        if (v13 != -1)
        {
          goto LABEL_48;
        }
      }

LABEL_47:
      if (v32)
      {
LABEL_48:
        if (v13 != -1 && (v32 || v11 + 1 == (v5[1] - *v5) >> 4))
        {
          v34 = *sub_4CDF68(v5 + 3, v13);
          v57 = v10;
          v35 = *sub_4CDF68(v5 + 3, v11);
          if (v34 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          else
          {
            v36 = v34;
          }

          v37 = 0;
          if (v34 < v35 + 1)
          {
            do
            {
              v37 += sub_4D23F8(a2, v34++, a5.n128_f64[0]);
            }

            while (v36 != v34);
          }

          if (v37 >= *(a3 + 8))
          {
            v10 = v57;
            if (i64 >= v57)
            {
              v38 = i64;
              v39 = (i64 >> 4) + 1;
              if (v39 >> 60)
              {
                sub_1794();
              }

              if (v57 >> 3 > v39)
              {
                v39 = v57 >> 3;
              }

              if (v39)
              {
                if (!(v39 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v40 = (16 * (i64 >> 4));
              v10 = 0;
              v40->i64[0] = v13;
              v40->i64[1] = v11;
              i64 = v40[1].i64;
              memcpy(0, 0, v38);
              v13 = -1;
              v5 = a1;
            }

            else
            {
              *i64 = v13;
              *(i64 + 8) = v11;
              i64 += 16;
              v13 = -1;
            }

            v12 = v58;
          }

          else
          {
            v10 = v57;
            v12 = v58;
            v13 = -1;
          }
        }

        goto LABEL_4;
      }

      v13 = v11;
LABEL_4:
      if (++v11 == v12)
      {
        goto LABEL_69;
      }
    }

    if (v14 == -1)
    {
      goto LABEL_36;
    }

LABEL_18:
    if (i64 >= v10)
    {
      v22 = i64;
      v23 = i64 >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        sub_1794();
      }

      if (v10 >> 3 > v24)
      {
        v24 = v10 >> 3;
      }

      if (v24)
      {
        if (!(v24 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v26 = v16;
      v27 = (16 * v23);
      *v27 = v14;
      v27[1] = v11;
      i64 = 16 * v23 + 16;
      memcpy(0, 0, v22);
      v16 = v26;
      v5 = a1;
      v12 = v58;
      v10 = 0;
    }

    else
    {
      *i64 = v14;
      *(i64 + 8) = v11;
      i64 += 16;
    }

    v14 = -1;
    goto LABEL_36;
  }

  i64 = 0;
LABEL_69:
  v41 = 126 - 2 * __clz(i64 >> 4);
  if (i64)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  sub_4CE164(0, i64, &v59, v42, 1, a5);
  if (i64)
  {
    v43 = dword_10;
    if (i64 != 16)
    {
      do
      {
        v44 = *(v43 - 2);
        v45 = *(v43 - 1);
        if (v44 <= *v43)
        {
          v46 = *v43;
        }

        else
        {
          v46 = *(v43 - 2);
        }

        v47 = v43[1];
        if (v47 < v45)
        {
          v45 = v43[1];
        }

        if (v46 <= v45)
        {
          if (v44 >= *v43)
          {
            v44 = *v43;
          }

          v48 = *(v43 - 1);
          if (v47 > v48)
          {
            v48 = v43[1];
          }

          *v43 = v44;
          v43[1] = v48;
          *(v43 - 2) = -1;
          *(v43 - 1) = -1;
        }

        v43 += 2;
      }

      while (v43 != i64);
    }
  }

  v50 = *v5;
  v49 = v5[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v49 != v50)
  {
    if ((((v49 - v50) >> 4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (i64)
  {
    v51 = (v5[1] - *v5) >> 4;
    for (i = 0; i != i64; i += 2)
    {
      v53 = *i;
      if (*i != -1)
      {
        if (v53)
        {
          *((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v53;
        }

        v54 = i[1];
        if (v54 + 1 < v51)
        {
          *((v54 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v54;
        }
      }
    }
  }
}

void sub_4CC174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CC1B0(void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(v25, 0, sizeof(v25));
  *v23 = 0u;
  memset(v24, 0, sizeof(v24));
  if (sub_4D1DC0(a1))
  {
    v6 = sub_4D1F50(a1, 0);
    sub_2B7A20(a4, (((*(v6 + 9) & 0x20000000) << 19) | (*(v6 + 9) << 32) | *(v6 + 8)) ^ 0x1000000000000, &v18);
    *&v7 = sub_31BF20(&v18, &v21).n128_u64[0];
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    v8 = (*v6 - **v6);
    if (*v8 >= 9u)
    {
      v9 = v8[4];
      if (v9)
      {
        LODWORD(v7) = *(*v6 + v9);
      }
    }

    sub_4D23F8(a1, 0, v7);
    sub_4D2148(a1, 0);
    sub_4D21C8(a1, 0);
    sub_4CA670(&v21);
  }

  v10 = sub_4C9C6C(v23);
  if (*a3)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    sub_4CCBB4(v23, a1, a2, &v18, v11);
    sub_4CAFF8(v23, a3, &v18, &v21);
    if (v25[0])
    {
      operator delete(v25[0]);
    }

    v25[0] = v21;
    *&v25[1] = v22;
    if (v18)
    {
      operator delete(v18);
    }
  }

  *a5 = *v23;
  *(a5 + 16) = v24[0];
  v23[0] = 0;
  v23[1] = 0;
  *(a5 + 24) = *&v24[1];
  memset(v24, 0, sizeof(v24));
  v13 = v25[0];
  *(a5 + 40) = v24[3];
  *(a5 + 48) = v13;
  *(a5 + 56) = *&v25[1];
  memset(v25, 0, sizeof(v25));
  if (v24[1])
  {
    v24[2] = v24[1];
    operator delete(v24[1]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }
}

void sub_4CCAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
    sub_4CB154(&a27);
    _Unwind_Resume(a1);
  }

  sub_4CB154(&a27);
  _Unwind_Resume(a1);
}

void sub_4CCBB4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, __n128 a5@<Q0>)
{
  v5 = a1;
  v6 = a1[1] - *a1;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = v6 >> 4;
    v12 = -1;
    v13 = -1;
    v51 = v6 >> 4;
    while (1)
    {
      v14 = sub_4CDF68(v5 + 3, v10);
      v15 = sub_4D1F50(a2, *v14);
      if (*a3 == 1)
      {
        v16 = (*v15 - **v15);
        if (*v16 >= 0x2Fu && (v17 = v16[23]) != 0)
        {
          v18 = *(*v15 + v17);
          v20 = v18 != 9 && v18 != 20;
          if (v13 != -1 || v20)
          {
            if (v13 != -1)
            {
              v23 = v18 == 20 || v18 == 9;
              if (!v23 || v10 + 1 == (v5[1] - *v5) >> 4)
              {
LABEL_18:
                v21 = v9;
                v22 = v9 >> 4;
                if ((v22 + 1) >> 60)
                {
                  sub_1794();
                }

                if (v22 != -1)
                {
                  if (!((v22 + 1) >> 60))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v24 = v15;
                MEMORY[0xFFFFFFFFFFFFFFF0] = v13;
                MEMORY[0xFFFFFFFFFFFFFFF8] = v10;
                v9 = 0;
                memcpy(0, 0, v21);
                v13 = -1;
                v15 = v24;
                v5 = a1;
                v11 = v51;
              }
            }
          }

          else
          {
            v13 = v10;
          }
        }

        else if (v13 != -1)
        {
          goto LABEL_18;
        }
      }

      if (*(a3 + 1) == 1)
      {
        v25 = *(v15 + 9);
        if ((v25 & 0x40000000) != 0)
        {
          v26 = 2;
        }

        else
        {
          v26 = v25 >> 31;
        }

        v27 = sub_314D1C(v15, v26);
        if (v12 != -1 || v27)
        {
          if (v12 != -1 && (v27 || v10 + 1 == (v5[1] - *v5) >> 4))
          {
            v28 = *sub_4CDF68(v5 + 3, v12);
            v29 = *sub_4CDF68(v5 + 3, v10);
            if (v28 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            else
            {
              v30 = v28;
            }

            v31 = 0;
            if (v28 < v29 + 1)
            {
              do
              {
                v31 += sub_4D23F8(a2, v28++, a5.n128_f64[0]);
              }

              while (v30 != v28);
            }

            if (v31 >= *(a3 + 8))
            {
              v32 = v9;
              v33 = v9 >> 4;
              if (((v9 >> 4) + 1) >> 60)
              {
                sub_1794();
              }

              if (v9 >> 4 != -1)
              {
                if (!(((v9 >> 4) + 1) >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v34 = (16 * v33);
              *v34 = v12;
              v34[1] = v10;
              v9 = 16 * v33 + 16;
              memcpy(0, 0, v32);
              v12 = -1;
              v5 = a1;
            }

            else
            {
              v12 = -1;
            }

            v11 = v51;
          }
        }

        else
        {
          v12 = v10;
        }
      }

      if (++v10 == v11)
      {
        goto LABEL_53;
      }
    }
  }

  v9 = 0;
LABEL_53:
  v35 = 126 - 2 * __clz(v9 >> 4);
  if (v9)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  sub_4CE164(0, v9, &v52, v36, 1, a5);
  if (v9)
  {
    v37 = dword_10;
    if (v9 != 16)
    {
      do
      {
        v38 = *(v37 - 2);
        v39 = *(v37 - 1);
        if (v38 <= *v37)
        {
          v40 = *v37;
        }

        else
        {
          v40 = *(v37 - 2);
        }

        v41 = v37[1];
        if (v41 < v39)
        {
          v39 = v37[1];
        }

        if (v40 <= v39)
        {
          if (v38 >= *v37)
          {
            v38 = *v37;
          }

          v42 = *(v37 - 1);
          if (v41 > v42)
          {
            v42 = v37[1];
          }

          *v37 = v38;
          v37[1] = v42;
          *(v37 - 2) = -1;
          *(v37 - 1) = -1;
        }

        v37 += 2;
      }

      while (v37 != v9);
    }
  }

  v44 = *v5;
  v43 = v5[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v43 != v44)
  {
    if ((((v43 - v44) >> 4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v9)
  {
    v45 = (v5[1] - *v5) >> 4;
    for (i = 0; i != v9; i += 2)
    {
      v47 = *i;
      if (*i != -1)
      {
        if (v47)
        {
          *((v47 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v47;
        }

        v48 = i[1];
        if (v48 + 1 < v45)
        {
          *((v48 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v48;
        }
      }
    }
  }
}

void sub_4CD13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CD2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CD73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_4CD7B4(uint64_t a1, void *a2)
{
  v8 = 10;
  strcpy(__p, "min_run_cm");
  v4 = sub_353010(a2, __p);
  if (v8 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  v8 = 6;
  strcpy(__p, "uphill");
  v6 = sub_5F33C(a2, __p);
  if (*(v6 + 2) == 5)
  {
    sub_4CD938((a1 + 8), *v6);
  }

  sub_5AF20();
}

void sub_4CD910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CD938(double *a1, void *a2)
{
  strcpy(__p, "gentle_slope_threshold");
  v6 = 22;
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

void sub_4CDB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

void *sub_4CDBEC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (((v2 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_4CDCC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4CDCE4(uint64_t *a1, _DWORD *a2, _DWORD *a3, double a4)
{
  LODWORD(a4) = a2[1];
  v7 = exp(3.14159265 - *&a4 * 6.28318531 / 4294967300.0);
  *&v8 = atan((v7 - 1.0 / v7) * 0.5) * 57.2957795;
  v9 = *&v8 * 0.0174532925;
  LODWORD(v8) = *a2;
  *&v10 = (v8 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925;
  v32 = *&v10;
  LODWORD(v10) = a3[1];
  v11 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
  *&v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795;
  v13 = *&v12 * 0.0174532925;
  LODWORD(v12) = *a3;
  v14 = v32 - (v12 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925;
  v15 = sin((v9 - v13) * 0.5);
  v16 = v15 * v15;
  v17 = cos(v9);
  v18 = v17 * cos(v13);
  v19 = sin(v14 * 0.5);
  v20 = atan2(sqrt(v19 * v19 * v18 + v16), sqrt(1.0 - (v19 * v19 * v18 + v16)));
  v21 = *a1;
  v23 = *(*a1 + 8);
  v22 = *(*a1 + 16);
  v24 = (v20 + v20) * 6372797.56 + *(v23 - 1);
  if (v23 >= v22)
  {
    v26 = *v21;
    v27 = v23 - *v21;
    v28 = v27 >> 3;
    v29 = (v27 >> 3) + 1;
    if (v29 >> 61)
    {
      sub_1794();
    }

    v30 = v22 - v26;
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

    if (v31)
    {
      if (!(v31 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v28) = v24;
    v25 = 8 * v28 + 8;
    memcpy(0, v26, v27);
    *v21 = 0;
    *(v21 + 8) = v25;
    *(v21 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v23 = v24;
    v25 = (v23 + 1);
  }

  *(v21 + 8) = v25;
}

uint64_t sub_4CDF68(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_4CE084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_4CE164(__n128 *a1, uint64x2_t *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v11 = &a2[-1];
  v168 = a2 - 2;
  v12 = a2 - 3;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = (a2 - v13) >> 4;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v121 = a2[-1].u64[0];
        v122 = a2[-1].u64[1];
        v123 = &a2[-1];
        v124 = v121 == v13->n128_u64[0];
        v125 = v121 < v13->n128_u64[0];
        if (v124)
        {
          v125 = v122 < v13->n128_u64[1];
        }

        if (v125)
        {
          v188 = *v13;
          *v13 = *v123;
          *v123 = v188;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_4CECF0(v13, v13 + 1, v13 + 2, &a2[-1], a6);
      return;
    }

    if (v14 == 5)
    {
      sub_4CECF0(v13, v13 + 1, v13 + 2, v13 + 3, a6);
      v105 = a2[-1].u64[0];
      v106 = a2[-1].u64[1];
      v107 = a2 - 1;
      v108 = v13[3].n128_u64[0];
      v124 = v105 == v108;
      v109 = v105 < v108;
      if (v124)
      {
        v109 = v106 < v13[3].n128_u64[1];
      }

      if (v109)
      {
        v110 = v13[3];
        v13[3] = *v107;
        *v107 = v110;
        v111 = v13[2].n128_u64[0];
        v112 = v13[3].n128_u64[0];
        v124 = v112 == v111;
        v113 = v112 < v111;
        if (v124)
        {
          v113 = v13[3].n128_u64[1] < v13[2].n128_u64[1];
        }

        if (v113)
        {
          v114 = v13[2];
          v13[2] = v13[3];
          v13[3] = v114;
          v115 = v13[1].n128_u64[0];
          v116 = v13[2].n128_u64[0];
          v124 = v116 == v115;
          v117 = v116 < v115;
          if (v124)
          {
            v117 = v13[2].n128_u64[1] < v13[1].n128_u64[1];
          }

          if (v117)
          {
            v118 = v13[1];
            v13[1] = v13[2];
            v13[2] = v118;
            v119 = v13[1].n128_u64[0];
            v120 = v119 < v13->n128_u64[0];
            if (v119 == v13->n128_u64[0])
            {
              v120 = v13[1].n128_u64[1] < v13->n128_u64[1];
            }

            if (v120)
            {
              v187 = *v13;
              *v13 = v13[1];
              v13[1] = v187;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v134 = v13 + 1;
      v136 = v13 == a2 || v134 == a2;
      if (a5)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = v13;
          do
          {
            v140 = v138->n128_u64[0];
            v141 = v138->n128_u64[1];
            v142 = v138[1].n128_u64[0];
            v143 = v138[1].n128_u64[1];
            v138 = v134;
            v144 = v143 < v141;
            v124 = v142 == v140;
            v145 = v142 < v140;
            if (!v124)
            {
              v144 = v145;
            }

            if (v144)
            {
              v146 = v137;
              do
              {
                v147 = v13 + v146;
                *(v13 + v146 + 16) = *(v13 + v146);
                if (!v146)
                {
                  v139 = v13;
                  goto LABEL_173;
                }

                v148 = *(v147 - 2);
                v149 = v143 < *(v147 - 1);
                v124 = v142 == v148;
                v150 = v142 < v148;
                if (!v124)
                {
                  v149 = v150;
                }

                v146 -= 16;
              }

              while (v149);
              v139 = (v13 + v146 + 16);
LABEL_173:
              v139->n128_u64[0] = v142;
              v139->n128_u64[1] = v143;
            }

            v134 = v138 + 1;
            v137 += 16;
          }

          while (&v138[1] != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v154 = a1->n128_u64[0];
          v155 = a1->n128_u64[1];
          v156 = a1[1].n128_u64[0];
          v157 = a1[1].n128_u64[1];
          a1 = v134;
          v158 = v157 < v155;
          v124 = v156 == v154;
          v159 = v156 < v154;
          if (!v124)
          {
            v158 = v159;
          }

          if (v158)
          {
            v160 = a1;
            do
            {
              *v160 = v160[-1];
              v161 = v160[-2].n128_u64[0];
              v162 = v160[-2].n128_u64[1];
              --v160;
              v163 = v157 < v162;
              v124 = v156 == v161;
              v164 = v156 < v161;
              if (v124)
              {
                v164 = v163;
              }
            }

            while (v164);
            v160->n128_u64[0] = v156;
            v160->n128_u64[1] = v157;
          }

          v134 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        sub_4CF428(v13, a2, a2, a3);
      }

      return;
    }

    v15 = &v13[v14 >> 1];
    v16 = a2[-1].u64[0];
    v17 = a2[-1].u64[1];
    if (v14 < 0x81)
    {
      v23 = v13->n128_u64[0];
      v24 = v13->n128_u64[1];
      v25 = v24 < v15->n128_u64[1];
      if (v13->n128_u64[0] != v15->n128_u64[0])
      {
        v25 = v13->n128_u64[0] < v15->n128_u64[0];
      }

      v26 = v17 < v24;
      v124 = v16 == v23;
      v27 = v16 < v23;
      if (!v124)
      {
        v26 = v27;
      }

      if (v25)
      {
        if (v26)
        {
          v170 = *v15;
          *v15 = *v11;
          goto LABEL_58;
        }

        v177 = *v15;
        *v15 = *v13;
        a6 = v177;
        *v13 = v177;
        v47 = a2[-1].u64[0];
        v48 = v47 < v13->n128_u64[0];
        if (v47 == v13->n128_u64[0])
        {
          v48 = a2[-1].i64[1] < v13->n128_u64[1];
        }

        if (v48)
        {
          v170 = *v13;
          *v13 = *v11;
LABEL_58:
          a6 = v170;
          *v11 = v170;
        }
      }

      else if (v26)
      {
        v173 = *v13;
        *v13 = *v11;
        a6 = v173;
        *v11 = v173;
        v29 = v13->n128_u64[0] < v15->n128_u64[0];
        if (v13->n128_u64[0] == v15->n128_u64[0])
        {
          v29 = v13->n128_u64[1] < v15->n128_u64[1];
        }

        if (v29)
        {
          v174 = *v15;
          *v15 = *v13;
          a6 = v174;
          *v13 = v174;
          --a4;
          v30 = v13->n128_u64[0];
          if (a5)
          {
            goto LABEL_60;
          }

          goto LABEL_100;
        }
      }

      --a4;
      v30 = v13->n128_u64[0];
      if (a5)
      {
        goto LABEL_60;
      }

      goto LABEL_100;
    }

    v18 = v15->n128_u64[0];
    v19 = v15->n128_u64[1];
    v20 = v19 < v13->n128_u64[1];
    if (v15->n128_u64[0] != v13->n128_u64[0])
    {
      v20 = v15->n128_u64[0] < v13->n128_u64[0];
    }

    v21 = v17 < v19;
    v124 = v16 == v18;
    v22 = v16 < v18;
    if (!v124)
    {
      v21 = v22;
    }

    if (v20)
    {
      if (v21)
      {
        v169 = *v13;
        *v13 = *v11;
LABEL_41:
        *v11 = v169;
        goto LABEL_42;
      }

      v175 = *v13;
      *v13 = *v15;
      *v15 = v175;
      v31 = a2[-1].u64[0];
      v32 = v31 < v15->n128_u64[0];
      if (v31 == v15->n128_u64[0])
      {
        v32 = a2[-1].i64[1] < v15->n128_u64[1];
      }

      if (v32)
      {
        v169 = *v15;
        *v15 = *v11;
        goto LABEL_41;
      }
    }

    else if (v21)
    {
      v171 = *v15;
      *v15 = *v11;
      *v11 = v171;
      v28 = v15->n128_u64[0] < v13->n128_u64[0];
      if (v15->n128_u64[0] == v13->n128_u64[0])
      {
        v28 = v15->n128_u64[1] < v13->n128_u64[1];
      }

      if (v28)
      {
        v172 = *v13;
        *v13 = *v15;
        *v15 = v172;
      }
    }

LABEL_42:
    v33 = v13 + 1;
    v34 = v13[1].n128_u64[0];
    v36 = v15[-1].n128_u64[0];
    v37 = v15[-1].n128_u64[1];
    v35 = v15 - 1;
    v38 = v37 < v13[1].n128_u64[1];
    v124 = v36 == v34;
    v39 = v36 < v34;
    if (!v124)
    {
      v38 = v39;
    }

    v40 = a2[-2].u64[0];
    v41 = a2[-2].i64[1] < v37;
    v124 = v40 == v36;
    v42 = v40 < v36;
    if (v124)
    {
      v42 = v41;
    }

    if (v38)
    {
      if (v42)
      {
        v43 = *v33;
        *v33 = *v168;
        *v168 = v43;
      }

      else
      {
        v50 = *v33;
        *v33 = *v35;
        *v35 = v50;
        v51 = a2[-2].u64[0];
        v52 = v51 < v35->n128_u64[0];
        if (v51 == v35->n128_u64[0])
        {
          v52 = a2[-2].i64[1] < v15[-1].n128_u64[1];
        }

        if (v52)
        {
          v178 = *v35;
          *v35 = *v168;
          *v168 = v178;
        }
      }
    }

    else if (v42)
    {
      v176 = *v35;
      *v35 = *v168;
      *v168 = v176;
      v44 = v13[1].n128_u64[0];
      v124 = v35->n128_u64[0] == v44;
      v45 = v35->n128_u64[0] < v44;
      if (v124)
      {
        v45 = v15[-1].n128_u64[1] < v13[1].n128_u64[1];
      }

      if (v45)
      {
        v46 = *v33;
        *v33 = *v35;
        *v35 = v46;
      }
    }

    v53 = v13 + 2;
    v54 = v13[2].n128_u64[0];
    v56 = v15[1].n128_u64[0];
    v57 = v15[1].n128_u64[1];
    v55 = v15 + 1;
    v58 = v57 < v13[2].n128_u64[1];
    v124 = v56 == v54;
    v59 = v56 < v54;
    if (!v124)
    {
      v58 = v59;
    }

    v60 = a2[-3].u64[0];
    v61 = a2[-3].i64[1] < v57;
    v124 = v60 == v56;
    v62 = v60 < v56;
    if (v124)
    {
      v62 = v61;
    }

    if (v58)
    {
      if (v62)
      {
        v63 = *v53;
        *v53 = *v12;
LABEL_81:
        *v12 = v63;
        goto LABEL_82;
      }

      v67 = *v53;
      *v53 = *v55;
      *v55 = v67;
      v68 = a2[-3].u64[0];
      v69 = v68 < v55->n128_u64[0];
      if (v68 == v55->n128_u64[0])
      {
        v69 = a2[-3].i64[1] < v15[1].n128_u64[1];
      }

      if (v69)
      {
        v180 = *v55;
        *v55 = *v12;
        v63 = v180;
        goto LABEL_81;
      }
    }

    else if (v62)
    {
      v179 = *v55;
      *v55 = *v12;
      *v12 = v179;
      v64 = v13[2].n128_u64[0];
      v124 = v55->n128_u64[0] == v64;
      v65 = v55->n128_u64[0] < v64;
      if (v124)
      {
        v65 = v15[1].n128_u64[1] < v13[2].n128_u64[1];
      }

      if (v65)
      {
        v66 = *v53;
        *v53 = *v55;
        *v55 = v66;
      }
    }

LABEL_82:
    v70 = v15->n128_u64[0];
    v71 = v15->n128_u64[1];
    v72 = v71 < v15[-1].n128_u64[1];
    if (v15->n128_u64[0] != v35->n128_u64[0])
    {
      v72 = v15->n128_u64[0] < v35->n128_u64[0];
    }

    v73 = v15[1].n128_u64[1] < v71;
    v74 = v55->n128_u64[0] < v70;
    if (v55->n128_u64[0] == v70)
    {
      v74 = v73;
    }

    if (v72)
    {
      if (v74)
      {
        v181 = *v35;
        *v35 = *v55;
LABEL_98:
        *v55 = v181;
        goto LABEL_99;
      }

      v184 = *v35;
      *v35 = *v15;
      *v15 = v184;
      v76 = v55->n128_u64[0] < v15->n128_u64[0];
      if (v55->n128_u64[0] == v15->n128_u64[0])
      {
        v76 = v15[1].n128_u64[1] < v15->n128_u64[1];
      }

      if (v76)
      {
        v181 = *v15;
        *v15 = *v55;
        goto LABEL_98;
      }
    }

    else if (v74)
    {
      v182 = *v15;
      *v15 = *v55;
      *v55 = v182;
      v75 = v15->n128_u64[0] < v35->n128_u64[0];
      if (v15->n128_u64[0] == v35->n128_u64[0])
      {
        v75 = v15->n128_u64[1] < v15[-1].n128_u64[1];
      }

      if (v75)
      {
        v183 = *v35;
        *v35 = *v15;
        *v15 = v183;
      }
    }

LABEL_99:
    v185 = *v13;
    *v13 = *v15;
    a6 = v185;
    *v15 = v185;
    --a4;
    v30 = v13->n128_u64[0];
    if (a5)
    {
LABEL_60:
      v49 = v13->n128_u64[1];
      goto LABEL_103;
    }

LABEL_100:
    v49 = v13->n128_u64[1];
    v77 = v13[-1].n128_u64[0];
    v124 = v77 == v30;
    v78 = v77 < v30;
    if (v124)
    {
      v78 = v13[-1].n128_u64[1] < v49;
    }

    if (v78)
    {
LABEL_103:
      v79 = 0;
      do
      {
        v80 = v13[v79 + 1].n128_u64[0];
        v81 = v13[v79 + 1].n128_u64[1] < v49;
        v124 = v80 == v30;
        v82 = v80 < v30;
        if (!v124)
        {
          v81 = v82;
        }

        ++v79;
      }

      while (v81);
      v83 = &v13[v79];
      v84 = a2;
      if (v79 == 1)
      {
        v84 = a2;
        do
        {
          if (v83 >= v84)
          {
            break;
          }

          v89 = v84[-1].u64[0];
          v90 = v84[-1].u64[1];
          --v84;
          v91 = v90 < v49;
          v124 = v89 == v30;
          v92 = v89 < v30;
          if (v124)
          {
            v92 = v91;
          }
        }

        while (!v92);
      }

      else
      {
        do
        {
          v85 = v84[-1].u64[0];
          v86 = v84[-1].u64[1];
          --v84;
          v87 = v86 < v49;
          v124 = v85 == v30;
          v88 = v85 < v30;
          if (v124)
          {
            v88 = v87;
          }
        }

        while (!v88);
      }

      v13 = v83;
      if (v83 < v84)
      {
        v93 = v84;
        do
        {
          v186 = *v13;
          *v13 = *v93;
          a6 = v186;
          *v93 = v186;
          do
          {
            v94 = v13[1].n128_u64[0];
            v95 = v13[1].n128_u64[1];
            ++v13;
            v96 = v95 < v49;
            v124 = v94 == v30;
            v97 = v94 < v30;
            if (v124)
            {
              v97 = v96;
            }
          }

          while (v97);
          do
          {
            v98 = v93[-1].n128_u64[0];
            v99 = v93[-1].n128_u64[1];
            --v93;
            v100 = v99 < v49;
            v124 = v98 == v30;
            v101 = v98 < v30;
            if (v124)
            {
              v101 = v100;
            }
          }

          while (!v101);
        }

        while (v13 < v93);
      }

      v102 = v13 - 1;
      if (&v13[-1] != a1)
      {
        a6 = *v102;
        *a1 = *v102;
      }

      v13[-1].n128_u64[0] = v30;
      v13[-1].n128_u64[1] = v49;
      if (v83 < v84)
      {
        goto LABEL_132;
      }

      v103 = sub_4CEF98(a1, v13 - 1, a6);
      if (sub_4CEF98(v13, a2, v104))
      {
        a2 = &v13[-1];
        if (!v103)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v103)
      {
LABEL_132:
        sub_4CE164(a1, &v13[-1], a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v13 = sub_4CEE74(v13->n128_u64, a2);
      a5 = 0;
    }
  }

  v126 = v13 + 1;
  v127 = v13[1].n128_u64[0];
  v128 = v13[1].n128_u64[1];
  v129 = v127 < v13->n128_u64[0];
  if (v127 == v13->n128_u64[0])
  {
    v129 = v128 < v13->n128_u64[1];
  }

  v131 = a2[-1].u64[0];
  v130 = &a2[-1];
  v124 = v131 == v127;
  v132 = v131 < v127;
  if (v124)
  {
    v132 = a2[-1].i64[1] < v128;
  }

  if (v129)
  {
    if (v132)
    {
      v189 = *v13;
      *v13 = *v130;
      v133 = v189;
    }

    else
    {
      v191 = *v13;
      *v13 = *v126;
      *v126 = v191;
      v165 = v13[1].n128_u64[0];
      v166 = a2[-1].u64[0];
      v124 = v166 == v165;
      v167 = v166 < v165;
      if (v124)
      {
        v167 = a2[-1].i64[1] < v13[1].n128_u64[1];
      }

      if (!v167)
      {
        return;
      }

      v133 = *v126;
      *v126 = *v130;
    }

    *v130 = v133;
    return;
  }

  if (v132)
  {
    v151 = *v126;
    *v126 = *v130;
    *v130 = v151;
    v152 = v13[1].n128_u64[0];
    v153 = v152 < v13->n128_u64[0];
    if (v152 == v13->n128_u64[0])
    {
      v153 = v13[1].n128_u64[1] < v13->n128_u64[1];
    }

    if (v153)
    {
      v190 = *v13;
      *v13 = *v126;
      *v126 = v190;
    }
  }
}

__n128 sub_4CECF0(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u64[0];
  v6 = a2->n128_u64[1];
  v7 = v6 < a1->n128_u64[1];
  if (a2->n128_u64[0] != a1->n128_u64[0])
  {
    v7 = a2->n128_u64[0] < a1->n128_u64[0];
  }

  v8 = a3->n128_u64[1] < v6;
  v9 = a3->n128_u64[0] < v5;
  if (a3->n128_u64[0] == v5)
  {
    v9 = v8;
  }

  if (v7)
  {
    if (v9)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v11 = a3->n128_u64[0] < a2->n128_u64[0];
    if (a3->n128_u64[0] == a2->n128_u64[0])
    {
      v11 = a3->n128_u64[1] < a2->n128_u64[1];
    }

    if (v11)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v9)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v10 = a2->n128_u64[0] < a1->n128_u64[0];
    if (a2->n128_u64[0] == a1->n128_u64[0])
    {
      v10 = a2->n128_u64[1] < a1->n128_u64[1];
    }

    if (v10)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v12 = a4->n128_u64[0] < a3->n128_u64[0];
  if (a4->n128_u64[0] == a3->n128_u64[0])
  {
    v12 = a4->n128_u64[1] < a3->n128_u64[1];
  }

  if (v12)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v13 = a3->n128_u64[0] < a2->n128_u64[0];
    if (a3->n128_u64[0] == a2->n128_u64[0])
    {
      v13 = a3->n128_u64[1] < a2->n128_u64[1];
    }

    if (v13)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v14 = a2->n128_u64[0] < a1->n128_u64[0];
      if (a2->n128_u64[0] == a1->n128_u64[0])
      {
        v14 = a2->n128_u64[1] < a1->n128_u64[1];
      }

      if (v14)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

unint64_t *sub_4CEE74(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 2);
  v5 = *a1 == v4;
  v6 = *a1 < v4;
  if (v5)
  {
    v6 = v3 < *(a2 - 1);
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v9 = v7[3];
      v7 += 2;
      v10 = v3 < v9;
      v5 = v2 == v8;
      v11 = v2 < v8;
      if (v5)
      {
        v11 = v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 2;
    do
    {
      v7 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = *v12;
      v14 = v3 < v7[1];
      v5 = v2 == v13;
      v15 = v2 < v13;
      if (!v5)
      {
        v14 = v15;
      }

      v12 = v7 + 2;
    }

    while (!v14);
  }

  if (v7 < a2)
  {
    do
    {
      v16 = *(a2 - 2);
      v17 = *(a2 - 1);
      a2 -= 2;
      v18 = v3 < v17;
      v5 = v2 == v16;
      v19 = v2 < v16;
      if (v5)
      {
        v19 = v18;
      }
    }

    while (v19);
  }

  while (v7 < a2)
  {
    v29 = *v7;
    *v7 = *a2;
    *a2 = v29;
    do
    {
      v20 = v7[2];
      v21 = v7[3];
      v7 += 2;
      v22 = v3 < v21;
      v5 = v2 == v20;
      v23 = v2 < v20;
      if (v5)
      {
        v23 = v22;
      }
    }

    while (!v23);
    do
    {
      v24 = *(a2 - 2);
      v25 = *(a2 - 1);
      a2 -= 2;
      v26 = v3 < v25;
      v5 = v2 == v24;
      v27 = v2 < v24;
      if (v5)
      {
        v27 = v26;
      }
    }

    while (v27);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 2) = v2;
  *(v7 - 1) = v3;
  return v7;
}

BOOL sub_4CEF98(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v29 = a1 + 1;
        v30 = a1[1].n128_u64[0];
        v31 = a1[1].n128_u64[1];
        v32 = v30 < a1->n128_u64[0];
        if (v30 == a1->n128_u64[0])
        {
          v32 = v31 < a1->n128_u64[1];
        }

        v34 = a2[-1].n128_u64[0];
        v33 = a2 - 1;
        v10 = v34 == v30;
        v35 = v34 < v30;
        if (v10)
        {
          v35 = a2[-1].n128_u64[1] < v31;
        }

        if (v32)
        {
          if (v35)
          {
            v36 = *a1;
            *a1 = *v33;
          }

          else
          {
            v58 = *a1;
            *a1 = *v29;
            *v29 = v58;
            v59 = a1[1].n128_u64[0];
            v60 = a2[-1].n128_u64[0];
            v10 = v60 == v59;
            v61 = v60 < v59;
            if (v10)
            {
              v61 = a2[-1].n128_u64[1] < a1[1].n128_u64[1];
            }

            if (!v61)
            {
              return 1;
            }

            v36 = *v29;
            *v29 = *v33;
          }

          *v33 = v36;
          return 1;
        }

        else
        {
          if (!v35)
          {
            return 1;
          }

          v49 = *v29;
          *v29 = *v33;
          *v33 = v49;
          v50 = a1[1].n128_u64[0];
          v51 = v50 < a1->n128_u64[0];
          if (v50 == a1->n128_u64[0])
          {
            v51 = a1[1].n128_u64[1] < a1->n128_u64[1];
          }

          if (!v51)
          {
            return 1;
          }

          v52 = *a1;
          *a1 = *v29;
          *v29 = v52;
          return 1;
        }

      case 4:
        sub_4CECF0(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_4CECF0(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v8 = a2[-1].n128_u64[0];
        v7 = a2 - 1;
        v9 = a1[3].n128_u64[0];
        v10 = v8 == v9;
        v11 = v8 < v9;
        if (v10)
        {
          v11 = a2[-1].n128_u64[1] < a1[3].n128_u64[1];
        }

        if (!v11)
        {
          return 1;
        }

        v12 = a1[3];
        a1[3] = *v7;
        *v7 = v12;
        v13 = a1[2].n128_u64[0];
        v14 = a1[3].n128_u64[0];
        v10 = v14 == v13;
        v15 = v14 < v13;
        if (v10)
        {
          v15 = a1[3].n128_u64[1] < a1[2].n128_u64[1];
        }

        if (!v15)
        {
          return 1;
        }

        v16 = a1[2];
        a1[2] = a1[3];
        a1[3] = v16;
        v17 = a1[1].n128_u64[0];
        v18 = a1[2].n128_u64[0];
        v10 = v18 == v17;
        v19 = v18 < v17;
        if (v10)
        {
          v19 = a1[2].n128_u64[1] < a1[1].n128_u64[1];
        }

        if (!v19)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = a1[2];
        a1[2] = v20;
        v21 = a1[1].n128_u64[0];
        v22 = v21 < a1->n128_u64[0];
        if (v21 == a1->n128_u64[0])
        {
          v22 = a1[1].n128_u64[1] < a1->n128_u64[1];
        }

        if (!v22)
        {
          return 1;
        }

        v23 = *a1;
        *a1 = a1[1];
        a1[1] = v23;
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v25 = a2[-1].n128_u64[0];
      v26 = a2[-1].n128_u64[1];
      v24 = a2 - 1;
      v10 = v25 == a1->n128_u64[0];
      v27 = v25 < a1->n128_u64[0];
      if (v10)
      {
        v27 = v26 < a1->n128_u64[1];
      }

      if (!v27)
      {
        return 1;
      }

      v28 = *a1;
      *a1 = *v24;
      *v24 = v28;
      return 1;
    }
  }

  v37 = a1 + 2;
  v38 = a1[2].n128_u64[0];
  v39 = a1 + 1;
  v40 = a1[1].n128_u64[0];
  v41 = a1->n128_u64[0];
  v42 = a1->n128_u64[1];
  v43 = a1[1].n128_u64[1];
  v44 = v40 < a1->n128_u64[0];
  if (v40 == a1->n128_u64[0])
  {
    v44 = v43 < v42;
  }

  v45 = a1[2].n128_u64[1];
  v46 = v45 < v43;
  v10 = v38 == v40;
  v47 = v38 < v40;
  if (v10)
  {
    v47 = v46;
  }

  if (!v44)
  {
    if (v47)
    {
      v53 = *v39;
      *v39 = *v37;
      *v37 = v53;
      v54 = a1[1].n128_u64[0];
      v55 = a1[1].n128_u64[1] < v42;
      v10 = v54 == v41;
      v56 = v54 < v41;
      if (v10)
      {
        v56 = v55;
      }

      if (v56)
      {
        v57 = *a1;
        *a1 = *v39;
        *v39 = v57;
      }
    }

    goto LABEL_60;
  }

  if (v47)
  {
    v48 = *a1;
    *a1 = *v37;
  }

  else
  {
    v62 = *a1;
    *a1 = *v39;
    *v39 = v62;
    v63 = a1[1].n128_u64[0];
    v10 = v38 == v63;
    v64 = v38 < v63;
    if (v10)
    {
      v64 = v45 < a1[1].n128_u64[1];
    }

    if (!v64)
    {
      goto LABEL_60;
    }

    v48 = *v39;
    *v39 = *v37;
  }

  *v37 = v48;
LABEL_60:
  v65 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = v37->n128_u64[0];
    v69 = v37->n128_u64[1];
    v70 = v65->n128_u64[0];
    v71 = v65->n128_u64[1];
    v72 = v71 < v69;
    v10 = v65->n128_u64[0] == v68;
    v73 = v65->n128_u64[0] < v68;
    if (v10)
    {
      v73 = v72;
    }

    if (v73)
    {
      break;
    }

LABEL_63:
    v37 = v65;
    v66 += 16;
    if (++v65 == a2)
    {
      return 1;
    }
  }

  v74 = v66;
  do
  {
    v75 = a1 + v74;
    *(a1 + v74 + 48) = *(a1 + v74 + 32);
    if (v74 == -32)
    {
      a1->n128_u64[0] = v70;
      a1->n128_u64[1] = v71;
      if (++v67 != 8)
      {
        goto LABEL_63;
      }

      return &v65[1] == a2;
    }

    v76 = *(v75 + 2);
    v77 = v71 < *(v75 + 3);
    v10 = v70 == v76;
    v78 = v70 < v76;
    if (!v10)
    {
      v77 = v78;
    }

    v74 -= 16;
  }

  while (v77);
  v79 = a1 + v74;
  *(v79 + 6) = v70;
  *(v79 + 7) = v71;
  if (++v67 != 8)
  {
    goto LABEL_63;
  }

  return &v65[1] == a2;
}

uint64x2_t *sub_4CF428(uint64x2_t *a1, uint64x2_t *a2, uint64x2_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v5 = a2;
    v7 = a2 - a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v10 = (v8 - 2) >> 1;
      v11 = v10 + 1;
      i64 = a1[v10].i64;
      do
      {
        sub_4CF7D4(a1, a4, v8, i64);
        i64 -= 2;
        --v11;
      }

      while (v11);
    }

    v13 = v5;
    if (v5 != a3)
    {
      if (v8 >= 2)
      {
        v13 = v5;
        do
        {
          v16 = v13->i64[0] < a1->i64[0];
          if (v13->i64[0] == a1->i64[0])
          {
            v16 = v13->i64[1] < a1->i64[1];
          }

          if (v16)
          {
            v17 = *v13;
            *v13 = *a1;
            *a1 = v17;
            v18 = a1[1].u64[0];
            if (v7 == 32)
            {
              v19 = a1 + 1;
              v20 = 1;
            }

            else
            {
              v21 = a1[2].u64[0];
              v22 = a1[1].i64[1] < a1[2].i64[1];
              if (v18 != v21)
              {
                v22 = v18 < v21;
              }

              v23 = !v22;
              if (v22)
              {
                v18 = a1[2].u64[0];
                v19 = a1 + 2;
              }

              else
              {
                v19 = a1 + 1;
              }

              if (v23)
              {
                v20 = 1;
              }

              else
              {
                v20 = 2;
              }
            }

            v24 = a1->i64[0];
            v25 = a1->u64[1];
            v23 = v18 == a1->i64[0];
            v26 = v18 < a1->i64[0];
            if (v23)
            {
              v26 = v19->i64[1] < v25;
            }

            if (!v26)
            {
              v27 = a1;
              do
              {
                v33 = v27;
                v27 = v19;
                *v33 = *v19;
                if (((v8 - 2) >> 1) < v20)
                {
                  break;
                }

                v34 = (2 * v20) | 1;
                v19 = &a1[v34];
                v20 = 2 * v20 + 2;
                if (v20 < v8)
                {
                  v28 = v19->i64[0];
                  v29 = vmovn_s64(vcgtq_u64(v19[1], *v19));
                  v30 = v29.i8[4];
                  if (v19->i64[0] != v19[1].i64[0])
                  {
                    v30 = v29.i8[0];
                  }

                  if (v30)
                  {
                    v28 = v19[1].u64[0];
                    ++v19;
                  }

                  else
                  {
                    v20 = v34;
                  }
                }

                else
                {
                  v28 = v19->i64[0];
                  v20 = v34;
                }

                v31 = v19->i64[1] < v25;
                v23 = v28 == v24;
                v32 = v28 < v24;
                if (!v23)
                {
                  v31 = v32;
                }
              }

              while (!v31);
              *v27 = v24;
              v27[1] = v25;
            }
          }

          ++v13;
        }

        while (v13 != a3);
      }

      else
      {
        v13 = v5;
        do
        {
          v14 = v13->i64[0] < a1->i64[0];
          if (v13->i64[0] == a1->i64[0])
          {
            v14 = v13->i64[1] < a1->i64[1];
          }

          if (v14)
          {
            v15 = *v13;
            *v13 = *a1;
            *a1 = v15;
          }

          ++v13;
        }

        while (v13 != a3);
      }
    }

    if (v8 >= 2)
    {
      do
      {
        v37 = 0;
        v58 = *a1;
        v38 = (v8 - 2) >> 1;
        v39 = a1;
        do
        {
          while (1)
          {
            v47 = &v39[v37];
            v46 = v47 + 1;
            v48 = (2 * v37) | 1;
            v37 = 2 * v37 + 2;
            if (v37 < v8)
            {
              break;
            }

            v37 = v48;
            *v39 = *v46;
            v39 = v47 + 1;
            if (v48 > v38)
            {
              goto LABEL_58;
            }
          }

          v41 = v47[2].u64[0];
          v42 = v47[2].u64[1];
          v40 = v47 + 2;
          v43 = v40[-1].u64[0];
          v44 = v40[-1].i64[1] < v42;
          v23 = v43 == v41;
          v45 = v43 < v41;
          if (v23)
          {
            v45 = v44;
          }

          if (v45)
          {
            v46 = v40;
          }

          else
          {
            v37 = v48;
          }

          *v39 = *v46;
          v39 = v46;
        }

        while (v37 <= v38);
LABEL_58:
        if (v46 == --v5)
        {
          *v46 = v58;
        }

        else
        {
          *v46 = *v5;
          *v5 = v58;
          v49 = (v46 - a1 + 16) >> 4;
          v36 = v49 < 2;
          v50 = v49 - 2;
          if (!v36)
          {
            v51 = v50 >> 1;
            v52 = &a1[v51];
            v53 = v46->i64[0];
            v54 = v46->u64[1];
            v55 = v52->i64[0] < v46->i64[0];
            if (v52->i64[0] == v46->i64[0])
            {
              v55 = v52->i64[1] < v54;
            }

            if (v55)
            {
              do
              {
                v56 = v46;
                v46 = v52;
                *v56 = *v52;
                if (!v51)
                {
                  break;
                }

                v51 = (v51 - 1) >> 1;
                v52 = &a1[v51];
                v57 = v52->i64[0] < v53;
                if (v52->i64[0] == v53)
                {
                  v57 = v52->i64[1] < v54;
                }
              }

              while (v57);
              v46->i64[0] = v53;
              v46->i64[1] = v54;
            }
          }
        }

        v36 = v8-- <= 2;
      }

      while (!v36);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_4CF7D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = v8->i64[0];
      }

      else
      {
        v10 = v8->i64[0];
        v11 = vmovn_s64(vcgtq_u64(v8[1], *v8));
        v12 = v11.i8[4];
        if (v8->i64[0] != v8[1].i64[0])
        {
          v12 = v11.i8[0];
        }

        if (v12)
        {
          v10 = v8[1].u64[0];
          ++v8;
          v7 = v9;
        }
      }

      v13 = *a4;
      v14 = a4[1];
      v15 = v10 == *a4;
      v16 = v10 < *a4;
      if (v15)
      {
        v16 = v8->i64[1] < v14;
      }

      if (!v16)
      {
        do
        {
          v22 = a4;
          a4 = v8;
          *v22 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v23 = (2 * v7) | 1;
          v8 = (result + 16 * v23);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v17 = v8->i64[0];
            v18 = vmovn_s64(vcgtq_u64(v8[1], *v8));
            v19 = v18.i8[4];
            if (v8->i64[0] != v8[1].i64[0])
            {
              v19 = v18.i8[0];
            }

            if (v19)
            {
              v17 = v8[1].u64[0];
              ++v8;
            }

            else
            {
              v7 = v23;
            }
          }

          else
          {
            v17 = v8->i64[0];
            v7 = v23;
          }

          v20 = v8->i64[1] < v14;
          v15 = v17 == v13;
          v21 = v17 < v13;
          if (!v15)
          {
            v20 = v21;
          }
        }

        while (!v20);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

void sub_4CF910()
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
  xmmword_27902A8 = 0u;
  unk_27902B8 = 0u;
  dword_27902C8 = 1065353216;
  sub_3A9A34(&xmmword_27902A8, v0);
  sub_3A9A34(&xmmword_27902A8, v3);
  sub_3A9A34(&xmmword_27902A8, __p);
  sub_3A9A34(&xmmword_27902A8, v9);
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
    qword_2790280 = 0;
    qword_2790288 = 0;
    qword_2790278 = 0;
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

void sub_4CFB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2790290)
  {
    qword_2790298 = qword_2790290;
    operator delete(qword_2790290);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4CFC04(int8x16_t **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 8;
  if (v3 <= 0x17)
  {
    result = 0;
    v5 = v2;
    do
    {
LABEL_8:
      v12 = v5->i64[0];
      v5 = (v5 + 8);
      result |= v12;
    }

    while (v5 != v1);
    return result;
  }

  v6 = (v3 >> 3) + 1;
  v5 = (v2 + 8 * (v6 & 0x3FFFFFFFFFFFFFFCLL));
  v7 = v2 + 1;
  v8 = 0uLL;
  v9 = v6 & 0x3FFFFFFFFFFFFFFCLL;
  v10 = 0uLL;
  do
  {
    v8 = vorrq_s8(v7[-1], v8);
    v10 = vorrq_s8(*v7, v10);
    v7 += 2;
    v9 -= 4;
  }

  while (v9);
  v11 = vorrq_s8(v10, v8);
  result = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_4CFC98(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_F696A8(a2, a1);
  v17 = sub_73EDC(a2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v18 = v17[1];
  if (v18 != *v17)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v18 - *v17) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = sub_73EE4(a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v20 = v19[1];
  if (v20 != *v19)
  {
    if (((v20 - *v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0xFFFF;
  sub_4D02AC(a1 + 136, a2, *a3);
  sub_4D0400(a1 + 312, a2, a3[1]);
  v21 = *a7;
  *(a1 + 496) = *(a7 + 2);
  *(a1 + 488) = v21;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 504) = *(a7 + 1);
  *(a1 + 520) = a7[4];
  a7[2] = 0;
  a7[3] = 0;
  a7[4] = 0;
  v22 = a7[5];
  *(a1 + 536) = *(a7 + 12);
  *(a1 + 528) = v22;
  *(a1 + 544) = sub_F6B804(a2);
  v23 = *a6;
  *(a1 + 560) = *(a6 + 2);
  *(a1 + 552) = v23;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 568) = *(a6 + 1);
  *(a1 + 584) = a6[4];
  a6[4] = 0;
  *(a6 + 1) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a6 + 5);
  *(a1 + 608) = a6[7];
  a6[7] = 0;
  *(a6 + 5) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a6 + 4);
  *(a1 + 632) = a6[10];
  a6[10] = 0;
  *(a6 + 4) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 640) = *(a6 + 11);
  *(a1 + 656) = a6[13];
  a6[13] = 0;
  *(a6 + 11) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 664) = *(a6 + 7);
  *(a1 + 680) = a6[16];
  a6[16] = 0;
  *(a6 + 7) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a6 + 17);
  *(a1 + 704) = a6[19];
  a6[19] = 0;
  *(a6 + 17) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a6 + 10);
  *(a1 + 728) = a6[22];
  a6[22] = 0;
  *(a6 + 10) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a6 + 23);
  *(a1 + 752) = a6[25];
  a6[25] = 0;
  *(a6 + 23) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a6 + 13);
  *(a1 + 776) = a6[28];
  a6[28] = 0;
  *(a6 + 13) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 784) = *(a6 + 29);
  *(a1 + 800) = a6[31];
  a6[31] = 0;
  *(a6 + 29) = 0u;
  v24 = *(a6 + 17);
  *(a1 + 808) = *(a6 + 16);
  *(a1 + 824) = v24;
  *(a1 + 840) = a4;
  *(a1 + 848) = a5;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 856) = *a10;
  *(a1 + 872) = *(a10 + 16);
  *(a10 + 16) = 0;
  *a10 = 0u;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 880) = *(a10 + 24);
  *(a1 + 896) = *(a10 + 40);
  *(a10 + 40) = 0;
  *(a10 + 24) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 904) = *(a10 + 48);
  *(a1 + 920) = *(a10 + 64);
  *(a10 + 64) = 0;
  *(a10 + 48) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 928) = *(a10 + 72);
  *(a1 + 944) = *(a10 + 88);
  *(a10 + 88) = 0;
  *(a10 + 72) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 952) = *(a10 + 96);
  *(a1 + 968) = *(a10 + 112);
  *(a10 + 112) = 0;
  *(a10 + 96) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a10 + 120);
  *(a1 + 992) = *(a10 + 136);
  *(a10 + 136) = 0;
  *(a10 + 120) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *a8;
  *(a1 + 1016) = *(a8 + 16);
  *(a8 + 16) = 0;
  *a8 = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *a9;
  *(a1 + 1040) = *(a9 + 16);
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  sub_81988((a1 + 1048), (a2 + 63));
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  v25 = a2[66];
  v26 = a2[67];
  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4D016C(_Unwind_Exception *a1)
{
  sub_3EE86C((v1 + 1024));
  v6 = *(v4 + 496);
  if (v6)
  {
    *(v1 + 1008) = v6;
    operator delete(v6);
  }

  sub_3EE920(v3);
  sub_3EE9A4((v1 + 552));
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 512) = v7;
    operator delete(v7);
  }

  sub_3EDA0C((v1 + 312));
  sub_3EDA0C((v2 + 64));
  sub_21DB4B4(v2);
  v8 = *(v1 + 48);
  if (v8)
  {
    *(v1 + 56) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 24);
  if (v9)
  {
    *(v1 + 32) = v9;
    operator delete(v9);
    v10 = *v1;
    if (!*v1)
    {
LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v10 = *v1;
    if (!*v1)
    {
      goto LABEL_9;
    }
  }

  *(v1 + 8) = v10;
  operator delete(v10);
  _Unwind_Resume(a1);
}

void sub_4D02AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(sub_73F1C(a2) + 8);
  v7 = *(sub_73F1C(a2) + 16);
  v8 = sub_F6A040(a2);
  v9 = *(sub_73F1C(a2) + 40) > 0.95;
  v10 = *(sub_73F1C(a2) + 80);
  v11 = *sub_4D1DB0(a2);
  *&v14[4] = 0u;
  v19 = 0;
  v22 = 0;
  v23 = 0;
  v12 = 0x7FFFFFFFLL;
  v13 = 0x7FFFFFFF;
  *v14 = 0x7FFFFFFF7FFFFFFFLL;
  v15 = 0x8000000080000000;
  *v16 = 0u;
  v17 = 0u;
  *__p_8 = 0u;
  v20 = 0x8000000080000000;
  v21 = 0x7FFFFFFF;
  v24 = xmmword_2297C00;
  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 28) = v9;
  *(a1 + 29) = v10;
  sub_3EDBB0(a1 + 32, &v12);
  *(a1 + 168) = a3;
  if (*(&v17 + 1))
  {
    __p_8[0] = *(&v17 + 1);
    operator delete(*(&v17 + 1));
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_4D0400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(sub_F69058(a2) + 8);
  v7 = *(sub_F69058(a2) + 16);
  v8 = sub_F6A054(a2);
  v9 = *(sub_F69058(a2) + 40) > 0.95;
  v10 = *(sub_F69058(a2) + 80);
  v11 = *sub_F69688(a2);
  *&v14[4] = 0u;
  v19 = 0;
  v22 = 0;
  v23 = 0;
  v12 = 0x7FFFFFFFLL;
  v13 = 0x7FFFFFFF;
  *v14 = 0x7FFFFFFF7FFFFFFFLL;
  v15 = 0x8000000080000000;
  *v16 = 0u;
  v17 = 0u;
  *__p_8 = 0u;
  v20 = 0x8000000080000000;
  v21 = 0x7FFFFFFF;
  v24 = xmmword_2297C00;
  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 28) = v9;
  *(a1 + 29) = v10;
  sub_3EDBB0(a1 + 32, &v12);
  *(a1 + 168) = a3;
  if (*(&v17 + 1))
  {
    __p_8[0] = *(&v17 + 1);
    operator delete(*(&v17 + 1));
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

uint64_t sub_4D0584(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4D05C4(uint64_t a1, char **a2, uint64_t *a3, uint64_t a4, uint64_t **a5, uint64_t *a6)
{
  v7 = a2;
  v8 = a1;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0xFFFF;
  *(a1 + 136) = -1;
  v77 = (a1 + 136);
  *(a1 + 138) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 144) = 0;
  v75 = a1 + 144;
  *(a1 + 168) = 0x7FFFFFFF;
  v9 = a1 + 168;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0u;
  v10 = a1 + 208;
  v78 = (a1 + 72);
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 180) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 192) = 0;
  *&v11 = 0x8000000080000000;
  *(a1 + 200) = 0x8000000080000000;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 260) = 0x7FFFFFFF;
  *(a1 + 264) = 0x8000000080000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = xmmword_2297C00;
  *(a1 + 304) = -1;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 334) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0x7FFFFFFF;
  *(a1 + 356) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 376) = 0x8000000080000000;
  *(a1 + 432) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 436) = 0x7FFFFFFF;
  *(a1 + 440) = 0x8000000080000000;
  *(a1 + 456) = 0;
  *(a1 + 464) = xmmword_2297C00;
  *(a1 + 480) = -1;
  *(a1 + 488) = 0x7FFFFFFF;
  v76 = a1 + 356;
  *(a1 + 492) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0x8000000080000000;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 544) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 552) = 0x8000000080000000;
  *(a1 + 560) = 0x7FFFFFFF;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(&v11 + 1) = 0x8000000080000000;
  *(a1 + 808) = v11;
  *(a1 + 824) = v11;
  *(a1 + 840) = 0;
  *(a1 + 848) = a4;
  v88 = (a1 + 1048);
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 856) = 0u;
  if (!sub_F63D58(a2))
  {
    v74 = v9;
    v108 = 0u;
    v109 = 0u;
    v110 = 1065353216;
    v107[0] = a6;
    v107[1] = &v108;
    v12 = nullsub_1(v7);
    sub_F696A8(*v12, v93);
    v13 = *v8;
    if (*v8)
    {
      v8[1] = v13;
      operator delete(v13);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    *v8 = *v93;
    v87 = v8;
    v8[2] = *&v93[16];
    sub_4D0F94(v10 + 344, *a5);
    v8[105] = sub_F63EFC(v7);
    v14 = nullsub_1(v7);
    v15 = sub_73F1C(*v14);
    sub_4D10A4(v107, 0, *v15, 0, 0);
    v16 = sub_F63FF4(v7);
    if (v16 >= 2)
    {
      v40 = 1;
      v81 = v7;
      v82 = v10;
      v80 = v16;
      do
      {
        v41 = sub_F63CBC(v7, v40);
        sub_49D2CC(v93, v41);
        v42 = sub_F63CBC(v7, v40 - 1);
        sub_49D2CC(v92, v42);
        v43 = *(sub_F69654(v93) + 32);
        v44 = *(sub_F6966C(v92) + 32);
        v45 = v44 == v43 && WORD2(v44) == WORD2(v43) && ((v43 & 0xFF000000000000) == 0) == BYTE6(v44);
        v8 = v87;
        v46 = sub_F6966C(v92);
        v47 = *(sub_F69654(v93) + 32);
        v48 = __PAIR64__(*(v46 + 36), *(v46 + 32)) == __PAIR64__(WORD2(v47), v47) && *(v46 + 38) == BYTE6(v47);
        v84 = v40;
        sub_4D0560();
        v50 = v49;
        v52 = v51;
        v53 = *v87;
        v54 = *(v87 + 8);
        sub_F68FDC();
        sub_4D71A8(v87, v54, v50, v52 + v48, v55, v56, v56 - (v52 + v48));
        sub_4D12C8(v10 + 344, &(*a5)[36 * v84], v48);
        v57 = sub_F69058(v92);
        v85 = 0xCCCCCCCCCCCCCCCDLL * (&v54[-v53] >> 3) - 1;
        v86 = 0xCCCCCCCCCCCCCCCDLL * (&v54[-v53] >> 3);
        sub_4D10A4(v107, v85, *v57, v84, v45);
        v58 = v105;
        v59 = v106;
        for (i = v85; v58 != v59; ++v58)
        {
          while (1)
          {
            v61 = *v58 + i;
            if (v61 >= v8[132])
            {
              sub_4D9168(v88, *v58 + v86, 0);
            }

            v8 = v87;
            if ((*(*v88 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
            {
              break;
            }

            if (++v58 == v59)
            {
              goto LABEL_30;
            }
          }

          v62 = *(v87 + 1080);
          v63 = *(v87 + 1088);
          if (v62 >= v63)
          {
            v65 = *(v87 + 1072);
            v66 = v62 - v65;
            v67 = (v62 - v65) >> 3;
            v68 = v67 + 1;
            if ((v67 + 1) >> 61)
            {
              sub_1794();
            }

            v69 = v63 - v65;
            if (v69 >> 2 > v68)
            {
              v68 = v69 >> 2;
            }

            if (v69 >= 0x7FFFFFFFFFFFFFF8)
            {
              v70 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = v68;
            }

            if (v70)
            {
              if (!(v70 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v71 = (v62 - v65) >> 3;
            v8 = v87;
            v72 = (8 * v67);
            v73 = (8 * v67 - 8 * v71);
            *v72 = v61;
            v64 = v72 + 1;
            memcpy(v73, v65, v66);
            *(v87 + 1072) = v73;
            *(v87 + 1080) = v64;
            *(v87 + 1088) = 0;
            if (v65)
            {
              operator delete(v65);
            }

            i = v85;
          }

          else
          {
            *v62 = v61;
            v64 = v62 + 8;
          }

          v8[135] = v64;
          *(v8[131] + 8 * (v61 >> 6)) |= 1 << v61;
        }

LABEL_30:
        sub_4547F0(v92);
        sub_4547F0(v93);
        v40 = v84 + 1;
        v7 = v81;
        v10 = v82;
      }

      while (v80 != v84 + 1);
    }

    v17 = v8;
    v18 = v8[1];
    v19 = *v17;
    v20 = nullsub_1(v7);
    v21 = *sub_F69058(*(v20 + 8) - 552);
    v22 = sub_F63FF4(v7);
    sub_4D10A4(v107, 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 3) - 1, v21, v22, 0);
    sub_4D16A4(v78, &v108, v89);
    if (__p)
    {
      v91 = __p;
      operator delete(__p);
    }

    if (v89[0])
    {
      v89[1] = v89[0];
      operator delete(v89[0]);
    }

    v23 = nullsub_1(v7);
    sub_4D02AC(v93, *v23, *a3);
    *v77 = *v93;
    *v75 = *&v93[8];
    *(v75 + 14) = *&v93[22];
    v24 = v95;
    *v74 = v94;
    *(v74 + 16) = v24;
    *(v74 + 32) = v96;
    v25 = *v10;
    if (*v10)
    {
      *(v87 + 216) = v25;
      operator delete(v25);
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
    }

    v26 = *(v87 + 232);
    *(v87 + 208) = v97;
    *(v87 + 224) = v98;
    v98 = 0;
    v97 = 0uLL;
    if (v26)
    {
      *(v87 + 240) = v26;
      operator delete(v26);
      *(v87 + 232) = 0;
      *(v87 + 240) = 0;
      *(v87 + 248) = 0;
    }

    v27 = v97;
    *(v87 + 248) = v100;
    *(v87 + 304) = v104;
    *(v87 + 232) = v99;
    v100 = 0;
    v99 = 0uLL;
    v28 = v102;
    *(v87 + 256) = v101;
    *(v87 + 272) = v28;
    *(v87 + 288) = v103;
    if (v27)
    {
      *(&v97 + 1) = v27;
      operator delete(v27);
    }

    v29 = nullsub_1(v7);
    sub_4D0400(v93, *(v29 + 8) - 552, a3[1]);
    *(v10 + 104) = *v93;
    *(v10 + 112) = *&v93[8];
    *(v10 + 126) = *&v93[22];
    v30 = v95;
    *(v10 + 136) = v94;
    *(v10 + 152) = v30;
    *(v10 + 168) = v96;
    v31 = *(v10 + 176);
    if (v31)
    {
      *(v87 + 392) = v31;
      operator delete(v31);
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 192) = 0;
    }

    *(v87 + 384) = v97;
    *(v87 + 400) = v98;
    v98 = 0;
    v97 = 0uLL;
    v32 = *(v87 + 408);
    if (v32)
    {
      *(v87 + 416) = v32;
      operator delete(v32);
      *(v76 + 60) = 0;
      *(v76 + 52) = 0;
      *(v76 + 68) = 0;
    }

    *(v76 + 52) = v99;
    v33 = v97;
    *(v87 + 424) = v100;
    v100 = 0;
    v99 = 0uLL;
    v34 = v102;
    *(v87 + 432) = v101;
    *(v87 + 448) = v34;
    *(v87 + 464) = v103;
    *(v87 + 480) = v104;
    if (v33)
    {
      *(&v97 + 1) = v33;
      operator delete(v33);
    }

    *(v87 + 544) = sub_F65698(v7);
    v35 = v109;
    if (v109)
    {
      do
      {
        v38 = *v35;
        v39 = v35[3];
        if (v39)
        {
          v35[4] = v39;
          operator delete(v39);
        }

        operator delete(v35);
        v35 = v38;
      }

      while (v38);
    }

    v36 = v108;
    *&v108 = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v87;
  }

  return v8;
}

void sub_4D0E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_39AFC(v27 - 144);
  sub_4D0584(a25);
  sub_3EE86C((v26 + 816));
  v29 = *(v25 + 1000);
  if (v29)
  {
    *(v25 + 1008) = v29;
    operator delete(v29);
  }

  sub_3EE920(a11);
  sub_3EE9A4((v26 + 344));
  v30 = *(v26 + 296);
  if (v30)
  {
    *(v25 + 512) = v30;
    operator delete(v30);
  }

  sub_3EDA0C((v26 + 104));
  sub_3EDA0C(a14);
  sub_21DB4B4(a15);
  v31 = *(v25 + 48);
  if (v31)
  {
    *(v25 + 56) = v31;
    operator delete(v31);
    v32 = *(v25 + 24);
    if (!v32)
    {
LABEL_7:
      v33 = *v25;
      if (!*v25)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v32 = *(v25 + 24);
    if (!v32)
    {
      goto LABEL_7;
    }
  }

  *(v25 + 32) = v32;
  operator delete(v32);
  v33 = *v25;
  if (!*v25)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v25 + 8) = v33;
  operator delete(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_4D0F94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (a1 != a2)
  {
    sub_146EC((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 2);
    sub_146EC((a1 + 40), a2[5], a2[6], (a2[6] - a2[5]) >> 2);
    sub_146EC((a1 + 64), a2[8], a2[9], (a2[9] - a2[8]) >> 2);
    sub_146EC((a1 + 88), a2[11], a2[12], (a2[12] - a2[11]) >> 2);
    sub_146EC((a1 + 112), a2[14], a2[15], (a2[15] - a2[14]) >> 2);
    sub_146EC((a1 + 136), a2[17], a2[18], (a2[18] - a2[17]) >> 2);
    sub_146EC((a1 + 160), a2[20], a2[21], (a2[21] - a2[20]) >> 2);
    sub_146EC((a1 + 184), a2[23], a2[24], (a2[24] - a2[23]) >> 2);
    sub_146EC((a1 + 208), a2[26], a2[27], (a2[27] - a2[26]) >> 2);
    sub_146EC((a1 + 232), a2[29], a2[30], (a2[30] - a2[29]) >> 2);
  }

  v5 = *(a2 + 17);
  *(a1 + 256) = *(a2 + 16);
  *(a1 + 272) = v5;
  return a1;
}

void sub_4D10A4(uint64_t **a1, unint64_t a2, int a3, uint64_t a4, char a5)
{
  v25[0] = a2;
  v7 = **a1;
  if (v7 == (*a1)[1])
  {
    v9 = 0;
    memset(&v25[3], 0, 23);
  }

  else
  {
    v8 = (v7 + 24 * a4);
    v9 = *v8;
    *&v25[3] = *(v8 + 1);
    *(&v25[4] + 7) = *(v8 + 2);
  }

  v10 = a1[1];
  v25[2] = v25;
  v11 = sub_4D6E6C(v10, v25);
  v12 = v11;
  v13 = v11[4];
  v14 = v11[5];
  if (v13 >= v14)
  {
    v16 = v11[3];
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 4) + 1;
    if (v17 > 0x555555555555555)
    {
      sub_1794();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v16) >> 4);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x2AAAAAAAAAAAAAALL)
    {
      v19 = 0x555555555555555;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v20 = 16 * ((v13 - v16) >> 4);
    *v20 = v25[0];
    *(v20 + 8) = a3;
    *(v20 + 16) = v9;
    *(v20 + 17) = *&v25[3];
    *(v20 + 32) = *(&v25[4] + 7);
    *(v20 + 40) = a5;
    v15 = v20 + 48;
    if (v16 != v13)
    {
      v21 = v16;
      v22 = (16 * ((v13 - v16) >> 4) - (v13 - v16));
      do
      {
        v23 = *v21;
        v24 = v21[2];
        v22[1] = v21[1];
        v22[2] = v24;
        *v22 = v23;
        v22 += 3;
        v21 += 3;
      }

      while (v21 != v13);
    }

    v12[3] = 16 * ((v13 - v16) >> 4) - (v13 - v16);
    v12[4] = v15;
    v12[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v13 = v25[0];
    *(v13 + 8) = a3;
    *(v13 + 16) = v9;
    *(v13 + 17) = *&v25[3];
    *(v13 + 32) = *(&v25[4] + 7);
    *(v13 + 40) = a5;
    v15 = v13 + 48;
  }

  v12[4] = v15;
}

char *sub_4D12C8(uint64_t a1, uint64_t a2, int a3)
{
  v91 = a3;
  v90 = &v91;
  v5 = *(a1 + 4);
  v6 = *(a2 + 4);
  v7 = v6 == 0x7FFFFFFF || v5 == 0x7FFFFFFF;
  v8 = v6 + v5;
  if (v7)
  {
    v8 = 0x7FFFFFFF;
  }

  *(a1 + 4) = v8;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v10 != v9)
  {
    v11 = *(a1 + 24);
    if (*(a1 + 16) != v11)
    {
      if (a3)
      {
        v12 = *(v11 - 1);
        v13 = *v10;
        v14 = v13 == 0x7FFFFFFF || v12 == 0x7FFFFFFF;
        v15 = v13 + v12;
        if (v14)
        {
          v15 = 0x7FFFFFFF;
        }

        *(v11 - 1) = v15;
        v11 = *(a1 + 24);
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }

      sub_183C(a1 + 16, v11, &v10[v16], v9, (v9 - &v10[v16]) >> 2);
    }
  }

  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  if (v18 != v17)
  {
    v19 = *(a1 + 48);
    if (*(a1 + 40) != v19)
    {
      v20 = v91;
      if (v91 == 1)
      {
        v21 = *(v19 - 1);
        v22 = *v18;
        v23 = v22 == 0x7FFFFFFF || v21 == 0x7FFFFFFF;
        v24 = v22 + v21;
        if (v23)
        {
          v24 = 0x7FFFFFFF;
        }

        *(v19 - 1) = v24;
        v19 = *(a1 + 48);
        v18 = *(a2 + 40);
        v17 = *(a2 + 48);
      }

      sub_183C(a1 + 40, v19, &v18[4 * v20], v17, (v17 - &v18[4 * v20]) >> 2);
    }
  }

  v26 = *(a2 + 64);
  v25 = *(a2 + 72);
  if (v26 != v25)
  {
    v27 = *(a1 + 72);
    if (*(a1 + 64) != v27)
    {
      v28 = v91;
      if (v91 == 1)
      {
        v29 = *(v27 - 1);
        v30 = *v26;
        v31 = v30 == 0x7FFFFFFF || v29 == 0x7FFFFFFF;
        v32 = v30 + v29;
        if (v31)
        {
          v32 = 0x7FFFFFFF;
        }

        *(v27 - 1) = v32;
        v27 = *(a1 + 72);
        v26 = *(a2 + 64);
        v25 = *(a2 + 72);
      }

      sub_183C(a1 + 64, v27, &v26[4 * v28], v25, (v25 - &v26[4 * v28]) >> 2);
    }
  }

  v34 = *(a2 + 88);
  v33 = *(a2 + 96);
  if (v34 != v33)
  {
    v35 = *(a1 + 96);
    if (*(a1 + 88) != v35)
    {
      v36 = v91;
      if (v91 == 1)
      {
        v37 = *(v35 - 1);
        v38 = *v34;
        v39 = v38 == 0x7FFFFFFF || v37 == 0x7FFFFFFF;
        v40 = v38 + v37;
        if (v39)
        {
          v40 = 0x7FFFFFFF;
        }

        *(v35 - 1) = v40;
        v35 = *(a1 + 96);
        v34 = *(a2 + 88);
        v33 = *(a2 + 96);
      }

      sub_183C(a1 + 88, v35, &v34[4 * v36], v33, (v33 - &v34[4 * v36]) >> 2);
    }
  }

  v42 = *(a2 + 112);
  v41 = *(a2 + 120);
  if (v42 != v41)
  {
    v43 = *(a1 + 120);
    if (*(a1 + 112) != v43)
    {
      v44 = v91;
      if (v91 == 1)
      {
        v45 = *(v43 - 1);
        v46 = *v42;
        v47 = v46 == 0x7FFFFFFF || v45 == 0x7FFFFFFF;
        v48 = v46 + v45;
        if (v47)
        {
          v48 = 0x7FFFFFFF;
        }

        *(v43 - 1) = v48;
        v43 = *(a1 + 120);
        v42 = *(a2 + 112);
        v41 = *(a2 + 120);
      }

      sub_183C(a1 + 112, v43, &v42[4 * v44], v41, (v41 - &v42[4 * v44]) >> 2);
    }
  }

  v50 = *(a2 + 136);
  v49 = *(a2 + 144);
  if (v50 != v49)
  {
    v51 = *(a1 + 144);
    if (*(a1 + 136) != v51)
    {
      v52 = v91;
      if (v91 == 1)
      {
        v53 = *(v51 - 1);
        v54 = *v50;
        v55 = v54 == 0x7FFFFFFF || v53 == 0x7FFFFFFF;
        v56 = v54 + v53;
        if (v55)
        {
          v56 = 0x7FFFFFFF;
        }

        *(v51 - 1) = v56;
        v51 = *(a1 + 144);
        v50 = *(a2 + 136);
        v49 = *(a2 + 144);
      }

      sub_183C(a1 + 136, v51, &v50[4 * v52], v49, (v49 - &v50[4 * v52]) >> 2);
    }
  }

  v58 = *(a2 + 160);
  v57 = *(a2 + 168);
  if (v58 != v57)
  {
    v59 = *(a1 + 168);
    if (*(a1 + 160) != v59)
    {
      v60 = v91;
      if (v91 == 1)
      {
        v61 = *(v59 - 1);
        v62 = *v58;
        v63 = v62 == 0x7FFFFFFF || v61 == 0x7FFFFFFF;
        v64 = v62 + v61;
        if (v63)
        {
          v64 = 0x7FFFFFFF;
        }

        *(v59 - 1) = v64;
        v59 = *(a1 + 168);
        v58 = *(a2 + 160);
        v57 = *(a2 + 168);
      }

      sub_183C(a1 + 160, v59, &v58[4 * v60], v57, (v57 - &v58[4 * v60]) >> 2);
    }
  }

  sub_4D7750(&v90, (a1 + 184), (a2 + 184));
  sub_4D7750(&v90, (a1 + 208), (a2 + 208));
  result = sub_4D7750(&v90, (a1 + 232), (a2 + 232));
  *(a1 + 260) = *(a2 + 260);
  v66 = *(a1 + 264);
  v67 = *(a2 + 264);
  v68 = v67 == 0x7FFFFFFF || v66 == 0x7FFFFFFF;
  v69 = v67 + v66;
  if (v68)
  {
    v69 = 0x7FFFFFFF;
  }

  *(a1 + 264) = v69;
  v70 = *(a1 + 268);
  v71 = *(a2 + 268);
  v72 = v71 == 0x7FFFFFFF || v70 == 0x7FFFFFFF;
  v73 = v71 + v70;
  if (v72)
  {
    v73 = 0x7FFFFFFF;
  }

  *(a1 + 268) = v73;
  v74 = *(a1 + 272);
  v75 = *(a2 + 272);
  v76 = v75 == 0x7FFFFFFF || v74 == 0x7FFFFFFF;
  v77 = v75 + v74;
  if (v76)
  {
    v77 = 0x7FFFFFFF;
  }

  *(a1 + 272) = v77;
  v78 = *(a1 + 276);
  v79 = *(a2 + 276);
  v80 = v79 == 0x7FFFFFFF || v78 == 0x7FFFFFFF;
  v81 = v79 + v78;
  if (v80)
  {
    v81 = 0x7FFFFFFF;
  }

  *(a1 + 276) = v81;
  v82 = *(a1 + 280);
  v83 = *(a2 + 280);
  v84 = v83 == 0x7FFFFFFF || v82 == 0x7FFFFFFF;
  v85 = v83 + v82;
  if (v84)
  {
    v85 = 0x7FFFFFFF;
  }

  *(a1 + 280) = v85;
  v86 = *(a1 + 284);
  v87 = *(a2 + 284);
  v88 = v87 == 0x7FFFFFFF || v86 == 0x7FFFFFFF;
  v89 = v87 + v86;
  if (v88)
  {
    v89 = 0x7FFFFFFF;
  }

  *(a1 + 284) = v89;
  return result;
}

void sub_4D16A4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a1[1] = *a1;
  a1[4] = a1[3];
  for (i = *(a2 + 16); i; i = *i)
  {
    v4 = i[3];
    v5 = i[4];
    if (v4 != v5)
    {
      operator new();
    }
  }

  sub_3EDA50(a3, a1);
}

void sub_4D1D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    v13 = a1;
    operator delete(v12);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

void *sub_4D1DDC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  *a2 = result;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v2;
  return result;
}

void *sub_4D1E00@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  *a2 = result;
  a2[1] = v2;
  a2[2] = result;
  a2[3] = v2;
  return result;
}

uint64_t sub_4D1E24@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = 0;
  return result;
}

uint64_t sub_4D1E40@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1008);
  *a2 = *(result + 1000);
  a2[1] = v2;
  return result;
}

char *sub_4D1E7C(uint64_t a1, uint64_t a2)
{
  result = (a1 + 72);
  if (result != a2)
  {
    sub_4D7894(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);

    return sub_31F64((a1 + 96), v5, v6, (v6 - v5) >> 3);
  }

  return result;
}

uint64_t sub_4D1EF8(void *a1, uint64_t a2)
{
  v2 = a1[12];
  v3 = a1[13] - v2;
  result = a1[9];
  if (a2 + 1 < (v3 >> 3))
  {
    result += 48 * *(v2 + 8 * a2);
  }

  return result;
}

uint64_t sub_4D1F44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = result;
  a4[3] = a3;
  return result;
}

uint64_t sub_4D1F7C(int ***a1)
{
  v3 = a1[1] - *a1;
  if (v3)
  {
    v12[7] = v1;
    v12[8] = v2;
    v4 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    if (v4 == (a1[72] - a1[71]) >> 2 && v4 == (a1[75] - a1[74]) >> 2 && v4 == (a1[78] - a1[77]) >> 2 && (!sub_4DADBC((a1 + 61)) || sub_4DADBC((a1 + 61)) == v4))
    {
      v11 = 1;
      v10 = &v11;
      v6 = *a1;
      v7 = a1[1];
      if (*a1 != v7 && v6 + 5 != v7)
      {
        do
        {
          sub_4D97E8(&v10, v6, v6 + 5);
          v8 = v6 + 10;
          v6 += 5;
        }

        while (v8 != v7);
        v6 = *a1;
        v7 = a1[1];
      }

      for (v12[0] = &v11; v6 != v7; v6 += 5)
      {
        sub_4D9AFC(v12, v6);
      }

      LOBYTE(v3) = v11;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_4D20E0(int ***a1)
{
  if (*a1 == a1[1])
  {
    return 2;
  }

  v1 = **a1;
  v2 = (v1 - *v1);
  return *v2 < 0x9Bu || (v3 = v2[77]) == 0 || (*(v1 + v3 + 1) & 0x80) == 0;
}

uint64_t sub_4D2148(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return (1000000000 - *(a1 + 160));
  }

  v2 = *(a1 + 96);
  if (a2 < (*(a1 + 104) - v2) >> 3 && (v3 = (v2 + 8 * a2), v4 = *(v3 - 1), (v5 = 48 * (*v3 - v4)) != 0) && (v6 = *(a1 + 72) + 48 * v4 + v5, *(v6 - 8) == 1))
  {
    return (1000000000 - *(v6 - 40));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4D21C8(uint64_t a1, unint64_t a2)
{
  v2 = a2 + 1;
  if (a2 + 1 == 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3))
  {
    if (a2)
    {
      v3 = *(a1 + 96);
      if (a2 >= (*(a1 + 104) - v3) >> 3)
      {
        return *(a1 + 336);
      }

      v4 = (v3 + 8 * a2);
      v5 = *(v4 - 1);
      v6 = 48 * (*v4 - v5);
      if (!v6)
      {
        return *(a1 + 336);
      }

      v7 = *(a1 + 72) + 48 * v5 + v6;
      if (*(v7 - 8) != 1)
      {
        return *(a1 + 336);
      }

      v8 = (v7 - 40);
    }

    else
    {
      v8 = (a1 + 160);
    }

    v21 = 1000000000 - *v8;
    v22 = *(a1 + 336);
    if (v21 <= v22)
    {
      return v22;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    v9 = *(a1 + 96);
    v10 = (*(a1 + 104) - v9) >> 3;
    if (v2 >= v10)
    {
      return 1000000000;
    }

    v11 = (v9 + 8 * a2);
    v12 = *v11;
    v13 = 48 * (*(v9 + 8 * v2) - *v11);
    if (!v13)
    {
      return 1000000000;
    }

    v14 = *(a1 + 72);
    v15 = v14 + 48 * v12 + v13;
    if (*(v15 - 8) != 1)
    {
      return 1000000000;
    }

    if (a2)
    {
      if (v10 <= a2)
      {
        return *(v15 - 40);
      }

      v16 = *(v11 - 1);
      v17 = 48 * (v12 - v16);
      if (!v17)
      {
        return *(v15 - 40);
      }

      v18 = v14 + 48 * v16 + v17;
      if (*(v18 - 8) != 1)
      {
        return *(v15 - 40);
      }

      v19 = (v18 - 40);
    }

    else
    {
      v19 = (a1 + 160);
    }

    v23 = 1000000000 - *v19;
    v24 = *(v15 - 40);
    if (v23 <= v24)
    {
      return v24;
    }

    else
    {
      return v23;
    }
  }
}

uint64_t sub_4D2354(void *a1, unint64_t a2)
{
  LODWORD(result) = sub_4D21C8(a1, a2);
  if (a2)
  {
    v5 = a1[12];
    if (a2 >= (a1[13] - v5) >> 3)
    {
      return result;
    }

    v6 = (v5 + 8 * a2);
    v7 = *(v6 - 1);
    v8 = 48 * (*v6 - v7);
    if (!v8)
    {
      return result;
    }

    v9 = a1[9] + 48 * v7 + v8;
    if (*(v9 - 8) != 1)
    {
      return result;
    }

    v10 = (v9 - 40);
  }

  else
  {
    v10 = a1 + 20;
  }

  return (*v10 - 1000000000 + result);
}

uint64_t sub_4D23F8(void *a1, unint64_t a2, double a3)
{
  v5 = *(*a1 + 40 * a2);
  v6 = (v5 - *v5);
  v7 = 0.0;
  if (*v6 >= 9u)
  {
    v8 = v6[4];
    if (v8)
    {
      LODWORD(a3) = *(v5 + v8);
      v7 = *&a3;
    }
  }

  v9 = sub_4D21C8(a1, a2);
  if (a2)
  {
    v10 = a1[12];
    if (a2 >= (a1[13] - v10) >> 3 || (v11 = (v10 + 8 * a2), v12 = *(v11 - 1), (v13 = 48 * (*v11 - v12)) == 0) || (v14 = a1[9] + 48 * v12 + v13, *(v14 - 8) != 1))
    {
      v16 = 0;
      goto LABEL_12;
    }

    v15 = (v14 - 40);
  }

  else
  {
    v15 = a1 + 20;
  }

  v16 = *v15 - 1000000000;
LABEL_12:
  v17 = v7 * ((v16 + v9) / 1000000000.0);
  if (v17 >= 0.0)
  {
    if (v17 < 4.50359963e15)
    {
      v18 = (v17 + v17) + 1;
      return (v18 >> 1);
    }
  }

  else if (v17 > -4.50359963e15)
  {
    v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
    return (v18 >> 1);
  }

  return v17;
}

uint64_t sub_4D2544(void *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, double a6)
{
  v6 = (a3 ^ 1u) + a2;
  v7 = a4 + a5;
  if (v6 <= v7)
  {
    v8 = a4 + a5;
  }

  else
  {
    v8 = (a3 ^ 1u) + a2;
  }

  if (v6 >= v7)
  {
    return 0;
  }

  v10 = 0;
  do
  {
    v10 += sub_4D23F8(a1, v6++, a6);
  }

  while (v8 != v6);
  return v10;
}

uint64_t sub_4D25C0(void *a1, uint64_t a2, double a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += sub_4D23F8(a1, v5++, a3);
  }

  while (a2 != v5);
  return v6;
}

uint64_t sub_4D2630(void *a1, uint64_t a2, double a3)
{
  if (a2 == -1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  do
  {
    v5 += sub_4D23F8(a1, v4++, a3);
  }

  while (v6 != v4);
  return v5;
}

uint64_t sub_4D26B4(unsigned int *a1, int a2)
{
  result = 0x7FFFFFFFLL;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a1[206];
      case 4:
        return a1[207];
      case 5:
        return a1[208];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return a1[204];
    }

    else if (a2 == 2)
    {
      return a1[205];
    }
  }

  else
  {
    return a1[139];
  }

  return result;
}

uint64_t sub_4D2720(uint64_t result, uint64_t a2, int a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = 16;
  if (a3 == 1)
  {
    v4 = 40;
  }

  if (a3 == 2)
  {
    v4 = 64;
  }

  v5 = (*(v3 + v4 + 552) + 4 * a2);
  v6 = v5 + 1;
  do
  {
    v7 = *v5++;
    result = (v7 + result);
  }

  while (v5 != v6);
  return result;
}

uint64_t sub_4D2768(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 1024);
  v3 = *(a1 + 1032);
  if (v2 == v3)
  {
    return 0;
  }

  do
  {
    v4 = *v2 <= a2 && v2[1] >= a2;
    result = v4;
    if (v4)
    {
      break;
    }

    v2 += 8;
  }

  while (v2 != v3);
  return result;
}

uint64_t sub_4D27B4(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v18 = a2[1];
  if (v18 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v18 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_3EDA50((a1 + 72), a11);
  *(a1 + 120) = -1;
  *(a1 + 128) = 0xFFFF;
  *(a1 + 136) = *a7;
  v19 = *(a7 + 8);
  *(a1 + 160) = *(a7 + 24);
  *(a1 + 144) = v19;
  sub_3EDBB0(a1 + 168, (a7 + 32));
  *(a1 + 304) = *(a7 + 168);
  *(a1 + 312) = *a8;
  v20 = *(a8 + 8);
  *(a1 + 336) = *(a8 + 24);
  *(a1 + 320) = v20;
  sub_3EDBB0(a1 + 344, (a8 + 32));
  *(a1 + 480) = *(a8 + 168);
  *(a1 + 488) = 0x7FFFFFFF;
  *(a1 + 492) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0x8000000080000000;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 544) = *a4;
  sub_3EDCF4(a1 + 552, a3);
  *(a1 + 840) = a5;
  *(a1 + 848) = a6;
  *(a1 + 1016) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  v21 = a9[1];
  if (v21 != *a9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v21 - *a9) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  v22 = a10[1];
  if (v22 != *a10)
  {
    if (!(((v22 - *a10) >> 6) >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1048) = 0u;
  return a1;
}

void sub_4D2A74(_Unwind_Exception *a1)
{
  v5 = *(v1 + 504);
  if (v5)
  {
    *(v1 + 512) = v5;
    operator delete(v5);
  }

  sub_3EDA0C((v1 + 312));
  sub_3EDA0C(v2);
  sub_21DB4B4((v3 + 6));
  v6 = *(v1 + 48);
  if (v6)
  {
    *(v1 + 56) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_5:
      v8 = *v1;
      if (!*v1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 32) = v7;
  operator delete(v7);
  v8 = *v1;
  if (!*v1)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_6:
  *(v1 + 8) = v8;
  operator delete(v8);
  goto LABEL_7;
}

uint64_t sub_4D2B4C(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_F6C8F0(a2, a1);
  v17 = sub_73EDC(a2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v18 = v17[1];
  if (v18 != *v17)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v18 - *v17) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = sub_73EE4(a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v20 = v19[1];
  if (v20 != *v19)
  {
    if (((v20 - *v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0xFFFF;
  sub_4D3160(a1 + 136, a2, *a3);
  sub_4D32B4(a1 + 312, a2, a3[1]);
  v21 = *a7;
  *(a1 + 496) = *(a7 + 2);
  *(a1 + 488) = v21;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 504) = *(a7 + 1);
  *(a1 + 520) = a7[4];
  a7[2] = 0;
  a7[3] = 0;
  a7[4] = 0;
  v22 = a7[5];
  *(a1 + 536) = *(a7 + 12);
  *(a1 + 528) = v22;
  *(a1 + 544) = sub_F6E3D4(a2);
  v23 = *a6;
  *(a1 + 560) = *(a6 + 2);
  *(a1 + 552) = v23;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 568) = *(a6 + 1);
  *(a1 + 584) = a6[4];
  a6[4] = 0;
  *(a6 + 1) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a6 + 5);
  *(a1 + 608) = a6[7];
  a6[7] = 0;
  *(a6 + 5) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a6 + 4);
  *(a1 + 632) = a6[10];
  a6[10] = 0;
  *(a6 + 4) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 640) = *(a6 + 11);
  *(a1 + 656) = a6[13];
  a6[13] = 0;
  *(a6 + 11) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 664) = *(a6 + 7);
  *(a1 + 680) = a6[16];
  a6[16] = 0;
  *(a6 + 7) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a6 + 17);
  *(a1 + 704) = a6[19];
  a6[19] = 0;
  *(a6 + 17) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a6 + 10);
  *(a1 + 728) = a6[22];
  a6[22] = 0;
  *(a6 + 10) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a6 + 23);
  *(a1 + 752) = a6[25];
  a6[25] = 0;
  *(a6 + 23) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a6 + 13);
  *(a1 + 776) = a6[28];
  a6[28] = 0;
  *(a6 + 13) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 784) = *(a6 + 29);
  *(a1 + 800) = a6[31];
  a6[31] = 0;
  *(a6 + 29) = 0u;
  v24 = *(a6 + 17);
  *(a1 + 808) = *(a6 + 16);
  *(a1 + 824) = v24;
  *(a1 + 840) = a4;
  *(a1 + 848) = a5;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 856) = *a10;
  *(a1 + 872) = *(a10 + 16);
  *(a10 + 16) = 0;
  *a10 = 0u;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 880) = *(a10 + 24);
  *(a1 + 896) = *(a10 + 40);
  *(a10 + 40) = 0;
  *(a10 + 24) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 904) = *(a10 + 48);
  *(a1 + 920) = *(a10 + 64);
  *(a10 + 64) = 0;
  *(a10 + 48) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 928) = *(a10 + 72);
  *(a1 + 944) = *(a10 + 88);
  *(a10 + 88) = 0;
  *(a10 + 72) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 952) = *(a10 + 96);
  *(a1 + 968) = *(a10 + 112);
  *(a10 + 112) = 0;
  *(a10 + 96) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a10 + 120);
  *(a1 + 992) = *(a10 + 136);
  *(a10 + 136) = 0;
  *(a10 + 120) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *a8;
  *(a1 + 1016) = *(a8 + 16);
  *(a8 + 16) = 0;
  *a8 = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *a9;
  *(a1 + 1040) = *(a9 + 16);
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  sub_81988((a1 + 1048), (a2 + 63));
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  v25 = a2[66];
  v26 = a2[67];
  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}