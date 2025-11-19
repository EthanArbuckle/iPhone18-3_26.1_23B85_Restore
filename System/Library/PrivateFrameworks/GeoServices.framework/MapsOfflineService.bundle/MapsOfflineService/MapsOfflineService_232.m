uint64_t sub_E55034@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E552B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E552C4@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v26);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v27, a1, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_4A5C(v11, v13, v14);
  v16 = strlen(a3);
  v17 = sub_4A5C(v15, a3, v16);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = *(a4 + 8);
  }

  sub_4A5C(v17, v19, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a5[23] = v21;
  if (v21)
  {
    memmove(a5, v23, v21);
  }

LABEL_24:
  a5[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5559C@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v15, a1, v6);
  std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E55838@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E55AE8(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = (v3 == 0);
    if (!v3)
    {
      break;
    }

    result = sub_138B0(a2, (v3 + 2));
    if (!result)
    {
      break;
    }

    v5 = *(v3 + 39);
    if (v5 >= 0)
    {
      v6 = *(v3 + 39);
    }

    else
    {
      v6 = v3[3];
    }

    v7 = *(result + 39);
    v8 = v7;
    if (v7 < 0)
    {
      v7 = result[3];
    }

    if (v6 == v7)
    {
      v9 = v5 >= 0 ? (v3 + 2) : v3[2];
      v12 = result[2];
      v10 = result + 2;
      v11 = v12;
      v13 = v8 >= 0 ? v10 : v11;
      if (!memcmp(v9, v13, v6))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_E55BAC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E55E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E55E3C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E560D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E560EC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5637C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E565F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5660C@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v15, a1, v6);
  std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E568A8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E56B38@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E56DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E56DE8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E57098@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E57348(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a3, __p);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 24);
    if (v8 < 0x65)
    {
      goto LABEL_38;
    }

    LOBYTE(v24) = 11;
    LODWORD(__dst) = v8;
    sub_E57A54("Got an EV request where a route leg has a EVStateInfo.remaining_battery_percentage of ", " > 100.", __p);
    v9 = a3[1].n128_u64[1];
    if (v9 >= a3[2].n128_u64[0])
    {
      a3[1].n128_u64[1] = sub_E5C160(&a3[1], &v24, __p);
      if ((SHIBYTE(v29.__locale_) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      *v9 = v24;
      v10 = (v9 + 8);
      if ((SHIBYTE(v29.__locale_) & 0x80000000) == 0)
      {
        v11 = *__p;
        *(v9 + 24) = v29;
        *v10 = v11;
        a3[1].n128_u64[1] = v9 + 32;
        if (SHIBYTE(v29.__locale_) < 0)
        {
          goto LABEL_8;
        }

LABEL_38:
        if ((*(a1 + 16) & 2) != 0)
        {
          goto LABEL_12;
        }

        goto LABEL_39;
      }

      sub_325C(v10, __p[0], __p[1]);
      a3[1].n128_u64[1] = v9 + 32;
      if ((SHIBYTE(v29.__locale_) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_8:
    operator delete(__p[0]);
    if ((*(a1 + 16) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    LOBYTE(__p[0]) = 11;
    v19 = a3[1].n128_u64[1];
    if (v19 >= a3[2].n128_u64[0])
    {
      a3[1].n128_u64[1] = sub_E5C5B8(&a3[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_charge.");
    }

    else
    {
      sub_E5C738(a3[1].n128_u64[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_charge.");
      a3[1].n128_u64[1] = v19 + 32;
    }

    goto LABEL_70;
  }

  LOBYTE(__p[0]) = 11;
  v6 = a3[1].n128_u64[1];
  if (v6 >= a3[2].n128_u64[0])
  {
    v7 = sub_E5C318(&a3[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_percentage.");
  }

  else
  {
    sub_E5C498(a3[1].n128_u64[1], __p, "Got an EV request where a route leg is missing EVStateInfo.remaining_battery_percentage.");
    v7 = v6 + 32;
  }

  a3[1].n128_u64[1] = v7;
  if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v12 = *(a1 + 28);
  if (v12 >= *(a2 + 84))
  {
    if (v12 <= *(a2 + 76) || !sub_7E7E4(1u))
    {
      goto LABEL_70;
    }

    sub_19594F8(__p);
    v24 = *(a1 + 28);
    sub_E57FC0("Got an EV request where a route leg has a EVStateInfo.remaining_battery_charge of ", " which is greater than the EVInfo.max_battery_charge of ", ".", &__dst);
    if ((v27 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v27 & 0x80u) == 0)
    {
      v18 = v27;
    }

    else
    {
      v18 = v26;
    }

    sub_4A5C(__p, p_dst, v18);
    if (v27 < 0)
    {
      operator delete(__dst);
    }

    if ((v37 & 0x10) != 0)
    {
      v22 = v36;
      if (v36 < v33)
      {
        v36 = v33;
        v22 = v33;
      }

      v23 = &v32;
    }

    else
    {
      if ((v37 & 8) == 0)
      {
        v16 = 0;
        v27 = 0;
        goto LABEL_65;
      }

      v23 = &v30;
      v22 = v31;
    }

    v21 = *v23;
    v16 = v22 - *v23;
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v27 = v22 - *v23;
    if (!v16)
    {
      goto LABEL_65;
    }

LABEL_64:
    memmove(&__dst, v21, v16);
    goto LABEL_65;
  }

  if (!sub_7E7E4(1u))
  {
    goto LABEL_70;
  }

  sub_19594F8(__p);
  v24 = *(a1 + 28);
  sub_E57CF0("Got an EV request where a route leg has an EVStateInfo.remaining_battery_charge (", ") which is less than the minimum battery capacity (", ".", &__dst);
  if ((v27 & 0x80u) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = __dst;
  }

  if ((v27 & 0x80u) == 0)
  {
    v14 = v27;
  }

  else
  {
    v14 = v26;
  }

  sub_4A5C(__p, v13, v14);
  if ((v27 & 0x80000000) == 0)
  {
    v15 = v37;
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_22;
    }

LABEL_45:
    v20 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v20 = v33;
    }

    v21 = v32;
    v16 = v20 - v32;
    if (v20 - v32 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_54:
      sub_3244();
    }

    goto LABEL_48;
  }

  operator delete(__dst);
  v15 = v37;
  if ((v37 & 0x10) != 0)
  {
    goto LABEL_45;
  }

LABEL_22:
  if ((v15 & 8) != 0)
  {
    v21 = v30;
    v16 = v31 - v30;
    if (v31 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_54;
    }

LABEL_48:
    if (v16 >= 0x17)
    {
      operator new();
    }

    v27 = v16;
    if (!v16)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v16 = 0;
  v27 = 0;
LABEL_65:
  *(&__dst + v16) = 0;
  sub_7E854(&__dst, 1u);
  if (v27 < 0)
  {
    operator delete(__dst);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  std::locale::~locale(&v29);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_70:
  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E5791C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 24) = v23;
  if (a22 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v22);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_E57A54@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E57CF0@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E57FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E57FC0@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5827C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E58290()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = &off_2669FE0;
  sub_434934(v1, &v10);
  if (*(v0 + 104) == 2 && (*(v0 + 16) & 0x10) == 0)
  {
    v10.n128_u8[0] = 11;
    v3 = v2[1].n128_u64[1];
    if (v3 >= v2[2].n128_u64[0])
    {
      v4 = sub_E5C858(&v2[1], &v10, "Got an EV request with a WaypointInfo that has source SERVICE but misses the EV charging info.");
    }

    else
    {
      sub_E5C9D8(v2[1].n128_u64[1], &v10, "Got an EV request with a WaypointInfo that has source SERVICE but misses the EV charging info.");
      v4 = v3 + 32;
    }

    v2[1].n128_u64[1] = v4;
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 2) == 0)
    {
      v10.n128_u8[0] = 11;
      v6 = v2[1].n128_u64[1];
      if (v6 >= v2[2].n128_u64[0])
      {
        v7 = sub_E5CAF8(&v2[1], &v10, "Got an EV request with a WaypointInfo missing the position parameter.");
      }

      else
      {
        sub_E5CC78(v2[1].n128_u64[1], &v10, "Got an EV request with a WaypointInfo missing the position parameter.");
        v7 = v6 + 32;
      }

      v2[1].n128_u64[1] = v7;
      v5 = *(v0 + 16);
    }

    if ((v5 & 0x200) == 0)
    {
      v10.n128_u8[0] = 11;
      v8 = v2[1].n128_u64[1];
      if (v8 >= v2[2].n128_u64[0])
      {
        v9 = sub_E5CD98(&v2[1], &v10, "Got an EV request with a WaypointInfo that has an EVChargingInfo set but no MUID referencing the charging station.");
      }

      else
      {
        sub_E5CF18(v2[1].n128_u64[1], &v10, "Got an EV request with a WaypointInfo that has an EVChargingInfo set but no MUID referencing the charging station.");
        v9 = v8 + 32;
      }

      v2[1].n128_u64[1] = v9;
    }

    operator new();
  }

  v2->n128_u64[0] = 2 * (v2[1].n128_u64[0] != v2[1].n128_u64[1]);
  v2->n128_u64[1] = &off_2669FE0;
}

void sub_E59544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (*(v13 + 23) < 0)
  {
    operator delete(STACK[0xFA8]);
  }

  sub_1959728(&STACK[0xFC0]);
  sub_E5E298(va);
  sub_CF3C94(v12);
  _Unwind_Resume(a1);
}

void sub_E5975C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *(v12 + 24) = v13;
  sub_E5E298(va);
  sub_CF3C94(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_E59798@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E59A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E59A68@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E59D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E59D38@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E59FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E5A008(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __n128 *a4@<X8>)
{
  v23.n128_u64[0] = 0;
  v23.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v23);
  v8 = *(a1 + 40);
  if ((v8 & 3) != 0)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    if ((v8 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v23.n128_u8[0] = 11;
  v11 = a4[1].n128_u64[1];
  if (v11 >= a4[2].n128_u64[0])
  {
    v12 = sub_E5E3B0(&a4[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute has neither the path_leg nor zilch points set.");
  }

  else
  {
    sub_E5E530(a4[1].n128_u64[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute has neither the path_leg nor zilch points set.");
    v12 = v11 + 32;
  }

  a4[1].n128_u64[1] = v12;
  v8 = *(a1 + 40);
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v8 & 4) != 0)
  {
LABEL_11:
    sub_E57348(*(a1 + 64), a2, &v23);
    sub_434BB0(a4, &v23);
    v13 = __p;
    if (__p)
    {
      v14 = v25;
      v15 = __p;
      if (v25 != __p)
      {
        do
        {
          if (*(v14 - 1) < 0)
          {
            operator delete(*(v14 - 3));
          }

          v14 -= 4;
        }

        while (v14 != v13);
        v15 = __p;
      }

      v25 = v13;
      operator delete(v15);
    }

LABEL_19:
    v16 = *(a1 + 40);
    if ((v16 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v23.n128_u8[0] = 11;
  v9 = a4[1].n128_u64[1];
  if (v9 >= a4[2].n128_u64[0])
  {
    v10 = sub_E5E650(&a4[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute does not have the EVStateInfo set.");
  }

  else
  {
    sub_E5E7D0(a4[1].n128_u64[1], &v23, "Got an EV request where one of the route legs of the OriginalWaypointRoute does not have the EVStateInfo set.");
    v10 = v9 + 32;
  }

  a4[1].n128_u64[1] = v10;
  v16 = *(a1 + 40);
  if ((v16 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  sub_E58290();
  sub_434BB0(a4, &v23);
  v17 = __p;
  if (__p)
  {
    v18 = v25;
    v19 = __p;
    if (v25 != __p)
    {
      do
      {
        if (*(v18 - 1) < 0)
        {
          operator delete(*(v18 - 3));
        }

        v18 -= 4;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v25 = v17;
    operator delete(v19);
  }

  if ((*(a1 + 40) & 0x10) != 0)
  {
LABEL_33:
    sub_E58290();
    sub_434BB0(a4, &v23);
    v20 = __p;
    if (__p)
    {
      v21 = v25;
      v22 = __p;
      if (v25 != __p)
      {
        do
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 3));
          }

          v21 -= 4;
        }

        while (v21 != v20);
        v22 = __p;
      }

      v25 = v20;
      operator delete(v22);
    }
  }

LABEL_41:
  a4->n128_u64[0] = 2 * (a4[1].n128_u64[0] != a4[1].n128_u64[1]);
  a4->n128_u64[1] = &off_2669FE0;
}

void sub_E5A29C(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E5A2C8(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E5A2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  sub_CF3C94(v9);
  _Unwind_Resume(a1);
}

void sub_E5A340(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v28.n128_u64[0] = 0;
  v28.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = 8 * v6;
    v10 = v8;
    v11 = &v8[v6];
    while (1)
    {
      v12 = *(*v10 + 72);
      if (!v12)
      {
        v12 = &off_2772310;
      }

      if ((v12[2] & 0x10) != 0)
      {
        break;
      }

      v13 = *(*v10 + 80);
      if (!v13)
      {
        v13 = &off_2772310;
      }

      if ((v13[2] & 0x10) != 0)
      {
        break;
      }

      ++v10;
      v9 -= 8;
      if (!v9)
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    v14 = 1;
    do
    {
LABEL_18:
      sub_E5A008(*v8, a2, v14, &v28);
      sub_434BB0(a3, &v28);
      v16 = __p;
      if (__p)
      {
        v17 = v30;
        v15 = __p;
        if (v30 != __p)
        {
          do
          {
            if (*(v17 - 1) < 0)
            {
              operator delete(*(v17 - 3));
            }

            v17 -= 4;
          }

          while (v17 != v16);
          v15 = __p;
        }

        v30 = v16;
        operator delete(v15);
      }

      ++v8;
    }

    while (v8 != v11);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = v19 + 8;
    }

    else
    {
      v20 = 0;
    }

    if (v18 >= 2)
    {
      v21 = v20 + 8;
      v22 = 8 * v18 - 8;
      v23 = 1;
      do
      {
        if (*(*(v21 - 8) + 80))
        {
          v24 = *(*(v21 - 8) + 80);
        }

        else
        {
          v24 = &off_2772310;
        }

        if (*(*v21 + 72))
        {
          v25 = *(*v21 + 72);
        }

        else
        {
          v25 = &off_2772310;
        }

        v23 &= sub_E4F6D0(v24, v25);
        v21 += 8;
        v22 -= 8;
      }

      while (v22);
      if ((v23 & 1) == 0)
      {
        v28.n128_u8[0] = 11;
        v26 = a3[1].n128_u64[1];
        if (v26 >= a3[2].n128_u64[0])
        {
          v27 = sub_E5E8F0(&a3[1], &v28, "Original waypoint route has inconsistent EV charging infos (charging info of the destination waypoint info of at least one leg does not match the charging info of the origin waypoint info in the subsequent leg).");
        }

        else
        {
          sub_E5EA70(a3[1].n128_u64[1], &v28, "Original waypoint route has inconsistent EV charging infos (charging info of the destination waypoint info of at least one leg does not match the charging info of the origin waypoint info in the subsequent leg).");
          v27 = v26 + 32;
        }

        a3[1].n128_u64[1] = v27;
      }
    }
  }

  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E5A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  sub_CF3C94(v9);
  _Unwind_Resume(a1);
}

void sub_E5A5B0(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v14.n128_u64[0] = 0;
  v14.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v14);
  v6 = *(a1 + 40);
  if ((v6 & 8) == 0)
  {
    v14.n128_u8[0] = 11;
    v7 = a3[1].n128_u64[1];
    if (v7 >= a3[2].n128_u64[0])
    {
      v8 = sub_E5EB90(&a3[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the StepID.");
    }

    else
    {
      sub_E5ED10(a3[1].n128_u64[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the StepID.");
      v8 = v7 + 32;
    }

    a3[1].n128_u64[1] = v8;
    v6 = *(a1 + 40);
  }

  if ((v6 & 0xC0) != 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14.n128_u8[0] = 11;
    v9 = a3[1].n128_u64[1];
    if (v9 >= a3[2].n128_u64[0])
    {
      v10 = sub_E5EE30(&a3[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the zilchPointIndex and distance_cm.");
    }

    else
    {
      sub_E5EFB0(a3[1].n128_u64[1], &v14, "Got an EV request with an ETARoute.ETAStep missing the zilchPointIndex and distance_cm.");
      v10 = v9 + 32;
    }

    a3[1].n128_u64[1] = v10;
    if ((*(a1 + 40) & 4) == 0)
    {
      goto LABEL_21;
    }
  }

  sub_E57348(*(a1 + 64), a2, &v14);
  sub_434BB0(a3, &v14);
  v11 = __p;
  if (__p)
  {
    v12 = v16;
    v13 = __p;
    if (v16 != __p)
    {
      do
      {
        if (*(v12 - 1) < 0)
        {
          operator delete(*(v12 - 3));
        }

        v12 -= 4;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v16 = v11;
    operator delete(v13);
  }

LABEL_21:
  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E5A748(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E5A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  sub_CF3C94(v9);
  _Unwind_Resume(a1);
}

void sub_E5A7A8(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v25.n128_u64[0] = 0;
  v25.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v25);
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = (v7 + 8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v25.n128_u8[0] = 11;
    v9 = a3[1].n128_u64[1];
    if (v9 >= a3[2].n128_u64[0])
    {
      v10 = sub_E5F0D0(&a3[1], &v25, "Got an EV request with an ETARoute that does not have any ETASteps.");
    }

    else
    {
      sub_E5F250(a3[1].n128_u64[1], &v25, "Got an EV request with an ETARoute that does not have any ETASteps.");
      v10 = v9 + 32;
    }

    a3[1].n128_u64[1] = v10;
    v6 = *(a1 + 56);
    v11 = *(a1 + 64);
    if (v11)
    {
      v8 = (v11 + 8);
    }

    else
    {
      v8 = 0;
    }

    if (!v6)
    {
      goto LABEL_22;
    }
  }

  v12 = &v8[v6];
  do
  {
    sub_E5A5B0(*v8, a2, &v25);
    sub_434BB0(a3, &v25);
    v14 = __p;
    if (__p)
    {
      v15 = v27;
      v13 = __p;
      if (v27 != __p)
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
        v13 = __p;
      }

      v27 = v14;
      operator delete(v13);
    }

    ++v8;
  }

  while (v8 != v12);
LABEL_22:
  if (!*(a1 + 80) && (*(a1 + 40) & 2) == 0)
  {
    v25.n128_u8[0] = 11;
    v16 = a3[1].n128_u64[1];
    if (v16 >= a3[2].n128_u64[0])
    {
      v17 = sub_E5F370(&a3[1], &v25, "Got an EV request without any zilch nor path_leg to decode.");
    }

    else
    {
      sub_E5F4F0(a3[1].n128_u64[1], &v25, "Got an EV request without any zilch nor path_leg to decode.");
      v17 = v16 + 32;
    }

    a3[1].n128_u64[1] = v17;
  }

  v18 = *(a1 + 40);
  if ((v18 & 8) != 0)
  {
    sub_E58290();
    sub_434BB0(a3, &v25);
    v19 = __p;
    if (__p)
    {
      v20 = v27;
      v21 = __p;
      if (v27 != __p)
      {
        do
        {
          if (*(v20 - 1) < 0)
          {
            operator delete(*(v20 - 3));
          }

          v20 -= 4;
        }

        while (v20 != v19);
        v21 = __p;
      }

      v27 = v19;
      operator delete(v21);
    }

    v18 = *(a1 + 40);
  }

  if ((v18 & 0x10) != 0)
  {
    sub_E58290();
    sub_434BB0(a3, &v25);
    v22 = __p;
    if (__p)
    {
      v23 = v27;
      v24 = __p;
      if (v27 != __p)
      {
        do
        {
          if (*(v23 - 1) < 0)
          {
            operator delete(*(v23 - 3));
          }

          v23 -= 4;
        }

        while (v23 != v22);
        v24 = __p;
      }

      v27 = v22;
      operator delete(v24);
    }
  }

  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

uint64_t sub_E5AAB8@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5AD74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E5AD88(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = (a1 + 24);
  if (a2)
  {
    v4 = (a1 + 32);
  }

  sub_66E3C(*v4 & 0xFFFFFFFFFFFFFFFELL, v13);
  if (LODWORD(v13[1]) != 5)
  {
    sub_5AF20();
  }

  sub_5ADDC(v15, v13[0]);
  if (LODWORD(v13[1]) != -1)
  {
    (off_2674330[LODWORD(v13[1])])(__p, v13);
  }

  v14 = 8;
  strcpy(v13, "model_id");
  if (!sub_5FC3C(v15, v13))
  {
    v5 = 1;
    if (v14 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v12 = 8;
  strcpy(__p, "model_id");
  v5 = (*(sub_5F33C(v15, __p) + 2) - 5) < 0xFFFFFFFD;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v14 < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  operator delete(v13[0]);
  if (v5)
  {
LABEL_10:
    *(a3 + 23) = 0;
    *a3 = 0;
    v6 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_16:
  v14 = 8;
  strcpy(v13, "model_id");
  v7 = sub_353010(v15, v13);
  std::to_string(a3, v7);
  if (v14 < 0)
  {
    operator delete(v13[0]);
    v6 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v6 = v16;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  do
  {
LABEL_20:
    v8 = *v6;
    v9 = *(v6 + 12);
    if (v9 != -1)
    {
      (off_2674330[v9])(__p, v6 + 5);
    }

    *(v6 + 12) = -1;
    if (*(v6 + 39) < 0)
    {
      operator delete(v6[2]);
    }

    operator delete(v6);
    v6 = v8;
  }

  while (v8);
LABEL_25:
  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_E5AF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (v38 < 0)
  {
    operator delete(v37);
  }

  sub_5C010(&v39);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  sub_3608D0(v34, "");
  __cxa_end_catch();
}

void sub_E5B05C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_E5AD88(a1, 0, v15);
  sub_E5AD88(a1, 1, v13);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v15[1];
  }

  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 20 >= 0x17)
  {
    operator new();
  }

  HIDWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  *(&__p.__r_.__value_.__s + 23) = v4 + 20;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 1029982572;
  *&__p.__r_.__value_.__l.__data_ = *" ConsumptionModelId=";
  if (v4)
  {
    if ((v16 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = v15[0];
    }

    memmove(&__p.__r_.__value_.__r.__words[2] + 4, v5, v4);
  }

  *(&__p.__r_.__value_.__r.__words[2] + v4 + 4) = 0;
  v6 = std::string::append(&__p, " and ChargingModelId=", 0x15uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((v14 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v13[1];
  }

  v10 = std::string::append(&v12, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v15[0]);
    return;
  }

LABEL_25:
  operator delete(v13[0]);
  if (v16 < 0)
  {
    goto LABEL_26;
  }
}

void sub_E5B260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((*(v28 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v28 - 56));
  _Unwind_Resume(exception_object);
}

uint64_t sub_E5B2FC@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5B584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5B598@<X0>(const char **a1@<X0>, const char *a2@<X1>, const char *a3@<X3>, const char *a4@<X5>, _BYTE *a5@<X8>)
{
  sub_D7B0(v23);
  v10 = *a1;
  v11 = strlen(v10);
  v12 = sub_4A5C(&v24, v10, v11);
  v13 = strlen(a2);
  v14 = sub_4A5C(v12, a2, v13);
  std::ostream::operator<<();
  v15 = strlen(a3);
  v16 = sub_4A5C(v14, a3, v15);
  std::ostream::operator<<();
  v17 = strlen(a4);
  sub_4A5C(v16, a4, v17);
  if ((v34 & 0x10) != 0)
  {
    v19 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v19 = v30;
    }

    v20 = v29;
    v18 = v19 - v29;
    if (v19 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v34 & 8) == 0)
    {
      v18 = 0;
      a5[23] = 0;
      goto LABEL_12;
    }

    v20 = v27;
    v18 = v28 - v27;
    if ((v28 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a5[23] = v18;
  if (v18)
  {
    memmove(a5, v20, v18);
  }

LABEL_12:
  a5[v18] = 0;
  v24 = v21;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5B880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5B894@<X0>(const char **a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v15);
  v6 = *a1;
  v7 = strlen(v6);
  v8 = sub_4A5C(&v16, v6, v7);
  v9 = strlen(a2);
  sub_4A5C(v8, a2, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a3[23] = v10;
  if (v10)
  {
    memmove(a3, v12, v10);
  }

LABEL_12:
  a3[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5BB14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5BB28(uint64_t *a1, char *a2, char *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v6 = sub_E60DB0(a1, a2, a3);
    a1[1] = v6;
    return v6 - 32;
  }

  else
  {
    sub_E60F30(a1[1], a2, a3);
    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

uint64_t sub_E5BB90@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5BE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5BE44(uint64_t *a1, char *a2, char *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v6 = sub_E612F0(a1, a2, a3);
    a1[1] = v6;
    return v6 - 32;
  }

  else
  {
    sub_E61470(a1[1], a2, a3);
    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

uint64_t sub_E5BEAC@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5C14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5C160(uint64_t *a1, _BYTE *a2, uint64_t a3)
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

  v8 = 32 * v3;
  *(32 * v3) = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((32 * v3 + 8), *a3, *(a3 + 8));
    v9 = 32 * v3 + 32;
    v10 = *a1;
    v11 = a1[1];
    v12 = 32 * v3 + *a1 - v11;
    if (v11 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_8[8 * v3] = *a3;
    *&dword_18[8 * v3] = *(a3 + 16);
    v9 = v8 + 32;
    v10 = *a1;
    v11 = a1[1];
    v12 = v8 + *a1 - v11;
    if (v11 == *a1)
    {
      goto LABEL_21;
    }
  }

  v13 = v10;
  v14 = v12;
  do
  {
    *v14 = *v13;
    v15 = *(v13 + 8);
    *(v14 + 24) = *(v13 + 24);
    *(v14 + 8) = v15;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 8) = 0;
    v13 += 32;
    v14 += 32;
  }

  while (v13 != v11);
  do
  {
    if (*(v10 + 31) < 0)
    {
      operator delete(*(v10 + 8));
    }

    v10 += 32;
  }

  while (v10 != v11);
  v10 = *a1;
LABEL_21:
  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_E5C304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E5C318(uint64_t *a1, char *a2, char *a3)
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
  sub_E5C498((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5C484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5C498(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5C5B8(uint64_t *a1, char *a2, char *a3)
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
  sub_E5C738((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5C724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5C738(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5C858(uint64_t *a1, char *a2, char *a3)
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
  sub_E5C9D8((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5C9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5C9D8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5CAF8(uint64_t *a1, char *a2, char *a3)
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
  sub_E5CC78((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5CC64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5CC78(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5CD98(uint64_t *a1, char *a2, char *a3)
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
  sub_E5CF18((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5CF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5CF18(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D038(uint64_t *a1, char *a2, char *a3)
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
  sub_E5D1B8((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5D1A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D1B8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D2D8(uint64_t *a1, char *a2, char *a3)
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
  sub_E5D458((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5D444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D458(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D578(uint64_t *a1, char *a2, char *a3)
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
  sub_E5D6F8((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5D6E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D6F8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5D818(uint64_t *a1, char *a2, char *a3)
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
  sub_E5D998((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5D984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5D998(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5DAB8(uint64_t *a1, char *a2, char *a3)
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
  sub_E5DC38((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5DC24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5DC38(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5DD58(uint64_t *a1, char *a2, char *a3)
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
  sub_E5DED8((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5DEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5DED8(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5DFF8(uint64_t *a1, char *a2, char *a3)
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
  sub_E5E178((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5E164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5E178(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

void *sub_E5E298(void *result)
{
  v1 = result[488];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[1];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

uint64_t sub_E5E3B0(uint64_t *a1, char *a2, char *a3)
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
  sub_E5E530((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5E51C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5E530(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5E650(uint64_t *a1, char *a2, char *a3)
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
  sub_E5E7D0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5E7BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5E7D0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5E8F0(uint64_t *a1, char *a2, char *a3)
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
  sub_E5EA70((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5EA5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5EA70(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5EB90(uint64_t *a1, char *a2, char *a3)
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
  sub_E5ED10((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5ECFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5ED10(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5EE30(uint64_t *a1, char *a2, char *a3)
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
  sub_E5EFB0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5EF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5EFB0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F0D0(uint64_t *a1, char *a2, char *a3)
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
  sub_E5F250((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5F23C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5F250(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F370(uint64_t *a1, char *a2, char *a3)
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
  sub_E5F4F0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5F4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5F4F0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F610(uint64_t *a1, char *a2, char *a3)
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
  sub_E5F790((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5F77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5F790(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5F8B0(uint64_t *a1, char *a2, char *a3)
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
  sub_E5FA30((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5FA1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5FA30(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5FB50(uint64_t *a1, char *a2, char *a3)
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
  sub_E5FCD0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5FCBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5FCD0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5FDF0(uint64_t *a1, char *a2, char *a3)
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
  sub_E5FF70((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E5FF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5FF70(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60090(uint64_t *a1, char *a2, char *a3)
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
  sub_E60210((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E601FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60210(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60330(uint64_t *a1, char *a2, char *a3)
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
  sub_E604B0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E6049C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E604B0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E605D0(uint64_t *a1, char *a2, char *a3)
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
  sub_E60750((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E6073C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60750(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60870(uint64_t *a1, char *a2, char *a3)
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
  sub_E609F0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E609DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E609F0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60B10(uint64_t *a1, char *a2, char *a3)
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
  sub_E60C90((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E60C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60C90(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60DB0(uint64_t *a1, char *a2, char *a3)
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
  sub_E60F30((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E60F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60F30(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E61050(uint64_t *a1, char *a2, char *a3)
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
  sub_E611D0((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E611BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E611D0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E612F0(uint64_t *a1, char *a2, char *a3)
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
  sub_E61470((32 * v3), a2, a3);
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
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
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

void sub_E6145C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E61470(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

void sub_E61590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  prime = vcvtps_u32_f32((*(a3 + 24) + *(a2 + 24)) / *(a2 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = *(a2 + 8);
  if (prime > *&v5)
  {
    goto LABEL_6;
  }

  if (prime >= *&v5)
  {
    return;
  }

  v6 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
  if (*&v5 < 3uLL || (v7 = vcnt_s8(v5), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
  {
    v9 = prime;
    v10 = std::__next_prime(v6);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime >= *&v5)
    {
      return;
    }

LABEL_6:

    sub_B07C(a2, prime);
    return;
  }

  v8 = 1 << -__clz(v6 - 1);
  if (v6 >= 2)
  {
    v6 = v8;
  }

  if (prime <= v6)
  {
    prime = v6;
  }

  if (prime < *&v5)
  {
    goto LABEL_6;
  }
}

void *sub_E616A8(void *a1, unint64_t *a2)
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

uint64_t sub_E619DC@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E61C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E61C78(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_E893A4(a2);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v36, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v37 = *(v6 + 16);
    v36 = v7;
  }

  v8 = sub_E82FC4(a2);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v34, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v35 = *(v8 + 16);
    *v34 = v9;
  }

  if (v35 >= 0)
  {
    v10 = HIBYTE(v35);
  }

  else
  {
    v10 = v34[1];
  }

  if (v10 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 13 >= 0x17)
  {
    operator new();
  }

  v29.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v29.__r_.__value_.__r.__words[1]) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  *(&v29.__r_.__value_.__s + 23) = v10 + 13;
  strcpy(&v29, " os_version=");
  if (v10)
  {
    if (v35 >= 0)
    {
      v11 = v34;
    }

    else
    {
      v11 = v34[0];
    }

    memmove(&v29.__r_.__value_.__r.__words[1] + 5, v11, v10);
  }

  *(&v29.__r_.__value_.__r.__words[1] + v10 + 5) = 0;
  v12 = std::string::append(&v29, " app_id=", 0xAuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36;
  }

  if (v37 >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = *(&v36 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, "", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v33 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_55:
  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_27:
  v20 = &off_2772E28;
  if (*(a2 + 336))
  {
    v20 = *(a2 + 336);
  }

  v21 = v20[11];
  if (!v21)
  {
    v21 = &off_2773678;
  }

  v22 = v21[4];
  if (!v22)
  {
    v22 = &off_2773608;
  }

  v23 = v22[4];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &off_2773580;
  }

  sub_E5B05C(v24, &v31);
  v25 = sub_74700();
  v26 = sub_73F1C(v25);
  if (*(v26 + 23) >= 0)
  {
    v27 = *(v26 + 23);
  }

  else
  {
    v27 = *(v26 + 8);
  }

  if (v27 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + 13 >= 0x17)
  {
    operator new();
  }

  v30.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v30.__r_.__value_.__r.__words[1]) = 0;
  v30.__r_.__value_.__r.__words[2] = 0;
  *(&v30.__r_.__value_.__s + 23) = v27 + 13;
  strcpy(&v30, " b64_request");
  if (v27)
  {
    if (*(v26 + 23) >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = *v26;
    }

    memmove(&v30.__r_.__value_.__r.__words[1] + 5, v28, v27);
  }

  *(&v30.__r_.__value_.__r.__words[1] + v27 + 5) = 0;
  sub_E621C4(a1, __p, &v31, &v30, a3);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(__p[0]);
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_60:
    operator delete(v36);
    return;
  }

LABEL_59:
  operator delete(v34[0]);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_60;
  }
}

void sub_E62094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
LABEL_8:
        if (a42 < 0)
        {
          operator delete(a37);
          if ((*(v42 - 73) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else if ((*(v42 - 73) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v42 - 96));
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a30);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_E621C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v30);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = sub_4A5C(&v31, v11, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_4A5C(v13, v15, v16);
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
    v20 = *(a3 + 8);
  }

  v21 = sub_4A5C(v17, v19, v20);
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  sub_4A5C(v21, v23, v24);
  if ((v41 & 0x10) != 0)
  {
    v26 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v26 = v37;
    }

    v27 = v36;
    v25 = v26 - v36;
    if (v26 - v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a5[23] = 0;
      goto LABEL_36;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_40:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a5[23] = v25;
  if (v25)
  {
    memmove(a5, v27, v25);
  }

LABEL_36:
  a5[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E62490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E624A4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_E82FAC(a2);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v36, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v37 = *(v6 + 16);
    v36 = v7;
  }

  v8 = sub_E83004(a2);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v34, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v35 = *(v8 + 16);
    *v34 = v9;
  }

  if (v35 >= 0)
  {
    v10 = HIBYTE(v35);
  }

  else
  {
    v10 = v34[1];
  }

  if (v10 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 13 >= 0x17)
  {
    operator new();
  }

  v29.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v29.__r_.__value_.__r.__words[1]) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  *(&v29.__r_.__value_.__s + 23) = v10 + 13;
  strcpy(&v29, " os_version=");
  if (v10)
  {
    if (v35 >= 0)
    {
      v11 = v34;
    }

    else
    {
      v11 = v34[0];
    }

    memmove(&v29.__r_.__value_.__r.__words[1] + 5, v11, v10);
  }

  *(&v29.__r_.__value_.__r.__words[1] + v10 + 5) = 0;
  v12 = std::string::append(&v29, " app_id=", 0xAuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36;
  }

  if (v37 >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = *(&v36 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, "", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v33 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_55:
  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_27:
  v20 = &off_2772E28;
  if (*(a2 + 312))
  {
    v20 = *(a2 + 312);
  }

  v21 = v20[11];
  if (!v21)
  {
    v21 = &off_2773678;
  }

  v22 = v21[4];
  if (!v22)
  {
    v22 = &off_2773608;
  }

  v23 = v22[4];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &off_2773580;
  }

  sub_E5B05C(v24, &v31);
  v25 = sub_74700();
  v26 = sub_73F1C(v25);
  if (*(v26 + 23) >= 0)
  {
    v27 = *(v26 + 23);
  }

  else
  {
    v27 = *(v26 + 8);
  }

  if (v27 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + 13 >= 0x17)
  {
    operator new();
  }

  v30.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v30.__r_.__value_.__r.__words[1]) = 0;
  v30.__r_.__value_.__r.__words[2] = 0;
  *(&v30.__r_.__value_.__s + 23) = v27 + 13;
  strcpy(&v30, " b64_request");
  if (v27)
  {
    if (*(v26 + 23) >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = *v26;
    }

    memmove(&v30.__r_.__value_.__r.__words[1] + 5, v28, v27);
  }

  *(&v30.__r_.__value_.__r.__words[1] + v27 + 5) = 0;
  sub_E621C4(a1, __p, &v31, &v30, a3);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(__p[0]);
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_60:
    operator delete(v36);
    return;
  }

LABEL_59:
  operator delete(v34[0]);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_60;
  }
}

void sub_E628C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
LABEL_8:
        if (a42 < 0)
        {
          operator delete(a37);
          if ((*(v42 - 73) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else if ((*(v42 - 73) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v42 - 96));
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a30);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_E629F0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_E82FA0(a2);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v35, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v36 = *(v6 + 16);
    v35 = v7;
  }

  v8 = sub_E82FE4(a2);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v33, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v34 = *(v8 + 16);
    *v33 = v9;
  }

  if (v34 >= 0)
  {
    v10 = HIBYTE(v34);
  }

  else
  {
    v10 = v33[1];
  }

  if (v10 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 13 >= 0x17)
  {
    operator new();
  }

  v28.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v28.__r_.__value_.__r.__words[1]) = 0;
  v28.__r_.__value_.__r.__words[2] = 0;
  *(&v28.__r_.__value_.__s + 23) = v10 + 13;
  strcpy(&v28, " os_version=");
  if (v10)
  {
    if (v34 >= 0)
    {
      v11 = v33;
    }

    else
    {
      v11 = v33[0];
    }

    memmove(&v28.__r_.__value_.__r.__words[1] + 5, v11, v10);
  }

  *(&v28.__r_.__value_.__r.__words[1] + v10 + 5) = 0;
  v12 = std::string::append(&v28, " app_id=", 0xAuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v36 >= 0)
  {
    v14 = &v35;
  }

  else
  {
    v14 = v35;
  }

  if (v36 >= 0)
  {
    v15 = HIBYTE(v36);
  }

  else
  {
    v15 = *(&v35 + 1);
  }

  v16 = std::string::append(&v29, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v30, "", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_53:
  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_27:
  v20 = *(a2 + 320);
  if (!v20)
  {
    v20 = &off_2773678;
  }

  v21 = v20[4];
  if (!v21)
  {
    v21 = &off_2773608;
  }

  v22 = v21[4];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &off_2773580;
  }

  sub_E5B05C(v23, &v30);
  v24 = sub_74700();
  v25 = sub_73F1C(v24);
  if (*(v25 + 23) >= 0)
  {
    v26 = *(v25 + 23);
  }

  else
  {
    v26 = *(v25 + 8);
  }

  if (v26 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v26 + 13 >= 0x17)
  {
    operator new();
  }

  v29.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v29.__r_.__value_.__r.__words[1]) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  *(&v29.__r_.__value_.__s + 23) = v26 + 13;
  strcpy(&v29, " b64_request");
  if (v26)
  {
    if (*(v25 + 23) >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = *v25;
    }

    memmove(&v29.__r_.__value_.__r.__words[1] + 5, v27, v26);
  }

  *(&v29.__r_.__value_.__r.__words[1] + v26 + 5) = 0;
  sub_E621C4(a1, __p, &v30, &v29, a3);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
LABEL_48:
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(__p[0]);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
LABEL_49:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      return;
    }

LABEL_58:
    operator delete(v35);
    return;
  }

LABEL_57:
  operator delete(v33[0]);
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_58;
  }
}

void sub_E62DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
LABEL_8:
        if (a42 < 0)
        {
          operator delete(a37);
          if ((*(v42 - 73) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else if ((*(v42 - 73) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v42 - 96));
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a30);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_E62F28()
{
  byte_27B966F = 3;
  LODWORD(qword_27B9658) = 5136193;
  byte_27B9687 = 3;
  LODWORD(qword_27B9670) = 5136194;
  byte_27B969F = 3;
  LODWORD(qword_27B9688) = 5136195;
  byte_27B96B7 = 15;
  strcpy(&qword_27B96A0, "vehicle_mass_kg");
  byte_27B96CF = 21;
  strcpy(&xmmword_27B96B8, "vehicle_cargo_mass_kg");
  byte_27B96E7 = 19;
  strcpy(&qword_27B96D0, "vehicle_aux_power_w");
  byte_27B96FF = 15;
  strcpy(&qword_27B96E8, "dcdc_efficiency");
  strcpy(&qword_27B9700, "drive_train_efficiency");
  HIBYTE(word_27B9716) = 22;
  operator new();
}

void sub_E6307C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B9716) < 0)
  {
    sub_21E519C();
  }

  sub_21E51A8();
  _Unwind_Resume(a1);
}

_DWORD *sub_E6309C(void *a1, uint64_t a2)
{
  result = *a1;
  v3 = a1[1];
  v5 = v3 - result;
  if (v3 != result)
  {
    v6 = 0;
    v7 = 0x6FB586FB586FB587 * (v5 >> 3);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      if ((result[44] - 4) >= 0xFFFFFFFE)
      {
        if (v6 == a2)
        {
          return result;
        }

        ++v6;
      }

      result += 110;
      --v7;
    }

    while (v7);
  }

  result = &unk_27B9740;
  if ((atomic_load_explicit(&qword_27B9730, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27B9730))
    {
      sub_78922C(&unk_27B9740);
      __cxa_guard_release(&qword_27B9730);
    }

    return &unk_27B9740;
  }

  return result;
}

void *sub_E63190(void *a1, unint64_t a2)
{
  if ((atomic_load_explicit(&qword_27B9738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9738))
  {
    sub_78922C(&unk_27B98F8);
    __cxa_guard_release(&qword_27B9738);
  }

  if (0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3) <= a2)
  {
    return &unk_27B98F8;
  }

  return sub_E6325C(a1, a2);
}

uint64_t sub_E6325C(void *a1, unint64_t a2)
{
  if (0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 440 * a2;
}

void sub_E633B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_E63490(uint64_t a1, uint64_t a2)
{
  v3[23] = 21;
  strcpy(v3, "InputPointTransformer");
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v3, __p);
  sub_E635A0();
}

void sub_E63578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E63730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E63844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E63864(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v12 = *a2;
      sub_E63B10(a1, *a2, a3);
      sub_E80194(v12, &v18);
      if (v18 != -1 && v21 >> 5 <= 0x464u && v20 >> 5 <= 0x464u)
      {
        v14 = *a3;
        v15 = a3[1];
        while (v14 != v15)
        {
          if (*(v14 + 432) == 1)
          {
            v16 = v18;
            *(v14 + 8) = v19;
            *v14 = v16;
            *(v14 + 50) = v21;
            *(v14 + 48) = v20;
          }

          v14 += 440;
        }
      }
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_24;
      }

      v6 = *a2;
      sub_E63C00(a1, *a2, a3);
      sub_E8041C(v6, &v18);
      if (v18 != -1 && v21 >> 5 <= 0x464u && v20 >> 5 <= 0x464u)
      {
        v8 = *a3;
        v9 = a3[1];
        while (v8 != v9)
        {
          if (*(v8 + 432) == 1)
          {
            v10 = v18;
            *(v8 + 8) = v19;
            *v8 = v10;
            *(v8 + 50) = v21;
            *(v8 + 48) = v20;
          }

          v8 += 440;
        }
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  else
  {
    switch(v3)
    {
      case 3:
        v11 = *a2;

        sub_E63F68(a1, v11, a3);
        break;
      case 5:
        if (*(*a2 + 80) > 1)
        {
          sub_E64948(a1, *a2 + 72, 3, a3);
          *(*a3 + 176) = 1;
          *(a3[1] - 264) = 2;
          return;
        }

        goto LABEL_24;
      case 6:
        v4 = *a2;
        v5 = *(v4 + 212);
        if (v5 != 57)
        {
          if (v5 == 50)
          {

            sub_E64298(a1, v4, a3);
            return;
          }

          goto LABEL_24;
        }

        sub_E645B4(a1, v4, a3);
        break;
      default:
LABEL_24:
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        return;
    }
  }
}

uint64_t sub_E63B10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 112);
  if (v4 <= v5)
  {
    v6 = *(a2 + 112);
  }

  else
  {
    v6 = *(a2 + 64);
  }

  if (v5 >= v4)
  {
    v5 = *(a2 + 64);
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6 >= 2 && v5 == 0)
  {
    if (v4 < 2)
    {
      sub_E64948(result, a2 + 104, 3, &v11);
    }

    else
    {
      sub_E646C8(result, a2 + 56, 3, &v11);
    }

    v9 = v11;
    *a3 = v11;
    v10 = v12;
    *(a3 + 1) = v12;
    *(v9 + 176) = 1;
    *(v10 - 264) = 2;
    result = sub_E88F24(a2);
    if (result)
    {
      *(v9 + 64) = 1;
    }
  }

  return result;
}

_BYTE *sub_E63C00@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v5 = *(a2 + 56);
  v6 = *(a2 + 152);
  v7 = *(a2 + 104) + v5;
  if (v7 == 1 && v6 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v5 == 1)
    {
      sub_E64BC8(result, *(*(a2 + 64) + 8), 2, v27);
    }

    else
    {
      sub_E64E10(result, *(*(a2 + 112) + 8), 2, v27);
    }

    v14 = a3[1];
    if (v14 >= a3[2])
    {
LABEL_22:
      v26 = sub_E66C88(a3, v27);
      goto LABEL_23;
    }

LABEL_21:
    *v14 = v27[0];
    v15 = v27[1];
    v16 = v27[2];
    v17 = *v28;
    *(v14 + 63) = *&v28[15];
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    *(v14 + 72) = 0;
    *(v14 + 72) = v29;
    *(v14 + 88) = v30;
    v29 = 0uLL;
    v18 = v31;
    *(v14 + 112) = v32;
    *(v14 + 96) = v18;
    v19 = v33;
    *(v14 + 136) = v34;
    *(v14 + 120) = v19;
    *(v14 + 152) = v35;
    *(v14 + 160) = v36;
    v30 = 0;
    v35 = 0;
    v36 = 0uLL;
    v20 = v37;
    *(v14 + 184) = v38;
    *(v14 + 176) = v20;
    v21 = v39;
    *(v14 + 208) = v40;
    *(v14 + 192) = v21;
    v39 = 0uLL;
    v22 = v41;
    *(v14 + 232) = v42;
    *(v14 + 216) = v22;
    v42 = 0;
    v40 = 0;
    v41 = 0uLL;
    v23 = v43;
    *(v14 + 256) = v44;
    *(v14 + 240) = v23;
    v43 = 0uLL;
    v24 = v45;
    *(v14 + 280) = v46;
    *(v14 + 264) = v24;
    v44 = 0;
    v45 = 0uLL;
    v46 = 0;
    v25 = v48;
    *(v14 + 288) = v47;
    *(v14 + 304) = v25;
    *(v14 + 312) = 0;
    *(v14 + 320) = 0;
    *(v14 + 328) = 0;
    *(v14 + 312) = v49;
    *(v14 + 320) = v50;
    v49 = 0;
    *&v50 = 0;
    *(v14 + 336) = 0;
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
    *(v14 + 360) = 0;
    *(v14 + 336) = v51;
    *(v14 + 352) = v52;
    *(&v50 + 1) = 0;
    v51 = 0uLL;
    v52 = 0;
    *(v14 + 368) = 0;
    *(v14 + 376) = 0;
    *(v14 + 360) = v53;
    *(v14 + 368) = v54;
    v53 = 0;
    *&v54 = 0;
    *(v14 + 384) = v55;
    *(v14 + 400) = 0;
    *(v14 + 408) = 0;
    *(v14 + 416) = 0;
    *(v14 + 400) = v56;
    *(v14 + 416) = v57;
    *(&v54 + 1) = 0;
    v56 = 0uLL;
    v57 = 0;
    *(v14 + 424) = v58;
    *(v14 + 432) = v59;
    v26 = v14 + 440;
LABEL_23:
    a3[1] = v26;
    return sub_44FDEC(v27);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (!v9)
  {
    v10 = *(a2 + 160);
    if (v10)
    {
      v11 = (v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[v6 - 1];
    v60 = a3;
    if (v12 != v11)
    {
      do
      {
        sub_E64E10(v3, *v11, 3, v27);
        sub_E66F14(&v60, v27);
        sub_44FDEC(v27);
        ++v11;
      }

      while (v11 != v12);
      v6 = *(a2 + 152);
      v10 = *(a2 + 160);
    }

    sub_E64E10(v3, *(v10 + 8 * v6), 2, v27);
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  return result;
}