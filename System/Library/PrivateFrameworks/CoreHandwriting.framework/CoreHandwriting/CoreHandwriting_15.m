void sub_18387DCCC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_18387DD00(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_18387DD3C(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (v3 <= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  }

  v36 = v3;
  if (v3)
  {
    sub_18387E2B4(a3, v3);
    v5 = 0;
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v5)
      {
        v7 = &qword_1EA84D070;
        if ((atomic_load_explicit(&qword_1EA84D068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84D068))
        {
          qword_1EA84D078 = 0;
          unk_1EA84D080 = 0;
          qword_1EA84D070 = 0;
          v7 = &qword_1EA84D070;
          __cxa_atexit(sub_18387DD00, &qword_1EA84D070, &dword_18366B000);
          __cxa_guard_release(&qword_1EA84D068);
        }
      }

      else
      {
        v7 = (*a1 + 24 * v5);
      }

      if (*v7 == v7[1])
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v5)
        {
          v32 = &qword_1EA84D070;
          if ((atomic_load_explicit(&qword_1EA84D068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84D068))
          {
            qword_1EA84D078 = 0;
            unk_1EA84D080 = 0;
            qword_1EA84D070 = 0;
            v32 = &qword_1EA84D070;
            __cxa_atexit(sub_18387DD00, &qword_1EA84D070, &dword_18366B000);
            __cxa_guard_release(&qword_1EA84D068);
          }
        }

        else
        {
          v32 = (*a2 + 24 * v5);
        }

        v6 = v5 + 1;
        v33 = *a3;
        v34 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        if (v34 <= v5)
        {
          sub_18387E2B4(a3, v6 - v34);
          v33 = *a3;
        }

        v35 = v33 + 24 * v5;
        if (v35 != v32)
        {
          sub_1837A1EB0(v35, *v32, v32[1], (v32[1] - *v32) >> 4);
        }
      }

      else
      {
        v8 = *a3;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
        if (v9 <= v5)
        {
          sub_18387E2B4(a3, v5 + 1 - v9);
          v8 = *a3;
        }

        v10 = 0;
        v11 = 0;
        v12 = v8 + 24 * v5;
        while (1)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v5)
          {
            v14 = &qword_1EA84D070;
            if ((atomic_load_explicit(&qword_1EA84D068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA84D068))
            {
              qword_1EA84D078 = 0;
              unk_1EA84D080 = 0;
              qword_1EA84D070 = 0;
              v14 = &qword_1EA84D070;
              __cxa_atexit(sub_18387DD00, &qword_1EA84D070, &dword_18366B000);
              __cxa_guard_release(&qword_1EA84D068);
            }
          }

          else
          {
            v14 = (*a1 + 24 * v5);
          }

          if (v11 >= (v14[1] - *v14) >> 4)
          {
            break;
          }

          v15 = v5;
          v16 = v11;
          if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v5)
          {
            v17 = (*a1 + 24 * v5);
            v19 = *v17;
            v18 = v17[1];
            v15 = v5;
            v16 = v11;
            if (v18 != v19)
            {
              if (((v18 - v19) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              goto LABEL_54;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v15)
          {
            v20 = (*a2 + 24 * v15);
            v22 = *v20;
            v21 = v20[1];
            if (v21 != v22)
            {
              if (((v21 - v22) & 0x8000000000000000) == 0)
              {
                operator new();
              }

LABEL_54:
              sub_1837A0C50();
            }
          }

          v24 = *(v12 + 8);
          v23 = *(v12 + 16);
          if (v24 < v23)
          {
            *v24 = v15;
            v24[1] = v16;
            v13 = (v24 + 2);
          }

          else
          {
            v25 = *v12;
            v26 = v24 - *v12;
            v27 = v26 >> 4;
            v28 = (v26 >> 4) + 1;
            if (v28 >> 60)
            {
              goto LABEL_54;
            }

            v29 = v23 - v25;
            if (v29 >> 3 > v28)
            {
              v28 = v29 >> 3;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF0)
            {
              v30 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              if (!(v30 >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v31 = (16 * v27);
            *v31 = v15;
            v31[1] = v16;
            v13 = 16 * v27 + 16;
            memcpy(0, v25, v26);
            *v12 = 0;
            *(v12 + 8) = v13;
            *(v12 + 16) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          *(v12 + 8) = v13;
          ++v11;
          v10 += 16;
        }

        v6 = v5 + 1;
      }

      v5 = v6;
    }

    while (v6 != v36);
  }
}

void sub_18387E2B4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_18368964C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_183688F00();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_18387ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a3)
  {
    (*(*a3 + 8))(a3);
    sub_1838807FC(va);

    _Unwind_Resume(a1);
  }

  sub_1838807FC(va);

  _Unwind_Resume(a1);
}

void sub_18387EEC0(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    *v5 = 0;
    v5[1] = 0;
    v3 = (v5 + 2);
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_18368964C();
    }

    v10 = v4 - v6;
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

      sub_183688F00();
    }

    v12 = (16 * v8);
    *v12 = 0;
    v12[1] = 0;
    v3 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v3;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  *(a1 + 8) = v3;
}

void sub_18387F188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_18387F898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_18368EE60(&a67);

  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  sub_18368EBD4(v68 + 48, a65);

  _Unwind_Resume(a1);
}

void *sub_18387F96C(void *result, void *a2)
{
  v2 = a2 + 7;
  v3 = a2[7];
  v4 = a2[6];
  result[7] = v3;
  v5 = result + 7;
  result[6] = v4;
  v6 = a2[8];
  result[8] = v6;
  if (v6)
  {
    *(v3 + 16) = v5;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v5;
  }

  return result;
}

void sub_18387F9B4(uint64_t a1, uint64_t a2)
{
  for (i = *(*(*(a1 + 48) + 8) + 56); i; i = *i)
  {
    v10 = *(i + 8);
    if (v10 <= a2)
    {
      if (v10 >= a2)
      {
        return;
      }

      ++i;
    }
  }

  __p = 0;
  v42 = 0uLL;
  if (*(a1 + 88) == 1)
  {
    sub_183790530((*(a1 + 32) + 8), a2, 2, &v39);
    v5 = __p;
    if (__p)
    {
      v6 = v42;
      v7 = __p;
      if (v42 != __p)
      {
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
        }

        while (v6 != v5);
        v7 = __p;
      }

      *&v42 = v5;
      operator delete(v7);
    }

    __p = v39;
    v42 = v40;
    if (v40 != v39)
    {
      v9 = *(*(*(a1 + 48) + 8) + 56);
      if (!v9)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v11 = v9;
          v12 = *(v9 + 8);
          if (v12 <= a2)
          {
            break;
          }

          v9 = *v11;
          if (!*v11)
          {
            goto LABEL_19;
          }
        }

        if (v12 >= a2)
        {
          break;
        }

        v9 = v11[1];
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (v11 + 5 != &__p)
      {
        sub_18378F020(v11 + 5, __p, v42, 0xAAAAAAAAAAAAAAABLL * ((v42 - __p) >> 3));
      }

      ++*(*(*(a1 + 56) + 8) + 24);
      goto LABEL_52;
    }
  }

  sub_183790530((*(a1 + 32) + 8), a2, 1, &v39);
  if (v40 == v39)
  {
    if (objc_msgSend_fastPathAsXZero(*(a1 + 40), v13, v14, v15, v16, v17))
    {
      sub_183790530((*(a1 + 32) + 8), a2, 3, &v37);
      v21 = v37;
      if (v38 != v37)
      {
        v22 = *(*(*(a1 + 48) + 8) + 56);
        if (!v22)
        {
LABEL_36:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 8);
            if (v24 <= a2)
            {
              break;
            }

            v22 = *v23;
            if (!*v23)
            {
              goto LABEL_36;
            }
          }

          if (v24 >= a2)
          {
            break;
          }

          v22 = v23[1];
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        if (v23 + 5 != &v37)
        {
          sub_18378F020(v23 + 5, v37, v38, 0xAAAAAAAAAAAAAAABLL * ((v38 - v37) >> 3));
          v21 = v37;
        }

        ++*(*(*(a1 + 72) + 8) + 24);
        if (v21)
        {
          v34 = v38;
          v35 = v21;
          if (v38 != v21)
          {
            do
            {
              v36 = *(v34 - 3);
              v34 -= 24;
            }

            while (v34 != v21);
            v35 = v37;
          }

          v38 = v21;
          operator delete(v35);
        }

        goto LABEL_47;
      }

      if (v38)
      {
        v38 = v37;
        operator delete(v37);
      }
    }

    v25 = *(a1 + 80);
  }

  else
  {
    v18 = *(*(*(a1 + 48) + 8) + 56);
    if (!v18)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 8);
        if (v20 <= a2)
        {
          break;
        }

        v18 = *v19;
        if (!*v19)
        {
          goto LABEL_27;
        }
      }

      if (v20 >= a2)
      {
        break;
      }

      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (v19 + 5 != &v39)
    {
      sub_18378F020(v19 + 5, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
    }

    v25 = *(a1 + 64);
  }

  ++*(*(v25 + 8) + 24);
LABEL_47:
  v26 = v39;
  if (v39)
  {
    v27 = v40;
    v28 = v39;
    if (v40 != v39)
    {
      do
      {
        v29 = *(v27 - 3);
        v27 -= 24;
      }

      while (v27 != v26);
      v28 = v39;
    }

    *&v40 = v26;
    operator delete(v28);
  }

LABEL_52:
  v30 = __p;
  if (__p)
  {
    v31 = v42;
    v32 = __p;
    if (v42 != __p)
    {
      do
      {
        v33 = *(v31 - 3);
        v31 -= 24;
      }

      while (v31 != v30);
      v32 = __p;
    }

    *&v42 = v30;
    operator delete(v32);
  }
}

void sub_18387FEA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_18368EE60(va);
  sub_18368EE60(va1);
  sub_18368EE60(va2);
  _Unwind_Resume(a1);
}

void sub_18387FEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_18368EE60(va);
  sub_18368EE60(va1);
  _Unwind_Resume(a1);
}

void sub_183880554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_183791658(va);

  _Unwind_Resume(a1);
}

void sub_183880698(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_183880734(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

uint64_t sub_18388076C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_18388079C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN15CoreHandwriting9synthesis9fast_path33CHAbstractFastPathCharacterHolderEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **sub_1838807FC(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v7 -= 16;
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_183880930(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_183880A48()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.CoreHandwriting.CHTextCheckingQuery.TextComposerProcessing", v2);
  v1 = qword_1EA84DBD0;
  qword_1EA84DBD0 = v0;
}

id sub_18388116C(void **a1, void *a2)
{
  v896 = *MEMORY[0x1E69E9840];
  v841 = a2;
  v834 = a1;
  if (a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v3 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery._textCheckingResultsForSessionResult: start", buf, 2u);
    }

    v829 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
    v14 = objc_msgSend_strokeGroupingResult(v841, v9, v10, v11, v12, v13);
    v823 = objc_msgSend_textStrokeGroupClusters(v14, v15, v16, v17, v18, v19);

    v837 = objc_msgSend_autoRefineResults(v841, v20, v21, v22, v23, v24);
    v876 = 0u;
    v877 = 0u;
    v874 = 0u;
    v875 = 0u;
    obj = v823;
    v824 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v874, v880, 16, v26);
    if (v824)
    {
      v825 = *v875;
      do
      {
        for (i = 0; i != v824; ++i)
        {
          if (*v875 != v825)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v874 + 1) + 8 * i);
          v838 = objc_msgSend_array(MEMORY[0x1E695DF70], v27, v28, v29, v30, v31);
          v872 = 0u;
          v873 = 0u;
          v870 = 0u;
          v871 = 0u;
          v842 = v32;
          v848 = objc_msgSend_countByEnumeratingWithState_objects_count_(v842, v33, &v870, v879, 16, v34);
          if (!v848)
          {
            goto LABEL_56;
          }

          v846 = *v871;
          do
          {
            for (j = 0; j != v848; ++j)
            {
              if (*v871 != v846)
              {
                objc_enumerationMutation(v842);
              }

              v40 = *(*(&v870 + 1) + 8 * j);
              v41 = objc_msgSend_uniqueIdentifier(v40, v35, v36, v37, v38, v39);
              v851 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v841, v42, v41, v43, v44, v45);
              v855 = objc_msgSend_preferredLocale(v851, v46, v47, v48, v49, v50);
              if (CHHasPersonalizedSynthesisSupport())
              {
                v51 = sub_18394AE24(v855);

                if (v51)
                {
                  v52 = objc_opt_class();
                  v58 = objc_msgSend_recognitionResultsByLocale(v851, v53, v54, v55, v56, v57);
                  v64 = objc_msgSend_locales(v841, v59, v60, v61, v62, v63);
                  v70 = objc_msgSend_languageFitnessByLocale(v851, v65, v66, v67, v68, v69);
                  log = objc_msgSend_filteredResultsByLocale_orderedLocales_usingLanguageFitness_outSortedLocales_(v52, v71, v58, v64, v70, 0);

                  v857 = objc_msgSend_objectForKeyedSubscript_(log, v72, v855, v73, v74, v75);
                  v86 = objc_msgSend_mathResult(v851, v76, v77, v78, v79, v80);
                  if (v86 && (objc_msgSend_mathResult(v851, v81, v82, v83, v84, v85), v87 = objc_claimAutoreleasedReturnValue(), isEvaluationExpected = objc_msgSend_isEvaluationExpected(v87, v88, v89, v90, v91, v92), v87, v86, isEvaluationExpected))
                  {
                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v94 = qword_1EA84DC60;
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                    {
                      v100 = objc_msgSend_topTranscription(v857, v95, v96, v97, v98, v99);
                      *buf = 138739971;
                      *&buf[4] = v100;
                      _os_log_impl(&dword_18366B000, v94, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery: Skipping group with transcription %{sensitive}@ because it has a math result expecting evaluation.", buf, 0xCu);
                    }

LABEL_52:
                  }

                  else
                  {
                    v868 = 0u;
                    v869 = 0u;
                    v866 = 0u;
                    v867 = 0u;
                    v108 = v837;
                    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v866, v878, 16, v110);
                    if (v116)
                    {
                      v117 = *v867;
                      do
                      {
                        for (k = 0; k != v116; ++k)
                        {
                          if (*v867 != v117)
                          {
                            objc_enumerationMutation(v108);
                          }

                          v119 = *(*(&v866 + 1) + 8 * k);
                          v120 = objc_msgSend_strokeGroup(v119, v111, v112, v113, v114, v115);
                          v126 = v120;
                          if (v40 == v120)
                          {
                            v127 = objc_msgSend_refinedTokenColumns(v119, v121, v122, v123, v124, v125);
                            v133 = objc_msgSend_count(v127, v128, v129, v130, v131, v132);
                            v139 = objc_msgSend_textResult(v119, v134, v135, v136, v137, v138);
                            LODWORD(v133) = v133 < objc_msgSend_tokenColumnCount(v139, v140, v141, v142, v143, v144);

                            if (v133)
                            {
                              *buf = 0;
                              *&buf[8] = buf;
                              *&buf[16] = 0x4012000000;
                              *v887 = sub_183884828;
                              *&v887[8] = nullsub_56;
                              *&v887[16] = &unk_183A5AC72;
                              *&v887[24] = xmmword_1839D0630;
                              v145 = objc_msgSend_refinedTokenColumns(v119, v111, v112, v113, v114, v115);
                              v865[0] = MEMORY[0x1E69E9820];
                              v865[1] = 3221225472;
                              v865[2] = sub_183884838;
                              v865[3] = &unk_1E6DDE138;
                              v865[4] = buf;
                              objc_msgSend_enumerateRangesUsingBlock_(v145, v146, v865, v147, v148, v149);

                              if (*(*&buf[8] + 56))
                              {
                                v155 = objc_msgSend_textResult(v119, v150, v151, v152, v153, v154);
                                v159 = objc_msgSend_subResultWithColumnRange_(v155, v156, *(*&buf[8] + 48), *(*&buf[8] + 56), v157, v158);

                                if (qword_1EA84DC48 != -1)
                                {
                                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                                }

                                v160 = qword_1EA84DC60;
                                if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
                                {
                                  v166 = objc_msgSend_topTranscription(v159, v161, v162, v163, v164, v165);
                                  v168 = *(*&buf[8] + 48);
                                  v167 = *(*&buf[8] + 56);
                                  *v881 = 138740483;
                                  *&v881[4] = v166;
                                  *&v881[12] = 2048;
                                  *&v881[14] = v168;
                                  *&v881[22] = 2048;
                                  v882 = v167;
                                  _os_log_impl(&dword_18366B000, v160, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery: Autorefinable group truncated to transcription %{sensitive}@ (columns in range %ld,%ld) for proofreading", v881, 0x20u);
                                }
                              }

                              else
                              {
                                if (qword_1EA84DC48 != -1)
                                {
                                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                                }

                                v160 = qword_1EA84DC60;
                                if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
                                {
                                  v174 = objc_msgSend_topTranscription(v857, v169, v170, v171, v172, v173);
                                  *v881 = 138739971;
                                  *&v881[4] = v174;
                                  _os_log_impl(&dword_18366B000, v160, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery: Skipping group with transcription %{sensitive}@ because it is autorefinable and has no refined columns.", v881, 0xCu);
                                }

                                v159 = v857;
                              }

                              _Block_object_dispose(buf, 8);
                              v857 = v159;
                            }
                          }

                          else
                          {
                          }
                        }

                        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v866, v878, 16, v115);
                      }

                      while (v116);
                    }

                    if (v857)
                    {
                      v175 = [CHContextualTextResult alloc];
                      v94 = objc_msgSend_initWithTextResult_terminatingSpecialCharacter_strokeGroup_(v175, v176, v857, @"\n", v40, v177);
                      objc_msgSend_setStrokeGroupResult_(v94, v178, v851, v179, v180, v181);
                      objc_msgSend_addObject_(v838, v182, v94, v183, v184, v185);
                      goto LABEL_52;
                    }
                  }

                  v101 = log;
                  goto LABEL_54;
                }
              }

              else
              {
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v101 = qword_1EA84DC60;
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
              {
                v107 = objc_msgSend_languageIdentifier(v855, v102, v103, v104, v105, v106);
                *buf = 138412290;
                *&buf[4] = v107;
                _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery: Skipping group preferred locale %@", buf, 0xCu);
              }

LABEL_54:
            }

            v848 = objc_msgSend_countByEnumeratingWithState_objects_count_(v842, v35, &v870, v879, 16, v39);
          }

          while (v848);
LABEL_56:

          if (!objc_msgSend_count(v838, v186, v187, v188, v189, v190))
          {
            goto LABEL_174;
          }

          v828 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v191, v192, v193, v194, v195);
          v833 = 0;
LABEL_58:
          if (v833 < objc_msgSend_count(v838, v196, v197, v198, v199, v200))
          {
            v830 = objc_msgSend_objectAtIndexedSubscript_(v838, v201, v833, v202, v203, v204);
            v210 = objc_msgSend_textResult(v830, v205, v206, v207, v208, v209);
            v832 = objc_msgSend_locale(v210, v211, v212, v213, v214, v215);

            v216 = MEMORY[0x1E69D9330];
            v222 = objc_msgSend_languageCode(v832, v217, v218, v219, v220, v221);
            LODWORD(v216) = objc_msgSend_checkingEnabledForLanguage_(v216, v223, v222, v224, v225, v226);

            if (v216)
            {
              objc_msgSend_addIndex_(v828, v227, v833, v228, v229, v230);
            }

            v836 = v830;
            v831 = objc_msgSend_array(MEMORY[0x1E695DF70], v231, v232, v233, v234, v235);
            v847 = objc_msgSend_textResult(v836, v236, v237, v238, v239, v240);
            for (m = 0; ; m = v852 + 1)
            {
              if (m >= objc_msgSend_tokenColumnCount(v847, v241, v242, v243, v244, v245))
              {
                v772 = v831;
                goto LABEL_172;
              }

              v852 = m;
              v858 = objc_msgSend_tokenRowsAtColumnIndex_(v847, v247, m, v248, v249, v250);
              v256 = objc_msgSend_topModelTranscriptionPath(v847, v251, v252, v253, v254, v255);
              v856 = objc_msgSend_indexAtPosition_(v256, v257, v852, v258, v259, v260);

              v266 = objc_msgSend_transcriptionPaths(v847, v261, v262, v263, v264, v265);
              v272 = objc_msgSend_firstObject(v266, v267, v268, v269, v270, v271);
              v849 = objc_msgSend_indexAtPosition_(v272, v273, v852, v274, v275, v276);

              if (v856 >= objc_msgSend_count(v858, v277, v278, v279, v280, v281))
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v773 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v773, OS_LOG_TYPE_ERROR))
                {
                  v779 = objc_msgSend_count(v858, v774, v775, v776, v777, v778);
                  *buf = 134218240;
                  *&buf[4] = v856;
                  *&buf[12] = 2048;
                  *&buf[14] = v779;
                  _os_log_impl(&dword_18366B000, v773, OS_LOG_TYPE_ERROR, "SpellChecking detection error: Unexpected indexOfTopModelTokens = %ld for a token column with %ld rows, aborting.", buf, 0x16u);
                }

                v772 = MEMORY[0x1E695E0F0];
LABEL_172:

                objc_msgSend_addObjectsFromArray_(v829, v780, v772, v781, v782, v783);
                ++v833;
                goto LABEL_58;
              }

              v286 = objc_msgSend_objectAtIndexedSubscript_(v858, v282, v856, v283, v284, v285);
              v854 = objc_msgSend_firstObject(v286, v287, v288, v289, v290, v291);

              v297 = objc_msgSend_string(v854, v292, v293, v294, v295, v296);
              v303 = objc_msgSend_countCharacters(v297, v298, v299, v300, v301, v302);

              v309 = objc_msgSend_properties(v854, v304, v305, v306, v307, v308);
              objc_msgSend_modelScore(v854, v310, v311, v312, v313, v314);
              v316 = v315;
              v322 = objc_msgSend_topModelTranscriptionPath(v847, v317, v318, v319, v320, v321);
              v840 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v847, v323, v322, 0, v852, 0);

              v328 = objc_msgSend_objectAtIndexedSubscript_(v858, v324, v856, v325, v326, v327);
              if (objc_msgSend_count(v328, v329, v330, v331, v332, v333) > 1 || (v843 = v309 & 4, (v309 & 4) != 0) && objc_msgSend_count(v858, v334, v335, v336, v337, v338) >= 2 && v849 == v856)
              {

LABEL_68:
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                loga = qword_1EA84DC60;
                if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
                {
                  v349 = objc_msgSend_topTranscription(v847, v344, v345, v346, v347, v348);
                  v354 = objc_msgSend_objectAtIndexedSubscript_(v858, v350, v856, v351, v352, v353);
                  v360 = objc_msgSend_count(v354, v355, v356, v357, v358, v359);
                  *buf = 134219011;
                  *&buf[4] = v852;
                  *&buf[12] = 2117;
                  *&buf[14] = v349;
                  *&buf[22] = 1024;
                  *v887 = v360 > 1;
                  *&v887[4] = 1024;
                  *&v887[6] = v849 == v856;
                  *&v887[10] = 2048;
                  *&v887[12] = v303;
                  _os_log_impl(&dword_18366B000, loga, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery: Skipping column %ld from group with transcription %{sensitive}@ because no viable replacements: hasMultipleTopModelTokens ? %d, topIsTopModel ? %d, topModelTokenLength: %ld", buf, 0x2Cu);
                }

                goto LABEL_165;
              }

              if (v303 == 1)
              {
                goto LABEL_68;
              }

              v361 = objc_msgSend_length(v840, v339, v340, v341, v342, v343);
              v367 = objc_msgSend_properties(v854, v362, v363, v364, v365, v366);
              loga = objc_msgSend_array(MEMORY[0x1E695DF70], v368, v369, v370, v371, v372);
              v378 = 0;
              v839 = 0;
              v835 = (v367 >> 5) & 1;
              while (v378 < objc_msgSend_count(v858, v373, v374, v375, v376, v377))
              {
                if (v856 != v378 || objc_msgSend_count(v858, v379, v380, v381, v382, v383) <= 1)
                {
                  v384 = objc_msgSend_objectAtIndexedSubscript_(v858, v379, v378, v381, v382, v383);
                  v390 = objc_msgSend_count(v384, v385, v386, v387, v388, v389) > 1;

                  if (!v390)
                  {
                    v407 = objc_msgSend_objectAtIndexedSubscript_(v858, v391, v378, v392, v393, v394);
                    v395 = objc_msgSend_firstObject(v407, v408, v409, v410, v411, v412);

                    objc_msgSend_modelScore(v395, v413, v414, v415, v416, v417);
                    v419 = v418;
                    v425 = objc_msgSend_properties(v395, v420, v421, v422, v423, v424);
                    v431 = objc_msgSend_inputSources(v395, v426, v427, v428, v429, v430);
                    objc_msgSend_recognitionScore(v395, v432, v433, v434, v435, v436);
                    v438 = v437;
                    v444 = objc_msgSend_string(v395, v439, v440, v441, v442, v443);
                    v450 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v445, v446, v447, v448, v449);
                    v454 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v444, v451, v450, 1, v452, v453);

                    v460 = objc_msgSend_string(v395, v455, v456, v457, v458, v459);
                    if (sub_1837A6154(v460))
                    {
                      v466 = objc_msgSend_string(v854, v461, v462, v463, v464, v465);
                      v467 = sub_1837A6154(v466);
                    }

                    else
                    {
                      v467 = 1;
                    }

                    if (v856 != v849 && (v419 == v316 || (objc_msgSend_recognitionScore(v395, v468, v469, v470, v471, v472), v475 = v474, objc_msgSend_recognitionScore(v854, v476, v477, v478, v479, v480), v475 == v481)))
                    {
                      v473 = (v454 > 0) & v467;
                    }

                    else
                    {
                      v473 = 0;
                    }

                    v482 = v425 & 4;
                    v483 = v431 & 0x20;
                    v485 = v438 > 0.55 && v483 != 0;
                    if (v482)
                    {
                      v486 = v843 == 0;
                    }

                    else
                    {
                      v486 = 0;
                    }

                    v487 = v486;
                    if (v419 < v316 + -0.35)
                    {
                      v488 = v487;
                    }

                    else
                    {
                      v488 = 0;
                    }

                    if (objc_msgSend_count(v858, v468, v469, v470, v471, v472) == 1)
                    {
                      v495 = v419 < 0.8 && v482 != 0;
                      if ((v473 | v488 & v467 | v485))
                      {
LABEL_122:
                        if (v849 == v378)
                        {
                          v534 = objc_msgSend_string(v395, v489, v490, v491, v492, v493);

                          v839 = v534;
                        }

                        v496 = objc_msgSend_string(v395, v489, v490, v491, v492, v493);
                        objc_msgSend_addObject_(loga, v535, v496, v536, v537, v538);
                        goto LABEL_125;
                      }
                    }

                    else
                    {
                      v495 = 0;
                      if ((v473 | v488 & v467 | v485))
                      {
                        goto LABEL_122;
                      }
                    }

                    if (v495)
                    {
                      goto LABEL_122;
                    }

                    if (qword_1EA84DC48 != -1)
                    {
                      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    }

                    v496 = qword_1EA84DC60;
                    if (os_log_type_enabled(v496, OS_LOG_TYPE_DEBUG))
                    {
                      v502 = objc_msgSend_string(v854, v497, v498, v499, v500, v501);
                      v508 = objc_msgSend_string(v395, v503, v504, v505, v506, v507);
                      v514 = objc_msgSend_string(v395, v509, v510, v511, v512, v513);
                      objc_msgSend_recognitionScore(v395, v515, v516, v517, v518, v519);
                      v521 = v520;
                      v527 = objc_msgSend_string(v854, v522, v523, v524, v525, v526);
                      objc_msgSend_recognitionScore(v854, v528, v529, v530, v531, v532);
                      *buf = 138742531;
                      *&buf[4] = v502;
                      *&buf[12] = 2117;
                      *&buf[14] = v508;
                      *&buf[22] = 2117;
                      *v887 = v514;
                      *&v887[8] = 2048;
                      *&v887[10] = v419;
                      *&v887[18] = 2048;
                      *&v887[20] = v521;
                      *&v887[28] = 1024;
                      *&v887[30] = v482 >> 2;
                      *&v887[34] = 1024;
                      *&v887[36] = v483 >> 5;
                      v888 = 2117;
                      v889 = v527;
                      v890 = 2048;
                      v891 = v316;
                      v892 = 2048;
                      v893 = v533;
                      v894 = 1024;
                      v895 = v843 >> 2;
                      _os_log_impl(&dword_18366B000, v496, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery: Spelling correction skipped for token %{sensitive}@ -> %{sensitive}@ because replacement token(String: %{sensitive}@ model score: %.2f rec score: %.2f in lexicon: %i is spell correction: %i) can't replace top model token(String: %{sensitive}@ model score: %.2f rec score: %.2f in lexicon: %i)", buf, 0x64u);
                    }

LABEL_125:

                    goto LABEL_126;
                  }
                }

                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v395 = qword_1EA84DC60;
                if (os_log_type_enabled(v395, OS_LOG_TYPE_DEBUG))
                {
                  v400 = objc_msgSend_objectAtIndexedSubscript_(v858, v396, v378, v397, v398, v399);
                  v406 = objc_msgSend_description(v400, v401, v402, v403, v404, v405);
                  *buf = 138739971;
                  *&buf[4] = v406;
                  _os_log_impl(&dword_18366B000, v395, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery: Skipping line of transcription %{sensitive}@ because the top model transcription has multiple tokens", buf, 0xCu);
                }

LABEL_126:

                ++v378;
              }

              if (!objc_msgSend_count(loga, v379, v380, v381, v382, v383))
              {
                goto LABEL_164;
              }

              v543 = v839;
              if (!v839)
              {
                v543 = objc_msgSend_firstObject(loga, v539, 0, v540, v541, v542);
              }

              v839 = v543;
              objc_msgSend_removeObject_(loga, v539, v543, v540, v541, v542);
              v544 = MEMORY[0x1E696AEF8];
              v550 = objc_msgSend_string(v854, v545, v546, v547, v548, v549);
              v556 = objc_msgSend_length(v550, v551, v552, v553, v554, v555);
              v558 = objc_msgSend_correctionCheckingResultWithRange_replacementString_alternativeStrings_(v544, v557, v835 + v361, v556, v839, loga);

              v564 = objc_msgSend_strokeGroupResult(v836, v559, v560, v561, v562, v563);
              v570 = objc_msgSend_inputStrokeIdentifiers(v564, v565, v566, v567, v568, v569);
              v576 = objc_msgSend_strokeIndexes(v854, v571, v572, v573, v574, v575);
              v581 = objc_msgSend_objectsAtIndexes_(v570, v577, v576, v578, v579, v580);

              v587 = objc_msgSend_recognitionSession(v834, v582, v583, v584, v585, v586);
              v593 = objc_msgSend_latestStrokeProvider(v587, v588, v589, v590, v591, v592);
              v850 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v594, v581, v593, v595, v596);

              v602 = objc_msgSend_recognitionSession(v834, v597, v598, v599, v600, v601);
              v608 = objc_msgSend_latestStrokeProvider(v602, v603, v604, v605, v606, v607);
              v613 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v609, v850, v610, v611, v612);
              v618 = objc_msgSend_cachedTranscriptionForStrokeGroup_(v608, v614, v613, v615, v616, v617);
              v619 = v618 == 0;

              if (!v619)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v625 = qword_1EA84DC60;
                if (os_log_type_enabled(v625, OS_LOG_TYPE_DEBUG))
                {
                  v631 = objc_msgSend_string(v854, v626, v627, v628, v629, v630);
                  *buf = 138740227;
                  *&buf[4] = v631;
                  *&buf[12] = 2117;
                  *&buf[14] = v839;
                  _os_log_impl(&dword_18366B000, v625, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery Spelling correction skipped for token = %{sensitive}@ -> %{sensitive}@ because there is a matching recognition result in the transcription cache.", buf, 0x16u);
                }

                goto LABEL_161;
              }

              if (!objc_msgSend_hasValidPrincipalLines(v854, v620, v621, v622, v623, v624))
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v625 = qword_1EA84DC60;
                if (os_log_type_enabled(v625, OS_LOG_TYPE_DEBUG))
                {
                  v734 = objc_msgSend_string(v854, v729, v730, v731, v732, v733);
                  *buf = 138740227;
                  *&buf[4] = v734;
                  *&buf[12] = 2117;
                  *&buf[14] = v839;
                  _os_log_impl(&dword_18366B000, v625, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery Spelling correction skipped for token = %{sensitive}@ -> %{sensitive}@ because no accurate baseline is available.", buf, 0x16u);
                }

                goto LABEL_161;
              }

              v637 = objc_msgSend_inputStrokeIdentifiers(v847, v632, v633, v634, v635, v636);
              v643 = objc_msgSend_strokeIndexes(v854, v638, v639, v640, v641, v642);
              v625 = objc_msgSend_objectsAtIndexes_(v637, v644, v643, v645, v646, v647);

              v648 = sub_183883C28(v834, v854, v625);
              objc_msgSend_principalOrientation(v854, v649, v650, v651, v652, v653);
              v655 = v654;
              objc_msgSend_principalOrientation(v854, v656, v657, v658, v659, v660);
              v664 = fabs(v655);
              v666 = vabdd_f64(v665, v648);
              if (v664 > 0.2 || v666 >= 0.09)
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v735 = qword_1EA84DC60;
                if (os_log_type_enabled(v735, OS_LOG_TYPE_DEBUG))
                {
                  v741 = objc_msgSend_string(v854, v736, v737, v738, v739, v740);
                  objc_msgSend_principalOrientation(v854, v742, v743, v744, v745, v746);
                  if (v664 <= 0.2)
                  {
                    v748 = @"NO";
                  }

                  else
                  {
                    v748 = @"YES";
                  }

                  *buf = 138741251;
                  *&buf[4] = v741;
                  *&buf[12] = 2117;
                  if (v666 < 0.09)
                  {
                    v749 = @"NO";
                  }

                  else
                  {
                    v749 = @"YES";
                  }

                  *&buf[14] = v839;
                  *&buf[22] = 2112;
                  *v887 = v748;
                  *&v887[8] = 2048;
                  *&v887[10] = v747;
                  *&v887[18] = 2112;
                  *&v887[20] = v749;
                  *&v887[28] = 2048;
                  *&v887[30] = v648;
                  _os_log_impl(&dword_18366B000, v735, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery Spelling correction skipped for token = %{sensitive}@ -> %{sensitive}@ because baseline is slanted:%@ (angle %.2f) token angle don't match:%@ (token angle %.2f).", buf, 0x3Eu);
                }

LABEL_161:
                goto LABEL_165;
              }

              v885 = v854;
              v667 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v661, &v885, 1, v662, v663);
              v884 = v581;
              v671 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v668, &v884, 1, v669, v670);
              v677 = objc_msgSend_recognitionSession(v834, v672, v673, v674, v675, v676);
              v683 = objc_msgSend_latestStrokeProvider(v677, v678, v679, v680, v681, v682);
              v686 = objc_msgSend_newBaselinePathForTokens_strokeIdentifiers_strokeProvider_(CHTokenizedTextResult, v684, v667, v671, v683, v685);

              v687 = [CHTextCheckingQueryItem alloc];
              v692 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v688, v850, v689, v690, v691);
              v693 = sub_183884720(v687, v692, v558, v686);

              if (v686)
              {
                CGPathRelease(v686);
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v694 = qword_1EA84DC60;
              if (os_log_type_enabled(v694, OS_LOG_TYPE_DEFAULT))
              {
                v699 = objc_msgSend_objectAtIndexedSubscript_(v858, v695, v856, v696, v697, v698);
                v705 = objc_msgSend_firstObject(v699, v700, v701, v702, v703, v704);
                v711 = objc_msgSend_string(v705, v706, v707, v708, v709, v710);
                v717 = objc_msgSend_count(v581, v712, v713, v714, v715, v716);
                *buf = 138740483;
                *&buf[4] = v839;
                *&buf[12] = 2117;
                *&buf[14] = v711;
                *&buf[22] = 2048;
                *v887 = v717;
                _os_log_impl(&dword_18366B000, v694, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery Found Spelling correction = %{sensitive}@ as replacement to %{sensitive}@, covering %ld strokes", buf, 0x20u);
              }

              v718 = v834[9];
              *v881 = MEMORY[0x1E69E9820];
              *&v881[8] = 3221225472;
              *&v881[16] = sub_18388481C;
              v882 = &unk_1E6DDF368;
              v719 = v693;
              v883 = v719;
              v728 = objc_msgSend_indexOfObjectPassingTest_(v718, v720, v881, v721, v722, v723);
              if (v728 == 0x7FFFFFFFFFFFFFFFLL)
              {
                objc_msgSend_addObject_(v831, v724, v719, v725, v726, v727);
              }

              else
              {
                v750 = [CHTextCheckingQueryItem alloc];
                v755 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v751, v850, v752, v753, v754);
                v760 = objc_msgSend_objectAtIndexedSubscript_(v834[9], v756, v728, v757, v758, v759);
                v766 = objc_msgSend_estimatedBaseline(v760, v761, v762, v763, v764, v765);
                v767 = sub_183884720(v750, v755, v558, v766);

                v719 = v767;
                objc_msgSend_addObject_(v831, v768, v767, v769, v770, v771);
              }

LABEL_164:
LABEL_165:
            }
          }

          Index = objc_msgSend_firstIndex(v828, v201, v833, v202, v203, v204);
          v790 = objc_msgSend_lastIndex(v828, v785, v786, v787, v788, v789);
          v796 = v790 - objc_msgSend_firstIndex(v828, v791, v792, v793, v794, v795);
          v861[0] = MEMORY[0x1E69E9820];
          v861[1] = 3221225472;
          v861[2] = sub_183884850;
          v861[3] = &unk_1E6DDF390;
          v862 = v838;
          v863 = v834;
          v864 = v829;
          objc_msgSend_enumerateRangesInRange_options_usingBlock_(v828, v797, Index, v796 + 1, 0, v861);

LABEL_174:
        }

        v824 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v874, v880, 16, v31);
      }

      while (v824);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v798 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v798, OS_LOG_TYPE_DEFAULT))
    {
      v804 = objc_msgSend_count(v829, v799, v800, v801, v802, v803);
      *buf = 134217984;
      *&buf[4] = v804;
      _os_log_impl(&dword_18366B000, v798, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery._textCheckingResultsForSessionResult: completed, found %lu items.", buf, 0xCu);
    }

    v859[0] = MEMORY[0x1E69E9820];
    v859[1] = 3221225472;
    v859[2] = sub_1838856A8;
    v859[3] = &unk_1E6DDF3B8;
    v859[4] = v834;
    v860 = v841;
    v809 = objc_msgSend_indexesOfObjectsPassingTest_(v829, v805, v859, v806, v807, v808);
    v814 = objc_msgSend_objectsAtIndexes_(v829, v810, v809, v811, v812, v813);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v815 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v815, OS_LOG_TYPE_DEFAULT))
    {
      v821 = objc_msgSend_count(v829, v816, v817, v818, v819, v820);
      *buf = 134217984;
      *&buf[4] = v821;
      _os_log_impl(&dword_18366B000, v815, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery._textCheckingResultsForSessionResult: completed, kept %lu valid items after codemap filtering.", buf, 0xCu);
    }
  }

  else
  {
    v814 = 0;
  }

  return v814;
}

uint64_t sub_183883424(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18388343C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_sharedEditor(MEMORY[0x1E69D9330], a2, a3, a4, a5, a6);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_183883524;
  v13[3] = &unk_1E6DDF2C8;
  v12 = *(a1 + 48);
  v10 = v12;
  v14 = v12;
  objc_msgSend_requestCheckingOfString_language_offset_options_completionHandler_(v7, v11, v8, @"en", 0, v9, v13);
}

void sub_183883524(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_copy(v3, v4, v5, v6, v7, v8);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v13, v14, v15, v16, v17);
    v19 = 134217984;
    v20 = v18;
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQueryItem found %ld grammar text checking results in paragraph", &v19, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_183883664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v84 = a3;
  v7 = a4;
  ++*(*(*(a1 + 48) + 8) + 24);
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v8 = v7;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v92, v97, 16, v10);
  if (v16)
  {
    v4 = *v93;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v93 != v4)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v92 + 1) + 8 * i);
        v19 = objc_msgSend_recognitionSession(*(a1 + 32), v11, v12, v13, v14, v15);
        v25 = objc_msgSend_latestStrokeProvider(v19, v20, v21, v22, v23, v24);
        v29 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v26, v18, v25, v27, v28);

        objc_msgSend_addObjectsFromArray_(*(a1 + 40), v30, v29, v31, v32, v33);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v92, v97, 16, v15);
    }

    while (v16);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v34 = v84;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v88, v96, 16, v36);
  if (v42)
  {
    v4 = *v89;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v89 != v4)
        {
          objc_enumerationMutation(v34);
        }

        v44 = *(*(&v88 + 1) + 8 * j);
        if (objc_msgSend_length(*(*(*(a1 + 56) + 8) + 40), v37, v38, v39, v40, v41) && (objc_msgSend_properties(v44, v45, v46, v47, v48, v49) & 0x20) != 0)
        {
          v50 = objc_msgSend_stringByAppendingString_(*(*(*(a1 + 56) + 8) + 40), v45, @" ", v47, v48, v49);
          v51 = *(*(a1 + 56) + 8);
          v52 = *(v51 + 40);
          *(v51 + 40) = v50;
        }

        v53 = *(*(*(a1 + 56) + 8) + 40);
        v54 = objc_msgSend_string(v44, v45, v46, v47, v48, v49);
        v59 = objc_msgSend_stringByAppendingString_(v53, v55, v54, v56, v57, v58);
        v60 = *(*(a1 + 56) + 8);
        v61 = *(v60 + 40);
        *(v60 + 40) = v59;
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v88, v96, 16, v41);
    }

    while (v42);
  }

  v67 = *(*(a1 + 64) + 8);
  v68 = *(v67 + 24);
  if (v68 != 1)
  {
    *(v67 + 24) = 0;
    if (*(*(*(a1 + 64) + 8) + 24) != 1)
    {
      goto LABEL_20;
    }

LABEL_26:
    v74 = objc_msgSend_recognitionSession(*(a1 + 32), v62, v63, v64, v65, v66);
    v80 = objc_msgSend_latestStrokeProvider(v74, v75, v76, v77, v78, v79);
    v83 = objc_msgSend_newBaselinePathForTokens_strokeIdentifiers_strokeProvider_(CHTokenizedTextResult, v81, v34, v8, v80, v82);

    CGPathAddPath(*(a1 + 72), 0, v83);
    CGPathRelease(v83);
    goto LABEL_27;
  }

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = sub_183883B48;
  v86[3] = &unk_1E6DDF318;
  v86[4] = *(a1 + 32);
  v87 = v8;
  v4 = &v87;
  *(*(*(a1 + 64) + 8) + 24) = objc_msgSend_indexOfObjectPassingTest_(v34, v69, v86, v70, v71, v72) == 0x7FFFFFFFFFFFFFFFLL;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v73 = qword_1EA84DC60;
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v73, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery grammar correction skipped because principal lines not available or too slanted.", buf, 2u);
  }

LABEL_27:
  if (v68)
  {
  }
}

void sub_183883A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

BOOL sub_183883B48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v7, a3, v8, v9, v10);
  v12 = sub_183883C28(v6, v5, v11);

  if (objc_msgSend_hasValidPrincipalLines(v5, v13, v14, v15, v16, v17) && (objc_msgSend_principalOrientation(v5, v18, v19, v20, v21, v22), fabs(v28) <= 0.2))
  {
    objc_msgSend_principalOrientation(v5, v23, v24, v25, v26, v27);
    v29 = vabdd_f64(v30, v12) >= 0.09;
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

double sub_183883C28(void *a1, void *a2, void *a3)
{
  v284 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v238 = a3;
  v242 = v5;
  v232 = a1;
  if (!a1)
  {
    v12 = 0.0;
    goto LABEL_86;
  }

  objc_msgSend_principalOrientation(v5, v6, v7, v8, v9, v10);
  v12 = v11;
  v18 = objc_msgSend_principalPoints(v5, v13, v14, v15, v16, v17);

  if (v18)
  {
    v235 = objc_msgSend_principalPoints(v5, v19, v20, v21, v22, v23);
    objc_msgSend_originalBounds(v5, v24, v25, v26, v27, v28);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = v235;
    v38 = MEMORY[0x1E695DF70];
    v236 = v37;
    v44 = objc_msgSend_count(v37, v39, v40, v41, v42, v43);
    v237 = objc_msgSend_arrayWithCapacity_(v38, v45, v44, v46, v47, v48);
    v259 = 0u;
    v257 = 0u;
    v258 = 0u;
    v256 = 0u;
    obj = v236;
    v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v256, &v270, 16, v50);
    if (!v233)
    {
      goto LABEL_32;
    }

    v234 = *v257;
    if (v34 == 0.0)
    {
      v34 = 1.0;
    }

    if (v36 == 0.0)
    {
      v36 = 1.0;
    }

    v51 = MEMORY[0x1E695EFF8];
    while (1)
    {
      for (i = 0; i != v233; i = i + 1)
      {
        if (*v257 != v234)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v256 + 1) + 8 * i);
        v53 = MEMORY[0x1E695DF70];
        v239 = v52;
        v59 = objc_msgSend_count(v52, v54, v55, v56, v57, v58);
        v64 = objc_msgSend_arrayWithCapacity_(v53, v60, v59, v61, v62, v63);
        v266 = 0u;
        v267 = 0u;
        v264 = 0u;
        v265 = 0u;
        v245 = v239;
        v247 = v64;
        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v245, v65, &v264, &v276, 16, v66);
        if (v72)
        {
          v73 = *v265;
          do
          {
            for (j = 0; j != v72; ++j)
            {
              if (*v265 != v73)
              {
                objc_enumerationMutation(v245);
              }

              v75 = *(*(&v264 + 1) + 8 * j);
              v76 = MEMORY[0x1E695DF70];
              v77 = objc_msgSend_count(v75, v67, v68, v69, v70, v71, v232);
              v82 = objc_msgSend_arrayWithCapacity_(v76, v78, v77, v79, v80, v81);
              v262 = 0u;
              v263 = 0u;
              v260 = 0u;
              v261 = 0u;
              v83 = v75;
              v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v260, &v274, 16, v85);
              if (v86)
              {
                v87 = *v261;
                do
                {
                  for (k = 0; k != v86; ++k)
                  {
                    if (*v261 != v87)
                    {
                      objc_enumerationMutation(v83);
                    }

                    sub_1837A97C4(*(*(&v260 + 1) + 8 * k), v268);
                    v94 = v268[0];
                    if ((v268[1] - v268[0]) == 8)
                    {
                      v95 = *v268[0];
                      v96 = *(v268[0] + 1);
                    }

                    else
                    {
                      v95 = *v51;
                      v96 = v51[1];
                      if (!v268[0])
                      {
                        goto LABEL_26;
                      }
                    }

                    operator delete(v268[0]);
LABEL_26:
                    v97 = sub_1837A9A94(v30 + v95 * v34, v32 + v96 * v36, v94, v89, v90, v91, v92, v93);
                    objc_msgSend_addObject_(v82, v98, v97, v99, v100, v101);
                  }

                  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v102, &v260, &v274, 16, v103);
                }

                while (v86);
              }

              objc_msgSend_addObject_(v247, v104, v82, v105, v106, v107);
            }

            v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v245, v67, &v264, &v276, 16, v71);
          }

          while (v72);
        }

        objc_msgSend_addObject_(v237, v108, v247, v109, v110, v111);
      }

      v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v112, &v256, &v270, 16, v113);
      if (!v233)
      {
LABEL_32:

        obja = v237;
        v118 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v114, 5, v115, v116, v117);
        v124 = objc_msgSend_array(MEMORY[0x1E695DF70], v119, v120, v121, v122, v123);
        objc_msgSend_addObject_(v118, v125, v124, v126, v127, v128);

        v134 = objc_msgSend_array(MEMORY[0x1E695DF70], v129, v130, v131, v132, v133);
        objc_msgSend_addObject_(v118, v135, v134, v136, v137, v138);

        v144 = objc_msgSend_array(MEMORY[0x1E695DF70], v139, v140, v141, v142, v143);
        objc_msgSend_addObject_(v118, v145, v144, v146, v147, v148);

        v154 = objc_msgSend_array(MEMORY[0x1E695DF70], v149, v150, v151, v152, v153);
        objc_msgSend_addObject_(v118, v155, v154, v156, v157, v158);

        v164 = objc_msgSend_array(MEMORY[0x1E695DF70], v159, v160, v161, v162, v163);
        objc_msgSend_addObject_(v118, v165, v164, v166, v167, v168);

        v272 = 0u;
        v273 = 0u;
        v270 = 0u;
        v271 = 0u;
        v244 = obja;
        v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v244, v169, &v270, &v276, 16, v170);
        if (v171)
        {
          v248 = *v271;
          do
          {
            v246 = v171;
            for (m = 0; m != v246; m = m + 1)
            {
              if (*v271 != v248)
              {
                objc_enumerationMutation(v244);
              }

              v178 = 0;
              v179 = *(*(&v270 + 1) + 8 * m);
              while (v178 < objc_msgSend_count(v179, v172, v173, v174, v175, v176, v232))
              {
                v180 = objc_msgSend_objectAtIndexedSubscript_(v179, v172, v178, v174, v175, v176);
                v266 = 0u;
                v267 = 0u;
                v264 = 0u;
                v265 = 0u;
                v181 = v180;
                v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v181, v182, &v264, &v274, 16, v183);
                if (v188)
                {
                  v189 = *v265;
                  do
                  {
                    for (n = 0; n != v188; ++n)
                    {
                      if (*v265 != v189)
                      {
                        objc_enumerationMutation(v181);
                      }

                      v191 = *(*(&v264 + 1) + 8 * n);
                      v192 = objc_msgSend_objectAtIndexedSubscript_(v118, v184, v178, v185, v186, v187);
                      objc_msgSend_addObject_(v192, v193, v191, v194, v195, v196);
                    }

                    v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v181, v184, &v264, &v274, 16, v187);
                  }

                  while (v188);
                }

                ++v178;
              }
            }

            v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v244, v172, &v270, &v276, 16, v176);
          }

          while (v171);
        }

        v252 = 0u;
        v253 = 0u;
        v254 = 0u;
        v255 = 0u;
        v197 = v118;
        v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v198, &v252, v269, 16, v199);
        if (!v205)
        {
          v225 = v197;
          goto LABEL_84;
        }

        v206 = 0;
        v207 = *v253;
        do
        {
          for (ii = 0; ii != v205; ++ii)
          {
            if (*v253 != v207)
            {
              objc_enumerationMutation(v197);
            }

            v209 = *(*(&v252 + 1) + 8 * ii);
            if (objc_msgSend_count(v209, v200, v201, v202, v203, v204, v232) > v206)
            {
              v206 = objc_msgSend_count(v209, v200, v201, v202, v203, v204);
            }
          }

          v205 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v200, &v252, v269, 16, v204);
        }

        while (v205);

        if (v206 >= 4)
        {
          v215 = objc_msgSend_recognitionSession(v232, v210, v211, v212, v213, v214);
          v221 = objc_msgSend_latestStrokeProvider(v215, v216, v217, v218, v219, v220);
          v225 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v222, v238, v221, v223, v224);

          sub_1838C3014(v225, &v274);
          v282 = 0u;
          v283 = 0u;
          v280 = 0u;
          v281 = 0u;
          v278 = 0u;
          v279 = 0u;
          v276 = 0u;
          v277 = 0u;
          v250 = 0;
          v251 = 0;
          __p = 0;
          if (v275 != v274)
          {
            if (((v275 - v274) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_18369761C();
          }

          objc_msgSend_principalLinesFromPrincipalLinePoints_points_(CHPrincipalLineDetector, v226, v197, &__p, v227, v228);
          if (__p)
          {
            v250 = __p;
            operator delete(__p);
          }

          v229 = *MEMORY[0x1E695EFF8];
          if (*&v276 != *MEMORY[0x1E695EFF8] || (v230 = *(MEMORY[0x1E695EFF8] + 8), *(&v276 + 1) != v230) || *&v277 != v229 || *(&v277 + 1) != v230 || *&v278 != v229 || *(&v278 + 1) != v230 || *&v279 != v229 || *(&v279 + 1) != v230 || *&v280 != v229 || *(&v280 + 1) != v230 || *&v281 != v229 || *(&v281 + 1) != v230 || *&v282 != v229 || *(&v282 + 1) != v230 || *&v283 != v229 || *(&v283 + 1) != v230)
          {
            v12 = atan2(*(&v279 + 1) - *(&v278 + 1), *&v279 - *&v278);
          }

          if (v274)
          {
            v275 = v274;
            operator delete(v274);
          }

LABEL_84:
        }

        break;
      }
    }
  }

LABEL_86:

  return v12;
}

id sub_183884720(id a1, void *a2, void *a3, const CGPath *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = CHTextCheckingQueryItem;
    a1 = objc_msgSendSuper2(&v24, sel_init);
    if (a1)
    {
      v14 = objc_msgSend_copy(v7, v9, v10, v11, v12, v13);
      v15 = *(a1 + 4);
      *(a1 + 4) = v14;

      v21 = objc_msgSend_copy(v8, v16, v17, v18, v19, v20);
      v22 = *(a1 + 5);
      *(a1 + 5) = v21;

      *(a1 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      if (!CGPathIsEmpty(a4))
      {
        *(a1 + 3) = CGPathRetain(a4);
      }

      *(a1 + 4) = 0;
    }
  }

  return a1;
}

__n128 sub_183884828(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_183884838(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *a4 = 1;
  return result;
}

void sub_183884850(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v321 = *MEMORY[0x1E69E9840];
  v262 = objc_msgSend_subarrayWithRange_(*(a1 + 32), a2, a2, a3, a5, a6);
  v6 = [CHContextualTextResults alloc];
  v11 = objc_msgSend_initWithTextResults_(v6, v7, v262, v8, v9, v10);
  v12 = *(a1 + 40);
  v269 = v11;
  v270 = v12;
  if (v12)
  {
    v266 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
    v23 = objc_msgSend_rawTranscription(v269, v18, v19, v20, v21, v22);
    v271 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v23, v24, @"\n", @" ", v25, v26);

    v32 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v27, v28, v29, v30, v31);
    v33 = sub_1837A4CE0(v271, v32, 1);

    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = objc_msgSend_substringToIndex_(v271, v34, v33, v36, v37, v38);

      v271 = v39;
    }

    v40 = objc_msgSend_ch_sentenceEndPunctuationCharacterSet(MEMORY[0x1E696AB08], v34, v35, v36, v37, v38);
    v41 = sub_1837A4CE0(v271, v40, 1);
    v43 = v42;

    if (v41 == 0x7FFFFFFFFFFFFFFFLL || v41 + v43 < objc_msgSend_length(v271, v44, v45, v46, v47, v48))
    {
      v49 = objc_msgSend_stringByAppendingString_(v271, v44, @".", v46, v47, v48);

      v50 = v49;
    }

    else
    {
      v50 = v271;
    }

    v51 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_1EF1BEB20);
    v310 = 0;
    v311 = &v310;
    v312 = 0x3032000000;
    v313 = sub_183883424;
    v314 = sub_183883434;
    v315 = 0;
    v52 = qword_1EA84DBD0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18388343C;
    block[3] = &unk_1E6DDF2F0;
    v272 = v50;
    v306 = v272;
    v307 = 0;
    v309 = &v310;
    v53 = v51;
    v308 = v53;
    dispatch_sync(v52, block);
    v260 = v53;
    dispatch_block_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    obj = v311[5];
    v265 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, &v301, v319, 16, v55);
    if (v265)
    {
      v264 = *v302;
      do
      {
        for (i = 0; i != v265; ++i)
        {
          if (*v302 != v264)
          {
            objc_enumerationMutation(obj);
          }

          v273 = *(*(&v301 + 1) + 8 * i);
          v61 = objc_msgSend_grammarDetails(v273, v56, v57, v58, v59, v60, v260);
          v276 = objc_msgSend_mutableCopy(v61, v62, v63, v64, v65, v66);

          for (j = 0; j < objc_msgSend_count(v276, v67, v68, v69, v70, v71); j = v275 + 1)
          {
            v277 = objc_msgSend_set(MEMORY[0x1E695DFA8], v73, v74, v75, v76, v77);
            v295 = 0;
            v296 = &v295;
            v297 = 0x3032000000;
            v298 = sub_183883424;
            v299 = sub_183883434;
            v300 = &stru_1EF1C0318;
            v82 = objc_msgSend_objectAtIndex_(v276, v78, j, v79, v80, v81);
            v278 = objc_msgSend_mutableCopy(v82, v83, v84, v85, v86, v87);
            v275 = j;

            v92 = objc_msgSend_objectForKey_(v278, v88, @"NSGrammarRange", v89, v90, v91);
            v98 = objc_msgSend_rangeValue(v92, v93, v94, v95, v96, v97);
            v100 = v99;

            v106 = objc_msgSend_range(v273, v101, v102, v103, v104, v105);
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v107 = qword_1EA84DC60;
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              v112 = objc_msgSend_objectForKey_(v278, v108, @"NSGrammarCorrections", v109, v110, v111);
              v118 = objc_msgSend_count(v112, v113, v114, v115, v116, v117);
              v123 = objc_msgSend_objectForKey_(v278, v119, @"NSGrammarCorrections", v120, v121, v122);
              *buf = 134218243;
              *&buf[4] = v118;
              *&buf[12] = 2117;
              *&buf[14] = v123;
              _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_DEBUG, "CHTextCheckingQuery Found Grammar correction with %ld corrections = %{sensitive}@", buf, 0x16u);
            }

            if (v100)
            {
              Mutable = CGPathCreateMutable();
              v125 = v106 + v98;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v318 = 1;
              v291 = 0;
              v292 = &v291;
              v293 = 0x2020000000;
              v294 = 0;
              v285[0] = MEMORY[0x1E69E9820];
              v285[1] = 3221225472;
              v285[2] = sub_183883664;
              v285[3] = &unk_1E6DDF340;
              v287 = &v291;
              v285[4] = v270;
              v126 = v277;
              v286 = v126;
              v288 = &v295;
              v289 = buf;
              path = Mutable;
              v290 = Mutable;
              objc_msgSend_enumerateGroupsCoveredByStringRange_block_(v269, v127, v125, v100, v285, v128);
              v134 = objc_msgSend_recognitionSession(v270, v129, v130, v131, v132, v133);
              v140 = objc_msgSend_latestStrokeProvider(v134, v135, v136, v137, v138, v139);
              v145 = objc_msgSend_cachedTranscriptionForStrokeGroup_(v140, v141, v126, v142, v143, v144);
              v146 = v145 == 0;

              if (v146)
              {
                if (*(*&buf[8] + 24) == 1 && objc_msgSend_count(v126, v147, v148, v149, v150, v151) && v292[3] == 1)
                {
                  v159 = 0;
                  v160 = 0;
                  v161 = v100 + v125 - 1;
                  while (v159 < objc_msgSend_length(v272, v154, v155, v156, v157, v158))
                  {
                    v162 = v296[5];
                    v163 = objc_msgSend_length(v272, v154, v155, v156, v157, v158);
                    v165 = objc_msgSend_rangeOfString_options_range_(v272, v164, v162, 0, &v160[v159], v163 - &v160[v159]);
                    v159 = v165;
                    if (v165 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v159 = 0x7FFFFFFFFFFFFFFFLL;
                      break;
                    }

                    v160 = v154;
                    if (v125 >= v165 && v125 - v165 < v154 && v161 >= v165 && v161 - v165 < v154)
                    {
                      break;
                    }
                  }

                  v172 = objc_msgSend_array(MEMORY[0x1E695DF70], v154, v155, v156, v157, v158);
                  if (v159 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    objc_msgSend_objectForKey_(v278, v168, @"NSGrammarCorrections", v169, v170, v171);
                    v172 = v173 = v172;
                  }

                  else
                  {
                    v283 = 0u;
                    v284 = 0u;
                    v281 = 0u;
                    v282 = 0u;
                    v173 = objc_msgSend_objectForKey_(v278, v168, @"NSGrammarCorrections", v169, v170, v171);
                    v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v174, &v281, v316, 16, v175);
                    if (v178)
                    {
                      v179 = v125 - v159;
                      v180 = *v282;
                      do
                      {
                        for (k = 0; k != v178; ++k)
                        {
                          if (*v282 != v180)
                          {
                            objc_enumerationMutation(v173);
                          }

                          v182 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v296[5], v176, v179, v100, *(*(&v281 + 1) + 8 * k), v177);
                          objc_msgSend_addObject_(v172, v183, v182, v184, v185, v186);
                        }

                        v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v176, &v281, v316, 16, v177);
                      }

                      while (v178);
                    }
                  }

                  objc_msgSend_setObject_forKeyedSubscript_(v278, v187, v172, @"NSGrammarCorrections", v188, v189);
                  objc_msgSend_setObject_atIndexedSubscript_(v276, v190, v278, v275, v191, v192);
                  v195 = objc_msgSend_grammarCheckingResultWithRange_details_(MEMORY[0x1E696AEF8], v193, v125, v100, v276, v194);
                  v196 = [CHTextCheckingQueryItem alloc];
                  v197 = v126;
                  v198 = v195;
                  if (v196)
                  {
                    v320.receiver = v196;
                    v320.super_class = CHTextCheckingQueryItem;
                    v204 = objc_msgSendSuper2(&v320, sel_init);
                    if (v204)
                    {
                      v205 = objc_msgSend_copy(v197, v199, v200, v201, v202, v203);
                      v206 = v204[4];
                      v204[4] = v205;

                      v212 = objc_msgSend_copy(v198, v207, v208, v209, v210, v211);
                      v213 = v204[5];
                      v204[5] = v212;

                      v204[1] = v275;
                      if (!CGPathIsEmpty(path))
                      {
                        v204[3] = CGPathRetain(path);
                      }

                      *(v204 + 4) = 1;
                    }
                  }

                  else
                  {
                    v204 = 0;
                  }

                  v214 = v270[9];
                  v279[0] = MEMORY[0x1E69E9820];
                  v279[1] = 3221225472;
                  v279[2] = sub_183884714;
                  v279[3] = &unk_1E6DDF368;
                  v215 = v204;
                  v280 = v215;
                  v224 = objc_msgSend_indexOfObjectPassingTest_(v214, v216, v279, v217, v218, v219);
                  if (v224 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    objc_msgSend_addObject_(v266, v220, v215, v221, v222, v223);
                    v225 = v215;
                  }

                  else
                  {
                    v225 = [CHTextCheckingQueryItem alloc];
                    v230 = objc_msgSend_objectAtIndexedSubscript_(v270[9], v226, v224, v227, v228, v229);
                    v236 = objc_msgSend_estimatedBaseline(v230, v231, v232, v233, v234, v235);
                    v267 = v197;
                    v237 = v198;
                    if (v225)
                    {
                      v320.receiver = v225;
                      v320.super_class = CHTextCheckingQueryItem;
                      v225 = objc_msgSendSuper2(&v320, sel_init);
                      if (v225)
                      {
                        v243 = objc_msgSend_copy(v267, v238, v239, v240, v241, v242);
                        strokeIdentifiers = v225->_strokeIdentifiers;
                        v225->_strokeIdentifiers = v243;

                        v250 = objc_msgSend_copy(v237, v245, v246, v247, v248, v249);
                        textCheckingResult = v225->_textCheckingResult;
                        v225->_textCheckingResult = v250;

                        v225->_textCheckingResultGrammarDetailIndex = v275;
                        if (!CGPathIsEmpty(v236))
                        {
                          v225->_estimatedBaseline = CGPathRetain(v236);
                        }

                        v225->_textCheckingResultType = 1;
                      }
                    }

                    objc_msgSend_addObject_(v266, v252, v225, v253, v254, v255);
                  }
                }

                if (path)
                {
                  CGPathRelease(path);
                }
              }

              else
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v152 = qword_1EA84DC60;
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                {
                  v153 = v296[5];
                  LODWORD(v320.receiver) = 138739971;
                  *(&v320.receiver + 4) = v153;
                  _os_log_impl(&dword_18366B000, v152, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery Grammar correction skipped for string = %{sensitive}@ because there is a matching recognition result in the transcription cache.", &v320, 0xCu);
                }
              }

              _Block_object_dispose(&v291, 8);
              _Block_object_dispose(buf, 8);
            }

            _Block_object_dispose(&v295, 8);
          }
        }

        v265 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v301, v319, 16, v60);
      }

      while (v265);
    }

    _Block_object_dispose(&v310, 8);
  }

  else
  {
    v266 = 0;
  }

  objc_msgSend_addObjectsFromArray_(*(a1 + 48), v256, v266, v257, v258, v259);
}

void sub_18388545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, id a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27)
{
  _Block_object_dispose(&STACK[0x260], 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1838856A8(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_strokeIdentifiers(v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_allObjects(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_recognitionSession(*(a1 + 32), v16, v17, v18, v19, v20);
  v27 = objc_msgSend_latestStrokeProvider(v21, v22, v23, v24, v25, v26);
  v30 = objc_msgSend_rawTranscriptionForStrokesWithIdentifiers_strokeProvider_sessionResult_(CHTextCheckUtils, v28, v15, v27, *(a1 + 40), v29);

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v36 = objc_msgSend_replacementStrings(v3, v31, v32, v33, v34, v35, 0);
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v61, v65, 16, v38);
  if (v44)
  {
    v45 = *v62;
    while (2)
    {
      v46 = 0;
      do
      {
        if (*v62 != v45)
        {
          objc_enumerationMutation(v36);
        }

        v47 = *(*(&v61 + 1) + 8 * v46);
        v48 = objc_msgSend_recognitionSession(*(a1 + 32), v39, v40, v41, v42, v43);
        v54 = objc_msgSend_remoteTextSynthesizer(v48, v49, v50, v51, v52, v53);
        v58 = objc_msgSend_planForReplacingText_withText_(v54, v55, v30, v47, v56, v57);
        LOBYTE(v47) = v58 == 0;

        if (v47)
        {
          v59 = 0;
          goto LABEL_11;
        }

        ++v46;
      }

      while (v44 != v46);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v61, v65, 16, v43);
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v59 = 1;
LABEL_11:

  return v59;
}

void sub_1838859F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_183885AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHTextCheckingQueryItem;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_183886528(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_183887D04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v8 = objc_msgSend_scriptCodeForCodepoint_(CHTextScriptUtilities, a2, a2, a4, a5, a6);
  result = objc_msgSend_isSkippableScriptCode_(CHTextScriptUtilities, v9, v8, v10, v11, v12);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = v8;
    *a5 = 1;
  }

  return result;
}

void sub_183887D68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v393 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v364 = a3;
  obj = a4;
  v363 = a4;
  v366 = v6;
  v12 = objc_msgSend_count(v6, v7, v8, v9, v10, v11);
  if (v12 != objc_msgSend_count(v364, v13, v14, v15, v16, v17))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = objc_msgSend_count(v6, v24, v25, v26, v27, v28);
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v364, v29, v30, v31, v32, v33);
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "CHDataDetectorQuery: Number of stroke group idenfitiers (%lu) doesn't match the number of stroke index sets (%lu).", buf, 0x16u);
    }
  }

  v34 = objc_msgSend_count(v6, v18, v19, v20, v21, v22);
  if (v34 != objc_msgSend_count(v364, v35, v36, v37, v38, v39))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v45 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      v51 = objc_msgSend_count(v6, v46, v47, v48, v49, v50);
      v57 = objc_msgSend_count(v364, v52, v53, v54, v55, v56);
      *buf = 134218240;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v57;
      _os_log_impl(&dword_18366B000, v45, OS_LOG_TYPE_FAULT, "CHDataDetectorQuery: Number of stroke group idenfitiers (%lu) doesn't match the number of stroke index sets (%lu).", buf, 0x16u);
    }
  }

  v378 = objc_msgSend_set(MEMORY[0x1E695DFA8], v40, v41, v42, v43, v44);
  path = CGPathCreateMutable();
  v367 = 0;
  do
  {
    if (v367 >= objc_msgSend_count(v366, v58, v59, v60, v61, v62))
    {
      v326 = objc_msgSend_allObjects(v378, v63, v64, v65, v66, v67);
      v332 = objc_msgSend_recognitionSession(*(a1 + 48), v327, v328, v329, v330, v331);
      v338 = objc_msgSend_latestStrokeProvider(v332, v333, v334, v335, v336, v337);
      v342 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v339, v326, v338, v340, v341);

      if (v342)
      {
        v347 = [CHDataDetectorQueryItem alloc];
        v352 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v348, v342, v349, v350, v351);
        v353 = v363;
        if (v347)
        {
          *buf = v347;
          *&buf[8] = CHDataDetectorQueryItem;
          v359 = objc_msgSendSuper2(buf, sel_init);
          if (v359)
          {
            v360 = objc_msgSend_copy(v352, v354, v355, v356, v357, v358);
            v361 = *(v359 + 2);
            *(v359 + 2) = v360;

            objc_storeStrong(v359 + 3, obj);
            *(v359 + 1) = CGPathRetain(path);
          }
        }

        else
        {
          v359 = 0;
        }

        if (!path)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v359 = 0;
        if (!path)
        {
LABEL_68:
          if (v359)
          {
            objc_msgSend_addObject_(*(a1 + 56), v343, v359, v344, v345, v346);
          }

          break;
        }
      }

      CGPathRelease(path);
      goto LABEL_68;
    }

    v380 = objc_msgSend_objectAtIndexedSubscript_(v366, v63, v367, v65, v66, v67);
    v376 = objc_msgSend_objectAtIndexedSubscript_(v364, v68, v367, v69, v70, v71);
    v369 = objc_msgSend_array(MEMORY[0x1E695DF70], v72, v73, v74, v75, v76);
    v372 = objc_msgSend_array(MEMORY[0x1E695DF70], v77, v78, v79, v80, v81);
    v373 = objc_msgSend_array(MEMORY[0x1E695DF70], v82, v83, v84, v85, v86);
    v374 = objc_msgSend_array(MEMORY[0x1E695DF70], v87, v88, v89, v90, v91);
    v368 = objc_msgSend_string(MEMORY[0x1E696AD60], v92, v93, v94, v95, v96);
    v377 = objc_msgSend_array(MEMORY[0x1E695DF70], v97, v98, v99, v100, v101);
    v107 = 0;
    while (v107 < objc_msgSend_count(v380, v102, v103, v104, v105, v106))
    {
      v108 = objc_msgSend_objectAtIndexedSubscript_(v380, v102, v107, v104, v105, v106);
      v113 = objc_msgSend_objectAtIndexedSubscript_(v376, v109, v107, v110, v111, v112);
      v114 = *(a1 + 32);
      v120 = objc_msgSend_integerValue(v108, v115, v116, v117, v118, v119);
      v125 = objc_msgSend_objectAtIndexedSubscript_(v114, v121, v120, v122, v123, v124);
      objc_msgSend_addObject_(v377, v126, v125, v127, v128, v129);
      v130 = *(a1 + 40);
      v136 = objc_msgSend_uniqueIdentifier(v125, v131, v132, v133, v134, v135);
      v141 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v130, v137, v136, v138, v139, v140);
      v147 = objc_msgSend_inputStrokeIdentifiers(v141, v142, v143, v144, v145, v146);
      v153 = objc_msgSend_count(v147, v148, v149, v150, v151, v152);
      if (v153 < objc_msgSend_count(v113, v154, v155, v156, v157, v158))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v164 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          v170 = objc_msgSend_count(v113, v165, v166, v167, v168, v169);
          v176 = objc_msgSend_count(v147, v171, v172, v173, v174, v175);
          *buf = 134218754;
          *&buf[4] = v170;
          *&buf[12] = 2048;
          *&buf[14] = v176;
          *&buf[22] = 2112;
          v390 = v147;
          LOWORD(v391) = 2112;
          *(&v391 + 2) = v113;
          v177 = v164;
          v178 = "Found %lu strokes in the data detected content but only %lu strokes in the entire stroke group: %@. Found stroke indexes: %@";
          v179 = 42;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      Index = objc_msgSend_lastIndex(v113, v159, v160, v161, v162, v163);
      if (Index >= objc_msgSend_count(v147, v181, v182, v183, v184, v185))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v164 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          v250 = objc_msgSend_lastIndex(v113, v245, v246, v247, v248, v249);
          v256 = objc_msgSend_count(v147, v251, v252, v253, v254, v255);
          *buf = 134218240;
          *&buf[4] = v250;
          *&buf[12] = 2048;
          *&buf[14] = v256;
          v177 = v164;
          v178 = "The last stroke index found in the data detected content (#strokes=%lu) should be within the scope of the strokeIDs array (#strokes=%lu)";
          v179 = 22;
LABEL_28:
          _os_log_impl(&dword_18366B000, v177, OS_LOG_TYPE_ERROR, v178, buf, v179);
        }

LABEL_29:
        v244 = 0;
        v212 = v378;
        v378 = 0;
        goto LABEL_30;
      }

      v371 = objc_msgSend_array(MEMORY[0x1E695DF70], v186, v187, v188, v189, v190);
      v370 = objc_msgSend_array(MEMORY[0x1E695DF70], v191, v192, v193, v194, v195);
      v201 = objc_msgSend_recognitionResultsByLocale(v141, v196, v197, v198, v199, v200);
      v207 = objc_msgSend_preferredLocale(v141, v202, v203, v204, v205, v206);
      v375 = objc_msgSend_objectForKeyedSubscript_(v201, v208, v207, v209, v210, v211);

      v382[0] = MEMORY[0x1E69E9820];
      v382[1] = 3221225472;
      v382[2] = sub_183888C34;
      v382[3] = &unk_1E6DDF3E0;
      v383 = v113;
      v384 = v108;
      v385 = v147;
      v164 = v370;
      v386 = v164;
      v212 = v371;
      v387 = v212;
      v213 = v378;
      v388 = v213;
      objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v375, v214, v382, v215, v216, v217);
      v223 = objc_msgSend_topTranscription(v375, v218, v219, v220, v221, v222);
      objc_msgSend_appendFormat_(v368, v224, @" %@", v225, v226, v227, v223);

      objc_msgSend_addObject_(v373, v228, v212, v229, v230, v231);
      objc_msgSend_addObject_(v374, v232, v164, v233, v234, v235);
      objc_msgSend_addObjectsFromArray_(v369, v236, v212, v237, v238, v239);
      objc_msgSend_addObjectsFromArray_(v372, v240, v164, v241, v242, v243);

      v244 = 1;
      v378 = v213;
LABEL_30:

      ++v107;
      if ((v244 & 1) == 0)
      {
        break;
      }
    }

    v261 = objc_msgSend_count(v372, v102, v103, v104, v105, v106);
    if (!v261)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v277 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
      {
        v283 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v278, v279, v280, v281, v282);
        v288 = objc_msgSend_stringByTrimmingCharactersInSet_(v368, v284, v283, v285, v286, v287);
        *buf = 138739971;
        *&buf[4] = v288;
        _os_log_impl(&dword_18366B000, v277, OS_LOG_TYPE_DEFAULT, "CHDataDetectorQuery - No intersecting tokens found in preferredResult(s) with transcription = %{sensitive}@", buf, 0xCu);
      }

      if (path)
      {
        CGPathRelease(path);
      }

      goto LABEL_45;
    }

    if (objc_msgSend_indexOfObjectPassingTest_(v372, v257, &unk_1EF1BEB40, v258, v259, v260) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v267 = objc_msgSend_recognitionSession(*(a1 + 48), v262, v263, v264, v265, v266);
      v273 = objc_msgSend_latestStrokeProvider(v267, v268, v269, v270, v271, v272);
      v276 = objc_msgSend_newBaselinePathForTokens_strokeIdentifiers_strokeProvider_(CHTokenizedTextResult, v274, v372, v369, v273, v275);

LABEL_42:
      goto LABEL_43;
    }

    if (objc_msgSend_count(v377, v262, v263, v264, v265, v266) == 1)
    {
      v267 = objc_msgSend_firstObject(v377, v289, v290, v291, v292, v293);
      v276 = objc_msgSend_newEstimatedBaselineForStrokesWithTokens_tokenStrokeIdentifiers_(v267, v294, v372, v369, v295, v296);
      goto LABEL_42;
    }

    Mutable = CGPathCreateMutable();
    v303 = 0;
    while (2)
    {
      if (v303 < objc_msgSend_count(v377, v297, v298, v299, v300, v301))
      {
        v308 = objc_msgSend_objectAtIndexedSubscript_(v377, v304, v303, v305, v306, v307);
        v313 = objc_msgSend_objectAtIndexedSubscript_(v374, v309, v303, v310, v311, v312);
        v318 = objc_msgSend_objectAtIndexedSubscript_(v373, v314, v303, v315, v316, v317);
        v322 = objc_msgSend_newEstimatedBaselineForStrokesWithTokens_tokenStrokeIdentifiers_(v308, v319, v313, v318, v320, v321);

        if (CGPathIsEmpty(Mutable))
        {
          CGPathAddPath(Mutable, 0, v322);
          if (!v322)
          {
            goto LABEL_57;
          }
        }

        else
        {
          CurrentPoint = CGPathGetCurrentPoint(Mutable);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x4012000000;
          v390 = sub_183889004;
          *&v391 = nullsub_57;
          *(&v391 + 1) = &unk_183A5AC72;
          v392 = *MEMORY[0x1E695EFF8];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_183889014;
          block[3] = &unk_1E6DDF428;
          block[4] = buf;
          CGPathApplyWithBlock(v322, block);
          v324 = *(*&buf[8] + 48);
          v325 = *(*&buf[8] + 56);
          if (CurrentPoint.x != v324 || CurrentPoint.y != v325)
          {
            CGPathAddLineToPoint(Mutable, 0, v324, v325);
          }

          CGPathAddPath(Mutable, 0, v322);
          _Block_object_dispose(buf, 8);
          if (!v322)
          {
            goto LABEL_57;
          }
        }

        CGPathRelease(v322);
LABEL_57:

        ++v303;
        continue;
      }

      break;
    }

    v276 = MEMORY[0x1865E52E0](Mutable);
    if (Mutable)
    {
      CGPathRelease(Mutable);
    }

LABEL_43:
    CGPathAddPath(path, 0, v276);
    if (v276)
    {
      CGPathRelease(v276);
    }

LABEL_45:

    ++v367;
  }

  while (v261);
}

void sub_183888C34(id *a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v15 = objc_msgSend_strokeIndexes(v3, v10, v11, v12, v13, v14);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_183888F30;
  v56[3] = &unk_1E6DDCB80;
  v57 = a1[4];
  v58 = &v59;
  objc_msgSend_enumerateIndexesUsingBlock_(v15, v16, v56, v17, v18, v19);

  if (*(v60 + 24) == 1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_msgSend_intValue(a1[5], v21, v22, v23, v24, v25);
      *buf = 67109120;
      v64 = v26;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "CHDataDetectorQuery._dataDetectorResultsForSessionResult: detection results for group %i", buf, 8u);
    }

    v32 = objc_msgSend_strokeIndexes(v3, v27, v28, v29, v30, v31);
    v50 = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = sub_183888F78;
    v53 = &unk_1E6DDE028;
    v33 = v9;
    v54 = v33;
    v55 = a1[6];
    objc_msgSend_enumerateIndexesUsingBlock_(v32, v34, &v50, v35, v36, v37);

    objc_msgSend_addObject_(a1[7], v38, v3, v39, v40, v41, v50, v51, v52, v53);
    objc_msgSend_addObject_(a1[8], v42, v33, v43, v44, v45);
    objc_msgSend_addObjectsFromArray_(a1[9], v46, v33, v47, v48, v49);
  }

  _Block_object_dispose(&v59, 8);
}

void sub_183888E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_183888F30(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = objc_msgSend_containsIndex_(*(a1 + 32), a2, a2, a4, a5, a6);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_183888F78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, a2, a4, a5, a6);
  objc_msgSend_addObject_(v6, v7, v11, v8, v9, v10);
}

__n128 sub_183889004(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 sub_183889014(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    v2 = *(a2 + 8);
    result = *v2;
    *(*(*(a1 + 32) + 8) + 48) = *v2;
  }

  return result;
}

void sub_18388913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18388915C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_183889280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHDataDetectorQueryItem;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_183889374(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1838897D8(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1EF1BEB70;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  *(a1 + 8) = 12;
  operator new[]();
}

void sub_18388AD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(__p);
  operator delete(a20);
  if (v39)
  {
    operator delete(v39);
  }

  sub_18369F0F0(&a34);
  if (v38)
  {
    operator delete(v38);
  }

  v42 = *(v40 - 200);
  if (v42)
  {
    *(v40 - 192) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_18388AE18(void *a1)
{
  v1 = a1;
  v2 = 0;
  v26 = &v26;
  v27 = &v26;
  v28 = 0;
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  for (i = objc_msgSend_strokeCount(v1, v3, v4, v5, v6, v7); i > v2; i = objc_msgSend_strokeCount(v1, v13, v14, v15, v16, v17))
  {
    if (objc_msgSend_pointCountForStrokeIndex_(v1, v9, v2, v10, v11, v12))
    {
      objc_msgSend_pointForStrokeIndex_pointIndex_(v1, v13, v2, 0, v16, v17);
      operator new();
    }

    ++v2;
  }

  sub_183825068(v27, &v26, v28);
  sub_183825068(v24, &v23, v25);
  v18 = v24;
  v19 = v27;
  if (v28 >= 0xA)
  {
    v20 = v28 / 0xA;
    v21 = &v26;
    v22 = &v23;
    do
    {
      v19 = *(v19 + 8);
      v18 = *(v18 + 8);
      v21 = *v21;
      v22 = *v22;
      --v20;
    }

    while (v20);
  }

  operator new();
}

void sub_18388B0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_183824E44(va);
  sub_183824E44(va1);

  _Unwind_Resume(a1);
}

void *sub_18388B108(uint64_t a1, void **a2)
{
  result = memcpy(*a2, *(a1 + 16), 4 * *(a1 + 8));
  *a2 = *a2 + 4 * *(a1 + 8);
  return result;
}

void sub_18388B1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHPrefixQueryItem;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id *sub_18388B5C0(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = CHPrefixQuery;
    a1 = objc_msgSendSuper2(&v23, sel_initWithRecognitionSession_, v9);
    if (a1)
    {
      v18 = objc_msgSend_copy(v10, v13, v14, v15, v16, v17);
      v19 = a1[12];
      a1[12] = v18;

      v20 = sub_18388B884(a1, v11);
      v21 = a1[10];
      a1[10] = v20;

      objc_storeStrong(a1 + 11, a5);
    }
  }

  return a1;
}

id sub_18388B884(id a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (a1)
  {
    if (objc_msgSend_count(v3, v4, v5, v6, v7, v8))
    {
      v15 = objc_msgSend_set(MEMORY[0x1E695DFA8], v10, v11, v12, v13, v14);
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = sub_18388BD04;
      v30 = &unk_1E6DDF478;
      v16 = v15;
      v31 = v16;
      v32 = a1;
      objc_msgSend_enumerateObjectsUsingBlock_(v9, v17, &v27, v18, v19, v20);
      a1 = objc_msgSend_copy(v16, v21, v22, v23, v24, v25, v27, v28, v29, v30);
    }

    else
    {
      a1 = v9;
    }
  }

  return a1;
}

void sub_18388BD04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v3;
  v14 = v6;
  if (v5)
  {
    v5 = objc_msgSend_stringByFoldingWithOptions_locale_(v6, v7, 385, 0, v8, v9);
  }

  objc_msgSend_addObject_(v4, v10, v5, v11, v12, v13);
}

void sub_18388C030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18388C0FC(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = a2;
  v5 = *(a1 + 32);
  v11 = objc_msgSend_length(*(a1 + 40), v6, v7, v8, v9, v10);
  v16 = objc_msgSend_substringFromIndex_(v5, v12, v11, v13, v14, v15);
  hasPrefix = objc_msgSend_hasPrefix_(v22, v17, v16, v18, v19, v20);

  if (hasPrefix)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void *sub_18388C1C0(void **a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v100 = v8;
  v101 = a4;
  if (a1)
  {
    v102 = sub_18388C6E4(a1, v7);
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 1;
    v9 = MEMORY[0x1E695DF70];
    v15 = objc_msgSend_count(v7, v10, v11, v12, v13, v14);
    v20 = objc_msgSend_arrayWithCapacity_(v9, v16, v15, v17, v18, v19);
    v26 = objc_msgSend_array(MEMORY[0x1E695DF70], v21, v22, v23, v24, v25);
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = sub_18388C800;
    v105[3] = &unk_1E6DDF4C8;
    v106 = v8;
    v27 = v20;
    v107 = v27;
    v28 = v26;
    v108 = v28;
    v109 = &v110;
    objc_msgSend_enumerateObjectsUsingBlock_(v7, v29, v105, v30, v31, v32);
    v38 = objc_msgSend_recognitionSession(a1, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_latestStrokeProvider(v38, v39, v40, v41, v42, v43);
    v48 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v45, v28, v44, v46, v47);

    if (!v48)
    {
      v64 = 0;
LABEL_18:

      _Block_object_dispose(&v110, 8);
      goto LABEL_19;
    }

    if (*(v111 + 24) == 1)
    {
      v54 = objc_msgSend_recognitionSession(a1, v49, v50, v51, v52, v53, v20, v100);
      v60 = objc_msgSend_latestStrokeProvider(v54, v55, v56, v57, v58, v59);
      v63 = objc_msgSend_newBaselinePathForTokens_strokeIdentifiers_strokeProvider_(CHTokenizedTextResult, v61, v7, v27, v60, v62);
    }

    else
    {
      v63 = objc_msgSend_newEstimatedBaselineForStrokesWithTokens_tokenStrokeIdentifiers_(v101, v49, v7, v27, v52, v53, v20, v100);
    }

    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, 0, v63);
    if (v63)
    {
      CGPathRelease(v63);
    }

    v66 = [CHPrefixQueryItem alloc];
    v71 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v67, v48, v68, v69, v70);
    v72 = v102;
    v73 = v72;
    if (v66)
    {
      v114.receiver = v66;
      v114.super_class = CHPrefixQueryItem;
      v64 = objc_msgSendSuper2(&v114, sel_init);
      if (v64)
      {
        v79 = objc_msgSend_copy(v71, v74, v75, v76, v77, v78);
        v80 = v64[1];
        v64[1] = v79;

        v86 = objc_msgSend_copy(v73, v81, v82, v83, v84, v85);
        v87 = v64[2];
        v64[2] = v86;

        v64[3] = CGPathRetain(Mutable);
      }

      if (v111[3])
      {
        goto LABEL_16;
      }
    }

    else
    {
      v64 = 0;

      if (v111[3])
      {
LABEL_16:
        if (Mutable)
        {
          CGPathRelease(Mutable);
        }

        goto LABEL_18;
      }
    }

    v88 = a1[9];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = sub_18388CA54;
    v103[3] = &unk_1E6DDF4F0;
    v64 = v64;
    v104 = v64;
    v94 = objc_msgSend_indexOfObjectPassingTest_(v88, v89, v103, v90, v91, v92);
    if (v94 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v98 = objc_msgSend_objectAtIndexedSubscript_(a1[9], v93, v94, v95, v96, v97);

      v64 = v98;
    }

    goto LABEL_16;
  }

  v64 = 0;
LABEL_19:

  return v64;
}

void sub_18388C5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

id sub_18388C6E4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (a1)
  {
    v9 = objc_msgSend_string(MEMORY[0x1E696AD60], v3, v4, v5, v6, v7);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_18388CCDC;
    v21[3] = &unk_1E6DDE830;
    v10 = v9;
    v22 = v10;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v11, v21, v12, v13, v14);
    v19 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v15, v10, v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_18388C800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_strokeIndexes(v3, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_arrayWithCapacity_(v4, v17, v16, v18, v19, v20);

  v27 = objc_msgSend_strokeIndexes(v3, v22, v23, v24, v25, v26);
  v46 = MEMORY[0x1E69E9820];
  v47 = 3221225472;
  v48 = sub_18388C9BC;
  v49 = &unk_1E6DDE028;
  v28 = v21;
  v50 = v28;
  v51 = *(a1 + 32);
  objc_msgSend_enumerateIndexesUsingBlock_(v27, v29, &v46, v30, v31, v32);

  objc_msgSend_addObject_(*(a1 + 40), v33, v28, v34, v35, v36, v46, v47, v48, v49);
  objc_msgSend_addObjectsFromArray_(*(a1 + 48), v37, v28, v38, v39, v40);
  *(*(*(a1 + 56) + 8) + 24) |= objc_msgSend_hasValidPrincipalLines(v3, v41, v42, v43, v44, v45);
}

void sub_18388C9BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v17 = objc_msgSend_inputStrokeIdentifiers(*(a1 + 40), a2, a3, a4, a5, a6);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v17, v8, a2, v9, v10, v11);
  objc_msgSend_addObject_(v7, v13, v12, v14, v15, v16);
}

uint64_t sub_18388CA54(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  isEqualToString = 0;
  if (v3 && v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v5 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v41 = 138412290;
        v42 = v3;
        _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_ERROR, "item should be of class CHPrefixQueryItem: %@", &v41, 0xCu);
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v11 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v41 = 138412290;
        v42 = v3;
        _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_FAULT, "item should be of class CHPrefixQueryItem: %@", &v41, 0xCu);
      }
    }

    if (v2 == v3)
    {
      isEqualToString = 1;
    }

    else
    {
      v12 = objc_msgSend_strokeIdentifiers(v3, v6, v7, v8, v9, v10);
      v18 = objc_msgSend_strokeIdentifiers(v2, v13, v14, v15, v16, v17);
      isEqual = objc_msgSend_isEqual_(v12, v19, v18, v20, v21, v22);

      if (isEqual)
      {
        v29 = objc_msgSend_queryResult(v3, v24, v25, v26, v27, v28);
        v35 = objc_msgSend_queryResult(v2, v30, v31, v32, v33, v34);
        isEqualToString = objc_msgSend_isEqualToString_(v29, v36, v35, v37, v38, v39);
      }

      else
      {
        isEqualToString = 0;
      }
    }
  }

  return isEqualToString;
}

void sub_18388CC8C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_18388CCDC(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  if (a3 && (objc_msgSend_properties(v16, v5, v6, v7, v8, v9) & 0x20) != 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), v5, @" ", v7, v8, v9);
  }

  v10 = *(a1 + 32);
  v11 = objc_msgSend_string(v16, v5, v6, v7, v8, v9);
  objc_msgSend_appendString_(v10, v12, v11, v13, v14, v15);
}

void sub_18388D394(uint64_t a1, void *a2)
{
  v41 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v3, v41, v4, v5, v6);
  v7 = sub_18388C6E4(*(a1 + 40), *(a1 + 32));
  isTokenStringMatchingQuery_allowPartialMatching = objc_msgSend__isTokenStringMatchingQuery_allowPartialMatching_(*(a1 + 40), v8, v7, 1, v9, v10);
  if (isTokenStringMatchingQuery_allowPartialMatching & 1 | ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0))
  {
    if (isTokenStringMatchingQuery_allowPartialMatching)
    {
LABEL_3:
      v17 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    objc_msgSend_removeLastObject(*(a1 + 32), v12, v13, v14, v15, v16);
    v18 = sub_18388C6E4(*(a1 + 40), *(a1 + 32));
    if (objc_msgSend__isTokenStringMatchingQuery_allowPartialMatching_(*(a1 + 40), v19, v18, 0, v20, v21))
    {
      v31 = sub_18388C1C0(*(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56));
      if (v31)
      {
        objc_msgSend_addObject_(*(a1 + 64), v27, v31, v28, v29, v30);
      }
    }

    objc_msgSend_removeAllObjects(*(a1 + 32), v22, v23, v24, v25, v26);
    objc_msgSend_addObject_(*(a1 + 32), v32, v41, v33, v34, v35);
    v36 = sub_18388C6E4(*(a1 + 40), *(a1 + 32));

    v40 = objc_msgSend__isTokenStringMatchingQuery_allowPartialMatching_(*(a1 + 40), v37, v36, 1, v38, v39);
    if (v40)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_removeAllObjects(*(a1 + 32), v12, v13, v14, v15, v16);
  v17 = 0;
LABEL_10:
  *(*(*(a1 + 72) + 8) + 24) = v17;
}

void sub_18388D584(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = objc_msgSend_string(v3, v5, v6, v7, v8, v9);
  LODWORD(v4) = objc_msgSend__isTokenStringMatchingQuery_allowPartialMatching_(v4, v11, v10, 0, v12, v13);

  if (v4)
  {
    v17 = *(a1 + 32);
    v24[0] = v3;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v24, 1, v15, v16);
    v19 = sub_18388C1C0(v17, v18, *(a1 + 40), *(a1 + 48));

    if (v19)
    {
      objc_msgSend_addObject_(*(a1 + 56), v20, v19, v21, v22, v23);
    }
  }
}

void sub_18388D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18388D7D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18388D908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_18388DA08(uint64_t a1)
{
  v2 = sub_18388B884(*(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 32);
  obj = v2;
  if (*(v3 + 80) != v2)
  {
    objc_storeStrong((v3 + 80), v2);
    objc_msgSend_q_setNeedsQueryResultUpdating(*(a1 + 32), v4, v5, v6, v7, v8);
  }
}

void sub_18388DB34()
{
  v678 = objc_alloc_init(MEMORY[0x1E696AD48]);
  objc_msgSend_addCharactersInRange_(v678, v0, 173, 1, v1, v2);
  objc_msgSend_addCharactersInRange_(v678, v3, 1541, 1, v4, v5);
  objc_msgSend_addCharactersInRange_(v678, v6, 1757, 1, v7, v8);
  objc_msgSend_addCharactersInRange_(v678, v9, 2274, 1, v10, v11);
  objc_msgSend_addCharactersInRange_(v678, v12, 8203, 1, v13, v14);
  objc_msgSend_addCharactersInRange_(v678, v15, 8206, 2, v16, v17);
  objc_msgSend_addCharactersInRange_(v678, v18, 8234, 5, v19, v20);
  objc_msgSend_addCharactersInRange_(v678, v21, 8288, 5, v22, v23);
  objc_msgSend_addCharactersInRange_(v678, v24, 8294, 10, v25, v26);
  objc_msgSend_addCharactersInRange_(v678, v27, 65279, 1, v28, v29);
  objc_msgSend_addCharactersInRange_(v678, v30, 65529, 3, v31, v32);
  objc_msgSend_addCharactersInRange_(v678, v33, 113824, 4, v34, v35);
  objc_msgSend_addCharactersInRange_(v678, v36, 119155, 8, v37, v38);
  objc_msgSend_addCharactersInRange_(v678, v39, 917505, 1, v40, v41);
  objc_msgSend_addCharactersInRange_(v678, v42, 917536, 96, v43, v44);
  objc_msgSend_addCharactersInRange_(v678, v45, 1536, 5, v46, v47);
  objc_msgSend_addCharactersInRange_(v678, v48, 1564, 1, v49, v50);
  objc_msgSend_addCharactersInRange_(v678, v51, 1807, 1, v52, v53);
  objc_msgSend_addCharactersInRange_(v678, v54, 6158, 1, v55, v56);
  objc_msgSend_addCharactersInRange_(v678, v57, 8204, 2, v58, v59);
  objc_msgSend_addCharactersInRange_(v678, v60, 78896, 9, v61, v62);
  objc_msgSend_addCharactersInRange_(v678, v63, 69821, 1, v64, v65);
  objc_msgSend_addCharactersInRange_(v678, v66, 69837, 1, v67, v68);
  v74 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AB08], v69, v70, v71, v72, v73);
  objc_msgSend_formUnionWithCharacterSet_(v678, v75, v74, v76, v77, v78);

  objc_msgSend_addCharactersInRange_(v678, v79, 95, 1, v80, v81);
  objc_msgSend_addCharactersInRange_(v678, v82, 8255, 2, v83, v84);
  objc_msgSend_addCharactersInRange_(v678, v85, 8276, 1, v86, v87);
  objc_msgSend_addCharactersInRange_(v678, v88, 65075, 2, v89, v90);
  objc_msgSend_addCharactersInRange_(v678, v91, 65101, 3, v92, v93);
  objc_msgSend_addCharactersInRange_(v678, v94, 65343, 1, v95, v96);
  objc_msgSend_addCharactersInRange_(v678, v97, 45, 1, v98, v99);
  objc_msgSend_addCharactersInRange_(v678, v100, 8208, 6, v101, v102);
  objc_msgSend_addCharactersInRange_(v678, v103, 11799, 1, v104, v105);
  objc_msgSend_addCharactersInRange_(v678, v106, 11802, 1, v107, v108);
  objc_msgSend_addCharactersInRange_(v678, v109, 11834, 2, v110, v111);
  objc_msgSend_addCharactersInRange_(v678, v112, 11840, 1, v113, v114);
  objc_msgSend_addCharactersInRange_(v678, v115, 12316, 1, v116, v117);
  objc_msgSend_addCharactersInRange_(v678, v118, 12336, 1, v119, v120);
  objc_msgSend_addCharactersInRange_(v678, v121, 12448, 1, v122, v123);
  objc_msgSend_addCharactersInRange_(v678, v124, 65073, 2, v125, v126);
  objc_msgSend_addCharactersInRange_(v678, v127, 65112, 1, v128, v129);
  objc_msgSend_addCharactersInRange_(v678, v130, 65123, 1, v131, v132);
  objc_msgSend_addCharactersInRange_(v678, v133, 65293, 1, v134, v135);
  objc_msgSend_addCharactersInRange_(v678, v136, 1418, 1, v137, v138);
  objc_msgSend_addCharactersInRange_(v678, v139, 1470, 1, v140, v141);
  objc_msgSend_addCharactersInRange_(v678, v142, 5120, 1, v143, v144);
  objc_msgSend_addCharactersInRange_(v678, v145, 6150, 1, v146, v147);
  objc_msgSend_addCharactersInRange_(v678, v148, 69293, 1, v149, v150);
  objc_msgSend_addCharactersInRange_(v678, v151, 41, 1, v152, v153);
  objc_msgSend_addCharactersInRange_(v678, v154, 93, 1, v155, v156);
  objc_msgSend_addCharactersInRange_(v678, v157, 125, 1, v158, v159);
  objc_msgSend_addCharactersInRange_(v678, v160, 8262, 1, v161, v162);
  objc_msgSend_addCharactersInRange_(v678, v163, 8318, 1, v164, v165);
  objc_msgSend_addCharactersInRange_(v678, v166, 8334, 1, v167, v168);
  objc_msgSend_addCharactersInRange_(v678, v169, 8969, 1, v170, v171);
  objc_msgSend_addCharactersInRange_(v678, v172, 8971, 1, v173, v174);
  objc_msgSend_addCharactersInRange_(v678, v175, 9002, 1, v176, v177);
  objc_msgSend_addCharactersInRange_(v678, v178, 10089, 1, v179, v180);
  objc_msgSend_addCharactersInRange_(v678, v181, 10091, 1, v182, v183);
  objc_msgSend_addCharactersInRange_(v678, v184, 10093, 1, v185, v186);
  objc_msgSend_addCharactersInRange_(v678, v187, 10095, 1, v188, v189);
  objc_msgSend_addCharactersInRange_(v678, v190, 10097, 1, v191, v192);
  objc_msgSend_addCharactersInRange_(v678, v193, 10099, 1, v194, v195);
  objc_msgSend_addCharactersInRange_(v678, v196, 10101, 1, v197, v198);
  objc_msgSend_addCharactersInRange_(v678, v199, 10182, 1, v200, v201);
  objc_msgSend_addCharactersInRange_(v678, v202, 10215, 1, v203, v204);
  objc_msgSend_addCharactersInRange_(v678, v205, 10217, 1, v206, v207);
  objc_msgSend_addCharactersInRange_(v678, v208, 10219, 1, v209, v210);
  objc_msgSend_addCharactersInRange_(v678, v211, 10221, 1, v212, v213);
  objc_msgSend_addCharactersInRange_(v678, v214, 10223, 1, v215, v216);
  objc_msgSend_addCharactersInRange_(v678, v217, 10628, 1, v218, v219);
  objc_msgSend_addCharactersInRange_(v678, v220, 10630, 1, v221, v222);
  objc_msgSend_addCharactersInRange_(v678, v223, 10632, 1, v224, v225);
  objc_msgSend_addCharactersInRange_(v678, v226, 10634, 1, v227, v228);
  objc_msgSend_addCharactersInRange_(v678, v229, 10636, 1, v230, v231);
  objc_msgSend_addCharactersInRange_(v678, v232, 10638, 1, v233, v234);
  objc_msgSend_addCharactersInRange_(v678, v235, 10640, 1, v236, v237);
  objc_msgSend_addCharactersInRange_(v678, v238, 10642, 1, v239, v240);
  objc_msgSend_addCharactersInRange_(v678, v241, 10644, 1, v242, v243);
  objc_msgSend_addCharactersInRange_(v678, v244, 10646, 1, v245, v246);
  objc_msgSend_addCharactersInRange_(v678, v247, 10648, 1, v248, v249);
  objc_msgSend_addCharactersInRange_(v678, v250, 10713, 1, v251, v252);
  objc_msgSend_addCharactersInRange_(v678, v253, 10715, 1, v254, v255);
  objc_msgSend_addCharactersInRange_(v678, v256, 10749, 1, v257, v258);
  objc_msgSend_addCharactersInRange_(v678, v259, 11811, 1, v260, v261);
  objc_msgSend_addCharactersInRange_(v678, v262, 11813, 1, v263, v264);
  objc_msgSend_addCharactersInRange_(v678, v265, 11815, 1, v266, v267);
  objc_msgSend_addCharactersInRange_(v678, v268, 11817, 1, v269, v270);
  objc_msgSend_addCharactersInRange_(v678, v271, 12297, 1, v272, v273);
  objc_msgSend_addCharactersInRange_(v678, v274, 12299, 1, v275, v276);
  objc_msgSend_addCharactersInRange_(v678, v277, 12301, 1, v278, v279);
  objc_msgSend_addCharactersInRange_(v678, v280, 12303, 1, v281, v282);
  objc_msgSend_addCharactersInRange_(v678, v283, 12305, 1, v284, v285);
  objc_msgSend_addCharactersInRange_(v678, v286, 12309, 1, v287, v288);
  objc_msgSend_addCharactersInRange_(v678, v289, 12311, 1, v290, v291);
  objc_msgSend_addCharactersInRange_(v678, v292, 12313, 1, v293, v294);
  objc_msgSend_addCharactersInRange_(v678, v295, 12315, 1, v296, v297);
  objc_msgSend_addCharactersInRange_(v678, v298, 12318, 2, v299, v300);
  objc_msgSend_addCharactersInRange_(v678, v301, 64830, 1, v302, v303);
  objc_msgSend_addCharactersInRange_(v678, v304, 65048, 1, v305, v306);
  objc_msgSend_addCharactersInRange_(v678, v307, 65078, 1, v308, v309);
  objc_msgSend_addCharactersInRange_(v678, v310, 65080, 1, v311, v312);
  objc_msgSend_addCharactersInRange_(v678, v313, 65082, 1, v314, v315);
  objc_msgSend_addCharactersInRange_(v678, v316, 65084, 1, v317, v318);
  objc_msgSend_addCharactersInRange_(v678, v319, 65086, 1, v320, v321);
  objc_msgSend_addCharactersInRange_(v678, v322, 65088, 1, v323, v324);
  objc_msgSend_addCharactersInRange_(v678, v325, 65090, 1, v326, v327);
  objc_msgSend_addCharactersInRange_(v678, v328, 65092, 1, v329, v330);
  objc_msgSend_addCharactersInRange_(v678, v331, 65096, 1, v332, v333);
  objc_msgSend_addCharactersInRange_(v678, v334, 65114, 1, v335, v336);
  objc_msgSend_addCharactersInRange_(v678, v337, 65116, 1, v338, v339);
  objc_msgSend_addCharactersInRange_(v678, v340, 65118, 1, v341, v342);
  objc_msgSend_addCharactersInRange_(v678, v343, 65289, 1, v344, v345);
  objc_msgSend_addCharactersInRange_(v678, v346, 65341, 1, v347, v348);
  objc_msgSend_addCharactersInRange_(v678, v349, 65373, 1, v350, v351);
  objc_msgSend_addCharactersInRange_(v678, v352, 65376, 1, v353, v354);
  objc_msgSend_addCharactersInRange_(v678, v355, 65379, 1, v356, v357);
  objc_msgSend_addCharactersInRange_(v678, v358, 3899, 1, v359, v360);
  objc_msgSend_addCharactersInRange_(v678, v361, 3901, 1, v362, v363);
  objc_msgSend_addCharactersInRange_(v678, v364, 5788, 1, v365, v366);
  objc_msgSend_addCharactersInRange_(v678, v367, 187, 1, v368, v369);
  objc_msgSend_addCharactersInRange_(v678, v370, 8217, 1, v371, v372);
  objc_msgSend_addCharactersInRange_(v678, v373, 8221, 1, v374, v375);
  objc_msgSend_addCharactersInRange_(v678, v376, 8250, 1, v377, v378);
  objc_msgSend_addCharactersInRange_(v678, v379, 11779, 1, v380, v381);
  objc_msgSend_addCharactersInRange_(v678, v382, 11781, 1, v383, v384);
  objc_msgSend_addCharactersInRange_(v678, v385, 11786, 1, v386, v387);
  objc_msgSend_addCharactersInRange_(v678, v388, 11789, 1, v389, v390);
  objc_msgSend_addCharactersInRange_(v678, v391, 11805, 1, v392, v393);
  objc_msgSend_addCharactersInRange_(v678, v394, 11809, 1, v395, v396);
  objc_msgSend_addCharactersInRange_(v678, v397, 171, 1, v398, v399);
  objc_msgSend_addCharactersInRange_(v678, v400, 8216, 1, v401, v402);
  objc_msgSend_addCharactersInRange_(v678, v403, 8219, 2, v404, v405);
  objc_msgSend_addCharactersInRange_(v678, v406, 8223, 1, v407, v408);
  objc_msgSend_addCharactersInRange_(v678, v409, 8249, 1, v410, v411);
  objc_msgSend_addCharactersInRange_(v678, v412, 11778, 1, v413, v414);
  objc_msgSend_addCharactersInRange_(v678, v415, 11780, 1, v416, v417);
  objc_msgSend_addCharactersInRange_(v678, v418, 11785, 1, v419, v420);
  objc_msgSend_addCharactersInRange_(v678, v421, 11788, 1, v422, v423);
  objc_msgSend_addCharactersInRange_(v678, v424, 11804, 1, v425, v426);
  objc_msgSend_addCharactersInRange_(v678, v427, 11808, 1, v428, v429);
  objc_msgSend_addCharactersInRange_(v678, v430, 40, 1, v431, v432);
  objc_msgSend_addCharactersInRange_(v678, v433, 91, 1, v434, v435);
  objc_msgSend_addCharactersInRange_(v678, v436, 123, 1, v437, v438);
  objc_msgSend_addCharactersInRange_(v678, v439, 8218, 1, v440, v441);
  objc_msgSend_addCharactersInRange_(v678, v442, 8222, 1, v443, v444);
  objc_msgSend_addCharactersInRange_(v678, v445, 8261, 1, v446, v447);
  objc_msgSend_addCharactersInRange_(v678, v448, 8317, 1, v449, v450);
  objc_msgSend_addCharactersInRange_(v678, v451, 8333, 1, v452, v453);
  objc_msgSend_addCharactersInRange_(v678, v454, 8968, 1, v455, v456);
  objc_msgSend_addCharactersInRange_(v678, v457, 8970, 1, v458, v459);
  objc_msgSend_addCharactersInRange_(v678, v460, 9001, 1, v461, v462);
  objc_msgSend_addCharactersInRange_(v678, v463, 10088, 1, v464, v465);
  objc_msgSend_addCharactersInRange_(v678, v466, 10090, 1, v467, v468);
  objc_msgSend_addCharactersInRange_(v678, v469, 10092, 1, v470, v471);
  objc_msgSend_addCharactersInRange_(v678, v472, 10094, 1, v473, v474);
  objc_msgSend_addCharactersInRange_(v678, v475, 10096, 1, v476, v477);
  objc_msgSend_addCharactersInRange_(v678, v478, 10098, 1, v479, v480);
  objc_msgSend_addCharactersInRange_(v678, v481, 10100, 1, v482, v483);
  objc_msgSend_addCharactersInRange_(v678, v484, 10181, 1, v485, v486);
  objc_msgSend_addCharactersInRange_(v678, v487, 10214, 1, v488, v489);
  objc_msgSend_addCharactersInRange_(v678, v490, 10216, 1, v491, v492);
  objc_msgSend_addCharactersInRange_(v678, v493, 10218, 1, v494, v495);
  objc_msgSend_addCharactersInRange_(v678, v496, 10220, 1, v497, v498);
  objc_msgSend_addCharactersInRange_(v678, v499, 10222, 1, v500, v501);
  objc_msgSend_addCharactersInRange_(v678, v502, 10627, 1, v503, v504);
  objc_msgSend_addCharactersInRange_(v678, v505, 10629, 1, v506, v507);
  objc_msgSend_addCharactersInRange_(v678, v508, 10631, 1, v509, v510);
  objc_msgSend_addCharactersInRange_(v678, v511, 10633, 1, v512, v513);
  objc_msgSend_addCharactersInRange_(v678, v514, 10635, 1, v515, v516);
  objc_msgSend_addCharactersInRange_(v678, v517, 10637, 1, v518, v519);
  objc_msgSend_addCharactersInRange_(v678, v520, 10639, 1, v521, v522);
  objc_msgSend_addCharactersInRange_(v678, v523, 10641, 1, v524, v525);
  objc_msgSend_addCharactersInRange_(v678, v526, 10643, 1, v527, v528);
  objc_msgSend_addCharactersInRange_(v678, v529, 10645, 1, v530, v531);
  objc_msgSend_addCharactersInRange_(v678, v532, 10647, 1, v533, v534);
  objc_msgSend_addCharactersInRange_(v678, v535, 10712, 1, v536, v537);
  objc_msgSend_addCharactersInRange_(v678, v538, 10714, 1, v539, v540);
  objc_msgSend_addCharactersInRange_(v678, v541, 10748, 1, v542, v543);
  objc_msgSend_addCharactersInRange_(v678, v544, 11810, 1, v545, v546);
  objc_msgSend_addCharactersInRange_(v678, v547, 11812, 1, v548, v549);
  objc_msgSend_addCharactersInRange_(v678, v550, 11814, 1, v551, v552);
  objc_msgSend_addCharactersInRange_(v678, v553, 11816, 1, v554, v555);
  objc_msgSend_addCharactersInRange_(v678, v556, 11842, 1, v557, v558);
  objc_msgSend_addCharactersInRange_(v678, v559, 12296, 1, v560, v561);
  objc_msgSend_addCharactersInRange_(v678, v562, 12298, 1, v563, v564);
  objc_msgSend_addCharactersInRange_(v678, v565, 12300, 1, v566, v567);
  objc_msgSend_addCharactersInRange_(v678, v568, 12302, 1, v569, v570);
  objc_msgSend_addCharactersInRange_(v678, v571, 12304, 1, v572, v573);
  objc_msgSend_addCharactersInRange_(v678, v574, 12308, 1, v575, v576);
  objc_msgSend_addCharactersInRange_(v678, v577, 12310, 1, v578, v579);
  objc_msgSend_addCharactersInRange_(v678, v580, 12312, 1, v581, v582);
  objc_msgSend_addCharactersInRange_(v678, v583, 12314, 1, v584, v585);
  objc_msgSend_addCharactersInRange_(v678, v586, 12317, 1, v587, v588);
  objc_msgSend_addCharactersInRange_(v678, v589, 64831, 1, v590, v591);
  objc_msgSend_addCharactersInRange_(v678, v592, 65047, 1, v593, v594);
  objc_msgSend_addCharactersInRange_(v678, v595, 65077, 1, v596, v597);
  objc_msgSend_addCharactersInRange_(v678, v598, 65079, 1, v599, v600);
  objc_msgSend_addCharactersInRange_(v678, v601, 65081, 1, v602, v603);
  objc_msgSend_addCharactersInRange_(v678, v604, 65083, 1, v605, v606);
  objc_msgSend_addCharactersInRange_(v678, v607, 65085, 1, v608, v609);
  objc_msgSend_addCharactersInRange_(v678, v610, 65087, 1, v611, v612);
  objc_msgSend_addCharactersInRange_(v678, v613, 65089, 1, v614, v615);
  objc_msgSend_addCharactersInRange_(v678, v616, 65091, 1, v617, v618);
  objc_msgSend_addCharactersInRange_(v678, v619, 65095, 1, v620, v621);
  objc_msgSend_addCharactersInRange_(v678, v622, 65113, 1, v623, v624);
  objc_msgSend_addCharactersInRange_(v678, v625, 65115, 1, v626, v627);
  objc_msgSend_addCharactersInRange_(v678, v628, 65117, 1, v629, v630);
  objc_msgSend_addCharactersInRange_(v678, v631, 65288, 1, v632, v633);
  objc_msgSend_addCharactersInRange_(v678, v634, 65339, 1, v635, v636);
  objc_msgSend_addCharactersInRange_(v678, v637, 65371, 1, v638, v639);
  objc_msgSend_addCharactersInRange_(v678, v640, 65375, 1, v641, v642);
  objc_msgSend_addCharactersInRange_(v678, v643, 65378, 1, v644, v645);
  objc_msgSend_addCharactersInRange_(v678, v646, 3898, 1, v647, v648);
  objc_msgSend_addCharactersInRange_(v678, v649, 3900, 1, v650, v651);
  objc_msgSend_addCharactersInRange_(v678, v652, 5787, 1, v653, v654);
  v660 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v655, v656, v657, v658, v659);
  objc_msgSend_formUnionWithCharacterSet_(v678, v661, v660, v662, v663, v664);

  v670 = objc_msgSend_copy(v678, v665, v666, v667, v668, v669);
  v676 = objc_msgSend_invertedSet(v670, v671, v672, v673, v674, v675);
  v677 = qword_1EA84CAF8;
  qword_1EA84CAF8 = v676;
}

void sub_18388E974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_1838903F0(void *a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v85 = a1;
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v1, 5, v2, v3, v4);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8, v9, v10);
  objc_msgSend_addObject_(v5, v12, v11, v13, v14, v15);

  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18, v19, v20);
  objc_msgSend_addObject_(v5, v22, v21, v23, v24, v25);

  v31 = objc_msgSend_array(MEMORY[0x1E695DF70], v26, v27, v28, v29, v30);
  objc_msgSend_addObject_(v5, v32, v31, v33, v34, v35);

  v41 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
  objc_msgSend_addObject_(v5, v42, v41, v43, v44, v45);

  v51 = objc_msgSend_array(MEMORY[0x1E695DF70], v46, v47, v48, v49, v50);
  objc_msgSend_addObject_(v5, v52, v51, v53, v54, v55);

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v85;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v93, v98, 16, v57);
  if (v58)
  {
    v88 = *v94;
    do
    {
      v87 = v58;
      for (i = 0; i != v87; ++i)
      {
        if (*v94 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v65 = 0;
        v66 = *(*(&v93 + 1) + 8 * i);
        while (v65 < objc_msgSend_count(v66, v59, v60, v61, v62, v63))
        {
          v67 = objc_msgSend_objectAtIndexedSubscript_(v66, v59, v65, v61, v62, v63);
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v68 = v67;
          v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v89, v97, 16, v70);
          if (v75)
          {
            v76 = *v90;
            do
            {
              for (j = 0; j != v75; ++j)
              {
                if (*v90 != v76)
                {
                  objc_enumerationMutation(v68);
                }

                v78 = *(*(&v89 + 1) + 8 * j);
                v79 = objc_msgSend_objectAtIndexedSubscript_(v5, v71, v65, v72, v73, v74);
                objc_msgSend_addObject_(v79, v80, v78, v81, v82, v83);
              }

              v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v89, v97, 16, v74);
            }

            while (v75);
          }

          ++v65;
        }
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v93, v98, 16, v63);
    }

    while (v58);
  }

  return v5;
}

void sub_1838915D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v8 = *(a1 + 32);
  v9 = objc_msgSend_strokeIndexes(a2, a2, a3, a4, a5, a6);
  v14 = objc_msgSend_objectsAtIndexes_(v8, v10, v9, v11, v12, v13);
  v19 = objc_msgSend_setWithArray_(v7, v15, v14, v16, v17, v18);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = *(a1 + 40);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v54, v58, 16, v21);
  if (v22)
  {
    v23 = *v55;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v54 + 1) + 8 * i);
        v26 = MEMORY[0x1E695DFD8];
        v27 = objc_opt_class();
        v33 = objc_msgSend_strokeIdentifiers(v25, v28, v29, v30, v31, v32);
        v37 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(v27, v34, v33, *(a1 + 48), v35, v36);
        v42 = objc_msgSend_setWithArray_(v26, v38, v37, v39, v40, v41);

        if (objc_msgSend_isEqualToSet_(v42, v43, v19, v44, v45, v46))
        {
          objc_msgSend_addObject_(*(a1 + 56), v47, v25, v48, v49, v50);

          goto LABEL_11;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v54, v58, 16, v52);
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1838954E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_183895540()
{
  v0 = qword_1EA84CB00;
  qword_1EA84CB00 = &unk_1EF1EBC48;
}

id sub_183898210(void *a1, double a2, double a3, double a4, double a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = MEMORY[0x1E695DF70];
  v66 = v9;
  v16 = objc_msgSend_count(v9, v11, v12, v13, v14, v15);
  v68 = objc_msgSend_arrayWithCapacity_(v10, v17, v16, v18, v19, v20);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v66;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v73, v79, 16, v22);
  if (v28)
  {
    v29 = *v74;
    if (a4 == 0.0)
    {
      a4 = 1.0;
    }

    if (a5 == 0.0)
    {
      a5 = 1.0;
    }

    v30 = MEMORY[0x1E695EFF8];
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v73 + 1) + 8 * i);
        v33 = MEMORY[0x1E695DF70];
        v34 = objc_msgSend_count(v32, v23, v24, v25, v26, v27);
        v39 = objc_msgSend_arrayWithCapacity_(v33, v35, v34, v36, v37, v38);
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v40 = v32;
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v69, v78, 16, v42);
        if (v43)
        {
          v44 = *v70;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v70 != v44)
              {
                objc_enumerationMutation(v40);
              }

              sub_1837A97C4(*(*(&v69 + 1) + 8 * j), v77);
              v51 = v77[0];
              if ((v77[1] - v77[0]) == 8)
              {
                v52 = *v77[0];
                v53 = *(v77[0] + 1);
              }

              else
              {
                v52 = *v30;
                v53 = v30[1];
                if (!v77[0])
                {
                  goto LABEL_19;
                }
              }

              operator delete(v77[0]);
LABEL_19:
              v54 = sub_1837A9A94((v52 - a2) / a4, (v53 - a3) / a5, v51, v46, v47, v48, v49, v50);
              objc_msgSend_addObject_(v39, v55, v54, v56, v57, v58);
            }

            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v59, &v69, v78, 16, v60);
          }

          while (v43);
        }

        objc_msgSend_addObject_(v68, v61, v39, v62, v63, v64);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v73, v79, 16, v27);
    }

    while (v28);
  }

  return v68;
}

id sub_183898F58(void *a1, double a2, double a3, double a4, double a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = MEMORY[0x1E695DF70];
  v16 = objc_msgSend_count(v9, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_arrayWithCapacity_(v10, v17, v16, v18, v19, v20);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v9;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v40, 16, v24);
  if (v25)
  {
    v26 = *v37;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = sub_183898210(*(*(&v36 + 1) + 8 * i), a2, a3, a4, a5);
        objc_msgSend_addObject_(v21, v29, v28, v30, v31, v32, v36);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v33, &v36, v40, 16, v34);
    }

    while (v25);
  }

  return v21;
}

void sub_18389A924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  sub_183824E44(v57);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v61 - 216), 8);

  _Unwind_Resume(a1);
}

__n128 sub_18389AA68(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_18389AA78(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void *sub_18389AA88(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

void *sub_18389AAD0(void *result)
{
  if (result[8])
  {
    v1 = result + 6;
    v2 = result;
    result = result[7];
    v3 = *(v2[6] + 8);
    v4 = *result;
    *(v4 + 8) = v3;
    *v3 = v4;
    v2[8] = 0;
    if (result != v1)
    {
      do
      {
        v5 = result[1];
        operator delete(result);
        result = v5;
      }

      while (v5 != v1);
    }
  }

  return result;
}

__n128 sub_18389AB38(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_18389AB5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18389AB74(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  r2.origin.x = a2;
  r2.origin.y = a3;
  sub_1836973A4(*(a1[6] + 8) + 48, &r2);
  IsNull = CGRectIsNull(*(*(a1[7] + 8) + 48));
  origin = r2.origin;
  v8 = *(a1[7] + 8);
  if (IsNull)
  {
    *(v8 + 48) = r2.origin;
    *(v8 + 64) = 0;
    *(v8 + 72) = 0;
    v9 = *(a1[8] + 8);
    if (*(v9 + 24) == 0.0)
    {
      *(v9 + 24) = a4;
    }
  }

  else
  {
    y = r2.origin.y;
    v11 = 0;
    v12 = 0;
    *(*(a1[7] + 8) + 48) = CGRectUnion(*(v8 + 48), *&origin.x);
    *(*(a1[9] + 8) + 24) = a4;
    origin = r2.origin;
  }

  v13 = *(a1[10] + 8);
  v15 = v13[3];
  v14 = &v13[3];
  if (vaddvq_f64(vabdq_f64(origin, v15)) > 3.0)
  {
    *v14 = r2.origin;
    operator new();
  }
}

void sub_18389AEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18389B260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18389BF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

uint64_t *sub_18389C208(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x1865E5D30](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_18389C498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x18389C458);
  }

  __cxa_rethrow();
}

double sub_18389C548@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 0;
  *a2 = 0;
  do
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    if (v7 + 1 >= 0x17)
    {
      operator new();
    }

    v10 = 0;
    HIBYTE(v10) = v7 + 1;
    v9 = (a1 % 0xA) | 0x30;
    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(&v9 + 1, v8, v7);
    }

    *(&v9 + v7 + 1) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v9;
    *a2 = v9;
    *(a2 + 16) = v10;
    v5 = a1 >= 0xA;
    a1 /= 0xAuLL;
  }

  while (v5);
  return result;
}

void sub_18389C6A4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_18389C6C0@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 0;
  *a2 = 0;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  do
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    if (v7 + 1 >= 0x17)
    {
      operator new();
    }

    v11 = 0;
    HIBYTE(v11) = v7 + 1;
    v10 = (v3 % 0xA) | 0x30;
    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(&v10 + 1, v8, v7);
    }

    *(&v10 + v7 + 1) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v11;
    v5 = v3 > 9;
    v3 /= 0xAu;
  }

  while (v5);
  if (a1 < 0)
  {
    std::operator+<char>();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v11;
  }

  return result;
}

void sub_18389C860(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80) != 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18389C888(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 23);
  v7 = *a1;
  v6 = a1[1];
  do
  {
    if ((v5 & 0x80u) == 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = v7;
    }

    if ((v5 & 0x80u) == 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9 - v4;
    if (v9 <= v4)
    {
      v14 = -1;
      v15 = -1 - v4;
    }

    else
    {
      v11 = v8 + v4;
      v12 = v8 + v9;
      while (*v11 != 95)
      {
        ++v11;
        if (!--v10)
        {
          v11 = v12;
          break;
        }
      }

      v13 = (v11 - v8);
      if (v11 == v12)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13;
      }

      v15 = v14 - v4;
      if (v14 == v4)
      {
        goto LABEL_91;
      }
    }

    v16 = v3;
    if (v5 < 0)
    {
      if (v6 < v4)
      {
LABEL_105:
        sub_18368688C();
      }
    }

    else
    {
      v6 = v5;
      v7 = a1;
      if (v4 > v5)
      {
        goto LABEL_105;
      }
    }

    if (v6 - v4 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v6 - v4;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v46 = v17;
    if (v17)
    {
      memmove(__dst, v7 + v4, v17);
    }

    *(__dst + v17) = 0;
    v18 = v46;
    v19 = v46;
    v20 = __dst[0];
    if ((v46 & 0x80u) == 0)
    {
      v21 = __dst;
    }

    else
    {
      v21 = __dst[0];
    }

    if ((v46 & 0x80u) != 0)
    {
      v18 = __dst[1];
    }

    if (!v18)
    {
      LODWORD(v22) = 0;
      v3 = v16;
      goto LABEL_83;
    }

    v22 = *v21 == 45;
    v3 = v16;
    if (*v21 == 45)
    {
      if (v18 == 1)
      {
        LODWORD(v22) = 1;
LABEL_83:
        v23 = 0;
LABEL_84:
        if (v22)
        {
          v30 = -v23;
        }

        else
        {
          v30 = v23;
        }

        v32 = v3[1];
        v31 = v3[2];
        if (v32 < v31)
        {
          goto LABEL_88;
        }

LABEL_61:
        v33 = v3;
        v34 = *v3;
        v35 = v32 - *v3;
        v36 = (v35 >> 2) + 1;
        v44 = __dst[0];
        if (v36 >> 62)
        {
          sub_1836D58DC();
        }

        v37 = v31 - v34;
        if (v37 >> 1 > v36)
        {
          v36 = v37 >> 1;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v38 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          if (!(v38 >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        v40 = (4 * (v35 >> 2));
        *v40 = v30;
        v41 = v40 + 1;
        memcpy(0, v34, v35);
        *v33 = 0;
        v33[2] = 0;
        v3 = v33;
        if (v34)
        {
          operator delete(v34);
        }

        v20 = v44;
        v33[1] = v41;
        if (v19 < 0)
        {
          goto LABEL_89;
        }

        goto LABEL_90;
      }

      v39 = 2;
      if (v21[v22] != 48)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v39 = 1;
      if (v21[v22] != 48)
      {
        goto LABEL_82;
      }
    }

    if ((v21[v39] | 0x20) == 0x78)
    {
      v25 = 2;
      if (*v21 == 45)
      {
        v25 = 3;
      }

      if (v25 >= v18)
      {
        goto LABEL_83;
      }

      goto LABEL_42;
    }

LABEL_82:
    v25 = *v21 == 45;
    if (v22 >= v18)
    {
      goto LABEL_83;
    }

LABEL_42:
    v23 = 0;
    while (1)
    {
      v27 = v21[v25];
      if ((v27 - 48) <= 9)
      {
        v24 = (v27 - 48) | (16 * v23);
        ++v25;
        v26 = v24 < v23;
        if (v25 >= v18)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      if ((v27 - 97) > 5)
      {
        break;
      }

      v24 = v27 + 16 * v23 - 87;
      ++v25;
      v26 = v24 < v23;
      if (v25 >= v18)
      {
        goto LABEL_51;
      }

LABEL_44:
      v23 = v24;
      if (v26)
      {
        goto LABEL_51;
      }
    }

    if ((v27 - 65) > 5)
    {
      goto LABEL_84;
    }

    v24 = v27 + 16 * v23 - 55;
    ++v25;
    v26 = v24 < v23;
    if (v25 < v18)
    {
      goto LABEL_44;
    }

LABEL_51:
    if (*v21 == 45)
    {
      v28 = 0x80000000;
    }

    else
    {
      v28 = 0x7FFFFFFF;
    }

    if (v22)
    {
      v29 = -v24;
    }

    else
    {
      v29 = v24;
    }

    if (v26)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    v32 = v16[1];
    v31 = v16[2];
    if (v32 >= v31)
    {
      goto LABEL_61;
    }

LABEL_88:
    *v32 = v30;
    v3[1] = v32 + 1;
    if (v19 < 0)
    {
LABEL_89:
      operator delete(v20);
    }

LABEL_90:
    v5 = *(a1 + 23);
    v7 = *a1;
    v6 = a1[1];
LABEL_91:
    if ((v5 & 0x80u) == 0)
    {
      v42 = a1;
    }

    else
    {
      v42 = v7;
    }

    if ((v5 & 0x80u) == 0)
    {
      v43 = v5;
    }

    else
    {
      v43 = v6;
    }

    if (v43 <= v14)
    {
      break;
    }

    v4 = v14;
    while (*(v42 + v4) == 95)
    {
      if (v43 == ++v4)
      {
        return;
      }
    }
  }

  while (v4 != -1);
}

void sub_18389CCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
    v12 = *v9;
    if (*v9)
    {
LABEL_6:
      *(v9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v12 = *v9;
    if (*v9)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

double sub_18389CD10@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 0;
  *a2 = 0;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  do
  {
    if ((v3 & 0xF) >= 0xA)
    {
      v5 = (v3 & 0xF) + 87;
    }

    else
    {
      v5 = v3 & 0xF | 0x30;
    }

    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    if (v7 + 1 >= 0x17)
    {
      operator new();
    }

    v12 = 0;
    HIBYTE(v12) = v7 + 1;
    v11 = v5;
    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(&v11 + 1, v8, v7);
    }

    *(&v11 + v7 + 1) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    v4 = v3 > 0xF;
    v3 >>= 4;
  }

  while (v4);
  std::operator+<char>();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    result = *&v11;
    *a2 = v11;
    *(a2 + 16) = v12;
    if ((a1 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else
  {
    result = *&v11;
    *a2 = v11;
    *(a2 + 16) = v12;
    if ((a1 & 0x80000000) == 0)
    {
      return result;
    }
  }

  std::operator+<char>();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  return result;
}

void sub_18389CEF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18389CF20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v19[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 8) - *a1;
  if (a2 - 1 < (v6 >> 2) || (v3 = v6 >> 2, v6 >= 4))
  {
    sub_18389CD10(**a1, a3);
    if (v3 != 1)
    {
      v7 = 1;
      v8 = *(a3 + 23);
      do
      {
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(a3 + 8);
        }

        if (v8 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_183688FF0();
        }

        if (v8 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v18, 0, sizeof(v18));
        *(&v18.__r_.__value_.__s + 23) = v8 + 1;
        if (v8)
        {
          if (v9 >= 0)
          {
            v10 = a3;
          }

          else
          {
            v10 = *a3;
          }

          memmove(&v18, v10, v8);
        }

        *(&v18.__r_.__value_.__l.__data_ + v8) = 95;
        sub_18389CD10(*(*a1 + 4 * v7), __p);
        if ((v17 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if ((v17 & 0x80u) == 0)
        {
          v12 = v17;
        }

        else
        {
          v12 = __p[1];
        }

        v13 = std::string::append(&v18, v11, v12);
        v14 = v13->__r_.__value_.__r.__words[0];
        v19[0] = v13->__r_.__value_.__l.__size_;
        *(v19 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
        v8 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
        v13->__r_.__value_.__r.__words[0] = 0;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        if (v9 < 0)
        {
          operator delete(*a3);
        }

        v15 = v19[0];
        *a3 = v14;
        *(a3 + 8) = v15;
        *(a3 + 15) = *(v19 + 7);
        *(a3 + 23) = v8;
        if (v17 < 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_29:
            operator delete(v18.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_29;
        }

        ++v7;
      }

      while (v3 != v7);
    }
  }
}

void sub_18389D138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(*v21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_18389D1A4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 0;
  *a2 = 0;
  do
  {
    if ((a1 & 0xF) >= 0xA)
    {
      v5 = (a1 & 0xF) + 87;
    }

    else
    {
      v5 = a1 & 0xF | 0x30;
    }

    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    if (v7 + 1 >= 0x17)
    {
      operator new();
    }

    v11 = 0;
    HIBYTE(v11) = v7 + 1;
    v10 = v5;
    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(&v10 + 1, v8, v7);
    }

    *(&v10 + v7 + 1) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 16) = v11;
    v4 = a1 > 0xF;
    a1 >>= 4;
  }

  while (v4);
  std::operator+<char>();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  return result;
}

void sub_18389D32C(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80) != 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18389D354(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    sub_18389D5B4(a3, *a1);
    v6 = a2 - 1;
    if (a2 != 1)
    {
      v7 = a1 + 1;
      v8 = *(a3 + 23);
      do
      {
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(a3 + 8);
        }

        if (v8 + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_183688FF0();
        }

        if (v8 + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v18, 0, sizeof(v18));
        *(&v18.__r_.__value_.__s + 23) = v8 + 1;
        if (v8)
        {
          if (v9 >= 0)
          {
            v10 = a3;
          }

          else
          {
            v10 = *a3;
          }

          memmove(&v18, v10, v8);
        }

        *(&v18.__r_.__value_.__l.__data_ + v8) = 95;
        sub_18389D5B4(__p, *v7);
        if ((v17 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if ((v17 & 0x80u) == 0)
        {
          v12 = v17;
        }

        else
        {
          v12 = __p[1];
        }

        v13 = std::string::append(&v18, v11, v12);
        v14 = v13->__r_.__value_.__r.__words[0];
        v19[0] = v13->__r_.__value_.__l.__size_;
        *(v19 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
        v8 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
        v13->__r_.__value_.__r.__words[0] = 0;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        if (v9 < 0)
        {
          operator delete(*a3);
        }

        v15 = v19[0];
        *a3 = v14;
        *(a3 + 8) = v15;
        *(a3 + 15) = *(v19 + 7);
        *(a3 + 23) = v8;
        if (v17 < 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_28:
            operator delete(v18.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_28;
        }

        ++v7;
        --v6;
      }

      while (v6);
    }
  }
}

void sub_18389D548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(*v21);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_18389D5B4(uint64_t a1, unsigned __int16 a2)
{
  *(a1 + 23) = 0;
  *a1 = 0;
  do
  {
    if ((a2 & 0xFu) >= 0xA)
    {
      v5 = (a2 & 0xF) + 87;
    }

    else
    {
      v5 = a2 & 0xF | 0x30;
    }

    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_183688FF0();
    }

    if (v7 + 1 >= 0x17)
    {
      operator new();
    }

    v11 = 0;
    HIBYTE(v11) = v7 + 1;
    v10 = v5;
    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      memmove(&v10 + 1, v8, v7);
    }

    *(&v10 + v7 + 1) = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v10;
    *(a1 + 16) = v11;
    v4 = a2;
    a2 >>= 4;
  }

  while (v4 > 0xF);
  std::operator+<char>();
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  return result;
}

void sub_18389D73C(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80) != 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_18389E0DC(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[3] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v9 = qword_1EA84D0B8;
    v28 = qword_1EA84D0B8;
    if (!qword_1EA84D0B8)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = sub_18389EB34;
      v23 = &unk_1E6DDD2E0;
      v24 = &v25;
      sub_18389EB34(&v20);
      v9 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = *v9;
    v30[0] = a4;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v11 = qword_1EA84D0C0;
    v28 = qword_1EA84D0C0;
    v29[0] = v10;
    if (!qword_1EA84D0C0)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = sub_18389EC7C;
      v23 = &unk_1E6DDD2E0;
      v24 = &v25;
      sub_18389EC7C(&v20);
      v11 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v11)
    {
      goto LABEL_13;
    }

    v29[1] = *v11;
    v30[1] = a3;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v12 = qword_1EA84D0C8;
    v28 = qword_1EA84D0C8;
    if (!qword_1EA84D0C8)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = sub_18389EDC4;
      v23 = &unk_1E6DDD2E0;
      v24 = &v25;
      sub_18389EDC4(&v20);
      v12 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v12)
    {
LABEL_13:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v29[2] = *v12;
    v30[2] = a5;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v30, v29, 3, v14);
    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    return objc_msgSend_initWithString_attributes_(v16, v17, a2, v15, v18, v19);
  }

  return result;
}

void sub_18389E394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18389E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18389E3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_18389E458(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "CTFontCreateWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D088 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_18389E5A0()
{
  result = _sl_dlopen();
  qword_1EA84D090 = result;
  return result;
}

void *sub_18389E614(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "CTParagraphStyleCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D098 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18389E75C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "CTFramesetterCreateWithAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D0A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18389E8A4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "CTFramesetterCreateFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D0A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18389E9EC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "CTFrameDraw");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EA84D0B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18389EB34(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D0B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18389EC7C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "kCTForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D0C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18389EDC4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EA84D090)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_18389E5A0;
    v6[4] = &unk_1E6DDC0E0;
    v6[5] = v6;
    v7 = xmmword_1E6DDF5B0;
    v8 = 0;
    qword_1EA84D090 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EA84D090;
    if (qword_1EA84D090)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EA84D090;
LABEL_5:
  result = dlsym(v2, "kCTParagraphStyleAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA84D0C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18389F19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHPolygon;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_18389F66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_18389F76C(uint64_t result, double a2, double a3, double a4, double a5)
{
  v6 = *(result + 40);
  v5 = *(result + 48);
  v8 = *(result + 56);
  v7 = *(result + 64);
  v9 = v8 - v6;
  v10 = v7 - v5;
  v11 = (v10 * v10) + (v9 * v9);
  if (v11 > 0.0)
  {
    v9 = v9 / v11;
    v10 = v10 / v11;
  }

  v12 = a4 - a2;
  v13 = a5 - a3;
  v14 = (v13 * v13) + (v12 * v12);
  if (v14 > 0.0)
  {
    v12 = v12 / v14;
    v13 = v13 / v14;
  }

  v15 = v9;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  v19 = v15 * v13 - v17 * v16;
  if (v19 != 0.0)
  {
    v20 = (v17 * (v5 - a3) - (v6 - a2) * v18) / v19;
    v21 = v20;
    v17 = v6 + v20 * v15;
    v15 = v5 + v21 * v16;
  }

  if (v8 >= v6)
  {
    v22 = *(result + 40);
  }

  else
  {
    v22 = *(result + 56);
  }

  v23 = v22 + -0.00100000005;
  if (v6 >= v8)
  {
    v8 = *(result + 40);
  }

  v24 = v8 + 0.00100000005;
  if (a4 >= a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = a4;
  }

  v26 = v25 + -0.00100000005;
  if (v17 >= v23 && v17 <= v24 && v17 >= v26)
  {
    if (a2 < a4)
    {
      a2 = a4;
    }

    v29 = a2 + 0.00100000005;
    if (v7 >= v5)
    {
      v30 = *(result + 48);
    }

    else
    {
      v30 = *(result + 64);
    }

    v31 = v30 + -0.00100000005;
    if (v17 <= v29 && v15 >= v31)
    {
      v33 = v5 >= v7 ? *(result + 48) : *(result + 64);
      v34 = v33 + 0.00100000005;
      v35 = a5 >= a3 ? a3 : a5;
      v36 = v35 + -0.00100000005;
      if (v15 <= v34 && v15 >= v36)
      {
        if (a3 >= a5)
        {
          v38 = a3;
        }

        else
        {
          v38 = a5;
        }

        if (v15 <= v38 + 0.00100000005)
        {
          ++*(*(*(result + 32) + 8) + 24);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18389F9E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18389F9F8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(*(*(a1 + 32) + 8) + 40);
  objc_opt_self();
  v15 = objc_msgSend_vertexCount(v9, v10, v11, v12, v13, v14);
  v21 = malloc_type_calloc(v15, 0x10uLL, 0x1000040451B5BE8uLL);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = a4 - a2;
  v26 = a5 - a3;
  v27 = -(a5 - a3);
  v28 = v25;
  v29 = v26;
  v30 = (v29 * v29) + (v28 * v28);
  if (v30 > 0.0)
  {
    v28 = v28 / v30;
    v29 = v29 / v30;
  }

  v31 = v28;
  v32 = v29;
LABEL_4:
  v33 = 16 * v22;
  while (v22 < objc_msgSend_vertexCount(v9, v16, v17, v18, v19, v20))
  {
    v39 = objc_msgSend_vertexCount(v9, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_vertices(v9, v40, v41, v42, v43, v44);
    v46 = *(v45 + v33);
    v47 = *(v45 + v33 + 8);
    v53 = objc_msgSend_vertices(v9, v48, v49, v50, v51, v52);
    v54 = *(v53 + 16 * (++v22 % v39));
    if (v24 + 4 > v15)
    {
      v99 = *(v53 + 16 * (v22 % v39));
      v15 += 4;
      v21 = malloc_type_realloc(v21, 16 * v15, 0x1000040451B5BE8uLL);
      v54 = v99;
    }

    v55 = (v46 - a2) * v27 + v25 * (v47 - a3);
    v56 = (*&v54 - a2) * v27 + v25 * (*(&v54 + 1) - a3);
    if (v55 < 0.0 && v56 < 0.0)
    {
      *&v21[16 * v24] = v54;
      ++v23;
      ++v24;
      goto LABEL_4;
    }

    if (v55 >= 0.0 && v56 < 0.0)
    {
      v66 = *&v54 - v46;
      v67 = *(&v54 + 1) - v47;
      v68 = (v67 * v67) + (v66 * v66);
      if (v68 > 0.0)
      {
        v66 = v66 / v68;
        v67 = v67 / v68;
      }

      v69 = v66;
      v70 = v67;
      v71 = v31 * v70 - v69 * v32;
      if (v71 != 0.0)
      {
        v72 = (v69 * (a3 - v47) - (a2 - v46) * v70) / v71;
        v73 = v72;
        v96 = a3 + v73 * v32;
        v97 = a2 + v73 * v31;
      }

      v74 = &v21[16 * v24];
      *v74 = v97;
      v74[1] = v96;
      *(v74 + 1) = v54;
      ++v23;
      v24 += 2;
      goto LABEL_4;
    }

    v33 += 16;
    if (v55 < 0.0 && v56 >= 0.0)
    {
      v57 = *&v54 - v46;
      v58 = *(&v54 + 1) - v47;
      v59 = (v58 * v58) + (v57 * v57);
      if (v59 > 0.0)
      {
        v57 = v57 / v59;
        v58 = v58 / v59;
      }

      v60 = v57;
      v61 = v58;
      v62 = v31 * v61 - v60 * v32;
      if (v62 != 0.0)
      {
        v63 = (v60 * (a3 - v47) - (a2 - v46) * v61) / v62;
        v64 = v63;
        v94 = a3 + v64 * v32;
        v95 = a2 + v64 * v31;
      }

      v65 = &v21[16 * v24];
      *v65 = v95;
      v65[1] = v94;
      ++v24;
      goto LABEL_4;
    }
  }

  v75 = malloc_type_calloc(v24, 0x10uLL, 0x1000040451B5BE8uLL);
  v81 = v75;
  if (v24 == v23)
  {
    v82 = objc_msgSend_vertices(v9, v76, v77, v78, v79, v80);
    memcpy(v81, v82, 16 * v23);
  }

  else if (v24 >= 1)
  {
    v83 = v21;
    v84 = v75;
    v85 = v24;
    do
    {
      v86 = *v83++;
      *v84++ = v86;
      --v85;
    }

    while (v85);
  }

  free(v21);

  v87 = [CHPolygon alloc];
  v91 = objc_msgSend_initWithVertices_vertexCount_(v87, v88, v81, v24, v89, v90);
  v92 = *(*(a1 + 32) + 8);
  v93 = *(v92 + 40);
  *(v92 + 40) = v91;
}

id sub_18389FE44(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E695DF70];
  v8 = objc_msgSend_count(v1, v3, v4, v5, v6, v7);
  v18 = objc_msgSend_arrayWithCapacity_(v2, v9, v8, v10, v11, v12);
  for (i = 0; i < objc_msgSend_count(v1, v13, v14, v15, v16, v17); ++i)
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(v1, v24, i, v25, v26, v27);
    if (objc_msgSend_count(v18, v29, v30, v31, v32, v33))
    {
      v39 = objc_msgSend_lastObject(v18, v34, v35, v36, v37, v38);
      isNotDef = objc_msgSend_isNotDef(v39, v40, v41, v42, v43, v44);
    }

    else
    {
      isNotDef = 0;
    }

    if ((objc_msgSend_isNotDef(v28, v34, v35, v36, v37, v38) & isNotDef & 1) == 0)
    {
      if (objc_msgSend_count(v1, v46, v47, v48, v49, v50) < 2)
      {
        goto LABEL_3;
      }

      v52 = objc_msgSend_chunkValueForSynthesis(v28, v20, v51, v21, v22, v23);
      v58 = objc_msgSend_countCodepoints(v52, v53, v54, v55, v56, v57);
      if (i)
      {
        v64 = isNotDef;
      }

      else
      {
        v64 = 1;
      }

      if (v58 != 1 || !v64)
      {

LABEL_3:
        objc_msgSend_addObject_(v18, v20, v28, v21, v22, v23);
        goto LABEL_4;
      }

      if (i + 1 == objc_msgSend_count(v1, v59, v60, v61, v62, v63))
      {
      }

      else
      {
        v69 = objc_msgSend_objectAtIndexedSubscript_(v1, v65, i + 1, v66, v67, v68);
        v75 = objc_msgSend_isNotDef(v69, v70, v71, v72, v73, v74);

        if ((v75 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_4:
  }

  return v18;
}

void sub_1838A1A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_18369D8F8(va);

  _Unwind_Resume(a1);
}

void sub_1838A22C8(_Unwind_Exception *a1)
{
  MEMORY[0x1865E5EC0](v2, 0xA1C40FD1947DBLL);

  _Unwind_Resume(a1);
}

void sub_1838A266C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_ch_latinVietCharacterString(MEMORY[0x1E696AEC0], v7, v8, v9, v10, v11);
  v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v12, v13, @"①②③④⑤⑥⑦⑧⑨", &stru_1EF1C0318, v14, v15);

  v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v16, v17, @"§", &stru_1EF1C0318, v18, v19);

  v26 = objc_msgSend_length(v20, v21, v22, v23, v24, v25);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1838A27DC;
  v32[3] = &unk_1E6DDD940;
  v27 = v6;
  v33 = v27;
  objc_msgSend_enumerateCodepointsInRange_usingBlock_(v20, v28, 0, v26, v32, v29);
  v30 = qword_1EA84D0D8;
  qword_1EA84D0D8 = v27;
  v31 = v27;
}

void sub_1838A27DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1837A4260(a2, a2, a3, a4, a5, a6);
  objc_msgSend_addObject_(*(a1 + 32), v7, v11, v8, v9, v10);
}

void *sub_1838A290C(void *result, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void sub_1838A3050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_18369D8F8(va1);
  std::__shared_weak_count::~__shared_weak_count(v7);
  operator delete(v9);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_1838A3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_18369D8F8(va);
  _Unwind_Resume(a1);
}

void sub_1838A308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v15 = *v11;
  if (*v11)
  {
    *(v13 + 48) = v15;
    operator delete(v15);
  }

  sub_1836EC858(va);
  sub_18368A374(a5, *v12);
  sub_18368D56C(a2, *v10);
  sub_18368D56C(a7, *(a6 + 32));
  std::__shared_weak_count::~__shared_weak_count(a6);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1838A3328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_18369D8F8(&a9);
  sub_18369D8F8(&a11);
  sub_18369D8F8(v11);
  _Unwind_Resume(a1);
}

void sub_1838A3360(void *a1, __int128 *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
LABEL_3:
    a1[2] = v5;
    return;
  }

  v6 = a1[1];
  v7 = (v4 - v6) >> 4;
  if ((v7 + 1) >> 60)
  {
    sub_18368964C();
  }

  v8 = v3 - v6;
  v9 = v8 >> 3;
  if (v8 >> 3 <= (v7 + 1))
  {
    v9 = v7 + 1;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    sub_183688F00();
  }

  v11 = (16 * v7);
  v12 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = a1[1];
  v14 = a1[2] - v13;
  v15 = v11 - v14;
  *v11 = v12;
  v5 = v11 + 1;
  memcpy(v15, v13, v14);
  a1[1] = v15;
  a1[2] = v5;
  a1[3] = 0;
  if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  a1[2] = v5;
}

void sub_1838A3654(_Unwind_Exception *a1)
{
  MEMORY[0x1865E5EC0](v2, 0xA1C40FD1947DBLL);

  _Unwind_Resume(a1);
}

void sub_1838A3C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_18369D8F8(&a9);
  sub_18369D8F8(&a11);
  sub_18369D8F8(v11);
  _Unwind_Resume(a1);
}

void sub_1838A3E24(_Unwind_Exception *a1)
{
  MEMORY[0x1865E5EC0](v2, 0xA1C40FD1947DBLL);

  _Unwind_Resume(a1);
}

void sub_1838A43EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_18369D8F8(&a9);
  sub_18369D8F8(&a11);
  sub_18369D8F8(v11);
  _Unwind_Resume(a1);
}

void sub_1838A4968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_18369D8F8(&a11);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  sub_18369D8F8(&a9);
  _Unwind_Resume(a1);
}

void sub_1838A5DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_18369D8F8(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1838A5EEC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1838A6AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_18369D8F8(&a23);

  sub_1837D6830(&a17);
  sub_183797280(&a27);

  _Unwind_Resume(a1);
}

void sub_1838A75CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_18369D8F8(&a18);

  sub_1837D6830(&a21);
  sub_183797280(&a31);

  _Unwind_Resume(a1);
}

void sub_1838A87C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v16 = va_arg(va1, void *);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  sub_1837D6830(va);
  sub_183797280(va1);

  _Unwind_Resume(a1);
}

void sub_1838A8F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1837D5604(va);
  _Unwind_Resume(a1);
}

void sub_1838AA1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1837D6830(&a14);
  sub_1837D6830(&a25);
  sub_1838AA324(&a29);
  sub_1838AB298(&a32);
  sub_1836CFA48(&a43);

  _Unwind_Resume(a1);
}

void ***sub_1838AA324(void ***a1)
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
        v7 = *(v5 - 4);
        v5 -= 4;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 3);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {

              v10 = *(v8 - 5);
              v8 -= 5;
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 3) = v6;
          operator delete(v9);
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

void sub_1838AA650(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1838AA6F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_ch_latinVietCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4, a5, a6);
  v7 = qword_1EA84D0E0;
  qword_1EA84D0E0 = v6;
}

void sub_1838AA7E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AD48], a2, a3, a4, a5, a6);
  v12 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v7, v8, v9, v10, v11);
  objc_msgSend_formUnionWithCharacterSet_(v39, v13, v12, v14, v15, v16);

  objc_msgSend_invert(v39, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_latinVariantCharacterSet(*(a1 + 32), v22, v23, v24, v25, v26);
  objc_msgSend_formIntersectionWithCharacterSet_(v39, v28, v27, v29, v30, v31);

  v37 = objc_msgSend_copy(v39, v32, v33, v34, v35, v36);
  v38 = qword_1EA84D0F0;
  qword_1EA84D0F0 = v37;
}

void sub_1838AAAD8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1838AAB74(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3 != 1)
  {
    if (a3 == 4)
    {
      v17 = objc_msgSend_koreanRefineUnsupportedCharacterSet(*(a1 + 32), v5, v6, v7, v8, v9);
      v21 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v10, v18, v17, 1, v19, v20);

      if (!v21)
      {
LABEL_5:

        return 1;
      }
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_5;
      }

      v11 = objc_msgSend_latinVariantCharacterSet(*(a1 + 32), v5, v6, v7, v8, v9);
      v15 = objc_msgSend_ch_occurrencesOfCharactersInSet_maxCount_(v10, v12, v11, 1, v13, v14);

      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  return 0;
}

void sub_1838AADD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BEC40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void **sub_1838AAE34(void **a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1838AAED4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BEC90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838AAF70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BECE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838AAFEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BED30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838AB088(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BED80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838AB104(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BEDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838AB1A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BEE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void sub_1838AB23C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF1BEE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865E5EC0);
}

void ***sub_1838AB298(void ***a1)
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
        v8 = *(v5 - 4);
        v5 -= 4;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 3);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 4);
              if (v10)
              {
                *(v9 - 3) = v10;
                operator delete(v10);
              }

              v9 -= 56;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 3) = v7;
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

void sub_1838AB360(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    sub_18368964C();
  }
}

void sub_1838AB504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1838AB5CC(va);
  _Unwind_Resume(a1);
}

void sub_1838AB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v7 = *v5;
  if (*v5)
  {
    *(v4 + 32) = v7;
    operator delete(v7);
  }

  sub_1838AB558(va1);
  *(v3 + 8) = a3;
  sub_1838AB5CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1838AB558(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 56)
    {
      v7 = *(v4 - 32);
      if (v7)
      {
        *(v4 - 24) = v7;
        operator delete(v7);
      }
    }
  }

  return a1;
}

void ***sub_1838AB5CC(void ***result)
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
          v6 = *(v4 - 4);
          if (v6)
          {
            *(v4 - 3) = v6;
            operator delete(v6);
          }

          v4 -= 56;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_1838AB668(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 4);
      v4 -= 4;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 3);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 4);
            if (v9)
            {
              *(v8 - 3) = v9;
              operator delete(v9);
            }

            v8 -= 56;
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v3 - 3) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1838AB72C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *v2;
      do
      {
        v8 = *(v6 - 4);
        v6 -= 4;
        v7 = v8;
        if (v8)
        {
          v9 = *(v4 - 3);
          v10 = v7;
          if (v9 != v7)
          {
            do
            {

              v11 = *(v9 - 5);
              v9 -= 5;
            }

            while (v9 != v7);
            v10 = *v6;
          }

          *(v4 - 3) = v7;
          operator delete(v10);
        }

        v4 = v6;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t sub_1838AB7D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v6 = *(v4 - 4);
      v4 -= 4;
      v5 = v6;
      *(a1 + 16) = v4;
      if (v6)
      {
        v7 = *(v3 - 3);
        v8 = v5;
        if (v7 != v5)
        {
          do
          {

            v9 = *(v7 - 5);
            v7 -= 5;
          }

          while (v7 != v5);
          v8 = *v4;
        }

        *(v3 - 3) = v5;
        operator delete(v8);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ****sub_1838AB878(void ****a1)
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
          v8 = *(v6 - 4);
          v6 -= 4;
          v7 = v8;
          if (v8)
          {
            v9 = *(v4 - 3);
            v10 = v7;
            if (v9 != v7)
            {
              do
              {

                v11 = *(v9 - 5);
                v9 -= 5;
              }

              while (v9 != v7);
              v10 = *v6;
            }

            *(v4 - 3) = v7;
            operator delete(v10);
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

void sub_1838AB93C(void *a1)
{
  if (a1)
  {
    sub_1838AB93C(*a1);
    sub_1838AB93C(a1[1]);
    v2 = a1[8];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = a1[6];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      v4 = a1;
    }

    else
    {
      v4 = a1;
    }

    operator delete(v4);
  }
}

void sub_1838ABA38(void *a1)
{
  if (a1)
  {
    sub_1838ABA38(*a1);
    sub_1838ABA38(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t sub_1838AFBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_encodedStrokeIdentifier(a2, a2, a3, a4, a5, a6);
  v12 = objc_msgSend_containsObject_(v6, v8, v7, v9, v10, v11);

  return v12;
}

id sub_1838AFC54(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v358[1] = *MEMORY[0x1E69E9840];
  v347 = a2;
  v340 = a3;
  v345 = a4;
  v343 = a5;
  v336 = a6;
  v346 = a7;
  v344 = a8;
  v338 = a1;
  if (a1)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC88;
    spid = os_signpost_id_generate(v15);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v16 = qword_1EA84DC88;
    v17 = v16;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHStrokeGroupingModelPostProcessing", "", &buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v18 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN CHStrokeGroupingModelPostProcessing", &buf, 2u);
    }

    v337 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
    v29 = objc_msgSend_count(v347, v24, v25, v26, v27, v28);
    v34 = v29;
    if ((v29 & 0x3F) != 0)
    {
      v35 = ((v29 >> 6) + 1);
    }

    else
    {
      v35 = (v29 >> 6);
    }

    buf = 0u;
    v357 = 0u;
    if (v35)
    {
      sub_18370D4C0(&buf, v35);
    }

    *(&v357 + 1) = v34;
    if (v340)
    {
      for (i = 0; objc_msgSend_count(v347, v35, v30, v31, v32, v33) > i; ++i)
      {
        v42 = objc_msgSend_objectAtIndexedSubscript_(v347, v37, i, v39, v40, v41);
        v48 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v345, v43, v44, v45, v46, v47);
        v54 = objc_msgSend_encodedStrokeIdentifier(v42, v49, v50, v51, v52, v53);
        v59 = objc_msgSend_objectForKeyedSubscript_(v48, v55, v54, v56, v57, v58);
        v65 = objc_msgSend_integerValue(v59, v60, v61, v62, v63, v64);

        if (objc_msgSend_isEqualToString_(v340, v66, @"text", v67, v68, v69) && (objc_msgSend_isStrokeClassificationText_(CHStrokeUtilities, v70, v65, v71, v72, v73) & 1) != 0 || objc_msgSend_isEqualToString_(v340, v70, @"math", v71, v72, v73) && (objc_msgSend_isStrokeClassificationMath_(CHStrokeUtilities, v70, v65, v71, v72, v73) & 1) != 0 || objc_msgSend_isEqualToString_(v340, v70, @"text-math", v71, v72, v73) && (objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v70, v65, v71, v72, v73) & 1) != 0 || objc_msgSend_isEqualToString_(v340, v70, @"non-text", v71, v72, v73) && (objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v74, v65, v75, v76, v77) & 1) == 0)
        {
          objc_msgSend_addObject_(v337, v70, v42, v71, v72, v73);
          *(buf + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << i;
        }
      }
    }

    else
    {
      for (j = 0; objc_msgSend_count(v347, v35, v30, v31, v32, v33) > j; ++j)
      {
        v79 = objc_msgSend_objectAtIndexedSubscript_(v347, v37, j, v39, v40, v41);
        v85 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v345, v80, v81, v82, v83, v84);
        v91 = objc_msgSend_encodedStrokeIdentifier(v79, v86, v87, v88, v89, v90);
        v96 = objc_msgSend_objectForKeyedSubscript_(v85, v92, v91, v93, v94, v95);
        objc_msgSend_integerValue(v96, v97, v98, v99, v100, v101);

        objc_msgSend_addObject_(v337, v102, v79, v103, v104, v105);
        *(buf + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << j;
      }
    }

    v353[0] = objc_msgSend_sparseAdjacencyMatrix(v336, v37, v38, v39, v40, v41);
    v353[1] = &buf;
    v354 = 1061158912;
    v355 = 1;
    sub_1838B26FC(&__p, v353);
    v111 = 0;
    v351[0] = 0;
    v351[1] = 0;
    v350 = v351;
    v112 = __p;
    while (objc_msgSend_count(v347, v106, v107, v108, v109, v110) > v111)
    {
      v113 = v351[0];
      if (!v351[0])
      {
        goto LABEL_43;
      }

      v114 = v112[v111];
      v115 = v351;
      do
      {
        if (*(v113 + 8) >= v114)
        {
          v115 = v113;
        }

        v113 = v113[*(v113 + 8) < v114];
      }

      while (v113);
      if (v115 == v351 || v114 < *(v115 + 8))
      {
LABEL_43:
        operator new();
      }

      v117 = v115[6];
      v116 = v115[7];
      if (v117 >= v116)
      {
        v118 = v115[5];
        v119 = v117 - v118;
        v120 = (v117 - v118) >> 2;
        v121 = v120 + 1;
        if ((v120 + 1) >> 62)
        {
          sub_18368964C();
        }

        v122 = v116 - v118;
        if (v122 >> 1 > v121)
        {
          v121 = v122 >> 1;
        }

        if (v122 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v123 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v123 = v121;
        }

        if (v123)
        {
          if (!(v123 >> 62))
          {
            operator new();
          }

          sub_183688F00();
        }

        v124 = (v117 - v118) >> 2;
        v125 = (4 * v120);
        v126 = (4 * v120 - 4 * v124);
        *v125 = v111;
        v127 = v125 + 1;
        memcpy(v126, v118, v119);
        v115[5] = v126;
        v115[6] = v127;
        v115[7] = 0;
        if (v118)
        {
          operator delete(v118);
        }

        v115[6] = v127;
        ++v111;
      }

      else
      {
        *v117 = v111;
        v115[6] = v117 + 4;
        ++v111;
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v128 = qword_1EA84DC88;
    v129 = v128;
    if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v128))
    {
      *v349 = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v129, OS_SIGNPOST_INTERVAL_END, spid, "CHStrokeGroupingModelPostProcessing", "", v349, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v130 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      *v349 = 0;
      _os_log_impl(&dword_18366B000, v130, OS_LOG_TYPE_DEFAULT, "END CHStrokeGroupingModelPostProcessing", v349, 2u);
    }

    spida = objc_msgSend_set(MEMORY[0x1E695DFA8], v131, v132, v133, v134, v135);
    v141 = v350;
    if (v350 != v351)
    {
      do
      {
        v142 = *(v141 + 8);
        if (v142 < 0)
        {
          if (v142 == -1)
          {
            v246 = v141[5];
            for (k = v141[6]; v246 != k; ++v246)
            {
              v247 = objc_msgSend_objectAtIndexedSubscript_(v347, v136, *v246, v138, v139, v140);
              v253 = objc_msgSend_encodedStrokeIdentifier(v247, v248, v249, v250, v251, v252);
              v259 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v345, v254, v255, v256, v257, v258);
              v264 = objc_msgSend_objectForKeyedSubscript_(v259, v260, v253, v261, v262, v263);
              v270 = objc_msgSend_integerValue(v264, v265, v266, v267, v268, v269);

              v276 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v345, v271, v272, v273, v274, v275);
              v281 = objc_msgSend_objectForKeyedSubscript_(v276, v277, v253, v278, v279, v280);
              v287 = objc_msgSend_integerValue(v281, v282, v283, v284, v285, v286);

              v292 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v288, v253, v289, v290, v291);
              v293 = v343;
              v298 = objc_msgSend_objectForKeyedSubscript_(v344, v294, v292, v295, v296, v297);
              if (v298 && sub_1838B2234(v292, v293, 0) != v270)
              {

                v298 = 0;
              }

              if (!v298)
              {
                v303 = objc_msgSend_objectForKeyedSubscript_(v346, v299, v253, v300, v301, v302);
                objc_msgSend_ch_CGRectValue(v303, v304, v305, v306, v307, v308);
                v310 = v309;
                v312 = v311;
                v314 = v313;
                v316 = v315;

                v358[0] = v247;
                v320 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v317, v358, 1, v318, v319);
                v325 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v321, v253, v322, v323, v324);
                v331 = objc_msgSend_substrokesByStrokeIdentifier(v345, v326, v327, v328, v329, v330);
                v298 = sub_1838B1FFC(v338, v320, v325, v270, v287, v346, v331, v310, v312, v314, v316, v310, v312);
              }

              objc_msgSend_addObject_(spida, v299, v298, v300, v301, v302);
            }
          }
        }

        else
        {
          v143 = objc_msgSend_array(MEMORY[0x1E695DF70], v136, v137, v138, v139, v140);
          v153 = objc_msgSend_set(MEMORY[0x1E695DFA8], v144, v145, v146, v147, v148);
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
          v158 = v141[5];
          for (m = v141[6]; v158 != m; ++v158)
          {
            v160 = objc_msgSend_objectAtIndexedSubscript_(v347, v149, *v158, v150, v151, v152);
            v166 = objc_msgSend_encodedStrokeIdentifier(v160, v161, v162, v163, v164, v165);
            objc_msgSend_addObject_(v143, v167, v160, v168, v169, v170);
            v176 = objc_msgSend_encodedStrokeIdentifier(v160, v171, v172, v173, v174, v175);
            objc_msgSend_addObject_(v153, v177, v176, v178, v179, v180);

            v185 = objc_msgSend_objectForKeyedSubscript_(v346, v181, v166, v182, v183, v184);
            objc_msgSend_ch_CGRectValue(v185, v186, v187, v188, v189, v190);
            v192 = v191;
            v194 = v193;
            v196 = v195;
            v198 = v197;

            v360.origin.x = x;
            v360.origin.y = y;
            v360.size.width = width;
            v360.size.height = height;
            v362.origin.x = v192;
            v362.origin.y = v194;
            v362.size.width = v196;
            v362.size.height = v198;
            v361 = CGRectUnion(v360, v362);
            x = v361.origin.x;
            y = v361.origin.y;
            width = v361.size.width;
            height = v361.size.height;
          }

          v199 = sub_1838B2234(v153, v345, v340);
          v200 = sub_1838B2530(v153, v345);
          v201 = v153;
          v202 = v344;
          v203 = v343;
          v208 = objc_msgSend_objectForKeyedSubscript_(v202, v204, v201, v205, v206, v207);
          if (v208 && sub_1838B2234(v201, v203, 0) != v199)
          {

            v208 = 0;
          }

          if (!v208)
          {
            v348[0] = MEMORY[0x1E69E9820];
            v348[1] = 3221225472;
            v348[2] = sub_1838B2C9C;
            v348[3] = &unk_1E6DDD268;
            v348[4] = v338;
            v213 = objc_msgSend_sortedArrayUsingComparator_(v143, v209, v348, v210, v211, v212);
            v219 = objc_msgSend_firstObject(v213, v214, v215, v216, v217, v218);
            v225 = objc_msgSend_encodedStrokeIdentifier(v219, v220, v221, v222, v223, v224);
            v230 = objc_msgSend_objectForKeyedSubscript_(v346, v226, v225, v227, v228, v229);
            objc_msgSend_ch_CGRectValue(v230, v231, v232, v233, v234, v235);
            v237 = v236;
            v239 = v238;

            v245 = objc_msgSend_substrokesByStrokeIdentifier(v345, v240, v241, v242, v243, v244);
            v208 = sub_1838B1FFC(v338, v213, v201, v199, v200, v346, v245, x, y, width, height, v237, v239);
          }

          objc_msgSend_addObject_(spida, v209, v208, v210, v211, v212);
        }

        v332 = v141[1];
        if (v332)
        {
          do
          {
            v333 = v332;
            v332 = *v332;
          }

          while (v332);
        }

        else
        {
          do
          {
            v333 = v141[2];
            v334 = *v333 == v141;
            v141 = v333;
          }

          while (!v334);
        }

        v141 = v333;
      }

      while (v333 != v351);
    }

    sub_18368A374(&v350, v351[0]);
    if (__p)
    {
      operator delete(__p);
    }

    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }
  }

  else
  {
    spida = 0;
  }

  return spida;
}

void sub_1838B09D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p)
{
  v36 = *(v34 - 208);
  if (v36)
  {
    *(v34 - 200) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

id sub_1838B1FFC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v25 = a2;
  v26 = a3;
  v27 = a6;
  v28 = a7;
  v34 = objc_msgSend_firstObject(v25, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_encodedStrokeIdentifier(v34, v35, v36, v37, v38, v39);

  v46 = objc_msgSend_lastObject(v25, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_encodedStrokeIdentifier(v46, v47, v48, v49, v50, v51);

  if (a4 == 1)
  {
    v57 = 16;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v57 = 24;
LABEL_5:
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_strokeGroupFromStrokes_ancestorIdentifier_strokeBoundsPerStrokeIdentifier_substrokesByStrokeIdentifier_scriptClassification_(*(a1 + v57), v53, v25, 0x7FFFFFFFFFFFFFFFLL, v27, v28, a5);
    goto LABEL_9;
  }

  if (objc_msgSend_isStrokeClassificationMath_(CHStrokeUtilities, v53, a4, v54, v55, v56))
  {
    v59 = [CHStrokeGroup alloc];
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v59, v60, v26, v40, v52, 3, @"CHMathStrokeGroupingStrategy", a8, a9, a10, a11, 1.0, a12, a13);
  }

  else
  {
    v61 = [CHStrokeGroup alloc];
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v61, v62, v26, v40, v52, 5, @"groupingManagerNonText", a8, a9, a10, a11, 1.0, a12, a13);
  }

LABEL_9:
  v63 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;

  return v63;
}

uint64_t sub_1838B2234(void *a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v63 = a1;
  v5 = a2;
  v64 = a3;
  if (objc_msgSend_isEqualToString_(v64, v6, @"math", v7, v8, v9) & 1) != 0 || (objc_msgSend_isEqualToString_(v64, v10, @"non-text", v11, v12, v13))
  {
    v65 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = v63;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v66, v70, 16, v19);
    if (v25)
    {
      v65 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v26 = *v67;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v17);
          }

          v28 = *(*(&v66 + 1) + 8 * i);
          v29 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v5, v20, v21, v22, v23, v24);
          v34 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v28, v31, v32, v33);

          if (v34)
          {
            v40 = objc_msgSend_integerValue(v34, v35, v36, v37, v38, v39);
            if (v40 == 2)
            {
              ++v15;
            }

            else if (v40 == 1)
            {
              ++v16;
            }

            else if (objc_msgSend_isStrokeClassificationMath_(CHStrokeUtilities, v41, v40, v42, v43, v44))
            {
              ++v65;
            }

            else
            {
              ++v14;
            }
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v66, v70, 16, v24);
      }

      while (v25);
    }

    else
    {
      v65 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }
  }

  if (objc_msgSend_isEqualToString_(v64, v10, @"text", v11, v12, v13))
  {
    if (v16 >= v15)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }
  }

  else if (objc_msgSend_isEqualToString_(v64, v45, @"math", v46, v47, v48))
  {
    v49 = 3;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v64, v50, @"non-text", v51, v52, v53);
    v55 = v16 + v15;
    if (v65 <= v14)
    {
      v56 = v14;
    }

    else
    {
      v56 = v65;
    }

    if (v55 <= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v16 + v15;
    }

    v58 = 1;
    if (v16 < v15)
    {
      v58 = 2;
    }

    v59 = v57 == v65;
    v60 = 5;
    if (v59)
    {
      v60 = 3;
    }

    if (v55 >= v56)
    {
      v61 = v58;
    }

    else
    {
      v61 = v60;
    }

    if (isEqualToString)
    {
      v49 = 5;
    }

    else
    {
      v49 = v61;
    }
  }

  return v49;
}

uint64_t sub_1838B2530(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v8 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v33, v37, 16, v7);
  if (v14)
  {
    v15 = 0;
    v16 = *v34;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        while (1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          v19 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v4, v9, v10, v11, v12, v13, v33);
          v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v18, v21, v22, v23);
          v30 = objc_msgSend_integerValue(v24, v25, v26, v27, v28, v29);

          v31 = v30 == 11 ? v8 : v30;
          if (((v30 != 11) & v15) != 0)
          {
            break;
          }

          v15 |= v30 != 11;
          v8 = v31;
          if (v14 == ++i)
          {
            goto LABEL_13;
          }
        }

        if (v8 != v30)
        {
          v8 = 0;
          goto LABEL_16;
        }

        v15 = 1;
      }

LABEL_13:
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v33, v37, 16, v13);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v8;
}

void *sub_1838B26FC(void *result, uint64_t a2)
{
  v2 = *(*a2 + 8) - **a2;
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369F168();
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_1838B2C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (a14)
  {
    operator delete(a14);
    v17 = *a12;
    if (!*a12)
    {
LABEL_5:
      operator delete(__p);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = *a12;
    if (!*a12)
    {
      goto LABEL_5;
    }
  }

  *(a12 + 8) = v17;
  operator delete(v17);
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1838B2C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  v12 = objc_msgSend_strokeIdentifier(a2, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIdentifier(v5, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v6, v19, v12, v18, v20, v21);

  return v22;
}

uint64_t sub_1838B2D4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  v12 = objc_msgSend_strokeIdentifier(a2, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_strokeIdentifier(v5, v13, v14, v15, v16, v17);
  v22 = objc_msgSend_compareOrderOfStrokeWithIdentifier_toStrokeWithIdentifier_(v6, v19, v12, v18, v20, v21);

  return v22;
}

uint64_t sub_1838B2DFC(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_containsObject_(*(a1 + 32), a2, a2, a4, a5, a6);
  if ((v7 & 1) == 0)
  {
    *a3 = 1;
  }

  return v7 ^ 1u;
}

uint64_t sub_1838B2E38(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_containsObject_(*(a1 + 32), a2, a2, a4, a5, a6);
  if ((v7 & 1) == 0)
  {
    *a3 = 1;
  }

  return v7 ^ 1u;
}

void sub_1838B3228(void *a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = v3;
  if (a1 && objc_msgSend_count(v3, v4, v5, v6, v7, v8))
  {
    v15 = objc_msgSend_activeStrokeGroupAncestorIdentifiers(a1, v10, v11, v12, v13, v14);
    v21 = objc_msgSend_mutableCopy(v15, v16, v17, v18, v19, v20);

    if (!v21)
    {
      v21 = objc_msgSend_set(MEMORY[0x1E695DFA8], v22, v23, v24, v25, v26);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = v9;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v51, v55, 16, v29);
    if (v30)
    {
      v36 = v30;
      v37 = *v52;
      do
      {
        v38 = 0;
        do
        {
          if (*v52 != v37)
          {
            objc_enumerationMutation(v27);
          }

          v39 = MEMORY[0x1E696AD98];
          v40 = objc_msgSend_ancestorIdentifier(*(*(&v51 + 1) + 8 * v38), v31, v32, v33, v34, v35, v51);
          v45 = objc_msgSend_numberWithInteger_(v39, v41, v40, v42, v43, v44);
          objc_msgSend_addObject_(v21, v46, v45, v47, v48, v49);

          ++v38;
        }

        while (v36 != v38);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v31, &v51, v55, 16, v35);
      }

      while (v36);
    }

    objc_setProperty_nonatomic_copy(a1, v50, v21, 40);
  }
}

void sub_1838B3ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

void sub_1838B3B38(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1838B3B54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1838B3C0C(WeakRetained);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v2 = qword_1EA84DC70;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_18366B000, v2, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was interrupted", v3, 2u);
  }
}

void sub_1838B3C0C(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    objc_msgSend_invalidate(obj[1], v1, v2, v3, v4, v5);
    v6 = obj[1];
    obj[1] = 0;

    objc_sync_exit(obj);
  }
}

void sub_1838B3C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1838B3CA4()
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v0 = qword_1EA84DC70;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_18366B000, v0, OS_LOG_TYPE_ERROR, "Remote connection to handwritingd was invalidated", v1, 2u);
  }
}

void sub_1838B3DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHRemoteRecognizer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1838B45F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, a4, a5, a6);
  v25 = objc_msgSend_UUIDString(v6, v7, v8, v9, v10, v11);

  v12 = MEMORY[0x1E695DFF8];
  v13 = NSTemporaryDirectory();
  v18 = objc_msgSend_fileURLWithPath_(v12, v14, v13, v15, v16, v17);
  v23 = objc_msgSend_URLByAppendingPathComponent_(v18, v19, v25, v20, v21, v22);
  v24 = qword_1EA84D100;
  qword_1EA84D100 = v23;
}

void sub_1838B469C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1838B4BD0(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v4 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *v4;
  v6 = v4[1];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v8 = a2[5];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = a2[5];
    if (!v8)
    {
LABEL_10:
      v12 = a2;
      goto LABEL_14;
    }
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_10;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v12 = a2;
LABEL_14:
  v9 = v12[2];
  v10 = v12[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v9[6];
  v9[6] = 0;
  v9[7] = 0;
  v9[8] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_1838B50D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, id a11, uint64_t a12, char a13)
{
  sub_18369D8F8(&a13);
  if (v13)
  {
    operator delete(v13);
    if (!__p)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1838B5518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18368EE60(va);

  _Unwind_Resume(a1);
}

void sub_1838B5530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_1838B554C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_18368EE60(va);
  _Unwind_Resume(a1);
}

void sub_1838B55FC(uint64_t **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 - *a2;
  v9 = a1[1];
  v10 = v9 - *a1;
  if (v9 == *a1 || v8 == v10)
  {
    if (v8 != v10 && v9 != *a1)
    {
      goto LABEL_22;
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v6 == v7)
    {
      goto LABEL_27;
    }

LABEL_12:
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "std::vector<CHSynthesisTextChunkerAccumulatorFeature> operator+: precondition failed", buf, 2u);
  }

  v7 = *a2;
  v6 = a2[1];
  v14 = a1[1];
  v8 = v6 - *a2;
  if (v8 == v14 - *a1 || v14 == *a1)
  {
    goto LABEL_11;
  }

LABEL_22:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_FAULT, "std::vector<CHSynthesisTextChunkerAccumulatorFeature> operator+: precondition failed", v24, 2u);
  }

  v18 = *a2;
  v17 = a2[1];
  v8 = v17 - *a2;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v17 != v18)
  {
    goto LABEL_12;
  }

LABEL_27:
  v19 = 0;
  v20 = *a1;
  v21 = a1[1] - *a1;
  if (v21)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
    if (v22 <= 1)
    {
      v22 = 1;
    }

    do
    {
      v23 = *v20;
      v20 += 3;
      *v19 += v23;
      v19 += 3;
      --v22;
    }

    while (v22);
  }
}

void sub_1838B5834(uint64_t *a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v6 = a2[1];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  v10 = v6 - *a2;
  if (v6 == *a2 || v10 == v9)
  {
    if (v10 != v9 && v6 != *a2)
    {
      goto LABEL_22;
    }

LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v7 == v8)
    {
      goto LABEL_27;
    }

LABEL_12:
    if (0xAAAAAAAAAAAAAAABLL * (v9 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "std::vector<CHSynthesisTextChunkerAccumulatorFeature> operator-: precondition failed", buf, 2u);
  }

  v14 = a2[1];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  if (v14 - *a2 == v9 || v14 == *a2)
  {
    goto LABEL_11;
  }

LABEL_22:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_FAULT, "std::vector<CHSynthesisTextChunkerAccumulatorFeature> operator-: precondition failed", v24, 2u);
  }

  v18 = *a1;
  v17 = a1[1];
  v9 = v17 - *a1;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v17 != v18)
  {
    goto LABEL_12;
  }

LABEL_27:
  v19 = 0;
  v20 = *a2;
  v21 = a2[1] - *a2;
  if (v21)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
    if (v22 <= 1)
    {
      v22 = 1;
    }

    do
    {
      v23 = *v20;
      v20 += 3;
      *v19 -= v23;
      v19 += 3;
      --v22;
    }

    while (v22);
  }
}

void sub_1838B5A6C(int a1@<W0>, const char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = a1;
  v9 = a7;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  if (a1 <= 2)
  {
    if (a1 < 2)
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      if (*a2 == v11)
      {
        __p = 0;
        v140 = 0;
        v141[0] = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          if ((*(v10 + 32) & 0xFFFFFFFE) != 4)
          {
            v12 += objc_msgSend_countCodepoints(*(v10 + 8), a2, a3, a4, a5, a6);
          }

          v10 += 40;
        }

        while (v10 != v11);
        __p = 0;
        v140 = 0;
        v141[0] = 0;
        if (v12)
        {
          if (v12 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_18368964C();
        }
      }

      sub_1838B74C8(&v134, &__p);
      v18 = __p;
      if (__p)
      {
        v140 = __p;
        goto LABEL_121;
      }

      goto LABEL_122;
    }

    if (a1 != 2)
    {
      goto LABEL_122;
    }

LABEL_18:
    sub_1838B762C(&__p, a3);
    sub_1838B74C8(&v134, &__p);
    if (__p)
    {
      operator delete(__p);
    }

    sub_1838B7B1C(&__p, a3);
    sub_1838B74C8(&v134, &__p);
    if (__p)
    {
      operator delete(__p);
    }

    sub_1838B80C0(&__p, a3);
    sub_1838B74C8(&v134, &__p);
    goto LABEL_120;
  }

  if (a1 == 4)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_122;
  }

  v13 = a3[5];
  *__s1 = a3[4];
  *&__s1[8] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a3[2];
  v15 = a3[3];
  v137 = v14;
  v138 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v143 = 0;
  v144 = 0;
  v145 = 0;
  v17 = *v14;
  v16 = v14[1];
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18384AB5C(&v143, &__p);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v19 = *&__s1[8];
  if (*&__s1[8] && !atomic_fetch_add((*&__s1[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v132 = 0;
  v133 = 0;
  *buf = 0;
  if (v140 != __p)
  {
    if (((v140 - __p) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18368964C();
  }

  v39 = a3[4];
  v25 = a3[5];
  *__s1 = v39;
  *&__s1[8] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v144 = 0;
  v145 = 0;
  v143 = &v144;
  v20 = *(v39 + 72);
  v21 = (v39 + 80);
  if (v20 != (v39 + 80))
  {
    do
    {
      sub_1837DE228(&v143, &v144, v20 + 4);
      v22 = v20[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v20[2];
          v24 = *v23 == v20;
          v20 = v23;
        }

        while (!v24);
      }

      v20 = v23;
    }

    while (v23 != v21);
    v25 = *&__s1[8];
    v126 = a3;
    if (!*&__s1[8])
    {
      goto LABEL_52;
    }

LABEL_50:
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    goto LABEL_52;
  }

  v126 = a3;
  if (v25)
  {
    goto LABEL_50;
  }

LABEL_52:
  __s1[23] = 16;
  strcpy(__s1, "ids_input_length");
  v26 = v144;
  if (!v144)
  {
LABEL_71:
    v36 = -2;
    v38 = __p;
    v37 = v140;
    if (__p != v140)
    {
      goto LABEL_95;
    }

    goto LABEL_111;
  }

  v27 = v144;
  while (1)
  {
    v28 = *(v27 + 55);
    if (v28 >= 0)
    {
      v29 = *(v27 + 55);
    }

    else
    {
      v29 = v27[5];
    }

    if (v28 >= 0)
    {
      v30 = v27 + 4;
    }

    else
    {
      v30 = v27[4];
    }

    if (v29 >= 0x10)
    {
      v31 = 16;
    }

    else
    {
      v31 = v29;
    }

    v32 = memcmp(__s1, v30, v31);
    v33 = v32 < 0;
    if (!v32)
    {
      v33 = v29 > 0x10;
    }

    if (v33)
    {
      goto LABEL_54;
    }

    v34 = memcmp(v30, __s1, v31);
    v35 = v29 < 0x10;
    if (v34)
    {
      v35 = v34 < 0;
    }

    if (!v35)
    {
      break;
    }

    ++v27;
LABEL_54:
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_71;
    }
  }

  __s1[23] = 16;
  strcpy(__s1, "ids_input_length");
  v40 = v26;
  while (1)
  {
    while (1)
    {
      v41 = v40[55];
      if (v41 >= 0)
      {
        v42 = v40[55];
      }

      else
      {
        v42 = *(v40 + 5);
      }

      if (v41 >= 0)
      {
        v43 = v40 + 32;
      }

      else
      {
        v43 = *(v40 + 4);
      }

      if (v42 >= 0x10)
      {
        v44 = 16;
      }

      else
      {
        v44 = v42;
      }

      v45 = memcmp(__s1, v43, v44);
      v46 = v45 < 0;
      if (!v45)
      {
        v46 = v42 > 0x10;
      }

      if (!v46)
      {
        break;
      }

      v40 = *v40;
      if (!v40)
      {
        goto LABEL_93;
      }
    }

    v47 = memcmp(v43, __s1, v44);
    v48 = v42 < 0x10;
    if (v47)
    {
      v48 = v47 < 0;
    }

    if (!v48)
    {
      break;
    }

    v40 = *(v40 + 1);
    if (!v40)
    {
LABEL_93:
      sub_1836868A4("map::at:  key not found");
    }
  }

  v36 = *(v40 + 7) - 1;
  v38 = __p;
  v37 = v140;
  if (__p != v140)
  {
LABEL_95:
    v49 = v132;
    v124 = v38;
    do
    {
      while (1)
      {
        v50 = *v38;
        if (v49 >= v133)
        {
          break;
        }

        *v49 = v50;
        *(v49 + 8) = v36;
        *(v49 + 16) = 0;
        v49 += 24;
        v132 = v49;
        v38 += 8;
        if (v38 == v37)
        {
          goto LABEL_110;
        }
      }

      v51 = *buf;
      v52 = v49 - *buf;
      v53 = 0xAAAAAAAAAAAAAAABLL * ((v49 - *buf) >> 3);
      v54 = v53 + 1;
      if (v53 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_18368964C();
      }

      if (0x5555555555555556 * ((v133 - *buf) >> 3) > v54)
      {
        v54 = 0x5555555555555556 * ((v133 - *buf) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v133 - *buf) >> 3) >= 0x555555555555555)
      {
        v55 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v55 = v54;
      }

      if (v55)
      {
        if (v55 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_183688F00();
      }

      v56 = 24 * v53;
      *v56 = v50;
      *(v56 + 8) = v36;
      *(v56 + 16) = 0;
      v49 = 24 * v53 + 24;
      v57 = v56 - v52;
      memcpy((v56 - v52), v51, v52);
      *buf = v57;
      v132 = v49;
      v133 = 0;
      if (v51)
      {
        operator delete(v51);
      }

      v9 = a7;
      v132 = v49;
      v38 += 8;
    }

    while (v38 != v37);
LABEL_110:
    v26 = v144;
    v38 = v124;
  }

LABEL_111:
  sub_18368922C(&v143, v26);
  if (v38)
  {
    operator delete(v38);
  }

  sub_1838B74C8(&v134, buf);
  v8 = 3;
  if (*buf)
  {
    operator delete(*buf);
  }

  sub_1838B762C(&__p, v126);
  sub_1838B74C8(&v134, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1838B7B1C(&__p, v126);
  sub_1838B74C8(&v134, &__p);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1838B80C0(&__p, v126);
  sub_1838B74C8(&v134, &__p);
LABEL_120:
  v18 = __p;
  if (__p)
  {
LABEL_121:
    operator delete(v18);
  }

LABEL_122:
  v58 = v134;
  if (v135 != v134)
  {
    v59 = 0;
    v60 = 0xAAAAAAAAAAAAAAABLL * ((v135 - v134) >> 3);
    while (1)
    {
      v61 = &v58[3 * v59];
      v62 = *v61;
      v63 = v61[1];
      v65 = *a2;
      v64 = *(a2 + 1);
      if (*a2 == v64)
      {
        v66 = 0;
      }

      else
      {
        v66 = 0;
        do
        {
          if ((*(v65 + 32) & 0xFFFFFFFE) != 4)
          {
            v66 += objc_msgSend_countCodepoints(*(v65 + 8), a2, a3, a4, a5, a6);
          }

          v65 += 40;
        }

        while (v65 != v64);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v63 - v62) >> 3) != v66)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v67 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&dword_18366B000, v67, OS_LOG_TYPE_ERROR, "Features length not consistent with metadata", &__p, 2u);
        }
      }

      v68 = *v61;
      v69 = v58[3 * v59 + 1];
      v71 = *a2;
      v70 = *(a2 + 1);
      if (*a2 == v70)
      {
        v72 = 0;
      }

      else
      {
        v72 = 0;
        do
        {
          if ((*(v71 + 32) & 0xFFFFFFFE) != 4)
          {
            v72 += objc_msgSend_countCodepoints(*(v71 + 8), a2, a3, a4, a5, a6);
          }

          v71 += 40;
        }

        while (v71 != v70);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3) != v72)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v73 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&dword_18366B000, v73, OS_LOG_TYPE_FAULT, "Features length not consistent with metadata", &__p, 2u);
        }
      }

      if (++v59 >= v60)
      {
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v143 = &v128;
        LOBYTE(v144) = 0;
        if (v60 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_18368964C();
      }
    }
  }

  v128 = 0;
  v129 = 0;
  v130 = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  *(v9 + 6) = v8;
  if (v8 == 3)
  {
    v75 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v80 = v75;
    v144 = 0;
    v145 = 0;
    v143 = &v144;
    v81 = *v9;
    if (v9[1] != *v9)
    {
      v82 = 0;
      do
      {
        v83 = v81 + 56 * v82;
        if (*(v83 + 16))
        {
          objc_msgSend_appendString_(v80, v76, *(v83 + 8), v77, v78, v79);
        }

        else
        {
          objc_msgSend_appendString_(v80, v76, @" ", v77, v78, v79);
        }

        v89 = objc_msgSend_length(v80, v84, v85, v86, v87, v88);
        v90 = v144;
        if (!v144)
        {
LABEL_167:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v91 = v90;
            v92 = *(v90 + 4);
            if (v89 >= v92)
            {
              break;
            }

            v90 = *v91;
            if (!*v91)
            {
              goto LABEL_167;
            }
          }

          if (v92 >= v89)
          {
            break;
          }

          v90 = v91[1];
          if (!v90)
          {
            goto LABEL_167;
          }
        }

        v91[5] = v82++;
        v81 = *a7;
      }

      while (v82 < 0x6DB6DB6DB6DB6DB7 * ((a7[1] - *a7) >> 3));
    }

    v93 = v80;
    v141[0] = 0;
    v141[1] = 0;
    __p = v93;
    v140 = v141;
    v94 = v143;
    if (v143 != &v144)
    {
      do
      {
        if (!*sub_1836DD38C(&v140, v141, __s1, buf, v94 + 4))
        {
          operator new();
        }

        v95 = v94[1];
        if (v95)
        {
          do
          {
            v96 = v95;
            v95 = *v95;
          }

          while (v95);
        }

        else
        {
          do
          {
            v96 = v94[2];
            v24 = *v96 == v94;
            v94 = v96;
          }

          while (!v24);
        }

        v94 = v96;
      }

      while (v96 != &v144);
    }

    sub_18368D56C(&v143, v144);

    v97 = __p;
    *&__s1[8] = 0;
    *&__s1[16] = 0;
    *__s1 = &__s1[8];
    v146.length = objc_msgSend_length(v97, v98, v99, v100, v101, v102);
    v146.location = 0;
    v103 = CFStringTokenizerCreate(0, v97, v146, 0, 0);
    v143 = v103;
    if (v103)
    {
      while (CFStringTokenizerAdvanceToNextToken(v103))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v103);
        v105 = CurrentTokenRange.location + CurrentTokenRange.length;
        v106 = *&__s1[8];
        if (!*&__s1[8])
        {
LABEL_189:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v107 = v106;
            v108 = v106[4];
            if (v105 >= v108)
            {
              break;
            }

            v106 = *v107;
            if (!*v107)
            {
              goto LABEL_189;
            }
          }

          if (v108 >= v105)
          {
            break;
          }

          v106 = v107[1];
          if (!v106)
          {
            goto LABEL_189;
          }
        }
      }

      CFRelease(v103);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v109 = qword_1EA84DC98;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v109, OS_LOG_TYPE_ERROR, "Failed to create CFStringTokenizer", buf, 2u);
      }
    }

    v144 = 0;
    v145 = 0;
    v143 = &v144;
    v110 = *__s1;
    if (*__s1 == &__s1[8] || (v111 = v141[0]) == 0)
    {
      v119 = 0;
    }

    else
    {
      while (1)
      {
        v112 = v110[4];
        v113 = v141;
        do
        {
          v114 = v111[4];
          v115 = v114 >= v112;
          v116 = v114 < v112;
          if (v115)
          {
            v113 = v111;
          }

          v111 = v111[v116];
        }

        while (v111);
        if (v113 != v141 && v112 >= v113[4])
        {
          operator new();
        }

        v117 = v110[1];
        if (v117)
        {
          do
          {
            v118 = v117;
            v117 = *v117;
          }

          while (v117);
        }

        else
        {
          do
          {
            v118 = v110[2];
            v24 = *v118 == v110;
            v110 = v118;
          }

          while (!v24);
        }

        if (v118 == &__s1[8])
        {
          break;
        }

        v111 = v141[0];
        v110 = v118;
      }

      v119 = v144;
    }

    sub_18368D56C(&v143, v119);
    sub_18368D56C(__s1, *&__s1[8]);
    sub_18368D56C(&v140, v141[0]);

    v74 = v134;
    if (v134)
    {
LABEL_217:
      v120 = v135;
      if (v135 != v74)
      {
        v121 = v135;
        do
        {
          v123 = *(v121 - 3);
          v121 -= 24;
          v122 = v123;
          if (v123)
          {
            *(v120 - 2) = v122;
            operator delete(v122);
          }

          v120 = v121;
        }

        while (v121 != v74);
      }

      operator delete(v74);
    }
  }

  else
  {
    v74 = v134;
    if (v134)
    {
      goto LABEL_217;
    }
  }
}