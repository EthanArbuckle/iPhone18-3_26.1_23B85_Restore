void sub_1AC05EB40()
{
  v0 = objc_autoreleasePoolPush();
  qword_1ED44E2F8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v1, v2, v3, v4);

  objc_autoreleasePoolPop(v0);
}

void sub_1AC05FFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0601B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    MEMORY[0x1AC5AC440](v16, v15);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1AC5AC440](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1AC0608D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (!__p)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1AC060A1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AC060A78(exception, a1);
  __cxa_throw(exception, off_1E7967CE8, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1AC060A78(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1AC061778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, void *a30)
{
  v38 = v30;

  _Unwind_Resume(a1);
}

void sub_1AC062EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1AC067008(&__p);

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(a1);
    sub_1AC070210(v21, v16);
    __cxa_end_catch();
    JUMPOUT(0x1AC062DD4);
  }

  v22 = *(v18 - 80);
  if (!v22)
  {
    sub_1AC066F88();
  }

  (*(*v22 + 48))(v22);
  sub_1AC063398(v18 - 104);
  _Unwind_Resume(a1);
}

void sub_1AC063010(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AC10B290(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0631AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  if (a15 < 0)
  {
    operator delete(__p);
    MEMORY[0x1AC5AC440](v16, v15);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1AC5AC440](v16, v15);
  _Unwind_Resume(a1);
}

_BYTE *sub_1AC063200(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_1AC0632B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void ***sub_1AC063324(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AC063398(uint64_t a1)
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

void sub_1AC0636EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AC10B290(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0636FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v13);
  MEMORY[0x1AC5AC440](v15, 0x20C4093837F09);
  MEMORY[0x1AC5AC440](v14, 0x20C4093837F09);
  if (a2 == 1)
  {
    v18 = __cxa_begin_catch(a1);
    sub_1AC070210(v18, v12);
    __cxa_end_catch();
    JUMPOUT(0x1AC0635E0);
  }

  if (!a12)
  {
    sub_1AC066F88();
  }

  (*(*a12 + 48))(a12);
  sub_1AC063398(&a9);
  _Unwind_Resume(a1);
}

void sub_1AC0637D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AC0636F4);
}

void sub_1AC063CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(a33);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_14:

      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v42);
    goto LABEL_14;
  }

LABEL_12:
  if (!v43)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

__n128 sub_1AC063E68@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AC063EC8(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = objc_msgSend_espressoBuffer(v1, v2, v3, v4, v5);

  return v6;
}

void sub_1AC063F80(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

__n128 sub_1AC063FAC@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_1AC0641E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0642AC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3812000000;
  v15[3] = sub_1AC06DCB4;
  v15[4] = nullsub_7;
  v15[5] = &unk_1AC1480A7;
  v15[6] = a2;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AC06DCC4;
  v10[3] = &unk_1E7967D48;
  v12 = v15;
  v13 = v14;
  v11 = v5;
  v6 = v5;
  objc_msgSend__enumerateVisibleLabelsAndIndicesInVocabularyUsingBlock_(a1, v7, v10, v8, v9);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

void sub_1AC0643C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_1AC0644F4(uint64_t a1, void *a2, float a3)
{
  v13 = a2;
  *&v5 = a3;
  v10 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8, v9, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v13, v12);
}

void sub_1AC0647E8(_Unwind_Exception *a1)
{
  if (v5)
  {
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1AC0649A4(uint64_t a1, void *a2, float a3)
{
  v13 = a2;
  *&v5 = a3;
  v10 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8, v9, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v13, v12);
}

void sub_1AC064B78(uint64_t a1, void *a2, float a3)
{
  v13 = a2;
  *&v5 = a3;
  v10 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8, v9, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v13, v12);
}

void sub_1AC065494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1AC0655B8(va);
  sub_1AC06DD88((v13 - 88));

  _Unwind_Resume(a1);
}

uint64_t sub_1AC065554(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void **sub_1AC0655B8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AC065A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v29 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v29)
  {
LABEL_8:
    sub_1AC067644((v30 - 80));
    if (a2 == 1)
    {
      v33 = __cxa_begin_catch(a1);
      sub_1AC070210(v33, v27);
      __cxa_end_catch();
      JUMPOUT(0x1AC065948);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

void sub_1AC065CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC065D4C(va);

  _Unwind_Resume(a1);
}

void sub_1AC065CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC065D4C(va);

  _Unwind_Resume(a1);
}

void sub_1AC065D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1AC065D4C(va);
  _Unwind_Resume(a1);
}

void sub_1AC065D28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;

  sub_1AC065D4C(va);
  _Unwind_Resume(a1);
}

void **sub_1AC065D4C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AC065F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AC065D4C(va);

  _Unwind_Resume(a1);
}

void sub_1AC065F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AC065D4C(va);

  _Unwind_Resume(a1);
}

void sub_1AC065F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1AC065D4C(&a15);
  _Unwind_Resume(a1);
}

void sub_1AC06620C(uint64_t a1, void *a2, float a3)
{
  v13 = a2;
  *&v5 = a3;
  v10 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v8, v9, v5);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v13, v12);
}

void sub_1AC066840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1AC066D78(v36 - 224);

  _Unwind_Resume(a1);
}

void sub_1AC0669EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v8 = *(v6 + 56);
  v9 = *(v6 + 64);
  v7 = (v6 + 56);
  if (v8 == v9)
  {
    sub_1AC067E8C(a1, &__p);
  }

  else
  {
    sub_1AC06AE38(&__p, v7);
  }

  sub_1AC067984(a1, a2, &__p, a3);
  v10 = __p;
  if (__p)
  {
    v11 = v15;
    v12 = __p;
    if (v15 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = __p;
    }

    v15 = v10;
    operator delete(v12);
  }
}

void sub_1AC066AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC063324(va);
  _Unwind_Resume(a1);
}

id sub_1AC066AC0(void **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = *a1;
  v6 = v3;
  v11 = objc_msgSend_UTF8String(v6, v7, v8, v9, v10);
  v12 = strlen(v11);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  BYTE7(v43) = v12;
  if (v12)
  {
    memmove(&__dst, v11, v12);
  }

  *(&__dst + v13) = 0;
  v14 = sub_1AC0686D0(v5, &__dst);
  if (SBYTE7(v43) < 0)
  {
    v24 = v14;
    operator delete(__dst);
    if (v24)
    {
      goto LABEL_10;
    }

LABEL_15:
    v25 = 0;
    goto LABEL_21;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = *a1;
  v16 = v4;
  v21 = objc_msgSend_UTF8String(v16, v17, v18, v19, v20);
  v22 = strlen(v21);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  v41 = v22;
  if (v22)
  {
    memmove(&__p, v21, v22);
  }

  *(&__p + v23) = 0;
  v26 = sub_1AC0686D0(v15, &__p);
  if (!v26)
  {
    sub_1AC0672B0("unordered_map::at: key not found");
  }

  v30 = v26[10];
  v31 = *(v30 + 5);
  v32 = *(v30 + 3);
  __dst = *(v30 + 1);
  v43 = v32;
  v44 = v31;
  v33 = *(v30 + 11);
  v34 = *(v30 + 13);
  v35 = *(v30 + 9);
  v45 = *(v30 + 7);
  v46 = v35;
  v36 = *(v30 + 15);
  v37 = *(v30 + 17);
  v38 = *(v30 + 19);
  v52 = v30[21];
  v50 = v37;
  v51 = v38;
  v49 = v36;
  v47 = v33;
  v48 = v34;
  v25 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v27, &__dst, v28, v29);
  if (v41 < 0)
  {
    operator delete(__p);
  }

LABEL_21:

  return v25;
}

void sub_1AC066D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC066D78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      v2[5] = &unk_1F20D01C0;
      v4 = v2[11];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = v2[7];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2[8] = v5;
    operator delete(v5);
    goto LABEL_8;
  }

LABEL_12:
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void sub_1AC066F88()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void sub_1AC066FD4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1AC067008(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 3;
        if (v8 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1AC0670CC(uint64_t result, char *a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AC063200(&v10, a2);
    sub_1AC063E68("PixelBufferTransfer operation [", &v10, &v11);
    sub_1AC063FAC("] failed. Status = ", &v11, &v12);
    std::to_string(&v9, v2);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v9;
    }

    else
    {
      v5 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    v7 = std::string::append(&v12, v5, size);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AC0671C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v32);
    goto LABEL_14;
  }

LABEL_12:
  if (!v33)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_1AC0672B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AC06730C(exception, a1);
  __cxa_throw(exception, off_1E7967CF0, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1AC06730C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void *sub_1AC067340(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return result;
}

void sub_1AC067480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1AC06755C(&a11);
  *(v11 + 8) = v12;
  sub_1AC0675C0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1AC0674A0(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1AC060A04();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_1AC06755C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_1AC0675C0(void ***a1)
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
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          v4 -= 6;
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

const void **sub_1AC067644(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AC067678(uint64_t a1)
{
  *a1 = &unk_1F20D01E0;
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {

    JUMPOUT(0x1AC5AC440);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AC06772C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x1AC5AC440](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

void sub_1AC067764(uint64_t a1)
{
  *a1 = &unk_1F20D01E0;
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {

    JUMPOUT(0x1AC5AC440);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AC067818(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x1AC5AC440](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC06784C(uint64_t a1)
{
  *a1 = &unk_1F20D01E0;
  if (CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

uint64_t sub_1AC0678E8(uint64_t a1)
{
  *a1 = &unk_1F20D01E0;
  if (CVPixelBufferUnlockBaseAddress(*(a1 + 8), *(a1 + 16)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1AC067984(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  for (i = *(a2 + 16); i; i = *i)
  {
    *v26 = &unk_1F20D0280;
    if (*(i + 39) < 0)
    {
      sub_1AC0674A0(&v26[8], i[2], i[3]);
    }

    else
    {
      v8 = *(i + 1);
      v27 = i[4];
      *&v26[8] = v8;
    }

    v28 = *v6;
    (*(*i[10] + 16))(i[10], v26);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(*&v26[8]);
    }
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      if (!sub_1AC0686D0(v6 + 24, v9))
      {
        v15 = *v6;
        v16 = *(v6 + 1);
        if (*(v9 + 23) < 0)
        {
          v17 = *v9;
        }

        v25 = espresso_network_bind_buffer();
        HIBYTE(v24[2]) = 21;
        strcpy(v24, "Binding output buffer");
        sub_1AC068028(&v25, v24);
        if (SHIBYTE(v24[2]) < 0)
        {
          operator delete(v24[0]);
        }

        LOWORD(v24[0]) = 0;
        sub_1AC06910C();
      }

      v11 = sub_1AC068CD4(v6 + 24, v9);
      if (!v11)
      {
        sub_1AC0672B0("unordered_map::at: key not found");
      }

      v21 = *(v11 + 12);
      v13 = v11[7];
      v12 = v11[8];
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AC060AAC();
      }

      v14 = v11[11];
      v22 = v11[10];
      v23 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v14 + 16))(v14);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  v18 = *(v6 + 3);
  LODWORD(v24[0]) = espresso_plan_execute_sync();
  v26[23] = 14;
  strcpy(v26, "Executing plan");
  sub_1AC068028(v24, v26);
  if ((v26[23] & 0x80000000) != 0)
  {
    operator delete(*v26);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = *(v6 + 56);
  prime = *(v6 + 25);
  if (prime == 1)
  {
    prime = 2;
LABEL_34:
    sub_1AC06A164(a4, prime);
    goto LABEL_35;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(v6 + 25));
  }

  if (prime)
  {
    goto LABEL_34;
  }

LABEL_35:
  for (j = *(v6 + 26); j; j = *j)
  {
    sub_1AC06A638(a4, (j + 2));
  }
}

void sub_1AC067DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1AC067E8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = *(a1 + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v13 = 0;
  while (1)
  {
    v6 = *v4;
    v7 = v4[1];
    result = espresso_get_output_blob_name();
    v9 = result;
    v13 = result;
    if (!result)
    {
      break;
    }

    v10 = a2[1];
    if (v10 >= a2[2])
    {
      v5 = sub_1AC06AC1C(a2, &v13);
    }

    else
    {
      v11 = strlen(result);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AC060A04();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v10[23] = v11;
      if (v11)
      {
        memmove(v10, v9, v11);
      }

      v10[v12] = 0;
      v5 = v10 + 24;
    }

    a2[1] = v5;
    ++v3;
  }

  return result;
}

void sub_1AC067FB4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1AC063324(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC067FE4(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

unsigned int *sub_1AC068028(unsigned int *result, uint64_t *a2)
{
  if (*result)
  {
    v2 = result;
    sub_1AC06A5AC(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_1AC063FAC(" [espresso error: ", &v9, &v10);
    std::to_string(&v8, *v2);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v8;
    }

    else
    {
      v4 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v6 = std::string::append(&v10, v4, size);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1AC063FAC("]", &v11, &v12);
    std::runtime_error::runtime_error(exception, &v12);
    exception->__vftable = &unk_1F20D02F8;
    __cxa_throw(exception, &unk_1F20D04F8, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_1AC06814C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 33) < 0)
  {
    operator delete(*(v35 - 56));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if (a21 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a22);
  if (a21 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_1AC068238(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC0682B0(uint64_t a1, _OWORD *a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1)
  {
    if (v3 == 2)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      if (*(a1 + 31) < 0)
      {
        v18 = *(a1 + 8);
      }

      v19 = a2[1];
      *__p = *a2;
      *&__p[2] = v19;
      v22 = espresso_network_bind_input_vimagebuffer_argb8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      sub_1AC068028(&v22, __p);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (*(a1 + 31) < 0)
      {
        v10 = *(a1 + 8);
      }

      v11 = a2[1];
      *__p = *a2;
      *&__p[2] = v11;
      v22 = espresso_network_bind_input_vimagebuffer_planar8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      sub_1AC068028(&v22, __p);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 40);
        if (*(a1 + 31) < 0)
        {
          v6 = *(a1 + 8);
        }

        v7 = a2[1];
        *__p = *a2;
        *&__p[2] = v7;
        v22 = espresso_network_bind_input_vimagebuffer_rgba8();
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "Binding vImage_Buffer");
        sub_1AC068028(&v22, __p);
        goto LABEL_18;
      }

LABEL_20:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported image buffer type");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    if (*(a1 + 31) < 0)
    {
      v14 = *(a1 + 8);
    }

    v15 = a2[1];
    *__p = *a2;
    *&__p[2] = v15;
    v22 = espresso_network_bind_input_vimagebuffer_bgra8();
    HIBYTE(__p[2]) = 21;
    strcpy(__p, "Binding vImage_Buffer");
    sub_1AC068028(&v22, __p);
  }

LABEL_18:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AC068508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC068530(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);
  }

  v7 = espresso_network_bind_cvpixelbuffer();
  v6 = 21;
  strcpy(__p, "Binding CVPixelBuffer");
  sub_1AC068028(&v7, __p);
  if (v6 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1AC0685D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0685EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);
  }

  v5 = espresso_network_bind_buffer();
  operator new();
}

void sub_1AC0686B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1AC0686D0(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(&v25, a2, v5);
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

unint64_t sub_1AC068888(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t **sub_1AC068CD4(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(&v25, a2, v5);
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
        if (v20 == v8)
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
      if (v16 == v8)
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

void sub_1AC068E8C(void *a1)
{
  *a1 = &unk_1F20D01C0;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1AC5AC440);
}

void *sub_1AC068F44(void *a1)
{
  *a1 = &unk_1F20D01C0;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1AC068FDC(void *a1)
{
  *a1 = &unk_1F20D01C0;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC069094(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_1AC069454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1AC069094(&a11);
  sub_1AC069094(&a9);
  _Unwind_Resume(a1);
}

void sub_1AC069608(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1AC069620(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1AC069660(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D0058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC0696B4(uint64_t a1)
{
  if (*(a1 + 201) == 1)
  {
    free(*(a1 + 32));
  }
}

uint64_t sub_1AC0696D0(uint64_t result)
{
  if (*(result + 177) == 1)
  {
    v1 = result;
    free(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1AC069710(uint64_t a1)
{
  if (*(a1 + 177) == 1)
  {
    free(*(a1 + 8));
  }

  JUMPOUT(0x1AC5AC440);
}

int8x16_t sub_1AC0697B8@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  rank = espresso_buffer_get_rank();
  if (rank >= 6)
  {
    v8 = rank;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v12, v8);
    sub_1AC063E68("Unsupported tensor rank: ", &v12, v10);
    std::runtime_error::runtime_error(exception, v10);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = vshlq_n_s64(*(a1 + 152), 2uLL);
  result = vextq_s8(v5, v5, 8uLL);
  v7 = vshlq_n_s64(*(a1 + 136), 2uLL);
  v10[0] = result;
  v10[1] = vextq_s8(v7, v7, 8uLL);
  v11 = 4 * *(a1 + 128);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (rank)
  {
    if (((8 * rank) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return result;
}

void sub_1AC0698E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_1AC069948(uint64_t a1)
{
  (*(*a1 + 24))(a1);
  (*(*a1 + 32))(&__p, a1);
  sub_1AC069A14();
}

void sub_1AC0699F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC069B3C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1AC069094(v1);
  _Unwind_Resume(a1);
}

void sub_1AC069B64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC069B9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1AC5AC410);
  }

  return result;
}

uint64_t sub_1AC069BBC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001AC128EFCLL)
  {
    if (((v2 & 0x80000001AC128EFCLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001AC128EFCLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001AC128EFCLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_1AC069C2C(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(&v24, a2, v5);
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

void sub_1AC06A064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06A090(va);
  _Unwind_Resume(a1);
}

void sub_1AC06A078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06A090(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC06A090(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_1F20D01C0;
      v3 = *(v2 + 88);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = *(v2 + 56);
      if (v4)
      {
        *(v2 + 64) = v4;
        operator delete(v4);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1AC06A164(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1AC06A2F8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = &unk_1F20D01C0;
  v3 = *(a2 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    *(a2 + 48) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

char *sub_1AC06A3B8(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1AC060AAC();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void *sub_1AC06A514(void *a1)
{
  *a1 = &unk_1F20D01C0;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1AC06A5AC(unsigned int *a1, uint64_t *a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1AC11F520(a2, a1);
  }
}

void sub_1AC06A600(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t **sub_1AC06A638(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(v24, a2, v5);
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
    sub_1AC06AA04();
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

void sub_1AC06A9EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06A090(va);
  _Unwind_Resume(a1);
}

void sub_1AC06AB68(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1AC06A090(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_1AC06A090(v1);
  _Unwind_Resume(a1);
}

void **sub_1AC06ABB4(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1AC06A2F8(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

_BYTE *sub_1AC06AC1C(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AC060AAC();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_1AC06ADBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06ADD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC06ADD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
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

void *sub_1AC06AE38(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return result;
}

void sub_1AC06AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_1AC06AF80(&a11);
  *(v11 + 8) = v12;
  sub_1AC06AFE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC06AF80(uint64_t a1)
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

void ****sub_1AC06AFE0(void ****a1)
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

void sub_1AC06B3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_1AC069094(&a15);
  sub_1AC069094(&a13);
  _Unwind_Resume(a1);
}

void sub_1AC06B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0x1AC06B454);
  }

  JUMPOUT(0x1AC06B400);
}

uint64_t sub_1AC06B474(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v2 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v2 = 1278226488;
LABEL_10:
    if (PixelFormatType == v2)
    {
      return 0;
    }

LABEL_15:
    v4 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, v4);
    sub_1AC063E68("Unsupported CVPixelBuffer type: ", &v6, &v7);
    std::runtime_error::runtime_error(exception, &v7);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v2 = 1380401729;
    goto LABEL_10;
  }

  return 4;
}

void sub_1AC06B5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_1AC06B630(void *a1)
{
  *a1 = &unk_1F20D01C0;
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC06B7BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1AC06B7DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1AC06B814(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D0090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC06B8BC(uint64_t a1)
{
  CVPixelBufferRelease(*(a1 + 8));

  JUMPOUT(0x1AC5AC440);
}

void *sub_1AC06B93C(uint64_t a1)
{
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 8));
  if (!BaseAddress)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get CVPixelBuffer's data. Ensure the buffer was locked.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = BaseAddress;
  CVPixelBufferGetDataSize(*(a1 + 8));
  return v3;
}

void sub_1AC06B9C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = qword_1AC129160[sub_1AC06B474(*(a1 + 8))];
  CVPixelBufferGetBytesPerRow(*(a1 + 8));
  sub_1AC06BC0C(*(a1 + 8));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

void sub_1AC06BA58(CVPixelBufferRef *a1)
{
  if (!CVPixelBufferLockBaseAddress(a1[1], 1uLL))
  {
    (*(*a1 + 3))(a1);
    (*(*a1 + 4))(&__p, a1);
    sub_1AC069A14();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1AC06BBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_1AC06784C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC06BC0C(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v2 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v4 = 1278226488;
LABEL_14:
    if (PixelFormatType != v4)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v4 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v2 = 1380401729;
LABEL_8:
    if (PixelFormatType == v2)
    {
      return 4;
    }

LABEL_16:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v7, v5);
    sub_1AC063E68("Unsupported CVPixelBuffer type: ", &v7, &v8);
    std::runtime_error::runtime_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return 1;
}

void sub_1AC06BD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_1AC06BDC8(uint64_t a1, void *a2)
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
    sub_1AC060AAC();
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

    sub_1AC066FD4();
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

uint64_t sub_1AC06BEE0(uint64_t a1, const char **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AC060A04();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_1F20D01C0;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1AC06C034(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1AC11F5D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC06C058(uint64_t a1)
{
  *(a1 + 24) = &unk_1F20D01C0;
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_1AC06C114(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(v24, a2, v5);
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
    sub_1AC06C4E0();
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

void sub_1AC06C4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06C66C(va);
  _Unwind_Resume(a1);
}

void sub_1AC06C620(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1AC06C66C(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  sub_1AC06C66C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC06C66C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1AC06A2F8(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void **sub_1AC06C6C0(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1AC06A2F8(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void **sub_1AC06C728(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1AC06A2F8(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AC06C800(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0580;
  a2[1] = v2;
  return result;
}

void sub_1AC06C82C(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUSceneNetLoadResources", "", v5, 2u);
  }
}

uint64_t sub_1AC06C8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z31[CSUSceneNetV5 loadResources:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z31[CSUSceneNetV5 loadResources:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z31[CSUSceneNetV5 loadResources:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z31[CSUSceneNetV5 loadResources:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_1AC06C92C(void *result)
{
  *result = &unk_1F20D0340;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_1AC06C9C0(void *a1)
{
  *a1 = &unk_1F20D0340;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC06CA88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D00C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC06CAE8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1AC0674A0((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v7;
  }

  sub_1AC06D280(a1 + 56, a3);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1065353216;
  if (*(a3 + 28))
  {
    v8 = *(a3 + 24);
  }

  else if (qword_1EB54A388 != -1)
  {
    sub_1AC11F5EC();
  }

  v9 = *(a3 + 40);
  context = espresso_create_context();
  *v6 = context;
  if (context)
  {
    v11 = *(a3 + 44);
    plan = espresso_create_plan();
    *(a1 + 24) = plan;
    if (plan)
    {
      if (*(a3 + 52) == 1 && (v13 = *(a3 + 48), LODWORD(v26.__r_.__value_.__l.__data_) = espresso_plan_set_priority(), HIBYTE(__p[2]) = 20, strcpy(__p, "Setting plan priorty"), sub_1AC068028(&v26, __p), SHIBYTE(__p[2]) < 0))
      {
        operator delete(__p[0]);
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_13:
        *__p = *a2;
        __p[2] = *(a2 + 2);
        goto LABEL_16;
      }

      sub_1AC0674A0(__p, *a2, *(a2 + 1));
LABEL_16:
      v14 = *(a3 + 135);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 120);
      }

      if (v14)
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v15 = HIBYTE(__p[2]);
        }

        else
        {
          v15 = __p[1];
        }

        if (v15 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1AC060A04();
        }

        if (v15 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v26, 0, sizeof(v26));
        *(&v26.__r_.__value_.__s + 23) = v15 + 1;
        if (v15)
        {
          if (SHIBYTE(__p[2]) >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          memmove(&v26, v16, v15);
        }

        *(&v26.__r_.__value_.__l.__data_ + v15) = 58;
        v17 = *(a3 + 135);
        if (v17 >= 0)
        {
          v18 = (a3 + 112);
        }

        else
        {
          v18 = *(a3 + 112);
        }

        if (v17 >= 0)
        {
          v19 = *(a3 + 135);
        }

        else
        {
          v19 = *(a3 + 120);
        }

        v20 = std::string::append(&v26, v18, v19);
        v21 = v20->__r_.__value_.__r.__words[0];
        *&v28 = v20->__r_.__value_.__l.__size_;
        *(&v28 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
        v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v21;
        __p[1] = v28;
        *(&__p[1] + 7) = *(&v28 + 7);
        HIBYTE(__p[2]) = v22;
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      v23 = *(a1 + 24);
      v24 = *(a3 + 32);
      *(a3 + 36);
      LODWORD(v28) = espresso_plan_add_network();
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso plan.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso context.");
  }

  exception->__vftable = &unk_1F20D02F8;
  __cxa_throw(exception, &unk_1F20D04F8, std::runtime_error::~runtime_error);
}

void sub_1AC06D18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1AC066D78(v27);
  sub_1AC066D78(v26);
  sub_1AC067008(v25 + 56);
  if (*(v25 + 55) < 0)
  {
    operator delete(*(v25 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC06D280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC06AE38(a1, a2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 49);
  *(v4 + 9) = 0u;
  v8 = v4 + 9;
  *(v4 + 49) = v7;
  *(v4 + 3) = v5;
  *(v4 + 5) = v6;
  *(v4 + 11) = 0u;
  *(v4 + 26) = *(a2 + 104);
  prime = *(a2 + 80);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1AC06A164(v8, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 80));
    v10 = *(a1 + 80);
    v11 = prime >= *&v10;
    if (prime > *&v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v11)
  {
    v12 = vcvtps_u32_f32(*(a1 + 96) / *(a1 + 104));
    if (*&v10 < 3uLL || (v13 = vcnt_s8(v10), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      v12 = std::__next_prime(v12);
    }

    else
    {
      v14 = 1 << -__clz(v12 - 1);
      if (v12 >= 2)
      {
        v12 = v14;
      }
    }

    if (prime <= v12)
    {
      prime = v12;
    }

    if (prime < *&v10)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 88); i; i = *i)
  {
    sub_1AC06D43C(v8, (i + 2));
  }

  if (*(a2 + 135) < 0)
  {
    sub_1AC0674A0((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v16 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v16;
  }

  return a1;
}

void sub_1AC06D400(_Unwind_Exception *a1)
{
  sub_1AC0632B8(v2);
  sub_1AC063324(v1);
  _Unwind_Resume(a1);
}

void sub_1AC06D41C(_Unwind_Exception *a1)
{
  sub_1AC0632B8(v2);
  sub_1AC063324(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AC06D43C(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(&v24, a2, v5);
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

void sub_1AC06D848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06D874(va);
  _Unwind_Resume(a1);
}

void sub_1AC06D85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06D874(va);
  _Unwind_Resume(a1);
}

void *sub_1AC06D874(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_1AC06D8DC()
{
  result = MGGetBoolAnswer();
  byte_1EB54A380 = result;
  return result;
}

uint64_t sub_1AC06D904(uint64_t a1)
{
  if (*(a1 + 24))
  {
    espresso_plan_destroy();
  }

  if (*(a1 + 16))
  {
    espresso_context_destroy();
  }

  sub_1AC066D78(a1 + 232);
  sub_1AC066D78(a1 + 192);
  sub_1AC067008(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_1AC06D9EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0610;
  a2[1] = v2;
  return result;
}

void sub_1AC06DA18(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUSceneNetResampleImage", "", v5, 2u);
  }
}

uint64_t sub_1AC06DAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z52[CSUSceneNetV5 resampleImage:intoInputImage:error:]E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "Z52[CSUSceneNetV5 resampleImage:intoInputImage:error:]E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z52[CSUSceneNetV5 resampleImage:intoInputImage:error:]E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z52[CSUSceneNetV5 resampleImage:intoInputImage:error:]E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AC06DB88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0690;
  a2[1] = v2;
  return result;
}

void sub_1AC06DBB4(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUSceneNetRunOnInputImage", "", v5, 2u);
  }
}

uint64_t sub_1AC06DC3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z44[CSUSceneNetV5 runOnInputImage:completion:]E3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "Z44[CSUSceneNetV5 runOnInputImage:completion:]E3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z44[CSUSceneNetV5 runOnInputImage:completion:]E3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z44[CSUSceneNetV5 runOnInputImage:completion:]E3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AC06DCC4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(a1[5] + 8) + 48) += 4 * (a3 - *(*(a1[6] + 8) + 24));
  *(*(a1[6] + 8) + 24) = a3;
  (*(a1[4] + 16))(**(*(a1[5] + 8) + 48));
}

void *sub_1AC06DD88(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 72);
    if (v3)
    {
      *(v1 + 80) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    MEMORY[0x1AC5AC440](v1, 0x10B0C40BA831511);
    return v2;
  }

  return result;
}

void sub_1AC06DF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1AC06DFAC(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 3) != 0)
  {
    v6 = (a1 + 64);
    if (*(a1 + 64))
    {
      objc_msgSend_errorWithCode_message_(CSUError, a2, 8, @"embedding bufferA does not have all floats", a5);
      **v6 = LABEL_14:;
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v9 = a3 >> 2;
  if (a3 >> 2 != objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5))
  {
    v6 = (a1 + 64);
    if (*(a1 + 64))
    {
      objc_msgSend_errorWithCode_message_(CSUError, v10, 8, @"embedding bufferA does not have same number of elements as the reference array", v12);
      goto LABEL_14;
    }

LABEL_15:
    **(a1 + 72) = -1082130432;
    return;
  }

  if (!a2)
  {
    v6 = (a1 + 64);
    if (*(a1 + 64))
    {
      objc_msgSend_errorWithCode_message_(CSUError, v10, 8, @"pointer to embedding bufferA is null", v12);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (a3 >= 4)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v10, v13, v11, v12);
      objc_msgSend_floatValue(v14, v15, v16, v17, v18);
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + (v19 * *&a2[4 * v13]);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + (*&a2[4 * v13] * *&a2[4 * v13]);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + (v19 * v19);

      ++v13;
    }

    while (v9 != v13);
  }
}

void sub_1AC06E28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v14 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1AC06E2C8(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 40) + 8) + 24) = a3 >> 2;
  if ((a3 & 3) != 0)
  {
    v6 = (a1 + 64);
    if (*(a1 + 64))
    {
      objc_msgSend_errorWithCode_message_(CSUError, a2, 8, @"embedding bufferA does not have all floats", a5);
      **v6 = LABEL_18:;
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (v8 != objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5))
  {
    v6 = (a1 + 64);
    if (*(a1 + 64))
    {
      objc_msgSend_errorWithCode_message_(CSUError, v9, 8, @"embedding bufferA does not have same number of elements as the reference array", v11);
      goto LABEL_18;
    }

LABEL_19:
    **(a1 + 72) = -1082130432;
    return;
  }

  if (!a2)
  {
    v6 = (a1 + 64);
    if (*(a1 + 64))
    {
      objc_msgSend_errorWithCode_message_(CSUError, v9, 8, @"pointer to embedding bufferA is null", v11);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v12 = 0;
    objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v9, 0, v10, v11);
    while (1)
      v18 = {;
      objc_msgSend_floatValue(v18, v19, v20, v21, v22);
      v14 = vabds_f32(v23, *&a2[4 * v12]);
      if (*(a1 + 80) == 1)
      {
        v13 = *(*(a1 + 48) + 8);
        v14 = v14 + *(v13 + 24);
      }

      else
      {
        v13 = *(*(a1 + 56) + 8);
        if (*(v13 + 24) >= v14)
        {
          v14 = *(v13 + 24);
        }
      }

      *(v13 + 24) = v14;

      if (*(*(*(a1 + 40) + 8) + 24) <= ++v12)
      {
        break;
      }

      objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v15, v12, v16, v17);
    }
  }
}

void sub_1AC06EEE4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v5 = __cxa_begin_catch(a1);
    sub_1AC070210(v5, v3);
    __cxa_end_catch();
    JUMPOUT(0x1AC06EEB8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC070210(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC090E50();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AC11F648(a1, v4);
  }

  if (a2)
  {
    v5 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v6 = MEMORY[0x1E696AEC0];
    v7 = (*(*a1 + 16))(a1);
    v11 = objc_msgSend_stringWithUTF8String_(v6, v8, v7, v9, v10);
    v18[0] = v11;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v18, &v17, 1);
    *a2 = objc_msgSend_errorWithDomain_code_userInfo_(v5, v14, *MEMORY[0x1E696A768], -1, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1AC070374(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 23) = 0;
  *a3 = 0;
  if (a2 >= 25)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid Parameter for number of bits");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = a1 << (24 - a2);
  std::string::push_back(a3, aAbcdefghijklmn[(v5 >> 18) & 0x3F]);
  v6 = vcvtd_n_s64_f64(ceil(vcvtd_n_f64_s32(a2, 3uLL)), 3uLL);
  if (v6 < 7)
  {
    v7 = 61;
  }

  else
  {
    v7 = aAbcdefghijklmn[(v5 >> 12) & 0x3F];
  }

  std::string::push_back(a3, v7);
  if (v6 < 13)
  {
    v8 = 61;
  }

  else
  {
    v8 = aAbcdefghijklmn[(v5 >> 6) & 0x3F];
  }

  std::string::push_back(a3, v8);
  if (v6 < 19)
  {
    v9 = 61;
  }

  else
  {
    v9 = aAbcdefghijklmn[v5 & 0x3F];
  }

  std::string::push_back(a3, v9);
}

void sub_1AC07049C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0704B8(float *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    *(a4 + 8) = 0;
    v7 = *a4;
  }

  else
  {
    *(a4 + 23) = 0;
    v7 = a4;
  }

  *v7 = 0;
  v8 = vcvtpd_s64_f64(log2((2 * a3)));
  if (v8 > 24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid Parameter for number of bits per hash");
    goto LABEL_31;
  }

  if (a2)
  {
    v9 = 0;
    v10 = 24;
    v11 = a2;
    while (1)
    {
      v12 = *a1;
      if (*a1 != v12)
      {
        break;
      }

      if (v10 >= v8)
      {
        v9 = (v9 << v8) | v12;
        v10 -= v8;
        ++a1;
        if (!--v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = v8 - v10;
        sub_1AC070374((v12 >> (v8 - v10)) | (v9 << v10), 24, &__p);
        if ((v23 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v23 & 0x80u) == 0)
        {
          v15 = v23;
        }

        else
        {
          v15 = v22;
        }

        std::string::append(a4, p_p, v15);
        v16 = ldexp(1.0, v13);
        if (v23 < 0)
        {
          operator delete(__p);
        }

        v9 = v12 & (v16 + -1.0);
        v10 = 24 - v13;
        ++a1;
        if (!--v11)
        {
LABEL_19:
          v17 = 24 - v10;
          goto LABEL_21;
        }
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Data not consistent");
LABEL_31:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v17 = 0;
  v9 = 0;
LABEL_21:
  sub_1AC070374(v9, v17, &__p);
  if ((v23 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v23 & 0x80u) == 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v22;
  }

  std::string::append(a4, v18, v19);
  if (v23 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AC0706C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0706F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[1] != a3)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "input feature vector size does not match hasher expectation!";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = a1[2];
  if (v6)
  {
    if (!(v6 >> 62))
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  (*(*a1 + 16))(a1, a2, 0);
  v7 = a1[2];
  v8 = a1[3];
  v22 = 0;
  if (v8)
  {
    v9 = v7 / v8;
    v10 = v9;
    if (v9 << 32)
    {
      v11 = *(a4 + 8);
      if (4 * v9 < 0)
      {
        v18 = 1;
        v19 = 0;
        do
        {
          v21 = v19 + 4 * v10;
          if (v11 < *(a4 + 16))
          {
            *v11 = 0;
            v11[1] = 0;
            v11[2] = 0;
            sub_1AC060AAC();
          }

          v11 = sub_1AC0709D0(a4, &v22, &v21);
          *(a4 + 8) = v11;
          v19 = v22 + 4 * v10;
          v22 = v19;
          v14 = a1[3] > v18++;
        }

        while (v14);
      }

      else
      {
        v12 = 1;
        v13 = 0;
        do
        {
          v21 = v13 + 4 * v10;
          if (v11 < *(a4 + 16))
          {
            *v11 = 0;
            v11[1] = 0;
            v11[2] = 0;
            operator new();
          }

          v11 = sub_1AC0709D0(a4, &v22, &v21);
          *(a4 + 8) = v11;
          v13 = v22 + 4 * v10;
          v22 = v13;
          v14 = a1[3] > v12++;
        }

        while (v14);
      }
    }

    else
    {
      v15 = *(a4 + 8);
      v16 = 1;
      v17 = 0;
      do
      {
        v21 = v17 + 4 * v10;
        if (v15 < *(a4 + 16))
        {
          *v15 = 0;
          v15[1] = 0;
          v15[2] = 0;
          v15 += 3;
          *(a4 + 8) = v15;
        }

        else
        {
          v15 = sub_1AC0709D0(a4, &v22, &v21);
          v17 = v22;
        }

        *(a4 + 8) = v15;
        v17 += 4 * v10;
        v22 = v17;
        v14 = a1[3] > v16++;
      }

      while (v14);
    }
  }
}

void sub_1AC07098C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AC0709D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AC060AAC();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v9 = v6 + 3;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v6 - v11;
  memcpy(v12, *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_1AC070B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1AC070B68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC070B68(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AC07106C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1AC0715E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);

  _Unwind_Resume(a1);
}

char *sub_1AC071660(uint64_t a1, char *__src, _DWORD *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 2) + 1;
    if (v10 >> 62)
    {
      sub_1AC060AAC();
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

      sub_1AC066FD4();
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 2;
    v15 = (4 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 1;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 62))
        {
          operator new();
        }

        sub_1AC066FD4();
      }

      v15 = (v15 - (((v13 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    *v15 = *a3;
    memcpy(v15 + 1, __src, *(a1 + 8) - __src);
    v18 = *a1;
    v19 = v15 + *(a1 + 8) - v4 + 4;
    *(a1 + 8) = v4;
    v20 = v4 - v18;
    v21 = v15 - (v4 - v18);
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }

    return v15;
  }

  else
  {
    if (__src != v6)
    {
      v8 = __src + 4;
      if (v6 < 4)
      {
        *(a1 + 8) = v6;
        if (v6 == v8)
        {
LABEL_21:
          *v4 = *a3;
          return v4;
        }
      }

      else
      {
        *v6 = *(v6 - 1);
        *(a1 + 8) = v6 + 4;
        if (v6 == v8)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 4, __src, v6 - v8);
      goto LABEL_21;
    }

    *v6 = *a3;
    *(a1 + 8) = v6 + 4;
  }

  return v4;
}

void sub_1AC07187C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC071F28(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v15);
  MEMORY[0x1AC5AC440](v10, 0xA1C409BE6959DLL);
  sub_1AC067008(&a9);
  if (*(v12 - 105) < 0)
  {
    operator delete(*(v12 - 128));
  }

  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    sub_1AC070210(v16, v9);
    __cxa_end_catch();
    JUMPOUT(0x1AC071E50);
  }

  v17 = *(v12 - 80);
  if (!v17)
  {
    sub_1AC066F88();
  }

  (*(*v17 + 48))(v17);
  sub_1AC063398(v12 - 104);
  _Unwind_Resume(a1);
}

void sub_1AC072064(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AC10B290(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0721D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC072BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  sub_1AC068024(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC072D54(uint64_t result, __int128 *a2, uint64_t a3)
{
  v3 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v4 = *(a3 + 8);
  *(result + 40) = 0;
  *(result + 24) = &unk_1F20D01C0;
  *(result + 32) = v4;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v7 = *(a3 + 48);
  *(result + 64) = *(a3 + 40);
  *(result + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1AC072E3C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1AC11F5D8(v1);
  _Unwind_Resume(a1);
}

void *sub_1AC072E60(void *result)
{
  *result = off_1F20D01A0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1AC0748BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  sub_1AC076D6C(&STACK[0x268]);
  sub_1AC065D4C(&STACK[0x280]);

  _Unwind_Resume(a1);
}

void **sub_1AC074E0C(void *a1, uint64_t a2, __n128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AC060AAC();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v32 = a1;
    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    v29 = 0;
    v30 = 8 * ((a2 - v16) >> 3);
    v31 = v30;
    sub_1AC0762E8(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    if (v26)
    {
      operator delete(v26);
    }

    return v21;
  }

  else if (a2 == v7)
  {
    v7->n128_u64[0] = 0;
    v7->n128_u64[1] = 0;
    v7[1].n128_u64[0] = 0;
    *v7 = *a3;
    v7[1].n128_u64[0] = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a1[1] = v7 + 24;
  }

  else
  {
    v8 = (v7 - 24);
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = &v7[1].n128_u64[1];
      v7->n128_u64[0] = 0;
      v7->n128_u64[1] = 0;
      v7[1].n128_u64[0] = 0;
      *v7 = *v8;
      v7[1].n128_u64[0] = v7[-1].n128_u64[1];
      v8->n128_u64[0] = 0;
      v7[-1].n128_u64[0] = 0;
      v7[-1].n128_u64[1] = 0;
    }

    a1[1] = v9;
    if (v7 != (a2 + 24))
    {
      v10 = 0;
      v11 = a2 - v7 + 24;
      do
      {
        v13 = &v7->n128_u64[v10 / 8];
        v15 = (&v7[-1] + v10 - 8);
        v14 = *v15;
        if (*v15)
        {
          *(v13 - 2) = v14;
          operator delete(v14);
          *v15 = 0;
          v7[-1].n128_u64[v10 / 8] = 0;
          v7->n128_u64[v10 / 8 - 1] = 0;
        }

        v12 = v13 - 6;
        *v15 = *(v13 - 3);
        *(v13 - 1) = *(v13 - 4);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v10 -= 24;
      }

      while (v11 != v10);
    }

    v20 = *v4;
    if (*v4)
    {
      v4[1] = v20;
      operator delete(v20);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    *v4 = *a3;
    v4[2] = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
  }

  return v4;
}

void sub_1AC075088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC070B68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0750B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = 0;
  *(result + 32) = &unk_1F20D01C0;
  *(result + 40) = v2;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v4 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v5 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 32) = &unk_1F20D0320;
  return result;
}

void sub_1AC075198(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC0751B4(void *a1)
{
  a1[4] = &unk_1F20D01C0;
  v1 = a1[10];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v3;
    v2 = v3[6];
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[6];
    if (!v2)
    {
      return;
    }
  }

  a1[7] = v2;

  operator delete(v2);
}

void **sub_1AC0758E8(void **__dst, const void *a2, size_t __len)
{
  LODWORD(v5) = *(__dst + 23);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = __dst[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__len > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __len - v8)
      {
        v9 = *__dst;
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      sub_1AC060A04();
    }

    v5 = HIBYTE(v7);
    v6 = *__dst;
  }

  else
  {
    v6 = __dst;
    if (__len > 0x16)
    {
      if (__len - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__len)
  {
    memmove(v6, a2, __len);
    LOBYTE(v5) = *(__dst + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    __dst[1] = __len;
  }

  else
  {
    *(__dst + 23) = __len & 0x7F;
  }

  *(v6 + __len) = 0;
  return __dst;
}

void **sub_1AC075A84(void **a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AC0758E8(a1, __s, v4);
}

void sub_1AC075C7C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AC068024(v1);
  _Unwind_Resume(a1);
}

void *sub_1AC075CAC(void *result, uint64_t a2, void *a3)
{
  result[2] = 0;
  *result = off_1F20D01A0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  v3 = a3[1];
  if (v3 != *a3)
  {
    if (((v3 - *a3) & 0x8000000000000000) == 0)
    {
      v4 = v3 - *a3;
      operator new();
    }

    sub_1AC060AAC();
  }

  result[5] = 0;
  return result;
}

void sub_1AC075DD4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC075E04(void *a1)
{
  *a1 = off_1F20D01A0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1AC5AC440);
}

void *sub_1AC075E78(void *result)
{
  *result = off_1F20D01A0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_1AC075ED0(void *a1)
{
  *a1 = off_1F20D01A0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1AC5AC440);
}

char *sub_1AC075F44(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_1AC060AAC();
    }

    v13 = v9 - v11;
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

      sub_1AC066FD4();
    }

    v47 = (__dst - v11);
    v48 = 4 * ((__dst - v11) >> 2);
    v49 = (v48 + 4 * a5);
    v50 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x7FFFFFFFFFFFFFF8;
      v51 = (v48 + 4 * v60);
      v52 = &__src[4 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 8;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 4;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 4 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v15 = 4 * a5;
    v34 = &__dst[4 * a5];
    v35 = (v10 - 4 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 2) + 1;
      v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 8;
      }

      while (v44);
      if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v34);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 4 * a5;
    v22 = &v5[4 * a5];
    v23 = &v20[-4 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 4;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x1C)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 2) + 1;
      v28 = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_63:
        do
        {
          v33 = *v23;
          v23 += 4;
          *v26 = v33;
          v26 += 4;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[4 * a5], v5, v20 - v22);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15);
    }
  }

  return v5;
}

__n128 sub_1AC0762E8(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
    v5 = v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        v9 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v9;
          operator delete(v9);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        v6 += 24;
        v5 += 24;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 24 * v8;
    a1[2] = v5;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  result = *a2;
  *v5 = *a2;
  *(v5 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a1[2] += 24;
  return result;
}

void *sub_1AC0764F8(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AC060AAC();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AC066FD4();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_1AC076664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1AC070B68(va);
  _Unwind_Resume(a1);
}

void *sub_1AC076688(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          v7 = v6 - *v5;
          operator new();
        }

        sub_1AC060AAC();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1AC07676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_1AC076794(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC076794(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void ***sub_1AC076804(void ***a1)
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
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1AC076A54(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1AC076A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 24) = v14;
    operator delete(v14);
  }

  sub_1AC069094(&a11);
  sub_1AC069094(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC076A98(uint64_t a1, unsigned int *a2, int32x4_t **a3)
{
  v29 = 0u;
  v6 = a3[1] - *a3;
  espresso_buffer_pack_tensor_shape();
  v7 = *a2;
  if (v7 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unknown data type");
    goto LABEL_20;
  }

  v8 = qword_1AC129358[v7];
  v10 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v11 = v9 - v10 - 8;
  if (v11 >= 0x38)
  {
    v15 = (v11 >> 3) + 1;
    v13 = (v10 + 8 * (v15 & 0x3FFFFFFFFFFFFFF8));
    v16 = v10 + 2;
    v17.i64[0] = 0x100000001;
    v17.i64[1] = 0x100000001;
    v18 = v15 & 0x3FFFFFFFFFFFFFF8;
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    do
    {
      v21 = v16[-2];
      v20 = v16[-1];
      v23 = *v16;
      v22 = v16[1];
      v16 += 4;
      v17 = vmulq_s32(v17, vuzp1q_s32(v21, v20));
      v19 = vmulq_s32(v19, vuzp1q_s32(v23, v22));
      v18 -= 8;
    }

    while (v18);
    v24 = vmulq_s32(v19, v17);
    *v24.i8 = vmul_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v12 = v24.i32[0] * v24.i32[1];
    if (v15 == (v15 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 1;
    v13 = *a3;
  }

  do
  {
    v25 = v13->i32[0];
    v13 = (v13 + 8);
    v12 *= v25;
  }

  while (v13 != v9);
LABEL_10:
  v14 = v12;
LABEL_11:
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x1000uLL, (v14 * v8 + 4095) & 0xFFFFFFFFFFFFF000, 0xA6D64935uLL))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to allocate aligned memory.");
    goto LABEL_20;
  }

  *&v29 = memptr;
  v26 = *a2;
  if (v26 >= 5 || ((0x1Du >> v26) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unknown data type.");
    goto LABEL_20;
  }

  v30 = dword_1AC129380[v26];
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 8) = v29;
  *(a1 + 24) = 0u;
  *a1 = &unk_1F20D0200;
  *(a1 + 40) = 0u;
  *(a1 + 168) = v30;
  *(a1 + 176) = 257;
  if (*(a1 + 168) != 65568)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unexpected espresso buffer storage type");
LABEL_20:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void **sub_1AC076D6C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 2;

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AC076E44(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0778;
  a2[1] = v2;
  return result;
}

void sub_1AC076E70(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUTextEncoderEspressoV1LoadResources", "", v5, 2u);
  }
}

uint64_t sub_1AC076EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z46[CSUSystemSearchTextEncoderV1 loadResources:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z46[CSUSystemSearchTextEncoderV1 loadResources:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z46[CSUSystemSearchTextEncoderV1 loadResources:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z46[CSUSystemSearchTextEncoderV1 loadResources:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **sub_1AC076F70(void *a1, uint64_t a2)
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

  v6 = sub_1AC068888(&v24, a2, v5);
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

void sub_1AC077388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC06A090(va);
  _Unwind_Resume(a1);
}

void sub_1AC0774FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a15);

      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_1AC0775AC(uint64_t a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    if (a1 == this)
    {
      return a1;
    }

    v4 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (*(a1 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v10 = this;
      }

      else
      {
        v10 = this->__pn_.__r_.__value_.__r.__words[0];
      }

      if (v4 >= 0)
      {
        size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = this->__pn_.__r_.__value_.__l.__size_;
      }

      sub_1AC077768(a1, v10, size);
      return a1;
    }

    else
    {
      if ((*(&this->__pn_.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        v5 = *&this->__pn_.__r_.__value_.__l.__data_;
        *(a1 + 16) = *(&this->__pn_.__r_.__value_.__l + 2);
        *a1 = v5;
        return a1;
      }

      sub_1AC077698(a1, this->__pn_.__r_.__value_.__l.__data_, this->__pn_.__r_.__value_.__l.__size_);
      return a1;
    }
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(a1, 47);
    }

    v7 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v7 >= 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v7 >= 0)
    {
      v9 = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v8, v9);
    return a1;
  }
}

_BYTE *sub_1AC077698(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_1AC060A04();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_1AC077768(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_1AC060A04();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

std::string *sub_1AC077890(std::string *this, std::string *a2, std::string *a3)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v6 = v10 >> 63;
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v9 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v9->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v19 = a3 - a2;
    if (a3 != a2)
    {
      memcpy(__dst, a2, v5);
    }

    *(__dst + v5) = 0;
    if ((v19 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __dst[1];
    }

    std::string::append(this, v15, v16);
    if (v19 < 0)
    {
      operator delete(__dst[0]);
    }

    return this;
  }

LABEL_12:
  if (v7 - size < v5)
  {
    if (0x7FFFFFFFFFFFFFF7 - v7 >= v5 + size - v7)
    {
      if ((v4 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      operator new();
    }

LABEL_35:
    sub_1AC060A04();
  }

  v12 = this;
  if (v6)
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  v13 = v12 + size;
  if (a3 != a2)
  {
    memmove(v12 + size, a2, v5);
  }

  v13[v5] = 0;
  v14 = v5 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  return this;
}

void sub_1AC077B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC078104(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1AC078258(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v9 = a3;
  v10 = *(a1 + 40);
  if (v9)
  {
    (*(v10 + 16))(*(a1 + 40), 0, v9);
  }

  else
  {
    v11 = objc_msgSend_imageEmbedding(v19, v5, v6, v7, v8);
    v16 = objc_msgSend_embeddingRevision(*(*(a1 + 32) + 24), v12, v13, v14, v15);
    v18 = objc_msgSend_embeddingWithBuffer_type_revision_(CSUCLIPV3Embedding, v17, v11, 1, v16);
    (*(v10 + 16))(v10, v18, 0);
  }
}

void sub_1AC078450(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v9 = a3;
  v10 = *(a1 + 40);
  if (v9)
  {
    (*(v10 + 16))(*(a1 + 40), 0, v9);
  }

  else
  {
    v11 = objc_msgSend_clipTextEmbedding(v24, v5, v6, v7, v8);
    v16 = objc_msgSend_textEmbeddingType(*(*(a1 + 32) + 24), v12, v13, v14, v15);
    v21 = objc_msgSend_embeddingRevision(*(*(a1 + 32) + 24), v17, v18, v19, v20);
    v23 = objc_msgSend_embeddingWithBuffer_type_revision_(CSUCLIPV3Embedding, v22, v11, v16, v21);
    (*(v10 + 16))(v10, v23, 0);
  }
}

void sub_1AC078730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1AC078784(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_buffer(*(a1 + 32), a2, a3, a4, a5);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AC078840;
  v12[3] = &unk_1E7967E30;
  v14 = a2;
  v15 = a3;
  v16 = *(a1 + 56);
  v13 = *(a1 + 40);
  objc_msgSend_accessDataUsingBlock_(v8, v9, v12, v10, v11);
}

void sub_1AC078840(uint64_t a1, float *__B, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 56) != a3)
  {
    if (!*(a1 + 64))
    {
      return;
    }

    objc_msgSend_errorWithCode_message_(CSUError, __B, 8, @"Embedding buffers have incompatible sizes", a5);
    goto LABEL_7;
  }

  if ((a3 & 3) == 0)
  {
    vDSP_dotpr(*(a1 + 48), 1, __B, 1, (*(*(a1 + 32) + 8) + 24), a3 >> 2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return;
  }

  if (*(a1 + 64))
  {
    objc_msgSend_errorWithCode_message_(CSUError, __B, 8, @"Invalid buffer length for float data", a5);
    **(a1 + 64) = LABEL_7:;
  }
}

void sub_1AC079298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_1AC07A2F8(&a56);

  _Unwind_Resume(a1);
}

void sub_1AC079768(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC079AA8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = a2;
        v5 = *(a1 + 8);
        v6 = *a1;
        if (v5 != v3)
        {
          do
          {
            v7 = *(v5 - 1);
            v5 -= 3;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v3);
          v6 = *a1;
        }

        *(a1 + 8) = v3;
        operator delete(v6);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        a2 = v4;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(a1 + 8);
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v10);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }
}

uint64_t sub_1AC079BEC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_1AC079C74(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_1AC079CF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1AC060AAC();
  }
}

void sub_1AC079E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_1AC06AF80(&a11);
  *(v11 + 8) = v12;
  sub_1AC06AFE0(&a9);
  _Unwind_Resume(a1);
}

void sub_1AC079E40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
      v5 = *a2;

      sub_1AC079F58(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(a1 + 8);
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

      *(a1 + 8) = v6;
      operator delete(v8);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1AC079CF4(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

void sub_1AC079F58(void **a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
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
          v12 = *(v10 - 1);
          v10 -= 3;
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1AC060AAC();
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = *(v5 + 23);
          if (v8[23] < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = *v5;
            }

            if (v22 >= 0)
            {
              v21 = *(v5 + 23);
            }

            else
            {
              v21 = v5[1];
            }

            sub_1AC077768(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_1AC077698(v8, *v5, v5[1]);
          }

          else
          {
            v23 = *v5;
            *(v8 + 2) = v5[2];
            *v8 = v23;
          }
        }

        v5 += 3;
        v8 += 24;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v29 = *(v13 - 1);
      v13 -= 3;
      if (v29 < 0)
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
      do
      {
        if (v5 != v8)
        {
          v18 = *(v5 + 23);
          if (v8[23] < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = *v5;
            }

            if (v18 >= 0)
            {
              v17 = *(v5 + 23);
            }

            else
            {
              v17 = v5[1];
            }

            sub_1AC077768(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_1AC077698(v8, *v5, v5[1]);
          }

          else
          {
            v19 = *v5;
            *(v8 + 2) = v5[2];
            *v8 = v19;
          }
        }

        v5 += 3;
        v8 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
    }

    v30 = v13;
    v27 = v13;
    if (v15 != a3)
    {
      v27 = v13;
      do
      {
        while ((v15[23] & 0x80000000) == 0)
        {
          v28 = *v15;
          v27[2] = *(v15 + 2);
          *v27 = v28;
          v27 += 3;
          v15 += 24;
          v30 = v27;
          if (v15 == a3)
          {
            goto LABEL_55;
          }
        }

        sub_1AC0674A0(v27, *v15, *(v15 + 1));
        v15 += 24;
        v27 = v30 + 3;
        v30 += 3;
      }

      while (v15 != a3);
    }

LABEL_55:
    a1[1] = v27;
  }
}

void sub_1AC07A2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AC06AF80(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1AC07A2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AC06AF80(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_1AC07A2F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_1AC07A364(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (*(v7 + 4) == v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_1AC07A694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC07A6A8(va);
  _Unwind_Resume(a1);
}

void *sub_1AC07A6A8(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 47) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 24));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_1AC07A730(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D07F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC07A8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AC069094(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_1AC07A8E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D0848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC07A940(uint64_t a1, __int128 *a2, void *a3)
{
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1AC07AAC4(a1, a2, v4);
}

void sub_1AC07AAC4(uint64_t a1, __int128 *a2, void *a3)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v6;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    sub_1AC079CF4(a1 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = a2[4];
  v7 = *(a2 + 22);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = v7;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = *a3;
  v8 = (a1 + 128);
  v37 = (a1 + 96);
  *(a1 + 96) = &unk_1F20D0898;
  *(a1 + 104) = a1 + 112;
  v38 = (a1 + 104);
  v9 = a3[1];
  *(a1 + 136) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  v49[0] = 0;
  v49[1] = 0;
  v48 = v49;
  if (*(a2 + 48) == 1)
  {
    v11 = *(a2 + 3);
    for (i = *(a2 + 4); v11 != i; v11 = (v11 + 24))
    {
      while (1)
      {
        if (*(v11 + 23) < 0)
        {
          sub_1AC0674A0(__p, *v11, *(v11 + 1));
        }

        else
        {
          v12 = *v11;
          v46 = *(v11 + 2);
          *__p = v12;
        }

        if ((*(**v8 + 88))(*v8, __p))
        {
          if (SHIBYTE(v46) >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if (SHIBYTE(v46) >= 0)
          {
            v14 = HIBYTE(v46);
          }

          else
          {
            v14 = __p[1];
          }

          v15 = (*(**v8 + 32))(*v8, v13, v14);
          v16 = v49[0];
          if (!v49[0])
          {
LABEL_26:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v17 = v16;
              v18 = *(v16 + 28);
              if (v15 >= v18)
              {
                break;
              }

              v16 = *v17;
              if (!*v17)
              {
                goto LABEL_26;
              }
            }

            if (v18 >= v15)
            {
              break;
            }

            v16 = v17[1];
            if (!v16)
            {
              goto LABEL_26;
            }
          }
        }

        if (SHIBYTE(v46) < 0)
        {
          break;
        }

        v11 = (v11 + 24);
        if (v11 == i)
        {
          goto LABEL_28;
        }
      }

      operator delete(__p[0]);
    }
  }

LABEL_28:
  v19 = *v8;
  v20 = *(*v8 + 79);
  if (v20 < 0)
  {
    v21 = v19[7];
    v20 = v19[8];
  }

  else
  {
    v21 = v19 + 7;
  }

  v22 = (*(*v19 + 32))(v19, v21, v20);
  v23 = v49[0];
  if (!v49[0])
  {
LABEL_37:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v24 = v23;
      v25 = *(v23 + 28);
      if (v22 >= v25)
      {
        break;
      }

      v23 = *v24;
      if (!*v24)
      {
        goto LABEL_37;
      }
    }

    if (v25 >= v22)
    {
      break;
    }

    v23 = v24[1];
    if (!v23)
    {
      goto LABEL_37;
    }
  }

  sub_1AC07B354(&v42, &v48);
  v27 = v42;
  v26 = v43;
  __p[0] = &unk_1F20D0898;
  __p[1] = v42;
  v46 = v43;
  v47 = v44;
  if (v44)
  {
    v43[2] = &v46;
    v42 = &v43;
    v43 = 0;
    v44 = 0;
    if (v37 == __p)
    {
LABEL_43:
      __p[0] = &unk_1F20D0898;
      sub_1AC07B854(&__p[1], v26);
      sub_1AC07B854(&v42, v43);
      v28 = objc_opt_new();
      v29 = *(a1 + 144);
      *(a1 + 144) = v28;

      objc_msgSend_setDenyListRules_(*(a1 + 144), v30, *(a1 + 56), v31, v32, a1 + 152, &unk_1F20D0898);
      sub_1AC07B354(&v39, &v48);
      v34 = v39;
      v33 = v40;
      __p[0] = &unk_1F20D0898;
      __p[1] = v39;
      v46 = v40;
      v47 = v41;
      if (v41)
      {
        v40[2] = &v46;
        v39 = &v40;
        v40 = 0;
        v41 = 0;
        if (v37 == __p)
        {
LABEL_48:
          __p[0] = &unk_1F20D0898;
          sub_1AC07B854(&__p[1], v33);
          sub_1AC07B854(&v39, v40);
          v35 = *(a1 + 72);
          if (v35)
          {
            if (v35 == 1)
            {
              sub_1AC07C094();
            }

            v36 = sub_1AC090E50();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              LOWORD(__p[0]) = 0;
              _os_log_impl(&dword_1AC05D000, v36, OS_LOG_TYPE_INFO, "Scoring method not specified, using GEOMETRICMEAN scorer by default", __p, 2u);
            }

            sub_1AC07C094();
          }

          sub_1AC07BBE0();
        }
      }

      else
      {
        __p[1] = &v46;
        v34 = &v46;
        if (v37 == __p)
        {
          goto LABEL_48;
        }
      }

      sub_1AC07B8AC(v38, v34, &v46);
      v33 = v46;
      goto LABEL_48;
    }
  }

  else
  {
    __p[1] = &v46;
    v27 = &v46;
    if (v37 == __p)
    {
      goto LABEL_43;
    }
  }

  sub_1AC07B8AC(v38, v27, &v46);
  v26 = v46;
  goto LABEL_43;
}

void sub_1AC07B11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24)
{
  sub_1AC07B854(&a23, a24);
  sub_1AC069094(a9);

  sub_1AC069094(v25);
  *(v24 + 96) = a10;
  sub_1AC07B854(a12, *(v24 + 112));
  sub_1AC079BEC(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC07B208(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  *(a1 + 96) = &unk_1F20D0898;
  sub_1AC07B854(a1 + 104, *(a1 + 112));

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 3;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

        while (v5 != v4);
        v6 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      operator delete(v6);
    }
  }

  return a1;
}

void *sub_1AC07B354(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*sub_1AC07B6A4(a1, v3, &v11, &v10, v5 + 7))
      {
        operator new();
      }

      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t sub_1AC07B494(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 != (result + 16))
  {
    v3 = *a2;
    do
    {
      *(v3 + 4 * *(v2 + 7)) = 872415232;
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (result + 16));
  }

  return result;
}

uint64_t *sub_1AC07B4F8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t *sub_1AC07B6A4(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void sub_1AC07B854(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AC07B854(a1, *a2);
    sub_1AC07B854(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_1AC07B8AC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_18;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = *(v14 + 7);
      *(v9 + 7) = v15;
      v16 = *v8;
      v17 = (v5 + 8);
      v18 = (v5 + 8);
      if (*v8)
      {
        break;
      }

LABEL_23:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_25:
      sub_1AC07B4F8(*(v5 + 8), v9);
      ++*(v5 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= *(v16 + 7))
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_23;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (!v19)
    {
      goto LABEL_25;
    }

LABEL_24:
    *v5 = v19;
    goto LABEL_25;
  }

  v12 = v9;
LABEL_13:
  sub_1AC07B854(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v9 = v10;
LABEL_17:
    sub_1AC07B854(a1, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_1AC07BCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_1AC07B854(&a12, a13);
  sub_1AC07B854(&a9, a10);
  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_1AC07BCFC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1AC07BD34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D08D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC07BD88(uint64_t a1)
{
  *(a1 + 24) = &unk_1F20D0980;
  *(a1 + 32) = &unk_1F20D0898;
  sub_1AC07B854(a1 + 40, *(a1 + 48));
}

void *sub_1AC07BDD8(void *a1, void *a2)
{
  *a1 = &unk_1F20D0980;
  v3 = (a1 + 1);
  a1[1] = &unk_1F20D0898;
  a1[3] = 0;
  a1[2] = a1 + 3;
  v4 = a1 + 2;
  a1[4] = 0;
  sub_1AC07B354(&v8, a2);
  v6 = v8;
  v5 = v9;
  v11 = &unk_1F20D0898;
  v12 = v8;
  v13[0] = v9;
  v13[1] = v10;
  if (v10)
  {
    v9[2] = v13;
    v8 = &v9;
    v9 = 0;
    v10 = 0;
    if (v3 == &v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = v13;
  v6 = v13;
  if (v3 != &v11)
  {
LABEL_5:
    sub_1AC07B8AC(v4, v6, v13);
    v5 = v13[0];
  }

LABEL_6:
  v11 = &unk_1F20D0898;
  sub_1AC07B854(&v12, v5);
  sub_1AC07B854(&v8, v9);
  return a1;
}

void sub_1AC07BF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_1AC07B854(v19 + 8, a15);
  sub_1AC07B854(&a10, a11);
  *v17 = v15;
  sub_1AC07B854(v16, *v18);
  _Unwind_Resume(a1);
}

void sub_1AC07BF48(_Unwind_Exception *a1)
{
  *v3 = v1;
  sub_1AC07B854(v2, *v4);
  _Unwind_Resume(a1);
}

__n64 sub_1AC07BF68(uint64_t a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  else
  {
    v4 = *a2;
    if (v3 - 1 == v2)
    {
      goto LABEL_13;
    }

    v5 = (((v3 - 1) - v2) >> 2) + 1;
    v4 = &v2[v5 & 0x7FFFFFFFFFFFFFFELL];
    v6 = v5 & 0x7FFFFFFFFFFFFFFELL;
    v7 = *a2;
    do
    {
      LODWORD(v11) = *v7;
      v12 = logf(COERCE_FLOAT(HIDWORD(*v7)));
      result.n64_f32[0] = logf(v11);
      result.n64_f32[1] = v12;
      *v7 = result;
      v7 += 2;
      v6 -= 2;
    }

    while (v6);
    if (v5 != (v5 & 0x7FFFFFFFFFFFFFFELL))
    {
LABEL_13:
      do
      {
        *v4 = logf(*v4);
        ++v4;
      }

      while (v4 != v3);
    }

    v9 = 0;
    do
    {
      v10 = *v2++;
      v9 = (v10 + v9);
    }

    while (v2 != v3);
    result.n64_f32[0] = v9;
  }

  return result;
}

float sub_1AC07C04C(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a3 / powf(a2, *(a1 + 40));

  return expf(v3);
}

void sub_1AC07C178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_1AC07B854(&a12, a13);
  sub_1AC07B854(&a9, a10);
  std::__shared_weak_count::~__shared_weak_count(v13);
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_1AC07C1B0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1AC07C1E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F20D09B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC07C23C(uint64_t a1)
{
  *(a1 + 24) = &unk_1F20D0980;
  *(a1 + 32) = &unk_1F20D0898;
  sub_1AC07B854(a1 + 40, *(a1 + 48));
}

__n64 sub_1AC07C290(uint64_t a1, float **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  else
  {
    v4 = *a2;
    if (v3 - 1 == v2)
    {
      goto LABEL_13;
    }

    v5 = (((v3 - 1) - v2) >> 2) + 1;
    v4 = &v2[v5 & 0x7FFFFFFFFFFFFFFELL];
    v6 = v5 & 0x7FFFFFFFFFFFFFFELL;
    v7 = *a2;
    do
    {
      LODWORD(v11) = *v7;
      v12 = logf(COERCE_FLOAT(HIDWORD(*v7)));
      result.n64_f32[0] = logf(v11);
      result.n64_f32[1] = v12;
      *v7 = result;
      v7 += 2;
      v6 -= 2;
    }

    while (v6);
    if (v5 != (v5 & 0x7FFFFFFFFFFFFFFELL))
    {
LABEL_13:
      do
      {
        *v4 = logf(*v4);
        ++v4;
      }

      while (v4 != v3);
    }

    v9 = 0;
    do
    {
      v10 = *v2++;
      v9 = (v10 + v9);
    }

    while (v2 != v3);
    result.n64_f32[0] = v9;
  }

  return result;
}

float sub_1AC07C374(uint64_t a1, unint64_t a2, float a3)
{
  v5 = pow(2.71828183, a3);
  v6 = pow(a2, *(a1 + 40));
  return pow(v5, 1.0 / v6);
}

uint64_t sub_1AC07C3E0(void *a1)
{
  v2 = a1[24];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = a1[25];
  v4 = a1[24];
  if (v3 == v2)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(v3 - 8);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(v3 - 40);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(v3 - 32) = v6;
      operator delete(v6);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(v3 - 40);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v2);
  v4 = a1[24];
LABEL_12:
  a1[25] = v2;
  operator delete(v4);
LABEL_13:
  v7 = a1[23];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return sub_1AC07B208(a1);
}

void sub_1AC07E4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);

  _Unwind_Resume(a1);
}

void sub_1AC07E828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    sub_1AC066F88();
  }

  (*(*a12 + 48))(a12);
  sub_1AC063398(&a9);
  _Unwind_Resume(a1);
}

void sub_1AC07E8D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AC10B290(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC07F094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    sub_1AC070210(v26, v21);
    __cxa_end_catch();
    JUMPOUT(0x1AC07EEB4);
  }

  if (!a21)
  {
    sub_1AC066F88();
  }

  (*(*a21 + 48))(a21);
  sub_1AC063398(&a18);
  _Unwind_Resume(a1);
}

void sub_1AC07F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __cxa_end_catch();
  if (!a18)
  {
    sub_1AC066F88();
  }

  JUMPOUT(0x1AC07EFB8);
}

void sub_1AC07F14C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1AC10B290(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC07F2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC07F7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AC07FB94()
{
  if (v3)
  {
  }

  if (v0 != 2)
  {
    JUMPOUT(0x1AC07FBB8);
  }

  JUMPOUT(0x1AC07FBBCLL);
}

void sub_1AC081A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28, void *a29, void *a30, void *a31, _Unwind_Exception *exception_objecta, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AC076D6C(&a68);
  sub_1AC065D4C((v71 - 144));

  _Unwind_Resume(a1);
}

uint64_t sub_1AC0820F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AC082168;
  v7[3] = &unk_1E7967E78;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v7[5] = a2;
  v7[6] = a3;
  return objc_msgSend_getMutableBytesWithHandler_(v5, a2, v7, a4, a5);
}

uint64_t sub_1AC0827FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0A48;
  a2[1] = v2;
  return result;
}

void sub_1AC082828(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUTextEncoderE5MLLoadResources", "", v5, 2u);
  }
}

uint64_t sub_1AC0828B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z36[CSUTextEncoderE5ML loadResources:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z36[CSUTextEncoderE5ML loadResources:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z36[CSUTextEncoderE5ML loadResources:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z36[CSUTextEncoderE5ML loadResources:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AC082998(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F20D0AC8;
  a2[1] = v2;
  return result;
}

void sub_1AC0829C4(uint64_t a1)
{
  v2 = sub_1AC090E50();
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSUTextEncoderE5MLReLoadResources", "", v5, 2u);
  }
}

uint64_t sub_1AC082A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z38[CSUTextEncoderE5ML reLoadResources:]E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "Z38[CSUTextEncoderE5ML reLoadResources:]E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z38[CSUTextEncoderE5ML reLoadResources:]E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z38[CSUTextEncoderE5ML reLoadResources:]E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AC082AC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1AC083008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  __cxa_free_exception(v20);

  _Unwind_Resume(a1);
}

void *sub_1AC083138(void *a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *a1 = *MEMORY[0x1E69E54D0];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1AC5AC100](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](a1 + 52);
  return a1;
}

void sub_1AC083850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19)
{
  std::istream::~istream();
  MEMORY[0x1AC5AC380](v19);
  *a9 = &unk_1F20D01C0;
  v21 = a9[6];
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = a9[2];
  if (v22)
  {
    a9[3] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AC083AAC(uint64_t a1)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v16[6] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  v16[0] = MEMORY[0x1E69E5530] + 64;
  v3 = MEMORY[0x1E69E54D0];
  v4 = *(MEMORY[0x1E69E54D0] + 16);
  v14 = *(MEMORY[0x1E69E54D0] + 8);
  *&v15[*(v14 - 24) - 8] = v4;
  v5 = &v15[*(v14 - 24) - 8];
  std::ios_base::init(v5, v15);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v14 = v6;
  v16[0] = v2;
  MEMORY[0x1AC5AC0F0](v15);
  v7 = *(a1 + 32);
  objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
  std::ofstream::open();
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear(&v15[*(v14 - 24) - 8], *&v15[*(v14 - 24) + 24] | 4);
  }

  v14 = *v3;
  *&v15[*(v14 - 24) - 8] = v3[3];
  MEMORY[0x1AC5AC100](v15);
  std::ostream::~ostream();
  result = MEMORY[0x1AC5AC380](v16);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC083D40(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v1);
  _Unwind_Resume(a1);
}

void sub_1AC084018(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1AC5AC380](v2);

  _Unwind_Resume(a1);
}

uint64_t sub_1AC08405C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return 10007;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return 5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return 0;
  }

  else
  {
LABEL_8:
    if (qword_1EB54A398 != -1)
    {
      sub_1AC11F8C8();
    }

    if (byte_1EB54A390)
    {
      v3 = 10007;
    }

    else
    {
      v3 = 5;
    }

    return v3;
  }
}

uint64_t sub_1AC084168()
{
  result = MGGetBoolAnswer();
  byte_1EB54A390 = result;
  return result;
}

void *sub_1AC084190(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1AC5AC1B0](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_1AC08433C(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1AC5AC1C0](v14);
  return a1;
}

void sub_1AC0842D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1AC5AC1C0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1AC0842B4);
}