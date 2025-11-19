void sub_255A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255AA0(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  (*(*v6 + 48))(v6);
  (*(*v6 + 56))(v6);
  v7 = *a2;
  v8 = (*(*v6 + 40))(v6);
  v9 = a3[1];
  if (!v9 || (*(*v9 + 32))(v9) == 17)
  {
    goto LABEL_8;
  }

  v10 = a3[1];
  if (v10)
  {
    if ((*(*v10 + 32))(v10) == 18)
    {
      goto LABEL_8;
    }

    v11 = a3[1];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  a3[1] = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v31 = 7;
    strcpy(__p, "(t*t)/t");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_38:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_26AB90(a1, &v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26F04C(v7, v8, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_26CBB8(a1, &v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v16 != v15)
  {
    return result;
  }

LABEL_21:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v7)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v7));
    }

    while (v24);
    if (v23 != v20 && v7 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v8)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v8));
      }

      while (v21);
      if (v25 != v20 && v8 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_255E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255E58(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(**a3 + 48))(*a3);
  (*(*v6 + 56))(v6);
  (*(*a3[1] + 40))(a3[1]);
  v7 = (*(*v6 + 40))(v6);
  v8 = *a2;
  if (!*a3 || (*(**a3 + 32))(*a3) == 17)
  {
    goto LABEL_8;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 18)
    {
      goto LABEL_8;
    }

    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }
  }

  *a3 = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v28 = 7;
    strcpy(__p, "t/(t*t)");
    v23 = sub_BC168(a1[8], __p);
    v24 = v23;
    v25 = a1[8] + 8;
    if (v25 == v23)
    {
      v26 = 0;
      if ((v28 & 0x80000000) == 0)
      {
LABEL_38:
        if (v25 == v24)
        {
          return 0;
        }

        else
        {
          return v26;
        }
      }
    }

    else
    {
      v29 = *(v23 + 16);
      v26 = sub_2700C8(a1, &v29);
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26FACC(v7, v8, __p);
  v11 = sub_BC168(a1[8], __p);
  v12 = v11;
  v13 = a1[8] + 8;
  if (v13 != v11)
  {
    v29 = *(v11 + 16);
    result = sub_2700C8(a1, &v29);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v15 = result;
    operator delete(__p[0]);
    result = v15;
    if (v13 != v12)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v28 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v13 != v12)
  {
    return result;
  }

LABEL_21:
  v16 = a1[6];
  v19 = *(v16 + 8);
  v17 = v16 + 8;
  v18 = v19;
  if (v19)
  {
    v20 = v17;
    v21 = v18;
    do
    {
      if (*(v21 + 32) >= v7)
      {
        v20 = v21;
      }

      v21 = *(v21 + 8 * (*(v21 + 32) < v7));
    }

    while (v21);
    if (v20 != v17 && v7 >= *(v20 + 32))
    {
      v22 = v17;
      do
      {
        if (*(v18 + 32) >= v8)
        {
          v22 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v8));
      }

      while (v18);
      if (v22 != v17 && v8 >= *(v22 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2561F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256214(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 16))();
  (*(*v6 + 48))(v6);
  (*(*v6 + 56))(v6);
  v7 = *a2;
  v8 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = a3[1];
  if (!v9 || (*(*v9 + 32))(v9) == 17)
  {
    goto LABEL_15;
  }

  v10 = a3[1];
  if (v10)
  {
    if ((*(*v10 + 32))(v10) == 18)
    {
      goto LABEL_15;
    }

    v11 = a3[1];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  a3[1] = 0;
LABEL_15:
  if (*(a1[10] + 190) == 1 && v7 == 5 && v8 == 5)
  {
    v31 = 7;
    strcpy(__p, "(t*t)/t");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_45:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_2700C8(a1, &v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    operator delete(__p[0]);
    goto LABEL_45;
  }

  sub_271AF0(v7, v8, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_2700C8(a1, &v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_28;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v16 != v15)
  {
    return result;
  }

LABEL_28:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v7)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v7));
    }

    while (v24);
    if (v23 != v20 && v7 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v8)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v8));
      }

      while (v21);
      if (v25 != v20 && v8 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_256644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256664(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(**a3 + 48))(*a3);
  (*(*v6 + 56))(v6);
  (*(*a3[1] + 16))(a3[1]);
  v7 = (*(*v6 + 40))(v6);
  v8 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = a3[1];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a3[1];
    if (v10)
    {
      if ((*(*v10 + 32))(v10) == 18)
      {
        goto LABEL_15;
      }

      v11 = a3[1];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    v12 = v7 == 2 && v8 == 2;
    if (v12 || (v7 == 2 ? (v13 = v8 == 3) : (v13 = 0), v13))
    {
      operator new();
    }

    v14 = v7 == 3 && v8 == 2;
    if (v14 || (v7 == 3 ? (v15 = v8 == 3) : (v15 = 0), v15))
    {
      operator new();
    }

    v16 = v7 == 4 && v8 == 4;
    if (v16 || (v7 == 4 ? (v17 = v8 == 5) : (v17 = 0), v17))
    {
      operator new();
    }

    v18 = v7 == 5 && v8 == 4;
    if (v18 || (v7 == 5 ? (v19 = v8 == 5) : (v19 = 0), v19))
    {
      operator new();
    }
  }

  sub_2724D8(v7, v8, __p);
  v20 = sub_BC168(a1[8], __p);
  v21 = v20;
  v22 = a1[8] + 8;
  if (v22 != v20)
  {
    v34 = *(v20 + 16);
    result = sub_272AD4(a1, &v34);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_54:
    v24 = result;
    operator delete(__p[0]);
    result = v24;
    if (v22 != v21)
    {
      return result;
    }

    goto LABEL_55;
  }

  result = 0;
  if (v33 < 0)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (v22 != v21)
  {
    return result;
  }

LABEL_55:
  v25 = a1[6];
  v28 = *(v25 + 8);
  v26 = v25 + 8;
  v27 = v28;
  if (v28)
  {
    v29 = v26;
    v30 = v27;
    do
    {
      if (*(v30 + 32) >= v7)
      {
        v29 = v30;
      }

      v30 = *(v30 + 8 * (*(v30 + 32) < v7));
    }

    while (v30);
    if (v29 != v26 && v7 >= *(v29 + 32))
    {
      v31 = v26;
      do
      {
        if (*(v27 + 32) >= v8)
        {
          v31 = v27;
        }

        v27 = *(v27 + 8 * (*(v27 + 32) < v8));
      }

      while (v27);
      if (v31 != v26 && v8 >= *(v31 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_256B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256B88(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 16))();
  (*(*v6 + 56))(v6);
  (*(*v6 + 48))(v6);
  v7 = *a2;
  v8 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = a3[1];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a3[1];
    if (v10)
    {
      if ((*(*v10 + 32))(v10) == 18)
      {
        goto LABEL_15;
      }

      v11 = a3[1];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    if (v7 == 2 && v8 == 2 || v7 == 2 && v8 == 3)
    {
      operator new();
    }

    if (v7 == 3 && v8 == 2 || v7 == 3 && v8 == 3)
    {
      operator new();
    }

    if (v7 == 4 && v8 == 4 || v7 == 4 && v8 == 5)
    {
      operator new();
    }

    if (v7 == 5 && v8 == 4 || v7 == 5 && v8 == 5)
    {
      operator new();
    }
  }

  sub_274504(v7, v8, __p);
  v12 = sub_BC168(a1[8], __p);
  v13 = v12;
  v14 = a1[8] + 8;
  if (v14 != v12)
  {
    v26 = *(v12 + 16);
    result = sub_272AD4(a1, &v26);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v16 = result;
    operator delete(__p[0]);
    result = v16;
    if (v14 != v13)
    {
      return result;
    }

    goto LABEL_42;
  }

  result = 0;
  if (v25 < 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v14 != v13)
  {
    return result;
  }

LABEL_42:
  v17 = a1[6];
  v20 = *(v17 + 8);
  v18 = v17 + 8;
  v19 = v20;
  if (v20)
  {
    v21 = v18;
    v22 = v19;
    do
    {
      if (*(v22 + 32) >= v7)
      {
        v21 = v22;
      }

      v22 = *(v22 + 8 * (*(v22 + 32) < v7));
    }

    while (v22);
    if (v21 != v18 && v7 >= *(v21 + 32))
    {
      v23 = v18;
      do
      {
        if (*(v19 + 32) >= v8)
        {
          v23 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v8));
      }

      while (v19);
      if (v23 != v18 && v8 >= *(v23 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2570AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2570C8(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 16))();
  (*(*v6 + 48))(v6);
  (*(*v6 + 56))(v6);
  v7 = *a2;
  v8 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = a3[1];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a3[1];
    if (v10)
    {
      if ((*(*v10 + 32))(v10) == 18)
      {
        goto LABEL_15;
      }

      v11 = a3[1];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_18;
    }

    if (v7 == 2 && v8 == 3 || v7 == 3 && v8 == 2)
    {
      operator new();
    }

    if (v7 == 3 && v8 == 3)
    {
LABEL_18:
      operator new();
    }

    if (v7 == 4 && v8 == 4)
    {
      goto LABEL_28;
    }

    if (v7 == 4 && v8 == 5 || v7 == 5 && v8 == 4)
    {
      operator new();
    }

    if (v7 == 5 && v8 == 5)
    {
LABEL_28:
      operator new();
    }
  }

  sub_274EEC(v7, v8, __p);
  v12 = sub_BC168(a1[8], __p);
  v13 = v12;
  v14 = a1[8] + 8;
  if (v14 != v12)
  {
    v26 = *(v12 + 16);
    result = sub_2754E8(a1, &v26);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v16 = result;
    operator delete(__p[0]);
    result = v16;
    if (v14 != v13)
    {
      return result;
    }

    goto LABEL_42;
  }

  result = 0;
  if (v25 < 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v14 != v13)
  {
    return result;
  }

LABEL_42:
  v17 = a1[6];
  v20 = *(v17 + 8);
  v18 = v17 + 8;
  v19 = v20;
  if (v20)
  {
    v21 = v18;
    v22 = v19;
    do
    {
      if (*(v22 + 32) >= v7)
      {
        v21 = v22;
      }

      v22 = *(v22 + 8 * (*(v22 + 32) < v7));
    }

    while (v22);
    if (v21 != v18 && v7 >= *(v21 + 32))
    {
      v23 = v18;
      do
      {
        if (*(v19 + 32) >= v8)
        {
          v23 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v8));
      }

      while (v19);
      if (v23 != v18 && v8 >= *(v23 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2575E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_257604(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(**a3 + 56))(*a3);
  (*(*v6 + 48))(v6);
  (*(*a3[1] + 16))(a3[1]);
  v7 = (*(*v6 + 40))(v6);
  v8 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = a3[1];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a3[1];
    if (v10)
    {
      if ((*(*v10 + 32))(v10) == 18)
      {
        goto LABEL_15;
      }

      v11 = a3[1];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    v12 = v7 == 2 && v8 == 2;
    if (v12 || (v7 == 2 ? (v13 = v8 == 3) : (v13 = 0), v13 || (v7 == 3 ? (v14 = v8 == 2) : (v14 = 0), v14)))
    {
      operator new();
    }

    if (v7 == 3 && v8 == 3)
    {
      operator new();
    }

    v16 = v7 == 4 && v8 == 4;
    if (v16 || (v7 == 4 ? (v17 = v8 == 5) : (v17 = 0), v17 || (v7 == 5 ? (v18 = v8 == 4) : (v18 = 0), v18)))
    {
      operator new();
    }

    if (v7 == 5 && v8 == 5)
    {
      operator new();
    }

    if (v7 == 7 && v8 == 7)
    {
      operator new();
    }
  }

  sub_276E98(v7, v8, __p);
  v21 = sub_BC168(a1[8], __p);
  v22 = v21;
  v23 = a1[8] + 8;
  if (v23 != v21)
  {
    v35 = *(v21 + 16);
    result = sub_277494(a1, &v35);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_58:
    v25 = result;
    operator delete(__p[0]);
    result = v25;
    if (v23 != v22)
    {
      return result;
    }

    goto LABEL_59;
  }

  result = 0;
  if (v34 < 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  if (v23 != v22)
  {
    return result;
  }

LABEL_59:
  v26 = a1[6];
  v29 = *(v26 + 8);
  v27 = v26 + 8;
  v28 = v29;
  if (v29)
  {
    v30 = v27;
    v31 = v28;
    do
    {
      if (*(v31 + 32) >= v7)
      {
        v30 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v7));
    }

    while (v31);
    if (v30 != v27 && v7 >= *(v30 + 32))
    {
      v32 = v27;
      do
      {
        if (*(v28 + 32) >= v8)
        {
          v32 = v28;
        }

        v28 = *(v28 + 8 * (*(v28 + 32) < v8));
      }

      while (v28);
      if (v32 != v27 && v8 >= *(v32 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_257B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_257B60(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v48 = 0;
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_51;
  }

  if (v12 == 5 && v13 == 4 && v14 == 5)
  {
    v47 = 11;
    strcpy(__p, "(t*t)/(t*t)");
    v32 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) != v32)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v12 == 5 && v13 == 5 && v14 == 5)
  {
    v47 = 11;
    strcpy(__p, "(t*t)/(t*t)");
    v32 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) != v32)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v12 == 2 && v13 == 5 && v14 == 5)
  {
    v47 = 11;
    strcpy(__p, "(t+t)*(t/t)");
    v32 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) != v32)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v12 == 3 && v13 == 5 && v14 == 5)
  {
    v47 = 11;
    strcpy(__p, "(t-t)*(t/t)");
    v32 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) != v32)
    {
LABEL_84:
      v49 = *(v32 + 16);
      result = sub_19E1F4(a1, &v49);
      goto LABEL_86;
    }

LABEL_85:
    result = 0;
LABEL_86:
    if (v47 < 0)
    {
      v43 = result;
      operator delete(__p[0]);
      return v43;
    }

    return result;
  }

  if (v12 != 4 || v13 != 5 || v14 != 5)
  {
LABEL_51:
    sub_278E40(v12, v13, v14, __p);
    v28 = sub_BC168(a1[9], __p);
    v29 = v28;
    v30 = a1[9] + 8;
    if (v30 == v28)
    {
      result = 0;
      if ((v47 & 0x80000000) == 0)
      {
LABEL_53:
        if (v30 != v29)
        {
          return result;
        }

LABEL_59:
        v34 = a1[6];
        v37 = *(v34 + 8);
        v35 = v34 + 8;
        v36 = v37;
        if (v37)
        {
          v38 = v35;
          v39 = v36;
          do
          {
            if (*(v39 + 32) >= v12)
            {
              v38 = v39;
            }

            v39 = *(v39 + 8 * (*(v39 + 32) < v12));
          }

          while (v39);
          if (v38 != v35 && v12 >= *(v38 + 32))
          {
            v40 = v35;
            v41 = v36;
            do
            {
              if (*(v41 + 32) >= v13)
              {
                v40 = v41;
              }

              v41 = *(v41 + 8 * (*(v41 + 32) < v13));
            }

            while (v41);
            if (v40 != v35 && v13 >= *(v40 + 32))
            {
              v42 = v35;
              do
              {
                if (*(v36 + 32) >= v14)
                {
                  v42 = v36;
                }

                v36 = *(v36 + 8 * (*(v36 + 32) < v14));
              }

              while (v36);
              if (v42 != v35 && v14 >= *(v42 + 32))
              {
                operator new();
              }
            }
          }
        }

        return 0;
      }
    }

    else
    {
      v49 = *(v28 + 16);
      result = sub_19E1F4(a1, &v49);
      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }
    }

    v33 = result;
    operator delete(__p[0]);
    result = v33;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_59;
  }

  sub_3608D0(__p, "((t*t)*t)/t");
  v44 = sub_19E154(a1, __p, v8, v9, v11, v10, &v48);
  if (v47 < 0)
  {
    v45 = v44;
    operator delete(__p[0]);
    v44 = v45;
  }

  if (v44)
  {
    return v48;
  }

  else
  {
    return 0;
  }
}

void sub_25825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25828C(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  (*(**a3 + 48))(*a3);
  (*(*v7 + 56))(v7);
  (*(*v6 + 56))(v6);
  (*(*v6 + 48))(v6);
  v8 = (*(*v7 + 40))(v7);
  v9 = *a2;
  v10 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v11 = a3[1];
  if (v11 && (*(*v11 + 32))(v11) != 17)
  {
    v12 = a3[1];
    if (v12)
    {
      if ((*(*v12 + 32))(v12) == 18)
      {
        goto LABEL_15;
      }

      v13 = a3[1];
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v8 == 5 && v9 == 4 && v10 == 5)
  {
    v39 = 11;
    strcpy(v38, "(t*t)/(t*t)");
    v22 = sub_BC168(a1[9], v38);
    v23 = v22;
    v24 = a1[9] + 8;
    if (v24 != v22)
    {
      v40 = *(v22 + 16);
      v25 = sub_199EC4(a1, &v40);
      goto LABEL_60;
    }

LABEL_66:
    v37 = 0;
    if ((v39 & 0x80000000) == 0)
    {
LABEL_62:
      if (v24 == v23)
      {
        return 0;
      }

      else
      {
        return v37;
      }
    }

LABEL_61:
    operator delete(v38[0]);
    goto LABEL_62;
  }

  if (v8 == 5 && v9 == 5 && v10 == 5)
  {
    v39 = 11;
    strcpy(v38, "(t*t)/(t*t)");
    v36 = sub_BC168(a1[9], v38);
    v23 = v36;
    v24 = a1[9] + 8;
    if (v24 != v36)
    {
      v40 = *(v36 + 16);
      v25 = sub_1919A0(a1, &v40);
LABEL_60:
      v37 = v25;
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

LABEL_30:
  sub_279C2C(v8, v9, v10, v38);
  v18 = sub_BC168(a1[9], v38);
  v19 = v18;
  v20 = a1[9] + 8;
  if (v20 != v18)
  {
    v40 = *(v18 + 16);
    result = sub_199EC4(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v26 = result;
    operator delete(v38[0]);
    result = v26;
    if (v20 != v19)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v20 != v19)
  {
    return result;
  }

LABEL_38:
  v27 = a1[6];
  v30 = *(v27 + 8);
  v28 = v27 + 8;
  v29 = v30;
  if (v30)
  {
    v31 = v28;
    v32 = v29;
    do
    {
      if (*(v32 + 32) >= v8)
      {
        v31 = v32;
      }

      v32 = *(v32 + 8 * (*(v32 + 32) < v8));
    }

    while (v32);
    if (v31 != v28 && v8 >= *(v31 + 32))
    {
      v33 = v28;
      v34 = v29;
      do
      {
        if (*(v34 + 32) >= v9)
        {
          v33 = v34;
        }

        v34 = *(v34 + 8 * (*(v34 + 32) < v9));
      }

      while (v34);
      if (v33 != v28 && v9 >= *(v33 + 32))
      {
        v35 = v28;
        do
        {
          if (*(v29 + 32) >= v10)
          {
            v35 = v29;
          }

          v29 = *(v29 + 8 * (*(v29 + 32) < v10));
        }

        while (v29);
        if (v35 != v28 && v10 >= *(v35 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_2587F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_258818(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  (*(**a3 + 48))(*a3);
  (*(*v7 + 56))(v7);
  (*(*v6 + 56))(v6);
  (*(*v6 + 48))(v6);
  v8 = (*(*v7 + 40))(v7);
  v9 = *a2;
  v10 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v11 = a3[1];
  if (v11 && (*(*v11 + 32))(v11) != 17)
  {
    v12 = a3[1];
    if (v12)
    {
      if ((*(*v12 + 32))(v12) == 18)
      {
        goto LABEL_15;
      }

      v13 = a3[1];
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v8 == 5 && v9 == 4 && v10 == 5)
  {
    v39 = 11;
    strcpy(v38, "(t*t)/(t*t)");
    v22 = sub_BC168(a1[9], v38);
    v23 = v22;
    v24 = a1[9] + 8;
    if (v24 != v22)
    {
      v40 = *(v22 + 16);
      v25 = sub_1919A0(a1, &v40);
      goto LABEL_60;
    }

LABEL_66:
    v37 = 0;
    if ((v39 & 0x80000000) == 0)
    {
LABEL_62:
      if (v24 == v23)
      {
        return 0;
      }

      else
      {
        return v37;
      }
    }

LABEL_61:
    operator delete(v38[0]);
    goto LABEL_62;
  }

  if (v8 == 5 && v9 == 5 && v10 == 5)
  {
    v39 = 11;
    strcpy(v38, "(t*t)/(t*t)");
    v36 = sub_BC168(a1[9], v38);
    v23 = v36;
    v24 = a1[9] + 8;
    if (v24 != v36)
    {
      v40 = *(v36 + 16);
      v25 = sub_199EC4(a1, &v40);
LABEL_60:
      v37 = v25;
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

LABEL_30:
  sub_27AA20(v8, v9, v10, v38);
  v18 = sub_BC168(a1[9], v38);
  v19 = v18;
  v20 = a1[9] + 8;
  if (v20 != v18)
  {
    v40 = *(v18 + 16);
    result = sub_195C30(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v26 = result;
    operator delete(v38[0]);
    result = v26;
    if (v20 != v19)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v20 != v19)
  {
    return result;
  }

LABEL_38:
  v27 = a1[6];
  v30 = *(v27 + 8);
  v28 = v27 + 8;
  v29 = v30;
  if (v30)
  {
    v31 = v28;
    v32 = v29;
    do
    {
      if (*(v32 + 32) >= v8)
      {
        v31 = v32;
      }

      v32 = *(v32 + 8 * (*(v32 + 32) < v8));
    }

    while (v32);
    if (v31 != v28 && v8 >= *(v31 + 32))
    {
      v33 = v28;
      v34 = v29;
      do
      {
        if (*(v34 + 32) >= v9)
        {
          v33 = v34;
        }

        v34 = *(v34 + 8 * (*(v34 + 32) < v9));
      }

      while (v34);
      if (v33 != v28 && v9 >= *(v33 + 32))
      {
        v35 = v28;
        do
        {
          if (*(v29 + 32) >= v10)
          {
            v35 = v29;
          }

          v29 = *(v29 + 8 * (*(v29 + 32) < v10));
        }

        while (v29);
        if (v35 != v28 && v10 >= *(v35 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_258D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_258DA4(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  (*(**a3 + 48))(*a3);
  (*(*v7 + 56))(v7);
  (*(*v6 + 48))(v6);
  (*(*v6 + 56))(v6);
  v8 = (*(*v7 + 40))(v7);
  v9 = *a2;
  v10 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v11 = a3[1];
  if (v11 && (*(*v11 + 32))(v11) != 17)
  {
    v12 = a3[1];
    if (v12)
    {
      if ((*(*v12 + 32))(v12) == 18)
      {
        goto LABEL_15;
      }

      v13 = a3[1];
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v8 == 5 && v9 == 4 && v10 == 5)
  {
    v37 = 11;
    strcpy(v36, "(t*t)/(t*t)");
    v22 = sub_BC168(a1[9], v36);
    v23 = v22;
    v24 = a1[9] + 8;
    if (v24 != v22)
    {
LABEL_59:
      v38 = *(v22 + 16);
      v35 = sub_195C30(a1, &v38);
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_65:
    v35 = 0;
    if ((v37 & 0x80000000) == 0)
    {
LABEL_61:
      if (v24 == v23)
      {
        return 0;
      }

      else
      {
        return v35;
      }
    }

LABEL_60:
    operator delete(v36[0]);
    goto LABEL_61;
  }

  if (v8 == 5 && v9 == 5 && v10 == 5)
  {
    v37 = 11;
    strcpy(v36, "(t*t)/(t*t)");
    v22 = sub_BC168(a1[9], v36);
    v23 = v22;
    v24 = a1[9] + 8;
    if (v24 != v22)
    {
      goto LABEL_59;
    }

    goto LABEL_65;
  }

LABEL_30:
  sub_27B814(v8, v9, v10, v36);
  v18 = sub_BC168(a1[9], v36);
  v19 = v18;
  v20 = a1[9] + 8;
  if (v20 != v18)
  {
    v38 = *(v18 + 16);
    result = sub_1919A0(a1, &v38);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v25 = result;
    operator delete(v36[0]);
    result = v25;
    if (v20 != v19)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v37 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v20 != v19)
  {
    return result;
  }

LABEL_38:
  v26 = a1[6];
  v29 = *(v26 + 8);
  v27 = v26 + 8;
  v28 = v29;
  if (v29)
  {
    v30 = v27;
    v31 = v28;
    do
    {
      if (*(v31 + 32) >= v8)
      {
        v30 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v8));
    }

    while (v31);
    if (v30 != v27 && v8 >= *(v30 + 32))
    {
      v32 = v27;
      v33 = v28;
      do
      {
        if (*(v33 + 32) >= v9)
        {
          v32 = v33;
        }

        v33 = *(v33 + 8 * (*(v33 + 32) < v9));
      }

      while (v33);
      if (v32 != v27 && v9 >= *(v32 + 32))
      {
        v34 = v27;
        do
        {
          if (*(v28 + 32) >= v10)
          {
            v34 = v28;
          }

          v28 = *(v28 + 8 * (*(v28 + 32) < v10));
        }

        while (v28);
        if (v34 != v27 && v10 >= *(v34 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_259330(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  (*(**a3 + 48))(*a3);
  (*(*v7 + 56))(v7);
  (*(*v6 + 48))(v6);
  (*(*v6 + 56))(v6);
  v8 = (*(*v7 + 40))(v7);
  v9 = *a2;
  v10 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v11 = a3[1];
  if (v11 && (*(*v11 + 32))(v11) != 17)
  {
    v12 = a3[1];
    if (v12)
    {
      if ((*(*v12 + 32))(v12) == 18)
      {
        goto LABEL_15;
      }

      v13 = a3[1];
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v8 == 5 && v9 == 4 && v10 == 5)
  {
    v37 = 11;
    strcpy(v36, "(t*t)/(t*t)");
    v22 = sub_BC168(a1[9], v36);
    v23 = v22;
    v24 = a1[9] + 8;
    if (v24 != v22)
    {
LABEL_59:
      v38 = *(v22 + 16);
      v35 = sub_1A8E00(a1, &v38);
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_65:
    v35 = 0;
    if ((v37 & 0x80000000) == 0)
    {
LABEL_61:
      if (v24 == v23)
      {
        return 0;
      }

      else
      {
        return v35;
      }
    }

LABEL_60:
    operator delete(v36[0]);
    goto LABEL_61;
  }

  if (v8 == 5 && v9 == 5 && v10 == 5)
  {
    v37 = 11;
    strcpy(v36, "(t*t)/(t*t)");
    v22 = sub_BC168(a1[9], v36);
    v23 = v22;
    v24 = a1[9] + 8;
    if (v24 != v22)
    {
      goto LABEL_59;
    }

    goto LABEL_65;
  }

LABEL_30:
  sub_27C60C(v8, v9, v10, v36);
  v18 = sub_BC168(a1[9], v36);
  v19 = v18;
  v20 = a1[9] + 8;
  if (v20 != v18)
  {
    v38 = *(v18 + 16);
    result = sub_1A8E00(a1, &v38);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v25 = result;
    operator delete(v36[0]);
    result = v25;
    if (v20 != v19)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v37 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v20 != v19)
  {
    return result;
  }

LABEL_38:
  v26 = a1[6];
  v29 = *(v26 + 8);
  v27 = v26 + 8;
  v28 = v29;
  if (v29)
  {
    v30 = v27;
    v31 = v28;
    do
    {
      if (*(v31 + 32) >= v8)
      {
        v30 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v8));
    }

    while (v31);
    if (v30 != v27 && v8 >= *(v30 + 32))
    {
      v32 = v27;
      v33 = v28;
      do
      {
        if (*(v33 + 32) >= v9)
        {
          v32 = v33;
        }

        v33 = *(v33 + 8 * (*(v33 + 32) < v9));
      }

      while (v33);
      if (v32 != v27 && v9 >= *(v32 + 32))
      {
        v34 = v27;
        do
        {
          if (*(v28 + 32) >= v10)
          {
            v34 = v28;
          }

          v28 = *(v28 + 8 * (*(v28 + 32) < v10));
        }

        while (v28);
        if (v34 != v27 && v10 >= *(v34 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_259898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2598BC(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v60 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v59) = 7;
      strcpy(__p, "(t+t)+t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_83;
      }
    }

    else if (v12 == 2 && v13 == 3 && v14 == 2)
    {
      HIBYTE(v59) = 7;
      strcpy(__p, "(t+t)-t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v12 != 3 || v13 != 3 || v14 != 3)
      {
        if (v12 != 4 || v13 != 4 || v14 != 4)
        {
          v27 = v12 == 4 && v13 == 5;
          if (v27 && v14 == 4)
          {
            sub_3608D0(__p, "(t*t)/t");
            v34 = sub_26FA34(a1, __p, v9, v11, &v60);
            goto LABEL_91;
          }

          if (v12 == 5 && v13 == 4 && v14 == 5)
          {
            goto LABEL_100;
          }

          v32 = v12 == 5 && v13 == 5;
          if (v32 && v14 == 5)
          {
            sub_3608D0(__p, "(t*t)/t");
            v34 = sub_26FA34(a1, __p, v11, v9, &v60);
            goto LABEL_91;
          }

          if (v14 != 5)
          {
            v27 = 0;
          }

          if (v27)
          {
            sub_3608D0(__p, "t*(t*t)");
            v34 = sub_26FA34(a1, __p, v9, v11, &v60);
LABEL_91:
            if (SHIBYTE(v59) < 0)
            {
              v39 = v34;
              operator delete(__p[0]);
              v34 = v39;
            }

            if (v34)
            {
              return v60;
            }

            else
            {
              return 0;
            }
          }

          if (v14 == 4 && v32)
          {
LABEL_100:
            sub_3608D0(__p, "t/(t*t)");
            v34 = sub_26FA34(a1, __p, v9, v11, &v60);
            goto LABEL_91;
          }

          if (v8 == v10 && v12 == 4 && v14 == 4 && (v13 & 0xFFFFFFFE) == 2)
          {
            __p[1] = 0;
            v59 = 0x700000000000000;
            __p[0] = 0;
            if (v13 == 2)
            {
              v56 = 11124;
            }

            else
            {
              v56 = 11636;
            }

            *(__p + 3) = v56 | 0x29740000;
            LODWORD(__p[0]) = 1948789364;
            if (sub_26FA34(a1, __p, v9, v11, &v60))
            {
              result = v60;
            }

            else
            {
              result = 0;
            }

            if (SHIBYTE(v59) < 0)
            {
              v57 = result;
              operator delete(__p[0]);
              return v57;
            }

            return result;
          }

          goto LABEL_111;
        }

        HIBYTE(v59) = 7;
        strcpy(__p, "(t*t)*t");
        v35 = sub_BC168(a1[8], __p);
        v36 = v35;
        v37 = a1[8] + 8;
        if (v37 != v35)
        {
          goto LABEL_82;
        }

LABEL_83:
        if (SHIBYTE(v59) < 0)
        {
          operator delete(__p[0]);
        }

        if (v37 == v36)
        {
          return 0;
        }

        else
        {
          return v60;
        }
      }

      HIBYTE(v59) = 7;
      strcpy(__p, "(t-t)+t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_83;
      }
    }

LABEL_82:
    v61 = *(v35 + 16);
    v60 = sub_2700C8(a1, &v61);
    goto LABEL_83;
  }

LABEL_111:
  sub_27D3FC(v12, v13, v14, __p);
  v44 = sub_BC168(a1[9], __p);
  v45 = v44;
  v46 = a1[9] + 8;
  if (v46 != v44)
  {
    v61 = *(v44 + 16);
    v60 = sub_1A4B74(a1, &v61);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
    if (v46 != v45)
    {
      return v60;
    }
  }

  else if (v46 != v45)
  {
    return v60;
  }

  v47 = a1[6];
  v50 = *(v47 + 8);
  v48 = v47 + 8;
  v49 = v50;
  if (v50)
  {
    v51 = v48;
    v52 = v49;
    do
    {
      if (*(v52 + 32) >= v12)
      {
        v51 = v52;
      }

      v52 = *(v52 + 8 * (*(v52 + 32) < v12));
    }

    while (v52);
    if (v51 != v48 && v12 >= *(v51 + 32))
    {
      v53 = v48;
      v54 = v49;
      do
      {
        if (*(v54 + 32) >= v13)
        {
          v53 = v54;
        }

        v54 = *(v54 + 8 * (*(v54 + 32) < v13));
      }

      while (v54);
      if (v53 != v48 && v13 >= *(v53 + 32))
      {
        v55 = v48;
        do
        {
          if (*(v49 + 32) >= v14)
          {
            v55 = v49;
          }

          v49 = *(v49 + 8 * (*(v49 + 32) < v14));
        }

        while (v49);
        if (v55 != v48 && v14 >= *(v55 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25A13C(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v62 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v61) = 7;
      strcpy(&__p, "(t+t)+t");
      v36 = sub_BC168(a1[8], &__p);
      v37 = v36;
      v38 = a1[8] + 8;
      if (v38 == v36)
      {
        goto LABEL_86;
      }
    }

    else if (v12 == 2 && v13 == 3 && v14 == 2)
    {
      HIBYTE(v61) = 7;
      strcpy(&__p, "(t+t)-t");
      v36 = sub_BC168(a1[8], &__p);
      v37 = v36;
      v38 = a1[8] + 8;
      if (v38 == v36)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v12 != 3 || v13 != 3 || v14 != 3)
      {
        if (v12 != 4 || v13 != 4 || v14 != 4)
        {
          v27 = v12 == 4 && v13 == 5;
          if (!v27 || v14 != 4)
          {
            v30 = v12 == 5 && v13 == 4;
            if (v30 && v14 == 5)
            {
              sub_3608D0(&__p, "(t*t)*t");
              v35 = sub_26FA34(a1, &__p, v9, v11, &v62);
              goto LABEL_94;
            }

            v33 = v12 == 5 && v13 == 5;
            if (!v33 || v14 != 5)
            {
              if (v14 != 5)
              {
                v27 = 0;
              }

              if (!v27 && (v14 != 4 || !v33))
              {
                if (v14 == 2 && v30)
                {
                  sub_3608D0(&__p, "(t*t)*(t+t)");
                  v35 = sub_18CA58(a1, &__p, v9, v11, &v62);
                  goto LABEL_94;
                }

                if (v14 != 3)
                {
                  v30 = 0;
                }

                if (v30)
                {
                  sub_3608D0(&__p, "(t*t)*(t-t)");
                  v35 = sub_18CA58(a1, &__p, v9, v11, &v62);
                  goto LABEL_94;
                }

                if (v8 == v10 && v12 == 4 && v14 == 4)
                {
                  if ((v13 & 0xFFFFFFFE) == 2)
                  {
                    v60 = 0;
                    v61 = 0x700000000000000;
                    __p = 0;
                    if (v13 == 2)
                    {
                      v43 = 11124;
                    }

                    else
                    {
                      v43 = 11636;
                    }

                    *(&__p + 3) = v43 | 0x29740000;
                    LODWORD(__p) = 1948789364;
                    v57 = sub_26FA34(a1, &__p, v9, v11, &v62);
LABEL_155:
                    if (v57)
                    {
                      v58 = v62;
                    }

                    else
                    {
                      v58 = 0;
                    }

                    if (SHIBYTE(v61) < 0)
                    {
                      operator delete(__p);
                    }

                    return v58;
                  }
                }

                else if (v8 == v10 && v12 == 5 && v14 == 5 && (v13 & 0xFFFFFFFE) == 2)
                {
                  v60 = 0;
                  v61 = 0x700000000000000;
                  __p = 0x742F2974000000;
                  if (v13 == 2)
                  {
                    v44 = 1949004840;
                  }

                  else
                  {
                    v44 = 1949135912;
                  }

                  LODWORD(__p) = v44;
                  v57 = sub_26A4FC(a1, &__p, v9, v11, &v62);
                  goto LABEL_155;
                }

                goto LABEL_124;
              }

              sub_3608D0(&__p, "t*(t/t)");
              v35 = sub_26FA34(a1, &__p, v9, v11, &v62);
LABEL_94:
              if (SHIBYTE(v61) < 0)
              {
                v40 = v35;
                operator delete(__p);
                v35 = v40;
              }

              if (v35)
              {
                return v62;
              }

              else
              {
                return 0;
              }
            }
          }

          sub_3608D0(&__p, "(t*t)/t");
          v35 = sub_26FA34(a1, &__p, v9, v11, &v62);
          goto LABEL_94;
        }

        HIBYTE(v61) = 7;
        strcpy(&__p, "(t*t)*t");
        v36 = sub_BC168(a1[8], &__p);
        v37 = v36;
        v38 = a1[8] + 8;
        if (v38 != v36)
        {
          goto LABEL_85;
        }

LABEL_86:
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }

        if (v38 == v37)
        {
          return 0;
        }

        else
        {
          return v62;
        }
      }

      HIBYTE(v61) = 7;
      strcpy(&__p, "(t+t)-t");
      v36 = sub_BC168(a1[8], &__p);
      v37 = v36;
      v38 = a1[8] + 8;
      if (v38 == v36)
      {
        goto LABEL_86;
      }
    }

LABEL_85:
    v63 = *(v36 + 16);
    v62 = sub_2700C8(a1, &v63);
    goto LABEL_86;
  }

LABEL_124:
  sub_27E1F4(v12, v13, v14, &__p);
  v45 = sub_BC168(a1[9], &__p);
  v46 = v45;
  v47 = a1[9] + 8;
  if (v47 != v45)
  {
    v63 = *(v45 + 16);
    v62 = sub_18CAF8(a1, &v63);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
    if (v47 != v46)
    {
      return v62;
    }
  }

  else if (v47 != v46)
  {
    return v62;
  }

  v48 = a1[6];
  v51 = *(v48 + 8);
  v49 = v48 + 8;
  v50 = v51;
  if (v51)
  {
    v52 = v49;
    v53 = v50;
    do
    {
      if (*(v53 + 32) >= v12)
      {
        v52 = v53;
      }

      v53 = *(v53 + 8 * (*(v53 + 32) < v12));
    }

    while (v53);
    if (v52 != v49 && v12 >= *(v52 + 32))
    {
      v54 = v49;
      v55 = v50;
      do
      {
        if (*(v55 + 32) >= v13)
        {
          v54 = v55;
        }

        v55 = *(v55 + 8 * (*(v55 + 32) < v13));
      }

      while (v55);
      if (v54 != v49 && v13 >= *(v54 + 32))
      {
        v56 = v49;
        do
        {
          if (*(v50 + 32) >= v14)
          {
            v56 = v50;
          }

          v50 = *(v50 + 8 * (*(v50 + 32) < v14));
        }

        while (v50);
        if (v56 != v49 && v14 >= *(v56 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25AAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25AAF8(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v60 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v59) = 7;
      strcpy(__p, "(t+t)+t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_83;
      }
    }

    else if (v12 == 2 && v13 == 3 && v14 == 2)
    {
      HIBYTE(v59) = 7;
      strcpy(__p, "(t+t)-t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v12 != 3 || v13 != 3 || v14 != 3)
      {
        if (v12 != 4 || v13 != 4 || v14 != 4)
        {
          v27 = v12 == 4 && v13 == 5;
          if (v27 && v14 == 4)
          {
LABEL_74:
            sub_3608D0(__p, "(t*t)/t");
            v34 = sub_26FA34(a1, __p, v9, v11, &v60);
LABEL_91:
            if (SHIBYTE(v59) < 0)
            {
              v39 = v34;
              operator delete(__p[0]);
              v34 = v39;
            }

            if (v34)
            {
              return v60;
            }

            else
            {
              return 0;
            }
          }

          if (v12 == 5 && v13 == 4 && v14 == 5)
          {
            sub_3608D0(__p, "t*(t/t)");
            v34 = sub_26FA34(a1, __p, v11, v9, &v60);
            goto LABEL_91;
          }

          v32 = v12 == 5 && v13 == 5;
          if (v32 && v14 == 5)
          {
            goto LABEL_90;
          }

          if (v14 != 5)
          {
            v27 = 0;
          }

          if (v27)
          {
            goto LABEL_74;
          }

          if (v14 == 4 && v32)
          {
LABEL_90:
            sub_3608D0(__p, "t/(t*t)");
            v34 = sub_26FA34(a1, __p, v9, v11, &v60);
            goto LABEL_91;
          }

          if (v8 == v10 && v12 == 4 && v14 == 4 && (v13 & 0xFFFFFFFE) == 2)
          {
            __p[1] = 0;
            v59 = 0x700000000000000;
            __p[0] = 0;
            if (v13 == 2)
            {
              v56 = 11124;
            }

            else
            {
              v56 = 11636;
            }

            *(__p + 3) = v56 | 0x29740000;
            LODWORD(__p[0]) = 1948789364;
            if (sub_26FA34(a1, __p, v9, v11, &v60))
            {
              result = v60;
            }

            else
            {
              result = 0;
            }

            if (SHIBYTE(v59) < 0)
            {
              v57 = result;
              operator delete(__p[0]);
              return v57;
            }

            return result;
          }

          goto LABEL_110;
        }

        HIBYTE(v59) = 7;
        strcpy(__p, "(t*t)*t");
        v35 = sub_BC168(a1[8], __p);
        v36 = v35;
        v37 = a1[8] + 8;
        if (v37 != v35)
        {
          goto LABEL_82;
        }

LABEL_83:
        if (SHIBYTE(v59) < 0)
        {
          operator delete(__p[0]);
        }

        if (v37 == v36)
        {
          return 0;
        }

        else
        {
          return v60;
        }
      }

      HIBYTE(v59) = 7;
      strcpy(__p, "t-(t+t)");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_83;
      }
    }

LABEL_82:
    v61 = *(v35 + 16);
    v60 = sub_2700C8(a1, &v61);
    goto LABEL_83;
  }

LABEL_110:
  sub_27EFF0(v12, v13, v14, __p);
  v44 = sub_BC168(a1[9], __p);
  v45 = v44;
  v46 = a1[9] + 8;
  if (v46 != v44)
  {
    v61 = *(v44 + 16);
    v60 = sub_1B85F0(a1, &v61);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
    if (v46 != v45)
    {
      return v60;
    }
  }

  else if (v46 != v45)
  {
    return v60;
  }

  v47 = a1[6];
  v50 = *(v47 + 8);
  v48 = v47 + 8;
  v49 = v50;
  if (v50)
  {
    v51 = v48;
    v52 = v49;
    do
    {
      if (*(v52 + 32) >= v12)
      {
        v51 = v52;
      }

      v52 = *(v52 + 8 * (*(v52 + 32) < v12));
    }

    while (v52);
    if (v51 != v48 && v12 >= *(v51 + 32))
    {
      v53 = v48;
      v54 = v49;
      do
      {
        if (*(v54 + 32) >= v13)
        {
          v53 = v54;
        }

        v54 = *(v54 + 8 * (*(v54 + 32) < v13));
      }

      while (v54);
      if (v53 != v48 && v13 >= *(v53 + 32))
      {
        v55 = v48;
        do
        {
          if (*(v49 + 32) >= v14)
          {
            v55 = v49;
          }

          v49 = *(v49 + 8 * (*(v49 + 32) < v14));
        }

        while (v49);
        if (v55 != v48 && v14 >= *(v55 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25B334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25B378(void *a1, int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v61 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v60) = 7;
      strcpy(__p, "(t+t)+t");
      v32 = sub_BC168(a1[8], __p);
      v33 = v32;
      v34 = a1[8] + 8;
      if (v34 == v32)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v12 != 2 || v13 != 3 || v14 != 2)
      {
        if (v12 == 3 && v13 == 3 && v14 == 3)
        {
          HIBYTE(v60) = 7;
          strcpy(__p, "(t+t)-t");
          v35 = sub_BC168(a1[8], __p);
          v33 = v35;
          v34 = a1[8] + 8;
          if (v34 != v35)
          {
            v62 = *(v35 + 16);
            v36 = sub_26AB90(a1, &v62);
LABEL_73:
            v61 = v36;
          }
        }

        else
        {
          if (v12 != 4 || v13 != 4 || v14 != 4)
          {
            v27 = v12 == 4 && v13 == 5;
            if (v27 && v14 == 4)
            {
              goto LABEL_79;
            }

            v29 = v12 == 5 && v13 == 4;
            if (v29 && v14 == 5)
            {
              goto LABEL_79;
            }

            if (v14 != 5)
            {
              v27 = 0;
            }

            if (v27)
            {
              sub_3608D0(__p, "(t*t)*t");
              v31 = sub_26FA34(a1, __p, v9, v11, &v61);
LABEL_80:
              if (SHIBYTE(v60) < 0)
              {
                v38 = v31;
                operator delete(__p[0]);
                v31 = v38;
              }

              if (v31)
              {
                return v61;
              }

              else
              {
                return 0;
              }
            }

            v39 = v12 == 5 && v13 == 5;
            v40 = v39;
            if (v40 && v14 == 4)
            {
LABEL_79:
              sub_3608D0(__p, "(t*t)/t");
              v31 = sub_26FA34(a1, __p, v9, v11, &v61);
              goto LABEL_80;
            }

            if (v14 != 5)
            {
              v40 = 0;
            }

            if (v40)
            {
              sub_3608D0(__p, "(t*t)*t");
              v31 = sub_26A4FC(a1, __p, v9, v11, &v61);
              goto LABEL_80;
            }

            if (v8 == v10 && v12 == 4 && v14 == 4 && (v13 & 0xFFFFFFFE) == 2)
            {
              __p[1] = 0;
              v60 = 0x700000000000000;
              __p[0] = 0;
              if (v13 == 2)
              {
                v57 = 11124;
              }

              else
              {
                v57 = 11636;
              }

              *(__p + 3) = v57 | 0x29740000;
              LODWORD(__p[0]) = 1948789364;
              if (sub_26FA34(a1, __p, v9, v11, &v61))
              {
                result = v61;
              }

              else
              {
                result = 0;
              }

              if (SHIBYTE(v60) < 0)
              {
                v58 = result;
                operator delete(__p[0]);
                return v58;
              }

              return result;
            }

            goto LABEL_110;
          }

          HIBYTE(v60) = 7;
          strcpy(__p, "(t*t)*t");
          v32 = sub_BC168(a1[8], __p);
          v33 = v32;
          v34 = a1[8] + 8;
          if (v34 != v32)
          {
            goto LABEL_72;
          }
        }

LABEL_74:
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 == v33)
        {
          return 0;
        }

        else
        {
          return v61;
        }
      }

      HIBYTE(v60) = 7;
      strcpy(__p, "(t+t)-t");
      v32 = sub_BC168(a1[8], __p);
      v33 = v32;
      v34 = a1[8] + 8;
      if (v34 == v32)
      {
        goto LABEL_74;
      }
    }

LABEL_72:
    v62 = *(v32 + 16);
    v36 = sub_2700C8(a1, &v62);
    goto LABEL_73;
  }

LABEL_110:
  sub_27FDE8(v12, v13, v14, __p);
  v45 = sub_BC168(a1[9], __p);
  v46 = v45;
  v47 = a1[9] + 8;
  if (v47 != v45)
  {
    v62 = *(v45 + 16);
    v61 = sub_28068C(a1, &v62);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
    if (v47 != v46)
    {
      return v61;
    }
  }

  else if (v47 != v46)
  {
    return v61;
  }

  v48 = a1[6];
  v51 = *(v48 + 8);
  v49 = v48 + 8;
  v50 = v51;
  if (v51)
  {
    v52 = v49;
    v53 = v50;
    do
    {
      if (*(v53 + 32) >= v12)
      {
        v52 = v53;
      }

      v53 = *(v53 + 8 * (*(v53 + 32) < v12));
    }

    while (v53);
    if (v52 != v49 && v12 >= *(v52 + 32))
    {
      v54 = v49;
      v55 = v50;
      do
      {
        if (*(v55 + 32) >= v13)
        {
          v54 = v55;
        }

        v55 = *(v55 + 8 * (*(v55 + 32) < v13));
      }

      while (v55);
      if (v54 != v49 && v13 >= *(v54 + 32))
      {
        v56 = v49;
        do
        {
          if (*(v50 + 32) >= v14)
          {
            v56 = v50;
          }

          v50 = *(v50 + 8 * (*(v50 + 32) < v14));
        }

        while (v50);
        if (v56 != v49 && v14 >= *(v56 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25BBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25BC00(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_284CDC(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_19E1F4(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25BED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25BEEC(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_285A74(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_199EC4(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25C1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25C1E0(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_286818(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_195C30(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25C4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25C4D8(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_2875B4(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_1919A0(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25C7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25C7CC(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  v7.n128_f64[0] = (*(**a3 + 16))();
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_288354(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A8E00(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v22)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v22));
    }

    while (v35);
    if (v37 != v34 && v22 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25CB58(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  v7.n128_f64[0] = (*(**a3 + 16))();
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2890F0(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A4B74(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v22)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v22));
    }

    while (v35);
    if (v37 != v34 && v22 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25CED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25CEEC(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_289E94(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_18CAF8(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25D1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25D1E8(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  v7.n128_f64[0] = (*(**a3 + 16))();
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_28AC3C(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1B85F0(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v22)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v22));
    }

    while (v35);
    if (v37 != v34 && v22 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25D55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25D578(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28B9E0(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_28068C(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25D84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25D868(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28C784(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_19E1F4(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25DB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25DB54(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28D51C(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_199EC4(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25DE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25DE48(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28E2BC(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_195C30(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25E124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25E140(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28F05C(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_1919A0(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25E418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25E434(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  v7.n128_f64[0] = (*(**a3 + 16))();
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_28FDFC(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A8E00(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v22)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v22));
    }

    while (v35);
    if (v37 != v34 && v22 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25E7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25E7C0(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  v7.n128_f64[0] = (*(**a3 + 16))();
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_290B9C(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A4B74(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v22)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v22));
    }

    while (v35);
    if (v37 != v34 && v22 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25EB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25EB54(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  (*(**a3 + 40))();
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = *(v20 + 40);
  v24 = a3[1];
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = a3[1];
    if (v25)
    {
      if ((*(*v25 + 32))(v25) == 18)
      {
        goto LABEL_26;
      }

      v26 = a3[1];
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_291940(v17, v18, v23, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v39 = *(v27 + 16);
    result = sub_18CAF8(a1, &v39);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v38 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v17)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v17));
    }

    while (v34);
    if (v36 != v33 && v17 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25EE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25EE50(void *a1, int *a2, void *a3)
{
  v6 = a3[1];
  v7.n128_f64[0] = (*(**a3 + 16))();
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2926E8(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1B85F0(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v22)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v22));
    }

    while (v35);
    if (v37 != v34 && v22 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25F1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25F1E0(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29348C(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_19E1F4(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25F4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25F4D0(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  v7.n128_f64[0] = (*(*a3[1] + 16))(a3[1]);
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *(v13 + 40);
  v23 = *(v19 + 40);
  v24 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_294224(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_199EC4(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v24)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v24));
    }

    while (v35);
    if (v37 != v34 && v24 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25F85C(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_294FC4(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_195C30(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25FB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25FB50(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_295D64(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_1919A0(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25FE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25FE48(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_296B08(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_1A8E00(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_260120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26013C(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_2978A4(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_1A4B74(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_26041C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_260438(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  v7.n128_f64[0] = (*(*a3[1] + 16))(a3[1]);
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *(v13 + 40);
  v23 = *(v19 + 40);
  v24 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_298648(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_18CAF8(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v24)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v24));
    }

    while (v35);
    if (v37 != v34 && v24 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2607B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2607CC(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  v7.n128_f64[0] = (*(*a3[1] + 16))(a3[1]);
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *(v13 + 40);
  v23 = *(v19 + 40);
  v24 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2993F0(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1B85F0(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v24)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v24));
    }

    while (v35);
    if (v37 != v34 && v24 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_260B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_260B5C(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29A194(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_28068C(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_260E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_260E4C(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29AF38(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_19E1F4(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_261120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26113C(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  v7.n128_f64[0] = (*(*a3[1] + 16))(a3[1]);
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *(v13 + 40);
  v23 = *(v19 + 40);
  v24 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_29BCD0(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_199EC4(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v24)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v24));
    }

    while (v35);
    if (v37 != v34 && v24 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2614AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614C8(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29CA70(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_195C30(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2617A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2617BC(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29D810(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_1919A0(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_261A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261AB4(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29E5B0(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_1A8E00(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_261D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261DA8(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  (*(*a3[1] + 40))(a3[1]);
  v7 = *(v6 + 32);
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *(v12 + 40);
  v18 = *(v6 + 40);
  if (!v10)
  {
    goto LABEL_18;
  }

  v19 = v9;
  do
  {
    v20 = *(v10 + 32);
    v15 = v20 >= v18;
    v21 = v20 < v18;
    if (v15)
    {
      v19 = v10;
    }

    v10 = *(v10 + 8 * v21);
  }

  while (v10);
  if (v19 == v9 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v9;
  }

  v22 = *(v19 + 40);
  v23 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29F350(v17, v22, v23, __p);
  v24 = sub_BC168(a1[9], __p);
  v25 = v24;
  v26 = a1[9] + 8;
  if (v26 != v24)
  {
    v36 = *(v24 + 16);
    result = sub_1A4B74(a1, &v36);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v35 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v26 != v25)
  {
    return result;
  }

LABEL_32:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    do
    {
      if (*(v31 + 32) >= v23)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v23));
    }

    while (v31);
    if (v33 != v30 && v23 >= *(v33 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_262088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2620A4(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  v7.n128_f64[0] = (*(*a3[1] + 16))(a3[1]);
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *(v13 + 40);
  v23 = *(v19 + 40);
  v24 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2A00F4(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_18CAF8(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v24)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v24));
    }

    while (v35);
    if (v37 != v34 && v24 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_26241C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262438(void *a1, int *a2, void *a3)
{
  v6 = *a3;
  v7.n128_f64[0] = (*(*a3[1] + 16))(a3[1]);
  v8 = *(v6 + 32);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *(v13 + 40);
  v23 = *(v19 + 40);
  v24 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3, v7) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v25 = a3[1];
  if (v25 && (*(*v25 + 32))(v25, v7) != 17)
  {
    v26 = a3[1];
    if (v26)
    {
      if ((*(*v26 + 32))(v26) == 18)
      {
        goto LABEL_33;
      }

      v27 = a3[1];
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2A0E9C(v22, v23, v24, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1B85F0(a1, &v40);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v30 != v29)
  {
    return result;
  }

LABEL_39:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v24)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v24));
    }

    while (v35);
    if (v37 != v34 && v24 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2627AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_262870(uint64_t a1)
{
  result = 0.0;
  if (**(a1 + 8) < **(a1 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_2628C8(uint64_t a1)
{
  result = 0.0;
  if (**(a1 + 8) <= **(a1 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_262920(uint64_t a1)
{
  result = 0.0;
  if (**(a1 + 8) > **(a1 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_262978(uint64_t a1)
{
  result = 0.0;
  if (**(a1 + 8) >= **(a1 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_2629D0(uint64_t a1)
{
  result = 0.0;
  if (**(a1 + 8) == **(a1 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_262A28(uint64_t a1)
{
  result = 0.0;
  if (**(a1 + 8) != **(a1 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_262A80(uint64_t a1)
{
  v1 = **(a1 + 16) == 0.0 || **(a1 + 8) == 0.0;
  result = 1.0;
  if (v1)
  {
    return 0.0;
  }

  return result;
}

double sub_262ADC(uint64_t a1)
{
  v1 = **(a1 + 16) == 0.0 || **(a1 + 8) == 0.0;
  result = 1.0;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

double sub_262B38(uint64_t a1)
{
  v1 = **(a1 + 16) == 0.0 && **(a1 + 8) == 0.0;
  result = 1.0;
  if (v1)
  {
    return 0.0;
  }

  return result;
}

double sub_262B94(uint64_t a1)
{
  v1 = **(a1 + 16) == 0.0 && **(a1 + 8) == 0.0;
  result = 1.0;
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

double sub_262BF0(uint64_t a1)
{
  result = 0.0;
  if ((**(a1 + 8) == 0.0) != (**(a1 + 16) == 0.0))
  {
    return 1.0;
  }

  return result;
}

double sub_262C5C(uint64_t a1)
{
  result = 1.0;
  if ((**(a1 + 8) != 0.0) != (**(a1 + 16) != 0.0))
  {
    return 0.0;
  }

  return result;
}

void *sub_262CB0(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_262E28(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  switch(*a3)
  {
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 0xA:
      operator new();
    case 0xB:
      operator new();
    case 0xC:
      operator new();
    case 0xD:
      operator new();
    case 0xE:
      operator new();
    case 0xF:
      operator new();
    case 0x10:
      operator new();
    case 0x11:
      operator new();
    case 0x12:
      operator new();
    case 0x13:
      operator new();
    case 0x14:
      operator new();
    case 0x15:
      operator new();
    case 0x16:
      operator new();
    case 0x17:
      operator new();
    case 0x18:
      operator new();
    case 0x19:
      operator new();
    case 0x1A:
      operator new();
    case 0x1B:
      operator new();
    case 0x1C:
      operator new();
    case 0x1D:
      operator new();
    case 0x1E:
      operator new();
    case 0x1F:
      operator new();
    case 0x20:
      operator new();
    case 0x21:
      operator new();
    case 0x22:
      operator new();
    case 0x23:
      operator new();
    case 0x24:
      operator new();
    case 0x25:
      operator new();
    case 0x26:
      operator new();
    case 0x27:
      operator new();
    case 0x28:
      operator new();
    case 0x29:
      operator new();
    case 0x2A:
      operator new();
    case 0x2B:
      operator new();
    case 0x2C:
      operator new();
    case 0x2D:
      operator new();
    case 0x2E:
      operator new();
    case 0x2F:
      operator new();
    case 0x30:
      operator new();
    case 0x31:
      operator new();
    case 0x32:
      operator new();
    case 0x33:
      operator new();
    case 0x34:
      operator new();
    case 0x35:
      operator new();
    case 0x36:
      operator new();
    case 0x37:
      operator new();
    case 0x38:
      operator new();
    case 0x39:
      operator new();
    case 0x3A:
      operator new();
    case 0x3B:
      operator new();
    case 0x3C:
      operator new();
    default:
      return 0;
  }
}