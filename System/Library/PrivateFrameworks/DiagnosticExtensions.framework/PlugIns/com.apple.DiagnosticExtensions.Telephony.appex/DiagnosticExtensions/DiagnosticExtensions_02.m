void sub_100019090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (*(v73 - 105) < 0)
  {
    operator delete(*(v73 - 128));
  }

  sub_100004DD8(&STACK[0x258]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  sub_100005028(&STACK[0x310]);
  sub_100004DD8(&STACK[0x358]);
  if (a42 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(a43);
LABEL_13:
  v75 = STACK[0x390];
  if (STACK[0x390])
  {
    STACK[0x398] = v75;
    operator delete(v75);
    if (a54 < 0)
    {
LABEL_15:
      operator delete(a49);
      if ((a61 & 0x80000000) == 0)
      {
LABEL_20:
        sub_100005028(&a72);
        sub_100005028(&a73);
        if (SLOBYTE(STACK[0x237]) < 0)
        {
          operator delete(STACK[0x220]);
        }

        sub_100004DD8(&STACK[0x240]);
        if (*(a21 + 23) < 0)
        {
          operator delete(*a21);
        }

        _Unwind_Resume(a1);
      }

LABEL_19:
      operator delete(a56);
      goto LABEL_20;
    }
  }

  else if (a54 < 0)
  {
    goto LABEL_15;
  }

  if ((a61 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_100019420(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

const void **sub_10001946C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000194A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000194D4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100019508(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_100019568(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
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
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_1000195EC(void *a1)
{
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

__n128 sub_1000196B8(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v33 = (a2 - 3);
        v34 = *(a2 - 1);
        if (v34 >= 0)
        {
          v35 = a2 - 3;
        }

        else
        {
          v35 = *(a2 - 3);
        }

        if (v34 >= 0)
        {
          v36 = *(a2 - 1);
        }

        else
        {
          v36 = *(a2 - 2);
        }

        v37 = *(a1 + 23);
        v38 = *a1;
        v39 = *(a1 + 8);
        if (v37 >= 0)
        {
          v40 = a1;
        }

        else
        {
          v40 = *a1;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v41 >= v36)
        {
          v42 = v36;
        }

        else
        {
          v42 = v41;
        }

        v43 = memcmp(v35, v40, v42);
        if (v43)
        {
          if (v43 < 0)
          {
            return result;
          }
        }

        else if (v36 <= v41)
        {
          return result;
        }

        v49 = *(a1 + 16);
        v50 = *(a2 - 1);
        result = *v33;
        *a1 = *v33;
        *(a1 + 16) = v50;
        *(a2 - 3) = v38;
        *(a2 - 2) = v39;
        *(a2 - 1) = v49;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_u64[0] = sub_100019D98(a1, a1 + 24, a1 + 48, a2 - 3).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_100019F3C(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        sub_10001A144(a1, a2);
      }

      else
      {

        sub_10001A308(a1, a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v44 = (v13 - 2) >> 1;
        v45 = v44 + 1;
        v46 = (a1 + 24 * v44);
        do
        {
          sub_10001AD30(a1, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3), v46);
          v46 = (v46 - 24);
          --v45;
        }

        while (v45);
        v47 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_10001B008(a1, a2, a3, v47);
          a2 -= 3;
        }

        while (v47-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = a1 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      sub_100019B5C(v15, a1, a2 - 3);
      if (a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_100019B5C(a1, v15, a2 - 3);
      v16 = 24 * v14;
      v17 = 24 * v14 + a1 - 24;
      sub_100019B5C(a1 + 24, v17, a2 - 6);
      sub_100019B5C(a1 + 48, a1 + 24 + v16, a2 - 9);
      sub_100019B5C(v17, v15, (a1 + 24 + v16));
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *v15;
      *(a1 + 16) = *(v15 + 16);
      *a1 = v20;
      *v15 = v18;
      *(v15 + 8) = v19;
      if (a5)
      {
        goto LABEL_35;
      }
    }

    v21 = *(a1 - 1);
    if (v21 >= 0)
    {
      v22 = (a1 - 24);
    }

    else
    {
      v22 = *(a1 - 24);
    }

    if (v21 >= 0)
    {
      v23 = *(a1 - 1);
    }

    else
    {
      v23 = *(a1 - 16);
    }

    v24 = *(a1 + 23);
    if (v24 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 23);
    }

    else
    {
      v26 = *(a1 + 8);
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v22, v25, v27);
    if (v28)
    {
      if (v28 < 0)
      {
        goto LABEL_39;
      }
    }

    else if (v23 <= v26)
    {
LABEL_39:
      v9 = sub_10001A478(a1, a2);
      goto LABEL_40;
    }

LABEL_35:
    v29 = sub_10001A75C(a1, a2);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = sub_10001AA2C(a1, v29);
    v9 = (v29 + 3);
    if (sub_10001AA2C((v29 + 3), a2))
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v31)
    {
LABEL_38:
      sub_1000196B8(a1, v29, a3, -v11, a5 & 1);
      v9 = (v29 + 3);
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_100019B5C(a1, a1 + 24, a2 - 3);
  return result;
}

uint64_t sub_100019B5C(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v25 = *(a3 + 23);
    if (v25 >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    if (v25 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = a3[1];
    }

    if (v10 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v10;
    }

    v29 = memcmp(v26, v9, v28);
    if (v29)
    {
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v27 > v10)
    {
LABEL_42:
      v30 = *(a2 + 16);
      v31 = a3[2];
      *a2 = *a3;
      *(a2 + 16) = v31;
      *a3 = v7;
      a3[1] = v8;
      a3[2] = v30;
      v32 = *(a2 + 23);
      if (v32 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= 0)
      {
        v34 = *(a2 + 23);
      }

      else
      {
        v34 = *(a2 + 8);
      }

      v35 = *(a1 + 23);
      v36 = *a1;
      v37 = *(a1 + 8);
      if (v35 >= 0)
      {
        v38 = a1;
      }

      else
      {
        v38 = *a1;
      }

      if (v35 >= 0)
      {
        v39 = *(a1 + 23);
      }

      else
      {
        v39 = *(a1 + 8);
      }

      if (v39 >= v34)
      {
        v40 = v34;
      }

      else
      {
        v40 = v39;
      }

      v41 = memcmp(v33, v38, v40);
      if (v41)
      {
        if (v41 < 0)
        {
          return 1;
        }
      }

      else if (v34 <= v39)
      {
        return 1;
      }

      v52 = *(a1 + 16);
      v53 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v53;
      *a2 = v36;
      *(a2 + 8) = v37;
      *(a2 + 16) = v52;
      return 1;
    }

    return 0;
  }

  if (v10 <= v15)
  {
    goto LABEL_31;
  }

LABEL_18:
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  if (v10 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v10;
  }

  v22 = memcmp(v19, v9, v21);
  if (!v22)
  {
    if (v20 > v10)
    {
      goto LABEL_29;
    }

LABEL_61:
    v42 = *(a1 + 16);
    v43 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v43;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v42;
    v44 = *(a3 + 23);
    if (v44 >= 0)
    {
      v45 = a3;
    }

    else
    {
      v45 = *a3;
    }

    if (v44 >= 0)
    {
      v46 = *(a3 + 23);
    }

    else
    {
      v46 = a3[1];
    }

    if (v42 >= 0)
    {
      v47 = a2;
    }

    else
    {
      v47 = v13;
    }

    if (v42 >= 0)
    {
      v48 = HIBYTE(v42);
    }

    else
    {
      v48 = v12;
    }

    if (v48 >= v46)
    {
      v49 = v46;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v45, v47, v49);
    if (v50)
    {
      if (v50 < 0)
      {
        return 1;
      }
    }

    else if (v46 <= v48)
    {
      return 1;
    }

    v54 = *a3;
    *(a2 + 16) = a3[2];
    *a2 = v54;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v42;
    return 1;
  }

  if (v22 < 0)
  {
    goto LABEL_61;
  }

LABEL_29:
  v23 = *(a1 + 16);
  v24 = a3[2];
  *a1 = *a3;
  *(a1 + 16) = v24;
  *a3 = v13;
  a3[1] = v12;
  a3[2] = v23;
  return 1;
}

__n128 sub_100019D98(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  sub_100019B5C(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 sub_100019F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  sub_100019D98(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}

const void **sub_10001A144(const void **result, const void **a2)
{
  if (result != a2)
  {
    v31 = v2;
    v32 = v3;
    v4 = a2;
    v5 = result;
    v6 = result + 3;
    if (result + 3 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v11 = v8;
        v8 = v6;
        v12 = *(v11 + 47);
        if (v12 >= 0)
        {
          v13 = v6;
        }

        else
        {
          v13 = v11[3];
        }

        if (v12 >= 0)
        {
          v14 = *(v11 + 47);
        }

        else
        {
          v14 = v11[4];
        }

        v15 = *(v11 + 23);
        if (v15 >= 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = *v11;
        }

        if (v15 >= 0)
        {
          v17 = *(v11 + 23);
        }

        else
        {
          v17 = v11[1];
        }

        if (v17 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = v17;
        }

        result = memcmp(v13, v16, v18);
        if (result)
        {
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_7;
          }
        }

        else if (v14 <= v17)
        {
          goto LABEL_7;
        }

        v30 = v8[2];
        v29 = *v8;
        if (v30 >= 0)
        {
          v19 = &v29;
        }

        else
        {
          v19 = v29;
        }

        if (v30 >= 0)
        {
          v20 = HIBYTE(v30);
        }

        else
        {
          v20 = *(&v29 + 1);
        }

        *v8 = *v11;
        v8[2] = v11[2];
        *(v11 + 23) = 0;
        *v11 = 0;
        v9 = v5;
        if (v11 == v5)
        {
          goto LABEL_6;
        }

        v21 = v7;
        while (1)
        {
          v22 = v5 + v21;
          v23 = *(v5 + v21 - 24);
          v24 = *(v5 + v21 - 1);
          v25 = v24 >= 0 ? v5 + v21 - 24 : *(v5 + v21 - 24);
          v26 = v24 >= 0 ? *(v5 + v21 - 1) : *(v5 + v21 - 16);
          v27 = (v26 >= v20 ? v20 : v26);
          result = memcmp(v19, v25, v27);
          if (!result)
          {
            break;
          }

          if ((result & 0x80000000) != 0)
          {
            v9 = v11;
            goto LABEL_5;
          }

LABEL_36:
          v11 -= 3;
          *v22 = *(v5 + v21 - 24);
          *(v22 + 16) = *(v5 + v21 - 8);
          *(v22 - 1) = 0;
          *(v22 - 24) = 0;
          v21 -= 24;
          if (!v21)
          {
            v9 = v5;
            goto LABEL_5;
          }
        }

        if (v20 > v26)
        {
          goto LABEL_36;
        }

        v9 = (v5 + v21);
LABEL_5:
        v4 = a2;
LABEL_6:
        v10 = v29;
        v9[2] = v30;
        *v9 = v10;
LABEL_7:
        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != v4);
    }
  }

  return result;
}

const void **sub_10001A308(const void **result, const void **a2)
{
  if (result != a2)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    for (i = result + 3; v5 + 3 != a2; i = v5 + 3)
    {
      v7 = v5;
      v5 = i;
      v8 = *(v7 + 47);
      if (v8 >= 0)
      {
        v9 = i;
      }

      else
      {
        v9 = v7[3];
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 47);
      }

      else
      {
        v10 = v7[4];
      }

      v11 = *(v7 + 23);
      if (v11 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = *v7;
      }

      if (v11 >= 0)
      {
        v13 = *(v7 + 23);
      }

      else
      {
        v13 = v7[1];
      }

      if (v13 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v13;
      }

      result = memcmp(v9, v12, v14);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v10 > v13)
      {
LABEL_25:
        v25 = v5[2];
        v15 = v25;
        v24 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v16 = HIBYTE(v15);
        if ((v16 & 0x80u) == 0)
        {
          v17 = &v24;
        }

        else
        {
          v17 = v24;
        }

        if ((v16 & 0x80u) == 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(&v24 + 1);
        }

        for (j = v5; ; j -= 3)
        {
          *j = *(j - 3);
          j[2] = *(j - 1);
          *(j - 1) = 0;
          *(j - 24) = 0;
          v20 = *(j - 25);
          if (v20 >= 0)
          {
            v21 = j - 6;
          }

          else
          {
            v21 = *(j - 6);
          }

          if (v20 >= 0)
          {
            v22 = *(j - 25);
          }

          else
          {
            v22 = *(j - 5);
          }

          if (v22 >= v18)
          {
            v23 = v18;
          }

          else
          {
            v23 = v22;
          }

          result = memcmp(v17, v21, v23);
          if (result)
          {
            if ((result & 0x80000000) != 0)
            {
LABEL_4:
              *(j - 3) = v24;
              *(j - 1) = v25;
              break;
            }
          }

          else if (v18 <= v22)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_10001A478(__int128 *a1, _OWORD *a2)
{
  j = a2;
  v54 = *(a1 + 2);
  v4 = v54;
  v53 = *a1;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = &v53;
  }

  else
  {
    v6 = v53;
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(&v53 + 1);
  }

  v8 = *(a2 - 3);
  v9 = *(a2 - 1);
  v10 = *(a2 - 2);
  if ((v9 & 0x80u) == 0)
  {
    v11 = a2 - 24;
  }

  else
  {
    v11 = *(a2 - 3);
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = memcmp(v6, v11, v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v7 > v12)
  {
LABEL_18:
    v15 = a1 + 24;
    do
    {
      while (1)
      {
        i = v15;
        v17 = *(v15 + 23);
        v18 = (v17 & 0x80u) == 0 ? i : *i;
        v19 = (v17 & 0x80u) == 0 ? v17 : *(i + 8);
        v20 = v19 >= v7 ? v7 : v19;
        v21 = memcmp(v6, v18, v20);
        v15 = i + 24;
        if (v21)
        {
          break;
        }

        if (v7 > v19)
        {
          goto LABEL_31;
        }
      }
    }

    while (v21 < 0);
    goto LABEL_31;
  }

  for (i = a1 + 24; i < j; i += 24)
  {
    v46 = *(i + 23);
    if (v46 >= 0)
    {
      v47 = i;
    }

    else
    {
      v47 = *i;
    }

    if (v46 >= 0)
    {
      v48 = *(i + 23);
    }

    else
    {
      v48 = *(i + 8);
    }

    if (v48 >= v7)
    {
      v49 = v7;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v6, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        break;
      }
    }

    else if (v7 > v48)
    {
      break;
    }
  }

LABEL_31:
  if (i < j)
  {
    for (j = (j - 24); ; v10 = *(j + 1))
    {
      if ((v9 & 0x80u) == 0)
      {
        v23 = j;
      }

      else
      {
        v23 = v8;
      }

      if ((v9 & 0x80u) == 0)
      {
        v24 = v9;
      }

      else
      {
        v24 = v10;
      }

      if (v24 >= v7)
      {
        v25 = v7;
      }

      else
      {
        v25 = v24;
      }

      v26 = memcmp(v6, v23, v25);
      if (v26)
      {
        if (v26 < 0)
        {
          break;
        }
      }

      else if (v7 <= v24)
      {
        break;
      }

      v22 = *(j - 3);
      j = (j - 24);
      v8 = v22;
      v9 = *(j + 23);
    }
  }

  if (i < j)
  {
    v27 = *i;
    do
    {
      v28 = *(i + 8);
      v29 = *j;
      *(i + 16) = *(j + 2);
      *i = v29;
      *j = v27;
      *(j + 8) = v28;
      if (v54 >= 0)
      {
        v30 = &v53;
      }

      else
      {
        v30 = v53;
      }

      if (v54 >= 0)
      {
        v31 = HIBYTE(v54);
      }

      else
      {
        v31 = *(&v53 + 1);
      }

      v32 = i + 24;
      do
      {
        while (1)
        {
          i = v32;
          v33 = *(v32 + 23);
          v27 = *i;
          v34 = (v33 & 0x80u) == 0 ? i : *i;
          v35 = (v33 & 0x80u) == 0 ? v33 : *(i + 8);
          v36 = v35 >= v31 ? v31 : v35;
          v37 = memcmp(v30, v34, v36);
          v32 = i + 24;
          if (v37)
          {
            break;
          }

          if (v31 > v35)
          {
            goto LABEL_68;
          }
        }
      }

      while (v37 < 0);
LABEL_68:
      v38 = j - 24;
      do
      {
        while (1)
        {
          j = v38;
          v39 = v38[23];
          v40 = (v39 & 0x80u) == 0 ? j : *j;
          v41 = (v39 & 0x80u) == 0 ? v39 : *(j + 1);
          v42 = v41 >= v31 ? v31 : v41;
          v43 = memcmp(v30, v40, v42);
          v38 = j - 24;
          if (v43)
          {
            break;
          }

          if (v31 <= v41)
          {
            goto LABEL_48;
          }
        }
      }

      while ((v43 & 0x80000000) == 0);
LABEL_48:
      ;
    }

    while (i < j);
  }

  v44 = (i - 24);
  if ((i - 24) == a1)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*v44);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v45 = *v44;
    *(a1 + 2) = *(i - 8);
    *a1 = v45;
    *(i - 1) = 0;
    *(i - 24) = 0;
  }

  v51 = v53;
  *(i - 8) = v54;
  *v44 = v51;
  return i;
}

unint64_t sub_10001A75C(__int128 *a1, void *a2)
{
  v4 = 0;
  v52 = *(a1 + 2);
  v51 = *a1;
  v5 = HIBYTE(v52);
  v6 = *(&v51 + 1);
  v7 = v52 < 0;
  if (v52 >= 0)
  {
    v8 = &v51;
  }

  else
  {
    v8 = v51;
  }

  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  while (1)
  {
    v10 = *(a1 + v4 + 24);
    v11 = *(a1 + v4 + 47);
    v12 = v11 >= 0 ? a1 + v4 + 24 : *(a1 + v4 + 24);
    v13 = v11 >= 0 ? *(a1 + v4 + 47) : *(a1 + v4 + 32);
    v14 = v9 >= v13 ? v13 : v9;
    v15 = memcmp(v12, v8, v14);
    if (v15)
    {
      break;
    }

    if (v13 <= v9)
    {
      goto LABEL_20;
    }

LABEL_8:
    v4 += 24;
  }

  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  v16 = a1 + v4 + 24;
  if (v4)
  {
    v17 = a2 - 3;
    do
    {
      while (1)
      {
        a2 = v17;
        v18 = *(v17 + 23);
        v19 = (v18 & 0x80u) == 0 ? a2 : *a2;
        v20 = (v18 & 0x80u) == 0 ? v18 : a2[1];
        v21 = v9 >= v20 ? v20 : v9;
        v22 = memcmp(v19, v8, v21);
        v17 = a2 - 3;
        if (v22)
        {
          break;
        }

        if (v20 > v9)
        {
          goto LABEL_52;
        }
      }
    }

    while (v22 < 0);
  }

  else if (v16 < a2)
  {
    v23 = a2 - 3;
    do
    {
      while (1)
      {
        a2 = v23;
        v24 = *(v23 + 23);
        v25 = (v24 & 0x80u) == 0 ? a2 : *a2;
        v26 = (v24 & 0x80u) == 0 ? v24 : a2[1];
        v27 = v9 >= v26 ? v26 : v9;
        v28 = memcmp(v25, v8, v27);
        v23 = a2 - 3;
        if (!v28)
        {
          break;
        }

        if (v16 >= a2 || (v28 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    while (v16 < a2 && v26 <= v9);
  }

LABEL_52:
  if (v16 >= a2)
  {
    v29 = v16;
  }

  else
  {
    v29 = v16;
    v30 = a2;
    do
    {
      v31 = *(v29 + 8);
      v32 = *v30;
      *(v29 + 16) = v30[2];
      *v29 = v32;
      *v30 = v10;
      *(v30 + 1) = v31;
      if (v52 >= 0)
      {
        v33 = &v51;
      }

      else
      {
        v33 = v51;
      }

      if (v52 >= 0)
      {
        v34 = HIBYTE(v52);
      }

      else
      {
        v34 = *(&v51 + 1);
      }

      v35 = v29 + 24;
      do
      {
        while (1)
        {
          v29 = v35;
          v36 = *(v35 + 23);
          v10 = *v29;
          v37 = (v36 & 0x80u) == 0 ? v29 : *v29;
          v38 = (v36 & 0x80u) == 0 ? v36 : *(v29 + 8);
          v39 = v34 >= v38 ? v38 : v34;
          v40 = memcmp(v37, v33, v39);
          v35 = v29 + 24;
          if (v40)
          {
            break;
          }

          if (v38 <= v34)
          {
            goto LABEL_74;
          }
        }
      }

      while ((v40 & 0x80000000) == 0);
LABEL_74:
      v41 = v30 - 3;
      do
      {
        while (1)
        {
          v30 = v41;
          v42 = *(v41 + 23);
          v43 = (v42 & 0x80u) == 0 ? v30 : *v30;
          v44 = (v42 & 0x80u) == 0 ? v42 : v30[1];
          v45 = v34 >= v44 ? v44 : v34;
          v46 = memcmp(v43, v33, v45);
          v41 = v30 - 3;
          if (v46)
          {
            break;
          }

          if (v44 > v34)
          {
            goto LABEL_54;
          }
        }
      }

      while (v46 < 0);
LABEL_54:
      ;
    }

    while (v29 < v30);
  }

  v47 = (v29 - 24);
  if ((v29 - 24) == a1)
  {
    if (*(v29 - 1) < 0)
    {
      operator delete(*a1);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v48 = *v47;
    *(a1 + 2) = *(v29 - 8);
    *a1 = v48;
    *(v29 - 1) = 0;
    *(v29 - 24) = 0;
  }

  v49 = v51;
  *(v29 - 8) = v52;
  *v47 = v49;
  return v29 - 24;
}

BOOL sub_10001AA2C(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100019B5C(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        sub_100019D98(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        sub_100019F3C(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
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
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  sub_100019B5C(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

__n128 sub_10001AD30(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v61 = v4;
  v62 = v5;
  v8 = a1;
  v9 = v6 >> 1;
  if ((v6 >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v10 = a3;
  v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v12 = a1 + 24 * v11;
  v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v13 >= a3)
  {
    goto LABEL_24;
  }

  v15 = (v12 + 24);
  v14 = *(v12 + 24);
  v16 = *(v12 + 23);
  if (v16 >= 0)
  {
    v17 = (a1 + 24 * v11);
  }

  else
  {
    v17 = *v12;
  }

  if (v16 >= 0)
  {
    v18 = *(v12 + 23);
  }

  else
  {
    v18 = *(v12 + 8);
  }

  v19 = *(v12 + 47);
  if (v19 >= 0)
  {
    v20 = (v12 + 24);
  }

  else
  {
    v20 = *(v12 + 24);
  }

  if (v19 >= 0)
  {
    v21 = *(v12 + 47);
  }

  else
  {
    v21 = *(v12 + 32);
  }

  if (v21 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v23 = memcmp(v17, v20, v22);
  if (v23)
  {
    if (v23 < 0)
    {
LABEL_24:
      v15 = (v8 + 24 * v11);
      v13 = v11;
    }
  }

  else if (v18 == v21 || v18 < v21)
  {
    goto LABEL_24;
  }

  v24 = *(v15 + 23);
  if (v24 >= 0)
  {
    v25 = v15;
  }

  else
  {
    v25 = *v15;
  }

  if (v24 >= 0)
  {
    v26 = *(v15 + 23);
  }

  else
  {
    v26 = v15[1];
  }

  v27 = a4[1].n128_i8[7];
  if (v27 >= 0)
  {
    v28 = a4;
  }

  else
  {
    v28 = a4->n128_u64[0];
  }

  if (v27 >= 0)
  {
    v29 = a4[1].n128_u8[7];
  }

  else
  {
    v29 = a4->n128_u64[1];
  }

  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  v31 = memcmp(v25, v28, v30);
  if (v31)
  {
    if ((v31 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v26 > v29)
  {
    return result;
  }

  v59 = *a4;
  v60 = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  v33 = v15[2];
  *a4 = *v15;
  a4[1].n128_u64[0] = v33;
  *(v15 + 23) = 0;
  *v15 = 0;
  if (v9 >= v13)
  {
    v34 = &v59;
    if (SHIBYTE(v60) < 0)
    {
      v34 = v59.n128_u64[0];
    }

    v57 = v10;
    __s2 = v34;
    if (SHIBYTE(v60) >= 0)
    {
      v35 = HIBYTE(v60);
    }

    else
    {
      v35 = v59.n128_u64[1];
    }

    while (1)
    {
      v37 = (2 * v13) | 1;
      v38 = v8 + 24 * v37;
      v13 = 2 * v13 + 2;
      if (v13 >= v10)
      {
        goto LABEL_74;
      }

      v39 = v8;
      v40 = v9;
      v42 = (v38 + 24);
      v41 = *(v38 + 24);
      v43 = *(v38 + 23);
      v44 = v43 >= 0 ? v38 : *v38;
      v45 = v43 >= 0 ? *(v38 + 23) : *(v38 + 8);
      v46 = *(v38 + 47);
      v47 = v46 >= 0 ? (v38 + 24) : *(v38 + 24);
      v48 = v46 >= 0 ? *(v38 + 47) : *(v38 + 32);
      v49 = v48 >= v45 ? v45 : v48;
      v50 = memcmp(v44, v47, v49);
      if (v50)
      {
        break;
      }

      v51 = v45 >= v48;
      if (v45 == v48)
      {
        v42 = v38;
        v13 = v37;
        v9 = v40;
        v8 = v39;
        v10 = v57;
        goto LABEL_75;
      }

      v9 = v40;
      v8 = v39;
      v10 = v57;
      if (!v51)
      {
        goto LABEL_74;
      }

LABEL_75:
      v52 = *(v42 + 23);
      if (v52 >= 0)
      {
        v53 = v42;
      }

      else
      {
        v53 = *v42;
      }

      if (v52 >= 0)
      {
        v54 = *(v42 + 23);
      }

      else
      {
        v54 = v42[1];
      }

      if (v35 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v35;
      }

      v56 = memcmp(v53, __s2, v55);
      if (v56)
      {
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_86;
        }
      }

      else if (v54 > v35)
      {
        goto LABEL_86;
      }

      v36 = *v42;
      v15[2] = v42[2];
      *v15 = v36;
      *(v42 + 23) = 0;
      *v42 = 0;
      v15 = v42;
      if (v9 < v13)
      {
        goto LABEL_87;
      }
    }

    v9 = v40;
    v8 = v39;
    v10 = v57;
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_74:
    v42 = v38;
    v13 = v37;
    goto LABEL_75;
  }

LABEL_86:
  v42 = v15;
LABEL_87:
  result = v59;
  v42[2] = v60;
  *v42 = result;
  return result;
}

void sub_10001B008(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v5 = 0;
  v29 = *a1;
  v28 = a1[1];
  v27 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  v6 = (a4 - 2) >> 1;
  v7 = a1;
  *a1 = 0;
  do
  {
    v10 = &v7[3 * v5];
    v8 = (v10 + 3);
    v11 = 2 * v5;
    v5 = (2 * v5) | 1;
    v12 = v11 + 2;
    if (v11 + 2 < a4)
    {
      v15 = v10[6];
      v14 = v10 + 6;
      v13 = v15;
      v16 = *(v14 - 1);
      if (v16 >= 0)
      {
        v17 = v8;
      }

      else
      {
        v17 = *(v14 - 3);
      }

      if (v16 >= 0)
      {
        v18 = *(v14 - 1);
      }

      else
      {
        v18 = *(v14 - 2);
      }

      v19 = *(v14 + 23);
      if (v19 >= 0)
      {
        v20 = v14;
      }

      else
      {
        v20 = v13;
      }

      if (v19 >= 0)
      {
        v21 = *(v14 + 23);
      }

      else
      {
        v21 = v14[1];
      }

      if (v21 >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v21;
      }

      v23 = memcmp(v17, v20, v22);
      if (v23)
      {
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_3;
        }
      }

      else if (v18 > v21)
      {
LABEL_3:
        v8 = v14;
        v5 = v12;
      }
    }

    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v9 = *v8;
    v7[2] = *(v8 + 2);
    *v7 = v9;
    *(v8 + 23) = 0;
    *v8 = 0;
    v7 = v8;
  }

  while (v5 <= v6);
  if (v8 == (a2 - 24))
  {
    *v8 = v29;
    *(v8 + 1) = v28;
    *(v8 + 2) = v27;
  }

  else
  {
    v24 = *(a2 - 24);
    *(v8 + 2) = *(a2 - 8);
    *v8 = v24;
    *(a2 - 24) = v29;
    *(a2 - 16) = v28;
    *(a2 - 8) = v27;

    sub_10001B1D4(a1, v8 + 24, a3, 0xAAAAAAAAAAAAAAABLL * ((v8 + 24 - a1) >> 3));
  }
}

__n128 sub_10001B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 24 * (v4 >> 1));
    v9 = (a2 - 24);
    v8 = *(a2 - 24);
    v10 = v7[1].n128_i8[7];
    if (v10 >= 0)
    {
      v11 = (a1 + 24 * (v4 >> 1));
    }

    else
    {
      v11 = v7->n128_u64[0];
    }

    if (v10 >= 0)
    {
      v12 = v7[1].n128_u8[7];
    }

    else
    {
      v12 = v7->n128_u64[1];
    }

    v13 = *(a2 - 1);
    if (v13 >= 0)
    {
      v14 = (a2 - 24);
    }

    else
    {
      v14 = *(a2 - 24);
    }

    if (v13 >= 0)
    {
      v15 = v9[1].n128_u8[7];
    }

    else
    {
      v15 = v9->n128_u64[1];
    }

    if (v15 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v17 = memcmp(v11, v14, v16);
    if (v17)
    {
      if (v17 < 0)
      {
        return result;
      }
    }

    else if (v12 <= v15)
    {
      return result;
    }

    v33 = v9[1].n128_u64[0];
    v19 = v33;
    v32 = *v9;
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    v9->n128_u64[0] = 0;
    v20 = HIBYTE(v19);
    if ((v20 & 0x80u) == 0)
    {
      v21 = &v32;
    }

    else
    {
      v21 = v32.n128_u64[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v32.n128_u64[1];
    }

    v23 = *v7;
    v9[1].n128_u64[0] = v7[1].n128_u64[0];
    *v9 = v23;
    v7[1].n128_u8[7] = 0;
    v7->n128_u8[0] = 0;
    if (v4 >= 2)
    {
      while (1)
      {
        v25 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v26 = (a1 + 24 * v6);
        v27 = v26[1].n128_i8[7];
        if (v27 >= 0)
        {
          v28 = (a1 + 24 * v6);
        }

        else
        {
          v28 = v26->n128_u64[0];
        }

        if (v27 >= 0)
        {
          v29 = v26[1].n128_u8[7];
        }

        else
        {
          v29 = v26->n128_u64[1];
        }

        if (v22 >= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v22;
        }

        v31 = memcmp(v28, v21, v30);
        if (v31)
        {
          if (v31 < 0)
          {
            break;
          }
        }

        else if (v29 <= v22)
        {
          break;
        }

        v24 = *v26;
        v7[1].n128_u64[0] = v26[1].n128_u64[0];
        *v7 = v24;
        v26[1].n128_u8[7] = 0;
        v26->n128_u8[0] = 0;
        v7 = (a1 + 24 * v6);
        if (v25 <= 1)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = v7;
LABEL_43:
    result = v32;
    v26[1].n128_u64[0] = v33;
    *v26 = result;
  }

  return result;
}

void **sub_10001B360(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = __dst[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, a2, __len);
LABEL_25:
          operator delete(v9);
LABEL_26:
          __dst[2] = (v11 | 0x8000000000000000);
          *__dst = v6;
LABEL_27:
          __dst[1] = __len;
          goto LABEL_28;
        }

        v7 = a2;
LABEL_9:
        v12 = 2 * v8;
        if (__len > 2 * v8)
        {
          v12 = __len;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __len);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      sub_100005880();
    }

    v5 = HIBYTE(v10);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = a2;
        v8 = 22;
        v9 = __dst;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(__dst + 23) = __len & 0x7F;
LABEL_28:
  *(v6 + __len) = 0;
  return __dst;
}

void **sub_10001B4D8(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_10001B360(a1, __s, v4);
}

uint64_t sub_10001B520()
{
  v0 = pthread_mutex_lock(&stru_100034618);
  v1 = off_100034658;
  if (!off_100034658)
  {
    ctu::Gestalt::create_default_global(&v8, v0);
    v2 = v8;
    v8 = 0uLL;
    v3 = *(&off_100034658 + 1);
    off_100034658 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&v8 + 1);
    if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_100034658;
  }

  v5 = *(&off_100034658 + 1);
  if (*(&off_100034658 + 1))
  {
    atomic_fetch_add_explicit((*(&off_100034658 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_100034618);
  result = (*(*v1 + 152))(v1);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v7;
    }
  }

  return result;
}

uint64_t sub_10001B6F0(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_10001B7CC()
{
  if ((byte_1000346D0 & 1) == 0)
  {
    byte_1000346D0 = 1;
    return __cxa_atexit(sub_10001B6F0, &stru_100034618, &_mh_execute_header);
  }

  return result;
}

void sub_10001BA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TelephonyExtension;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001CE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10001D2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005CD0(&a9);
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v32 - 104));
  _Unwind_Resume(a1);
}

void sub_10001D380(uint64_t a1, xpc_object_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    return;
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    xpc_retain(a2);
    goto LABEL_5;
  }

  a2 = xpc_null_create();
  if (a2)
  {
LABEL_5:
    if (xpc_get_type(a2) == &_xpc_type_dictionary)
    {
      xpc_retain(a2);
      v6 = a2;
    }

    else
    {
      v6 = xpc_null_create();
    }

    goto LABEL_9;
  }

  v6 = xpc_null_create();
  a2 = 0;
LABEL_9:
  xpc_release(a2);
  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(v6, abm::kKeyTimestampString);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__p, object, "", v8);
  xpc_release(*object);
  v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v10 = __p[0];
    }

    *object = 136315138;
    *&object[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received kEventTracePostProcessingEnd w timestamp [%s]", object, 0xCu);
  }

  v11 = v5 + 64;
  v12 = v5[87];
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (!v5[87])
    {
      goto LABEL_29;
    }

LABEL_21:
    if (SHIBYTE(__p[2]) >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (!strncasecmp(v11, v13, v12))
    {
      v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *object = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Telephony log is ready", object, 2u);
      }

      v15 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (v15)
      {
        dispatch_group_leave(v15);
        dispatch_release(v15);
      }
    }

    goto LABEL_29;
  }

  v12 = *(v5 + 9);
  if (v12)
  {
    v11 = *v11;
    goto LABEL_21;
  }

LABEL_29:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v6);
}

void sub_10001D5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);

  _Unwind_Resume(a1);
}

void sub_10001D648(uint64_t a1, xpc_object_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    return;
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_null_create();
    if (!a2)
    {
      v6 = xpc_null_create();
      a2 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(a2) == &_xpc_type_dictionary)
  {
    xpc_retain(a2);
    v6 = a2;
  }

  else
  {
    v6 = xpc_null_create();
  }

LABEL_9:
  xpc_release(a2);
  value = xpc_dictionary_get_value(v6, abm::kKeyBasebandOperatingMode);
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default(object, 8, v8);
  xpc_release(*object);
  v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9 > 7u)
    {
      v11 = "Unknown";
    }

    else
    {
      v11 = (&off_100031208)[v9 & 7];
    }

    *object = 136315138;
    *&object[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BB mode event [%s]", object, 0xCu);
  }

  v12 = *(v5 + 7);
  if (v12)
  {
    v13 = v5[88];
    if (v13 != 8 && v13 == v9)
    {
      *(v5 + 7) = 0;
      dispatch_group_leave(v12);
      dispatch_release(v12);
    }
  }

  xpc_release(v6);
}

void sub_10001D82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_10001DA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BasebandLogDEHelper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10001DB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10001EFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, xpc_object_t a54)
{
  if (a2)
  {
    sub_100004D3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001F374(_BYTE *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v45 = v4;
  v44 = v4;
  v43 = v4;
  v42 = v4;
  v41 = v4;
  v40 = v4;
  v37 = v4;
  v36 = v4;
  *v32 = v4;
  v33 = v4;
  v30 = v4;
  v31 = v4;
  v28 = v4;
  v29 = v4;
  v39 = 0;
  *(&v27 + *(v27 - 3)) = v5;
  v6 = (&v27 + *(v27 - 3));
  std::ios_base::init(v6, &v28);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::locale::locale(&v28 + 1);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  *v32 = 0u;
  v33 = 0u;
  LODWORD(v34) = 16;
  sub_10001643C(&v28);
  v7 = sub_100016584(&v27);
  v8 = *a2;
  if (*a2 <= -534716413)
  {
    if (v8 <= -534716415)
    {
      if (v8 == -534716416)
      {
        v9 = 14;
        v26 = 14;
        qmemcpy(__p, "kInternalError", 14);
        goto LABEL_25;
      }

      if (v8 == -534716415)
      {
        v9 = 12;
        v26 = 12;
        LODWORD(__p[1]) = 1919906418;
        __p[0] = *"kServerError";
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v8 != -534716414)
    {
      if (v8 == -534716413)
      {
        v9 = 8;
        v26 = 8;
        __p[0] = 0x74756F656D69546BLL;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v9 = 13;
    v26 = 13;
    v10 = "kCommandError";
LABEL_22:
    __p[0] = *v10;
    *(__p + 5) = *(v10 + 5);
    goto LABEL_25;
  }

  if (v8 <= -534716411)
  {
    if (v8 != -534716412)
    {
      if (v8 == -534716411)
      {
        v9 = 6;
        v26 = 6;
        qmemcpy(__p, "kRetry", 6);
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v9 = 13;
    v26 = 13;
    v10 = "kNotSupported";
    goto LABEL_22;
  }

  if (v8 != -534716410)
  {
    if (v8 != -534716409)
    {
      if (!v8)
      {
        v9 = 8;
        v26 = 8;
        __p[0] = 0x737365636375536BLL;
        goto LABEL_25;
      }

LABEL_23:
      v9 = 17;
      v26 = 17;
      v25 = 101;
      v11 = "kInvalidErrorCode";
      goto LABEL_24;
    }

    v9 = 13;
    v26 = 13;
    v10 = "kNotAvailable";
    goto LABEL_22;
  }

  v9 = 17;
  v26 = 17;
  v25 = 100;
  v11 = "kPermissionDenied";
LABEL_24:
  *__p = *v11;
LABEL_25:
  *(__p + v9) = 0;
  v12 = sub_100016584(v7);
  sub_100016584(v12);
  if (v26 < 0)
  {
    operator delete(__p[0]);
    v13 = *(a2 + 31);
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_27:
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v13 = *(a2 + 31);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!*(a2 + 16))
  {
    goto LABEL_35;
  }

LABEL_31:
  v14 = sub_100016584(&v27);
  if (*(a2 + 31) >= 0)
  {
    v16 = *(a2 + 31);
  }

  else
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
  }

  v17 = sub_100016584(v14);
  sub_100016584(v17);
LABEL_35:
  if ((v34 & 0x10) != 0)
  {
    v19 = *(&v33 + 1);
    if (*(&v33 + 1) < v31)
    {
      *(&v33 + 1) = v31;
      v19 = v31;
    }

    v20 = *(&v30 + 1);
    v18 = v19 - *(&v30 + 1);
    if ((v19 - *(&v30 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v18 = 0;
      a1[23] = 0;
      goto LABEL_49;
    }

    v20 = v29;
    v18 = v30 - v29;
    if (v30 - v29 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_53:
      sub_100005880();
    }
  }

  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v22 = operator new(v21);
    *(a1 + 1) = v18;
    *(a1 + 2) = v21 | 0x8000000000000000;
    *a1 = v22;
    a1 = v22;
    goto LABEL_48;
  }

  a1[23] = v18;
  if (v18)
  {
LABEL_48:
    memmove(a1, v20, v18);
  }

LABEL_49:
  a1[v18] = 0;
  if (SBYTE7(v33) < 0)
  {
    operator delete(v32[0]);
  }

  std::locale::~locale(&v28 + 1);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10001F978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v26 + 2);
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10001F9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1000266A0(&a15);
    std::ios::~ios();
    _Unwind_Resume(a1);
  }

  sub_1000266A0(&a15);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10001FC54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001FF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005CD0(&a16);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_100020A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_1000218A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, xpc_object_t object, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_100021EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v29);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  xpc_release(v28);
  _Unwind_Resume(a1);
}

void sub_1000223A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v29);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  xpc_release(v28);
  _Unwind_Resume(a1);
}

unint64_t sub_10002249C(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && (result & 0x8000000000000000) == 0 && !HIDWORD(result))
  {
    goto LABEL_29;
  }

  return result;
}

void sub_100022B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v26 - 57) < 0)
  {
    operator delete(*(v26 - 80));
  }

  xpc_release(v25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_100023734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, id location, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    sub_100004D3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100023904(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    if (!*a2)
    {
      v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dump telephony log and wait for processing", __p, 2u);
      }

      goto LABEL_11;
    }

    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 31) < 0)
      {
        sub_10000595C(__p, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        *__p = *(a2 + 8);
        v11 = *(a2 + 24);
      }

      v9 = __p;
      if (v11 < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Dumping telephony log failed w/ error %s", buf, 0xCu);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v5[87] < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 9) = 0;
      v7 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (!v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v5[64] = 0;
      v5[87] = 0;
      v7 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    dispatch_group_leave(v7);
    dispatch_release(v7);
    goto LABEL_11;
  }
}

void sub_100024450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, id location, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v36);

  _Unwind_Resume(a1);
}

void sub_1000245F8(uint64_t a1, _DWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    if (!*a2)
    {
      v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting baseband successful. Waiting for logs.", v9, 2u);
      }

      goto LABEL_12;
    }

    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Resetting baseband failed", buf, 2u);
      if ((v5[87] & 0x80000000) == 0)
      {
LABEL_5:
        v5[64] = 0;
        v5[87] = 0;
        v7 = *(v5 + 6);
        *(v5 + 6) = 0;
        if (!v7)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if ((v5[87] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    **(v5 + 8) = 0;
    *(v5 + 9) = 0;
    v7 = *(v5 + 6);
    *(v5 + 6) = 0;
    if (!v7)
    {
LABEL_12:

      return;
    }

LABEL_11:
    dispatch_group_leave(v7);
    dispatch_release(v7);
    goto LABEL_12;
  }
}

void sub_100024D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x100024C3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100025238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, xpc_object_t object, char a20, uint64_t a21, xpc_object_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v22);
  sub_100005CD0(&a20);
  _Unwind_Resume(a1);
}

void sub_100025300(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_100025694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, char a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v22);
  sub_100005CD0(&a22);
  _Unwind_Resume(a1);
}

void sub_100025750(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_100025A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, char a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(v22);
  sub_100005CD0(&a22);
  _Unwind_Resume(a1);
}

void sub_100025B40(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_1000260E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100004D3C(exception_object);
}

void sub_100026434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, xpc_object_t a18)
{
  if (a2)
  {
    sub_100004D3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000266A0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_1000267C0(void *a1)
{
  if (a1)
  {
    sub_1000267C0(*a1);
    sub_1000267C0(a1[1]);

    operator delete(a1);
  }
}

const void **sub_100026810(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t abm::client::PerformCommand()
{
  return abm::client::PerformCommand();
}

{
  return abm::client::PerformCommand();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}